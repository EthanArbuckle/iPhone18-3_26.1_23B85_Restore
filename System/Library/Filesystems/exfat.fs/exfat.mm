uint64_t sub_100000718(unsigned __int8 *a1, uint64_t a2, _WORD *a3)
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

      v13 = byte_100010000[v11 >> 3];
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

        else if (byte_100010000[v11 >> 3] == 2)
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
                if (!sub_100000C58(v22))
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

                v30 = &unk_1000043E0;
                v31 = &unk_100004580;
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
                        v35 = &unk_100004588 + 4 * v34;
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
          if (byte_100010000[v11 >> 3] != 3)
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

      v24 = byte_100003FE0[v11 >> 4];
      v25 = byte_100003FE0[v11 & 0xF];
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
      v26 = byte_100003FF0[(v11 - 32)];
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
    if (sub_100000C58(v22))
    {
      v7 = v41 + 1;
    }

    else
    {
      if (v41 >= 2)
      {
        sub_100000CB0((a3 + v8 + -2 * v41), v41);
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
    sub_100000CB0(&v9[-v7], v7);
  }

  result = 0;
LABEL_93:
  *a3 = (v9 - v4) >> 1;
  return result;
}

uint64_t sub_100000C58(unsigned int a1)
{
  if (a1 < 0x300)
  {
    return 0;
  }

  v1 = byte_100004060[a1 >> 8];
  if (!byte_100004060[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (byte_100004060[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

_WORD *sub_100000CB0(_WORD *result, unsigned int a2)
{
  do
  {
    if (byte_1000053DC[*result >> 8])
    {
      v2 = byte_1000053DC[256 * byte_1000053DC[*result >> 8] + *result];
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
      v6 = byte_1000053DC[v5 >> 8];
      if (byte_1000053DC[v5 >> 8])
      {
        LODWORD(v6) = byte_1000053DC[256 * v6 + *v4];
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

uint64_t sub_100000D40(_WORD *a1, _BYTE *a2, uint64_t a3)
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
            v13 = byte_1000068DC[v10 >> 8];
            if (byte_1000068DC[v10 >> 8])
            {
              if (v13 == 255 || ((byte_1000068DC[32 * v13 + 224 + (v10 >> 3)] >> (v10 & 7)) & 1) != 0)
              {
                v14 = v10 + 21504;
                if ((v10 + 21504) > 0x2BA4u)
                {
                  v5 = sub_100001238(v10, &v23) - 1;
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

      *v3++ = byte_100008A04[v16 & 0x3F];
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

_WORD *sub_1000010A8(_WORD *result, uint64_t a2)
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

uint64_t sub_1000010E0(char *a1, _BYTE *a2, uint64_t a3)
{
  result = 22;
  if (a1 && a2)
  {
    v7 = malloc_type_malloc(0x200uLL, 0x10000407EBBDD04uLL);
    if (v7)
    {
      v8 = v7;
      v9 = strlen(a1);
      sub_100000718(a1, v9, v8);
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

      sub_100000D40(v8, a2, 766);
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

char *sub_1000011B8(char *result, char *__s)
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

uint64_t sub_100001238(unsigned int a1, _WORD *a2)
{
  v2 = a2;
  if ((a1 + 1201) < 0x571u)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v3 = &unk_100006C1C;
  v4 = &unk_100007B40;
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
  v9 = &unk_100007B44 + 2 * (v7 & 0xFFF);
  v10 = &v14;
  if (v8 != 1)
  {
    v10 = (&unk_100007B44 + 2 * (v7 & 0xFFF));
  }

  if ((v7 & 0x8000) == 0)
  {
    LODWORD(result) = 0;
    goto LABEL_17;
  }

  result = sub_100001238(*v10, a2);
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

uint64_t sub_10000132C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *&xmmword_100011F08 = result;
  *(&xmmword_100011F08 + 1) = a2;
  qword_100011F18 = a3;
  return result;
}

uint64_t sub_100001340(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*result)
  {
    return (*result)(*(result + 16), a2, &a9);
  }

  return result;
}

void sub_100001380()
{
  dword_100011F20 = -1;
  dword_100011F30 = 0;
  qword_100011F28 = 0;
  qword_100011F40 = 0;
  qword_100011F48 = 0;
  qword_100011F38 = -1;
}

uint64_t sub_100001480(uint64_t a1, void *a2)
{
  v4 = a2 && a2[1] && a2[2] && *a2 != 0;
  v5 = sub_100001420();
  v6 = sub_10000142C();
  v171 = 0;
  v7 = sub_1000013F0();
  if (v4)
  {
    (a2[1])(100, 10, 2, &v171, *a2, qword_100011F18);
  }

  v14 = sub_100001408();
  if (!v14)
  {
    v172 = xmmword_100011F08;
    v173 = qword_100011F18;
    v14 = 512;
    sub_100001340(&v172, 207, v8, v9, v10, v11, v12, v13, v6);
  }

  v15 = *(a1 + 8);
  if (!v15)
  {
    v15 = sub_1000013FC();
    *(a1 + 8) = v15;
    if (v15 == -1)
    {
      v172 = xmmword_100011F08;
      v173 = qword_100011F18;
      v15 = 0x2000;
      sub_100001340(&v172, 208, v8, v9, v10, v11, v12, v13, v6);
      *(a1 + 8) = 0x2000;
    }
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    *(a1 + 8) = v15 * v14 / v16;
    v14 = v16;
  }

  else
  {
    *(a1 + 16) = v14;
  }

  ++v171;
  if ((12 * v14) > 0x20000)
  {
    v172 = xmmword_100011F08;
    v173 = qword_100011F18;
    sub_100001340(&v172, 200, v8, v9, v10, v11, v12, v13, v14);
LABEL_22:
    v20 = 22;
    goto LABEL_31;
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = *(a1 + 20);
    v19 = v17 * v14;
    if (v18 && v18 != v19)
    {
      v172 = xmmword_100011F08;
      v173 = qword_100011F18;
      sub_100001340(&v172, 201, v8, v9, v10, v11, v12, v13, v17);
      goto LABEL_22;
    }

    if (!v18)
    {
      *(a1 + 20) = v19;
      if (v19 >= 0x2000001)
      {
        v172 = xmmword_100011F08;
        v173 = qword_100011F18;
        sub_100001340(&v172, 202, v8, v9, v10, v11, v12, v13, v17);
        goto LABEL_22;
      }
    }
  }

  qword_100011EE8 = malloc_type_calloc(1uLL, 0x20000uLL, 0xD4A4F4D7uLL);
  if (!qword_100011EE8 || (v27 = malloc_type_malloc(*(a1 + 16), 0xBE8B9C31uLL)) == 0)
  {
    v172 = xmmword_100011F08;
    v173 = qword_100011F18;
    sub_100001340(&v172, 203, v21, v22, v23, v24, v25, v26, v169);
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
    (a2[2])(100, *a2, qword_100011F18);
    v171 = 0;
    v29 = 108;
  }

  else
  {
    v29 = 107;
  }

  if (*(a1 + 105) == 1)
  {
    sub_100001F98(a1, a2);
  }

  sub_10000248C(v6, a1);
  *(a1 + 80) = *(a1 + 20) / *(a1 + 16);
  if (v5)
  {
    v172 = xmmword_100011F08;
    v173 = qword_100011F18;
    sub_100001340(&v172, 300, v32, v33, v34, v35, v36, v37, v5);
    v38 = *(a1 + 16);
  }

  v39 = *a1;
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 301, v32, v33, v34, v35, v36, v37, v39);
  v40 = *(a1 + 8);
  v41 = v40 * *(a1 + 16);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 302, v42, v43, v44, v45, v46, v47, v40);
  v48 = *(a1 + 16);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 303, v49, v50, v51, v52, v53, v54, v48);
  v55 = *(a1 + 20);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 304, v56, v57, v58, v59, v60, v61, v55);
  v62 = *(a1 + 24);
  v63 = *(a1 + 16) * v62;
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 305, v64, v65, v66, v67, v68, v69, v62);
  v70 = *(a1 + 28);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 306, v71, v72, v73, v74, v75, v76, v70);
  v77 = *(a1 + 44);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 307, v78, v79, v80, v81, v82, v83, v77);
  v84 = *(a1 + 32);
  v85 = *(a1 + 16) * v84;
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 308, v86, v87, v88, v89, v90, v91, v84);
  v92 = *(a1 + 36);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 309, v93, v94, v95, v96, v97, v98, v92);
  v99 = *(a1 + 40);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 310, v100, v101, v102, v103, v104, v105, v99);
  v106 = *(a1 + 72);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 311, v107, v108, v109, v110, v111, v112, v106);
  if (*(a1 + 44) == 2)
  {
    v119 = *(a1 + 76);
    v172 = xmmword_100011F08;
    v173 = qword_100011F18;
    sub_100001340(&v172, 312, v113, v114, v115, v116, v117, v118, v119);
  }

  v120 = *(a1 + 84);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 313, v113, v114, v115, v116, v117, v118, v120);
  v121 = *(a1 + 88);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 314, v122, v123, v124, v125, v126, v127, v121);
  v128 = *(a1 + 92);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 315, v129, v130, v131, v132, v133, v134, v128);
  v135 = *(a1 + 96);
  v172 = xmmword_100011F08;
  v173 = qword_100011F18;
  sub_100001340(&v172, 316, v136, v137, v138, v139, v140, v141, v135);
  if (*(a1 + 104))
  {
    v20 = 0;
    goto LABEL_82;
  }

  if (v4)
  {
    (a2[1])(102, 25, 1, &v171, *a2, qword_100011F18);
    v29 = 109;
  }

  else
  {
    v29 = 107;
  }

  if (*(&xmmword_100011F08 + 1))
  {
    v142 = *(a1 + 16);
    v143 = *(a1 + 32) + (*(a1 + 96) - 1) * *(a1 + 80);
    *&v172 = 0;
    *(&v172 + 1) = v7;
    v173 = v142;
    v174 = 0;
    v175 = v143;
    v176 = 0;
    v144 = (*(&xmmword_100011F08 + 1))(qword_100011F18, &v172);
    ++v171;
    if (v144)
    {
      v20 = v144;
      v172 = xmmword_100011F08;
      v173 = qword_100011F18;
      sub_100001340(&v172, 401, v145, v146, v147, v148, v149, v150, "format");
      goto LABEL_82;
    }
  }

  else
  {
    ++v171;
  }

  if (v4)
  {
    (a2[2])(102, *a2, qword_100011F18);
    v171 = 0;
    (a2[1])(103, 10, 3, &v171, *a2, qword_100011F18);
    v29 = 110;
  }

  v151 = qword_100011EE8;
  if (!*(a1 + 100))
  {
    bzero(qword_100011EE8, *(a1 + 16));
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
    *(qword_100011EE8 + (*(a1 + 16) * v160 - 4)) = 0;
    *(qword_100011EE8 + (*(a1 + 16) * v160 - 3)) = 0;
    *(qword_100011EE8 + (*(a1 + 16) * v160 - 2)) = 85;
    *(qword_100011EE8 + (*(a1 + 16) * v160++ - 1)) = -86;
  }

  while (v160 != 10);
  sub_1000026AC(qword_100011EE8, *(a1 + 16));
  ++v171;
  memmove(v28, qword_100011EE8, *(a1 + 16));
  bzero(qword_100011EE8, *(a1 + 16));
  ++v171;
  sub_1000031F0();
  sub_1000033D4(qword_100011EE8, (12 * *(a1 + 16)));
  sub_1000033D4(qword_100011EE8, (12 * *(a1 + 16)));
  sub_1000033C4(*(a1 + 16) * *(a1 + 24));
  ++v171;
  if (v4)
  {
    (a2[2])(103, *a2, qword_100011F18);
    v171 = 0;
    (a2[1])(104, 10, 3, &v171, *a2, qword_100011F18);
    sub_1000027D4(a1, &v171);
    v29 = 0;
  }

  else
  {
    sub_1000027D4(a1, &v171);
    if (!a2)
    {
      sub_100002948(a1, &v171);
      goto LABEL_76;
    }
  }

  (a2[2])(104, *a2, qword_100011F18);
  v171 = 0;
  if (v4)
  {
    (a2[1])(105, 10, *(a1 + 44), &v171, *a2, qword_100011F18);
    sub_100002948(a1, &v171);
    (a2[2])(105, *a2, qword_100011F18);
    v171 = 0;
    (a2[1])(106, 10, 4, &v171, *a2, qword_100011F18);
    v29 = 111;
  }

  else
  {
    sub_100002948(a1, &v171);
    (a2[2])(105, *a2, qword_100011F18);
    v171 = 0;
  }

LABEL_76:
  sub_100002A50(a1);
  ++v171;
  sub_100002AB4(a1);
  ++v171;
  sub_100003278();
  ++v171;
  v161 = pwrite(v7, v28, *(a1 + 16), (12 * *(a1 + 16)));
  if (v161 == *(a1 + 16))
  {
    if (pwrite(v7, v28, v161, 0) == *(a1 + 16))
    {
      v20 = 0;
      ++v171;
      goto LABEL_82;
    }

    v172 = xmmword_100011F08;
    v173 = qword_100011F18;
    v168 = 206;
  }

  else
  {
    v172 = xmmword_100011F08;
    v173 = qword_100011F18;
    v168 = 205;
  }

  sub_100001340(&v172, v168, v162, v163, v164, v165, v166, v167, v170);
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

  (a2[2])(v30, *a2, qword_100011F18);
  return v20;
}

