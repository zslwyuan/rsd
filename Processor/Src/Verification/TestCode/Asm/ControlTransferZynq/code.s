    .file    "code.s"
    .option nopic
    .text
    .align    2
    .globl    main
    .type     main, @function
main:
    li    a4, 0xFFFFFFFF
    li    a6, 0x40002000
    j     main2
end:
    j     end
end2:
    j     end
main2:
    addi  a7, a7, 1
    jal   a1, main3
end3:
    j   end
main3:
    addi  a7, a7, 1
    beq   a1, a2, end
    beq   a2, a3, main4
end4:
    j     end
main4:
    addi  a7, a7, 1
    bne   a2, a3, end
    bne   a1, a2, main5
end5:
    j     end
main5:
    addi  a7, a7, 1
    blt   a2, a3, end
    blt   a0, a4, end
    blt   a4, a0, main6
end6:
    j     end
main6:
    addi  a7, a7, 1
    bge   a4, a0, end
    bge   a0, a4, main7
end7:
    j     end
main7:
    addi  a7, a7, 1
    bge   a2, a3, main8
end8:
    j     end
main8:
    addi  a7, a7, 1
    bltu  a2, a3, end
    bltu  a4, a0, end
    bltu  a0, a4, main9
end9:
    j     end
main9:
    addi  a7, a7, 1
    bgeu  a0, a4, end
    bgeu  a4, a0, main10
end10:
    j     end
main10:
    addi  a7, a7, 1
    bgeu  a2, a3, output
end11:
    j     end
output:
    sw      x0, 0(a6)
    sw      x1, 0(a6)
    sw      x2, 0(a6)
    sw      x3, 0(a6)
    sw      x4, 0(a6)
    sw      x5, 0(a6)
    sw      x6, 0(a6)
    sw      x7, 0(a6)
    sw      x8, 0(a6)
    sw      x9, 0(a6)
    sw      x10, 0(a6)
    sw      x11, 0(a6)
    sw      x12, 0(a6)
    sw      x13, 0(a6)
    sw      x14, 0(a6)
    sw      x15, 0(a6)
    sw      x16, 0(a6)
    sw      x17, 0(a6)
    sw      x18, 0(a6)
    sw      x19, 0(a6)
    sw      x20, 0(a6)
    sw      x21, 0(a6)
    sw      x22, 0(a6)
    sw      x23, 0(a6)
    sw      x24, 0(a6)
    sw      x25, 0(a6)
    sw      x26, 0(a6)
    sw      x27, 0(a6)
    sw      x28, 0(a6)
    sw      x29, 0(a6)
    sw      x30, 0(a6)
    sw      x31, 0(a6)
main11:
	li a1, 0
	ret
    #j     main11
