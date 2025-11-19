void sub_D36E9()
{
  MEMORY[0xDD29000000090000] = v0;
  __asm { iret }
}

void sub_D9129()
{
  MEMORY[0x82E900000070FFF3] = v0;
  __asm { iret }
}

void sub_1345AC(uint64_t a1, uint64_t a2, uint64_t _RDX, uint64_t a4, int *a5)
{
  *(_RDX + 114) ^= v5;
  __asm { insb }

  v7 = *a5;
}

void sub_134C5D(_BYTE *a1, uint64_t a2, unsigned __int16 a3)
{
  _disable();
  *v3 += v3;
  BYTE1(v3) += *a1;
  __outbyte(a3, v3);
  LODWORD(v3) = v3;
  *(v3 + 77) += a2;
  BYTE1(v3) += HIBYTE(a3);
  LODWORD(v3) = v3;
  *(2 * v3) += v3;
  __asm { retn }
}

void sub_1365E2(uint64_t a1, uint64_t a2, uint64_t _RDX, uint64_t a4, int *a5)
{
  v8 = _RDX;
  *(_RDX + 114) ^= v5;
  __asm { insb }

  v7 = *a5;
  __asm { retf }
}

void sub_139D2B(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *a4 -= v4 + a4;
  __asm { rcr     bl, 34h }

  *(2 * a4) += a4;
  __halt();
}

void sub_13D235(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, int *a5)
{
  *v5 -= v5;
  *a3 += v5;
  v6 = *a5;
  __asm { retf }
}

__int16 sub_13DF25(int *a1, uint64_t a2, __int16 _DX, int *a4, int *a5)
{
  __asm { insb }

  v7 = *a5;
  v8 = *(2 * v5);
  v10 = 67171528;
  v9 = *a4;
  BYTE1(v10) = HIBYTE(_DX) - 12;
  *a1 = v10;
  return v10;
}