void sub_100001F98(uint64_t a1, void *a2)
{
  v69 = 0;
  v4 = sub_1000013F0();
  if (lseek(v4, 0, 0) || (v5 = (12 * *(a1 + 16)), v6 = sub_1000013F0(), read(v6, qword_100011EE8, v5) != v5))
  {
    v15 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v13 = qword_100011EE8;
  if (*qword_100011EE8 != 0x54414658459076EBLL || *(qword_100011EE8 + 3) != 0x2020205441465845)
  {
    v15 = 0;
LABEL_9:
    v16 = 108;
    goto LABEL_10;
  }

  if (a2)
  {
    (a2[1])(101, 25, *(qword_100011EE8 + 92), &v69, *a2, qword_100011F18);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  if (*(v13 + 104) != 256)
  {
    v67 = xmmword_100011F08;
    v68 = qword_100011F18;
    v21 = 215;
    goto LABEL_25;
  }

  v17 = *(v13 + 72);
  if (v17 != *(a1 + 8) || (v18 = *(v13 + 108), v19 = 1 << v18, (1 << v18) != *(a1 + 16)) || (v20 = *(v13 + 109), (v20 + v18) >= 0x1A))
  {
    v67 = xmmword_100011F08;
    v68 = qword_100011F18;
    v21 = 216;
LABEL_25:
    sub_100001340(&v67, v21, v7, v8, v9, v10, v11, v12, v58);
    goto LABEL_9;
  }

  v22 = *(v13 + 110);
  if ((v22 - 3) < 0xFFFFFFFE || (v23 = *(v13 + 80), v24 = *(v13 + 84), v25 = *(v13 + 88), v25 < v23 + v24 * v22))
  {
    v67 = xmmword_100011F08;
    v68 = qword_100011F18;
    v21 = 217;
    goto LABEL_25;
  }

  v26 = *(v13 + 92);
  if ((v26 << v20) + v25 > v17)
  {
    v67 = xmmword_100011F08;
    v68 = qword_100011F18;
    v21 = 218;
    goto LABEL_25;
  }

  v27 = v19 << v20;
  v28 = *(a1 + 20);
  if (v28 && v28 != v27)
  {
    v67 = xmmword_100011F08;
    v68 = qword_100011F18;
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
      v67 = xmmword_100011F08;
      v68 = qword_100011F18;
      sub_100001340(&v67, 220, v31, v32, v33, v34, v35, v36, v58);
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
              v40 = sub_1000013F0();
              if (pread(v40, v37, v19, v39) != v19)
              {
                v67 = xmmword_100011F08;
                v68 = qword_100011F18;
                sub_100001340(&v67, 221, v41, v42, v43, v44, v45, v46, v64);
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

          v49 = sub_1000013F0();
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

        v67 = xmmword_100011F08;
        v68 = qword_100011F18;
        sub_100001340(&v67, 222, v50, v51, v52, v53, v54, v55, v64);
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

  v67 = xmmword_100011F08;
  v68 = qword_100011F18;
  sub_100001340(&v67, 317, v7, v8, v9, v10, v11, v12, v58);
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
      (a2[1])(101, 20, 1, &v69, *a2, qword_100011F18);
    }

    (a2[2])(v16, *a2, qword_100011F18);
  }
}

unint64_t sub_10000248C(unint64_t result, uint64_t a2)
{
  if (!*(a2 + 100))
  {
    v3 = sub_100002BDC(result);
    v4 = &unk_100011E20;
    if (!v3)
    {
      v4 = &unk_100011D50;
    }

    v5 = v4 - 8;
    do
    {
      v6 = *(v5 + 3) - 1;
      v5 += 16;
    }

    while (v6 < *(a2 + 8) * *(a2 + 16));
    v7 = sub_100001414();
    if (v7 == -1)
    {
      v34 = xmmword_100011F08;
      v35 = qword_100011F18;
      sub_100001340(&v34, 209, v8, v9, v10, v11, v12, v13, 0);
      v7 = 0;
    }

    v14 = *(a2 + 16);
    *a2 = v7 / v14;
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

uint64_t sub_10000267C(unsigned int a1)
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

uint64_t sub_1000026AC(uint64_t result, uint64_t a2)
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
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_100008A40)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v2;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v2;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_100008A30)))).i32[1])
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

