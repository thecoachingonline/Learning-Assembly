section .data
    msg db 0xE0, 0xB9, 0x99, 0x0A ; ข้อความที่จะแสดง (๙ และขึ้นบรรทัดใหม่)

section .text
    global _start

_start:
    ; เขียนข้อความไปยัง stdout
    mov eax, 4      ; syscall สำหรับ write
    mov ebx, 1      ; stdout
    mov ecx, msg    ; ที่อยู่ของข้อความ
    mov edx, 4      ; ความยาวของข้อความ (4 ไบต์: 0xE0, 0xB9, 0x99 และ 0x0A)
    int 80h         ; เรียก syscall

    ; ออกจากโปรแกรม
    mov eax, 1      ; syscall สำหรับ exit
    xor ebx, ebx    ; รหัสออก 0
    int 80h         ; เรียก syscall
