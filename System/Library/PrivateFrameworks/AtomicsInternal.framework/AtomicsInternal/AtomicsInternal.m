void sub_2D457(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __outdword(0x28u, v4);
  *(v6 - 1459586775) += v5;
  *(2 * v4) -= v4;
  *(2 * a4 + 0x6728FB00) += v4;
  *(a4 + 1447915561) += v4;
  *(a1 - 1929350359) += v4;
  *(2 * v4) -= v4;
  LOBYTE(v4) = MEMORY[0x28D9400040001F4];
  *(2 * v4) += MEMORY[0x28D9400040001F4];
  __halt();
}

void sub_2DC6E(__int32 a1, uint64_t _RSI, _BYTE *a3, volatile __int32 *a4)
{
  _InterlockedExchange(a4, a1);
  *a3 += v4;
  BYTE1(v4) += BYTE1(v5);
  v7 = *(v4 + 77);
  *(a4 - 1543503047) += v4;
  __asm { outsb }

  *(2 * v4) += v4;
  *a3 += v4;
  *(v5 + 1447915577) += a3;
  *(a4 - 536869831) += v5;
  v8 = v6 + *a4;
  *(2 * v4) += v4;
  __halt();
}