void sub_1000027D4(_DWORD *a1, _DWORD *a2)
{
  v4 = qword_100011EE8;
  bzero(qword_100011EE8, 0x20000uLL);
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
        sub_1000033D4(qword_100011EE8, v17);
      }

      else
      {
        sub_1000033D4(qword_100011EE8, 0x20000uLL);
        sub_1000032FC(v17 - 0x20000);
      }

      ++v16;
    }

    while (v16 < a1[11]);
    v15 = a1[4];
  }

  sub_1000033C4(v15 * a1[8]);
  ++*a2;
}

void sub_100002948(_DWORD *a1, _DWORD *a2)
{
  v4 = a1[24];
  v5 = v4 - 1;
  v6 = qword_100011EE8;
  bzero(qword_100011EE8, 0x20000uLL);
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
        sub_1000033D4(qword_100011EE8, v13);
      }

      else
      {
        sub_1000033D4(qword_100011EE8, 0x20000uLL);
        sub_1000032FC(v13 - 0x20000);
      }

      ++*a2;
      ++v12;
    }

    while (v12 < a1[11]);
  }
}

void sub_100002A50(uint64_t a1)
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
  sub_1000033D4(&byte_100010680, v2);
  v7 = v6 - *(a1 + 92);

  sub_1000032FC(v7);
}

