uint64_t CONV_UTF8ToUnistr255(unsigned __int8 *a1, uint64_t a2, _WORD *a3)
{
  v4 = a3 + 1;
  if (!a2)
  {
    result = 0;
    LODWORD(v9) = a3 + 2;
    goto LABEL_93;
  }

  v5 = a2;
  v7 = 0;
  v8 = 2;
  v9 = a3 + 1;
  do
  {
    v10 = a1;
    while (1)
    {
      v12 = *a1++;
      v11 = v12;
      if (!v12)
      {
        goto LABEL_89;
      }

      if (v8 > 511)
      {
        goto LABEL_92;
      }

      --v5;
      if ((v11 & 0x80) == 0)
      {
        break;
      }

      v13 = utf_extrabytes[v11 >> 3];
      if ((v13 & 0x80000000) == 0 && v5 >= v13)
      {
        v5 -= v13;
        if (v13 == 1)
        {
          v23 = *a1;
          if ((v23 & 0xC0) == 0x80)
          {
            v22 = v23 + (v11 << 6) - 12416;
            if (v22 >= 0x80)
            {
              v27 = 2;
              goto LABEL_45;
            }
          }
        }

        else if (utf_extrabytes[v11 >> 3] == 2)
        {
          v19 = *a1;
          if ((v19 & 0xC0) == 0x80)
          {
            v20 = v10[2];
            if ((v20 & 0xC0) == 0x80)
            {
              v21 = (v19 << 6) + (v11 << 12) + v20;
              v22 = v21 - 925824;
              if ((v21 - 925824) >= 0x800 && (v22 >> 11 < 0x1B || v22 >= 0xE000 && (v21 & 0x3FFFFE) != 0xF207E))
              {
                v27 = 3;
LABEL_45:
                v41 = v7;
                if (v8 == 2)
                {
                  goto LABEL_72;
                }

                v40 = v27;
                if (!sub_100001360(v22))
                {
                  v27 = v40;
                  goto LABEL_72;
                }

                v28 = *(a3 + v8 - 2);
                if ((v22 - 4449) > 0x61u)
                {
                  if ((v22 - 12443) < 0xD265u)
                  {
                    goto LABEL_68;
                  }
                }

                else
                {
                  if ((v22 >> 1) <= 0x8BAu && (v28 - 4352) <= 0x12u)
                  {
                    v29 = 588 * v28 + 28 * v22 - 18076;
                    goto LABEL_69;
                  }

                  if ((v22 >> 3) >= 0x235u && ((v28 + 21504) >> 2) <= 0xAE8u)
                  {
                    HIDWORD(v33) = -1840706560 - 1227133513 * v28;
                    LODWORD(v33) = HIDWORD(v33);
                    if ((v33 >> 2) > 0x9249249)
                    {
                      goto LABEL_68;
                    }

                    v29 = v22 + v28 - 4519;
                    goto LABEL_69;
                  }
                }

                v30 = &unk_100012760;
                v31 = &unk_100012900;
                while (1)
                {
                  v32 = &v30[8 * ((v31 - v30) >> 4)];
                  if (*v32 <= v22)
                  {
                    if (*v32 >= v22)
                    {
                      v34 = v32[1];
                      if (v34)
                      {
                        v35 = &unk_100012908 + 4 * v34;
                        v27 = v40;
                        if (*v35 <= v28)
                        {
                          v36 = &v35[4 * HIWORD(v34) - 4];
                          if (*v36 >= v28)
                          {
                            while (1)
                            {
                              v37 = &v35[4 * ((v36 - v35) >> 3)];
                              v38 = *v37;
                              if (v38 <= v28)
                              {
                                if (v38 >= v28)
                                {
                                  v29 = v37[1];
                                  goto LABEL_70;
                                }

                                v35 = (v37 + 2);
                              }

                              else
                              {
                                v36 = v37 - 2;
                              }

                              v29 = 0;
                              if (v35 > v36)
                              {
                                goto LABEL_70;
                              }
                            }
                          }
                        }

                        v29 = 0;
LABEL_70:
                        if (v29)
                        {
                          v8 -= 2;
                          v22 = v29;
                        }

LABEL_72:
                        a1 = &v10[v27];
                        if (v22 == 9216)
                        {
                          LOWORD(v22) = 0;
                        }

                        goto LABEL_74;
                      }

LABEL_68:
                      v29 = 0;
LABEL_69:
                      v27 = v40;
                      goto LABEL_70;
                    }

                    v30 = v32 + 2;
                  }

                  else
                  {
                    v31 = v32 - 2;
                  }

                  if (v30 > v31)
                  {
                    goto LABEL_68;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (utf_extrabytes[v11 >> 3] != 3)
          {
            LODWORD(v9) = a3 + v8;
            result = 22;
            goto LABEL_93;
          }

          v14 = *a1;
          if ((v14 & 0xC0) == 0x80)
          {
            v15 = v10[2];
            if ((v15 & 0xC0) == 0x80)
            {
              v16 = v10[3];
              if ((v16 & 0xC0) == 0x80)
              {
                v17 = v16 + (((v14 << 6) + (v11 << 12) + v15) << 6) - 63512704;
                if (!(v17 >> 20))
                {
                  *v9 = (v17 >> 10) | 0xD800;
                  v9 = (v4 + v8);
                  if (v8 >= 510)
                  {
                    goto LABEL_92;
                  }

                  a1 = v10 + 4;
                  *v9 = v17 & 0x3FF | 0xDC00;
                  v18 = 4;
                  goto LABEL_31;
                }
              }
            }
          }
        }
      }

      v9 = (a3 + v8);
      if (v8 > 507)
      {
LABEL_92:
        result = 63;
        goto LABEL_93;
      }

      v24 = hexdigits[v11 >> 4];
      v25 = hexdigits[v11 & 0xF];
      *v9 = 37;
      if (v13 <= 0)
      {
        v13 = 0;
      }

      v5 += v13;
      v9[1] = v24;
      v9[2] = v25;
      v18 = 6;
LABEL_31:
      v8 += v18;
      v9 = (a3 + v8);
      v10 = a1;
      if (!v5)
      {
        goto LABEL_89;
      }
    }

    v41 = v7;
    if (!v5)
    {
      if (v11 == 32)
      {
        v5 = 0;
        LOWORD(v22) = -4056;
        goto LABEL_74;
      }

      if (v11 == 46)
      {
        v5 = 0;
        LOWORD(v22) = -4055;
        goto LABEL_74;
      }
    }

    if (v11 > 0x1F)
    {
      v26 = byte_100012370[(v11 - 32)];
      if (v26 == v11)
      {
        LOWORD(v22) = v11;
      }

      else
      {
        LOWORD(v22) = v26 | 0xF000;
      }
    }

    else
    {
      LOWORD(v22) = v11 | 0xF000;
    }

LABEL_74:
    if (sub_100001360(v22))
    {
      v7 = v41 + 1;
    }

    else
    {
      if (v41 >= 2)
      {
        sub_1000013B8((a3 + v8 + -2 * v41), v41);
      }

      v7 = 0;
    }

    *(a3 + v8) = v22;
    v8 += 2;
    v9 = (a3 + v8);
  }

  while (v5);
LABEL_89:
  if (v7 >= 2)
  {
    sub_1000013B8(&v9[-v7], v7);
  }

  result = 0;
LABEL_93:
  *a3 = (v9 - v4) >> 1;
  return result;
}

uint64_t sub_100001360(unsigned int a1)
{
  if (a1 < 0x300)
  {
    return 0;
  }

  v1 = byte_1000123E0[a1 >> 8];
  if (!byte_1000123E0[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (byte_1000123E0[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

_WORD *sub_1000013B8(_WORD *result, unsigned int a2)
{
  do
  {
    if (byte_10001375C[*result >> 8])
    {
      v2 = byte_10001375C[256 * byte_10001375C[*result >> 8] + *result];
    }

    else
    {
      v2 = 0;
    }

    if (a2 < 2)
    {
      break;
    }

    v3 = 0;
    v4 = result + 1;
    do
    {
      v5 = *v4;
      v6 = byte_10001375C[v5 >> 8];
      if (byte_10001375C[v5 >> 8])
      {
        LODWORD(v6) = byte_10001375C[256 * v6 + *v4];
      }

      if (v2 > v6)
      {
        v7 = *(v4 - 1);
        *(v4 - 1) = v5;
        *v4 = v7;
        v3 = 1;
      }

      ++v4;
      v2 = v6;
    }

    while (v4 < &result[a2]);
  }

  while (v3);
  return result;
}

uint64_t CONV_Unistr255ToUTF8(_WORD *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if (!*a1)
  {
    result = 0;
    goto LABEL_52;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = &a2[a3 - 1];
  v9 = a1 + 1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        --v4;
        if (v5 < 1)
        {
          v12 = *v9++;
          v10 = v12;
          if (v12 >= 0xC0uLL)
          {
            v13 = byte_100014C5C[v10 >> 8];
            if (byte_100014C5C[v10 >> 8])
            {
              if (v13 == 255 || ((byte_100014C5C[32 * v13 + 224 + (v10 >> 3)] >> (v10 & 7)) & 1) != 0)
              {
                v14 = v10 + 21504;
                if ((v10 + 21504) > 0x2BA4u)
                {
                  v5 = sub_100001940(v10, &v23) - 1;
                  LODWORD(v10) = v23;
                }

                else
                {
                  v15 = (v10 + 21504) % 0x1Cu;
                  LODWORD(v10) = ((28533 * (v10 + 21504)) >> 24) | 0x1100;
                  v23 = ((28533 * v14) >> 24) | 0x1100;
                  v24[0] = v14 % 0x24Cu / 0x1C + 4449;
                  if (v14 % 0x1Cu)
                  {
                    v24[1] = v15 + 4519;
                    v5 = 2;
                  }

                  else
                  {
                    v5 = 1;
                  }
                }

                v4 += v5;
                v6 = v24;
              }
            }
          }
        }

        else
        {
          v11 = *v6++;
          LODWORD(v10) = v11;
          --v5;
        }

        if (v10)
        {
          v16 = v10;
        }

        else
        {
          v16 = 9216;
        }

        if (v10 == 47)
        {
          v7 = 22;
          v16 = 95;
        }

        if (v16 > 0x7F)
        {
          break;
        }

        if (v3 >= v8)
        {
          goto LABEL_49;
        }

        *v3++ = v16;
        if (!v4)
        {
          goto LABEL_51;
        }
      }

      if (v16 > 0x7FF)
      {
        break;
      }

      if ((v3 + 1) >= v8)
      {
        goto LABEL_49;
      }

      *v3 = (v16 >> 6) | 0xC0;
      v3[1] = v16 & 0x3F | 0x80;
      v3 += 2;
      if (!v4)
      {
        goto LABEL_51;
      }
    }

    if (v16 > 0xFFFD)
    {
      break;
    }

    if (v16 >> 10 != 54 || v4 == 0)
    {
      if ((v16 & 0xFFC0) != 0xF000 || (v16 & 0x3F) >= 0x2B)
      {
        v20 = v16 >> 6;
        v21 = (v16 >> 12) | 0xFFFFFFE0;
        goto LABEL_45;
      }

      if (v3 >= v8)
      {
        goto LABEL_49;
      }

      *v3++ = byte_100016D84[v16 & 0x3F];
      if (!v4)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v18 = *v9;
      if ((v18 & 0xFC00) == 0xDC00)
      {
        if ((v3 + 3) >= v8)
        {
          goto LABEL_49;
        }

        v19 = v18 + (v16 << 10) - 56613888;
        --v4;
        ++v9;
        *v3 = (v19 >> 18) | 0xF0;
        v3[1] = (v19 >> 12) & 0x3F | 0x80;
        v3[2] = (v19 >> 6) & 0x3F | 0x80;
        v3[3] = v18 & 0x3F | 0x80;
        v3 += 4;
        if (!v4)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v20 = v16 >> 6;
        LOBYTE(v21) = -19;
LABEL_45:
        if ((v3 + 2) >= v8)
        {
LABEL_49:
          v7 = 63;
          goto LABEL_51;
        }

        *v3 = v21;
        v3[1] = v20 & 0x3F | 0x80;
        v3[2] = v16 & 0x3F | 0x80;
        v3 += 3;
        if (!v4)
        {
          goto LABEL_51;
        }
      }
    }
  }

  v7 = 22;
LABEL_51:
  result = v7;
LABEL_52:
  *v3 = 0;
  return result;
}

_WORD *CONV_Unistr255ToUpperCase(_WORD *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result + 1;
    v4 = *(a2 + 2056);
    do
    {
      v5 = *v3;
      if (v4 > v5)
      {
        *v3 = *(*(a2 + 2048) + 2 * v5);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t CONV_UnistrUTF8ToUpperCase(char *a1, _BYTE *a2, uint64_t a3)
{
  result = 22;
  if (a1 && a2)
  {
    v7 = malloc_type_malloc(0x200uLL, 0x10000407EBBDD04uLL);
    if (v7)
    {
      v8 = v7;
      v9 = strlen(a1);
      CONV_UTF8ToUnistr255(a1, v9, v8);
      v10 = *v8;
      if (*v8)
      {
        v11 = v8 + 1;
        v12 = *(a3 + 2056);
        do
        {
          v13 = *v11;
          if (v12 > v13)
          {
            *v11 = *(*(a3 + 2048) + 2 * v13);
          }

          ++v11;
          --v10;
        }

        while (v10);
      }

      CONV_Unistr255ToUTF8(v8, a2, 766);
      free(v8);
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

char *CONV_DuplicateName(char *result, char *__s)
{
  *result = 0;
  if (__s)
  {
    v3 = result;
    v4 = strlen(__s) + 1;
    result = malloc_type_malloc(v4, 0xBA38E62AuLL);
    *v3 = result;
    if (result)
    {

      return strlcpy(result, __s, v4);
    }
  }

  return result;
}

uint64_t sub_100001940(unsigned int a1, _WORD *a2)
{
  v2 = a2;
  if ((a1 + 1201) < 0x571u)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v3 = &unk_100014F9C;
  v4 = &unk_100015EC0;
  while (1)
  {
    v5 = &v3[2 * ((v4 - v3) >> 3)];
    v6 = *v5;
    if (v6 <= a1)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_7:
    if (v3 > v4)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a1)
  {
    v3 = v5 + 2;
    goto LABEL_7;
  }

  v7 = v5[1];
LABEL_9:
  v8 = (v7 >> 12) & 7;
  v14 = v7 & 0xFFF;
  v9 = &unk_100015EC4 + 2 * (v7 & 0xFFF);
  v10 = &v14;
  if (v8 != 1)
  {
    v10 = (&unk_100015EC4 + 2 * (v7 & 0xFFF));
  }

  if ((v7 & 0x8000) == 0)
  {
    LODWORD(result) = 0;
    goto LABEL_17;
  }

  result = sub_100001940(*v10, a2);
  if (result)
  {
    --v8;
    v12 = &v14;
    if (v8)
    {
      v12 = v9;
    }

    v10 = (v12 + 1);
    v2 += result;
LABEL_17:
    for (result = (result + v8); v8; --v8)
    {
      v13 = *v10++;
      *v2++ = v13;
    }
  }

  return result;
}

BOOL memory_pressure_recent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0xFFFFFC030];
  if (debug)
  {
    v9 = MEMORY[0xFFFFFC030] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v11[0] = ctx;
    v11[1] = *&qword_100026DF8;
    v12 = qword_100026E08;
    fsck_printf(v11, "vm.memory_pressure = %u\n", a3, a4, a5, a6, a7, a8, MEMORY[0xFFFFFC030]);
  }

  return v8 != 0;
}

uint64_t memory_pressure_current()
{
  v11 = 0;
  v12 = 4;
  v6 = sysctlbyname("vm.page_free_wanted", &v11, &v12, 0, 0);
  result = 0;
  if (!v6)
  {
    result = v11;
    if (debug)
    {
      v8 = v11 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9[0] = ctx;
      v9[1] = *&qword_100026DF8;
      v10 = qword_100026E08;
      fsck_printf(v9, "vm.page_free_wanted = %u\n", v0, v1, v2, v3, v4, v5, v11);
      return v11;
    }
  }

  return result;
}

uint64_t fsck_exfat_cache_init()
{
  v13 = 0;
  v14 = 8;
  if (sysctlbyname("hw.pagesize", &v13, &v14, 0, 0))
  {
    sub_10000FB48();
  }

  dword_100024C78 = v13;
  active_list = 0;
  qword_100026C98 = &active_list;
  aged_list = 0;
  qword_100026CA8 = &aged_list;
  free_list = 0;
  qword_100026CB8 = &free_list;
  dword_100024C7C = 0xA00000u / dword_100026CFC;
  result = malloc_type_calloc(0xA00000u / dword_100026CFC, 0x30uLL, 0x10A00400425171AuLL);
  qword_100024C80 = result;
  if (!result)
  {
    *(&v11[0] + 1) = *(&ctx + 1);
    v11[1] = *&qword_100026DF8;
    v12 = qword_100026E08;
    result = fsck_err(v11, 1, "Could not allocate cache buffers", v1, v2, v3, v4, v5, ctx);
  }

  v6 = dword_100024C7C;
  if (dword_100024C7C)
  {
    v7 = free_list;
    v8 = qword_100024C80;
    do
    {
      *(v8 + 16) = v7;
      v9 = v8 + 16;
      if (v7)
      {
        v10 = (v7 + 24);
      }

      else
      {
        v10 = &qword_100026CB8;
      }

      *v10 = v9;
      *(v8 + 24) = &free_list;
      v7 = v8;
      v8 += 48;
      --v6;
    }

    while (v6);
    free_list = v9 - 16;
  }

  dword_100024C88 = 0;
  return result;
}

void fsck_exfat_cache_dispose()
{
  v0 = dword_100024C7C;
  v1 = qword_100024C80;
  if (dword_100024C7C)
  {
    v2 = (qword_100024C80 + 8);
    do
    {
      if (*v2)
      {
        free(*v2);
        *v2 = 0;
      }

      v2 += 6;
      --v0;
    }

    while (v0);
  }

  free(v1);
}

uint64_t fsck_exfat_cache_write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (debug)
  {
    v9 = *a1;
    v10 = *(a1 + 32);
    v16[0] = ctx;
    v16[1] = *&qword_100026DF8;
    v17 = qword_100026E08;
    fsck_printf(v16, "Write     offset = 0x%012llx  length = 0x%06x\n", a3, a4, a5, a6, a7, a8, v9);
  }

  v11 = pwrite(g, *(a1 + 8), *(a1 + 32), *a1);
  v12 = *(a1 + 32);
  if (v11 == v12)
  {
    return 0;
  }

  v14 = *a1;
  v15 = __error();
  warn("Couldn't write %zu bytes at offset %lld, errno %d", v12, v14, *v15);
  return *__error();
}

uint64_t fsck_exfat_cache_evict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    sub_10000FC14();
  }

  if (!*(a2 + 8))
  {
    sub_10000FBE8();
  }

  if (!*a2)
  {
    sub_10000FBBC();
  }

  if (!*(a2 + 32))
  {
    sub_10000FB90();
  }

  if (*(a2 + 36))
  {
    sub_10000FB64();
  }

  if (*(a2 + 40) != 1 || (result = fsck_exfat_cache_write(a2, a2, a3, a4, a5, a6, a7, a8), !result))
  {
    if (a1)
    {
      v11 = *(a2 + 16);
      v12 = *(a2 + 24);
      v13 = (a1 + 8);
      if (v11)
      {
        v13 = (v11 + 24);
      }

      *v13 = v12;
      *v12 = v11;
    }

    free(*(a2 + 8));
    result = 0;
    *a2 = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 16) = 0u;
    v14 = free_list;
    *(a2 + 16) = free_list;
    v15 = (v14 + 24);
    v16 = v14 == 0;
    free_list = a2;
    v17 = &unk_100026CB8;
    if (!v16)
    {
      v17 = v15;
    }

    *v17 = a2 + 16;
    *(a2 + 24) = &free_list;
  }

  return result;
}

uint64_t fsck_exfat_cache_recycle(unsigned int a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  if (!a1)
  {
    result = free_list;
    if (free_list)
    {
      goto LABEL_52;
    }
  }

  v14 = **(qword_100026CA8 + 8);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      if (!*(v14 + 8))
      {
        sub_10000FC98();
      }

      if (!*v14)
      {
        sub_10000FC6C();
      }

      v17 = *(v14 + 32);
      if (!v17)
      {
        sub_10000FC40();
      }

      v18 = **(*(v14 + 24) + 8);
      if (!*(v14 + 36))
      {
        v19 = fsck_exfat_cache_evict(&aged_list, v14, a3, a4, a5, a6, a7, a8);
        if (v19)
        {
LABEL_38:
          v24 = v19;
          result = 0;
          goto LABEL_39;
        }

        ++v15;
        v16 += v17;
        if (v16 >= a1)
        {
          goto LABEL_29;
        }
      }

      v14 = v18;
      if (!v18)
      {
        goto LABEL_21;
      }
    }
  }

  v16 = 0;
  v15 = 0;
LABEL_21:
  v20 = **(qword_100026C98 + 8);
  if (v20)
  {
    do
    {
      if (!*(v20 + 8))
      {
        sub_10000FD1C();
      }

      if (!*v20)
      {
        sub_10000FCF0();
      }

      v21 = *(v20 + 32);
      if (!v21)
      {
        sub_10000FCC4();
      }

      v22 = **(*(v20 + 24) + 8);
      if (!*(v20 + 36))
      {
        v19 = fsck_exfat_cache_evict(&active_list, v20, a3, a4, a5, a6, a7, a8);
        if (v19)
        {
          goto LABEL_38;
        }

        ++v15;
        v16 += v21;
        if (v16 >= a1)
        {
          break;
        }
      }

      v20 = v22;
    }

    while (v22);
  }

LABEL_29:
  if (v16)
  {
    v23 = ++dword_100024C88;
    if (debug)
    {
      v25[0] = ctx;
      v25[1] = *&qword_100026DF8;
      v26 = qword_100026E08;
      fsck_printf(v25, "--- [%d] Evicted %d buffers (%u bytes; %u pages)\n", a3, a4, a5, a6, a7, a8, v23);
    }
  }

  if (*a2)
  {
    return 0;
  }

  result = free_list;
  if (free_list)
  {
LABEL_52:
    if (*(result + 8))
    {
      sub_10000FD48();
    }

    if (*result)
    {
      sub_10000FD74();
    }

    if (*(result + 32))
    {
      sub_10000FDA0();
    }

    if (*(result + 36))
    {
      sub_10000FDCC();
    }

    v11 = *(result + 16);
    v12 = *(result + 24);
    v13 = (v11 + 24);
    if (!v11)
    {
      v13 = &unk_100026CB8;
    }

    *v13 = v12;
    *v12 = v11;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10000FDF8();
    }

    result = 0;
    v24 = 12;
LABEL_39:
    *a2 = v24;
  }

  return result;
}

uint64_t fsck_exfat_cache_find(uint64_t a1, uint64_t a2)
{
  result = active_list;
  if (active_list)
  {
    v4 = &qword_100026C98;
    while (*result != a1)
    {
      result = *(result + 16);
      if (!result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = aged_list;
    if (!aged_list)
    {
      return result;
    }

    v4 = &qword_100026CA8;
    while (*result != a1)
    {
      result = *(result + 16);
      if (!result)
      {
        return result;
      }
    }
  }

  v5 = *(result + 16);
  v6 = *(result + 24);
  if (v5)
  {
    v4 = (v5 + 24);
  }

  *v4 = v6;
  *v6 = v5;
  if (*(result + 32) != a2)
  {
    sub_10000FE80();
  }

  if (!*(result + 8))
  {
    sub_10000FEAC();
  }

  return result;
}

uint64_t fsck_exfat_cache_get(uint64_t a1, size_t a2, int *a3)
{
  v6 = fsck_exfat_cache_find(a1, a2);
  if (v6)
  {
    v13 = v6;
LABEL_3:
    v14 = active_list;
    *(v13 + 16) = active_list;
    v15 = (v14 + 24);
    v16 = v14 == 0;
    active_list = v13;
    v17 = &qword_100026C98;
    if (!v16)
    {
      v17 = v15;
    }

    *v17 = v13 + 16;
    *(v13 + 24) = &active_list;
    ++*(v13 + 36);
    return v13;
  }

  v13 = fsck_exfat_cache_recycle(0, a3, v7, v8, v9, v10, v11, v12);
  if (!v13)
  {
    return v13;
  }

  v19 = malloc_type_malloc(a2, 0x2AA5381EuLL);
  *(v13 + 8) = v19;
  if (!v19)
  {
    v31 = ctx;
    v32 = *&qword_100026DF8;
    v33 = qword_100026E08;
    fsck_err(&v31, 1, "fsck_exfat_cache_get", v21, v22, v23, v24, v25, v30);
  }

  *v13 = a1;
  *(v13 + 32) = a2;
  if (debug)
  {
    v31 = ctx;
    v32 = *&qword_100026DF8;
    v33 = qword_100026E08;
    fsck_printf(&v31, "Read      offset = 0x%012llx  length = 0x%06lx\n", v20, v21, v22, v23, v24, v25, a1);
  }

  if (pread(g, *(v13 + 8), a2, a1) == a2)
  {
    if ((dword_100026CCC & 0x80000000) == 0 && pwrite(dword_100026CCC, *(v13 + 8), a2, a1) != a2 && dword_100024C8C <= 19)
    {
      ++dword_100024C8C;
      warn("Trouble shadowing offset 0x%012llx length 0x%06lx", a1, a2);
    }

    goto LABEL_3;
  }

  warn("Couldn't read %zu bytes at offset %lld", a2, a1);
  free(*(v13 + 8));
  *v13 = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 16) = 0u;
  v27 = free_list;
  *(v13 + 16) = free_list;
  v28 = (v27 + 24);
  v16 = v27 == 0;
  free_list = v13;
  v29 = &unk_100026CB8;
  if (!v16)
  {
    v29 = v28;
  }

  *v29 = v13 + 16;
  *(v13 + 24) = &free_list;
  v13 = 0;
  *a3 = *__error();
  return v13;
}

uint64_t fsck_exfat_cache_mark_dirty(uint64_t a1)
{
  if (!*(a1 + 36))
  {
    sub_10000FED8();
  }

  *(a1 + 40) = 1;
  return 0;
}

uint64_t fsck_exfat_cache_release(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 36);
  if (!v3)
  {
    sub_10000FF04();
  }

  if (a2)
  {
    *(a1 + 40) = 1;
  }

  else if (a3)
  {
    v4 = (a1 + 16);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = (v5 + 24);
    if (!v5)
    {
      v7 = &qword_100026C98;
    }

    *v7 = v6;
    *v6 = v5;
    v8 = aged_list;
    *v4 = aged_list;
    v9 = (v8 + 24);
    v10 = v8 == 0;
    aged_list = a1;
    v11 = &qword_100026CA8;
    if (!v10)
    {
      v11 = v9;
    }

    *v11 = v4;
    *(a1 + 24) = &aged_list;
  }

  *(a1 + 36) = v3 - 1;
  return 0;
}

uint64_t fsck_exfat_cache_flush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = active_list;
  if (active_list)
  {
    v9 = 0;
    do
    {
      if (*(v8 + 40) == 1)
      {
        v10 = fsck_exfat_cache_write(v8, a2, a3, a4, a5, a6, a7, a8);
        if (v9)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10 == 0;
        }

        if (v11)
        {
          v9 = v9;
        }

        else
        {
          v9 = v10;
        }
      }

      v8 = *(v8 + 16);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  for (i = aged_list; i; i = *(i + 16))
  {
    if (*(i + 40) == 1)
    {
      v13 = fsck_exfat_cache_write(i, a2, a3, a4, a5, a6, a7, a8);
      if (v9)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 == 0;
      }

      if (v14)
      {
        v9 = v9;
      }

      else
      {
        v9 = v13;
      }
    }
  }

  return v9;
}

uint64_t fsck_exfat_cache_get_cluster(unsigned int a1, int *a2)
{
  if (a1 < 2 || dword_100026D0C < a1)
  {
    sub_10000FF30();
  }

  v4 = dword_100026CFC;
  v5 = (dword_100026CF4 + dword_100026D00 * (a1 - 2)) * dword_100026CF8;

  return fsck_exfat_cache_get(v5, v4, a2);
}

uint64_t fsck_exfat_cache_evict_clusters(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = Count + 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4 - 2);
    v6 = fsck_exfat_cache_find((dword_100026CF4 + dword_100026D00 * (ValueAtIndex - 2)) * dword_100026CF8, dword_100026CFC);
    if (v6)
    {
      v13 = fsck_exfat_cache_evict(0, v6, v7, v8, v9, v10, v11, v12);
      if (v3)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 == 0;
      }

      if (v14)
      {
        v3 = v3;
      }

      else
      {
        v3 = v13;
      }
    }

    --v4;
  }

  while (v4 > 1);
  return v3;
}

uint64_t fsck_exfat_telemetry_num_files_in_dir(uint64_t result)
{
  if (qword_100026DE0)
  {
    v1 = 0;
    while (dword_100016DC0[v1] <= result)
    {
      if (++v1 == 4)
      {
        return result;
      }
    }

    ++*(qword_100026DE0 + v1 * 4 + 68);
  }

  return result;
}

uint64_t fsck_exfat_telemetry_filename_length(uint64_t result)
{
  if (qword_100026DE0)
  {
    v1 = 1;
    if (result >= 0x64)
    {
      v1 = 2;
    }

    if (result < 0x14)
    {
      v1 = 0;
    }

    ++*(qword_100026DE0 + 4 * v1 + 84);
  }

  return result;
}

xpc_object_t sub_1000026D8(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "volume_size", **(a1 + 32));
  xpc_dictionary_set_uint64(v2, "fsck_duration_ms", *(*(a1 + 32) + 8));
  xpc_dictionary_set_uint64(v2, "sector_size", *(*(a1 + 32) + 16));
  xpc_dictionary_set_uint64(v2, "cluster_size", *(*(a1 + 32) + 20));
  xpc_dictionary_set_uint64(v2, "num_files_in_volume", *(*(a1 + 32) + 24));
  xpc_dictionary_set_uint64(v2, "num_dirs_in_volume", *(*(a1 + 32) + 28));
  xpc_dictionary_set_uint64(v2, "num_files_in_trashes", *(*(a1 + 32) + 32));
  xpc_dictionary_set_uint64(v2, "num_appledouble_files", *(*(a1 + 32) + 36));
  xpc_dictionary_set_uint64(v2, "volume_space_used_percentage", *(*(a1 + 32) + 40));
  xpc_dictionary_set_uint64(v2, "num_invalid_filenames", *(*(a1 + 32) + 44));
  xpc_dictionary_set_uint64(v2, "num_duplicated_filenames", *(*(a1 + 32) + 48));
  xpc_dictionary_set_uint64(v2, "num_bitmap_bits_cleared", *(*(a1 + 32) + 52));
  xpc_dictionary_set_uint64(v2, "num_bitmap_bits_set", *(*(a1 + 32) + 56));
  xpc_dictionary_set_uint64(v2, "num_bitmap_bits_bad", *(*(a1 + 32) + 60));
  xpc_dictionary_set_uint64(v2, "num_bitmap_collisions", *(*(a1 + 32) + 64));
  xpc_dictionary_set_uint64(v2, "num_small_dirs", *(*(a1 + 32) + 68));
  xpc_dictionary_set_uint64(v2, "num_medium_dirs", *(*(a1 + 32) + 72));
  xpc_dictionary_set_uint64(v2, "num_large_dirs", *(*(a1 + 32) + 76));
  xpc_dictionary_set_uint64(v2, "num_huge_dirs", *(*(a1 + 32) + 80));
  xpc_dictionary_set_uint64(v2, "num_short_filenames", *(*(a1 + 32) + 84));
  xpc_dictionary_set_uint64(v2, "num_medium_filenames", *(*(a1 + 32) + 88));
  xpc_dictionary_set_uint64(v2, "num_long_filenames", *(*(a1 + 32) + 92));
  return v2;
}

