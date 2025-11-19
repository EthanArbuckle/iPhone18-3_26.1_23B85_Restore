@interface IOGCCircularControlQueueValidateAndAccess
@end

@implementation IOGCCircularControlQueueValidateAndAccess

uint64_t ___IOGCCircularControlQueueValidateAndAccess_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 3758097112;
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  if (a2 + (v4 >> 1) <= v5)
  {
    return 3758097127;
  }

  if (v5 + (v4 >> 1) <= a2)
  {
    return 3758097128;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 68);
  v8 = v7 * (a2 % v4);
  v9 = v6 + 72 + v8;
  if (v8 != v8)
  {
    v9 = (v6 + 72 + v8) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  v10 = v9 + v7;
  if (((v9 ^ (v9 + v7)) & 0xFFC0000000000000) != 0)
  {
    v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  if (v10 > v6 + *(a1 + 72))
  {
    return 3758097097;
  }

  if (*v9 != *(a1 + 48))
  {
    _gc_log_debug();
    OUTLINED_FUNCTION_0();
    _os_log_internal(&dword_0, v20, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", v21, v22, v23, 306, 0);
    return 3758097105;
  }

  v11 = atomic_load_explicit((v9 + 8), memory_order_acquire) & 1;
  v12 = (8 * v11) & 0xFFFFFFFFFFFFFFEFLL | (16 * v11);
  v13 = v9 + 16 + v12;
  if (v12 != v12)
  {
    v13 = (v9 + 16 + v12) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  if (*(v13 + 8) != *(a1 + 56) || *(v13 + 16) != a2)
  {
    return v3;
  }

  v14 = v9 + 64;
  v15 = *(a1 + 80);
  v16 = v11 * *(a1 + 76);
  v17 = v14 + v16;
  if (v16 != v16)
  {
    v17 = (v14 + v16) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  v18 = *(a3 + 16);

  return v18(a3, v17, v15);
}

@end