void sub_100002AB4(uint64_t a1)
{
  v2 = qword_100011EE8;
  *qword_100011EE8 = 0u;
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
    v7 = &byte_100010680;
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
  sub_1000033D4(qword_100011EE8, 0x80uLL);
  v10 = *(a1 + 20) - 128;

  sub_1000032FC(v10);
}

BOOL sub_100002BDC(uint64_t a1)
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

unint64_t sub_100002D04(uint64_t a1, char *__str, int *a3)
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
      v18 = xmmword_100011F08;
      v19 = qword_100011F18;
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
      v18 = xmmword_100011F08;
      v19 = qword_100011F18;
LABEL_5:
      sub_100001340(&v18, 210, v7, v8, v9, v10, v11, v12, a1);
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
    v18 = xmmword_100011F08;
    v19 = qword_100011F18;
    sub_100001340(&v18, 211, v7, v8, v9, v10, v11, v12, a1);
    if (a3)
    {
      v14 = 84;
      goto LABEL_12;
    }

    return 0xFFFFFFFFLL;
  }

  return v15;
}

unint64_t sub_100002E60(uint64_t a1, char *__str, int *a3)
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
    v18 = xmmword_100011F08;
    v19 = qword_100011F18;
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

        v18 = xmmword_100011F08;
        v19 = qword_100011F18;
        sub_100001340(&v18, 211, v7, v8, v9, v10, v11, v12, a1);
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
  v18 = xmmword_100011F08;
  v19 = qword_100011F18;