uint64_t exfat_upcase_checksum(unsigned __int8 *a1, uint64_t a2)
{
  for (i = 0; a2; --a2)
  {
    HIDWORD(v3) = i;
    LODWORD(v3) = i;
    v4 = *a1++;
    i = (v3 >> 1) + v4;
  }

  return i;
}

uint64_t fsck_exfat_decompress_upcase(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if ((a3 >> 1) < 1)
  {
    return 421;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v5 + 1;
    v7 = *(a2 + 2 * v5);
    v8 = v7 == 0xFFFF && v6 < v3;
    if (v8)
    {
      v9 = *(a2 + 2 * v6);
      if (v9)
      {
        v10 = v4;
        do
        {
          *(a1 + 2 * v10) = v10;
          LOWORD(v9) = v9 - 1;
          ++v4;
          if (!v9)
          {
            break;
          }

          v8 = v10++ < 0xFFFF;
        }

        while (v8);
        if (v9)
        {
          return 419;
        }
      }

      v5 += 2;
    }

    else
    {
      *(a1 + 2 * v4++) = v7;
      ++v5;
    }
  }

  while (v5 < v3 && v4 < 0x10000);
  if (v4 == 0x10000)
  {
    result = 0;
  }

  else
  {
    result = 421;
  }

  if (v5 < v3)
  {
    return 419;
  }

  return result;
}

uint64_t fsck_exfat_upcase_replace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = fsck_exfat_resize_chain(&dword_100026DC4, &qword_100026DC8, default_upcase_table_size, a4, a5, a6, a7, a8);
  if (result)
  {
    goto LABEL_2;
  }

  v27 = 0;
  v28 = 0;
  if (dword_100026DC0 == -1)
  {
    result = fsck_exfat_find_unused_entry(qword_100026D80, &dword_100026DC0, &v28, &v27, v9, v10, v11, v12);
    if (result)
    {
      goto LABEL_2;
    }

    v13 = v27;
    *v27 = 0u;
    *(v13 + 16) = 0u;
    *v13 = -126;
  }

  else
  {
    result = fsck_exfat_read_dir_entry(qword_100026D80, dword_100026DC0, &v28, &v27);
    if (result)
    {
      goto LABEL_2;
    }
  }

  v14 = v27;
  *(v27 + 20) = dword_100026DC4;
  *(v14 + 24) = qword_100026DC8;
  v15 = default_upcase_table_size;
  if (default_upcase_table_size)
  {
    v16 = 0;
    v17 = &default_upcase_table;
    do
    {
      HIDWORD(v18) = v16;
      LODWORD(v18) = v16;
      v19 = *v17++;
      v16 = (v18 >> 1) + v19;
      --v15;
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  *(v14 + 4) = v16;
  result = fsck_exfat_cache_release(v28, 1, 0);
  v25 = result;
  if (!result)
  {
    v26 = dword_100026DC4;
    v20 = default_upcase_table_size;
    v21 = &default_upcase_table;
    while (1)
    {
      if (!v20)
      {
        result = 0;
        byte_100026DD4 = 1;
        return result;
      }

      v22 = v20 >= dword_100026CFC ? dword_100026CFC : v20;
      cluster = fsck_exfat_cache_get_cluster(v26, &v25);
      v28 = cluster;
      if (!cluster)
      {
        break;
      }

      v24 = buffer_data(cluster);
      memcpy(v24, v21, v22);
      result = fsck_exfat_cache_release(v28, 1, 0);
      v25 = result;
      if (!result)
      {
        v20 -= v22;
        v21 += v22;
        result = fsck_exfat_fat_get(v26, &v26);
        v25 = result;
        if (!result)
        {
          continue;
        }
      }

      goto LABEL_2;
    }

    result = v25;
  }

LABEL_2:
  HIBYTE(word_100026DD2) = 1;
  return result;
}

BOOL fsck_exfat_read_upcase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = 0;
  v9 = *(a1 + 24);
  if (v9 > 0x20000)
  {
    v34 = ctx;
    v35 = *&qword_100026DF8;
    v36 = qword_100026E08;
    fsckPrint(&v34, 419, a3, a4, a5, a6, a7, a8, v33);
  }

  v16 = malloc_type_malloc(v9, 0xD1BAED5EuLL);
  if (!v16)
  {
    v34 = ctx;
    v35 = *&qword_100026DF8;
    v36 = qword_100026E08;
    fsck_err(&v34, 1, "Cannot allocate compressed upper case transation table", v11, v12, v13, v14, v15, v33);
  }

  v38 = *(a1 + 20);
  v17 = v16;
  v18 = v9;
  while (v38 >= 2 && v38 <= dword_100026D0C)
  {
    cluster = fsck_exfat_cache_get_cluster(v38, &v37);
    if (cluster)
    {
      v21 = cluster;
      v22 = dword_100026CFC;
      v23 = buffer_data(cluster);
      if (v18 <= v22)
      {
        memcpy(v17, v23, v18);
        v18 = 0;
      }

      else
      {
        memcpy(v17, v23, dword_100026CFC);
        v18 -= dword_100026CFC;
        v17 += dword_100026CFC;
      }

      v37 = fsck_exfat_cache_release(v21, 0, 1);
      if (!v37)
      {
        v37 = fsck_exfat_fat_get(v38, &v38);
        if (!v37)
        {
          continue;
        }
      }
    }

    if (v16)
    {
      goto LABEL_17;
    }

    return 1;
  }

  if (v18)
  {
    v34 = ctx;
    v35 = *&qword_100026DF8;
    v36 = qword_100026E08;
    v25 = 422;
    goto LABEL_28;
  }

  v26 = 0;
  if (v9)
  {
    v27 = v16;
    v28 = v9;
    do
    {
      HIDWORD(v29) = v26;
      LODWORD(v29) = v26;
      v30 = *v27++;
      v26 = (v29 >> 1) + v30;
      --v28;
    }

    while (v28);
  }

  if (v26 != *(a1 + 4))
  {
    v34 = ctx;
    v35 = *&qword_100026DF8;
    v36 = qword_100026E08;
    v25 = 420;
LABEL_28:
    fsckPrint(&v34, v25, v10, v11, v12, v13, v14, v15, v33);
    if (v16)
    {
LABEL_17:
      free(v16);
    }

    return 1;
  }

  v31 = fsck_exfat_decompress_upcase(qword_100026DB0, v16, v9);
  v37 = v31;
  if (v31)
  {
    v25 = v31;
    v34 = ctx;
    v35 = *&qword_100026DF8;
    v36 = qword_100026E08;
    goto LABEL_28;
  }

  if (v9 <= 0x20000 && debug)
  {
    v32 = *(a1 + 20);
    v34 = ctx;
    v35 = *&qword_100026DF8;
    v36 = qword_100026E08;
    fsck_printf(&v34, "Found upcase table; starting cluster %u, length %llu\n", v10, v11, v12, v13, v14, v15, v32);
  }

  if (v16)
  {
    free(v16);
  }

  return v9 > 0x20000;
}

BOOL fsck_exfat_filename_exists_in_dir()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 24);
  v43 = v4;
  memset(v77, 0, sizeof(v77));
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  memset(v46, 0, 510);
  bzero(v39, 0x2000uLL);
  memset(v44, 0, 510);
  v38 = 0;
  v78.length = *(v2 + 38);
  v78.location = 0;
  CFStringGetCharacters(*(v2 + 8), v78, v44);
  v5 = *(v2 + 38);
  if (*(v2 + 38))
  {
    v6 = qword_100026DB0;
    v7 = v46;
    v8 = v44;
    do
    {
      v9 = *v8++;
      *v7++ = *(v6 + 2 * v9);
      --v5;
    }

    while (v5);
  }

  v10 = 0;
  if (v4 >= 2 && v4 <= dword_100026D0C)
  {
    v11 = 0;
    v12 = 0;
    LODWORD(v13) = 0;
    v14 = 0;
    v36 = v3;
    v37 = v2;
    while (1)
    {
      if (v14 >= *(v3 + 28))
      {
        return 0;
      }

      cluster = fsck_exfat_cache_get_cluster(v4, &v38);
      if (!cluster)
      {
        return 0;
      }

      v16 = cluster;
      v17 = v12 + buffer_length(cluster);
      v18 = buffer_data(v16);
      if (v12 < v17)
      {
        break;
      }

LABEL_45:
      v38 = fsck_exfat_cache_release(v16, 0, 0);
      if (v38)
      {
        return 0;
      }

      v2 = v37;
      if (v12 >= *(v37 + 16))
      {
        return 0;
      }

      v3 = v36;
      if (*(v36 + 39) == 1)
      {
        v4 = ++v43;
      }

      else
      {
        if (fsck_exfat_fat_get(v43, &v43))
        {
          return 0;
        }

        v4 = v43;
      }

      v10 = 0;
      if (v4 >= 2)
      {
        ++v14;
        if (v4 <= dword_100026D0C)
        {
          continue;
        }
      }

      return v10;
    }

    v19 = v18;
    v20 = *(v2 + 16);
    v21 = qword_100026DB0;
    v22 = v11;
    while (1)
    {
      if (v12 >= v20)
      {
        v11 = v22;
        goto LABEL_45;
      }

      v23 = *v19;
      v10 = *v19 != 0;
      if (!*v19)
      {
        break;
      }

      if ((v23 & 0x80) != 0)
      {
        if (v22)
        {
          v24 = (v23 & 0x40) == 0;
        }

        else
        {
          v24 = 0;
        }

        if (v24)
        {
          LODWORD(v13) = 0;
        }

        if (v23 == 133)
        {
          v25 = *(v19 + 1);
          v39[0] = *v19;
          v39[1] = v25;
          LODWORD(v13) = v19[1];
          v11 = 1;
        }

        else
        {
          v11 = v22 & (v23 << 25 >> 31);
          if ((v23 & 0x40) != 0 && v13)
          {
            v26 = *(v19 + 1);
            v27 = &v39[2 * v22];
            *v27 = *v19;
            v27[1] = v26;
            v13 = (v13 - 1);
            if (v13)
            {
              v11 = (v22 + 1);
            }

            else if (v40 == 192)
            {
              v28 = v41;
              v11 = v13;
              if (v41)
              {
                v29 = v41 / 0xFu;
                if (v41 % 0xFu)
                {
                  ++v29;
                }

                if (v29 < BYTE1(v39[0]) && v41 == *(v37 + 38))
                {
                  v30 = 0;
                  memset(v45, 0, 510);
                  memset(v77, 0, sizeof(v77));
                  v76 = 0u;
                  v75 = 0u;
                  v74 = 0u;
                  v73 = 0u;
                  v72 = 0u;
                  v71 = 0u;
                  v70 = 0u;
                  v69 = 0u;
                  v68 = 0u;
                  v67 = 0u;
                  v66 = 0u;
                  v65 = 0u;
                  v64 = 0u;
                  v63 = 0u;
                  v62 = 0u;
                  v61 = 0u;
                  v60 = 0u;
                  v59 = 0u;
                  v58 = 0u;
                  v57 = 0u;
                  v56 = 0u;
                  v55 = 0u;
                  v54 = 0u;
                  v53 = 0u;
                  v52 = 0u;
                  v51 = 0u;
                  v50 = 0u;
                  v49 = 0u;
                  v48 = 0u;
                  v47 = 0u;
                  do
                  {
                    v31 = *(&v42[2 * (v30 / 0xFu)] + v30 % 0xFu + 1);
                    if ((v31 + 4095) <= 0x28u)
                    {
                      LOWORD(v31) = sfm_to_mac[v31 - 61441];
                    }

                    *&v45[2 * v30++] = v31;
                  }

                  while (v28 != v30);
                  v32 = 0;
                  v33 = 2 * v28;
                  do
                  {
                    *(&v47 + v32) = *(v21 + 2 * *&v45[v32]);
                    v32 += 2;
                  }

                  while (v33 != v32);
                  v34 = v21;
                  if (!memcmp(v46, &v47, v33))
                  {
                    break;
                  }

                  v21 = v34;
                }

                LODWORD(v13) = 0;
                v11 = 0;
              }
            }

            else
            {
              v11 = v13;
            }
          }
        }
      }

      else
      {
        v11 = v22;
      }

      v19 += 32;
      v12 += 32;
      v22 = v11;
      if (v12 >= v17)
      {
        goto LABEL_45;
      }
    }

    fsck_exfat_cache_release(v16, 0, 0);
  }

  return v10;
}

uint64_t fsck_exfat_bitmap_init(const char *a1)
{
  byte_100026D98 = 0;
  if ((dword_100026D08 & 0x1F) != 0)
  {
    v1 = ((dword_100026D08 >> 3) & 0x1FFFFFFC) + 4;
  }

  else
  {
    v1 = (dword_100026D08 >> 3) & 0x1FFFFFFC;
  }

  dword_100026D90 = v1;
  dword_100026D94 = 0;
  if (a1 && v1 > 0x500000)
  {
    byte_100026D98 = 1;
    v3 = open(a1, 2562);
    if (v3 == -1)
    {
      v19 = *__error();
      v60 = ctx;
      v61 = *&qword_100026DF8;
      v62 = qword_100026E08;
      fsckPrint(&v60, 452, v20, v21, v22, v23, v24, v25, a1);
      v60 = ctx;
      v61 = *&qword_100026DF8;
      v62 = qword_100026E08;
      fsckPrint(&v60, 455, v26, v27, v28, v29, v30, v31, v58);
      byte_100026D98 = 0;
    }

    else
    {
      v4 = v3;
      if (ftruncate(v3, dword_100026D90) != -1)
      {
        v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200409F4E64B8uLL);
        qword_100026DA0 = v5;
        if (!v5)
        {
          v60 = ctx;
          v61 = *&qword_100026DF8;
          v62 = qword_100026E08;
          fsck_err(&v60, 1, "Could not allocate struct fsck_bitmap_cache", v6, v7, v8, v9, v10, v57);
          v5 = qword_100026DA0;
        }

        *v5 = v4;
        v11 = dword_100026CFC;
        v5[5] = dword_100026CFC;
        result = malloc_type_calloc(1uLL, v11, 0x5F28E0CDuLL);
        v18 = qword_100026DA0;
        *(qword_100026DA0 + 8) = result;
        if (!result)
        {
          v60 = ctx;
          v61 = *&qword_100026DF8;
          v62 = qword_100026E08;
          result = fsck_err(&v60, 1, "Could not allocate bitmap cache block", v13, v14, v15, v16, v17, v57);
          v18 = qword_100026DA0;
        }

        *(v18 + 16) = -1;
        return result;
      }

      v32 = *__error();
      v60 = ctx;
      v61 = *&qword_100026DF8;
      v62 = qword_100026E08;
      fsckPrint(&v60, 453, v33, v34, v35, v36, v37, v38, a1);
      v60 = ctx;
      v61 = *&qword_100026DF8;
      v62 = qword_100026E08;
      fsckPrint(&v60, 455, v39, v40, v41, v42, v43, v44, v59);
      byte_100026D98 = 0;
      if (unlink(a1) == -1)
      {
        v45 = *__error();
        v60 = ctx;
        v61 = *&qword_100026DF8;
        v62 = qword_100026E08;
        fsckPrint(&v60, 454, v46, v47, v48, v49, v50, v51, a1);
      }

      close(v4);
    }
  }

  result = malloc_type_calloc(dword_100026D90 >> 2, 4uLL, 0x100004052888210uLL);
  qword_100026D88 = result;
  if (!result)
  {
    v60 = ctx;
    v61 = *&qword_100026DF8;
    v62 = qword_100026E08;
    return fsck_err(&v60, 1, "Could not allocate memory for in-memory bitmap", v52, v53, v54, v55, v56, v57);
  }

  return result;
}

void fsck_exfat_bitmap_deinit(char *a1)
{
  if (byte_100026D98 == 1)
  {
    if (a1)
    {
      if (unlink(a1) == -1)
      {
        v2 = *__error();
        v10[0] = ctx;
        v10[1] = *&qword_100026DF8;
        v11 = qword_100026E08;
        fsckPrint(v10, 454, v3, v4, v5, v6, v7, v8, a1);
      }
    }

    close(*qword_100026DA0);
    free(*(qword_100026DA0 + 8));
    free(qword_100026DA0);
  }

  else
  {
    v9 = qword_100026D88;

    free(v9);
  }
}

uint64_t fsck_exfat_bitmap_allocate(unsigned int a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1 - 2;
  if (a1 < 2 || dword_100026D0C < a1 || (v9 = a2, __CFADD__(a2, a1)) || a2 + a1 > dword_100026D0C + 1)
  {
    sub_10000FF5C();
  }

  v11 = sub_1000039A8(a1 - 2, a2, a3, a4, a5, a6, a7, a8);
  v19 = v8 & 0x1F;
  if ((v8 & 0x1F) != 0)
  {
    v20 = -1 << v19;
    v21 = 32 - v19;
    v22 = -1 << (v19 + v9);
    if (v21 > v9)
    {
      v23 = ~v22;
    }

    else
    {
      v23 = -2;
    }

    v24 = v23 & v20;
    v25 = *v11;
    if ((*v11 & v24) != 0)
    {
      v26 = 0;
      if (!v9)
      {
LABEL_35:
        *a3 = v26;
        dword_100026D94 += v26;
        if (qword_100026DE0)
        {
          ++*(qword_100026DE0 + 64);
        }

        return 1;
      }

LABEL_31:
      v28 = 1 << v8;
      v29 = v9 + v26;
      while ((v25 & v28) == 0)
      {
        v25 |= v28;
        *v11 = v25;
        ++v26;
        v28 *= 2;
        if (!--v9)
        {
          v26 = v29;
          goto LABEL_35;
        }
      }

      goto LABEL_35;
    }

    *v11++ = v25 | v24;
    if (v9 >= v21)
    {
      v27 = v9 - v21;
    }

    else
    {
      v27 = 0;
    }

    if (v21 >= v9)
    {
      v26 = v9;
    }

    else
    {
      v26 = v21;
    }

    v8 += v26;
    if (byte_100026D98 == 1 && (*(qword_100026DA0 + 8) + *(qword_100026DA0 + 20)) == v11)
    {
      v11 = sub_1000039A8(v8, v12, v13, v14, v15, v16, v17, v18);
    }

    v9 = v27;
  }

  else
  {
    v26 = 0;
  }

  if (v9 >= 0x20)
  {
    do
    {
      v25 = *v11;
      if (*v11)
      {
        goto LABEL_31;
      }

      *v11++ = -1;
      v8 += 32;
      if (byte_100026D98 == 1 && (*(qword_100026DA0 + 8) + *(qword_100026DA0 + 20)) == v11)
      {
        v11 = sub_1000039A8(v8, v12, v13, v14, v15, v16, v17, v18);
      }

      v9 -= 32;
      v26 += 32;
    }

    while (v9 > 0x1F);
  }

  if (v9)
  {
    v25 = *v11;
    if ((*v11 & ~(-1 << v9)) != 0)
    {
      goto LABEL_31;
    }

    *v11 = v25 | ~(-1 << v9);
    v26 += v9;
  }

  if (a3)
  {
    *a3 = v26;
  }

  result = 0;
  dword_100026D94 += v26;
  return result;
}

uint64_t sub_1000039A8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (byte_100026D98 == 1)
  {
    v9 = qword_100026DA0;
    v10 = *(qword_100026DA0 + 16);
    v11 = *(qword_100026DA0 + 20);
    v12 = (a1 >> 3) / v11;
    if (v12 == v10)
    {
      v13 = v11 * v12;
    }

    else
    {
      if (v10 != -1)
      {
        if (debug)
        {
          v35 = ctx;
          v36 = *&qword_100026DF8;
          v37 = qword_100026E08;
          fsck_printf(&v35, "%s: Flushing cached block with idx %u to file", a3, a4, a5, a6, a7, a8, "fsck_exfat_bitmap_get_word");
          v9 = qword_100026DA0;
          v10 = *(qword_100026DA0 + 16);
          v11 = *(qword_100026DA0 + 20);
        }

        v15 = v11 * v10;
        if (v11 >= dword_100026D90 - v15)
        {
          v16 = (dword_100026D90 - v15);
        }

        else
        {
          v16 = v11;
        }

        if (pwrite(*v9, *(v9 + 8), v16, v15) == -1)
        {
          v17 = *__error();
          v35 = ctx;
          v36 = *&qword_100026DF8;
          v37 = qword_100026E08;
          fsck_printf(&v35, "Failed writing to bitmap cache file with error = %d. offset %u length %u.", v18, v19, v20, v21, v22, v23, v17);
        }
      }

      v24 = qword_100026DA0;
      v25 = *(qword_100026DA0 + 20);
      v26 = v25 * v12;
      if (debug)
      {
        v35 = ctx;
        v36 = *&qword_100026DF8;
        v37 = qword_100026E08;
        fsck_printf(&v35, "%s: Reading block with idx %u from file", a3, a4, a5, a6, a7, a8, "fsck_exfat_bitmap_get_word");
        v24 = qword_100026DA0;
        v25 = *(qword_100026DA0 + 20);
      }

      if (pread(*v24, *(v24 + 8), v25, v26) == -1)
      {
        v27 = *__error();
        v35 = ctx;
        v36 = *&qword_100026DF8;
        v37 = qword_100026E08;
        fsck_printf(&v35, "Failed reading from bitmap cache file with error = %d. offset %u length %u.", v28, v29, v30, v31, v32, v33, v27);
      }

      v9 = qword_100026DA0;
      *(qword_100026DA0 + 16) = v12;
      v13 = v12 * *(v9 + 20);
    }

    v8 -= 8 * v13;
    v14 = (v9 + 8);
  }

  else
  {
    v14 = &qword_100026D88;
  }

  return *v14 + 4 * (v8 >> 5);
}

