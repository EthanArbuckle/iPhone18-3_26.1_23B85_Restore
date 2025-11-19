char *t_serveropenraw(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_malloc(0x668uLL, 0x103004022E4922EuLL);
  if (v4)
  {
    memset(&v14, 0, sizeof(v14));
    *(v4 + 12) = cstr_new();
    CC_SHA1_Init((v4 + 392));
    v5 = a2[2];
    *v4 = a2[1];
    *(v4 + 1) = v4 + 548;
    __memcpy_chk();
    CC_SHA1_Init(&v14);
    CC_SHA1_Update(&v14, *(v4 + 1), *v4);
    CC_SHA1_Final(md, &v14);
    v6 = a2[4];
    *(v4 + 2) = a2[3];
    *(v4 + 3) = v4 + 804;
    __memcpy_chk();
    CC_SHA1_Init(&v14);
    CC_SHA1_Update(&v14, *(v4 + 3), *(v4 + 4));
    CC_SHA1_Final(v15, &v14);
    for (i = 0; i != 20; ++i)
    {
      md[i] ^= v15[i];
    }

    CC_SHA1_Update((v4 + 392), md, 0x14u);
    CC_SHA1_Init(&v14);
    v8 = strlen(*a1);
    CC_SHA1_Update(&v14, *a1, v8);
    CC_SHA1_Final(md, &v14);
    CC_SHA1_Update((v4 + 392), md, 0x14u);
    v9 = *(a1 + 16);
    *(v4 + 4) = *(a1 + 8);
    *(v4 + 5) = v4 + 1060;
    __memcpy_chk();
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    *(v4 + 6) = v11;
    *(v4 + 7) = v4 + 1316;
    __memcpy_chk();
    CC_SHA1_Update((v4 + 392), v4 + 1316, v11);
    *(v4 + 9) = v4 + 1348;
    *(v4 + 11) = v4 + 1380;
    CC_SHA1_Init((v4 + 200));
    CC_SHA1_Init((v4 + 104));
    CC_SHA1_Init((v4 + 296));
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

void t_servergenexp(unsigned int *a1)
{
  if (*a1 >= 0x20uLL)
  {
    v2 = 32;
  }

  else
  {
    v2 = *a1;
  }

  *(a1 + 8) = v2;
  t_random(*(a1 + 9), v2);
  v3 = *(a1 + 9);
  v4 = a1[16];
  BigIntegerFromBytes();
  v5 = *(a1 + 1);
  v6 = *a1;
  v7 = BigIntegerFromBytes();
  v8 = *(a1 + 3);
  v9 = a1[4];
  BigIntegerFromBytes();
  v10 = BigIntegerFromInt();
  BigIntegerModExp();
  v11 = *(a1 + 5);
  v12 = a1[8];
  BigIntegerFromBytes();
  BigIntegerAdd();
  BigIntegerCmp(v10, v7);
}

uint64_t t_servergetkey(unsigned int *a1, const void **a2)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&c, 0, sizeof(c));
  CC_SHA1_Update((a1 + 98), a2[1], *a2);
  CC_SHA1_Update((a1 + 98), *(a1 + 11), a1[20]);
  CC_SHA1_Init(&c);
  CC_SHA1_Update(&c, *(a1 + 11), a1[20]);
  CC_SHA1_Final(md, &c);
  v4.i32[0] = *md;
  v5 = vmovl_u8(v4).u64[0];
  if (vuzp1_s8(v5, v5).u32[0])
  {
    BigIntegerFromBytes();
    CC_SHA1_Update((a1 + 26), a2[1], *a2);
    CC_SHA1_Update((a1 + 50), a2[1], *a2);
    v6 = *(a1 + 1);
    v7 = *a1;
    BigIntegerFromBytes();
    v8 = *(a1 + 9);
    v9 = a1[16];
    BigIntegerFromBytes();
    v10 = *(a1 + 5);
    v11 = a1[8];
    BigIntegerFromBytes();
    v12 = a2[1];
    v13 = *a2;
    BigIntegerFromBytes();
    BigIntegerFromInt();
    BigIntegerModExp();
    v14 = BigIntegerFromInt();
    BigIntegerModMul();
    BigIntegerFree();
    BigIntegerFree();
    BigIntegerFree();
    BigIntegerFree();
    BigIntegerCmpInt(v14, 1);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t t_serververify(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  CC_SHA1_Final(md, (a1 + 296));
  if (*md == *a2 && v13 == *(a2 + 8) && v14 == *(a2 + 16))
  {
    v9 = (a1 + 528);
    v10 = (a1 + 104);
    goto LABEL_16;
  }

  CC_SHA1_Final(md, (a1 + 392));
  v6 = bswap64(*md);
  v7 = bswap64(*a2);
  if (v6 == v7)
  {
    v6 = bswap64(v13);
    v7 = bswap64(*(a2 + 8));
    if (v6 == v7)
    {
      v6 = bswap32(v14);
      v7 = bswap32(*(a2 + 16));
      if (v6 == v7)
      {
        CC_SHA1_Update((a1 + 200), md, 0x14u);
        CC_SHA1_Update((a1 + 200), (a1 + 488), 0x28u);
        v9 = (a1 + 528);
        v10 = (a1 + 200);
LABEL_16:
        CC_SHA1_Final(v9, v10);
        result = 0;
        goto LABEL_17;
      }
    }
  }

  if (v6 < v7)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void t_serverclose(uint64_t a1)
{
  *(a1 + 1348) = 0u;
  *(a1 + 1364) = 0u;
  *(a1 + 1060) = 0u;
  *(a1 + 1076) = 0u;
  *(a1 + 1092) = 0u;
  *(a1 + 1108) = 0u;
  *(a1 + 1124) = 0u;
  *(a1 + 1140) = 0u;
  *(a1 + 1156) = 0u;
  *(a1 + 1172) = 0u;
  *(a1 + 1188) = 0u;
  *(a1 + 1204) = 0u;
  *(a1 + 1220) = 0u;
  *(a1 + 1236) = 0u;
  *(a1 + 1252) = 0u;
  *(a1 + 1268) = 0u;
  *(a1 + 1284) = 0u;
  *(a1 + 1300) = 0u;
  *(a1 + 1316) = 0u;
  *(a1 + 1332) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  cstr_clear_free(*(a1 + 96));

  free(a1);
}

void *cstr_new_alloc()
{
  result = malloc_type_malloc(0x28uLL, 0x103004021F519B8uLL);
  if (result)
  {
    result[1] = 0;
    result[2] = 0;
    *result = &cstr_empty_string;
    *(result + 6) = 1;
    result[4] = 0;
  }

  return result;
}

void *cstr_new()
{
  result = malloc_type_malloc(0x28uLL, 0x103004021F519B8uLL);
  if (result)
  {
    result[1] = 0;
    result[2] = 0;
    *result = &cstr_empty_string;
    *(result + 6) = 1;
    result[4] = 0;
  }

  return result;
}

void *cstr_dup_alloc(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x103004021F519B8uLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 0;
    v2[2] = 0;
    *v2 = &cstr_empty_string;
    *(v2 + 6) = 1;
    v2[4] = 0;
    cstr_setn(v2, *a1, *(a1 + 8));
  }

  return v3;
}

uint64_t cstr_setn(uint64_t a1, const void *a2, size_t a3)
{
  if ((cstr_alloc(a1, a3 + 1) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  *(*a1 + a3) = 0;
  if (a2)
  {
    if (a3)
    {
      memmove(*a1, a2, a3);
    }
  }

  *(a1 + 8) = a3;
  return 1;
}

void *cstr_create(const char *a1)
{
  v2 = strlen(a1);

  return cstr_createn(a1, v2);
}

void *cstr_createn(const void *a1, int a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x103004021F519B8uLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = 0;
    v4[2] = 0;
    *v4 = &cstr_empty_string;
    *(v4 + 6) = 1;
    v4[4] = 0;
    cstr_setn(v4, a1, a2);
  }

  return v5;
}

void cstr_clear_free(_DWORD *a1)
{
  v2 = a1[6] - 1;
  a1[6] = v2;
  if (!v2)
  {
    v4 = *(a1 + 2);
    if (v4)
    {
      bzero(*a1, v4);
      free(*a1);
    }

    free(a1);
  }
}

void cstr_free(_DWORD *a1)
{
  v2 = a1[6] - 1;
  a1[6] = v2;
  if (!v2)
  {
    if (*(a1 + 2))
    {
      free(*a1);
    }

    free(a1);
  }
}

void cstr_empty(uint64_t a1)
{
  if (*(a1 + 16))
  {
    free(*a1);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &cstr_empty_string;
}

uint64_t cstr_set(uint64_t a1, char *__s)
{
  v4 = strlen(__s);

  return cstr_setn(a1, __s, v4);
}

uint64_t cstr_alloc(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 >= a2)
  {
    return 0;
  }

  v4 = 2 * v2;
  if (v4 <= a2)
  {
    v4 = a2;
  }

  if (v4 <= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (*a1)
  {
    v6[*(a1 + 8)] = 0;
    if (*(a1 + 16))
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        memcpy(v6, *a1, v8);
      }

      free(*a1);
    }
  }

  *a1 = v7;
  *(a1 + 16) = v5;
  return 1;
}

uint64_t cstr_set_length(void *a1, int a2)
{
  v3 = a2;
  v4 = a1[1];
  if (v4 > a2)
  {
    *(*a1 + a2) = 0;
LABEL_6:
    a1[1] = v3;
    return 1;
  }

  if (v4 >= a2)
  {
    return 0;
  }

  if ((cstr_alloc(a1, a2 + 1) & 0x80000000) == 0)
  {
    bzero((*a1 + a1[1]), v3 - a1[1] + 1);
    goto LABEL_6;
  }

  return 0xFFFFFFFFLL;
}

uint64_t cstr_append(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);

  return cstr_appendn(a1, __s, v4);
}

uint64_t cstr_appendn(uint64_t *a1, const void *a2, size_t a3)
{
  if ((cstr_alloc(a1, a3 + a1[1] + 1) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  memcpy((*a1 + a1[1]), a2, a3);
  v6 = *a1;
  v7 = a1[1] + a3;
  a1[1] = v7;
  *(v6 + v7) = 0;
  return 1;
}

uint64_t SRP_initialize_library()
{
  if ((library_initialized & 1) == 0)
  {
    BigIntegerCtxFree();
    library_initialized = 1;
  }

  return 0;
}

uint64_t SRP_finalize_library()
{
  if (library_initialized == 1)
  {
    library_initialized = 0;
    BigIntegerCtxFree();
  }

  return 0;
}

void *SRP_SERVER_LOOKUP_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[1] = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      if (v4(v2))
      {
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t SRP_SERVER_LOOKUP_free(void *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  free(a1);
  return 0;
}

void *SRP_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x90uLL, 0x10A004039E137EAuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 0;
    *(v2 + 1) = cstr_new();
    v3[14] = BigIntegerCtxNew();
    v3[15] = 0;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    v3[10] = 0;
    v3[11] = cstr_new();
    v3[12] = a1;
    v3[13] = 0;
    v3[16] = 0;
    v3[17] = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      if (v4(v3))
      {
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t SRP_free(void *a1)
{
  v2 = *(a1[12] + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = a1[1];
  if (v3)
  {
    cstr_clear_free(v3);
  }

  if (a1[2])
  {
    BigIntegerFree();
  }

  if (a1[15])
  {
    BigIntegerCtxFree();
  }

  if (a1[3])
  {
    BigIntegerFree();
  }

  v4 = a1[4];
  if (v4)
  {
    cstr_clear_free(v4);
  }

  if (a1[5])
  {
    BigIntegerClearFree();
  }

  if (a1[6])
  {
    BigIntegerClearFree();
  }

  if (a1[7])
  {
    BigIntegerFree();
  }

  if (a1[8])
  {
    BigIntegerClearFree();
  }

  if (a1[9])
  {
    BigIntegerFree();
  }

  if (a1[10])
  {
    BigIntegerClearFree();
  }

  if (a1[14])
  {
    BigIntegerCtxFree();
  }

  v5 = a1[11];
  if (v5)
  {
    cstr_clear_free(v5);
  }

  free(a1);
  return 0;
}

uint64_t SRP_set_username(uint64_t a1, char *a2)
{
  cstr_set(*(a1 + 8), a2);
  result = *(a1 + 136);
  if (result)
  {
    v4 = *(a1 + 8);
    v5 = *(*result + 24);

    return v5();
  }

  return result;
}

uint64_t SRP_set_user_raw(uint64_t a1, const void *a2, int a3)
{
  cstr_setn(*(a1 + 8), a2, a3);
  result = *(a1 + 136);
  if (result)
  {
    v5 = *(a1 + 8);
    v6 = *(*result + 24);

    return v6();
  }

  return result;
}

uint64_t SRP_set_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a2 && a4 && a6)
  {
    *(a1 + 16) = BigIntegerFromBytes();
    if (*(a1 + 4))
    {
      v15 = *(a1 + 112);
      *(a1 + 120) = BigIntegerCtxNew();
    }

    *(a1 + 24) = BigIntegerFromBytes();
    v16 = *(a1 + 32);
    if (!v16)
    {
      v16 = cstr_new();
      *(a1 + 32) = v16;
    }

    cstr_setn(v16, a6, a7);
    if (BigIntegerBitLen(*(a1 + 16)) >= srp_modulus_min_bits)
    {
      v17 = *(a1 + 128);
      if (!v17 || (result = v17(a1, a2, a3, a4, a5), !result))
      {
        v18 = *(*(a1 + 96) + 24);

        return v18(a1, a2, a3, a4, a5, a6, a7);
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t SRP_set_auth_password(uint64_t a1, char *__s)
{
  v6 = *(*(a1 + 96) + 40);
  v4 = strlen(__s);

  return v6(a1, __s, v4);
}

uint64_t SRP_use_engine()
{
  if (BigIntegerUseEngine())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t srp6a_client_init(void *a1)
{
  *a1 = 0x30000000CLL;
  v2 = malloc_type_malloc(0xE8uLL, 0x10000403E2B8178uLL);
  a1[13] = v2;
  CC_SHA1_Init(v2);
  CC_SHA1_Init((a1[13] + 96));
  return 0;
}

uint64_t srp6_client_finish(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    *(v1 + 224) = 0;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *v1 = 0u;
    *(v1 + 16) = 0u;
    free(*(a1 + 104));
  }

  return 0;
}

uint64_t srp6_client_params(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, const void *a6, CC_LONG a7)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(&v17, 0, sizeof(v17));
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, a2, a3);
  CC_SHA1_Final(md, &v17);
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, a4, a5);
  CC_SHA1_Final(v18, &v17);
  for (i = 0; i != 20; ++i)
  {
    md[i] ^= v18[i];
  }

  CC_SHA1_Update(*(a1 + 104), md, 0x14u);
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Final(md, &v17);
  CC_SHA1_Update(*(a1 + 104), md, 0x14u);
  CC_SHA1_Update(*(a1 + 104), a6, a7);
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t srp6_client_auth(void *a1)
{
  a1[6] = BigIntegerFromBytes();
  a1[5] = BigIntegerFromInt();
  v2 = a1[6];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[14];
  v6 = a1[15];
  BigIntegerModExp();
  return 0;
}

uint64_t srp6_client_passwd(uint64_t a1, const void *a2, CC_LONG a3)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  CC_SHA1_Init(&v8);
  CC_SHA1_Update(&v8, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Update(&v8, ":", 1u);
  CC_SHA1_Update(&v8, a2, a3);
  CC_SHA1_Final(md, &v8);
  CC_SHA1_Init(&v8);
  CC_SHA1_Update(&v8, **(a1 + 32), *(*(a1 + 32) + 8));
  CC_SHA1_Update(&v8, md, 0x14u);
  CC_SHA1_Final(md, &v8);
  memset(&v8, 0, sizeof(v8));
  result = SRP_set_authenticator(a1);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t srp6_client_genpub(uint64_t a1, void **a2)
{
  BigIntegerBitLen(*(a1 + 16));
  secret_bits = SRP_get_secret_bits();
  v5 = secret_bits + 7;
  if (secret_bits < -7)
  {
    v5 = secret_bits + 14;
  }

  v6 = v5 >> 3;
  if (a2)
  {
    v7 = *a2;
    if (!*a2)
    {
      v7 = cstr_new();
      *a2 = v7;
    }
  }

  else
  {
    v7 = cstr_new();
  }

  v8 = BigIntegerBitLen(*(a1 + 16));
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  if (v6 > v9 >> 3)
  {
    v10 = BigIntegerBitLen(*(a1 + 16));
    v11 = v10 + 7;
    if (v10 < -7)
    {
      v11 = v10 + 14;
    }

    v6 = v11 >> 3;
  }

  v12 = BigIntegerBitLen(*(a1 + 16));
  v13 = v12 + 7;
  if (v12 < -7)
  {
    v13 = v12 + 14;
  }

  cstr_set_length(v7, v13 >> 3);
  t_random(*v7, v6);
  v14 = *v7;
  *(a1 + 64) = BigIntegerFromBytes();
  BigIntegerBitLen(*(a1 + 16));
  BigIntegerAddInt();
  *(a1 + 56) = BigIntegerFromInt();
  v15 = *(a1 + 64);
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  BigIntegerModExp();
  BigIntegerToCstr(*(a1 + 56), v7);
  CC_SHA1_Update(*(a1 + 104), *v7, *(v7 + 2));
  CC_SHA1_Update((*(a1 + 104) + 96), *v7, *(v7 + 2));
  if (!a2)
  {
    cstr_clear_free(v7);
  }

  return 0;
}

void srp6a_client_key(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v5, 0, 96);
  CC_SHA1_Init(v5);
  v2 = cstr_new();
  BigIntegerToCstr(*(a1 + 16), v2);
  CC_SHA1_Update(v5, *v2, *(v2 + 2));
  v3 = *(a1 + 24);
  if ((*(a1 + 4) & 2) != 0)
  {
    BigIntegerToCstrEx(v3, v2, v2[1]);
  }

  else
  {
    BigIntegerToCstr(v3, v2);
  }

  CC_SHA1_Update(v5, *v2, *(v2 + 2));
  CC_SHA1_Final(md, v5);
  cstr_free(v2);
  v4 = BigIntegerFromBytes();
  BigIntegerCmpInt(v4, 0);
}

uint64_t sub_240F13FA4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CC_SHA1_CTX *c, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t ca, uint64_t c_8, uint64_t c_16, uint64_t c_24, uint64_t c_32, uint64_t c_40, uint64_t c_48, uint64_t c_56, uint64_t c_64, uint64_t c_72, uint64_t c_80)
{
  if (a1)
  {
    v35 = BigIntegerBitLen(*(v31 + 16));
    v36 = v35 + 7;
    if (v35 < -7)
    {
      v36 = v35 + 14;
    }

    v37 = v36 >> 3;
    if (v36 >> 3 >= v32)
    {
      memset(v48, 0, 96);
      CC_SHA1_Init(v48);
      v38 = cstr_new();
      v39 = *(v31 + 56);
      if ((*(v31 + 4) & 2) != 0)
      {
        BigIntegerToCstrEx(v39, v38, v37);
        CC_SHA1_Update(v48, *v38, *(v38 + 2));
        v40 = v37 - v32;
        if (v37 > v32)
        {
          v41 = v40;
          memcpy((*v38 + v40), v33, v32);
          bzero(*v38, v41);
          v42 = *v38;
          v43 = v37;
          goto LABEL_10;
        }
      }

      else
      {
        BigIntegerToCstr(v39, v38);
        CC_SHA1_Update(v48, *v38, *(v38 + 2));
      }

      v42 = v33;
      v43 = v32;
LABEL_10:
      CC_SHA1_Update(v48, v42, v43);
      CC_SHA1_Final((v34 - 108), v48);
      *(v31 + 72) = BigIntegerFromBytes();
      CC_SHA1_Update(*(v31 + 104), v33, v32);
      v44 = BigIntegerFromBytes();
      BigIntegerCmp(v44, *(v31 + 16));
    }
  }

  BigIntegerClearFree();
  v45 = *(v34 - 88);
  v46 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t srp6_client_verify(uint64_t a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  CC_SHA1_Final(md, (*(a1 + 104) + 96));
  if (a3 == 20 && (*md == *a2 ? (v5 = v10 == *(a2 + 8)) : (v5 = 0), v5 ? (v6 = v11 == *(a2 + 16)) : (v6 = 0), v6))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t srp6_client_respond(uint64_t a1, unsigned __int8 ***a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  if (!*a2)
  {
    v4 = cstr_new();
    *a2 = v4;
  }

  cstr_set_length(v4, 20);
  CC_SHA1_Final(**a2, *(a1 + 104));
  CC_SHA1_Update((*(a1 + 104) + 96), **a2, *(*a2 + 2));
  CC_SHA1_Update((*(a1 + 104) + 96), (*(a1 + 104) + 192), 0x28u);
  return 0;
}

uint64_t srp6_server_init(void *a1)
{
  *a1 = 0x10000001CLL;
  v2 = malloc_type_malloc(0x1BCuLL, 0x1000040E79818FDuLL);
  a1[13] = v2;
  CC_SHA1_Init(v2);
  CC_SHA1_Init((a1[13] + 96));
  CC_SHA1_Init((a1[13] + 192));
  CC_SHA1_Init((a1[13] + 288));
  return 0;
}

uint64_t srp6_server_finish(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    v1[25] = 0u;
    v1[26] = 0u;
    v1[23] = 0u;
    v1[24] = 0u;
    v1[21] = 0u;
    v1[22] = 0u;
    v1[19] = 0u;
    v1[20] = 0u;
    v1[17] = 0u;
    v1[18] = 0u;
    v1[15] = 0u;
    v1[16] = 0u;
    v1[13] = 0u;
    v1[14] = 0u;
    v1[11] = 0u;
    v1[12] = 0u;
    v1[9] = 0u;
    v1[10] = 0u;
    v1[7] = 0u;
    v1[8] = 0u;
    v1[5] = 0u;
    v1[6] = 0u;
    v1[3] = 0u;
    v1[4] = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
    *(v1 + 428) = 0u;
    free(*(a1 + 104));
  }

  return 0;
}

uint64_t srp6_server_params(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, const void *a6, CC_LONG a7)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(&v17, 0, sizeof(v17));
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, a2, a3);
  CC_SHA1_Final(md, &v17);
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, a4, a5);
  CC_SHA1_Final(v18, &v17);
  for (i = 0; i != 20; ++i)
  {
    md[i] ^= v18[i];
  }

  CC_SHA1_Update((*(a1 + 104) + 96), md, 0x14u);
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Final(md, &v17);
  CC_SHA1_Update((*(a1 + 104) + 96), md, 0x14u);
  CC_SHA1_Update((*(a1 + 104) + 96), a6, a7);
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t srp6_server_passwd(uint64_t a1, const void *a2, CC_LONG a3)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(&v13, 0, sizeof(v13));
  CC_SHA1_Init(&v13);
  CC_SHA1_Update(&v13, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Update(&v13, ":", 1u);
  CC_SHA1_Update(&v13, a2, a3);
  CC_SHA1_Final(md, &v13);
  CC_SHA1_Init(&v13);
  CC_SHA1_Update(&v13, **(a1 + 32), *(*(a1 + 32) + 8));
  CC_SHA1_Update(&v13, md, 0x14u);
  CC_SHA1_Final(md, &v13);
  memset(&v13, 0, sizeof(v13));
  *(a1 + 48) = BigIntegerFromBytes();
  *md = 0;
  v15 = 0;
  v16 = 0;
  *(a1 + 40) = BigIntegerFromInt();
  v6 = *(a1 + 48);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  BigIntegerModExp();
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t srp6_server_genpub(void *a1, void **a2)
{
  BigIntegerFromInt();
  srp6_server_genpub_ex(a1, a2);
  BigIntegerClearFree();
  return 0;
}

uint64_t srp6_server_key(uint64_t a1, uint64_t a2, const void *a3, signed int a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = BigIntegerBitLen(*(a1 + 16));
  v8 = v7 + 7;
  if (v7 < -7)
  {
    v8 = v7 + 14;
  }

  v9 = v8 >> 3;
  if (v8 >> 3 >= a4)
  {
    memset(&v24, 0, sizeof(v24));
    CC_SHA1_Update((*(a1 + 104) + 96), a3, a4);
    v10 = cstr_new();
    BigIntegerToCstr(*(a1 + 56), v10);
    CC_SHA1_Update((*(a1 + 104) + 96), *v10, *(v10 + 2));
    CC_SHA1_Update(*(a1 + 104), a3, a4);
    CC_SHA1_Update((*(a1 + 104) + 192), a3, a4);
    CC_SHA1_Init(&v24);
    if ((*(a1 + 4) & 2) == 0)
    {
      CC_SHA1_Update(&v24, a3, a4);
      goto LABEL_11;
    }

    v11 = v9 - a4;
    if (v9 <= a4)
    {
      CC_SHA1_Update(&v24, a3, a4);
      if (v10[1] >= v9)
      {
        goto LABEL_11;
      }

      v13 = v9;
      v12 = *(a1 + 56);
    }

    else
    {
      cstr_set_length(v10, v9);
      memcpy((*v10 + v11), a3, a4);
      bzero(*v10, v11);
      CC_SHA1_Update(&v24, *v10, v9);
      v12 = *(a1 + 56);
      v13 = v9;
    }

    BigIntegerToCstrEx(v12, v10, v13);
LABEL_11:
    CC_SHA1_Update(&v24, *v10, *(v10 + 2));
    CC_SHA1_Final(md, &v24);
    *(a1 + 72) = BigIntegerFromBytes();
    BigIntegerFromInt();
    v14 = *(a1 + 40);
    v15 = *(a1 + 72);
    v16 = *(a1 + 16);
    v17 = *(a1 + 112);
    v18 = *(a1 + 120);
    BigIntegerModExp();
    BigIntegerFromBytes();
    v19 = BigIntegerFromInt();
    v20 = *(a1 + 16);
    v21 = *(a1 + 112);
    BigIntegerModMul();
    BigIntegerFree();
    BigIntegerCmpInt(v19, 1);
  }

  result = 0xFFFFFFFFLL;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t srp6_server_verify(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  CC_SHA1_Final(md, (*(a1 + 104) + 288));
  if (a3 == 20)
  {
    v7 = *md == *a2 && v16 == *(a2 + 8) && v17 == *(a2 + 16);
    v8 = *(a1 + 104);
    if (v7)
    {
      v12 = &v8[4].data[3];
      v11 = v8 + 2;
    }

    else
    {
      CC_SHA1_Final(md, v8 + 1);
      if (*md != *a2 || v16 != *(a2 + 8) || v17 != *(a2 + 16))
      {
        goto LABEL_19;
      }

      CC_SHA1_Update(*(a1 + 104), md, 0x14u);
      CC_SHA1_Update(*(a1 + 104), (*(a1 + 104) + 384), 0x28u);
      v11 = *(a1 + 104);
      v12 = &v11[4].data[3];
    }

    CC_SHA1_Final(v12, v11);
    result = 0;
    goto LABEL_22;
  }

  CC_SHA1_Final(md, (*(a1 + 104) + 96));
LABEL_19:
  result = 0xFFFFFFFFLL;
LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t srp6_server_respond(uint64_t a1, uint64_t **a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  if (!*a2)
  {
    v4 = cstr_new();
    *a2 = v4;
  }

  cstr_set_length(v4, 20);
  result = 0;
  v6 = **a2;
  v7 = *(a1 + 104);
  v8 = (v7 + 424);
  LODWORD(v7) = *(v7 + 440);
  *v6 = *v8;
  *(v6 + 16) = v7;
  return result;
}

void srp6_server_genpub_ex(void *a1, void **a2)
{
  BigIntegerBitLen(a1[2]);
  secret_bits = SRP_get_secret_bits();
  v5 = secret_bits + 7;
  if (secret_bits < -7)
  {
    v5 = secret_bits + 14;
  }

  v6 = v5 >> 3;
  if (a2)
  {
    v7 = *a2;
    if (!*a2)
    {
      v7 = cstr_new();
      *a2 = v7;
    }
  }

  else
  {
    v7 = cstr_new();
  }

  v8 = BigIntegerBitLen(a1[2]);
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  if (v6 > v9 >> 3)
  {
    v10 = BigIntegerBitLen(a1[2]);
    v11 = v10 + 7;
    if (v10 < -7)
    {
      v11 = v10 + 14;
    }

    v6 = v11 >> 3;
  }

  v12 = BigIntegerBitLen(a1[2]);
  v13 = v12 + 7;
  if (v12 < -7)
  {
    v13 = v12 + 14;
  }

  cstr_set_length(v7, v13 >> 3);
  t_random(*v7, v6);
  v14 = *v7;
  a1[8] = BigIntegerFromBytes();
  a1[7] = BigIntegerFromInt();
  v15 = a1[5];
  v16 = a1[14];
  BigIntegerMul();
  v17 = a1[8];
  v19 = a1[2];
  v18 = a1[3];
  v20 = a1[14];
  v21 = a1[15];
  BigIntegerModExp();
  v22 = a1[7];
  BigIntegerAdd();
  v23 = a1[7];
  v24 = a1[2];
  v25 = a1[14];
  BigIntegerMod();
  BigIntegerToCstr(a1[7], v7);
  CC_SHA1_Update((a1[13] + 288), *v7, *(v7 + 2));
  if (!a2)
  {

    cstr_clear_free(v7);
  }
}

uint64_t srp6a_server_init(void *a1)
{
  *a1 = 0x30000001CLL;
  v2 = malloc_type_malloc(0x1BCuLL, 0x1000040E79818FDuLL);
  a1[13] = v2;
  CC_SHA1_Init(v2);
  CC_SHA1_Init((a1[13] + 96));
  CC_SHA1_Init((a1[13] + 192));
  CC_SHA1_Init((a1[13] + 288));
  return 0;
}

void srp6a_server_genpub(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v5, 0, sizeof(v5));
  CC_SHA1_Init(&v5);
  v2 = cstr_new();
  BigIntegerToCstr(*(a1 + 16), v2);
  CC_SHA1_Update(&v5, *v2, *(v2 + 2));
  v3 = *(a1 + 24);
  if ((*(a1 + 4) & 2) != 0)
  {
    BigIntegerToCstrEx(v3, v2, v2[1]);
  }

  else
  {
    BigIntegerToCstr(v3, v2);
  }

  CC_SHA1_Update(&v5, *v2, *(v2 + 2));
  CC_SHA1_Final(md, &v5);
  cstr_free(v2);
  v4 = BigIntegerFromBytes();
  BigIntegerCmpInt(v4, 0);
}

uint64_t sub_240F14F70(int a1)
{
  if (a1)
  {
    srp6_server_genpub_ex(v2, v1);
    v4 = 0;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  BigIntegerClearFree();
  v5 = *(v3 - 40);
  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t BigIntegerFromInt()
{
  v0 = CCCreateBigNum();
  if (v0)
  {
    CCBigNumSetI();
  }

  return v0;
}

uint64_t BigIntegerToCstr(uint64_t a1, uint64_t *a2)
{
  v3 = CCBigNumBitCount();
  v4 = v3 + 7;
  if (v3 < -7)
  {
    v4 = v3 + 14;
  }

  if ((cstr_set_length(a2, v4 >> 3) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  v6 = CCBigNumToData();
  return (cstr_set_length(a2, v6) >> 31);
}

uint64_t BigIntegerToCstrEx(uint64_t a1, void **a2, unint64_t a3)
{
  if ((cstr_set_length(a2, a3) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  v6 = CCBigNumToData();
  result = 0;
  if (a3 > v6)
  {
    v8 = a3 - v6;
    memmove(*a2 + v8, *a2, v6);
    bzero(*a2, v8);
    return 0;
  }

  return result;
}

uint64_t BigIntegerToHex(uint64_t a1, char *a2, int a3)
{
  v5 = CCBigNumToHexString();
  strlcpy(a2, v5, a3);
  free(v5);
  return 0;
}

uint64_t BigIntegerToString(uint64_t a1, char *a2)
{
  v3 = BigIntegerFromInt();
  CCBigNumModI();
  *a2 = b64table[0];
  v4 = a2 + 1;
  BigIntegerFromInt();
  CCBigNumDiv();
  CCBigNumFree();
  v5 = a2 + 1;
  if (MEMORY[0x245CD4380](v3, 0) >= 1)
  {
    v5 = a2 + 1;
    do
    {
      CCBigNumModI();
      *v5++ = b64table[0];
      BigIntegerFromInt();
      CCBigNumDiv();
      CCBigNumFree();
    }

    while (MEMORY[0x245CD4380](v3, 0) > 0);
  }

  CCBigNumFree();
  *v5 = 0;
  v6 = v5 - 1;
  if (v6 > a2)
  {
    do
    {
      v7 = *v6;
      *v6-- = *(v4 - 1);
      *(v4 - 1) = v7;
    }

    while (v6 > v4++);
  }

  return 0;
}

uint64_t BigIntegerDivInt()
{
  BigIntegerFromInt();
  CCBigNumDiv();
  CCBigNumFree();
  return 0;
}

void t_random(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *MEMORY[0x277D85C28];
    if (CCRandomCopyBytes())
    {
      abort();
    }
  }
}

_BYTE *t_sessionkey(_BYTE *a1, _BYTE *a2, unint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3 > 0xFA0)
  {
    goto LABEL_18;
  }

  v3 = a3;
  v4 = a2;
  if (a3)
  {
    while (!*v4)
    {
      ++v4;
      if (!--v3)
      {
        v4 = &a2[a3];
        break;
      }
    }
  }

  v6 = v3 >> 1;
  v7 = malloc_type_malloc(v3 >> 1, 0x100004077774924uLL);
  if (v7)
  {
    v8 = v7;
    memset(&v23, 0, sizeof(v23));
    if (v3 >= 2)
    {
      v9 = 0;
      v10 = 1;
      v11 = v7;
      do
      {
        *v11++ = v4[v3 + ~v9];
        v12 = v6 > v10++;
        v9 += 2;
      }

      while (v12);
    }

    CC_SHA1_Init(&v23);
    CC_SHA1_Update(&v23, v8, v3 >> 1);
    CC_SHA1_Final(md, &v23);
    v13 = 0;
    v14 = a1;
    do
    {
      *v14 = md[v13];
      v14 += 2;
      ++v13;
    }

    while (v13 != 20);
    if (v3 >= 2)
    {
      v15 = 0;
      v16 = 1;
      v17 = v8;
      do
      {
        *v17++ = v4[v3 - 2 - v15];
        v12 = v6 > v16++;
        v15 += 2;
      }

      while (v12);
    }

    CC_SHA1_Init(&v23);
    CC_SHA1_Update(&v23, v8, v3 >> 1);
    v18 = md;
    CC_SHA1_Final(md, &v23);
    for (i = 1; i != 41; i += 2)
    {
      v20 = *v18++;
      a1[i] = v20;
    }

    bzero(v8, v3 >> 1);
    free(v8);
  }

  else
  {
LABEL_18:
    a1 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return a1;
}

unsigned __int8 *t_mgf1(unsigned __int8 *result, unsigned int a2, const void *a3, CC_LONG a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    memset(&c, 0, sizeof(c));
    while (1)
    {
      data = bswap32(v9);
      CC_SHA1_Init(&c);
      CC_SHA1_Update(&c, a3, a4);
      CC_SHA1_Update(&c, &data, 4u);
      v10 = v8 + 20;
      if (v8 + 20 > a2)
      {
        break;
      }

      result = CC_SHA1_Final(&v7[v8], &c);
      ++v9;
      v8 += 20;
      if (v10 >= a2)
      {
        goto LABEL_7;
      }
    }

    CC_SHA1_Final(md, &c);
    result = memcpy(&v7[v8], md, a2 - v8);
  }

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t t_fromhex(_BYTE *a1, char *__s)
{
  v2 = __s;
  v4 = strlen(__s);
  if ((v4 & 1) == 0)
  {
    v5 = a1;
    if (!v4)
    {
      return (v5 - a1);
    }

    goto LABEL_12;
  }

  v7 = *v2++;
  v6 = v7;
  v8 = v7 - 48;
  v9 = v7 - 97;
  v10 = v7 - 55;
  if ((v7 - 65) >= 6)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = v6 - 87;
  if (v9 > 5)
  {
    v12 = v11;
  }

  if (v8 >= 0xA)
  {
    LOBYTE(v8) = v12;
  }

  *a1 = v8;
  v5 = a1 + 1;
  if (--v4)
  {
    do
    {
LABEL_12:
      v13 = *v2;
      v14 = v13 - 48;
      v15 = v13 - 97;
      if ((v13 - 65) >= 6)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13 - 55;
      }

      v17 = v13 - 87;
      if (v15 > 5)
      {
        v17 = v16;
      }

      if (v14 < 0xA)
      {
        v17 = v14;
      }

      v18 = 16 * v17;
      v19 = v2[1];
      v20 = v19 - 48;
      v21 = v19 - 97;
      if ((v19 - 65) >= 6)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 - 55;
      }

      v23 = v19 - 87;
      if (v21 > 5)
      {
        v23 = v22;
      }

      if (v20 < 0xA)
      {
        v23 = v20;
      }

      *v5++ = v23 + v18;
      v2 += 2;
      v4 -= 2;
    }

    while (v4);
  }

  return (v5 - a1);
}

char *t_tohex(char *a1, _BYTE *a2, int a3)
{
  *a1 = 0;
  if (a3)
  {
    v4 = a3;
    v6 = 0;
    v7 = a1;
    do
    {
      if (v6)
      {
        goto LABEL_4;
      }

      if (!*a2)
      {
        v6 = 0;
        goto LABEL_6;
      }

      if (*a2 >= 0x10u)
      {
LABEL_4:
        v8 = 2;
        sprintf(v7, "%.2X");
      }

      else
      {
        v8 = 1;
        sprintf(v7, "%.1X");
      }

      v7 += v8;
      v6 = 1;
LABEL_6:
      ++a2;
      --v4;
    }

    while (v4);
  }

  return a1;
}

char *t_tohexcstr(char **a1, _BYTE *a2, int a3)
{
  cstr_set_length(a1, (2 * a3) | 1);
  v6 = *a1;

  return t_tohex(v6, a2, a3);
}

size_t t_fromb64(void *a1, char *__s)
{
  while (1)
  {
    v4 = *__s;
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100000600;
    if (v5 || v6 == 0)
    {
      break;
    }

    ++__s;
  }

  v8 = strlen(__s);
  v9 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (v8)
  {
    v11 = 0;
    while (1)
    {
      v12 = strchr(b64table_0, __s[v11]);
      if (!v12)
      {
        break;
      }

      v10[v11++] = v12 - b64table_0;
      if (v8 == v11)
      {
        goto LABEL_14;
      }
    }

    v8 = v11;
  }

LABEL_14:
  v14 = v10 - 3;
  v15 = (v8 - 1) + 1;
  v16 = v8;
  while (1)
  {
    v17 = &v14[v15];
    v18 = v14[v15 + 2];
    v19 = &v14[v16];
    v10[v16] = v18;
    if (v15 - 1 < 1)
    {
      v22 = v16;
      goto LABEL_23;
    }

    v19[3] = v18 | (v17[1] << 6);
    v20 = (v17[1] >> 2) & 0xF;
    v19[2] = v20;
    if (v15 == 2)
    {
      v22 = v16 - 1;
      goto LABEL_23;
    }

    v19[2] = v20 | (16 * v14[v15]);
    v21 = (v14[v15] >> 4) & 3;
    v14[v16 + 1] = (v14[v15] >> 4) & 3;
    if ((v15 - 1) < 3)
    {
      break;
    }

    v14[v16 + 1] = v21 | (4 * v14[v15 - 1]);
    v22 = v16 - 3;
    v14[v16] = 0;
    v16 -= 3;
    v15 -= 4;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  v22 = v16 - 2;
LABEL_23:
  v23 = &v10[v22];
  do
  {
    v25 = *v23++;
    v24 = v25;
    v26 = v22 + 1;
    if (v8 < v22)
    {
      break;
    }

    ++v22;
  }

  while (!v24);
  v13 = v8 - v26 + 2;
  memcpy(a1, v23 - 1, v13);
  free(v10);
  return v13;
}

size_t t_cstrfromb64(void **a1, char *__s)
{
  v4 = strlen(__s);
  cstr_set_length(a1, (6 * v4 + 7) >> 3);
  v5 = t_fromb64(*a1, __s);
  cstr_set_length(a1, v5);
  return v5;
}

_BYTE *t_tob64(_BYTE *result, unsigned __int8 *a2, unsigned int a3)
{
  v3 = 0;
  if (a3 % 3 == 1)
  {
    v5 = a2;
    goto LABEL_5;
  }

  v4 = 0;
  if (a3 % 3 == 2)
  {
    v5 = a2 + 1;
    v3 = *a2;
LABEL_5:
    v4 = *v5;
  }

  v6 = 0;
  v7 = 0;
  v8 = a3 - 3 * ((a3 * 0x5555555555555556uLL) >> 64);
  v9 = v8 + 1;
  v10 = &a2[v8 + 2];
  v11 = result;
  while (1)
  {
    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = v6 > 3;
    }

    v13 = v12;
    if (v13 == 1)
    {
      *v11++ = b64table_0[v6 >> 2];
    }

    v14 = (16 * (v6 & 3)) | (v3 >> 4);
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    if (v15 == 1)
    {
      *v11++ = b64table_0[v14];
    }

    v16 = (4 * (v3 & 0xF)) | (v4 >> 6);
    if (v16)
    {
      v15 = 1;
    }

    if (v15 == 1)
    {
      *v11++ = b64table_0[v16];
      v17 = v4 & 0x3F;
LABEL_25:
      *v11++ = b64table_0[v17];
      v7 = 1;
      goto LABEL_26;
    }

    v17 = v4 & 0x3F;
    if ((v4 & 0x3F) != 0)
    {
      goto LABEL_25;
    }

    v7 = 0;
LABEL_26:
    if (v9 - 1 >= a3)
    {
      break;
    }

    v6 = *(v10 - 2);
    v3 = *(v10 - 1);
    v9 += 3;
    v18 = *v10;
    v10 += 3;
    v4 = v18;
  }

  *v11 = 0;
  return result;
}

_BYTE *t_tob64cstr(void *a1, unsigned __int8 *a2, unsigned int a3)
{
  cstr_set_length(a1, ((8 * a3) | 4) / 6 + 1);
  v6 = *a1;

  return t_tob64(v6, a2, a3);
}

uint64_t srp2945_client_init(uint64_t a1)
{
  *a1 = 12;
  *(a1 + 128) = SRP_CLIENT_default_param_verify_cb;
  v2 = malloc_type_malloc(0xE8uLL, 0x10000403E2B8178uLL);
  *(a1 + 104) = v2;
  CC_SHA1_Init(v2);
  CC_SHA1_Init((*(a1 + 104) + 96));
  return 0;
}

uint64_t srp2945_client_finish(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    *(v1 + 224) = 0;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *v1 = 0u;
    *(v1 + 16) = 0u;
    free(*(a1 + 104));
  }

  return 0;
}

uint64_t srp2945_client_params(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, const void *a6, CC_LONG a7)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(&v17, 0, sizeof(v17));
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, a2, a3);
  CC_SHA1_Final(md, &v17);
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, a4, a5);
  CC_SHA1_Final(v18, &v17);
  for (i = 0; i != 20; ++i)
  {
    md[i] ^= v18[i];
  }

  CC_SHA1_Update(*(a1 + 104), md, 0x14u);
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Final(md, &v17);
  CC_SHA1_Update(*(a1 + 104), md, 0x14u);
  CC_SHA1_Update(*(a1 + 104), a6, a7);
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t srp2945_client_auth(void *a1)
{
  a1[6] = BigIntegerFromBytes();
  a1[5] = BigIntegerFromInt();
  v2 = a1[6];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[14];
  v6 = a1[15];
  BigIntegerModExp();
  return 0;
}

uint64_t srp2945_client_passwd(uint64_t a1, const void *a2, CC_LONG a3)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  CC_SHA1_Init(&v8);
  CC_SHA1_Update(&v8, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Update(&v8, ":", 1u);
  CC_SHA1_Update(&v8, a2, a3);
  CC_SHA1_Final(md, &v8);
  CC_SHA1_Init(&v8);
  CC_SHA1_Update(&v8, **(a1 + 32), *(*(a1 + 32) + 8));
  CC_SHA1_Update(&v8, md, 0x14u);
  CC_SHA1_Final(md, &v8);
  memset(&v8, 0, sizeof(v8));
  result = SRP_set_authenticator(a1);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t srp2945_client_genpub(uint64_t a1, void **a2)
{
  BigIntegerBitLen(*(a1 + 16));
  secret_bits = SRP_get_secret_bits();
  v5 = secret_bits + 7;
  if (secret_bits < -7)
  {
    v5 = secret_bits + 14;
  }

  v6 = v5 >> 3;
  if (a2)
  {
    v7 = *a2;
    if (!*a2)
    {
      v7 = cstr_new();
      *a2 = v7;
    }
  }

  else
  {
    v7 = cstr_new();
  }

  v8 = BigIntegerBitLen(*(a1 + 16));
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  if (v6 > v9 >> 3)
  {
    v10 = BigIntegerBitLen(*(a1 + 16));
    v11 = v10 + 7;
    if (v10 < -7)
    {
      v11 = v10 + 14;
    }

    v6 = v11 >> 3;
  }

  v12 = BigIntegerBitLen(*(a1 + 16));
  v13 = v12 + 7;
  if (v12 < -7)
  {
    v13 = v12 + 14;
  }

  cstr_set_length(v7, v13 >> 3);
  t_random(*v7, v6);
  v14 = *v7;
  *(a1 + 64) = BigIntegerFromBytes();
  BigIntegerBitLen(*(a1 + 16));
  BigIntegerAddInt();
  *(a1 + 56) = BigIntegerFromInt();
  v15 = *(a1 + 64);
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  BigIntegerModExp();
  BigIntegerToCstr(*(a1 + 56), v7);
  CC_SHA1_Update(*(a1 + 104), *v7, *(v7 + 2));
  CC_SHA1_Update((*(a1 + 104) + 96), *v7, *(v7 + 2));
  if (!a2)
  {
    cstr_clear_free(v7);
  }

  return 0;
}

void srp2945_client_key(uint64_t a1, uint64_t a2, const void *a3, CC_LONG a4)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  CC_SHA1_Init(&v8);
  CC_SHA1_Update(&v8, a3, a4);
  CC_SHA1_Final(md, &v8);
  v7 = BigIntegerFromBytes();
  *(a1 + 72) = v7;
  BigIntegerCmpInt(v7, 0);
}

uint64_t sub_240F163D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a1)
  {
    CC_SHA1_Update(*(v30 + 104), v32, v31);
    v34 = BigIntegerFromBytes();
    BigIntegerCmp(v34, *(v30 + 16));
  }

  result = 0xFFFFFFFFLL;
  v36 = *(v33 - 40);
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t srp2945_client_verify(uint64_t a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  CC_SHA1_Final(md, (*(a1 + 104) + 96));
  if (a3 == 20 && (*md == *a2 ? (v5 = v10 == *(a2 + 8)) : (v5 = 0), v5 ? (v6 = v11 == *(a2 + 16)) : (v6 = 0), v6))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t srp2945_client_respond(uint64_t a1, unsigned __int8 ***a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  if (!*a2)
  {
    v4 = cstr_new();
    *a2 = v4;
  }

  cstr_set_length(v4, 20);
  CC_SHA1_Final(**a2, *(a1 + 104));
  CC_SHA1_Update((*(a1 + 104) + 96), **a2, *(*a2 + 2));
  CC_SHA1_Update((*(a1 + 104) + 96), (*(a1 + 104) + 192), 0x28u);
  return 0;
}

uint64_t srp2945_server_init(uint64_t a1)
{
  *a1 = 28;
  v2 = malloc_type_malloc(0x1BCuLL, 0x1000040E79818FDuLL);
  *(a1 + 104) = v2;
  CC_SHA1_Init(v2);
  CC_SHA1_Init((*(a1 + 104) + 96));
  CC_SHA1_Init((*(a1 + 104) + 192));
  CC_SHA1_Init((*(a1 + 104) + 288));
  return 0;
}

uint64_t srp2945_server_finish(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    v1[25] = 0u;
    v1[26] = 0u;
    v1[23] = 0u;
    v1[24] = 0u;
    v1[21] = 0u;
    v1[22] = 0u;
    v1[19] = 0u;
    v1[20] = 0u;
    v1[17] = 0u;
    v1[18] = 0u;
    v1[15] = 0u;
    v1[16] = 0u;
    v1[13] = 0u;
    v1[14] = 0u;
    v1[11] = 0u;
    v1[12] = 0u;
    v1[9] = 0u;
    v1[10] = 0u;
    v1[7] = 0u;
    v1[8] = 0u;
    v1[5] = 0u;
    v1[6] = 0u;
    v1[3] = 0u;
    v1[4] = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
    *(v1 + 428) = 0u;
    free(*(a1 + 104));
  }

  return 0;
}

uint64_t srp2945_server_params(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, const void *a6, CC_LONG a7)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(&v17, 0, sizeof(v17));
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, a2, a3);
  CC_SHA1_Final(md, &v17);
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, a4, a5);
  CC_SHA1_Final(v18, &v17);
  for (i = 0; i != 20; ++i)
  {
    md[i] ^= v18[i];
  }

  CC_SHA1_Update((*(a1 + 104) + 96), md, 0x14u);
  CC_SHA1_Init(&v17);
  CC_SHA1_Update(&v17, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Final(md, &v17);
  CC_SHA1_Update((*(a1 + 104) + 96), md, 0x14u);
  CC_SHA1_Update((*(a1 + 104) + 96), a6, a7);
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t srp2945_server_passwd(uint64_t a1, const void *a2, CC_LONG a3)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(&v13, 0, sizeof(v13));
  CC_SHA1_Init(&v13);
  CC_SHA1_Update(&v13, **(a1 + 8), *(*(a1 + 8) + 8));
  CC_SHA1_Update(&v13, ":", 1u);
  CC_SHA1_Update(&v13, a2, a3);
  CC_SHA1_Final(md, &v13);
  CC_SHA1_Init(&v13);
  CC_SHA1_Update(&v13, **(a1 + 32), *(*(a1 + 32) + 8));
  CC_SHA1_Update(&v13, md, 0x14u);
  CC_SHA1_Final(md, &v13);
  memset(&v13, 0, sizeof(v13));
  *(a1 + 48) = BigIntegerFromBytes();
  *md = 0;
  v15 = 0;
  v16 = 0;
  *(a1 + 40) = BigIntegerFromInt();
  v6 = *(a1 + 48);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  BigIntegerModExp();
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

void srp2945_server_genpub(void *a1, void **a2)
{
  v23 = *MEMORY[0x277D85DE8];
  BigIntegerBitLen(a1[2]);
  secret_bits = SRP_get_secret_bits();
  v5 = secret_bits + 7;
  if (secret_bits < -7)
  {
    v5 = secret_bits + 14;
  }

  v6 = v5 >> 3;
  if (a2)
  {
    v7 = *a2;
    if (!*a2)
    {
      v7 = cstr_new();
      *a2 = v7;
    }
  }

  else
  {
    v7 = cstr_new();
  }

  v8 = BigIntegerBitLen(a1[2]);
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  if (v6 > v9 >> 3)
  {
    v10 = BigIntegerBitLen(a1[2]);
    v11 = v10 + 7;
    if (v10 < -7)
    {
      v11 = v10 + 14;
    }

    v6 = v11 >> 3;
  }

  v12 = BigIntegerBitLen(a1[2]);
  v13 = v12 + 7;
  if (v12 < -7)
  {
    v13 = v12 + 14;
  }

  cstr_set_length(v7, v13 >> 3);
  t_random(*v7, v6);
  v14 = *v7;
  a1[8] = BigIntegerFromBytes();
  a1[7] = BigIntegerFromInt();
  v15 = a1[7];
  v16 = a1[8];
  v18 = a1[2];
  v17 = a1[3];
  v19 = a1[14];
  v20 = a1[15];
  BigIntegerModExp();
  v21 = a1[7];
  v22 = a1[5];
  BigIntegerAdd();
  BigIntegerCmp(a1[7], a1[2]);
}

void srp2945_server_key(uint64_t a1, int a2, void *data, CC_LONG len)
{
  CC_SHA1_Update((*(a1 + 104) + 96), data, len);
  v7 = cstr_new();
  BigIntegerToCstr(*(a1 + 56), v7);
  CC_SHA1_Update((*(a1 + 104) + 96), *v7, *(v7 + 2));
  CC_SHA1_Update(*(a1 + 104), data, len);
  CC_SHA1_Update((*(a1 + 104) + 192), data, len);
  BigIntegerFromInt();
  v8 = *(a1 + 40);
  v9 = *(a1 + 72);
  v10 = *(a1 + 16);
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  BigIntegerModExp();
  BigIntegerFromBytes();
  v13 = BigIntegerFromInt();
  v14 = *(a1 + 16);
  v15 = *(a1 + 112);
  BigIntegerModMul();
  BigIntegerCmpInt(v13, 1);
}

uint64_t srp2945_server_verify(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  CC_SHA1_Final(md, (*(a1 + 104) + 288));
  if (a3 == 20)
  {
    v7 = *md == *a2 && v16 == *(a2 + 8) && v17 == *(a2 + 16);
    v8 = *(a1 + 104);
    if (v7)
    {
      v12 = &v8[4].data[3];
      v11 = v8 + 2;
    }

    else
    {
      CC_SHA1_Final(md, v8 + 1);
      if (*md != *a2 || v16 != *(a2 + 8) || v17 != *(a2 + 16))
      {
        goto LABEL_19;
      }

      CC_SHA1_Update(*(a1 + 104), md, 0x14u);
      CC_SHA1_Update(*(a1 + 104), (*(a1 + 104) + 384), 0x28u);
      v11 = *(a1 + 104);
      v12 = &v11[4].data[3];
    }

    CC_SHA1_Final(v12, v11);
    result = 0;
    goto LABEL_22;
  }

  CC_SHA1_Final(md, (*(a1 + 104) + 96));
LABEL_19:
  result = 0xFFFFFFFFLL;
LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t srp2945_server_respond(uint64_t a1, uint64_t **a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  if (!*a2)
  {
    v4 = cstr_new();
    *a2 = v4;
  }

  cstr_set_length(v4, 20);
  result = 0;
  v6 = **a2;
  v7 = *(a1 + 104);
  v8 = (v7 + 424);
  LODWORD(v7) = *(v7 + 440);
  *v6 = *v8;
  *(v6 + 16) = v7;
  return result;
}