LABEL_5:
  sub_100001340(&v18, 210, v7, v8, v9, v10, v11, v12, a1);
  if (a3)
  {
    v14 = 22;
LABEL_7:
    *a3 = v14;
  }

  return -1;
}

uint64_t sub_100002FF8(uint64_t a1, uint64_t a2)
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
    v33 = xmmword_100011F08;
    v34 = qword_100011F18;
    sub_100001340(&v33, 212, v8, v9, v10, v11, v12, v13, v7);
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
      v33 = xmmword_100011F08;
      v34 = qword_100011F18;
      sub_100001340(&v33, 213, v18, v19, v20, v21, v22, v23, v17);
    }

    else
    {
      v24 = wipefs_wipe();
      v6 = v24;
      if (v24)
      {
        v25 = *(a2 + 8);
        strerror(v24);
        v33 = xmmword_100011F08;
        v34 = qword_100011F18;
        sub_100001340(&v33, 214, v26, v27, v28, v29, v30, v31, v25);
      }
    }

    wipefs_free();
  }

  return v6;
}

BOOL sub_100003104(unsigned __int8 *a1)
{
  memset(v8, 0, sizeof(v8));
  v2 = sub_100000718(a1, 766, v8);
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

off_t sub_1000031F0()
{
  qword_100011EF0 = malloc_type_malloc(0x20000uLL, 0xFF5A35E3uLL);
  if (!qword_100011EF0)
  {
    v8 = xmmword_100011F08;
    v9 = qword_100011F18;
    sub_100001340(&v8, 16, v0, v1, v2, v3, v4, v5, "format buffer");
  }

  qword_100011EF8 = 0;
  qword_100011F00 = 0;
  v6 = sub_1000013F0();
  return lseek(v6, 0, 0);
}

void sub_100003278()
{
  if (qword_100011EF8)
  {
    v0 = sub_1000013F0();
    if (write(v0, qword_100011EF0, qword_100011EF8) != qword_100011EF8)
    {
      v7 = xmmword_100011F08;
      v8 = qword_100011F18;
      sub_100001340(&v7, 16, v1, v2, v3, v4, v5, v6, "flushing format buffer");
    }

    qword_100011EF8 = 0;
  }
}

void sub_1000032FC(size_t a1)
{
  v1 = a1;
  v2 = qword_100011EF8;
  if (qword_100011EF8 + a1 >= 0x20000)
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

      bzero((qword_100011EF0 + v2), v3);
      v1 -= v3;
      qword_100011EF8 += v3;
      qword_100011F00 += v3;
      sub_100003278();
      v2 = qword_100011EF8;
    }

    while ((qword_100011EF8 + v1) >> 17);
  }

  if (v1)
  {
    bzero((qword_100011EF0 + v2), v1);
    qword_100011EF8 += v1;
    qword_100011F00 += v1;
  }
}