uint64_t fsck_exfat_bitmap_free(unsigned int a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1 - 2;
  if (a1 < 2 || dword_100026D0C < a1 || (v9 = a2, __CFADD__(a2, a1)) || a2 + a1 > dword_100026D0C + 1)
  {
    sub_10000FF88();
  }

  v11 = sub_1000039A8(a1 - 2, a2, a3, a4, a5, a6, a7, a8);
  v19 = v8 & 0x1F;
  if ((v8 & 0x1F) != 0)
  {
    v20 = -1 << v19;
    v21 = 32 - v19;
    v22 = -1 << (v19 + v9);
    if (v21 > v9)
    {
      v23 = ~v22;
    }

    else
    {
      v23 = -2;
    }

    v24 = v23 & v20;
    v25 = *v11;
    if ((v24 & ~*v11) != 0)
    {
      v27 = 0;
      if (!v9)
      {
LABEL_35:
        v28 = 1;
        goto LABEL_37;
      }

LABEL_31:
      v29 = 1 << v8;
      v30 = v9 + v27;
      while ((v25 & v29) != 0)
      {
        v25 &= ~v29;
        *v11 = v25;
        ++v27;
        v29 *= 2;
        if (!--v9)
        {
          v28 = 1;
          v27 = v30;
          goto LABEL_37;
        }
      }

      goto LABEL_35;
    }

    *v11++ = v25 & ~v24;
    if (v9 >= v21)
    {
      v26 = v9 - v21;
    }

    else
    {
      v26 = 0;
    }

    if (v21 >= v9)
    {
      v27 = v9;
    }

    else
    {
      v27 = v21;
    }

    v8 += v27;
    if (byte_100026D98 == 1 && (*(qword_100026DA0 + 8) + *(qword_100026DA0 + 20)) == v11)
    {
      v11 = sub_1000039A8(v8, v12, v13, v14, v15, v16, v17, v18);
    }

    v9 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v9 >= 0x20)
  {
    do
    {
      v25 = *v11;
      if (*v11 != -1)
      {
        goto LABEL_31;
      }

      *v11++ = 0;
      v8 += 32;
      if (byte_100026D98 == 1 && (*(qword_100026DA0 + 8) + *(qword_100026DA0 + 20)) == v11)
      {
        v11 = sub_1000039A8(v8, v12, v13, v14, v15, v16, v17, v18);
      }

      v9 -= 32;
      v27 += 32;
    }

    while (v9 > 0x1F);
  }

  if (!v9)
  {
    v28 = 0;
    goto LABEL_37;
  }

  v25 = *v11;
  if ((*v11 | (-1 << v9)) != 0xFFFFFFFF)
  {
    goto LABEL_31;
  }

  v28 = 0;
  *v11 = v25 & (-1 << v9);
  v27 += v9;
LABEL_37:
  *a3 = v27;
  dword_100026D94 -= v27;
  return v28;
}

uint64_t fsck_exfat_bitmap_find_free(unsigned int a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1000039A8(0, a2, a3, a4, a5, a6, a7, a8);
  v18 = dword_100026D08;
  if (!dword_100026D08)
  {
    goto LABEL_20;
  }

  v19 = 0;
  do
  {
    if (*v10 != -1)
    {
      break;
    }

    v19 += 32;
    ++v10;
    if (byte_100026D98 == 1 && (*(qword_100026DA0 + 8) + *(qword_100026DA0 + 20)) == v10)
    {
      v10 = sub_1000039A8(v19, v11, v12, v13, v14, v15, v16, v17);
      v18 = dword_100026D08;
    }
  }

  while (v19 < v18);
  if (v19 < v18)
  {
    v20 = 1;
    while ((*v10 & v20) != 0)
    {
      ++v19;
      v20 *= 2;
      if (v19 >= v18 || !v20)
      {
        if (v19 >= v18)
        {
          goto LABEL_20;
        }

        break;
      }
    }

    *a2 = v19 + 2;
    v21 = dword_100026D08;
    if (v19 >= dword_100026D08 || a1 == 0)
    {
      return 0;
    }

    else
    {
      v24 = 1;
      while ((*v10 & v20) == 0)
      {
        v20 *= 2;
        if (!v20)
        {
          ++v10;
          if (byte_100026D98 == 1 && (*(qword_100026DA0 + 8) + *(qword_100026DA0 + 20)) == v10)
          {
            v10 = sub_1000039A8(v19 + v24, v11, v12, v13, v14, v15, v16, v17);
            v21 = dword_100026D08;
          }

          v20 = 1;
        }

        v25 = v24 + 1;
        if (v19 + v24 < v21 && v24++ < a1)
        {
          continue;
        }

        return v25 - 1;
      }

      return v24 - 1;
    }
  }

  else
  {
LABEL_20:
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t fsck_exfat_bitmap_verify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v108 = 0;
  v109 = 0;
  v106 = 0;
  v8 = &g;
  if (byte_100026DD5 == 1)
  {
    v103 = ctx;
    v104 = *&qword_100026DF8;
    v9 = qword_100026E08;
LABEL_3:
    v105 = v9;
    fsckPrint(&v103, 432, a3, a4, a5, a6, a7, a8, v93);
    return 0;
  }

  v11 = dword_100026D08 >> 3;
  if ((dword_100026D08 & 7) != 0)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 % dword_100026CFC)
  {
    v13 = v12 / dword_100026CFC + 1;
  }

  else
  {
    v13 = v12 / dword_100026CFC;
  }

  if (dword_100026DB8 == -1)
  {
    v103 = ctx;
    v104 = *&qword_100026DF8;
    v105 = qword_100026E08;
    fsckPrint(&v103, 415, a3, a4, a5, a6, a7, a8, v93);
    v103 = ctx;
    v104 = *&qword_100026DF8;
    v105 = qword_100026E08;
    if (fsckAskPrompt(&v103, "Create? ", v23, v24, v25, v26, v27, v28, v95) != 1)
    {
      v103 = ctx;
      v104 = *&qword_100026DF8;
      v105 = qword_100026E08;
      fsckPrint(&v103, 432, v29, v30, v31, v32, v33, v34, v93);
      result = 0;
      LOBYTE(word_100026DD2) = 1;
      return result;
    }

    unused_entry = fsck_exfat_extend_chain(&dword_100026D14, &qword_100026D18, v12, v30, v31, v32, v33, v34);
    v106 = unused_entry;
    if (!unused_entry)
    {
      unused_entry = fsck_exfat_find_unused_entry(qword_100026D80, &dword_100026DB8, &v109, &v108, a5, a6, a7, a8);
      v106 = unused_entry;
    }

    v36 = v108;
    if (unused_entry)
    {
      v37 = 1;
    }

    else
    {
      v37 = v108 == 0;
    }

    if (!v37 && v109 != 0)
    {
      *v108 = 0u;
      *(v36 + 16) = 0u;
      *v108 = -127;
      v40 = v108;
      v39 = v109;
      *(v108 + 20) = dword_100026D14;
      *(v40 + 24) = qword_100026D18;
      unused_entry = fsck_exfat_cache_release(v39, 1, 0);
      v106 = unused_entry;
    }

    v14 = 1;
    if (unused_entry)
    {
      v103 = ctx;
      v104 = *&qword_100026DF8;
      v105 = qword_100026E08;
      fsckPrint(&v103, 432, a3, a4, a5, a6, a7, a8, v93);
      result = 0;
      HIBYTE(word_100026DD2) = 1;
      return result;
    }
  }

  else
  {
    v14 = -1;
  }

  if (qword_100026D18 < v12)
  {
    v103 = ctx;
    v104 = *&qword_100026DF8;
    v105 = qword_100026E08;
    fsckPrint(&v103, 409, a3, a4, a5, a6, a7, a8, "Active bitmap");
    v103 = ctx;
    v104 = *&qword_100026DF8;
    v105 = qword_100026E08;
    if (fsckAskPrompt(&v103, "Extend? ", v15, v16, v17, v18, v19, v20, v94) != 1)
    {
      LOBYTE(word_100026DD2) = 1;
      v103 = ctx;
      v104 = *&qword_100026DF8;
      v9 = qword_100026E08;
      goto LABEL_3;
    }

    if (fsck_exfat_extend_chain(&dword_100026D14, &qword_100026D18, v12, a4, a5, a6, a7, a8) || fsck_exfat_read_dir_entry(qword_100026D80, dword_100026DB8, &v109, &v108) || (v22 = v108, v21 = v109, *(v108 + 20) = dword_100026D14, *(v22 + 24) = qword_100026D18, (v106 = fsck_exfat_cache_release(v21, 1, 0)) != 0))
    {
      result = 0;
      HIBYTE(word_100026DD2) = 1;
      return result;
    }

    byte_100026DD4 = 1;
  }

  v41 = sub_1000039A8(0, a2, a3, a4, a5, a6, a7, a8);
  v107 = dword_100026D14;
  if (v13)
  {
    v48 = v41;
    v98 = v14;
    v102 = 0;
    v49 = 0;
    v50 = 0;
    v100 = dword_100026D08 >> 3;
    v101 = 0;
    v96 = v13;
    v97 = v12 - 1;
    while (1)
    {
      v51 = v107;
      if (debug)
      {
        v103 = ctx;
        v104 = *&qword_100026DF8;
        v105 = qword_100026E08;
        fsck_printf(&v103, "Checking bitmap cluster %u\n", v42, v43, v44, v45, v46, v47, v107);
        v51 = v107;
      }

      cluster = fsck_exfat_cache_get_cluster(v51, &v106);
      v109 = cluster;
      if (!cluster)
      {
        goto LABEL_86;
      }

      v59 = buffer_data(cluster);
      v60 = v8[13];
      v61 = v100 >= v60 ? v60 : v100;
      if (v61)
      {
        v62 = v61;
        v63 = memcmp(v48, v59, v61) == 0;
      }

      else
      {
        v62 = 0;
        v63 = 1;
      }

      v99 = v62;
      if (v62 < v60)
      {
        v64 = v8[16] & 7;
        if (v64)
        {
          v65 = v48[v97 % v60];
          v66 = 8 - v64;
          v67 = v59[v97 % v60];
          if (((v67 ^ v65) << v66))
          {
            break;
          }
        }
      }

      if (!v63)
      {
        LODWORD(v103) = 0;
        v68 = v62;
        if (v62)
        {
          goto LABEL_55;
        }

        v75 = 0;
        v71 = 0;
LABEL_69:
        if (memcmp(v48, v59, v71))
        {
          if (v98 == -1)
          {
            v103 = ctx;
            v104 = *&qword_100026DF8;
            v105 = qword_100026E08;
            fsckPrint(&v103, 433, v61, v54, v55, v56, v57, v58, v93);
          }

          v76 = v75 ^ 1;
          if (!debug)
          {
            v76 = 1;
          }

          if ((v76 & 1) == 0)
          {
            v77 = 0;
            do
            {
              if (v48[v77] != v59[v77])
              {
                v78 = v77 + (v102 * v8[13]);
                v103 = ctx;
                v104 = *&qword_100026DF8;
                v105 = qword_100026E08;
                fsck_printf(&v103, "%08X: %02X should be %02X\n", v61, v54, v55, v56, v57, v58, v78);
              }

              ++v77;
            }

            while (v71 != v77);
          }

          v79 = v98;
          if (v98 == -1)
          {
            v103 = ctx;
            v104 = *&qword_100026DF8;
            v105 = qword_100026E08;
            v79 = fsckAskPrompt(&v103, "Repair? ", v61, v54, v55, v56, v57, v58, v93);
          }

          v98 = v79;
          if (v79 == 1)
          {
            memcpy(v59, v48, v71);
            fsck_exfat_cache_mark_dirty(v109);
            v98 = 1;
            *(v8 + 268) = 1;
          }

          else
          {
            *(v8 + 266) = 1;
          }
        }
      }

      v48 = sub_1000039A8((8 * v102 + 8) * v8[13], v53, v61, v54, v55, v56, v57, v58);
      v106 = fsck_exfat_cache_release(v109, 0, 0);
      if (!v106)
      {
        v106 = fsck_exfat_fat_get(v107, &v107);
        if (!v106)
        {
          v100 -= v99;
          if (++v102 < v13)
          {
            continue;
          }
        }
      }

      goto LABEL_86;
    }

    v68 = v62 + 1;
    v48[v97 % v60] = v67 & (-256 >> v66) | v65;
    LODWORD(v103) = 0;
LABEL_55:
    v69 = v8;
    v70 = 0;
    v71 = v68;
    do
    {
      v72 = v59[v70];
      if (v48[v70] != v72)
      {
        for (i = 0; i != 8; ++i)
        {
          v74 = 1 << i;
          if ((v72 & (1 << i)) != 0 && (v74 & v48[v70]) == 0)
          {
            LODWORD(v103) = i + 8 * (v70 + v102 * v69[13]) + 2;
            v106 = fsck_exfat_fat_get(v103, &v103);
            if (v106)
            {
              fsck_exfat_cache_release(v109, 0, 0);
              return v106;
            }

            v50 = (v50 + 1);
            if (v103 == -9)
            {
              v48[v70] |= v74;
              v101 = (v101 + 1);
            }
          }

          v72 = v59[v70];
          if ((v74 & v72) == 0)
          {
            v49 = ((v48[v70] >> i) & 1) + v49;
          }
        }
      }

      ++v70;
    }

    while (v70 != v71);
    v75 = 1;
    v8 = v69;
    v13 = v96;
    goto LABEL_69;
  }

  v50 = 0;
  v101 = 0;
  v49 = 0;
LABEL_86:
  v80 = *(v8 + 35);
  if (v80)
  {
    v80[13] = v49;
    v80[14] = v50;
    v80[15] = v101;
    v80[10] = (100 * v8[51]) / (8 * *(v8 + 10));
  }

  if (debug)
  {
    v103 = ctx;
    v104 = *&qword_100026DF8;
    v105 = qword_100026E08;
    fsck_printf(&v103, "%u clusters were marked used, but not referenced\n", v42, v43, v44, v45, v46, v47, v50);
    v103 = ctx;
    v104 = *&qword_100026DF8;
    v105 = qword_100026E08;
    fsck_printf(&v103, "%u clusters were marked used and CLUST_BAD\n", v81, v82, v83, v84, v85, v86, v101);
    v103 = ctx;
    v104 = *&qword_100026DF8;
    v105 = qword_100026E08;
    fsck_printf(&v103, "%u clusters were marked free, but referenced\n", v87, v88, v89, v90, v91, v92, v49);
  }

  return v106;
}

void fsck_exfat_fat_init()
{
  qword_100026D20 = dword_100026CF8 * dword_100026CF0;
  unk_100026D28 = dword_100026D04 * dword_100026CF8;
  dword_100026DA8 = dword_100026CFC;
  dword_100026DAC = dword_100026CFC >> 2;
}

uint64_t fsck_exfat_fat_get(unsigned int a1, _DWORD *a2)
{
  if (a1 < 2 || dword_100026D0C < a1)
  {
    sub_10000FFB4();
  }

  v10 = 0;
  v4 = dword_100026DA8 * (a1 / dword_100026DAC);
  if (v4 + dword_100026DA8 <= unk_100026D28)
  {
    v5 = dword_100026DA8;
  }

  else
  {
    v5 = unk_100026D28 - v4;
  }

  v6 = fsck_exfat_cache_get(qword_100026D20 + v4, v5, &v10);
  if (!v6)
  {
    return v10;
  }

  v7 = v6;
  v8 = 4 * (a1 % dword_100026DAC);
  *a2 = *(buffer_data(v6) + v8);
  return fsck_exfat_cache_release(v7, 0, 0);
}

uint64_t fsck_exfat_fat_set(unsigned int a1, int a2, _DWORD *a3)
{
  if (a1 < 2 || dword_100026D0C < a1)
  {
    sub_10000FFE0();
  }

  v12 = 0;
  v6 = dword_100026DA8 * (a1 / dword_100026DAC);
  if (v6 + dword_100026DA8 <= unk_100026D28)
  {
    v7 = dword_100026DA8;
  }

  else
  {
    v7 = unk_100026D28 - v6;
  }

  v8 = fsck_exfat_cache_get(qword_100026D20 + v6, v7, &v12);
  if (!v8)
  {
    return v12;
  }

  v9 = v8;
  v10 = 4 * (a1 % dword_100026DAC);
  if (a3)
  {
    *a3 = *(buffer_data(v8) + v10);
  }

  *(v10 + buffer_data(v9)) = a2;
  return fsck_exfat_cache_release(v9, 1, 0);
}

uint64_t fsck_exfat_fat_alloc_chain(unsigned int a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v19 = 0;
  if (a1 < 2 || dword_100026D0C < a1)
  {
    sub_10001000C();
  }

  for (i = 0; ; ++i)
  {
    v11 = v20;
    v12 = dword_100026D0C;
    if (v20 < 2 || v20 > dword_100026D0C)
    {
      break;
    }

    if (fsck_exfat_bitmap_allocate(v20, 1, &v19, a4, a5, a6, a7, a8))
    {
      v14 = 1;
    }

    else
    {
      v14 = v19 == 0;
    }

    if (v14)
    {
      v12 = dword_100026D0C;
      goto LABEL_17;
    }

    result = fsck_exfat_fat_get(v11, &v20);
    if (result)
    {
      return result;
    }
  }

  if (v20 == -1)
  {
    result = 0;
    goto LABEL_24;
  }

LABEL_17:
  v16 = v11 < 2 || v11 > v12;
  v17[0] = ctx;
  v17[1] = *&qword_100026DF8;
  v18 = qword_100026E08;
  if (v16)
  {
    fsckPrint(v17, 403, a3, a4, a5, a6, a7, a8, a3);
  }

  else
  {
    fsckPrint(v17, 404, a3, a4, a5, a6, a7, a8, a3);
  }

  result = 1;
LABEL_24:
  *a2 = i;
  return result;
}