void sub_1000033D4(char *__src, size_t __n)
{
  v2 = __n;
  v4 = qword_100011EF8;
  if (qword_100011EF8 + __n >= 0x20000)
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

      memcpy((qword_100011EF0 + v4), __src, v5);
      v2 -= v5;
      qword_100011EF8 += v5;
      qword_100011F00 += v5;
      __src += v5;
      sub_100003278();
      v4 = qword_100011EF8;
    }

    while ((qword_100011EF8 + v2) >> 17);
  }

  if (v2)
  {
    memcpy((qword_100011EF0 + v4), __src, v2);
    qword_100011EF8 += v2;
    qword_100011F00 += v2;
  }
}

void sub_1000034B4()
{
  fwrite("usage: newfs_exfat [options...] special_device\n", 0x2FuLL, 1uLL, __stderrp);
  fwrite("where the options are:\n", 0x17uLL, 1uLL, __stderrp);
  fwrite("\t-N don't create file system: just print out parameters\n", 0x38uLL, 1uLL, __stderrp);
  fwrite("\t-I volume ID\n", 0xEuLL, 1uLL, __stderrp);
  fwrite("\t-S bytes/sector\n", 0x11uLL, 1uLL, __stderrp);
  fwrite("\t-P physical bytes/sector\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t-a sectors/FAT\n", 0x10uLL, 1uLL, __stderrp);
  fwrite("\t-b block size (in bytes)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t-c sectors/cluster\n", 0x14uLL, 1uLL, __stderrp);
  fwrite("\t-n number of FATs\n", 0x13uLL, 1uLL, __stderrp);
  fwrite("\t-s file system size (in sectors)\n", 0x22uLL, 1uLL, __stderrp);
  fwrite("\t-v filesystem/volume name\n", 0x1BuLL, 1uLL, __stderrp);
  exit(1);
}