uint64_t fsck_exfat_truncate_chain(unsigned int a1, unsigned int a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v23 = 0;
  v24 = a1;
  v5 = a2 - 1;
  if (a2 == 1)
  {
LABEL_6:
    result = fsck_exfat_fat_set(a1, -1, &v24);
    v12 = a3 >= a2;
    v13 = a3 - a2;
    if (v13 != 0 && v12)
    {
      do
      {
        if (fsck_exfat_bitmap_free(v24, 1, &v23, v7, v8, v9, v10, v11))
        {
          v20 = 0;
        }

        else
        {
          v20 = v23 == 1;
        }

        if (!v20)
        {
          *(&v21[0] + 1) = *(&ctx + 1);
          v21[1] = *&qword_100026DF8;
          v22 = qword_100026E08;
          fsckPrint(v21, 448, v14, v15, v16, v17, v18, v19, ctx);
          return 206;
        }

        result = fsck_exfat_fat_set(v24, 0, &v24);
        if (result)
        {
          return result;
        }

        --v13;
      }

      while (v13);
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = fsck_exfat_fat_get(v24, &v24);
      if (result)
      {
        break;
      }

      if (!--v5)
      {
        a1 = v24;
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t fsck_exfat_extend_chain(unsigned int *a1, unint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = 0;
  v8 = *a2;
  if (*a2 >= a3)
  {
    sub_100010038();
  }

  v10 = a2;
  v43 = 0;
  if (v8 % dword_100026CFC)
  {
    v12 = v8 / dword_100026CFC + 1;
  }

  else
  {
    v12 = v8 / dword_100026CFC;
  }

  if (a3 % dword_100026CFC)
  {
    v13 = a3 / dword_100026CFC + 1;
  }

  else
  {
    v13 = a3 / dword_100026CFC;
  }

  v14 = *a1;
  v44 = *a1;
  if (v12 < 2)
  {
LABEL_13:
    if (v12 >= v13)
    {
      v36 = v12;
LABEL_28:
      result = fsck_exfat_fat_set(v14, -1, 0);
      v42 = result;
      v16 = v36;
      if (!result)
      {
        *v10 = a3;
        return result;
      }
    }

    else
    {
      v16 = v12;
LABEL_15:
      v17 = v10;
      free = fsck_exfat_bitmap_find_free(v13 - v16, &v43, a3, a4, a5, a6, a7, a8);
      if (free)
      {
        v25 = free;
        v39 = free + v16;
        v26 = v43;
        while (1)
        {
          cluster = fsck_exfat_cache_get_cluster(v26, &v42);
          if (!cluster)
          {
            break;
          }

          v28 = cluster;
          v29 = buffer_data(cluster);
          bzero(v29, dword_100026CFC);
          v42 = fsck_exfat_cache_release(v28, 1, 0);
          if (v42)
          {
            break;
          }

          v42 = fsck_exfat_bitmap_allocate(v43, 1, 0, v30, v31, v32, v33, v34);
          if (v42)
          {
            break;
          }

          v35 = v43;
          if (v14)
          {
            v42 = fsck_exfat_fat_set(v14, v43, 0);
            if (v42)
            {
              break;
            }

            v14 = v43;
          }

          else
          {
            *a1 = v43;
            v14 = v35;
          }

          v26 = v14 + 1;
          v43 = v14 + 1;
          ++v16;
          if (!--v25)
          {
            v16 = v39;
            v10 = v17;
            v36 = v39;
            if (v39 < v13)
            {
              goto LABEL_15;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
        v40[0] = ctx;
        v40[1] = *&qword_100026DF8;
        v41 = qword_100026E08;
        fsckPrint(v40, 447, v19, v20, v21, v22, v23, v24, v38);
        v42 = 207;
      }
    }

    if (v16 > v12)
    {
      fsck_exfat_truncate_chain(*a1, v12, v16);
    }
  }

  else
  {
    v15 = v12;
    while (1)
    {
      v42 = fsck_exfat_fat_get(v44, &v44);
      if (v42)
      {
        break;
      }

      if (--v15 <= 1)
      {
        v14 = v44;
        goto LABEL_13;
      }
    }
  }

  if (!v12)
  {
    *a1 = 0;
  }

  return v42;
}

uint64_t fsck_exfat_resize_chain(unsigned int *a1, unint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  if (*a2 >= a3)
  {
    if (*a2 > a3)
    {
      if (v10 % dword_100026CFC)
      {
        v12 = v10 / dword_100026CFC + 1;
      }

      else
      {
        v12 = v10 / dword_100026CFC;
      }

      if (a3 % dword_100026CFC)
      {
        v13 = a3 / dword_100026CFC + 1;
      }

      else
      {
        v13 = a3 / dword_100026CFC;
      }

      if (v13 >= v12 || (result = fsck_exfat_truncate_chain(*a1, v13, v12), !result))
      {
        result = 0;
        *a2 = a3;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return fsck_exfat_extend_chain(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

UInt8 *CFStringCopyCStringUTF8(const __CFString *a1)
{
  maxBufLen = 0;
  v5.length = CFStringGetLength(a1);
  v5.location = 0;
  CFStringGetBytes(a1, v5, 0x8000100u, 0, 0, 0, 0x7FFFFFFFFFFFFFFFLL, &maxBufLen);
  v2 = malloc_type_malloc(maxBufLen + 1, 0x5AA65CF5uLL);
  if (v2)
  {
    v6.length = CFStringGetLength(a1);
    v6.location = 0;
    CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, v2, maxBufLen, &maxBufLen);
    v2[maxBufLen] = 0;
  }

  return v2;
}

BOOL fsckAskContinue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100026DD8)
  {
    return 1;
  }

  v14 = v8;
  v15 = v9;
  v11 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v11;
  v13 = *(a1 + 32);
  return fsckAskPrompt(v12, "CONTINUE? ", a3, a4, a5, a6, a7, a8, *&v12[0]) == 1;
}

uint64_t fsckAskPrompt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*a1)
  {
    return (*a1)(*(a1 + 32), a2, &a9);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t exfat_boot_checksum(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = 0;
    v4 = 11 * a2;
    if ((11 * a2) <= 1)
    {
      v4 = 1;
    }

    do
    {
      if ((v3 - 106) > 6 || ((1 << (v3 - 106)) & 0x43) == 0)
      {
        HIDWORD(v6) = v2;
        LODWORD(v6) = v2;
        v2 = (v6 >> 1) + *(a1 + v3);
      }

      ++v3;
    }

    while (v4 != v3);
  }

  return v2;
}

uint64_t exfat_bad_boot_checksum(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    v4 = 11 * a2;
    if ((11 * a2) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 11 * a2;
    }

    do
    {
      if ((v3 - 106) > 6 || ((1 << (v3 - 106)) & 0x43) == 0)
      {
        HIDWORD(v7) = v2;
        LODWORD(v7) = v2;
        v2 = (v7 >> 1) + *(a1 + v3);
      }

      ++v3;
    }

    while (v5 != v3);
  }

  else
  {
    v4 = 0;
    v2 = 0;
  }

  for (i = (a1 + v4); i < a1 + 12 * a2; ++i)
  {
    v9 = *i;
    if (v9 != v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t exfat_update_boot_checksum(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    v4 = 11 * a2;
    if ((11 * a2) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 11 * a2;
    }

    do
    {
      if ((v3 - 106) > 6 || ((1 << (v3 - 106)) & 0x43) == 0)
      {
        HIDWORD(v7) = v2;
        LODWORD(v7) = v2;
        v2 = (v7 >> 1) + *(result + v3);
      }

      ++v3;
    }

    while (v5 != v3);
  }

  else
  {
    v4 = 0;
    v2 = 0;
  }

  if (v4 < 12 * a2)
  {
    v8 = 0;
    v9 = v4 + result;
    v10 = 12 * a2 + result;
    if (v4 + result + 4 > v10)
    {
      v10 = v4 + result + 4;
    }

    v11 = (v10 + ~v4 - result) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = (v9 + 8);
    do
    {
      v15 = vdupq_n_s64(v8);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_100016EC0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v2;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v2;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_100016EB0)))).i32[1])
      {
        *v14 = v2;
        v14[1] = v2;
      }

      v8 += 4;
      v14 += 4;
    }

    while (v13 != v8);
  }

  return result;
}

uint64_t fsck_exfat_name_hash(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 35);
  if (*(a1 + 35))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a1 + 66;
    do
    {
      v8 = *(v7 + ((((v3 * 0x8888888888888889) >> 64) >> 2) & 0x3FFFFFFFFFFFFFFELL));
      if (v8 < 0x20u || (v8 - 34 <= 0x3A ? (v9 = ((1 << (v8 - 34)) & 0x400000035002101) == 0) : (v9 = 1), !v9 || v8 == 124))
      {
        v4 = 1;
      }

      v7 += 2;
      v10 = *(qword_100026DB0 + 2 * v8);
      v11 = ((v5 >> 1) | (v5 << 15)) + v10;
      v5 = ((v11 >> 1) | (v11 << 15)) + (v10 >> 8);
      ++v6;
      ++v3;
    }

    while (v2 != v6);
  }

  else
  {
    LOWORD(v5) = 0;
    v4 = 0;
  }

  if (a2)
  {
    *a2 = v4 & 1;
  }

  return v5;
}

uint64_t exfat_checksum_file_set(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    if ((v2 & 0x7FFFFFFFFFFFFFFELL) != 2)
    {
      v1 = ((v1 >> 1) | (v1 << 15)) + *(a1 + v2);
    }

    ++v2;
  }

  while (32 * *(a1 + 1) + 32 != v2);
  return v1;
}

uint64_t read_boot_region(int a1)
{
  v2 = (12 * dword_100026CF8);
  qword_100026CE0 = v2;
  if (a1)
  {
    v3 = (12 * dword_100026CF8);
  }

  else
  {
    v3 = 0;
  }

  if (qword_100026CD8)
  {
    free(qword_100026CD8);
    v2 = qword_100026CE0;
  }

  v4 = malloc_type_malloc(v2, 0xB8DAF189uLL);
  qword_100026CD8 = v4;
  if (!v4)
  {
    warn("Could not allocate space for boot region");
    return 12;
  }

  v5 = pread(g, v4, qword_100026CE0, v3);
  if (v5 != qword_100026CE0)
  {
    warnx("Could not read boot region");
    return *__error();
  }

  if ((dword_100026CCC & 0x80000000) == 0 && pwrite(dword_100026CCC, qword_100026CD8, v5, v3) != qword_100026CE0)
  {
    warn("Trouble writing shadow boot region");
  }

  v6 = qword_100026CD8;
  qword_100026CD0 = qword_100026CD8;
  if (*qword_100026CD8 != 0x54414658459076EBLL || *(qword_100026CD8 + 3) != 0x2020205441465845)
  {
    if (debug)
    {
      warnx("Invalid jump or signature");
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(qword_100026CD8 + 104) & 0xFF00) != 0x100)
  {
    if (debug)
    {
      v23 = *(qword_100026CD8 + 104);
      warnx("Invalid version (%04X)");
    }

    return 0xFFFFFFFFLL;
  }

  v8 = *(qword_100026CD8 + 108);
  if ((v8 - 13) <= 0xFFFFFFFB)
  {
    if (debug)
    {
      v22 = *(qword_100026CD8 + 108);
      warnx("Invalid bytes per sector shift (%d)");
    }

    return 0xFFFFFFFFLL;
  }

  v9 = dword_100026CF8;
  if (dword_100026CF8 == (1 << v8))
  {
    if (exfat_bad_boot_checksum(qword_100026CD8, dword_100026CF8))
    {
      if (debug)
      {
        warnx("Invalid boot region checksum");
      }

      return 0xFFFFFFFFLL;
    }

    v11 = *(v6 + 109);
    if (v11 > 0x10 || v11 + v8 >= 0x1A)
    {
      if (debug)
      {
        v24 = *(v6 + 109);
        warnx("Invalid sectors per cluster shift (%d)");
      }

      return 0xFFFFFFFFLL;
    }

    v12 = 1 << v11;
    v13 = v9 << v11;
    dword_100026CFC = v13;
    dword_100026D00 = v12;
    if (qword_100026DE0)
    {
      *(qword_100026DE0 + 20) = v13;
    }

    if (v13 < 0x2000001)
    {
      v14 = qword_100026D30;
      if (!qword_100026D30)
      {
        memset(&v26, 0, sizeof(v26));
        if (fstat(g, &v26) < 0)
        {
          if (debug)
          {
            warnx("Unable to stat after ioctl failure");
          }

          return 0xFFFFFFFFLL;
        }

        if ((v26.st_mode & 0x80000000) == 0)
        {
          if (debug)
          {
            warnx("ioctl failed to get blockCount and not regular file, giving up");
          }

          return 0xFFFFFFFFLL;
        }

        v9 = dword_100026CF8;
        v14 = v26.st_size / dword_100026CF8;
        qword_100026D30 = v14;
        v6 = qword_100026CD0;
      }

      v15 = *(v6 + 72);
      qword_100026CE8 = v15;
      if (v15 > v14)
      {
        if (debug)
        {
          warnx("File system sector count (%llu) greater than device sector count (%llu)");
        }

        return 0xFFFFFFFFLL;
      }

      if (qword_100026DE0)
      {
        *qword_100026DE0 = v15 * v9;
      }

      dword_100026CF0 = *(v6 + 80);
      if (v14 <= dword_100026CF0)
      {
        if (debug)
        {
          warnx("Invalid FAT offset (%u)");
        }

        return 0xFFFFFFFFLL;
      }

      v16 = *(v6 + 110);
      if (v16 - 3 <= 0xFFFFFFFD)
      {
        if (debug)
        {
          v25 = *(v6 + 110);
          warnx("Invalid number of FATs (%d)");
        }

        return 0xFFFFFFFFLL;
      }

      v17 = *(v6 + 106) & 1;
      dword_100026D38 = v17;
      if (v16 == 1 && v17)
      {
        if (debug)
        {
          warnx("Alternate FAT is active, but there is only one FAT");
        }

        return 0xFFFFFFFFLL;
      }

      dword_100026D04 = *(v6 + 84);
      v18 = dword_100026CF0 + dword_100026D04 * v16;
      if (v18 > v15)
      {
        if (debug)
        {
          warnx("Invalid FAT offset (%u), number of FATs (%d), or sectors per FAT (%u)");
        }

        return 0xFFFFFFFFLL;
      }

      dword_100026CF4 = *(v6 + 88);
      if (v18 > dword_100026CF4 || qword_100026CE8 < dword_100026CF4)
      {
        if (debug)
        {
          warnx("Invalid clusters offset (%u)");
        }

        return 0xFFFFFFFFLL;
      }

      v19 = *(v6 + 92);
      dword_100026D08 = v19;
      if (dword_100026CF4 + dword_100026D00 * v19 > qword_100026CE8)
      {
        if (debug)
        {
          warnx("Invalid clusters offset (%u) or number of clusters (%u)");
        }

        return 0xFFFFFFFFLL;
      }

      v20 = v19 + 1;
      v21 = *(v6 + 96);
      dword_100026D0C = v20;
      dword_100026D10 = v21;
      if (v21 < 2 || v21 > v20)
      {
        if (debug)
        {
          warnx("Invalid root cluster number (%u)");
        }

        return 0xFFFFFFFFLL;
      }

      return 0;
    }

    else
    {
      if (debug)
      {
        warnx("FSOPS_ReadBootSector: Cluster size not supported: %u\n", v13);
      }

      return 45;
    }
  }

  else
  {
    warnx("Device block size (%lu) differs from file system block size (%lu)", dword_100026CF8, 1 << v8);
    return 204;
  }
}

uint64_t compare_boot_region(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = ctx;
  v35 = *&qword_100026DF8;
  v36 = qword_100026E08;
  if (a1)
  {
    fsckPrint(&v34, 209, a3, a4, a5, a6, a7, a8, v31);
    v9 = qword_100026CE0;
    v10 = qword_100026CE0;
  }

  else
  {
    fsckPrint(&v34, 208, a3, a4, a5, a6, a7, a8, v31);
    v10 = 0;
    v9 = qword_100026CE0;
  }

  v11 = malloc_type_malloc(v9, 0x99663C9AuLL);
  if (!v11)
  {
    warn("Could not allocate space to compare boot region");
    return 12;
  }

  v12 = v11;
  v13 = pread(g, v11, qword_100026CE0, v10);
  if (v13 != qword_100026CE0)
  {
    warnx("Could not read boot region for comparison");
    free(v12);
    return *__error();
  }

  v14 = qword_100026CD8;
  if (a1)
  {
    v12[106] = *(qword_100026CD8 + 106);
    v12[107] = v14[107];
    v12[112] = v14[112];
    if (memcmp(v12, v14, v13))
    {
      v34 = ctx;
      v35 = *&qword_100026DF8;
      v36 = qword_100026E08;
      v21 = 305;
      goto LABEL_11;
    }
  }

  else if (memcmp(v12, qword_100026CD8, v13))
  {
    v34 = ctx;
    v35 = *&qword_100026DF8;
    v36 = qword_100026E08;
    v21 = 304;
LABEL_11:
    fsckPrint(&v34, v21, v15, v16, v17, v18, v19, v20, v32);
    v34 = ctx;
    v35 = *&qword_100026DF8;
    v36 = qword_100026E08;
    if (fsckAskPrompt(&v34, "Update? ", v22, v23, v24, v25, v26, v27, v33) == 1)
    {
      if (pwrite(g, qword_100026CD8, qword_100026CE0, v10) == qword_100026CE0)
      {
        v28 = 0;
        byte_100026DD4 = 1;
      }

      else
      {
        v30 = "alternate";
        if (!a1)
        {
          v30 = "main";
        }

        warn("Cannot write %s boot region", v30);
        HIBYTE(word_100026DD2) = 1;
        v28 = *__error();
      }
    }

    else
    {
      v28 = 0;
      LOBYTE(word_100026DD2) = 1;
    }

    goto LABEL_16;
  }

  v28 = 0;
LABEL_16:
  free(v12);
  return v28;
}

uint64_t fsckPrint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 8))
  {
    return (*(a1 + 8))(*(a1 + 32), a2, &a9);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t fsck_exfat_iter_dir_entries(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v38 = *(a1 + 24);
  if ((a2 & 0x1F) != 0)
  {
    sub_100010064();
  }

  v5 = a2 + 32 * a3;
  if (!v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v37 = 0;
  do
  {
    if (!(v9 % dword_100026CFC))
    {
      if (v11)
      {
        result = fsck_exfat_cache_release(v11, v7 & 1, 0);
        v37 = result;
        if (result)
        {
          goto LABEL_20;
        }

        if (*(a1 + 39) == 1)
        {
          v19 = ++v38;
        }

        else
        {
          v37 = fsck_exfat_fat_get(v38, &v38);
          v19 = v38;
          if (v37)
          {
            v34 = ctx;
            v35 = *&qword_100026DF8;
            v36 = qword_100026E08;
            fsckPrint(&v34, 451, v20, v21, v22, v23, v24, v25, v38);
            return v37;
          }
        }
      }

      else
      {
        v19 = v38;
      }

      if (v19 < 2 || v19 > dword_100026D0C)
      {
        sub_100010090();
      }

      cluster = fsck_exfat_cache_get_cluster(v19, &v37);
      if (!cluster)
      {
        v34 = ctx;
        v35 = *&qword_100026DF8;
        v36 = qword_100026E08;
        fsckPrint(&v34, 449, v27, v28, v29, v30, v31, v32, v38);
        return v37;
      }

      v11 = cluster;
      v10 = buffer_data(cluster);
      v7 = 0;
    }

    if (v9 >= a2)
    {
      v7 |= (*(a4 + 16))(a4, v8, v10);
      v8 = (v8 + 1);
    }

    v9 += 32;
    v10 += 32;
  }

  while (v9 < v5);
  if (!v11)
  {
    return 0;
  }

  result = fsck_exfat_cache_release(v11, v7 & 1, 0);
  v37 = result;
  if (result)
  {
LABEL_20:
    v34 = ctx;
    v35 = *&qword_100026DF8;
    v36 = qword_100026E08;
    fsckPrint(&v34, 450, v13, v14, v15, v16, v17, v18, result);
    return v37;
  }

  return result;
}

BOOL sub_100005B5C(id a1, int a2, exfat_direntry *a3)
{
  v3 = a3->var0 & 0x7F;
  if (!v3)
  {
    v3 = 5;
  }

  a3->var0 = v3;
  return 1;
}

uint64_t fsck_exfat_write_dir_entries(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100005BE4;
  v5[3] = &unk_10001C5C0;
  v5[4] = a4;
  return fsck_exfat_iter_dir_entries(a1, a2, a3, v5);
}

uint64_t sub_100005BE4(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = (*(a1 + 32) + 32 * a2);
  v4 = v3[1];
  *a3 = *v3;
  a3[1] = v4;
  if (!*a3)
  {
    *a3 = 5;
  }

  return 1;
}

uint64_t fsck_exfat_read_dir_entries(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100005C7C;
  v5[3] = &unk_10001C5E0;
  v5[4] = a4;
  return fsck_exfat_iter_dir_entries(a1, a2, a3, v5);
}

uint64_t sub_100005C7C(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = a3[1];
  v4 = (*(a1 + 32) + 32 * a2);
  *v4 = *a3;
  v4[1] = v3;
  return 0;
}

uint64_t fsck_exfat_find_unused_entry(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  v12 = dword_100026CFC;
  v13 = dword_100026CFC >> 5;
  v15 = (a1 + 24);
  v14 = *(a1 + 24);
  v24 = 0;
  v25 = v14;
  v16 = dword_100026CFC & 0xFFFFFFE0;
  while (1)
  {
    if (v25 < 2 || v25 > dword_100026D0C)
    {
      v26 = v11;
      result = fsck_exfat_extend_chain(v15, &v26, dword_100026CFC + v11, a4, a5, a6, a7, a8);
      v24 = result;
      if (!result)
      {
        ++*(a1 + 28);
        return fsck_exfat_read_dir_entry(a1, v11, a3, a4);
      }

      return result;
    }

    cluster = fsck_exfat_cache_get_cluster(v25, &v24);
    if (!cluster)
    {
      return v24;
    }

    v19 = cluster;
    v20 = buffer_data(cluster);
    if (v12 >= 0x20)
    {
      break;
    }

LABEL_11:
    result = fsck_exfat_cache_release(v19, 0, 0);
    v24 = result;
    if (!result)
    {
      result = fsck_exfat_fat_get(v25, &v25);
      v24 = result;
      if (!result)
      {
        continue;
      }
    }

    return result;
  }

  v21 = v20;
  v11 += v16;
  v22 = v13;
  while (*v21 < 0)
  {
    v21 += 32;
    if (!--v22)
    {
      goto LABEL_11;
    }
  }

  result = 0;
  *a3 = v19;
  *a4 = v21;
  return result;
}

uint64_t fsck_exfat_read_dir_entry(uint64_t a1, unsigned int a2, uint64_t *a3, void *a4)
{
  if ((a2 & 0x1F) != 0)
  {
    sub_1000100BC();
  }

  v8 = *(a1 + 24);
  v37 = 0;
  v38 = v8;
  cluster = fsck_exfat_cache_get_cluster(v8, &v37);
  if (cluster)
  {
    if (dword_100026CFC <= a2)
    {
      v16 = 0;
      do
      {
        v17 = fsck_exfat_cache_release(cluster, 0, 0);
        v37 = v17;
        if (v17)
        {
          v34 = ctx;
          v35 = *&qword_100026DF8;
          v36 = qword_100026E08;
          fsckPrint(&v34, 450, v18, v19, v20, v21, v22, v23, v17);
          return v37;
        }

        if (*(a1 + 39) == 1)
        {
          v24 = ++v38;
        }

        else
        {
          v37 = fsck_exfat_fat_get(v38, &v38);
          v24 = v38;
          if (v37)
          {
            v34 = ctx;
            v35 = *&qword_100026DF8;
            v36 = qword_100026E08;
            fsckPrint(&v34, 451, v25, v26, v27, v28, v29, v30, v38);
            return v37;
          }
        }

        if (v24 < 2 || v24 > dword_100026D0C)
        {
          sub_1000100E8();
        }

        cluster = fsck_exfat_cache_get_cluster(v24, &v37);
        if (!cluster)
        {
          v34 = ctx;
          v35 = *&qword_100026DF8;
          v36 = qword_100026E08;
          v33 = v38;
          goto LABEL_15;
        }

        v16 += dword_100026CFC;
      }

      while (dword_100026CFC + v16 <= a2);
    }

    *a3 = cluster;
    v31 = buffer_data(cluster);
    result = 0;
    *a4 = v31 + a2 % dword_100026CFC;
  }

  else
  {
    v34 = ctx;
    v35 = *&qword_100026DF8;
    v36 = qword_100026E08;
    v33 = v8;
LABEL_15:
    fsckPrint(&v34, 449, v10, v11, v12, v13, v14, v15, v33);
    return v37;
  }

  return result;
}

uint64_t fsck_exfat_check_allocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    sub_10001016C();
  }

  v99 = 0;
  v10 = *(a1 + 16);
  v12 = v10 == 1 || v10 > dword_100026D0C;
  if (v12)
  {
    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    fsckPrint(&v96, 401, a3, a4, a5, a6, a7, a8, a2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) &= ~2u;
    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    if (fsckAskPrompt(&v96, "Truncate? ", v13, v14, v15, v16, v17, v18, v87) != 1)
    {
      goto LABEL_82;
    }

    v10 = *(a1 + 16);
  }

  v19 = *a1;
  if (*a1)
  {
    if (v10)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  if (v10)
  {
    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    fsckPrint(&v96, 408, a3, a4, a5, a6, a7, a8, a2);
    *(a1 + 16) = 0;
    *(a1 + 24) &= ~2u;
    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    if (fsckAskPrompt(&v96, "Truncate? ", v26, v27, v28, v29, v30, v31, v89) != 1)
    {
      goto LABEL_82;
    }

    v19 = *a1;
    if (!*a1)
    {
LABEL_20:
      v12 = 1;
      goto LABEL_22;
    }

    v12 = 1;
    if (*(a1 + 16))
    {
      goto LABEL_22;
    }

LABEL_13:
    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    fsckPrint(&v96, 401, a3, a4, a5, a6, a7, a8, a2);
    *(a1 + 20) = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) &= ~2u;
    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    if (fsckAskPrompt(&v96, "Truncate? ", v20, v21, v22, v23, v24, v25, v88) != 1)
    {
      goto LABEL_82;
    }

    v19 = *a1;
    goto LABEL_20;
  }

  v19 = 0;
LABEL_22:
  v99 = 0;
  v32 = v19 / dword_100026CFC;
  if (v19 % dword_100026CFC)
  {
    v33 = (v32 + 1);
  }

  else
  {
    v33 = v32;
  }

  if (v19 > dword_100026CFC * v33)
  {
    if (debug)
    {
      warnx("dataLength (%llu) overflows 32 bits of clusters", v19);
    }

    v33 = 0xFFFFFFFFLL;
  }

  v34 = *(a1 + 16);
  if (!v34)
  {
    goto LABEL_66;
  }

  if ((*(a1 + 24) & 2) == 0)
  {
    v35 = fsck_exfat_fat_alloc_chain(v34, &v99, a2, a4, a5, a6, a7, a8);
    v36 = v99;
    *(a1 + 20) = v99;
    if (!v36)
    {
      *(a1 + 16) = 0;
    }

    if (v35)
    {
      if (v36 < v33)
      {
        v96 = ctx;
        v97 = *&qword_100026DF8;
        v98 = qword_100026E08;
        fsckPrint(&v96, 406, a3, a4, a5, a6, a7, a8, a2);
        v43 = dword_100026CFC * v99;
        *a1 = v43;
        if (*(a1 + 8) > v43)
        {
          *(a1 + 8) = v43;
        }

        v96 = ctx;
        v97 = *&qword_100026DF8;
        v98 = qword_100026E08;
        if (fsckAskPrompt(&v96, "Truncate? ", v37, v38, v39, v40, v41, v42, v90) != 1 || fsck_exfat_truncate_chain(*(a1 + 16), v99, v99))
        {
          goto LABEL_82;
        }

        v12 = 1;
        v36 = v99;
      }

      if (v36 >= v33)
      {
        v96 = ctx;
        v97 = *&qword_100026DF8;
        v98 = qword_100026E08;
        v44 = 405;
LABEL_63:
        fsckPrint(&v96, v44, a3, a4, a5, a6, a7, a8, v86);
        v96 = ctx;
        v97 = *&qword_100026DF8;
        v98 = qword_100026E08;
        if (fsckAskPrompt(&v96, "Truncate? ", v72, v73, v74, v75, v76, v77, v94) != 1 || fsck_exfat_truncate_chain(*(a1 + 16), v33, v99))
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (v36 < v33)
      {
        v96 = ctx;
        v97 = *&qword_100026DF8;
        v98 = qword_100026E08;
        fsckPrint(&v96, 406, a3, a4, a5, a6, a7, a8, a2);
        v71 = dword_100026CFC * v99;
        *a1 = v71;
        if (*(a1 + 8) > v71)
        {
          *(a1 + 8) = v71;
        }

        v96 = ctx;
        v97 = *&qword_100026DF8;
        v98 = qword_100026E08;
        if (fsckAskPrompt(&v96, "Truncate? ", v65, v66, v67, v68, v69, v70, v93) != 1)
        {
          goto LABEL_82;
        }

        v12 = 1;
        v36 = v99;
      }

      if (v36 > v33)
      {
        v96 = ctx;
        v97 = *&qword_100026DF8;
        v98 = qword_100026E08;
        v86 = a2;
        v44 = 407;
        goto LABEL_63;
      }
    }

LABEL_66:
    v53 = 0;
    goto LABEL_67;
  }

  if (v34 == 1 || v34 > dword_100026D0C)
  {
    sub_100010114();
  }

  if (v34 + v33 - 1 <= dword_100026D0C)
  {
    v53 = 0;
  }

  else
  {
    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    fsckPrint(&v96, 403, a3, a4, a5, a6, a7, a8, a2);
    v33 = (dword_100026D0C - *(a1 + 16) + 1);
    v51 = (v33 * dword_100026CFC);
    *a1 = v51;
    *(a1 + 20) = v33;
    if (*(a1 + 8) > v51)
    {
      *(a1 + 8) = v51;
    }

    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    v52 = fsckAskPrompt(&v96, "Truncate? ", v45, v46, v47, v48, v49, v50, v91);
    v53 = v52 != 1;
    if (v52 == 1)
    {
      v12 = 1;
    }

    LODWORD(v34) = *(a1 + 16);
  }

  v54 = fsck_exfat_bitmap_allocate(v34, v33, &v99, a4, a5, a6, a7, a8);
  v55 = v99;
  *(a1 + 20) = v99;
  if (v54)
  {
    v56 = *(a1 + 16) + v55;
    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    fsckPrint(&v96, 404, a3, a4, a5, a6, a7, a8, a2);
    v63 = v99;
    v64 = dword_100026CFC * v99;
    *a1 = v64;
    if (*(a1 + 8) > v64)
    {
      *(a1 + 8) = v64;
      if (v63)
      {
LABEL_54:
        if (v53)
        {
          goto LABEL_82;
        }

LABEL_80:
        v96 = ctx;
        v97 = *&qword_100026DF8;
        v98 = qword_100026E08;
        if (fsckAskPrompt(&v96, "Truncate? ", v57, v58, v59, v60, v61, v62, v92) == 1)
        {
LABEL_81:
          v53 = 0;
          v12 = 1;
          goto LABEL_67;
        }

LABEL_82:
        LOBYTE(word_100026DD2) = 1;
        return 0xFFFFFFFFLL;
      }
    }

    else if (v63)
    {
      goto LABEL_54;
    }

    *(a1 + 16) = 0;
    if (v53)
    {
      goto LABEL_82;
    }

    goto LABEL_80;
  }

LABEL_67:
  if (*(a1 + 8) > *a1)
  {
    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    fsckPrint(&v96, 410, a3, a4, a5, a6, a7, a8, a2);
    *(a1 + 8) = *a1;
    if (v53)
    {
      goto LABEL_82;
    }

    v96 = ctx;
    v97 = *&qword_100026DF8;
    v98 = qword_100026E08;
    if (fsckAskPrompt(&v96, "Truncate? ", v78, v79, v80, v81, v82, v83, v95) != 1)
    {
      goto LABEL_82;
    }

    goto LABEL_73;
  }

  if (v53 && v12)
  {
    sub_100010140();
  }

  if (v12)
  {
LABEL_73:
    v84 = 1;
    goto LABEL_75;
  }

  v84 = 0;
LABEL_75:
  if (v53)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v84;
  }
}

uint64_t fsck_exfat_scan_root(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = dword_100026CFC;
  *&dword_100026DB8 = -1;
  dword_100026DC0 = -1;
  v98 = 0u;
  v99 = 0u;
  v10 = *(a1 + 24);
  v96 = 0;
  v97 = v10;
  v11 = v10 < 2 || v10 > dword_100026D0C;
  v12 = &unk_100026000;
  if (!v11)
  {
    v14 = 0;
    v15 = 0;
    v16 = dword_100026CFC >> 5;
    v94 = dword_100026CFC;
    while (1)
    {
      if (v14 >= *(v8 + 28))
      {
        goto LABEL_92;
      }

      cluster = fsck_exfat_cache_get_cluster(v10, &v96);
      if (!cluster)
      {
        goto LABEL_92;
      }

      v18 = cluster;
      v95 = v14;
      v19 = buffer_data(cluster);
      if (v9 >= 0x20)
      {
        break;
      }

LABEL_9:
      v96 = fsck_exfat_cache_release(v18, 0, 0);
      if (!v96)
      {
        v96 = fsck_exfat_fat_get(v97, &v97);
        if (!v96)
        {
          v10 = v97;
          if (v97 >= 2)
          {
            v14 = v95 + 1;
            if (v97 <= dword_100026D0C)
            {
              continue;
            }
          }
        }
      }

      goto LABEL_92;
    }

    v26 = v19;
    v27 = 0;
    while (1)
    {
      v28 = *v26;
      if (v28 <= 0x81)
      {
        if (v28 == 129)
        {
          v31 = v26[1];
          if (v31)
          {
            v32 = "Alternate Bitmap";
          }

          else
          {
            v32 = "Main Bitmap";
          }

          LODWORD(v99) = *(v26 + 5);
          *&v98 = *(v26 + 3);
          *(&v98 + 1) = v98;
          BYTE8(v99) = 1;
          if (v31)
          {
            if (*(qword_100026CD0 + 110) <= 1u)
            {
              v100 = ctx;
              v101 = *&qword_100026DF8;
              v102 = qword_100026E08;
              v33 = 436;
              goto LABEL_59;
            }

            if (dword_100026DBC != -1)
            {
              v100 = ctx;
              v101 = *&qword_100026DF8;
              v102 = qword_100026E08;
              v33 = 414;
LABEL_59:
              fsckPrint(&v100, v33, v20, v21, v22, v23, v24, v25, v88);
              v100 = ctx;
              v101 = *&qword_100026DF8;
              v102 = qword_100026E08;
              if (fsckAskPrompt(&v100, "Delete? ", v58, v59, v60, v61, v62, v63, v91) == 1)
              {
                *v26 &= ~0x80u;
LABEL_61:
                fsck_exfat_cache_mark_dirty(v18);
                byte_100026DD4 = 1;
                if (!a2)
                {
                  goto LABEL_84;
                }

                goto LABEL_83;
              }

LABEL_63:
              LOBYTE(word_100026DD2) = 1;
              if (!a2)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            }

            dword_100026DBC = v15;
          }

          else
          {
            if (v12[878] != -1)
            {
              v100 = ctx;
              v101 = *&qword_100026DF8;
              v102 = qword_100026E08;
              v33 = 413;
              goto LABEL_59;
            }

            v12[878] = v15;
          }

          v64 = fsck_exfat_check_allocation(&v98, v32, v20, v21, v22, v23, v24, v25);
          v96 = v64;
          if (v64 == -1)
          {
            byte_100026DD5 = 1;
          }

          else if (v64 == 1)
          {
            *(v26 + 5) = v99;
            *(v26 + 3) = v98;
            *&v100 = _NSConcreteStackBlock;
            *(&v100 + 1) = 0x40000000;
            *&v101 = sub_100005BE4;
            *(&v101 + 1) = &unk_10001C5C0;
            v102 = v26;
            v96 = fsck_exfat_iter_dir_entries(v8, v15, 1, &v100);
            if (v96)
            {
              HIBYTE(word_100026DD2) = 1;
            }

            else
            {
              byte_100026DD4 = 1;
            }
          }

          if (dword_100026D38 == (v26[1] & 1))
          {
            dword_100026D14 = v99;
            qword_100026D18 = v98;
            if (debug)
            {
              v100 = ctx;
              v101 = *&qword_100026DF8;
              v102 = qword_100026E08;
              fsck_printf(&v100, "Found active bitmap; first cluster %u, length %llu\n", v20, v21, v22, v23, v24, v25, v99);
            }
          }
        }

        else if (!*v26)
        {
          v96 = fsck_exfat_cache_release(v18, 0, 0);
          break;
        }
      }

      else
      {
        if (v28 == 130)
        {
          v34 = *(v26 + 5);
          LODWORD(v99) = v34;
          v35 = *(v26 + 3);
          *&v98 = v35;
          *(&v98 + 1) = v35;
          BYTE8(v99) = 1;
          if (dword_100026DC0 != -1)
          {
            v100 = ctx;
            v101 = *&qword_100026DF8;
            v102 = qword_100026E08;
            fsckPrint(&v100, 418, v20, v21, v22, v23, v24, v25, v88);
            v100 = ctx;
            v101 = *&qword_100026DF8;
            v102 = qword_100026E08;
            if (fsckAskPrompt(&v100, "Delete? ", v36, v37, v38, v39, v40, v41, v89) == 1)
            {
              *v26 &= ~0x80u;
              fsck_exfat_cache_mark_dirty(v18);
              byte_100026DD4 = 1;
            }

            else
            {
              LOBYTE(word_100026DD2) = 1;
            }

            goto LABEL_84;
          }

          dword_100026DC4 = v34;
          qword_100026DC8 = v35;
          v42 = fsck_exfat_check_allocation(&v98, "Upcase", v20, v21, v22, v23, v24, v25);
          v96 = v42;
          if (v42)
          {
            byte_100026DD6 = 1;
            if (v42 != 1)
            {
              goto LABEL_76;
            }

            v43 = v99;
            *(v26 + 5) = v99;
            v44 = v8;
            v45 = v98;
            *(v26 + 3) = v98;
            *&v100 = _NSConcreteStackBlock;
            *(&v100 + 1) = 0x40000000;
            *&v101 = sub_100005BE4;
            *(&v101 + 1) = &unk_10001C5C0;
            v102 = v26;
            v46 = v44;
            v96 = fsck_exfat_iter_dir_entries(v44, v15, 1, &v100);
            if (v96)
            {
              HIBYTE(word_100026DD2) = 1;
              dword_100026DC4 = v43;
              qword_100026DC8 = v45;
              v12 = &unk_100026000;
              v8 = v46;
              v9 = v94;
              goto LABEL_76;
            }

            byte_100026DD4 = 1;
            dword_100026DC4 = v43;
            qword_100026DC8 = v45;
            v12 = &unk_100026000;
            v8 = v46;
            v9 = v94;
          }

          if ((byte_100026DD6 & 1) == 0)
          {
            v100 = ctx;
            v101 = *&qword_100026DF8;
            v102 = qword_100026E08;
            fsckPrint(&v100, 204, v20, v21, v22, v23, v24, v25, v88);
            if (fsck_exfat_read_upcase(v26, v65, v66, v67, v68, v69, v70, v71))
            {
              byte_100026DD6 = 1;
            }
          }

LABEL_76:
          dword_100026DC0 = v15;
          if (!a2)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        }

        if (v28 == 131)
        {
          v29 = v26[1];
          if (v26[1])
          {
            if (v29 > 0xB)
            {
              v100 = ctx;
              v101 = *&qword_100026DF8;
              v102 = qword_100026E08;
              v30 = 434;
              goto LABEL_54;
            }

            v47 = v26[1];
            v48 = 2;
            do
            {
              v49 = *&v26[v48];
              if (v49 - 34 <= 0x3A && ((1 << (v49 - 34)) & 0x400000035002101) != 0)
              {
                goto LABEL_53;
              }

              if (v49 == 124 || v49 <= 0x1F)
              {
                goto LABEL_53;
              }

              v48 += 2;
              --v47;
            }

            while (v47);
            if (v49 == 46)
            {
LABEL_53:
              v100 = ctx;
              v101 = *&qword_100026DF8;
              v102 = qword_100026E08;
              v30 = 435;
              goto LABEL_54;
            }

            v72 = CFStringCreateWithBytes(kCFAllocatorDefault, v26 + 2, 2 * v29, 0x14000100u, 0);
            if (v72)
            {
              cf = v72;
              if (CFStringGetCString(v72, byte_100026D3C, 64, 0x8000100u))
              {
                v100 = ctx;
                v101 = *&qword_100026DF8;
                v102 = qword_100026E08;
                fsckPrint(&v100, 207, v73, v74, v75, v76, v77, v78, byte_100026D3C);
                CFRelease(cf);
                if (!a2)
                {
                  goto LABEL_84;
                }

LABEL_83:
                ++*a2;
                goto LABEL_84;
              }

              v100 = ctx;
              v101 = *&qword_100026DF8;
              v102 = qword_100026E08;
              fsckPrint(&v100, 412, v73, v74, v75, v76, v77, v78, v88);
              CFRelease(cf);
            }

            else
            {
              v100 = ctx;
              v101 = *&qword_100026DF8;
              v102 = qword_100026E08;
              v30 = 411;
LABEL_54:
              fsckPrint(&v100, v30, v20, v21, v22, v23, v24, v25, v88);
            }

            v100 = ctx;
            v101 = *&qword_100026DF8;
            v102 = qword_100026E08;
            if (fsckAskPrompt(&v100, "Set name length to 0? ", v52, v53, v54, v55, v56, v57, v90) == 1)
            {
              v26[1] = 0;
              goto LABEL_61;
            }

            goto LABEL_63;
          }
        }
      }

      if (a2)
      {
        goto LABEL_83;
      }

LABEL_84:
      ++v27;
      v26 += 32;
      v15 += 32;
      if (v27 == v16)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_92:
  if (dword_100026DC0 == -1)
  {
    v100 = ctx;
    v101 = *&qword_100026DF8;
    v102 = qword_100026E08;
    fsckPrint(&v100, 417, a3, a4, a5, a6, a7, a8, v88);
    if (!dword_100026DD8)
    {
      v100 = ctx;
      v101 = *&qword_100026DF8;
      v102 = qword_100026E08;
      if (fsckAskPrompt(&v100, "CONTINUE? ", a3, a4, a5, a6, a7, a8, v88) != 1)
      {
        return 208;
      }
    }
  }

  if ((byte_100026DD6 & 1) != 0 || dword_100026DC0 == -1)
  {
    v100 = ctx;
    v101 = *&qword_100026DF8;
    v102 = qword_100026E08;
    fsckPrint(&v100, 423, a3, a4, a5, a6, a7, a8, v88);
    v96 = fsck_exfat_decompress_upcase(qword_100026DB0, &default_upcase_table, default_upcase_table_size);
    if (v96)
    {
      sub_100010198();
    }
  }

  if (v12[878] == -1)
  {
    v100 = ctx;
    v101 = *&qword_100026DF8;
    v102 = qword_100026E08;
    fsckPrint(&v100, 415, a3, a4, a5, a6, a7, a8, v88);
    if (!dword_100026DD8)
    {
      v100 = ctx;
      v101 = *&qword_100026DF8;
      v102 = qword_100026E08;
      if (fsckAskPrompt(&v100, "CONTINUE? ", a3, a4, a5, a6, a7, a8, v88) != 1)
      {
        return 209;
      }
    }
  }

  if (*(qword_100026CD0 + 110) == 2 && dword_100026DBC == -1)
  {
    v100 = ctx;
    v101 = *&qword_100026DF8;
    v102 = qword_100026E08;
    fsckPrint(&v100, 416, a3, a4, a5, a6, a7, a8, v88);
    if (!dword_100026DD8)
    {
      v100 = ctx;
      v101 = *&qword_100026DF8;
      v102 = qword_100026E08;
      if (fsckAskPrompt(&v100, "CONTINUE? ", v80, v81, v82, v83, v84, v85, v92) != 1)
      {
        return 210;
      }
    }
  }

  return v96;
}

uint64_t fsck_printf(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(result + 16))
  {
    return (*(result + 16))(*(result + 32), a2, &a9);
  }

  return result;
}

uint64_t fsck_exfat_dir_ref(uint64_t result)
{
  v1 = *(result + 32);
  *(result + 32) = v1 + 1;
  if (v1 == -1)
  {
    sub_1000101C4();
  }

  return result;
}

void fsck_exfat_dir_rele(int *a1)
{
  if (a1[8] < 1)
  {
    sub_1000101F0();
  }

  v1 = a1;
  while (v1[8] == 1)
  {
    v2 = *(v1 + 1);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *v1;
    free(v1);
    v1 = v3;
    if (!v3)
    {
      return;
    }
  }

  --v1[8];
}

char *fsck_exfat_dir_from_file_set(uint64_t a1)
{
  v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x1060040E3ABEE6CuLL);
  if (!v7)
  {
    v10[1] = *(&ctx + 1);
    v11 = *&qword_100026DF8;
    v12 = qword_100026E08;
    fsck_err(v10, 1, "Cannot allocate struct fsck_exfat_dir", v2, v3, v4, v5, v6, ctx);
  }

  *(v7 + 18) = *(a1 + 36);
  v7[38] = *(a1 + 35);
  *(v7 + 6) = *(a1 + 52);
  *(v7 + 28) = &_mh_execute_header;
  if ((*(a1 + 33) & 2) != 0)
  {
    v7[39] = 1;
  }

  Mutable = CFStringCreateMutable(0, 0);
  v10[0] = Mutable;
  sub_1000070F8(a1, v10, v7[38]);
  *(v7 + 1) = CFStringCreateCopy(0, Mutable);
  CFRelease(Mutable);
  return v7;
}

uint64_t fsck_err(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(result + 24))
  {
    return (*(result + 24))(*(result + 32), a2, a3, &a9);
  }

  return result;
}

void sub_1000070F8(uint64_t a1, CFMutableStringRef *a2, int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = a1 + 64;
    do
    {
      v7 = *(v6 + 32 * (v5 / 0xFu) + 2 * (v5 % 0xFu) + 2);
      chars = v7;
      if ((v7 + 4095) <= 0x28u)
      {
        chars = sfm_to_mac[v7 - 61441];
      }

      CFStringAppendCharacters(*a2, &chars, 1);
      ++v5;
    }

    while (a3 != v5);
  }
}

char *fsck_exfat_dir_get_path(uint64_t **a1)
{
  v1 = a1;
  if (*a1)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    do
    {
      CFArrayInsertValueAtIndex(Mutable, 0, v1[1]);
      v1 = *v1;
    }

    while (v1);
    v3 = CFStringCreateByCombiningStrings(0, Mutable, @"/");
    CFRelease(Mutable);
    goto LABEL_7;
  }

  if (CFStringGetLength(a1[1]))
  {
    v3 = CFRetain(v1[1]);
LABEL_7:
    v4 = CFStringCopyCStringUTF8(v3);
    CFRelease(v3);
    return v4;
  }

  return strdup("/");
}

CFStringRef CFStringCopyFilenameExtension(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  if (Length < 2)
  {
    goto LABEL_8;
  }

  v3 = Length;
  v4 = 1;
  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, --v3);
    if (CharacterAtIndex == 46)
    {
      break;
    }

    if ((CharacterAtIndex - 127) > 0xFFFFFFA0)
    {
      ++v4;
      if (v3 > 1)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  if (v4 == 1)
  {
LABEL_8:

    return CFRetain(&stru_10001C798);
  }

  else
  {
    v7.location = v3;
    v7.length = v4;

    return CFStringCreateWithSubstring(0, a1, v7);
  }
}

uint64_t fsck_exfat_rename_file_set()
{
  v0 = __chkstk_darwin();
  memset(v18, 0, 448);
  v16 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 20);
  v19 = _NSConcreteStackBlock;
  v20 = 0x40000000;
  v21 = sub_100005C7C;
  v22 = &unk_10001C5E0;
  v23 = v15;
  result = fsck_exfat_iter_dir_entries(v1, v2, v3, &v19);
  if (!result)
  {
    Length = CFStringGetLength(*(v0 + 8));
    if (Length - 256 < 0xFFFFFF01)
    {
      sub_10001021C();
    }

    v6 = 0;
    do
    {
      *(&v18[2 * (v6 / 0xFuLL)] + v6 % 0xF + 1) = CFStringGetCharacterAtIndex(*(v0 + 8), v6);
      ++v6;
    }

    while (Length != v6);
    if (-286331153 * Length >= 0x11111112)
    {
      v7 = Length + 1;
      v8 = Length;
      do
      {
        ++v8;
        *(&v18[2 * (v7 / 0xFuLL)] + v7 % 0xF + 1) = 0;
        ++v7;
      }

      while (-15 * (v8 / 0xF) + v7 != 1);
    }

    BYTE3(v16) = Length;
    v9 = fsck_exfat_name_hash(v15, 0);
    v10 = 0;
    v11 = 0;
    WORD2(v16) = v9;
    do
    {
      if ((v11 & 0x7FFFFFFFFFFFFFFELL) != 2)
      {
        v10 = ((v10 >> 1) | (v10 << 15)) + *(v15 + v11);
      }

      ++v11;
    }

    while (32 * BYTE1(v15[0]) + 32 != v11);
    WORD1(v15[0]) = v10;
    v12 = *v0;
    v13 = *(v0 + 16);
    v14 = *(v0 + 20);
    v19 = _NSConcreteStackBlock;
    v20 = 0x40000000;
    v21 = sub_100005BE4;
    v22 = &unk_10001C5C0;
    v23 = v15;
    return fsck_exfat_iter_dir_entries(v12, v13, v14, &v19);
  }

  return result;
}