uint64_t start(int a1, char *const *a2)
{
  sub_100001380();
  sub_10000132C(sub_100003B1C, sub_100002FF8, 0);
  v4 = 0;
  v33 = 0u;
  memset(&v34, 0, sizeof(v34));
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  LOWORD(v30) = -1;
  BYTE9(v33) = 1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = getopt(a1, a2, aNriSABCNSV);
          if (v5 <= 97)
          {
            break;
          }

          if (v5 <= 109)
          {
            if (v5 == 98)
            {
              v13 = sub_100002D04(v5, optarg, 0);
              if ((v13 & (v13 - 1)) != 0 || (v13 - 33554433) <= 0xFE0001FE)
              {
                errx(1, "Invalid bytes per cluster (%u); must be a power of two from 512 to 33554432");
              }

              DWORD1(v28) = v13;
            }

            else
            {
              if (v5 != 99)
              {
                goto LABEL_56;
              }

              LODWORD(v32) = sub_100002D04(v5, optarg, 0);
              v9.i32[0] = v32;
              v10 = vcnt_s8(v9);
              v10.i16[0] = vaddlv_u8(v10);
              if (v32 > 0x10000 || v10.i32[0] != 1)
              {
                errx(1, "Invalid sectors per cluster (%u); must be a power of two from 1 to 65536");
              }
            }
          }

          else
          {
            switch(v5)
            {
              case 'n':
                HIDWORD(v29) = sub_100002D04(v5, optarg, 0);
                if ((HIDWORD(v29) - 3) <= 0xFFFFFFFD)
                {
                  errx(1, "Invalid number of FATs (%u); must be 1 or 2");
                }

                break;
              case 's':
                *(&v27 + 1) = sub_100002E60(v5, optarg, 0);
                break;
              case 'v':
                if (!sub_100003104(optarg))
                {
                  sub_100003C0C();
                }

                Mutable = CFStringCreateMutable(0, 0);
                if (!Mutable)
                {
                  sub_100003BF0();
                }

                v7 = Mutable;
                CFStringAppendCString(Mutable, optarg, 0x8000100u);
                CFStringNormalize(v7, kCFStringNormalizationFormC);
                Length = CFStringGetLength(v7);
                *__str = 0;
                v36.location = 0;
                v36.length = Length;
                if (CFStringGetBytes(v7, v36, 0x14000100u, 0, 0, &v30 + 2, 22, __str) != Length)
                {
                  sub_100003BC0();
                }

                LOWORD(v30) = *__str >> 1;
                v4 = optarg;
                CFRelease(v7);
                break;
              default:
                goto LABEL_56;
            }
          }
        }

        if (v5 <= 81)
        {
          break;
        }

        switch(v5)
        {
          case 'R':
            BYTE9(v33) = 0;
            break;
          case 'S':
            v12 = sub_100002D04(v5, optarg, 0);
            if ((v12 & (v12 - 1)) != 0 || (v12 - 4097) <= 0xFFFFF1FE)
            {
              errx(1, "Invalid bytes per sector (%u); must be a power of two from 512 to 4096");
            }

            LODWORD(v28) = v12;
            break;
          case 'a':
            HIDWORD(v28) = sub_100002D04(v5, optarg, 0);
            if (!HIDWORD(v28))
            {
              sub_100003C3C();
            }

            break;
          default:
            goto LABEL_56;
        }
      }

      if (v5 != 73)
      {
        break;
      }

      DWORD2(v29) = sub_100002D04(v5, optarg, 0);
    }

    if (v5 != 78)
    {
      break;
    }

    BYTE8(v33) = 1;
  }

  if (v5 != -1 || a1 - optind != 1)
  {
LABEL_56:
    sub_1000034B4();
  }

  v15 = a2[optind];
  if (!strchr(v15, 47))
  {
    snprintf(__str, 0x400uLL, "/dev/r%s", v15);
    if (stat(__str, &v34))
    {
      usedBufLen = v15;
      v15 = __str;
      snprintf(__str, 0x400uLL, "/dev/%s", usedBufLen);
    }

    else
    {
      v15 = __str;
    }
  }

  if (BYTE8(v33))
  {
    v16 = open(v15, 0);
  }

  else
  {
    v16 = open(v15, 34);
  }

  sub_1000013A8(v16);
  if (sub_1000013F0() == -1 || (v17 = sub_1000013F0(), fstat(v17, &v34)))
  {
    err(1, "%s");
  }

  v26 = 0;
  v25 = 0;
  v24 = 0;
  v18 = sub_1000013F0();
  if (ioctl(v18, 0x40086419uLL, &v26) == -1)
  {
    err(1, "%s: could not get total sectors");
  }

  v19 = sub_1000013F0();
  if (ioctl(v19, 0x40046418uLL, &v25) == -1)
  {
    err(1, "%s: could not get bytes per sector");
  }

  v20 = sub_1000013F0();
  if (ioctl(v20, 0x40086449uLL, &v24) == -1)
  {
    err(1, "%s: could not get partition offset");
  }

  sub_1000013C0(v26);
  sub_1000013B4(v25);
  sub_1000013CC(v24);
  sub_1000013D8(v4);
  sub_1000013E4(v15);
  v23[4] = v31;
  v23[5] = v32;
  v23[6] = v33;
  v23[0] = v27;
  v23[1] = v28;
  v23[2] = v29;
  v23[3] = v30;
  return sub_100001480(v23, 0);
}

void sub_100003B1C(int a1, int a2, va_list a3)
{
  v3 = &byte_100010000[16];
  do
  {
    v4 = *(v3 + 4);
    v3 += 24;
  }

  while (v4 != a2 && v4 != 0);
  if (v4 == a2)
  {
    v6 = *(v3 + 2);
    if (v6 == 2)
    {
      v7 = *v3;

      vprintf(v7, a3);
    }

    else if (v6 == 3)
    {
      verrx(1, *v3, a3);
    }
  }

  else
  {
    fprintf(__stderrp, "Failed to locate message %d\n", a2);
  }
}