uint64_t fsck_exfat_rename_names(uint64_t **a1, const __CFArray *a2, __CFArray *a3, __CFSet *a4)
{
  v46 = a1;
  path = fsck_exfat_dir_get_path(a1);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v9 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v9 - 1);
      v50.length = *(ValueAtIndex + 38);
      v50.location = 0;
      CFStringGetCharacters(ValueAtIndex[1], v50, buffer);
      v11 = *(ValueAtIndex + 38);
      if (*(ValueAtIndex + 38))
      {
        v12 = buffer;
        v13 = *(ValueAtIndex + 38);
        do
        {
          v14 = *v12;
          if (v14 <= 0x7F)
          {
            *v12 = word_100016F02[v14];
          }

          ++v12;
          --v13;
        }

        while (v13);
      }

      v15 = CFStringCreateWithCharacters(0, buffer, v11);
      CFRelease(ValueAtIndex[1]);
      ValueAtIndex[1] = v15;
      v16 = sub_100007978(v15);
      if (sub_100007A04(v46, ValueAtIndex, v16, a4, path))
      {
        v17 = fsck_exfat_rename_file_set();
        if (v17)
        {
LABEL_30:
          v33 = v17;
          CFRelease(v16);
          return v33;
        }

        sub_100007B04(v16, a4, path);
      }

      else
      {
        CFArrayAppendValue(a3, ValueAtIndex);
        CFArrayRemoveValueAtIndex(a2, v9 - 1);
      }

      CFRelease(v16);
    }

    while (v9-- > 1);
  }

  v43 = CFArrayGetCount(a3);
  if (v43 >= 1)
  {
    v19 = 0;
    v42 = a3;
    while (2)
    {
      v44 = v19;
      v20 = CFArrayGetValueAtIndex(a3, v19);
      v21 = CFStringCopyFilenameExtension(v20[1]);
      v22 = *(v20 + 38);
      v23 = v22 - CFStringGetLength(v21);
      v51.length = v23;
      v51.location = 0;
      v24 = CFStringCreateWithSubstring(0, v20[1], v51);
      v16 = 0;
      if (*(v20 + 38) % 0xFu)
      {
        v25 = *(v20 + 38) / 0xFu + 1;
      }

      else
      {
        v25 = *(v20 + 38) / 0xFu;
      }

      v26 = 15 * v25;
      v27 = 1;
      v45 = v23;
      do
      {
        while (1)
        {
          v28 = CFStringCreateWithFormat(0, 0, @"%@-%u%@", v24, v27, v21);
          Length = CFStringGetLength(v28);
          if (v16)
          {
            CFRelease(v16);
          }

          v16 = sub_100007978(v28);
          v30 = Length - v26;
          if (Length <= v26)
          {
            break;
          }

          v31.length = v45 - v30;
          if (v45 < v30)
          {
            v34 = CFStringCopyCStringUTF8(v20[1]);
            *buffer = ctx;
            v48 = *&qword_100026DF8;
            v49 = qword_100026E08;
            fsck_printf(buffer, "Cannot create a generated name for %s\n", v35, v36, v37, v38, v39, v40, v34);
            free(v34);
            CFRelease(v24);
            CFRelease(v28);
            CFRelease(v21);
            if (v16)
            {
              CFRelease(v16);
            }

            return 22;
          }

          v31.location = 0;
          v45 -= v30;
          v32 = CFStringCreateWithSubstring(0, v24, v31);
          CFRelease(v24);
          CFRelease(v28);
          v24 = v32;
        }

        v27 = (v27 + 1);
      }

      while (!sub_100007A04(v46, v20, v16, a4, path));
      CFRelease(v21);
      CFRelease(v24);
      CFRelease(v20[1]);
      v20[1] = v28;
      v17 = fsck_exfat_rename_file_set();
      if (v17)
      {
        goto LABEL_30;
      }

      sub_100007B04(v16, a4, path);
      CFRelease(v16);
      v19 = v44 + 1;
      a3 = v42;
      if (v44 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  free(path);
  return 0;
}

__CFString *sub_100007978(const __CFString *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  Length = CFStringGetLength(a1);
  if (Length >= 1)
  {
    v4 = Length;
    for (i = 0; i != v4; ++i)
    {
      v6 = qword_100026DB0;
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, i);
      CFStringAppendCharacters(Mutable, (v6 + 2 * CharacterAtIndex), 1);
    }
  }

  return Mutable;
}

BOOL sub_100007A04(int a1, int a2, const __CFString *value, CFSetRef theSet, char *__s1)
{
  if (byte_100026DDC != 1)
  {
    return CFSetContainsValue(theSet, value) == 0;
  }

  v7 = 1;
  if (strcmp(__s1, "/.Trashes"))
  {
    v8 = sub_100009D34(value);
    v15 = (1 << (v8 & 7)) & *(theSet + ((v8 & 0x1FFFFF) >> 3));
    if (v15)
    {
      v16 = debug == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (!v15)
      {
        return v7;
      }
    }

    else
    {
      v18[0] = ctx;
      v18[1] = *&qword_100026DF8;
      v19 = qword_100026E08;
      fsck_printf(v18, "Hash bitmap collision: index: %u\n", v9, v10, v11, v12, v13, v14, v8 & 0x1FFFFF);
    }

    return !fsck_exfat_filename_exists_in_dir();
  }

  return v7;
}

void sub_100007B04(const __CFString *value, __CFSet *theSet, char *__s1)
{
  if (byte_100026DDC == 1)
  {
    if (strcmp(__s1, "/.Trashes"))
    {
      v5 = sub_100009D34(value);
      *(theSet + ((v5 >> 3) & 0x3FFFF)) |= 1 << (v5 & 7);
    }
  }

  else
  {

    CFSetAddValue(theSet, value);
  }
}

uint64_t fsck_exfat_recurse(const void *a1, _DWORD *a2)
{
  v234 = 0u;
  v235 = 0u;
  *&callBacks.version = unk_10001C600;
  *&callBacks.release = *&off_10001C610;
  callBacks.equal = 0;
  v4 = CFArrayCreateMutable(0, 0, &callBacks);
  v5 = CFArrayCreateMutable(0, 0, &callBacks);
  v6 = CFArrayCreateMutable(0, 0, &callBacks);
  theArray = CFArrayCreateMutable(0, 0, 0);
  byte_100026DDC = 1;
  v7 = malloc_type_malloc(0x200000uLL, 0x866E412CuLL);
  value = 0;
  v231 = 0;
  CFArrayAppendValue(v4, a1);
  if (a2)
  {
    *a2 = 0;
  }

  if (CFArrayGetCount(v4))
  {
    v8 = 0;
    v225 = 0;
    v227 = 0;
    v222 = v4;
    v223 = v7;
    v220 = v5;
    v221 = v6;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      path = fsck_exfat_dir_get_path(ValueAtIndex);
      if (byte_100026DDC == 1)
      {
        bzero(v7, 0x200000uLL);
      }

      else
      {
        CFSetRemoveAllValues(v7);
      }

      CFArrayRemoveAllValues(v5);
      CFArrayRemoveAllValues(v6);
      CFArrayRemoveAllValues(theArray);
      v11 = *(ValueAtIndex + 6);
      HIDWORD(value) = v11;
      if (v11 >= 2 && v11 <= dword_100026D0C)
      {
        break;
      }

      v224 = 0;
LABEL_14:
      v6 = v221;
      v4 = v222;
      v7 = v223;
      v5 = v220;
      if (CFArrayGetCount(v221) || CFArrayGetCount(v220))
      {
        if (debug)
        {
          v236 = ctx;
          v237 = *&qword_100026DF8;
          v238 = qword_100026E08;
          fsck_printf(&v236, "Renaming items in %s\n", v13, v14, v15, v16, v17, v18, path);
        }

        LODWORD(value) = fsck_exfat_rename_names(ValueAtIndex, v221, v220, v223);
        if (value)
        {
          HIBYTE(word_100026DD2) = 1;
          if (debug)
          {
            v236 = ctx;
            v237 = *&qword_100026DF8;
            v238 = qword_100026E08;
            fsck_printf(&v236, "Renaming failed in %s\n", v19, v20, v21, v22, v23, v24, path);
          }
        }

        else
        {
          byte_100026DD4 = 1;
          if (debug)
          {
            v236 = ctx;
            v237 = *&qword_100026DF8;
            v238 = qword_100026E08;
            fsck_printf(&v236, "Renaming completed in %s\n", v19, v20, v21, v22, v23, v24, path);
          }
        }
      }

      LODWORD(value) = fsck_exfat_cache_evict_clusters(theArray);
      if (value)
      {
        HIBYTE(word_100026DD2) = 1;
        if (debug)
        {
          v236 = ctx;
          v237 = *&qword_100026DF8;
          v238 = qword_100026E08;
          fsck_printf(&v236, "Could not write clusters for directory %s\n", v198, v199, v200, v201, v202, v203, path);
        }
      }

      fsck_exfat_telemetry_num_files_in_dir(v224);
      if (!strcmp(path, "/.Trashes"))
      {
        *(qword_100026DE0 + 32) = v224;
      }

      free(path);
      CFArrayRemoveValueAtIndex(v222, 0);
      if (!CFArrayGetCount(v222))
      {
        goto LABEL_218;
      }
    }

    v25 = 0;
    v26 = 0;
    v224 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    while (1)
    {
      if (v25 >= *(ValueAtIndex + 7))
      {
        goto LABEL_14;
      }

      cluster = fsck_exfat_cache_get_cluster(v11, &value);
      if (!cluster)
      {
        goto LABEL_14;
      }

      v228 = v25;
      v31 = cluster;
      v32 = v26 + buffer_length(cluster);
      CFArrayAppendValue(theArray, HIDWORD(value));
      v229 = v31;
      v33 = buffer_data(v31);
      if (v26 < v32)
      {
        break;
      }

LABEL_202:
      LODWORD(value) = fsck_exfat_cache_release(v229, 0, 1);
      if (value)
      {
        goto LABEL_14;
      }

      if (*(ValueAtIndex + 39) == 1)
      {
        v11 = ++HIDWORD(value);
        v197 = v228;
      }

      else
      {
        LODWORD(value) = fsck_exfat_fat_get(HIDWORD(value), &value + 1);
        v197 = v228;
        if (value)
        {
          goto LABEL_14;
        }

        v11 = HIDWORD(value);
      }

      if (v11 >= 2)
      {
        v25 = v197 + 1;
        if (v11 <= dword_100026D0C)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v40 = v33;
    while (1)
    {
      if (v29 != 1)
      {
        v41 = *v40;
        if (!*v40)
        {
          goto LABEL_34;
        }

        v236 = ctx;
        v237 = *&qword_100026DF8;
        v238 = qword_100026E08;
        fsckPrint(&v236, 425, v34, v35, v36, v37, v38, v39, path);
        v236 = ctx;
        v237 = *&qword_100026DF8;
        v238 = qword_100026E08;
        if (fsckAskPrompt(&v236, "Extend? ", v42, v43, v44, v45, v46, v47, v206) == 1)
        {
          LODWORD(value) = fsck_exfat_iter_dir_entries(ValueAtIndex, v29, (v26 - v29) >> 5, &stru_10001C5A0);
          if (value)
          {
            HIBYTE(word_100026DD2) = 1;
          }

          else
          {
            byte_100026DD4 = 1;
          }
        }

        else
        {
          LOBYTE(word_100026DD2) = 1;
        }
      }

      v41 = *v40;
      if ((*v40 & 0x80000000) == 0)
      {
        v29 = 1;
LABEL_34:
        if (v29 == 1 && v41 == 0)
        {
          v29 = v26;
        }

        if (v27)
        {
          v236 = ctx;
          v237 = *&qword_100026DF8;
          v238 = qword_100026E08;
          fsckPrint(&v236, 426, v34, v35, v36, v37, v38, v39, path);
          v236 = ctx;
          v237 = *&qword_100026DF8;
          v238 = qword_100026E08;
          if (fsckAskPrompt(&v236, "Delete? ", v49, v50, v51, v52, v53, v54, v207) == 1)
          {
            LODWORD(value) = fsck_exfat_iter_dir_entries(ValueAtIndex, v8, (v26 - v8) >> 5, &stru_10001C5A0);
            v28 = 0;
            v27 = 0;
            if (value)
            {
              HIBYTE(word_100026DD2) = 1;
            }

            else
            {
              byte_100026DD4 = 1;
            }
          }

          else
          {
            v28 = 0;
            v27 = 0;
            LOBYTE(word_100026DD2) = 1;
          }
        }

        goto LABEL_101;
      }

      if ((v41 & 0x40) == 0 && v27)
      {
        v236 = ctx;
        v237 = *&qword_100026DF8;
        v238 = qword_100026E08;
        fsckPrint(&v236, 426, v34, v35, v36, v37, v38, v39, path);
        v236 = ctx;
        v237 = *&qword_100026DF8;
        v238 = qword_100026E08;
        if (fsckAskPrompt(&v236, "Delete? ", v55, v56, v57, v58, v59, v60, v208) == 1)
        {
          LODWORD(value) = fsck_exfat_iter_dir_entries(ValueAtIndex, v8, (v26 - v8) >> 5, &stru_10001C5A0);
          v28 = 0;
          v27 = 0;
          if (value)
          {
            HIBYTE(word_100026DD2) = 1;
          }

          else
          {
            byte_100026DD4 = 1;
          }
        }

        else
        {
          v28 = 0;
          v27 = 0;
          LOBYTE(word_100026DD2) = 1;
        }
      }

      v61 = *v40;
      if (ValueAtIndex == a1 && (v61 - 129) <= 0x1F && ((1 << (v61 + 127)) & 0x80000007) != 0)
      {
        goto LABEL_64;
      }

      if (v61 == 133)
      {
        break;
      }

      if (v61 == 160)
      {
        v236 = ctx;
        v237 = *&qword_100026DF8;
        v238 = qword_100026E08;
        fsckPrint(&v236, 442, v34, v35, v36, v37, v38, v39, path);
LABEL_68:
        v236 = ctx;
        v237 = *&qword_100026DF8;
        v238 = qword_100026E08;
        if (fsckAskPrompt(&v236, "Delete? ", v62, v63, v64, v65, v66, v67, v209) != 1)
        {
          goto LABEL_100;
        }

        *v40 &= ~0x80u;
        fsck_exfat_cache_mark_dirty(v229);
        goto LABEL_70;
      }

      if ((v61 & 0x60) == 0x20)
      {
        v70 = *(v40 + 1);
        xmmword_100024C90[0] = *v40;
        unk_100024CA0 = v70;
        v28 = v40[1];
        *&v234 = *(v40 + 3);
        *(&v234 + 1) = v234;
        LODWORD(v235) = *(v40 + 5);
        v71 = *(v40 + 2);
        BYTE8(v235) = v71;
        if ((v71 & 1) != 0 && (LODWORD(value) = fsck_exfat_check_allocation(&v234, path, v34, v35, v36, v37, v38, v39), value == 1))
        {
          *(v40 + 3) = v234;
          *(v40 + 5) = v235;
          *(v40 + 2) = BYTE8(v235);
          v227 = 1;
        }

        else
        {
          v227 = 0;
        }

        v225 = v28 + 1;
        if (!v28)
        {
          v8 = v26;
LABEL_84:
          v80 = 0;
          v81 = 0;
          do
          {
            if ((v81 & 0x7FFFFFFFFFFFFFFELL) != 2)
            {
              v80 = ((v80 >> 1) | (v80 << 15)) + *(xmmword_100024C90 + v81);
            }

            ++v81;
          }

          while (32 * BYTE1(xmmword_100024C90[0]) + 32 != v81);
          if (WORD1(xmmword_100024C90[0]) != v80)
          {
            v236 = ctx;
            v237 = *&qword_100026DF8;
            v238 = qword_100026E08;
            fsckPrint(&v236, 429, v34, v35, v36, v37, v38, v39, v205);
            goto LABEL_95;
          }

          if (LOBYTE(xmmword_100024C90[0]) == 133)
          {
            if (byte_100024CB0 != 192)
            {
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              fsckPrint(&v236, 439, v34, v35, v36, v37, v38, v39, path);
              goto LABEL_95;
            }

            if ((byte_100024CB1 & 1) == 0)
            {
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              fsckPrint(&v236, 440, v34, v35, v36, v37, v38, v39, path);
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              if (fsckAskPrompt(&v236, "Fix? ", v82, v83, v84, v85, v86, v87, v211) == 1)
              {
                byte_100024CB1 |= 1u;
                v227 = 1;
              }

              else
              {
                LOBYTE(word_100026DD2) = 1;
              }
            }

            if (!byte_100024CB3 || ((v97 = byte_100024CB3 / 0xFu, !(byte_100024CB3 % 0xFu)) ? (v98 = v97) : (v98 = v97 + 1), v98 >= BYTE1(xmmword_100024C90[0])))
            {
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              fsckPrint(&v236, 437, v34, v35, v36, v37, v38, v39, path);
              goto LABEL_95;
            }

            if (v98)
            {
              v99 = v98;
              v100 = &byte_100024CD0;
              while (1)
              {
                v101 = *v100;
                v100 += 32;
                if (v101 != 193)
                {
                  break;
                }

                if (!--v99)
                {
                  goto LABEL_127;
                }
              }

LABEL_137:
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              fsckPrint(&v236, 438, v34, v35, v36, v37, v38, v39, path);
LABEL_95:
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              if (fsckAskPrompt(&v236, "Delete? ", v88, v89, v90, v91, v92, v93, v212) != 1)
              {
                v28 = 0;
                v27 = 0;
LABEL_100:
                v29 = 1;
                LOBYTE(word_100026DD2) = 1;
                goto LABEL_101;
              }

LABEL_96:
              LODWORD(value) = fsck_exfat_iter_dir_entries(ValueAtIndex, v8, (v26 - v8 + 32) >> 5, &stru_10001C5A0);
              if (value)
              {
                goto LABEL_112;
              }

LABEL_116:
              v28 = 0;
              v27 = 0;
LABEL_70:
              v29 = 1;
              byte_100026DD4 = 1;
              goto LABEL_101;
            }

LABEL_127:
            if (fsck_exfat_name_hash(xmmword_100024C90, &v231) != word_100024CB4)
            {
              goto LABEL_137;
            }

            if (dword_100026DD8 != 1 && (byte_100026DD7 & 1) == 0)
            {
              Mutable = CFStringCreateMutable(0, 0);
              v230 = Mutable;
              sub_1000070F8(xmmword_100024C90, &v230, byte_100024CB3);
              v103 = CFStringCopyCStringUTF8(Mutable);
              v104 = Mutable;
              v105 = v103;
              CFRelease(v104);
              if (!strncmp(v105, ".nfs.20051", 0xAuLL))
              {
                v236 = ctx;
                v237 = *&qword_100026DF8;
                v238 = qword_100026E08;
                fsckPrint(&v236, 446, v106, v107, v108, v109, v110, v111, v205);
                free(v105);
                goto LABEL_96;
              }

              free(v105);
            }

            v112 = fsck_exfat_dir_from_file_set(xmmword_100024C90);
            v113 = *(ValueAtIndex + 8);
            *(ValueAtIndex + 8) = v113 + 1;
            if (v113 == -1)
            {
              sub_1000101C4();
            }

            *v112 = ValueAtIndex;
            *(v112 + 4) = v8;
            *(v112 + 5) = v225;
            v218 = v112;
            v219 = fsck_exfat_dir_get_path(v112);
            *&v234 = qword_100024CC8;
            *(&v234 + 1) = unk_100024CB8;
            LODWORD(v235) = unk_100024CC4;
            BYTE8(v235) = byte_100024CB1;
            v217 = sub_100007978(v218[1]);
            if (debug)
            {
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              if ((BYTE4(xmmword_100024C90[0]) & 0x10) != 0)
              {
                fsck_printf(&v236, "Directory %s\n", v114, v115, v116, v117, v118, v119, v219);
              }

              else
              {
                fsck_printf(&v236, "File      %s\n", v114, v115, v116, v117, v118, v119, v219);
              }
            }

            if (v231 == 1)
            {
              if (qword_100026DE0)
              {
                ++*(qword_100026DE0 + 44);
              }

              v120 = v218;
              v121 = CFStringCopyCStringUTF8(v218[1]);
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              fsckPrint(&v236, 445, v122, v123, v124, v125, v126, v127, path);
              free(v121);
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              if (fsckAskPrompt(&v236, "Rename? ", v128, v129, v130, v131, v132, v133, v213) == 1)
              {
                v140 = v221;
                goto LABEL_150;
              }

LABEL_152:
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              v160 = &unk_100024000;
              if (fsckAskPrompt(&v236, "Delete? ", v134, v135, v136, v137, v138, v139, v205) != 1)
              {
                LOBYTE(word_100026DD2) = 1;
                goto LABEL_154;
              }

              goto LABEL_174;
            }

            if (sub_100007A04(ValueAtIndex, v218, v217, v223, path))
            {
              sub_100007B04(v217, v223, path);
              ++v224;
            }

            else
            {
              if (qword_100026DE0)
              {
                ++*(qword_100026DE0 + 48);
              }

              v120 = v218;
              v147 = CFStringCopyCStringUTF8(v218[1]);
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              fsckPrint(&v236, 444, v148, v149, v150, v151, v152, v153, path);
              free(v147);
              v236 = ctx;
              v237 = *&qword_100026DF8;
              v238 = qword_100026E08;
              if (fsckAskPrompt(&v236, "Rename? ", v154, v155, v156, v157, v158, v159, v214) != 1)
              {
                goto LABEL_152;
              }

              v140 = v220;
LABEL_150:
              CFArrayAppendValue(v140, v120);
            }

            v160 = &unk_100024000;
LABEL_154:
            v161 = fsck_exfat_check_allocation(&v234, v219, v141, v142, v143, v144, v145, v146);
            LODWORD(value) = v161;
            if (v161 == -1 || v234 || (BYTE4(xmmword_100024C90[0]) & 0x10) == 0)
            {
              if (v161 == 1)
              {
                unk_100024CB8 = *(&v234 + 1);
                qword_100024CC8 = v234;
                unk_100024CC4 = v235;
                byte_100024CB1 = BYTE8(v235);
                v227 = 1;
              }

              *(v218 + 7) = DWORD1(v235);
              v168 = v160[3217];
              while (2)
              {
                if (v98 >= v168 - 1)
                {
                  goto LABEL_180;
                }

                v169 = &xmmword_100024C90[2 * v98];
                v171 = *(v169 + 64);
                v170 = v169 + 4;
                if ((v171 & 0x20) == 0)
                {
                  v236 = ctx;
                  v237 = *&qword_100026DF8;
                  v238 = qword_100026E08;
                  fsckPrint(&v236, 441, v162, v163, v164, v165, v166, v167, v219);
                  v236 = ctx;
                  v237 = *&qword_100026DF8;
                  v238 = qword_100026E08;
                  if (fsckAskPrompt(&v236, "Remove? ", v172, v173, v174, v175, v176, v177, v215) == 1)
                  {
                    LODWORD(v178) = v98 + 1;
                    LODWORD(v179) = v160[3217];
                    if (v98 + 1 < v179 - 1)
                    {
                      v178 = v178;
                      v180 = &xmmword_100024C90[2 * v178 + 4];
                      v181 = v98;
                      do
                      {
                        v179 = &xmmword_100024C90[2 * v181];
                        v182 = *v180;
                        v183 = v180[1];
                        v180 += 2;
                        v179[4] = v182;
                        v179[5] = v183;
                        ++v178;
                        LOBYTE(v179) = BYTE1(xmmword_100024C90[0]);
                        ++v181;
                      }

                      while (v178 < BYTE1(xmmword_100024C90[0]) - 1);
                    }

                    LOBYTE(v168) = v179 - 1;
                    BYTE1(xmmword_100024C90[0]) = v179 - 1;
                    LOBYTE(xmmword_100024C90[2 * (v179 - 1) + 2]) &= ~0x80u;
                    v227 = 1;
LABEL_172:
                    v168 = v168;
                    continue;
                  }

                  LOBYTE(word_100026DD2) = 1;
                }

                break;
              }

              v184 = *(v170 + 1);
              if (v184)
              {
                *&v234 = *(v170 + 3);
                *(&v234 + 1) = v234;
                LODWORD(v235) = *(v170 + 5);
                BYTE8(v235) = v184;
                LODWORD(value) = fsck_exfat_check_allocation(&v234, v219, v162, v163, v164, v165, v166, v167);
                if (value == 1)
                {
                  *(v170 + 3) = v234;
                  *(v170 + 5) = v235;
                  *(v170 + 1) = BYTE8(v235);
                  v227 = 1;
                }
              }

              LODWORD(v98) = v98 + 1;
              LOBYTE(v168) = v160[3217];
              goto LABEL_172;
            }

            v236 = ctx;
            v237 = *&qword_100026DF8;
            v238 = qword_100026E08;
            fsckPrint(&v236, 443, v162, v163, v164, v165, v166, v167, v219);
            v236 = ctx;
            v237 = *&qword_100026DF8;
            v238 = qword_100026E08;
            if (fsckAskPrompt(&v236, "Delete? ", v185, v186, v187, v188, v189, v190, v216) == 1)
            {
LABEL_174:
              LODWORD(value) = fsck_exfat_iter_dir_entries(ValueAtIndex, v8, v225 & 0x7FFFFFF, &stru_10001C5A0);
              if (value)
              {
                HIBYTE(word_100026DD2) = 1;
              }

              else
              {
                byte_100026DD4 = 1;
              }

              fsck_exfat_dir_rele(v218);
              v191 = v217;
            }

            else
            {
              LOBYTE(word_100026DD2) = 1;
LABEL_180:
              if (v227)
              {
                v192 = 0;
                v193 = 0;
                do
                {
                  if ((v193 & 0x7FFFFFFFFFFFFFFELL) != 2)
                  {
                    v192 = ((v192 >> 1) | (v192 << 15)) + *(xmmword_100024C90 + v193);
                  }

                  ++v193;
                }

                while (32 * v160[3217] + 32 != v193);
                WORD1(xmmword_100024C90[0]) = v192;
                *&v236 = _NSConcreteStackBlock;
                *(&v236 + 1) = 0x40000000;
                *&v237 = sub_100005BE4;
                *(&v237 + 1) = &unk_10001C5C0;
                v238 = xmmword_100024C90;
                LODWORD(value) = fsck_exfat_iter_dir_entries(ValueAtIndex, v8, v225, &v236);
                if (value)
                {
                  HIBYTE(word_100026DD2) = 1;
                }

                else
                {
                  byte_100026DD4 = 1;
                }
              }

              if ((BYTE4(xmmword_100024C90[0]) & 0x10) != 0)
              {
                v194 = v218;
                CFArrayAppendValue(v222, v218);
                v195 = v217;
                if (qword_100026DE0)
                {
                  ++*(qword_100026DE0 + 28);
                }
              }

              else
              {
                v195 = v217;
                v194 = v218;
                if (qword_100026DE0)
                {
                  ++*(qword_100026DE0 + 24);
                }
              }

              fsck_exfat_telemetry_filename_length(*(v194 + 38));
              if (qword_100026DE0 && *(v194 + 38) >= 3u)
              {
                v196 = CFStringCopyCStringUTF8(v194[1]);
                if (*v196 == 46 && v196[1] == 95)
                {
                  ++*(qword_100026DE0 + 36);
                }

                free(v196);
              }

              fsck_exfat_dir_rele(v194);
              v191 = v195;
            }

            CFRelease(v191);
            free(v219);
          }

          else
          {
            if (BYTE1(xmmword_100024C90[0]))
            {
              v94 = 0;
              v95 = &qword_100024CC8;
              do
              {
                v96 = *(v95 - 23);
                if (v96)
                {
                  *&v234 = *v95;
                  *(&v234 + 1) = v234;
                  LODWORD(v235) = *(v95 - 1);
                  BYTE8(v235) = v96;
                  LODWORD(value) = fsck_exfat_check_allocation(&v234, path, v34, v35, v36, v37, v38, v39);
                  if (value == 1)
                  {
                    *v95 = v234;
                    *(v95 - 1) = v235;
                    *(v95 - 23) = BYTE8(v235);
                    v227 = 1;
                  }
                }

                ++v94;
                v95 += 4;
              }

              while (v94 < BYTE1(xmmword_100024C90[0]));
            }

            if (v227)
            {
              *&v236 = _NSConcreteStackBlock;
              *(&v236 + 1) = 0x40000000;
              *&v237 = sub_100005BE4;
              *(&v237 + 1) = &unk_10001C5C0;
              v238 = xmmword_100024C90;
              LODWORD(value) = fsck_exfat_iter_dir_entries(a1, v8, v225, &v236);
              if (value)
              {
                v227 = 0;
LABEL_112:
                v28 = 0;
                v27 = 0;
LABEL_113:
                v29 = 1;
                HIBYTE(word_100026DD2) = 1;
                goto LABEL_101;
              }

              v227 = 0;
              goto LABEL_116;
            }
          }

          v227 = 0;
          v28 = 0;
          v27 = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      if ((v61 & 0x60) == 0)
      {
        v236 = ctx;
        v237 = *&qword_100026DF8;
        v238 = qword_100026E08;
        fsckPrint(&v236, 427, v34, v35, v36, v37, v38, v39, path);
        goto LABEL_68;
      }

      if ((v61 & 0x40) == 0)
      {
        sub_100010248();
      }

      if (!v28)
      {
        v236 = ctx;
        v237 = *&qword_100026DF8;
        v238 = qword_100026E08;
        fsckPrint(&v236, 428, v34, v35, v36, v37, v38, v39, path);
        v236 = ctx;
        v237 = *&qword_100026DF8;
        v238 = qword_100026E08;
        if (fsckAskPrompt(&v236, "Delete? ", v74, v75, v76, v77, v78, v79, v210) != 1)
        {
          v28 = 0;
          goto LABEL_100;
        }

        LODWORD(value) = fsck_exfat_iter_dir_entries(ValueAtIndex, v26, 1, &stru_10001C5A0);
        v28 = 0;
        if (value)
        {
          goto LABEL_113;
        }

        goto LABEL_70;
      }

      v72 = *(v40 + 1);
      v73 = &xmmword_100024C90[2 * v27];
      *v73 = *v40;
      v73[1] = v72;
      if (!--v28)
      {
        goto LABEL_84;
      }

      ++v27;
LABEL_64:
      v29 = 1;
LABEL_101:
      v40 += 32;
      v26 += 32;
      if (v26 >= v32)
      {
        goto LABEL_202;
      }
    }

    v227 = 0;
    v69 = *(v40 + 1);
    xmmword_100024C90[0] = *v40;
    unk_100024CA0 = v69;
    v28 = v40[1];
    v225 = v28 + 1;
LABEL_63:
    v27 = 1;
    v8 = v26;
    goto LABEL_64;
  }

LABEL_218:
  if (byte_100026DDC == 1)
  {
    free(v7);
  }

  else
  {
    CFRelease(v7);
  }

  CFRelease(v4);
  CFRelease(v5);
  CFRelease(v6);
  CFRelease(theArray);
  return 0;
}

uint64_t sub_100008EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(a2 + 32) = v2 + 1;
  if (v2 == -1)
  {
    sub_1000101C4();
  }

  return a2;
}

uint64_t fsck_exfat_check_fs(void *a1)
{
  v2 = 0;
  qword_100026CD8 = 0;
  qword_100026DB0 = 0;
  qword_100026D80 = 0;
  qword_100026D88 = 0;
  if ((byte_100026DD7 & 1) == 0)
  {
    v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x1000040565EDBD2uLL);
  }

  qword_100026DE0 = v2;
  v9 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v10 = a1 && a1[2] && a1[1] && *a1 != 0;
  byte_100026DD4 = 0;
  word_100026DD2 = 0;
  v151 = ctx;
  v152 = *&qword_100026DF8;
  v153 = qword_100026E08;
  v154 = 0;
  fsckPrint(&v151, 101, v3, v4, v5, v6, v7, v8, v141);
  v17 = dword_100026CF8;
  if (qword_100026DE0)
  {
    *(qword_100026DE0 + 16) = dword_100026CF8;
  }

  if (v17)
  {
    if (v17 > 0x1000)
    {
      v151 = ctx;
      v152 = *&qword_100026DF8;
      v153 = qword_100026E08;
      fsckPrint(&v151, 301, v11, v12, v13, v14, v15, v16, v17);
      v18 = 205;
      goto LABEL_20;
    }
  }

  else
  {
    dword_100026CF8 = 512;
  }

  v151 = ctx;
  v152 = *&qword_100026DF8;
  v153 = qword_100026E08;
  fsckPrint(&v151, 201, v11, v12, v13, v14, v15, v16, v142);
  if (v10)
  {
    (a1[1])(500, 2, 2, &v154 + 4, *a1, a1[3]);
  }

  boot_region = read_boot_region(0);
  v18 = boot_region;
  ++HIDWORD(v154);
  if (boot_region > 0)
  {
LABEL_17:
    v27 = 507;
    if (!v10)
    {
LABEL_19:
      fsck_exfat_cache_flush(boot_region, v20, v21, v22, v23, v24, v25, v26);
      v151 = ctx;
      v152 = *&qword_100026DF8;
      v153 = qword_100026E08;
      fsckPrint(&v151, 106, v28, v29, v30, v31, v32, v33, byte_100026D3C);
      goto LABEL_20;
    }

LABEL_18:
    boot_region = (a1[2])(v27, *a1, a1[3]);
    goto LABEL_19;
  }

  if ((boot_region & 0x80000000) != 0)
  {
    byte_100026DD0 = 1;
    v151 = ctx;
    v152 = *&qword_100026DF8;
    v153 = qword_100026E08;
    fsckPrint(&v151, 302, v21, v22, v23, v24, v25, v26, v143);
    v151 = ctx;
    v152 = *&qword_100026DF8;
    v153 = qword_100026E08;
    fsckPrint(&v151, 202, v37, v38, v39, v40, v41, v42, v144);
    v43 = read_boot_region(1);
    if (v43)
    {
      if (v43 == -1)
      {
        v18 = 211;
      }

      else
      {
        v18 = v43;
      }

      v151 = ctx;
      v152 = *&qword_100026DF8;
      v153 = qword_100026E08;
      boot_region = fsckPrint(&v151, 303, v21, v22, v23, v24, v25, v26, v143);
      goto LABEL_17;
    }
  }

  if (v10)
  {
    ++HIDWORD(v154);
    (a1[2])(500, *a1, a1[3]);
    HIDWORD(v154) = 0;
  }

  if (*(qword_100026CD0 + 104) == 256)
  {
    v36 = 11;
    while (!*(qword_100026CD0 + v36))
    {
      if (++v36 == 64)
      {
        goto LABEL_50;
      }
    }

    v151 = ctx;
    v152 = *&qword_100026DF8;
    v153 = qword_100026E08;
    fsckPrint(&v151, 306, v21, v22, v23, v24, v25, v26, v143);
    v151 = ctx;
    v152 = *&qword_100026DF8;
    v153 = qword_100026E08;
    if (fsckAskPrompt(&v151, "Fix? ", v44, v45, v46, v47, v48, v49, v145) == 1)
    {
      v50 = qword_100026CD0;
      *(qword_100026CD0 + 56) = 0;
      *(v50 + 43) = 0u;
      *(v50 + 27) = 0u;
      *(v50 + 11) = 0u;
      exfat_update_boot_checksum(qword_100026CD8, dword_100026CF8);
      byte_100026DD4 = 1;
    }

    else
    {
      LOBYTE(word_100026DD2) = 1;
    }
  }

LABEL_50:
  if ((dword_100026CCC & 0x80000000) == 0 && ftruncate(dword_100026CCC, qword_100026CE8 * dword_100026CF8))
  {
    sub_100010274();
  }

  if (debug)
  {
    v151 = ctx;
    v152 = *&qword_100026DF8;
    v153 = qword_100026E08;
    fsck_printf(&v151, "%llu total sectors; %u bytes per sector\n", v21, v22, v23, v24, v25, v26, qword_100026CE8);
    v57 = *(qword_100026CD0 + 110);
    if (v57 != 1)
    {
      v151 = ctx;
      v152 = *&qword_100026DF8;
      v153 = qword_100026E08;
      fsck_printf(&v151, "%d FATs; active FAT #%d; ", v51, v52, v53, v54, v55, v56, v57);
    }

    v151 = ctx;
    v152 = *&qword_100026DF8;
    v153 = qword_100026E08;
    fsck_printf(&v151, "FAT starts at sector %u; size %u sectors\n", v51, v52, v53, v54, v55, v56, dword_100026CF0);
    v151 = ctx;
    v152 = *&qword_100026DF8;
    v153 = qword_100026E08;
    fsck_printf(&v151, "%u clusters starting at sector %u; %u bytes per cluster\n", v58, v59, v60, v61, v62, v63, dword_100026D08);
    v151 = ctx;
    v152 = *&qword_100026DF8;
    v153 = qword_100026E08;
    fsck_printf(&v151, "Root directory starts at cluster %u\n", v64, v65, v66, v67, v68, v69, dword_100026D10);
  }

  v70 = *(qword_100026CD0 + 106);
  if (byte_100026DD7 != 1)
  {
    v150 = *(qword_100026CD0 + 106);
    if (v10)
    {
      (a1[1])(501, 3, 3, &v154 + 4, *a1, a1[3]);
      v27 = 0;
    }

    else
    {
      v27 = 507;
    }

    fsck_exfat_cache_init();
    ++HIDWORD(v154);
    if (a1)
    {
      v74 = a1[4];
    }

    else
    {
      v74 = 0;
    }

    fsck_exfat_bitmap_init(v74);
    ++HIDWORD(v154);
    fsck_exfat_fat_init();
    if (v10)
    {
      ++HIDWORD(v154);
      (a1[2])(501, *a1, a1[3]);
      HIDWORD(v154) = 0;
    }

    qword_100026DB0 = malloc_type_malloc(0x20000uLL, 0x1000040BDFB0063uLL);
    if (!qword_100026DB0)
    {
      v151 = ctx;
      v152 = *&qword_100026DF8;
      v153 = qword_100026E08;
      fsck_err(&v151, 1, "Cannot allocate upper case translation table", v76, v77, v78, v79, v80, v143);
    }

    if (dword_100026D10 < 2 || dword_100026D10 > dword_100026D0C)
    {
      v151 = ctx;
      v152 = *&qword_100026DF8;
      v153 = qword_100026E08;
      boot_region = fsckPrint(&v151, 401, v75, v76, v77, v78, v79, v80, "/");
      HIBYTE(word_100026DD2) = 1;
      if (!v10)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (fsck_exfat_fat_alloc_chain(dword_100026D10, &v154, "/", v76, v77, v78, v79, v80))
      {
        v151 = ctx;
        v152 = *&qword_100026DF8;
        v153 = qword_100026E08;
        if (fsckAskPrompt(&v151, "Truncate? ", v81, v82, v83, v84, v85, v86, v143) == 1 && !fsck_exfat_truncate_chain(dword_100026D10, v154, v154))
        {
          byte_100026DD4 = 1;
        }

        else
        {
          LOBYTE(word_100026DD2) = 1;
        }
      }

      qword_100026D80 = malloc_type_calloc(1uLL, 0x28uLL, 0x1060040E3ABEE6CuLL);
      v87 = CFRetain(&stru_10001C798);
      v94 = qword_100026D80;
      *(qword_100026D80 + 8) = v87;
      v95 = v154;
      *(v94 + 24) = dword_100026D10;
      *(v94 + 28) = v95;
      *(v94 + 39) = 0;
      v96 = *(v94 + 32);
      *(v94 + 32) = v96 + 1;
      if (v96 == -1)
      {
        sub_1000101C4();
      }

      v151 = ctx;
      v152 = *&qword_100026DF8;
      v153 = qword_100026E08;
      fsckPrint(&v151, 203, v88, v89, v90, v91, v92, v93, v143);
      if (v10)
      {
        (a1[1])(502, 5, (dword_100026CFC * *(qword_100026D80 + 28)) >> 5, &v154 + 4, *a1, a1[3]);
        v109 = fsck_exfat_scan_root(qword_100026D80, &v154 + 1, v103, v104, v105, v106, v107, v108);
        if (v109)
        {
          v18 = v109;
          v27 = 508;
          goto LABEL_18;
        }

        v117 = dword_100026CFC * *(qword_100026D80 + 28);
        if (HIDWORD(v154) < v117 >> 5)
        {
          HIDWORD(v154) = v117 >> 5;
        }

        (a1[2])(502, *a1, a1[3]);
        HIDWORD(v154) = 0;
        v27 = 508;
      }

      else
      {
        boot_region = fsck_exfat_scan_root(qword_100026D80, &v154 + 1, v97, v98, v99, v100, v101, v102);
        v18 = boot_region;
        if (boot_region)
        {
          goto LABEL_19;
        }
      }

      v151 = ctx;
      v152 = *&qword_100026DF8;
      v153 = qword_100026E08;
      fsckPrint(&v151, 205, v21, v22, v23, v24, v25, v26, v146);
      if (debug)
      {
        v151 = ctx;
        v152 = *&qword_100026DF8;
        v153 = qword_100026E08;
        fsck_printf(&v151, "Directory /\n", v118, v119, v120, v121, v122, v123, v148);
      }

      if (v10)
      {
        (a1[1])(503, 85, (dword_100026D0C - 2), &v154 + 4, *a1, a1[3]);
        fsck_exfat_recurse(qword_100026D80, &v154 + 1);
        if (HIDWORD(v154) < dword_100026D0C - 2)
        {
          HIDWORD(v154) = dword_100026D0C - 2;
        }

        (a1[2])(503, *a1, a1[3]);
        HIDWORD(v154) = 0;
        v27 = 509;
      }

      else
      {
        fsck_exfat_recurse(qword_100026D80, &v154 + 1);
      }

      if ((byte_100026DD6 & 1) != 0 || dword_100026DC0 == -1)
      {
        v151 = ctx;
        v152 = *&qword_100026DF8;
        v153 = qword_100026E08;
        fsckPrint(&v151, 424, v21, v22, v23, v24, v25, v26, v148);
        v151 = ctx;
        v152 = *&qword_100026DF8;
        v153 = qword_100026E08;
        v130 = fsckAskPrompt(&v151, "Replace? ", v124, v125, v126, v127, v128, v129, v149);
        if (v130 == 1)
        {
          boot_region = fsck_exfat_upcase_replace(v130, v131, v21, v22, v23, v24, v25, v26);
          if (boot_region)
          {
            goto LABEL_127;
          }
        }

        else
        {
          LOBYTE(word_100026DD2) = 1;
        }
      }

      if (v10)
      {
        (a1[1])(504, 3, 3, &v154 + 4, *a1, a1[3]);
        v27 = 510;
      }

      v151 = ctx;
      v152 = *&qword_100026DF8;
      v153 = qword_100026E08;
      v132 = fsckPrint(&v151, 206, v21, v22, v23, v24, v25, v26, v148);
      boot_region = fsck_exfat_bitmap_verify(v132, v133, v134, v135, v136, v137, v138, v139);
      if (boot_region || (++HIDWORD(v154), boot_region = compare_boot_region(0, v20, v21, v22, v23, v24, v25, v26), boot_region) || (++HIDWORD(v154), boot_region = compare_boot_region(1, v20, v21, v22, v23, v24, v25, v26), boot_region))
      {
LABEL_127:
        v18 = boot_region;
        if (!v10)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (!v10)
      {
LABEL_85:
        v18 = fsck_exfat_cache_flush(boot_region, v20, v21, v22, v23, v24, v25, v26);
        ++HIDWORD(v154);
        if (!v18)
        {
          fsck_exfat_cache_dispose();
          ++HIDWORD(v154);
          if ((v150 & 2) != 0 && (word_100026DD2 & 1) == 0 && (word_100026DD2 & 0x100) == 0)
          {
            v151 = ctx;
            v152 = *&qword_100026DF8;
            v153 = qword_100026E08;
            if (fsckAskPrompt(&v151, "Mark volume clean? ", v110, v111, v112, v113, v114, v115, v147) == 1)
            {
              v116 = qword_100026CD8;
              *(qword_100026CD0 + 106) = v150 & 0xFFFD;
              if (pwrite(g, v116, qword_100026CE0, 0) != qword_100026CE0)
              {
                warn("Could not update main boot region");
                v18 = *__error();
                if (!v10)
                {
                  goto LABEL_20;
                }

                goto LABEL_133;
              }
            }
          }

          if (HIBYTE(word_100026DD2) == 1)
          {
            v151 = ctx;
            v152 = *&qword_100026DF8;
            v153 = qword_100026E08;
            fsckPrint(&v151, 108, v110, v111, v112, v113, v114, v115, byte_100026D3C);
            v18 = 202;
            if (!v10)
            {
              goto LABEL_20;
            }

LABEL_133:
            if (v18)
            {
              v140 = v27;
            }

            else
            {
              v140 = 506;
            }

            (a1[2])(v140, *a1, a1[3]);
            goto LABEL_20;
          }

          if (word_100026DD2 == 1)
          {
            v151 = ctx;
            v152 = *&qword_100026DF8;
            v153 = qword_100026E08;
            fsckPrint(&v151, 109, v110, v111, v112, v113, v114, v115, byte_100026D3C);
            v18 = 203;
            if (!v10)
            {
              goto LABEL_20;
            }

            goto LABEL_133;
          }

          v151 = ctx;
          v152 = *&qword_100026DF8;
          v153 = qword_100026E08;
          if (byte_100026DD4 == 1)
          {
            fsckPrint(&v151, 105, v110, v111, v112, v113, v114, v115, byte_100026D3C);
          }

          else
          {
            fsckPrint(&v151, 104, v110, v111, v112, v113, v114, v115, byte_100026D3C);
          }

          v18 = 0;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        goto LABEL_133;
      }

      ++HIDWORD(v154);
      (a1[2])(504, *a1, a1[3]);
      HIDWORD(v154) = 0;
    }

    boot_region = (a1[1])(506, 2, 2, &v154 + 4, *a1, a1[3]);
    LODWORD(v27) = 512;
    goto LABEL_85;
  }

  if ((word_100026DD2 & 1) != 0 || (byte_100026DD0 & 1) != 0 || byte_100026DD1 == 1)
  {
    v71 = __stderrp;
    v72 = "QUICKCHECK ONLY; CORRUPTION FOUND\n";
    v73 = 34;
LABEL_62:
    fwrite(v72, v73, 1uLL, v71);
    v18 = 201;
    goto LABEL_20;
  }

  if ((v70 & 4) != 0)
  {
    v71 = __stderrp;
    v72 = "QUICKCHECK ONLY; FILESYSTEM MARKED CORRUPT\n";
    v73 = 43;
    goto LABEL_62;
  }

  if ((v70 & 2) != 0)
  {
    fwrite("QUICKCHECK ONLY; FILESYSTEM DIRTY\n", 0x22uLL, 1uLL, __stderrp);
    v18 = 200;
  }

  else
  {
    fwrite("QUICKCHECK ONLY; FILESYSTEM CLEAN\n", 0x22uLL, 1uLL, __stderrp);
    v18 = 0;
  }

LABEL_20:
  if (qword_100026DE0)
  {
    *(qword_100026DE0 + 8) = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v9) / 0xF4240;
  }

  if (qword_100026CD8)
  {
    free(qword_100026CD8);
  }

  if (qword_100026D80)
  {
    fsck_exfat_dir_rele(qword_100026D80);
  }

  if (a1)
  {
    v34 = a1[4];
  }

  else
  {
    v34 = 0;
  }

  fsck_exfat_bitmap_deinit(v34);
  if (qword_100026DB0)
  {
    free(qword_100026DB0);
  }

  if (qword_100026DE0)
  {
    fsck_exfat_send_telemetry_event();
    free(qword_100026DE0);
  }

  return v18;
}

uint64_t fsck_set_messages_func(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  dword_100026DD8 = a5;
  dword_100026CCC = -1;
  *&ctx = result;
  *(&ctx + 1) = a2;
  qword_100026E00 = a4;
  qword_100026E08 = a6;
  qword_100026DF8 = a3;
  return result;
}

_BYTE *convertfmt(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = 1;
  do
  {
    a1 = strchr(a1 + 1, 37);
    v2 += 5;
  }

  while (a1);
  v3 = strlen(v1);
  v4 = malloc_type_calloc(1uLL, v3 + v2, 0xEA5D9A0EuLL);
  v5 = v4;
  if (v4)
  {
    v6 = *v1;
    v7 = v4;
    if (*v1)
    {
      v8 = 0;
      v9 = 0;
      v10 = v4;
      do
      {
        if (v8)
        {
          v11 = v6 - 65;
          v12 = ((1 << (v6 - 65)) & 0x94E17D0094407DLL) == 0;
          v8 = v11 > 0x37 || v12;
          v7 = v10;
        }

        else
        {
          *v10 = v6;
          v7 = v10 + 1;
          if (*v1 == 37)
          {
            if (v1[1] == 37)
            {
              v8 = 0;
              v7 = v10 + 2;
              v10[1] = 37;
              ++v1;
            }

            else
            {
              v7 += sprintf(v10 + 1, "%d$@", ++v9);
              v8 = 1;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        v13 = *++v1;
        v6 = v13;
        v10 = v7;
      }

      while (v13);
    }

    *v7 = 0;
  }

  return v5;
}

uint64_t sub_100009D34(const __CFString *a1)
{
  v2 = CFStringCopyCStringUTF8(a1);
  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    v5 = 5381;
  }

  else
  {
    v4 = Length & 0x7FFFFFFF;
    LODWORD(v5) = 5381;
    do
    {
      v5 = (33 * v5 + v2[v4 - 1]);
    }

    while (v4-- > 1);
  }

  free(v2);
  return v5;
}

off_t format_buf_init()
{
  format_buf = malloc_type_malloc(0x20000uLL, 0xFF5A35E3uLL);
  if (!format_buf)
  {
    v8 = newfs_ctx;
    v9 = qword_100026E38;
    newfs_print(&v8, 16, v0, v1, v2, v3, v4, v5, "format buffer");
  }

  format_buf_used = 0;
  format_buf_offset = 0;
  fd = newfs_get_fd();
  return lseek(fd, 0, 0);
}

void format_buf_flush()
{
  if (format_buf_used)
  {
    fd = newfs_get_fd();
    if (write(fd, format_buf, format_buf_used) != format_buf_used)
    {
      v7 = newfs_ctx;
      v8 = qword_100026E38;
      newfs_print(&v7, 16, v1, v2, v3, v4, v5, v6, "flushing format buffer");
    }

    format_buf_used = 0;
  }
}

void format_buf_zero(size_t a1)
{
  v1 = a1;
  v2 = format_buf_used;
  if (format_buf_used + a1 >= 0x20000)
  {
    do
    {
      if (v1 >= 0x20000 - v2)
      {
        v3 = 0x20000 - v2;
      }

      else
      {
        v3 = v1;
      }

      bzero((format_buf + v2), v3);
      v1 -= v3;
      format_buf_used += v3;
      format_buf_offset += v3;
      format_buf_flush();
      v2 = format_buf_used;
    }

    while ((format_buf_used + v1) >> 17);
  }

  if (v1)
  {
    bzero((format_buf + v2), v1);
    format_buf_used += v1;
    format_buf_offset += v1;
  }
}

void format_buf_write(char *__src, size_t __n)
{
  v2 = __n;
  v4 = format_buf_used;
  if (format_buf_used + __n >= 0x20000)
  {
    do
    {
      if (v2 >= 0x20000 - v4)
      {
        v5 = 0x20000 - v4;
      }

      else
      {
        v5 = v2;
      }

      memcpy((format_buf + v4), __src, v5);
      v2 -= v5;
      format_buf_used += v5;
      format_buf_offset += v5;
      __src += v5;
      format_buf_flush();
      v4 = format_buf_used;
    }

    while ((format_buf_used + v2) >> 17);
  }

  if (v2)
  {
    memcpy((format_buf + v4), __src, v2);
    format_buf_used += v2;
    format_buf_offset += v2;
  }
}

uint64_t newfs_set_context_properties(uint64_t result, uint64_t a2, uint64_t a3)
{
  *&newfs_ctx = result;
  *(&newfs_ctx + 1) = a2;
  qword_100026E38 = a3;
  return result;
}

uint64_t newfs_print(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*result)
  {
    return (*result)(*(result + 16), a2, &a9);
  }

  return result;
}

void newfs_init_state()
{
  newfs_state = -1;
  dword_100026E50 = 0;
  qword_100026E48 = 0;
  qword_100026E60 = 0;
  qword_100026E68 = 0;
  qword_100026E58 = -1;
}

uint64_t format(uint64_t a1, void *a2)
{
  v4 = a2 && a2[1] && a2[2] && *a2 != 0;
  volume_name = newfs_get_volume_name();
  device_path = newfs_get_device_path();
  v171 = 0;
  fd = newfs_get_fd();
  if (v4)
  {
    (a2[1])(100, 10, 2, &v171, *a2, qword_100026E38);
  }

  sector_size = newfs_get_sector_size();
  if (!sector_size)
  {
    v172 = newfs_ctx;
    v173 = qword_100026E38;
    sector_size = 512;
    newfs_print(&v172, 207, v8, v9, v10, v11, v12, v13, device_path);
  }

  total_sectors = *(a1 + 8);
  if (!total_sectors)
  {
    total_sectors = newfs_get_total_sectors();
    *(a1 + 8) = total_sectors;
    if (total_sectors == -1)
    {
      v172 = newfs_ctx;
      v173 = qword_100026E38;
      total_sectors = 0x2000;
      newfs_print(&v172, 208, v8, v9, v10, v11, v12, v13, device_path);
      *(a1 + 8) = 0x2000;
    }
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    *(a1 + 8) = total_sectors * sector_size / v16;
    sector_size = v16;
  }

  else
  {
    *(a1 + 16) = sector_size;
  }

  ++v171;
  if ((12 * sector_size) > 0x20000)
  {
    v172 = newfs_ctx;
    v173 = qword_100026E38;
    newfs_print(&v172, 200, v8, v9, v10, v11, v12, v13, sector_size);
LABEL_22:
    v20 = 22;
    goto LABEL_31;
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = *(a1 + 20);
    v19 = v17 * sector_size;
    if (v18 && v18 != v19)
    {
      v172 = newfs_ctx;
      v173 = qword_100026E38;
      newfs_print(&v172, 201, v8, v9, v10, v11, v12, v13, v17);
      goto LABEL_22;
    }

    if (!v18)
    {
      *(a1 + 20) = v19;
      if (v19 >= 0x2000001)
      {
        v172 = newfs_ctx;
        v173 = qword_100026E38;
        newfs_print(&v172, 202, v8, v9, v10, v11, v12, v13, v17);
        goto LABEL_22;
      }
    }
  }

  temp_buffer = malloc_type_calloc(1uLL, 0x20000uLL, 0xD4A4F4D7uLL);
  if (!temp_buffer || (v27 = malloc_type_malloc(*(a1 + 16), 0xBE8B9C31uLL)) == 0)
  {
    v172 = newfs_ctx;
    v173 = qword_100026E38;
    newfs_print(&v172, 203, v21, v22, v23, v24, v25, v26, v169);
    v20 = 12;
LABEL_31:
    v29 = 107;
    if (!v4)
    {
      return v20;
    }

    goto LABEL_32;
  }

  v28 = v27;
  if (v4)
  {
    ++v171;
    (a2[2])(100, *a2, qword_100026E38);
    v171 = 0;
    v29 = 108;
  }

  else
  {
    v29 = 107;
  }

  if (*(a1 + 105) == 1)
  {
    check_reformat(a1, a2);
  }

  exfat_format_defaults(device_path, a1);
  *(a1 + 80) = *(a1 + 20) / *(a1 + 16);
  if (volume_name)
  {
    v172 = newfs_ctx;
    v173 = qword_100026E38;
    newfs_print(&v172, 300, v32, v33, v34, v35, v36, v37, volume_name);
    v38 = *(a1 + 16);
  }

  v39 = *a1;
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 301, v32, v33, v34, v35, v36, v37, v39);
  v40 = *(a1 + 8);
  v41 = v40 * *(a1 + 16);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 302, v42, v43, v44, v45, v46, v47, v40);
  v48 = *(a1 + 16);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 303, v49, v50, v51, v52, v53, v54, v48);
  v55 = *(a1 + 20);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 304, v56, v57, v58, v59, v60, v61, v55);
  v62 = *(a1 + 24);
  v63 = *(a1 + 16) * v62;
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 305, v64, v65, v66, v67, v68, v69, v62);
  v70 = *(a1 + 28);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 306, v71, v72, v73, v74, v75, v76, v70);
  v77 = *(a1 + 44);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 307, v78, v79, v80, v81, v82, v83, v77);
  v84 = *(a1 + 32);
  v85 = *(a1 + 16) * v84;
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 308, v86, v87, v88, v89, v90, v91, v84);
  v92 = *(a1 + 36);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 309, v93, v94, v95, v96, v97, v98, v92);
  v99 = *(a1 + 40);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 310, v100, v101, v102, v103, v104, v105, v99);
  v106 = *(a1 + 72);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 311, v107, v108, v109, v110, v111, v112, v106);
  if (*(a1 + 44) == 2)
  {
    v119 = *(a1 + 76);
    v172 = newfs_ctx;
    v173 = qword_100026E38;
    newfs_print(&v172, 312, v113, v114, v115, v116, v117, v118, v119);
  }

  v120 = *(a1 + 84);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 313, v113, v114, v115, v116, v117, v118, v120);
  v121 = *(a1 + 88);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 314, v122, v123, v124, v125, v126, v127, v121);
  v128 = *(a1 + 92);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 315, v129, v130, v131, v132, v133, v134, v128);
  v135 = *(a1 + 96);
  v172 = newfs_ctx;
  v173 = qword_100026E38;
  newfs_print(&v172, 316, v136, v137, v138, v139, v140, v141, v135);
  if (*(a1 + 104))
  {
    v20 = 0;
    goto LABEL_82;
  }

  if (v4)
  {
    (a2[1])(102, 25, 1, &v171, *a2, qword_100026E38);
    v29 = 109;
  }

  else
  {
    v29 = 107;
  }

  if (*(&newfs_ctx + 1))
  {
    v142 = *(a1 + 16);
    v143 = *(a1 + 32) + (*(a1 + 96) - 1) * *(a1 + 80);
    *&v172 = 0;
    *(&v172 + 1) = fd;
    v173 = v142;
    v174 = 0;
    v175 = v143;
    v176 = 0;
    v144 = (*(&newfs_ctx + 1))(qword_100026E38, &v172);
    ++v171;
    if (v144)
    {
      v20 = v144;
      v172 = newfs_ctx;
      v173 = qword_100026E38;
      newfs_print(&v172, 401, v145, v146, v147, v148, v149, v150, "format");
      goto LABEL_82;
    }
  }

  else
  {
    ++v171;
  }

  if (v4)
  {
    (a2[2])(102, *a2, qword_100026E38);
    v171 = 0;
    (a2[1])(103, 10, 3, &v171, *a2, qword_100026E38);
    v29 = 110;
  }

  v151 = temp_buffer;
  if (!*(a1 + 100))
  {
    bzero(temp_buffer, *(a1 + 16));
    *(v151 + 7) = 538976340;
    *v151 = *"\xEB\x76\x90EXFAT   ";
    *(v151 + 64) = *a1;
    *(v151 + 72) = *(a1 + 8);
    *(v151 + 80) = *(a1 + 24);
    *(v151 + 84) = *(a1 + 28);
    *(v151 + 88) = *(a1 + 32);
    *(v151 + 92) = *(a1 + 36);
    *(v151 + 100) = *(a1 + 40);
    *(v151 + 104) = 256;
    v152 = *(a1 + 16);
    if (v152 < 2)
    {
      v153 = 0;
    }

    else
    {
      v153 = 0;
      do
      {
        ++v153;
        v154 = v152 > 3;
        v152 >>= 1;
      }

      while (v154);
    }

    *(v151 + 108) = v153;
    v155 = *(a1 + 80);
    if (v155 < 2)
    {
      v156 = 0;
    }

    else
    {
      v156 = 0;
      do
      {
        ++v156;
        v154 = v155 > 3;
        v155 >>= 1;
      }

      while (v154);
    }

    v157 = *(a1 + 44);
    *&v158 = 0xF4F4F4F4F4F4F4F4;
    *(&v158 + 1) = 0xF4F4F4F4F4F4F4F4;
    *(v151 + 120) = v158;
    *(v151 + 109) = v156;
    *(v151 + 110) = v157;
    *(v151 + 111) = 0x80;
    *(v151 + 472) = v158;
    *(v151 + 488) = v158;
    *(v151 + 440) = v158;
    *(v151 + 456) = v158;
    *(v151 + 408) = v158;
    *(v151 + 424) = v158;
    *(v151 + 376) = v158;
    *(v151 + 392) = v158;
    *(v151 + 344) = v158;
    *(v151 + 360) = v158;
    *(v151 + 312) = v158;
    *(v151 + 328) = v158;
    *(v151 + 280) = v158;
    *(v151 + 296) = v158;
    *(v151 + 248) = v158;
    *(v151 + 264) = v158;
    *(v151 + 216) = v158;
    *(v151 + 232) = v158;
    *(v151 + 184) = v158;
    *(v151 + 200) = v158;
    *(v151 + 152) = v158;
    *(v151 + 168) = v158;
    *(v151 + 136) = v158;
    *(v151 + 502) = 0xF4F4F4F4F4F4F4F4;
  }

  v159 = *(a1 + 96);
  *(v151 + 96) = v159;
  *(v151 + 112) = (100 * v159 - 100) / *(a1 + 36);
  v160 = 2;
  *(v151 + 106) = 0;
  *(v151 + 510) = -21931;
  do
  {
    *(temp_buffer + (*(a1 + 16) * v160 - 4)) = 0;
    *(temp_buffer + (*(a1 + 16) * v160 - 3)) = 0;
    *(temp_buffer + (*(a1 + 16) * v160 - 2)) = 85;
    *(temp_buffer + (*(a1 + 16) * v160++ - 1)) = -86;
  }

  while (v160 != 10);
  exfat_set_boot_checksum(temp_buffer, *(a1 + 16));
  ++v171;
  memmove(v28, temp_buffer, *(a1 + 16));
  bzero(temp_buffer, *(a1 + 16));
  ++v171;
  format_buf_init();
  format_buf_write(temp_buffer, (12 * *(a1 + 16)));
  format_buf_write(temp_buffer, (12 * *(a1 + 16)));
  format_buf_zero_to_offset(*(a1 + 16) * *(a1 + 24));
  ++v171;
  if (v4)
  {
    (a2[2])(103, *a2, qword_100026E38);
    v171 = 0;
    (a2[1])(104, 10, 3, &v171, *a2, qword_100026E38);
    fat_write(a1, &v171);
    v29 = 0;
  }

  else
  {
    fat_write(a1, &v171);
    if (!a2)
    {
      bitmap_write(a1, &v171);
      goto LABEL_76;
    }
  }

  (a2[2])(104, *a2, qword_100026E38);
  v171 = 0;
  if (v4)
  {
    (a2[1])(105, 10, *(a1 + 44), &v171, *a2, qword_100026E38);
    bitmap_write(a1, &v171);
    (a2[2])(105, *a2, qword_100026E38);
    v171 = 0;
    (a2[1])(106, 10, 4, &v171, *a2, qword_100026E38);
    v29 = 111;
  }

  else
  {
    bitmap_write(a1, &v171);
    (a2[2])(105, *a2, qword_100026E38);
    v171 = 0;
  }

LABEL_76:
  upcase_write(a1);
  ++v171;
  root_write(a1);
  ++v171;
  format_buf_flush();
  ++v171;
  v161 = pwrite(fd, v28, *(a1 + 16), (12 * *(a1 + 16)));
  if (v161 == *(a1 + 16))
  {
    if (pwrite(fd, v28, v161, 0) == *(a1 + 16))
    {
      v20 = 0;
      ++v171;
      goto LABEL_82;
    }

    v172 = newfs_ctx;
    v173 = qword_100026E38;
    v168 = 206;
  }

  else
  {
    v172 = newfs_ctx;
    v173 = qword_100026E38;
    v168 = 205;
  }

  newfs_print(&v172, v168, v162, v163, v164, v165, v166, v167, v170);
  v20 = *__error();
LABEL_82:
  free(v28);
  if (!v4)
  {
    return v20;
  }

LABEL_32:
  if (v20)
  {
    v30 = v29;
  }

  else
  {
    v30 = 106;
  }

  (a2[2])(v30, *a2, qword_100026E38);
  return v20;
}

void check_reformat(uint64_t a1, void *a2)
{
  v69 = 0;
  fd = newfs_get_fd();
  if (lseek(fd, 0, 0) || (v5 = (12 * *(a1 + 16)), v6 = newfs_get_fd(), read(v6, temp_buffer, v5) != v5))
  {
    v15 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v13 = temp_buffer;
  if (*temp_buffer != 0x54414658459076EBLL || *(temp_buffer + 3) != 0x2020205441465845)
  {
    v15 = 0;
LABEL_9:
    v16 = 108;
    goto LABEL_10;
  }

  if (a2)
  {
    (a2[1])(101, 25, *(temp_buffer + 92), &v69, *a2, qword_100026E38);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  if (*(v13 + 104) != 256)
  {
    v67 = newfs_ctx;
    v68 = qword_100026E38;
    v21 = 215;
    goto LABEL_25;
  }

  v17 = *(v13 + 72);
  if (v17 != *(a1 + 8) || (v18 = *(v13 + 108), v19 = 1 << v18, (1 << v18) != *(a1 + 16)) || (v20 = *(v13 + 109), (v20 + v18) >= 0x1A))
  {
    v67 = newfs_ctx;
    v68 = qword_100026E38;
    v21 = 216;
LABEL_25:
    newfs_print(&v67, v21, v7, v8, v9, v10, v11, v12, v58);
    goto LABEL_9;
  }

  v22 = *(v13 + 110);
  if ((v22 - 3) < 0xFFFFFFFE || (v23 = *(v13 + 80), v24 = *(v13 + 84), v25 = *(v13 + 88), v25 < v23 + v24 * v22))
  {
    v67 = newfs_ctx;
    v68 = qword_100026E38;
    v21 = 217;
    goto LABEL_25;
  }

  v26 = *(v13 + 92);
  if ((v26 << v20) + v25 > v17)
  {
    v67 = newfs_ctx;
    v68 = qword_100026E38;
    v21 = 218;
    goto LABEL_25;
  }

  v27 = v19 << v20;
  v28 = *(a1 + 20);
  if (v28 && v28 != v27)
  {
    v67 = newfs_ctx;
    v68 = qword_100026E38;
    v21 = 219;
    goto LABEL_25;
  }

  *a1 = *(v13 + 64);
  *(a1 + 20) = v27;
  *(a1 + 24) = v23;
  *(a1 + 28) = v24;
  *(a1 + 32) = v25;
  *(a1 + 36) = v26;
  *(a1 + 40) = *(v13 + 100);
  *(a1 + 44) = v22;
  if (*(a1 + 48) == -1)
  {
    v62 = v18;
    v63 = (v19 << v20);
    v59 = v23;
    v60 = v25;
    v61 = v20;
    v66 = v15;
    v65 = v13;
    v29 = *(v13 + 96);
    v30 = malloc_type_malloc(1 << v18, 0xF5DEB9BuLL);
    if (!v30)
    {
      v67 = newfs_ctx;
      v68 = qword_100026E38;
      newfs_print(&v67, 220, v31, v32, v33, v34, v35, v36, v58);
LABEL_56:
      v16 = 108;
      v13 = v65;
      v15 = v66;
      goto LABEL_10;
    }

    v37 = v30;
    v64 = v29;
    if (v29 >= 2)
    {
      v38 = v26 + 1;
      if (v29 <= v38)
      {
        while (1)
        {
          if (v63)
          {
            v39 = (((v64 - 2) << v61) + v60) << v62;
            while (2)
            {
              v40 = newfs_get_fd();
              if (pread(v40, v37, v19, v39) != v19)
              {
                v67 = newfs_ctx;
                v68 = qword_100026E38;
                newfs_print(&v67, 221, v41, v42, v43, v44, v45, v46, v64);
                goto LABEL_62;
              }

              v47 = 0;
              do
              {
                if (v37[v47] == 131)
                {
                  v48 = v37[v47 + 1];
                  if ((v48 - 1) <= 0xA)
                  {
                    *(a1 + 48) = v48;
                    memcpy((a1 + 50), &v37[v47 + 2], 2 * v48);
                    goto LABEL_58;
                  }
                }

                else if (!v37[v47])
                {
                  goto LABEL_58;
                }

                v47 += 32;
              }

              while (v47 < v19);
              v39 += v19;
              if ((v39 - ((((v64 - 2) << v61) + v60) << v62)) < v63)
              {
                continue;
              }

              break;
            }
          }

          v49 = newfs_get_fd();
          if (pread(v49, v37, v19, (((4 * v64) >> v62) + v59) << v62) != v19)
          {
            break;
          }

          v56 = *&v37[(4 * v64) & (v19 - 1)];
          ++v69;
          v64 = v56;
          if (v56 < 2 || v56 > v38)
          {
            goto LABEL_58;
          }
        }

        v67 = newfs_ctx;
        v68 = qword_100026E38;
        newfs_print(&v67, 222, v50, v51, v52, v53, v54, v55, v64);
LABEL_62:
        free(v37);
        goto LABEL_56;
      }
    }

LABEL_58:
    free(v37);
    v13 = v65;
    v15 = v66;
  }

  v67 = newfs_ctx;
  v68 = qword_100026E38;
  newfs_print(&v67, 317, v7, v8, v9, v10, v11, v12, v58);
  *(a1 + 100) = 1;
  v16 = 101;
LABEL_10:
  if (a2)
  {
    if (v15)
    {
      v69 = *(v13 + 92);
    }

    else
    {
      (a2[1])(101, 20, 1, &v69, *a2, qword_100026E38);
    }

    (a2[2])(v16, *a2, qword_100026E38);
  }
}

unint64_t exfat_format_defaults(unint64_t result, uint64_t a2)
{
  if (!*(a2 + 100))
  {
    v3 = is_SDXC(result);
    v4 = &SDXC_defaults;
    if (!v3)
    {
      v4 = &disk_defaults;
    }

    v5 = v4 - 8;
    do
    {
      v6 = *(v5 + 3) - 1;
      v5 += 16;
    }

    while (v6 < *(a2 + 8) * *(a2 + 16));
    partition_offset = newfs_get_partition_offset();
    if (partition_offset == -1)
    {
      v34 = newfs_ctx;
      v35 = qword_100026E38;
      newfs_print(&v34, 209, v8, v9, v10, v11, v12, v13, 0);
      partition_offset = 0;
    }

    v14 = *(a2 + 16);
    *a2 = partition_offset / v14;
    v15 = *(a2 + 44);
    if (!v15)
    {
      v15 = 1;
      *(a2 + 44) = 1;
    }

    v16 = *(a2 + 20);
    if (!v16)
    {
      v16 = *v5;
      *(a2 + 20) = *v5;
    }

    v17 = v16 / v14;
    v18 = *(v5 + 1) / v14;
    if (0x18 % v18)
    {
      v19 = v18 - 0x18 % v18 + 24;
    }

    else
    {
      v19 = 24;
    }

    *(a2 + 24) = v19;
    v20 = v15;
    LODWORD(v21) = v19;
    do
    {
      v21 = (v21 + v18);
      v22 = (*(a2 + 8) - v21) / v17;
      v23 = 4 * v22 + 8;
      if (v23 % v14)
      {
        v24 = v23 / v14 + 1;
      }

      else
      {
        v24 = v23 / v14;
      }

      if (v24 % v18)
      {
        v25 = v18 - v24 % v18;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25 + v24;
      result = (v21 - v19);
    }

    while (v26 * v20 > result);
    v27 = -1;
    if (v26 >= 0xFFFFFFFF)
    {
      v28 = -1;
    }

    else
    {
      v28 = v26;
    }

    *(a2 + 28) = v28;
    *(a2 + 32) = v21;
    if (v22 < 0xFFFFFFFF)
    {
      v27 = v22;
    }

    *(a2 + 36) = v27;
    if (!*(a2 + 40))
    {
      result = time(0);
      *(a2 + 40) = result;
    }
  }

  *(a2 + 72) = 2;
  if ((*(a2 + 36) & 7) != 0)
  {
    v29 = (*(a2 + 36) >> 3) + 1;
  }

  else
  {
    v29 = *(a2 + 36) >> 3;
  }

  *(a2 + 84) = v29;
  v30 = *(a2 + 20);
  v31 = v29 / v30;
  if (v29 % v30)
  {
    ++v31;
  }

  v32 = v31 + 2;
  if (*(a2 + 44) == 2)
  {
    *(a2 + 76) = v32;
    v32 += v31;
  }

  *(a2 + 88) = v32;
  *(a2 + 92) = 5836;
  if (0x16CC / v30 * v30 == 5836)
  {
    v33 = 0x16CC / v30;
  }

  else
  {
    v33 = 0x16CC / v30 + 1;
  }

  *(a2 + 96) = v32 + v33;
  return result;
}

uint64_t ilog2(unsigned int a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  else
  {
    v1 = 0;
    do
    {
      ++v1;
      v2 = a1 > 3;
      a1 >>= 1;
    }

    while (v2);
  }

  return v1;
}

uint64_t exfat_set_boot_checksum(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    v4 = 11 * a2;
    if ((11 * a2) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 11 * a2;
    }

    do
    {
      if ((v3 - 106) > 6 || ((1 << (v3 - 106)) & 0x43) == 0)
      {
        HIDWORD(v7) = v2;
        LODWORD(v7) = v2;
        v2 = (v7 >> 1) + *(result + v3);
      }

      ++v3;
    }

    while (v5 != v3);
  }

  else
  {
    v4 = 0;
    v2 = 0;
  }

  if (v4 < 12 * a2)
  {
    v8 = 0;
    v9 = v4 + result;
    v10 = 12 * a2 + result;
    if (v4 + result + 4 > v10)
    {
      v10 = v4 + result + 4;
    }

    v11 = (v10 + ~v4 - result) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = (v9 + 8);
    do
    {
      v15 = vdupq_n_s64(v8);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_100016EC0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v2;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v2;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_100016EB0)))).i32[1])
      {
        *v14 = v2;
        v14[1] = v2;
      }

      v8 += 4;
      v14 += 4;
    }

    while (v13 != v8);
  }

  return result;
}

void fat_write(_DWORD *a1, _DWORD *a2)
{
  v4 = temp_buffer;
  bzero(temp_buffer, 0x20000uLL);
  *v4 = -8;
  v5 = a1[18];
  v6 = a1[21];
  v7 = a1[5];
  if (v6 % v7)
  {
    v8 = v6 / v7 + 1;
  }

  else
  {
    v8 = v6 / v7;
  }

  if (v8 < 2)
  {
    v9 = a1[18];
  }

  else
  {
    do
    {
      v9 = v5 + 1;
      *(v4 + v5) = v5 + 1;
      --v8;
      ++v5;
    }

    while (v8 > 1);
  }

  ++*a2;
  *(v4 + v9) = -1;
  v10 = a1[22];
  v11 = a1[23];
  v12 = a1[5];
  if (v11 % v12)
  {
    v13 = v11 / v12 + 1;
  }

  else
  {
    v13 = v11 / v12;
  }

  if (v13 < 2)
  {
    v14 = a1[22];
  }

  else
  {
    do
    {
      v14 = v10 + 1;
      *(v4 + v10) = v10 + 1;
      --v13;
      ++v10;
    }

    while (v13 > 1);
  }

  ++*a2;
  *(v4 + v14) = -1;
  *(v4 + a1[24]) = -1;
  v15 = a1[4];
  if (a1[11])
  {
    v16 = 0;
    v17 = v15 * a1[7];
    do
    {
      if (v17 <= 0x20000)
      {
        format_buf_write(temp_buffer, v17);
      }

      else
      {
        format_buf_write(temp_buffer, 0x20000uLL);
        format_buf_zero(v17 - 0x20000);
      }

      ++v16;
    }

    while (v16 < a1[11]);
    v15 = a1[4];
  }

  format_buf_zero_to_offset(v15 * a1[8]);
  ++*a2;
}

void bitmap_write(_DWORD *a1, _DWORD *a2)
{
  v4 = a1[24];
  v5 = v4 - 1;
  v6 = temp_buffer;
  bzero(temp_buffer, 0x20000uLL);
  if ((v4 - 1) >= 0x20)
  {
    v7 = v4 - 33;
    memset(v6, 255, ((v7 >> 3) & 0x1FFFFFFC) + 4);
    v6 = (v6 + ((v7 >> 3) & 0x1FFFFFFC) + 4);
    v5 = v7 & 0x1F;
  }

  if (v5)
  {
    *v6 = 0xFFFFFFFF >> -v5;
  }

  v8 = a1[21];
  v9 = a1[5];
  v10 = v8 % v9;
  v11 = v9 - v8 % v9;
  if (!v10)
  {
    v11 = 0;
  }

  if (a1[11])
  {
    v12 = 0;
    v13 = v11 + v8;
    do
    {
      if (v13 <= 0x20000)
      {
        format_buf_write(temp_buffer, v13);
      }

      else
      {
        format_buf_write(temp_buffer, 0x20000uLL);
        format_buf_zero(v13 - 0x20000);
      }

      ++*a2;
      ++v12;
    }

    while (v12 < a1[11]);
  }
}

void upcase_write(uint64_t a1)
{
  v2 = *(a1 + 92);
  v3 = *(a1 + 20);
  v4 = v2 % v3;
  v5 = v3 - v2 % v3;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = (v5 + v2);
  format_buf_write(&upcase_table, v2);
  v7 = v6 - *(a1 + 92);

  format_buf_zero(v7);
}

void root_write(uint64_t a1)
{
  v2 = temp_buffer;
  *temp_buffer = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = -125;
  v3 = *(a1 + 48);
  if (v3 <= 0xB)
  {
    *(v2 + 1) = v3;
    memcpy((v2 + 2), (a1 + 50), 2 * *(a1 + 48));
  }

  *(v2 + 32) = -127;
  *(v2 + 52) = *(a1 + 72);
  *(v2 + 56) = *(a1 + 84);
  if (*(a1 + 44) == 2)
  {
    *(v2 + 64) = 385;
    *(v2 + 84) = *(a1 + 76);
    *(v2 + 88) = *(a1 + 84);
    v4 = v2 + 96;
  }

  else
  {
    v4 = v2 + 64;
  }

  *v4 = -126;
  v5 = *(a1 + 92);
  if (v5)
  {
    v6 = 0;
    v7 = &upcase_table;
    do
    {
      HIDWORD(v8) = v6;
      LODWORD(v8) = v6;
      v9 = *v7++;
      v6 = (v8 >> 1) + v9;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 4) = v6;
  *(v4 + 20) = *(a1 + 88);
  *(v4 + 24) = *(a1 + 92);
  format_buf_write(temp_buffer, 0x80uLL);
  v10 = *(a1 + 20) - 128;

  format_buf_zero(v10);
}

BOOL is_SDXC(uint64_t a1)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v4 = *(a1 + 5);
    v3 = a1 + 5;
    v5 = (v4 == 114 ? v3 + 1 : v3);
    v6 = IOBSDNameMatching(kIOMainPortDefault, 0, v5);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Card Characteristics", kCFAllocatorDefault, 3u);
      if (!v9)
      {
        v2 = 0;
        goto LABEL_15;
      }

      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v10, @"Card Type");
        v2 = Value;
        if (!Value)
        {
LABEL_13:
          CFRelease(v10);
LABEL_15:
          IOObjectRelease(v8);
          return v2;
        }

        v13 = CFGetTypeID(Value);
        if (v13 == CFStringGetTypeID())
        {
          v2 = CFEqual(v2, @"SDXC") != 0;
          goto LABEL_13;
        }
      }

      v2 = 0;
      goto LABEL_13;
    }
  }

  return 0;
}

unint64_t get_uint32(uint64_t a1, char *__str, int *a3)
{
  __endptr = 0;
  v6 = strtoul(__str, &__endptr, 0);
  if (__endptr == __str)
  {
    goto LABEL_4;
  }

  v13 = *__endptr;
  if (*__endptr)
  {
    if (__endptr[1])
    {
LABEL_4:
      v18 = newfs_ctx;
      v19 = qword_100026E38;
      goto LABEL_5;
    }

    v17 = v13 - 71;
    if ((v13 - 71) > 0x26)
    {
      goto LABEL_22;
    }

    if (((1 << v17) & 0x100000001) != 0)
    {
      v15 = v6 << 30;
      goto LABEL_8;
    }

    if (((1 << v17) & 0x1000000010) != 0)
    {
      v15 = v6 << 10;
      goto LABEL_8;
    }

    if (((1 << v17) & 0x4000000040) == 0)
    {
LABEL_22:
      v18 = newfs_ctx;
      v19 = qword_100026E38;
LABEL_5:
      newfs_print(&v18, 210, v7, v8, v9, v10, v11, v12, a1);
      if (a3)
      {
        v14 = 22;
LABEL_12:
        *a3 = v14;
        return 0xFFFFFFFFLL;
      }

      return 0xFFFFFFFFLL;
    }

    v15 = v6 << 20;
  }

  else
  {
    v15 = v6;
  }

LABEL_8:
  if (v15 < v6 || HIDWORD(v15))
  {
    v18 = newfs_ctx;
    v19 = qword_100026E38;
    newfs_print(&v18, 211, v7, v8, v9, v10, v11, v12, a1);
    if (a3)
    {
      v14 = 84;
      goto LABEL_12;
    }

    return 0xFFFFFFFFLL;
  }

  return v15;
}

unint64_t get_uint64(uint64_t a1, char *__str, int *a3)
{
  __endptr = 0;
  v6 = strtoull(__str, &__endptr, 0);
  if (__endptr == __str)
  {
    goto LABEL_4;
  }

  v13 = *__endptr;
  if (!*__endptr)
  {
    return v6;
  }

  if (__endptr[1])
  {
LABEL_4:
    v18 = newfs_ctx;
    v19 = qword_100026E38;
    goto LABEL_5;
  }

  v16 = 50;
  if (*__endptr <= 0x66u)
  {
    if (*__endptr > 0x4Cu)
    {
      if (v13 != 77)
      {
        if (v13 != 80)
        {
          if (v13 != 84)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }

LABEL_29:
        v15 = v6 << v16;
        if (v6 << v16 >= v6)
        {
          return v15;
        }

        v18 = newfs_ctx;
        v19 = qword_100026E38;
        newfs_print(&v18, 211, v7, v8, v9, v10, v11, v12, a1);
        if (!a3)
        {
          return -1;
        }

        v14 = 84;
        goto LABEL_7;
      }

LABEL_28:
      v16 = 20;
      goto LABEL_29;
    }

    if (v13 != 71)
    {
      if (v13 != 75)
      {
        goto LABEL_23;
      }

LABEL_26:
      v16 = 10;
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (*__endptr <= 0x6Cu)
  {
    if (v13 != 103)
    {
      if (v13 != 107)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

LABEL_27:
    v16 = 30;
    goto LABEL_29;
  }

  switch(v13)
  {
    case 'm':
      goto LABEL_28;
    case 'p':
      goto LABEL_29;
    case 't':
LABEL_20:
      v16 = 40;
      goto LABEL_29;
  }

LABEL_23:
  v18 = newfs_ctx;
  v19 = qword_100026E38;
LABEL_5:
  newfs_print(&v18, 210, v7, v8, v9, v10, v11, v12, a1);
  if (a3)
  {
    v14 = 22;
LABEL_7:
    *a3 = v14;
  }

  return -1;
}

uint64_t wipefs(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = wipefs_alloc();
  if (v5)
  {
    v6 = v5;
    v7 = *(a2 + 8);
    strerror(v5);
    v33 = newfs_ctx;
    v34 = qword_100026E38;
    newfs_print(&v33, 212, v8, v9, v10, v11, v12, v13, v7);
  }

  else
  {
    v14 = *(a2 + 24);
    v15 = *(a2 + 28);
    v16 = wipefs_except_blocks();
    if (v16)
    {
      v6 = v16;
      v17 = *(a2 + 8);
      strerror(v16);
      v33 = newfs_ctx;
      v34 = qword_100026E38;
      newfs_print(&v33, 213, v18, v19, v20, v21, v22, v23, v17);
    }

    else
    {
      v24 = wipefs_wipe();
      v6 = v24;
      if (v24)
      {
        v25 = *(a2 + 8);
        strerror(v24);
        v33 = newfs_ctx;
        v34 = qword_100026E38;
        newfs_print(&v33, 214, v26, v27, v28, v29, v30, v31, v25);
      }
    }

    wipefs_free();
  }

  return v6;
}

BOOL verify_volume_name(unsigned __int8 *a1)
{
  memset(v8, 0, sizeof(v8));
  v2 = CONV_UTF8ToUnistr255(a1, 766, v8);
  result = 0;
  if (!v2 && LOWORD(v8[0]) <= 0xBu)
  {
    v4 = 0;
    do
    {
      v5 = a1[v4];
      if (v4)
      {
        v6 = 32;
      }

      else
      {
        v6 = 33;
      }

      if (v6 > v5)
      {
        break;
      }

      v7 = memchr("*/:<>?\\|", a1[v4], 0xAuLL) || v4 == 22;
      ++v4;
    }

    while (!v7);
    return v5 == 0;
  }

  return result;
}

uint64_t uuid_create_md5_from_name(unsigned __int8 *a1, const void *a2, const void *a3, CC_LONG a4)
{
  memset(&v9, 0, sizeof(v9));
  CC_MD5_Init(&v9);
  CC_MD5_Update(&v9, a2, 0x10u);
  CC_MD5_Update(&v9, a3, a4);
  result = CC_MD5_Final(a1, &v9);
  a1[6] = a1[6] & 0xF | 0x30;
  a1[8] = a1[8] & 0x3F | 0x80;
  return result;
}

id localizeFSCKMessage(id *a1, int a2, int a3, uint64_t a4)
{
  v8 = [*a1 connection];
  v9 = a1[1];
  if (fsck_get_quick())
  {
    goto LABEL_21;
  }

  v10 = &unk_100021C68;
  do
  {
    v12 = v10[10];
    v10 += 10;
    v11 = v12;
  }

  while (v12 != a2 && v11 != 0);
  v14 = v11 == a2 ? v10 : &fsck_messages_exfat;
  do
  {
    v16 = *v14;
    v14 += 10;
    v15 = v16;
  }

  while (v16 != a2 && v15 != 0);
  if (v15 != a2)
  {
LABEL_21:
    v20 = 0;
    v19 = 0;
  }

  else
  {
    v18 = [NSString stringWithUTF8String:*(v14 - 4)];
    v19 = [v8 localizedMessage:v18 table:@"fsck_appex" bundle:v9 arguments:a4];

    if (v19)
    {
      v20 = [v19 UTF8String];
      if (a3)
      {
        v21 = *(v14 - 6) - 1;
        if (v21 > 8)
        {
          v22 = 0;
        }

        else
        {
          v22 = *(&off_10001C718 + v21);
        }

        v24 = [NSString stringWithFormat:@"%@%s", v22, v20];
        [v8 logMessage:v24];
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

uint64_t fsckMsgsPrintFormat(id *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = localizeFSCKMessage(a1, a2, 1, a3);
    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000102B4();
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t fsckMsgsAskPrompt(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 connection];
  v6 = objc_autoreleasePoolPush();
  if (objc_opt_respondsToSelector())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v8 = v5;
    v9 = [NSString alloc];
    v10 = [NSString stringWithUTF8String:a2];
    v11 = [v9 initWithFormat:v10 arguments:a3];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000C384;
    v15[3] = &unk_10001C630;
    v17 = &v18;
    v12 = v7;
    v16 = v12;
    [v8 promptTrueFalse:v11 replyHandler:v15];

    dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v13 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = 1;
  }

  objc_autoreleasePoolPop(v6);

  return v13;
}

void sub_10000C36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fsckMsgsPrintRaw(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = [*a1 connection];
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 == 2)
  {
    v9 = [NSString stringWithUTF8String:a2];
    [v11 logLocalizedMessage:v9 table:@"fsck_appex" bundle:v6 arguments:a3];
  }

  else
  {
    if (v7 != 1)
    {
      goto LABEL_6;
    }

    v8 = [NSString alloc];
    v9 = [NSString stringWithUTF8String:a2];
    v10 = [v8 initWithFormat:v9 arguments:a3];
    [v11 logMessage:v10];
  }

LABEL_6:
}

void fsckMsgsPrintRawError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  fsckMsgsPrintRaw(a1, a3, a4);
  v5 = [NSString stringWithFormat:@"fsck error %d", a2];
  v6 = [NSException exceptionWithName:NSGenericException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

id localizeNewFSMessage(id *a1, int a2, int a3, uint64_t a4)
{
  v4 = a1;
  if (!a1)
  {
    v15 = 0;
    v8 = 0;
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v8 = *a1;
  v9 = &unk_100022C90;
  v4 = v4[2];
  do
  {
    v11 = v9[6];
    v9 += 6;
    v10 = v11;
  }

  while (v11 != a2 && v10 != 0);
  if (v10 != a2)
  {
    v15 = 0;
    goto LABEL_18;
  }

  v13 = fskit_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100010334(v8, v9);
  }

  v14 = [NSString stringWithUTF8String:*(v9 + 1)];
  v15 = [v8 localizedMessage:v14 table:@"newfs_appex" bundle:v4 arguments:a4];

  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = [v15 UTF8String];
  if (a3 && v8)
  {
    v17 = v9[4] - 1;
    if (v17 > 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(&off_10001C760 + v17);
    }

    v20 = [NSString stringWithFormat:@"%@%s", v18, v16];
    [v8 logMessage:v20];
  }

LABEL_19:

  return v16;
}

void sub_10000D660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D6A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000D6BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = 32;
    v12 = v9;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = 48;
    v12 = v8;
  }

  v13 = *(*(a1 + v11) + 8);
  v14 = v12;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;
}

void sub_10000D770(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = 32;
    v12 = v9;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = 48;
    v12 = v8;
  }

  v13 = *(*(a1 + v11) + 8);
  v14 = v12;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;
}

void sub_10000DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void startCallbackFsck(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id *a6)
{
  v10 = localizeFSCKMessage(a6, a1, 0, 0);
  if (v10)
  {

    startCallback(v10, a2, a3, a4, a5);
  }

  else
  {
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100010C10();
    }
  }
}

void endCallbackFsck(int a1, void *a2, id *a3)
{
  v5 = a2;
  v6 = localizeFSCKMessage(a3, a1, 0, 0);
  if (v6)
  {
    v7 = [NSString stringWithUTF8String:v6];
    [v5 endPhase:v7];
  }

  else
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100010C10();
    }
  }
}

void sub_10000DED0(uint64_t a1)
{
  v2 = fsck_exfat_check_fs((*(*(a1 + 48) + 8) + 32));
  v3 = [*(a1 + 32) totalUnitCount];
  if (v3 > [*(a1 + 32) completedUnitCount])
  {
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 32);
  if (v5)
  {
    CFRelease(v5);
    v4 = *(*(a1 + 48) + 8);
  }

  v6 = *(v4 + 64);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    free(v7);
  }

  if (v2)
  {
    v15 = NSLocalizedDescriptionKey;
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Unknown Error" value:&stru_10001C798 table:0];
    v16 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.fskit.exfat" code:v2 userInfo:v10];

    [*(a1 + 40) didCompleteWithError:v11];
  }

  else
  {
    [*(a1 + 40) didCompleteWithError:0];
  }

  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[exfatFileSystem startCheckWithTask:options:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: done", &v13, 0xCu);
  }
}

void sub_10000EB08(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000EB50(id *a1, int a2, uint64_t a3)
{
  if (a1)
  {

    localizeNewFSMessage(a1, a2, 1, a3);
  }

  else
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100010C4C();
    }
  }
}

uint64_t sub_10000EBB0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v5 = fskit_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100010ED8();
    }

    goto LABEL_19;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    v5 = fskit_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100010E58();
    }

LABEL_19:
    v24 = 22;
    goto LABEL_20;
  }

  v5 = v3;
  v6 = *(a1 + 8);
  v13 = v6;
  if (v6 && [v6 kind] == 1)
  {
    v14 = [FSBlockDeviceResource dynamicCast:v13];
    v15 = [v14 fileDescriptor];
    v17 = *(a2 + 8);
    v16 = (a2 + 8);
    if (v15 == v17)
    {
      *&v30 = 0;
      *(&v30 + 1) = &v30;
      v31 = 0x3032000000;
      v32 = sub_10000D6A4;
      v33 = sub_10000D6B4;
      v34 = 0;
      v18 = dispatch_group_create();
      dispatch_group_enter(v18);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10000FA3C;
      v27[3] = &unk_10001C6F8;
      v29 = &v30;
      v19 = v18;
      v28 = v19;
      [v5 wipeResource:v13 completionHandler:v27];
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100010D6C(v20);
      }

      dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      if (*(*(&v30 + 1) + 40))
      {
        v21 = fskit_std_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = [*(*(&v30 + 1) + 40) description];
          v23 = v22;
          sub_100010DF0([v22 UTF8String], v35, v21, v22);
        }

        v24 = [*(*(&v30 + 1) + 40) code];
      }

      else
      {
        v24 = 0;
      }

      _Block_object_dispose(&v30, 8);
      goto LABEL_16;
    }

    v26 = fskit_std_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100010CCC(v14, v16);
    }
  }

  else
  {
    v30 = newfs_ctx;
    v31 = qword_100026E38;
    newfs_print(&v30, 400, v7, v8, v9, v10, v11, v12, "wipeFSCallback");
  }

  v24 = 22;
LABEL_16:

LABEL_20:
  return v24;
}