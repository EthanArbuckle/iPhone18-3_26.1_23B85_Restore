void sub_100286644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100286674(uint64_t a1)
{
  if (!*(*(a1 + 56) + 40))
  {
    v4[0] = 0;
    v4[1] = 0;
    v2 = sub_1002A80E0(v4, 20);
    *(v2 + 16) = 1734439968;
    *v2 = *"An extra closing tag";
    sub_1002A8980(-2, v4, "icvXMLEndWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3017);
  }

  sub_10029433C(a1, *(a1 + 80), 2, 0, 0);
  sub_1002333F4(*(a1 + 56), __dst);
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  return sub_100231B80(*(a1 + 32), __dst);
}

void sub_100286740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void *sub_100286758(uint64_t a1, const char *a2, int a3)
{
  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  v11[1] = 0;
  v6 = v11;
  do
  {
    *v6-- = v5 % 0xA + 48;
    v7 = v5 >= 9;
    v8 = v5 == 9;
    v5 /= 0xAu;
  }

  while (!v8 && v7);
  if (a3 < 0)
  {
    *v6 = 45;
  }

  else
  {
    ++v6;
  }

  v9 = strlen(v6);
  return sub_10028AAB8(a1, a2, v6, v9);
}

void *sub_100286828(uint64_t a1, const char *a2, double a3)
{
  if ((~HIDWORD(a3) & 0x7FF00000) != 0)
  {
    v6 = rint(a3);
    if (v6 == a3)
    {
      sprintf(__dst, "%d.", v6);
    }

    else
    {
      v8 = __dst;
      sprintf(__dst, "%.16e", a3);
      if (__dst[0] == 45 || __dst[0] == 43)
      {
        v8 = &__dst[1];
      }

      do
      {
        v10 = *v8++;
        v9 = v10;
      }

      while ((v10 - 48) < 0xA);
      if (v9 == 44)
      {
        *(v8 - 1) = 46;
      }
    }
  }

  else
  {
    v5 = HIDWORD(a3) & 0x7FFFFFFF;
    if (LODWORD(a3))
    {
      ++v5;
    }

    if (v5 < 0x7FF00001)
    {
      if (a3 >= 0.0)
      {
        v7 = ".Inf";
      }

      else
      {
        v7 = "-.Inf";
      }

      strcpy(__dst, v7);
    }

    else
    {
      strcpy(__dst, ".Nan");
    }
  }

  v11 = strlen(__dst);
  return sub_10028AAB8(a1, a2, __dst, v11);
}

void *sub_100286988(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v8 = v7;
  if (!v1)
  {
    v24 = 0;
    v25 = 0;
    v9 = sub_1002A80E0(&v24, 19);
    *(v9 + 15) = 1919251566;
    *v9 = *"Null string pointer";
    sub_1002A8980(-27, &v24, "icvXMLWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3122);
  }

  v10 = strlen(v1);
  v11 = v10;
  if (v10 > 4096)
  {
    v24 = 0;
    v25 = 0;
    qmemcpy(sub_1002A80E0(&v24, 30), "The written string is too long", 30);
    sub_1002A8980(-5, &v24, "icvXMLWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3126);
  }

  if (v3)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  v13 = v12;
  if (v12 || *v4 != 34 || v4[v10 - 1] != 34)
  {
    v26 = 34;
    v14 = &v26;
    v15 = v27;
    if (v10 >= 1)
    {
      v16 = v10 & 0x7FFFFFFF;
      v14 = &v26;
      v17 = v4;
      do
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    while (1)
                    {
                      v18 = *v17++;
                      v19 = v18;
                      if ((v18 & 0x80000000) == 0 && v19 != 32)
                      {
                        break;
                      }

                      *v15 = v19;
                      v13 = 1;
                      v14 = v15++;
                      if (!--v16)
                      {
                        goto LABEL_42;
                      }
                    }

                    if (v19 == 34 || v19 == 62 || v19 == 60 || v19 < 0x20 || (v19 & 0x7E) == 0x26)
                    {
                      break;
                    }

                    *v15 = v19;
                    v14 = v15++;
                    if (!--v16)
                    {
                      goto LABEL_42;
                    }
                  }

                  *v15 = 38;
                  if (v19 != 60)
                  {
                    break;
                  }

                  *(v14 + 1) = 29804;
                  v14[4] = 59;
                  v13 = 1;
                  v14 += 4;
                  v15 = v14 + 1;
                  if (!--v16)
                  {
                    goto LABEL_42;
                  }
                }

                if (v19 != 62)
                {
                  break;
                }

                *(v14 + 1) = 29799;
                v14[4] = 59;
                v13 = 1;
                v14 += 4;
                v15 = v14 + 1;
                if (!--v16)
                {
                  goto LABEL_42;
                }
              }

              if (v19 != 39)
              {
                break;
              }

              *(v14 + 2) = 1936683105;
              v14[6] = 59;
              v13 = 1;
              v14 += 6;
              v15 = v14 + 1;
              if (!--v16)
              {
                goto LABEL_42;
              }
            }

            if (v19 != 38)
            {
              break;
            }

            v14[4] = 112;
            *(v14 + 1) = 28001;
            v14[5] = 59;
            v13 = 1;
            v14 += 5;
            v15 = v14 + 1;
            if (!--v16)
            {
              goto LABEL_42;
            }
          }

          v20 = v14 + 6;
          if (v19 != 34)
          {
            break;
          }

          *(v14 + 2) = 1953461617;
          *v20 = 59;
          v13 = 1;
          v14 += 6;
          v15 = v20 + 1;
          if (!--v16)
          {
            goto LABEL_42;
          }
        }

        sprintf(v14 + 2, "#x%02x", v19);
        *v20 = 59;
        v13 = 1;
        v14 = v20;
        v15 = v20 + 1;
        --v16;
      }

      while (v16);
    }

LABEL_42:
    if (v13 || (v21 = *v4, v21 - 48 < 0xA) || (v22 = 1, v21 <= 0x2E) && ((1 << v21) & 0x680000000000) != 0)
    {
      v22 = 0;
      *v15 = 34;
      v15 = v14 + 2;
    }

    v11 = v15 - &v26 - v22;
    *v15 = 0;
    v4 = &v27[v22 - 1];
  }

  return sub_10028AAB8(v8, v6, v4, v11);
}

void sub_100286D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100286DB0(uint64_t a1, char *__s1, int a3)
{
  v4 = __s1;
  if (!__s1)
  {
    v56 = 0;
    v57 = 0;
    v6 = sub_1002A80E0(&v56, 12);
    *(v6 + 8) = 1953391981;
    *v6 = *"Null comment";
    sub_1002A8980(-27, &v56, "icvXMLWriteComment", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3205);
  }

  if (strstr(__s1, "--"))
  {
    v56 = 0;
    v57 = 0;
    qmemcpy(sub_1002A80E0(&v56, 49), "Double hyphen '--' is not allowed in the comments", 49);
    sub_1002A8980(-5, &v56, "icvXMLWriteComment", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3208);
  }

  v7 = strlen(v4);
  v8 = strchr(v4, 10);
  v9 = v8;
  v10 = *(a1 + 120);
  if (a3 && !v8 && *(a1 + 136) - v10 >= v7 + 5)
  {
    if (v10 > *(a1 + 128) + *(a1 + 64))
    {
      *v10++ = 32;
    }

    goto LABEL_18;
  }

  result = *(a1 + 128);
  v12 = *(a1 + 88);
  if (v10 > &result[v12])
  {
    *v10 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v12) = *(a1 + 88);
  }

  v13 = *(a1 + 64);
  if (v12 == v13)
  {
    v10 = &result[v12];
    *(a1 + 120) = v10;
    if (!v9)
    {
      goto LABEL_18;
    }

LABEL_15:
    strcpy(v10, "<!--");
    v15 = 4;
    goto LABEL_26;
  }

  v14 = v13;
  memset(result, 32, v13);
  *(a1 + 88) = v13;
  result = *(a1 + 128);
  v10 = &result[v13];
  *(a1 + 120) = &result[v14];
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_18:
  v16 = v7 + 9;
  v17 = *(a1 + 136);
  if (&v10[v7 + 9] >= v17)
  {
    v18 = *(a1 + 128);
    v19 = v10 - v18;
    v20 = (3 * (v17 - v18) + ((3 * (v17 - v18)) >> 63)) >> 1;
    v21 = v16 + v10 - v18;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    v23 = sub_1001D90AC(v22 + 256);
    v24 = v23;
    v25 = *(a1 + 128);
    *(a1 + 120) = &v23[*(a1 + 120) - v25];
    if (v19 >= 1)
    {
      memcpy(v23, v25, v19 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v24;
    *(a1 + 136) = &v24[v22];
    v10 = &v24[v19];
  }

  sprintf(v10, "<!-- %s -->", v4);
  result = strlen(v10);
  v15 = result;
LABEL_26:
  v26 = &v10[v15];
  *(a1 + 120) = &v10[v15];
  v27 = *(a1 + 128);
  v28 = *(a1 + 88);
  if (v26 > &v27[v28])
  {
    *v26 = 10;
    result = sub_10028614C(a1, *(a1 + 128));
    v27 = *(a1 + 128);
    LODWORD(v28) = *(a1 + 88);
  }

  v29 = *(a1 + 64);
  if (v28 == v29)
  {
    v30 = &v27[v28];
    *(a1 + 120) = v30;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    result = memset(v27, 32, v29);
    *(a1 + 88) = v29;
    v27 = *(a1 + 128);
    v30 = &v27[v29];
    *(a1 + 120) = v30;
    if (!v9)
    {
      return result;
    }
  }

  if (v4)
  {
    while (1)
    {
      if (v9)
      {
        v31 = v9 - v4;
        v32 = v9 - v4 + 1;
        v33 = *(a1 + 136);
        if (&v30[v32] >= v33)
        {
          v34 = v30 - v27;
          v35 = (3 * (v33 - v27) + ((3 * (v33 - v27)) >> 63)) >> 1;
          v36 = v32 + v34;
          if (v36 <= v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = v36;
          }

          v38 = sub_1001D90AC(v37 + 256);
          v39 = v38;
          v40 = *(a1 + 128);
          *(a1 + 120) = &v38[*(a1 + 120) - v40];
          if (v34 >= 1)
          {
            memcpy(v38, v40, v34 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v39;
          *(a1 + 136) = &v39[v37];
          v30 = &v39[v34];
        }

        memcpy(v30, v4, v31 + 1);
        v41 = &v30[v31];
        v4 = v9 + 1;
        v9 = strchr(v9 + 1, 10);
        *(a1 + 120) = v41;
        v27 = *(a1 + 128);
        v42 = *(a1 + 88);
        if (v41 <= &v27[v42])
        {
          goto LABEL_45;
        }
      }

      else
      {
        v44 = strlen(v4);
        v45 = v44;
        v46 = *(a1 + 136);
        if (&v30[v44] >= v46)
        {
          v47 = v30 - v27;
          v48 = (3 * (v46 - v27) + ((3 * (v46 - v27)) >> 63)) >> 1;
          if (v47 + v44 <= v48)
          {
            v49 = v48;
          }

          else
          {
            v49 = v47 + v44;
          }

          v50 = sub_1001D90AC(v49 + 256);
          v51 = v50;
          v52 = *(a1 + 128);
          *(a1 + 120) = &v50[*(a1 + 120) - v52];
          if (v47 >= 1)
          {
            memcpy(v50, v52, v47 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v51;
          *(a1 + 136) = &v51[v49];
          v30 = &v51[v47];
        }

        memcpy(v30, v4, v45);
        v4 = 0;
        v9 = 0;
        v41 = &v30[v45];
        *(a1 + 120) = v41;
        v27 = *(a1 + 128);
        v42 = *(a1 + 88);
        if (v41 <= &v27[v42])
        {
          goto LABEL_45;
        }
      }

      *v41 = 10;
      sub_10028614C(a1, *(a1 + 128));
      v27 = *(a1 + 128);
      LODWORD(v42) = *(a1 + 88);
LABEL_45:
      v43 = *(a1 + 64);
      if (v42 == v43)
      {
        v30 = &v27[v42];
        *(a1 + 120) = v30;
        if (!v4)
        {
          break;
        }
      }

      else
      {
        memset(v27, 32, v43);
        *(a1 + 88) = v43;
        v27 = *(a1 + 128);
        v30 = &v27[v43];
        *(a1 + 120) = v30;
        if (!v4)
        {
          break;
        }
      }
    }
  }

  *v30 = 4074797;
  *(a1 + 120) = v30 + 3;
  result = *(a1 + 128);
  v53 = *(a1 + 88);
  if (v30 + 3 > &result[v53])
  {
    *(v30 + 3) = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v53) = *(a1 + 88);
  }

  v54 = *(a1 + 64);
  if (v53 == v54)
  {
    v55 = v53;
  }

  else
  {
    v55 = v54;
    memset(result, 32, v54);
    *(a1 + 88) = v54;
    result = *(a1 + 128);
  }

  *(a1 + 120) = &result[v55];
  return result;
}

void sub_100287328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100287358(uint64_t result)
{
  if (!*(result + 12))
  {
    v1 = result;
    if (*(*(result + 56) + 40) >= 1)
    {
      do
      {
        sub_100286674(v1);
      }

      while (*(*(v1 + 56) + 40) > 0);
    }

    *(v1 + 64) = 0;
    v3 = *(v1 + 120);
    v2 = *(v1 + 128);
    v4 = *(v1 + 88);
    if (v3 <= &v2[v4])
    {
      v5 = 0;
      v6 = 0;
      if (!v4)
      {
LABEL_9:
        *(v1 + 120) = &v2[v6];
        result = sub_10028614C(v1, "\n<!-- next stream -->\n");
        *(v1 + 120) = *(v1 + 128);
        return result;
      }
    }

    else
    {
      *v3 = 10;
      sub_10028614C(v1, *(v1 + 128));
      v2 = *(v1 + 128);
      v5 = *(v1 + 64);
      v6 = v5;
      if (*(v1 + 88) == v5)
      {
        goto LABEL_9;
      }
    }

    memset(v2, 32, v6);
    *(v1 + 88) = v5;
    v2 = *(v1 + 128);
    goto LABEL_9;
  }

  return result;
}

char *sub_100287444(uint64_t a1)
{
  *&v3 = __chkstk_darwin(a1).n128_u64[0];
  v5 = v4;
  v7 = v6;
  if (!v2)
  {
    v8 = 0;
    __src = 0;
    v9 = v1 & 7;
    if (v9 > 4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v19[0] = 0;
    v19[1] = 0;
    qmemcpy(sub_1002A80E0(v19, 68), "Some collection type - CV_NODE_SEQ or CV_NODE_MAP, must be specified", 68);
    sub_1002A8980(-5, v19, "icvYMLStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2011);
  }

  if (*v2)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  __src = 0;
  v9 = v1 & 7;
  if (v9 <= 4)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = v1 & 0xF | 0x20;
  if (!v8)
  {
    if ((v1 & 8) == 0)
    {
      v13 = 0;
      goto LABEL_28;
    }

    if (v9 == 6)
    {
      v15 = 123;
    }

    else
    {
      v15 = 91;
    }

    v10 = v1 & 7 | 0x28;
    v21[0] = v15;
    v21[1] = 0;
    goto LABEL_27;
  }

  if (*v8 == 1634625890 && *(v8 + 2) == 31090)
  {
    strcpy(v21, "!!binary |");
    v10 = 5;
LABEL_27:
    v13 = v21;
    goto LABEL_28;
  }

  if ((v1 & 8) != 0)
  {
    v10 = v1 & 7 | 0x28;
    v14 = 91;
    if (v9 == 6)
    {
      v14 = 123;
    }

    v17 = v8;
    v18 = v14;
    v12 = "!!%s %c";
  }

  else
  {
    v17 = v8;
    v12 = "!!%s";
  }

  v13 = v21;
  sprintf(v21, v12, v3, v17, v18);
LABEL_28:
  sub_10028ADF4(v7, v5, v13);
  __src = *(v7 + 68);
  result = sub_100233314(*(v7 + 56), &__src);
  *(v7 + 68) = v10;
  if ((__src & 8) == 0)
  {
    *(v7 + 64) += ((v10 >> 3) & 1) + 3;
  }

  return result;
}

void sub_10028767C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1002876AC(uint64_t a1)
{
  __dst = 0;
  v2 = *(a1 + 68);
  v3 = *(a1 + 56);
  if (!v3[10])
  {
    v15[0] = 0;
    v15[1] = 0;
    qmemcpy(sub_1002A80E0(v15, 44), "EndWriteStruct w/o matching StartWriteStruct", 44);
    sub_1002A8980(-2, v15, "icvYMLEndWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2059);
  }

  result = sub_1002333F4(v3, &__dst);
  if ((v2 & 8) != 0)
  {
    v6 = *(a1 + 120);
    if (v6 > *(a1 + 128) + *(a1 + 64) && (v2 & 0x20) == 0)
    {
      *v6++ = 32;
    }

    if ((v2 & 7) == 6)
    {
      v8 = 125;
    }

    else
    {
      v8 = 93;
    }

    *v6 = v8;
    *(a1 + 120) = v6 + 1;
    v5 = __dst;
    if ((__dst & 8) != 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v2 & 0x20) != 0)
  {
    v9 = *(a1 + 120);
    result = *(a1 + 128);
    v10 = *(a1 + 88);
    if (v9 > (result + v10))
    {
      *v9 = 10;
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      LODWORD(v10) = *(a1 + 88);
    }

    v11 = *(a1 + 64);
    if (v10 == v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
      memset(result, 32, v11);
      *(a1 + 88) = v11;
      result = *(a1 + 128);
    }

    v13 = (result + v12);
    if ((v2 & 7) == 6)
    {
      v14 = 32123;
    }

    else
    {
      v14 = 23899;
    }

    *v13 = v14;
    *(a1 + 120) = v13 + 1;
    v5 = __dst;
    if ((__dst & 8) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = __dst;
    if ((__dst & 8) != 0)
    {
LABEL_5:
      *(a1 + 68) = v5;
      return result;
    }
  }

  *(a1 + 64) = *(a1 + 64) - ((v2 & 8) >> 3) - 3;
  *(a1 + 68) = v5;
  return result;
}

void sub_100287868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

char *sub_100287880(uint64_t a1, const char *a2, int a3)
{
  if (a3 >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = -a3;
  }

  v8[1] = 0;
  v5 = v8;
  do
  {
    *v5-- = v4 % 0xA + 48;
    v6 = v4 > 9;
    v4 /= 0xAu;
  }

  while (v6);
  if (a3 < 0)
  {
    *v5 = 45;
  }

  else
  {
    ++v5;
  }

  return sub_10028ADF4(a1, a2, v5);
}

char *sub_100287924(uint64_t a1, const char *a2, double a3)
{
  if ((~HIDWORD(a3) & 0x7FF00000) != 0)
  {
    v4 = a1;
    v5 = a2;
    v6 = rint(a3);
    if (v6 == a3)
    {
      sprintf(__dst, "%d.", v6);
      a2 = v5;
      a1 = v4;
    }

    else
    {
      v10 = __dst;
      sprintf(__dst, "%.16e", a3);
      if (__dst[0] == 45 || __dst[0] == 43)
      {
        v10 = &__dst[1];
      }

      a2 = v5;
      a1 = v4;
      do
      {
        v12 = *v10++;
        v11 = v12;
      }

      while ((v12 - 48) < 0xA);
      if (v11 == 44)
      {
        *(v10 - 1) = 46;
      }
    }
  }

  else
  {
    v3 = HIDWORD(a3) & 0x7FFFFFFF;
    if (LODWORD(a3))
    {
      ++v3;
    }

    if (v3 < 0x7FF00001)
    {
      if (a3 >= 0.0)
      {
        v7 = ".Inf";
      }

      else
      {
        v7 = "-.Inf";
      }

      v8 = a1;
      v9 = a2;
      strcpy(__dst, v7);
      a1 = v8;
      a2 = v9;
    }

    else
    {
      strcpy(__dst, ".Nan");
    }
  }

  return sub_10028ADF4(a1, a2, __dst);
}

char *sub_100287A94(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v8 = v7;
  if (!v1)
  {
    v32 = 0;
    v33 = 0;
    v9 = sub_1002A80E0(&v32, 19);
    *(v9 + 15) = 1919251566;
    *v9 = *"Null string pointer";
    sub_1002A8980(-27, &v32, "icvYMLWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2128);
  }

  v10 = strlen(v1);
  if (v10 > 4096)
  {
    v32 = 0;
    v33 = 0;
    qmemcpy(sub_1002A80E0(&v32, 30), "The written string is too long", 30);
    sub_1002A8980(-5, &v32, "icvYMLWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2132);
  }

  v11 = 1;
  if (!v3 && v10)
  {
    v12 = *v4;
    if (v12 == v4[v10 - 1] && (v12 == 34 || v12 == 39))
    {
      return sub_10028ADF4(v8, v6, v4);
    }

    v11 = v12 == 32;
  }

  v31 = v8;
  v13 = v35;
  v34 = 34;
  if (v10 >= 1)
  {
    v14 = v10 & 0x7FFFFFFF;
    v15 = v4;
    v16 = v35;
    while (1)
    {
      v18 = *v15++;
      v17 = v18;
      v19 = (v18 - 58);
      v20 = v18 & 0xDF;
      v21 = ((v18 & 0xDF) - 91);
      v22 = v18;
      v23 = (1 << (v18 - 32)) & 0x800000000800AB01;
      v25 = v18 - 32 > 0x3F || v23 == 0;
      v26 = v21 <= 0xE5 && v25;
      v27 = v19 <= 0xF5 && v26;
      v11 = v11 || v27;
      if ((v17 - 48) >= 0xAu && (v20 - 65) >= 0x1Au)
      {
        if (v22 < 0x20)
        {
          *v16 = 92;
          switch(v17)
          {
            case 9:
              v17 = 116;
              break;
            case 13:
              v17 = 114;
              break;
            case 10:
              v17 = 110;
              break;
            default:
              sprintf(v16 + 1, "x%02x", v17);
              v16 += 4;
              goto LABEL_14;
          }

          goto LABEL_45;
        }

        if (v17 - 34 <= 0x3A && ((1 << (v17 - 34)) & 0x400000000000021) != 0)
        {
          *v16 = 92;
LABEL_45:
          v16[1] = v17;
          v16 += 2;
          goto LABEL_14;
        }
      }

      *v16++ = v17;
LABEL_14:
      if (!--v14)
      {
        goto LABEL_48;
      }
    }
  }

  v16 = v35;
LABEL_48:
  if (v11 || (v29 = *v4, v29 - 48 < 0xA) || v29 <= 0x2E && ((1 << v29) & 0x680000000000) != 0)
  {
    *v16++ = 34;
    v13 = &v34;
  }

  *v16 = 0;
  v4 = v13;
  v8 = v31;
  return sub_10028ADF4(v8, v6, v4);
}

void sub_100287DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100287E18(uint64_t a1, char *__s, int a3)
{
  v4 = __s;
  if (!__s)
  {
    v39[0] = 0;
    v39[1] = 0;
    v10 = sub_1002A80E0(v39, 12);
    *(v10 + 8) = 1953391981;
    *v10 = *"Null comment";
    sub_1002A8980(-27, v39, "icvYMLWriteComment", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2190);
  }

  v6 = strlen(__s);
  result = strchr(v4, 10);
  v8 = result;
  v9 = *(a1 + 120);
  if (a3 && !result && *(a1 + 136) - v9 >= v6 && v9 != *(a1 + 128))
  {
    *v9 = 32;
    v11 = v9 + 1;
    if (v4)
    {
      goto LABEL_18;
    }

    return result;
  }

  result = *(a1 + 128);
  v12 = *(a1 + 88);
  if (v9 > &result[v12])
  {
    *v9 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v12) = *(a1 + 88);
  }

  v13 = *(a1 + 64);
  if (v12 != v13)
  {
    memset(result, 32, v13);
    *(a1 + 88) = v13;
    result = *(a1 + 128);
    v11 = &result[v13];
    *(a1 + 120) = v11;
    if (!v4)
    {
      return result;
    }

    while (1)
    {
LABEL_18:
      *v11 = 8227;
      v14 = v11 + 2;
      if (v8)
      {
        v15 = v8 - v4;
        v16 = v8 - v4 + 1;
        v17 = *(a1 + 136);
        if (&v14[v16] >= v17)
        {
          v18 = *(a1 + 128);
          v19 = v14 - v18;
          v20 = (3 * (v17 - v18) + ((3 * (v17 - v18)) >> 63)) >> 1;
          v21 = v16 + v14 - v18;
          if (v21 <= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          v23 = sub_1001D90AC(v22 + 256);
          v24 = v23;
          v25 = *(a1 + 128);
          *(a1 + 120) = &v23[*(a1 + 120) - v25];
          if (v19 >= 1)
          {
            memcpy(v23, v25, v19 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v24;
          *(a1 + 136) = &v24[v22];
          v14 = &v24[v19];
        }

        memcpy(v14, v4, v15 + 1);
        v26 = &v14[v15];
        *(a1 + 120) = v26;
        v4 = v8 + 1;
        v8 = strchr(v8 + 1, 10);
        result = *(a1 + 128);
        v27 = *(a1 + 88);
        if (v26 <= &result[v27])
        {
          goto LABEL_28;
        }
      }

      else
      {
        v29 = strlen(v4);
        v30 = v29;
        v31 = *(a1 + 136);
        if (&v14[v29] >= v31)
        {
          v32 = *(a1 + 128);
          v33 = v14 - v32;
          v34 = (3 * (v31 - v32) + ((3 * (v31 - v32)) >> 63)) >> 1;
          if (v33 + v29 <= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v33 + v29;
          }

          v36 = sub_1001D90AC(v35 + 256);
          v37 = v36;
          v38 = *(a1 + 128);
          *(a1 + 120) = &v36[*(a1 + 120) - v38];
          if (v33 >= 1)
          {
            memcpy(v36, v38, v33 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v37;
          *(a1 + 136) = &v37[v35];
          v14 = &v37[v33];
        }

        memcpy(v14, v4, v30);
        v8 = 0;
        v4 = 0;
        v26 = &v14[v30];
        *(a1 + 120) = v26;
        result = *(a1 + 128);
        v27 = *(a1 + 88);
        if (v26 <= &result[v27])
        {
          goto LABEL_28;
        }
      }

      *v26 = 10;
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      LODWORD(v27) = *(a1 + 88);
LABEL_28:
      v28 = *(a1 + 64);
      if (v27 == v28)
      {
        v11 = &result[v27];
        *(a1 + 120) = v11;
        if (!v4)
        {
          return result;
        }
      }

      else
      {
        memset(result, 32, v28);
        *(a1 + 88) = v28;
        result = *(a1 + 128);
        v11 = &result[v28];
        *(a1 + 120) = v11;
        if (!v4)
        {
          return result;
        }
      }
    }
  }

  v11 = &result[v12];
  *(a1 + 120) = v11;
  if (v4)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1002881B0(uint64_t result)
{
  if (!*(result + 12))
  {
    v1 = result;
    if (*(*(result + 56) + 40) >= 1)
    {
      do
      {
        sub_1002876AC(v1);
      }

      while (*(*(v1 + 56) + 40) > 0);
    }

    *(v1 + 64) = 0;
    v3 = *(v1 + 120);
    v2 = *(v1 + 128);
    v4 = *(v1 + 88);
    if (v3 <= &v2[v4])
    {
      v5 = 0;
      v6 = 0;
      if (!v4)
      {
LABEL_9:
        *(v1 + 120) = &v2[v6];
        sub_10028614C(v1, "...\n");
        result = sub_10028614C(v1, "---\n");
        *(v1 + 120) = *(v1 + 128);
        return result;
      }
    }

    else
    {
      *v3 = 10;
      sub_10028614C(v1, *(v1 + 128));
      v2 = *(v1 + 128);
      v5 = *(v1 + 64);
      v6 = v5;
      if (*(v1 + 88) == v5)
      {
        goto LABEL_9;
      }
    }

    memset(v2, 32, v6);
    *(v1 + 88) = v5;
    v2 = *(v1 + 128);
    goto LABEL_9;
  }

  return result;
}

char *sub_1002882AC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v5 = v4;
  v6 = v1;
  __src = 0;
  if ((v3 & 7u) <= 4)
  {
    v12[0] = 0;
    v12[1] = 0;
    qmemcpy(sub_1002A80E0(v12, 68), "Some collection type - CV_NODE_SEQ or CV_NODE_MAP, must be specified", 68);
    sub_1002A8980(-5, v12, "icvJSONStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3965);
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    v5 = 0;
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (*v4 == 1634625890 && *(v4 + 4) == 31090)
  {
    v8 = 0;
    v14[0] = 0;
    v9 = 3;
    goto LABEL_16;
  }

  v8 = 1;
LABEL_12:
  v9 = v3 & 0xF | 0x20;
  if ((v3 & 7) == 6)
  {
    v10 = 123;
  }

  else
  {
    v10 = 91;
  }

  v14[0] = v10;
  v14[1] = 0;
LABEL_16:
  sub_10028B4EC(v1, v2, v14);
  __src = *(v6 + 68);
  result = sub_100233314(*(v6 + 56), &__src);
  *(v6 + 68) = v9;
  *(v6 + 64) += 4;
  if (v8)
  {
    return (*(v6 + 328))(v6, "type_id", v5, 1);
  }

  return result;
}

void sub_100288470(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1002884A0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2[10])
  {
    v13[0] = 0;
    v13[1] = 0;
    qmemcpy(sub_1002A80E0(v13, 44), "EndWriteStruct w/o matching StartWriteStruct", 44);
    sub_1002A8980(-2, v13, "icvJSONEndWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4006);
  }

  LODWORD(v13[0]) = 0;
  v3 = *(a1 + 68);
  result = sub_1002333F4(v2, v13);
  v5 = *(a1 + 64) - 4;
  v6 = v13[0] & 0xFFFFFFDF;
  *(a1 + 64) = v5;
  *(a1 + 68) = v6;
  if ((v3 & 7u) >= 5)
  {
    v7 = *(a1 + 120);
    result = *(a1 + 128);
    if ((v3 & 8) != 0)
    {
LABEL_13:
      if (v7 > result + v5 && (v3 & 0x20) == 0)
      {
        *v7++ = 32;
      }

      if ((v3 & 7) == 6)
      {
        v12 = 125;
      }

      else
      {
        v12 = 93;
      }

      *v7 = v12;
      *(a1 + 120) = v7 + 1;
      return result;
    }

    if (v7 <= result + *(a1 + 88) && (*(a1 + 120) = v7 + 1, *v7 = 10, v10 = *(a1 + 120), *(a1 + 120) = v10 + 1, *v10 = 0, sub_10028614C(a1, *(a1 + 128)), result = *(a1 + 128), *(a1 + 120) = result, v5 = *(a1 + 88), v7 = result, result <= (result + v5)))
    {
      v8 = *(a1 + 64);
      if (v5 != v8)
      {
LABEL_11:
        v9 = v8;
        memset(result, 32, v8);
        *(a1 + 88) = v8;
        result = *(a1 + 128);
        v5 = *(a1 + 64);
        goto LABEL_12;
      }
    }

    else
    {
      *v7 = 10;
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      v5 = *(a1 + 88);
      v8 = *(a1 + 64);
      if (v5 != v8)
      {
        goto LABEL_11;
      }
    }

    v9 = v5;
LABEL_12:
    v7 = result + v9;
    *(a1 + 120) = result + v9;
    goto LABEL_13;
  }

  return result;
}

char *sub_10028868C(uint64_t a1, const char *a2, int a3)
{
  if (a3 >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = -a3;
  }

  v8[1] = 0;
  v5 = v8;
  do
  {
    *v5-- = v4 % 0xA + 48;
    v6 = v4 > 9;
    v4 /= 0xAu;
  }

  while (v6);
  if (a3 < 0)
  {
    *v5 = 45;
  }

  else
  {
    ++v5;
  }

  return sub_10028B4EC(a1, a2, v5);
}

char *sub_100288730(uint64_t a1, const char *a2, double a3)
{
  if ((~HIDWORD(a3) & 0x7FF00000) != 0)
  {
    v6 = rint(a3);
    if (v6 == a3)
    {
      sprintf(__dst, "%d.", v6);
    }

    else
    {
      v8 = __dst;
      sprintf(__dst, "%.16e", a3);
      if (__dst[0] == 45 || __dst[0] == 43)
      {
        v8 = &__dst[1];
      }

      do
      {
        v10 = *v8++;
        v9 = v10;
      }

      while ((v10 - 48) < 0xA);
      if (v9 == 44)
      {
        *(v8 - 1) = 46;
      }
    }
  }

  else
  {
    v5 = HIDWORD(a3) & 0x7FFFFFFF;
    if (LODWORD(a3))
    {
      ++v5;
    }

    if (v5 < 0x7FF00001)
    {
      if (a3 >= 0.0)
      {
        v7 = ".Inf";
      }

      else
      {
        v7 = "-.Inf";
      }

      strcpy(__dst, v7);
    }

    else
    {
      strcpy(__dst, ".Nan");
    }
  }

  v11 = strlen(__dst);
  if (v11 && __dst[v11 - 1] == 46)
  {
    *&__dst[v11] = 48;
  }

  return sub_10028B4EC(a1, a2, __dst);
}

char *sub_1002888B0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v8 = v7;
  if (!v1)
  {
    v17 = 0;
    v18 = 0;
    v9 = sub_1002A80E0(&v17, 19);
    *(v9 + 15) = 1919251566;
    *v9 = *"Null string pointer";
    sub_1002A8980(-27, &v17, "icvJSONWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4086);
  }

  v10 = strlen(v1);
  if (v10 > 4096)
  {
    v17 = 0;
    v18 = 0;
    qmemcpy(sub_1002A80E0(&v17, 30), "The written string is too long", 30);
    sub_1002A8980(-5, &v17, "icvJSONWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4090);
  }

  if (v3 || !v10 || (v11 = *v4, v11 != v4[v10 - 1]) || v11 != 34 && v11 != 39)
  {
    v12 = v20;
    v19 = 34;
    if (v10 >= 1)
    {
      for (i = v10 & 0x7FFFFFFF; i; --i)
      {
        v15 = *v4++;
        v14 = v15;
        if (v15 > 12)
        {
          if (v14 <= 38)
          {
            if (v14 == 13)
            {
              *v12 = 29276;
              v12 += 2;
              continue;
            }

            if (v14 != 34)
            {
              goto LABEL_31;
            }
          }

          else if (v14 != 92 && v14 != 39)
          {
LABEL_31:
            *v12++ = v14;
            continue;
          }

          *v12 = 92;
          v12[1] = v14;
          v12 += 2;
        }

        else if (v14 > 9)
        {
          if (v14 == 10)
          {
            *v12 = 28252;
            v12 += 2;
          }

          else
          {
            if (v14 != 12)
            {
              goto LABEL_31;
            }

            *v12 = 26204;
            v12 += 2;
          }
        }

        else if (v14 == 8)
        {
          *v12 = 25180;
          v12 += 2;
        }

        else
        {
          if (v14 != 9)
          {
            goto LABEL_31;
          }

          *v12 = 29788;
          v12 += 2;
        }
      }
    }

    *v12 = 34;
    v4 = &v19;
  }

  return sub_10028B4EC(v8, v6, v4);
}

void sub_100288B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100288B60(uint64_t a1, char *__s, int a3)
{
  v4 = __s;
  if (!__s)
  {
    v39[0] = 0;
    v39[1] = 0;
    v10 = sub_1002A80E0(v39, 12);
    *(v10 + 8) = 1953391981;
    *v10 = *"Null comment";
    sub_1002A8980(-27, v39, "icvJSONWriteComment", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4129);
  }

  v6 = strlen(__s);
  result = strchr(v4, 10);
  v8 = result;
  v9 = *(a1 + 120);
  if (a3 && !result && *(a1 + 136) - v9 >= v6 && v9 != *(a1 + 128))
  {
    *v9 = 32;
    v11 = v9 + 1;
    if (v4)
    {
      goto LABEL_18;
    }

    return result;
  }

  result = *(a1 + 128);
  v12 = *(a1 + 88);
  if (v9 > &result[v12])
  {
    *v9 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v12) = *(a1 + 88);
  }

  v13 = *(a1 + 64);
  if (v12 != v13)
  {
    memset(result, 32, v13);
    *(a1 + 88) = v13;
    result = *(a1 + 128);
    v11 = &result[v13];
    *(a1 + 120) = v11;
    if (!v4)
    {
      return result;
    }

    while (1)
    {
LABEL_18:
      *v11 = 12079;
      v14 = v11 + 3;
      v11[2] = 32;
      if (v8)
      {
        v15 = v8 - v4;
        v16 = v8 - v4 + 1;
        v17 = *(a1 + 136);
        if (&v14[v16] >= v17)
        {
          v18 = *(a1 + 128);
          v19 = v14 - v18;
          v20 = (3 * (v17 - v18) + ((3 * (v17 - v18)) >> 63)) >> 1;
          v21 = v16 + v19;
          if (v21 <= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          v23 = sub_1001D90AC(v22 + 256);
          v24 = v23;
          v25 = *(a1 + 128);
          *(a1 + 120) = &v23[*(a1 + 120) - v25];
          if (v19 >= 1)
          {
            memcpy(v23, v25, v19 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v24;
          *(a1 + 136) = &v24[v22];
          v14 = &v24[v19];
        }

        memcpy(v14, v4, v15 + 1);
        v26 = &v14[v15];
        *(a1 + 120) = &v14[v15];
        v4 = v8 + 1;
        v8 = strchr(v8 + 1, 10);
        result = *(a1 + 128);
        v27 = *(a1 + 88);
        if (&v14[v15] <= &result[v27])
        {
          goto LABEL_28;
        }
      }

      else
      {
        v29 = strlen(v4);
        v30 = v29;
        v31 = *(a1 + 136);
        if (&v14[v29] >= v31)
        {
          v32 = *(a1 + 128);
          v33 = v14 - v32;
          v34 = (3 * (v31 - v32) + ((3 * (v31 - v32)) >> 63)) >> 1;
          if (v33 + v29 <= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v33 + v29;
          }

          v36 = sub_1001D90AC(v35 + 256);
          v37 = v36;
          v38 = *(a1 + 128);
          *(a1 + 120) = &v36[*(a1 + 120) - v38];
          if (v33 >= 1)
          {
            memcpy(v36, v38, v33 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v37;
          *(a1 + 136) = &v37[v35];
          v14 = &v37[v33];
        }

        memcpy(v14, v4, v30);
        v8 = 0;
        v4 = 0;
        v26 = &v14[v30];
        *(a1 + 120) = v26;
        result = *(a1 + 128);
        v27 = *(a1 + 88);
        if (v26 <= &result[v27])
        {
          goto LABEL_28;
        }
      }

      *v26 = 10;
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      LODWORD(v27) = *(a1 + 88);
LABEL_28:
      v28 = *(a1 + 64);
      if (v27 == v28)
      {
        v11 = &result[v27];
        *(a1 + 120) = v11;
        if (!v4)
        {
          return result;
        }
      }

      else
      {
        memset(result, 32, v28);
        *(a1 + 88) = v28;
        result = *(a1 + 128);
        v11 = &result[v28];
        *(a1 + 120) = v11;
        if (!v4)
        {
          return result;
        }
      }
    }
  }

  v11 = &result[v12];
  *(a1 + 120) = v11;
  if (v4)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100288F04(uint64_t result)
{
  if (!*(result + 12))
  {
    v1 = result;
    if (*(*(result + 56) + 40) >= 1)
    {
      do
      {
        sub_1002884A0(v1);
      }

      while (*(*(v1 + 56) + 40) > 0);
    }

    v2 = 4;
    *(v1 + 64) = 4;
    v3 = *(v1 + 120);
    result = *(v1 + 128);
    v4 = *(v1 + 88);
    if (v3 > result + v4)
    {
      *v3 = 10;
      sub_10028614C(v1, *(v1 + 128));
      result = *(v1 + 128);
      LODWORD(v4) = *(v1 + 88);
      v2 = *(v1 + 64);
    }

    if (v4 != v2)
    {
      memset(result, 32, v2);
      *(v1 + 88) = v2;
      result = *(v1 + 128);
    }

    *(v1 + 120) = result;
  }

  return result;
}

void sub_100288FB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = -27;
LABEL_5:
    v13 = 0;
    v14 = 0;
    qmemcpy(sub_1002A80E0(&v13, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v8, &v13, "cvStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4564);
  }

  if (*a1 != 1280131417)
  {
    v8 = -5;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    v13 = 0;
    v14 = 0;
    qmemcpy(sub_1002A80E0(&v13, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v13, "cvStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4564);
  }

  sub_100289404(a1, 0);
  v9 = *(a1 + 396);
  if (v9 == 1)
  {
    sub_1002895CC(a1, 0);
    v9 = *(a1 + 396);
  }

  if ((a3 & 7) != 5 || v9 || a4 || (*(a1 + 392) & 1) == 0)
  {
    if (a4 && (*a4 == 1634625890 ? (v10 = *(a4 + 4) == 31090) : (v10 = 0), v10))
    {
      if ((a3 & 7) != 5)
      {
        v13 = 0;
        v14 = 0;
        qmemcpy(sub_1002A80E0(&v13, 55), "must set 'struct_flags |= CV_NODE_SEQ' if using Base64.", 55);
        sub_1002A8980(-5, &v13, "cvStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4585);
      }

      if (v9)
      {
        v13 = 0;
        v14 = 0;
        qmemcpy(sub_1002A80E0(&v13, 69), "function 'cvStartWriteStruct' calls cannot be nested if using Base64.", 69);
        sub_1002A8980(-2, &v13, "cvStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4587);
      }

      (*(a1 + 296))(a1, a2, a3, a4);
      if (*(a1 + 396))
      {
        sub_1002895CC(a1, 0);
      }

      v11 = a1;
      v12 = 2;
    }

    else
    {
      if (v9 == 2)
      {
        v13 = 0;
        v14 = 0;
        sub_1002A8980(-2, &v13, "cvStartWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4599);
      }

      (*(a1 + 296))(a1, a2, a3, a4);
      if (*(a1 + 396))
      {
        sub_1002895CC(a1, 0);
      }

      v11 = a1;
      v12 = 1;
    }

    sub_1002895CC(v11, v12);
  }

  else
  {
    if (*(a1 + 400))
    {
      v13 = 0;
      v14 = 0;
      qmemcpy(sub_1002A80E0(&v13, 36), "fs->is_write_struct_delayed == false", 36);
      sub_1002A8980(-215, &v13, "make_write_struct_delayed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1252);
    }

    *(a1 + 416) = a3;
    if (a2)
    {
      strlen(a2);
      operator new[]();
    }

    *(a1 + 400) = 1;
  }
}

void sub_100289404(uint64_t a1, int a2)
{
  if (*(a1 + 400) == 1)
  {
    memset(&v12, 0, sizeof(v12));
    memset(&__p, 0, sizeof(__p));
    v4 = *(a1 + 416);
    v5 = *(a1 + 408);
    if (v5 && *v5)
    {
      std::string::assign(&v12, v5);
    }

    v6 = *(a1 + 424);
    if (v6 && *v6)
    {
      std::string::assign(&__p, v6);
    }

    if (*(a1 + 408))
    {
      operator delete[]();
    }

    if (*(a1 + 424))
    {
      operator delete[]();
    }

    *(a1 + 408) = 0;
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 400) = 0;
    v7 = *(a1 + 296);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v12;
    }

    else
    {
      v8 = v12.__r_.__value_.__r.__words[0];
    }

    if (a2)
    {
      v7(a1, v8, v4, "binary");
      if (*(a1 + 396))
      {
        sub_1002895CC(a1, 0);
      }

      v9 = 2;
    }

    else
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v7(a1, v8, v4, p_p);
      if (*(a1 + 396))
      {
        sub_1002895CC(a1, 0);
      }

      v9 = 1;
    }

    sub_1002895CC(a1, v9);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(v12.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_29;
    }
  }
}

void sub_100289590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1002895CC(uint64_t result, int a2)
{
  v2 = *(result + 396);
  if (v2 == 2)
  {
    if ((a2 - 1) <= 1)
    {
      v4 = 0;
      v5 = 0;
      qmemcpy(sub_1002A80E0(&v4, 49), "Unexpected error, unable to switch to this state.", 49);
      sub_1002A8980(-2, &v4, "switch_to_Base64_state", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1166);
    }

    v3 = *(result + 384);
    if (v3)
    {
      if (*v3)
      {
        sub_10029C070(*v3);
        operator delete();
      }

      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
      }

      operator delete();
    }

    *(result + 384) = 0;
    *(result + 396) = a2;
  }

  else
  {
    if (v2 == 1)
    {
      if ((a2 - 1) <= 1)
      {
        v4 = 0;
        v5 = 0;
        qmemcpy(sub_1002A80E0(&v4, 49), "Unexpected error, unable to switch to this state.", 49);
        sub_1002A8980(-2, &v4, "switch_to_Base64_state", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1182);
      }
    }

    else
    {
      if (v2)
      {
        v4 = 0;
        v5 = 0;
        qmemcpy(sub_1002A80E0(&v4, 55), "Unexpected error, unable to determine the Base64 state.", 55);
        sub_1002A8980(-2, &v4, "switch_to_Base64_state", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1192);
      }

      if (a2 == 2)
      {
        operator new();
      }
    }

    *(result + 396) = a2;
  }

  return result;
}

uint64_t sub_10028984C(uint64_t a1)
{
  if (!a1)
  {
    v2 = -27;
LABEL_5:
    v4 = 0;
    v5 = 0;
    qmemcpy(sub_1002A80E0(&v4, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v2, &v4, "cvEndWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4613);
  }

  if (*a1 != 1280131417)
  {
    v2 = -5;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    v4 = 0;
    v5 = 0;
    qmemcpy(sub_1002A80E0(&v4, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v4, "cvEndWriteStruct", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4613);
  }

  sub_100289404(a1, 0);
  if (*(a1 + 396))
  {
    sub_1002895CC(a1, 0);
  }

  return (*(a1 + 304))(a1);
}

uint64_t sub_1002899A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = -27;
LABEL_5:
    v5 = 0;
    v6 = 0;
    qmemcpy(sub_1002A80E0(&v5, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v3, &v5, "cvWriteInt", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4626);
  }

  if (*a1 != 1280131417)
  {
    v3 = -5;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    v5 = 0;
    v6 = 0;
    qmemcpy(sub_1002A80E0(&v5, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v5, "cvWriteInt", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4626);
  }

  return (*(a1 + 312))(a1, a2, a3);
}

uint64_t sub_100289AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v4 = -27;
LABEL_5:
    v6 = 0;
    v7 = 0;
    qmemcpy(sub_1002A80E0(&v6, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v4, &v6, "cvWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4642);
  }

  if (*a1 != 1280131417)
  {
    v4 = -5;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    qmemcpy(sub_1002A80E0(&v6, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v6, "cvWriteString", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4642);
  }

  return (*(a1 + 328))(a1, a2, a3, a4);
}

void *sub_100289C48(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v49 = a3;
  if (*(a1 + 392))
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 396);
  if (v6)
  {
    if (v6 == 2)
    {
LABEL_4:

      sub_10028A580(a1, a2, a3, a4);
    }
  }

  else
  {
    sub_1002895CC(a1, 1);
  }

  *__dst = 0u;
  memset(v56, 0, sizeof(v56));
  if (*a1 != 1280131417)
  {
    v53 = 0;
    v54 = 0;
    qmemcpy(sub_1002A80E0(&v53, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(-5, &v53, "cvWriteRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4812);
  }

  if (!*(a1 + 8))
  {
    v53 = 0;
    v54 = 0;
    qmemcpy(sub_1002A80E0(&v53, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v53, "cvWriteRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4812);
  }

  if (v49 < 0)
  {
    v53 = 0;
    v54 = 0;
    qmemcpy(sub_1002A80E0(&v53, 27), "Negative number of elements", 27);
    sub_1002A8980(-211, &v53, "cvWriteRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4815);
  }

  result = sub_10028A808(a4, v57);
  if (v49)
  {
    if (!a2)
    {
      v53 = 0;
      v54 = 0;
      v8 = sub_1002A80E0(&v53, 17);
      *(v8 + 16) = 114;
      *v8 = *"Null data pointer";
      sub_1002A8980(-27, &v53, "cvWriteRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4823);
    }

    if (result == 1)
    {
      v57[0] *= v49;
      v49 = 1;
LABEL_20:
      v9 = 0;
      v50 = result;
      while (1)
      {
        v10 = 0;
        --v49;
        v11 = a2;
        do
        {
          v12 = &v57[2 * v10];
          v13 = *v12;
          v14 = v12[1];
          LODWORD(v12) = (((v14 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v14 & 7))) & 3);
          v15 = (v11 + ((v9 + v12 - 1) & -v12));
          v52 = v10;
          if (v13 > 0)
          {
            if (v14 > 7)
            {
              v53 = 0;
              v54 = 0;
              *sub_1002A80E0(&v53, 16) = *"Unsupported type";
              sub_1002A8980(-210, &v53, "cvWriteRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4880);
            }

            for (i = 0; i != v13; ++i)
            {
              if (v14 <= 2)
              {
                if (v14)
                {
                  if (v14 != 1)
                  {
                    v23 = *v15;
                    BYTE7(v56[0]) = 0;
                    v20 = v56 + 7;
                    do
                    {
                      *--v20 = v23 % 0xA + 48;
                      v24 = v23 >= 0xA;
                      v23 /= 0xAu;
                    }

                    while (v24);
                    v22 = 2;
                    goto LABEL_93;
                  }

                  v36 = *v15;
                  if (v36 >= 0)
                  {
                    v37 = *v15;
                  }

                  else
                  {
                    v37 = -v36;
                  }

                  BYTE7(v56[0]) = 0;
                  v20 = v56 + 6;
                  do
                  {
                    *v20-- = v37 % 0xA + 48;
                    v21 = v37 > 9;
                    v37 /= 0xAu;
                  }

                  while (v21);
                  if (v36 < 0)
                  {
                    *v20 = 45;
                  }

                  else
                  {
                    ++v20;
                  }
                }

                else
                {
                  v29 = *v15;
                  BYTE7(v56[0]) = 0;
                  v20 = v56 + 7;
                  do
                  {
                    *--v20 = v29 % 0xA + 48;
                    v21 = v29 > 9;
                    v29 /= 0xAu;
                  }

                  while (v21);
                }

                v22 = 1;
              }

              else
              {
                if (v14 <= 4)
                {
                  if (v14 == 3)
                  {
                    v32 = *v15;
                    if (v32 >= 0)
                    {
                      v33 = *v15;
                    }

                    else
                    {
                      v33 = -v32;
                    }

                    BYTE7(v56[0]) = 0;
                    v20 = v56 + 6;
                    do
                    {
                      *v20-- = v33 % 0xA + 48;
                      v21 = v33 > 9;
                      v33 /= 0xAu;
                    }

                    while (v21);
                    if (v32 < 0)
                    {
                      *v20 = 45;
                    }

                    else
                    {
                      ++v20;
                    }

                    v22 = 2;
                  }

                  else
                  {
                    v18 = *v15;
                    if (*v15 >= 0)
                    {
                      v19 = *v15;
                    }

                    else
                    {
                      v19 = -v18;
                    }

                    BYTE7(v56[0]) = 0;
                    v20 = v56 + 6;
                    do
                    {
                      *v20-- = v19 % 0xA + 48;
                      v21 = v19 > 9;
                      v19 /= 0xAu;
                    }

                    while (v21);
                    if (v18 < 0)
                    {
                      *v20 = 45;
                    }

                    else
                    {
                      ++v20;
                    }

                    v22 = 4;
                  }

                  goto LABEL_93;
                }

                if (v14 == 5)
                {
                  v34 = *v15;
                  if ((~*v15 & 0x7F800000) == 0)
                  {
                    if (fabsf(v34) == INFINITY)
                    {
                      if (*v15 >= 0)
                      {
                        v35 = ".Inf";
                      }

                      else
                      {
                        v35 = "-.Inf";
                      }

                      v20 = __dst;
                      strcpy(__dst, v35);
                      v22 = 4;
                      goto LABEL_93;
                    }

                    strcpy(__dst, ".Nan");
                    goto LABEL_112;
                  }

                  v38 = rintf(v34);
                  if (v34 != v38)
                  {
                    v43 = __dst;
                    sprintf(__dst, "%.8e", v34);
                    if (__dst[0] == 45 || __dst[0] == 43)
                    {
                      v43 = &__dst[1];
                    }

                    do
                    {
                      v45 = *v43++;
                      v44 = v45;
                    }

                    while ((v45 - 48) < 0xA);
                    if (v44 == 44)
                    {
                      *(v43 - 1) = 46;
                    }

LABEL_112:
                    v20 = __dst;
                    v22 = 4;
                    goto LABEL_93;
                  }

                  v20 = __dst;
                  sprintf(__dst, "%d.", v38);
                  v22 = 4;
                }

                else
                {
                  if (v14 != 6)
                  {
                    v30 = *v15;
                    if (*v15 >= 0)
                    {
                      v31 = *v15;
                    }

                    else
                    {
                      v31 = -v30;
                    }

                    BYTE7(v56[0]) = 0;
                    v20 = v56 + 6;
                    do
                    {
                      *v20-- = v31 % 0xA + 48;
                      v21 = v31 > 9;
                      v31 /= 0xAu;
                    }

                    while (v21);
                    if (v30 < 0)
                    {
                      *v20 = 45;
                    }

                    else
                    {
                      ++v20;
                    }

                    v22 = 8;
                    goto LABEL_93;
                  }

                  v25 = *v15;
                  v26 = *v15;
                  v27 = HIDWORD(*v15);
                  if ((~v27 & 0x7FF00000) == 0)
                  {
                    v28 = v27 & 0x7FFFFFFF;
                    if (v26)
                    {
                      ++v28;
                    }

                    if (v28 <= 0x7FF00000)
                    {
                      if (v26 >= 0)
                      {
                        v42 = ".Inf";
                      }

                      else
                      {
                        v42 = "-.Inf";
                      }

                      v20 = __dst;
                      strcpy(__dst, v42);
                      v22 = 8;
                      goto LABEL_93;
                    }

                    strcpy(__dst, ".Nan");
                    goto LABEL_119;
                  }

                  v39 = rint(v25);
                  if (v25 != v39)
                  {
                    v46 = __dst;
                    sprintf(__dst, "%.16e", *v15);
                    if (__dst[0] == 45 || __dst[0] == 43)
                    {
                      v46 = &__dst[1];
                    }

                    do
                    {
                      v48 = *v46++;
                      v47 = v48;
                    }

                    while ((v48 - 48) < 0xA);
                    if (v47 == 44)
                    {
                      *(v46 - 1) = 46;
                    }

LABEL_119:
                    v20 = __dst;
                    v22 = 8;
                    goto LABEL_93;
                  }

                  v20 = __dst;
                  sprintf(__dst, "%d.", v39);
                  v22 = 8;
                }
              }

LABEL_93:
              v40 = *(a1 + 4);
              if (v40 == 8)
              {
                v17 = strlen(v20);
                result = sub_10028AAB8(a1, 0, v20, v17);
              }

              else if (v40 == 16)
              {
                result = sub_10028ADF4(a1, 0, v20);
              }

              else
              {
                if ((v14 - 5) <= 1)
                {
                  v41 = strlen(v20);
                  if (v41)
                  {
                    if (v20[v41 - 1] == 46)
                    {
                      *&__dst[v41] = 48;
                    }
                  }
                }

                result = sub_10028B4EC(a1, 0, v20);
              }

              v15 = (v15 + v22);
            }
          }

          v11 = a2;
          v9 = v15 - a2;
          v10 = v52 + 1;
        }

        while (v52 + 1 != v50);
        if (!v49)
        {
          return result;
        }
      }
    }

    if (result >= 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void sub_10028A4D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10028A580(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  if (a1)
  {
    if (*a1 != 1280131417)
    {
      v10 = 0;
      v11 = 0;
      qmemcpy(sub_1002A80E0(&v10, 31), "Invalid pointer to file storage", 31);
      sub_1002A8980(-5, &v10, "cvWriteRawDataBase64", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8388);
    }

    if (!*(a1 + 8))
    {
      v10 = 0;
      v11 = 0;
      qmemcpy(sub_1002A80E0(&v10, 38), "The file storage is opened for reading", 38);
      sub_1002A8980(-2, &v10, "cvWriteRawDataBase64", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8388);
    }

    sub_100289404(a1, 1);
    v8 = *(a1 + 396);
    if (v8 != 2)
    {
      if (v8)
      {
        v10 = 0;
        v11 = 0;
        qmemcpy(sub_1002A80E0(&v10, 37), "Base64 should not be used at present.", 37);
        sub_1002A8980(-2, &v10, "cvWriteRawDataBase64", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8398);
      }

      sub_1002895CC(a1, 2);
    }

    v9 = *(a1 + 384);
    sub_1002934B8(v9, a4);
    sub_10029B70C(&v10, a2, a3, (v9 + 1));
    sub_10029371C();
  }

  v10 = 0;
  v11 = 0;
  *sub_1002A80E0(&v10, 2) = 29542;
  sub_1002A8980(-215, &v10, "cvWriteRawDataBase64", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8387);
}

const char *sub_10028A808(const char *result, _DWORD *a2)
{
  if (result)
  {
    v3 = result;
    v4 = strlen(result);
    v5 = v4;
    if (!v4)
    {
      return 0;
    }

    *a2 = 0;
    if (v4 < 1)
    {
      return 0;
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v9 = &v3[v6];
      v10 = *v9;
      v8 = v10 - 48;
      if ((v10 - 48) > 9)
      {
        v11 = memchr("ucwsifdr", v10, 9uLL);
        if (!v11)
        {
          v16 = 0;
          v17 = 0;
          qmemcpy(sub_1002A80E0(&v16, 31), "Invalid data type specification", 31);
          sub_1002A8980(-5, &v16, "icvDecodeFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4709);
        }

        v12 = &a2[v7];
        v13 = *v12;
        if (*v12)
        {
          v14 = v11 - "ucwsifdr";
          v12[1] = v14;
          if (v7 > 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 1;
          v14 = v11 - "ucwsifdr";
          *v12 = 1;
          v12[1] = v14;
          if (v7 > 0)
          {
LABEL_18:
            v15 = &a2[v7];
            if (v14 == *(v15 - 1))
            {
              v8 = 0;
              *(v15 - 2) += v13;
            }

            else
            {
              if (v7 >= 0xFE)
              {
                v16 = 0;
                v17 = 0;
                qmemcpy(sub_1002A80E0(&v16, 32), "Too long data type specification", 32);
                sub_1002A8980(-5, &v16, "icvDecodeFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4719);
              }

              v8 = 0;
              v7 += 2;
            }

            goto LABEL_6;
          }
        }

        v8 = 0;
        v7 += 2;
      }

      else
      {
        if (*(v9 + 1) - 48 <= 9)
        {
          v16 = 0;
          v8 = strtol(v9, &v16, 10);
          v6 = ~v3 + v16;
        }

        if (v8 <= 0)
        {
          v16 = 0;
          v17 = 0;
          qmemcpy(sub_1002A80E0(&v16, 31), "Invalid data type specification", 31);
          sub_1002A8980(-5, &v16, "icvDecodeFormat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4701);
        }
      }

LABEL_6:
      a2[v7] = v8;
      if (++v6 >= v5)
      {
        return (v7 / 2);
      }
    }
  }

  return result;
}

void *sub_10028AAB8(uint64_t a1, const char *a2, const void *a3, int a4)
{
  sub_100289404(a1, 0);
  v8 = *(a1 + 396);
  if (v8 == 2)
  {
    v27 = 0;
    v28 = 0;
    qmemcpy(sub_1002A80E0(&v27, 38), "Currently only Base64 data is allowed.", 38);
    sub_1002A8980(-2, &v27, "icvXMLWriteScalar", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3060);
  }

  if (!v8)
  {
    sub_1002895CC(a1, 1);
  }

  if ((*(a1 + 68) & 7) != 6 && (!a2 || (*(a1 + 68) & 7u) > 4))
  {
    v20 = *(a1 + 120);
    if (a2)
    {
      v27 = 0;
      v28 = 0;
      qmemcpy(sub_1002A80E0(&v27, 49), "elements with keys can not be written to sequence", 49);
      sub_1002A8980(-5, &v27, "icvXMLWriteScalar", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3078);
    }

    v21 = v20 - *(a1 + 128) + a4;
    *(a1 + 68) = 5;
    if (v21 <= *(a1 + 144))
    {
      v22 = *(a1 + 128);
      if (v20 <= v22)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v22 = *(a1 + 128);
      if (v21 - *(a1 + 64) > 10)
      {
LABEL_24:
        v23 = *(a1 + 120);
        v24 = *(a1 + 88);
        if (v23 > &v22[v24])
        {
          *v23 = 10;
          sub_10028614C(a1, *(a1 + 128));
          v22 = *(a1 + 128);
          LODWORD(v24) = *(a1 + 88);
        }

        v25 = *(a1 + 64);
        if (v24 == v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = v25;
          memset(v22, 32, v25);
          *(a1 + 88) = v25;
          v22 = *(a1 + 128);
        }

        v20 = &v22[v26];
        *(a1 + 120) = &v22[v26];
        goto LABEL_33;
      }

      if (v20 <= v22)
      {
        goto LABEL_28;
      }
    }

    if (*(v20 - 1) == 62)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v20 > &v22[*(a1 + 64)] && *(v20 - 1) != 62)
    {
      *v20++ = 32;
    }

LABEL_33:
    result = memcpy(v20, a3, a4);
    *(a1 + 120) = &v20[a4];
    return result;
  }

  sub_10029433C(a1, a2, 1, 0, 0);
  v9 = *(a1 + 120);
  v10 = a4;
  v11 = *(a1 + 136);
  if (&v9[a4] >= v11)
  {
    v12 = *(a1 + 128);
    v13 = v9 - v12;
    v14 = (3 * (v11 - v12) + ((3 * (v11 - v12)) >> 63)) >> 1;
    if (v13 + a4 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13 + a4;
    }

    v16 = sub_1001D90AC(v15 + 256);
    v17 = v16;
    v18 = *(a1 + 128);
    *(a1 + 120) = &v16[*(a1 + 120) - v18];
    if (v13 >= 1)
    {
      memcpy(v16, v18, v13 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v17;
    *(a1 + 136) = &v17[v15];
    v9 = &v17[v13];
  }

  memcpy(v9, a3, v10);
  *(a1 + 120) = &v9[v10];
  return sub_10029433C(a1, a2, 2, 0, 0);
}

char *sub_10028ADF4(uint64_t a1, const char *a2, const char *a3)
{
  sub_100289404(a1, 0);
  v6 = *(a1 + 396);
  if (v6 == 2)
  {
    v48 = 0;
    v49 = 0;
    qmemcpy(sub_1002A80E0(&v48, 36), "At present, output Base64 data only.", 36);
    sub_1002A8980(-2, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1899);
  }

  if (!v6)
  {
    sub_1002895CC(a1, 1);
  }

  v7 = *(a1 + 68);
  if (a2 && !*a2)
  {
    a2 = 0;
  }

  if ((*(a1 + 68) & 7u) < 5)
  {
    *(a1 + 12) = 0;
    if (a2)
    {
      v7 = 38;
    }

    else
    {
      v7 = 37;
    }

    if (!a2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (((*(a1 + 68) & 7) == 6) != (a2 != 0))
    {
      v48 = 0;
      v49 = 0;
      qmemcpy(sub_1002A80E0(&v48, 85), "An attempt to add element without a key to a map, or add element with key to sequence", 85);
      sub_1002A8980(-5, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1916);
    }

    if (!a2)
    {
LABEL_32:
      v9 = 0;
      if (!a3)
      {
        goto LABEL_33;
      }

LABEL_21:
      v11 = strlen(a3);
      v12 = *(a1 + 120);
      if ((v7 & 8) != 0)
      {
        goto LABEL_34;
      }

LABEL_22:
      result = *(a1 + 128);
      v14 = *(a1 + 88);
      if (v12 > &result[v14])
      {
        *v12 = 10;
        sub_10028614C(a1, *(a1 + 128));
        result = *(a1 + 128);
        LODWORD(v14) = *(a1 + 88);
      }

      v15 = *(a1 + 64);
      if (v14 == v15)
      {
        v16 = &result[v14];
        *(a1 + 120) = v16;
        if ((v7 & 7) == 6)
        {
LABEL_45:
          if (!a2)
          {
            goto LABEL_70;
          }

          goto LABEL_46;
        }
      }

      else
      {
        memset(result, 32, v15);
        *(a1 + 88) = v15;
        result = *(a1 + 128);
        v16 = &result[v15];
        *(a1 + 120) = v16;
        if ((v7 & 7) == 6)
        {
          goto LABEL_45;
        }
      }

      *v16 = 45;
      if (a3)
      {
        v16[1] = 32;
        v16 += 2;
        if (!a2)
        {
          goto LABEL_70;
        }
      }

      else
      {
        ++v16;
        if (!a2)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_46;
    }
  }

  v8 = strlen(a2);
  if (!v8)
  {
    v48 = 0;
    v49 = 0;
    v17 = sub_1002A80E0(&v48, 19);
    *(v17 + 15) = 2037674093;
    *v17 = *"The key is an empty";
    sub_1002A8980(-5, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1928);
  }

  v9 = v8;
  if (v8 > 4096)
  {
    v48 = 0;
    v49 = 0;
    v10 = sub_1002A80E0(&v48, 19);
    *(v10 + 15) = 1735290732;
    *v10 = *"The key is too long";
    sub_1002A8980(-5, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1931);
  }

  if (a3)
  {
    goto LABEL_21;
  }

LABEL_33:
  v11 = 0;
  v12 = *(a1 + 120);
  if ((v7 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_34:
  if ((v7 & 0x20) == 0)
  {
    *v12++ = 44;
  }

  result = *(a1 + 128);
  v18 = v11 + v9 + v12 - result;
  if (v18 <= *(a1 + 144) || (v19 = *(a1 + 64), v18 - v19 < 11))
  {
    *v12 = 32;
    v16 = v12 + 1;
    goto LABEL_45;
  }

  *(a1 + 120) = v12;
  v20 = *(a1 + 88);
  if (v12 > &result[v20])
  {
    *v12 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v20) = *(a1 + 88);
    v19 = *(a1 + 64);
  }

  if (v20 != v19)
  {
    memset(result, 32, v19);
    *(a1 + 88) = v19;
    result = *(a1 + 128);
  }

  v16 = &result[v19];
  *(a1 + 120) = v16;
  if (!a2)
  {
LABEL_70:
    if (!a3)
    {
      goto LABEL_79;
    }

    goto LABEL_71;
  }

LABEL_46:
  v21 = *a2;
  if (v21 != 95 && (v21 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v48 = 0;
    v49 = 0;
    qmemcpy(sub_1002A80E0(&v48, 33), "Key must start with a letter or _", 33);
    sub_1002A8980(-5, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1966);
  }

  v22 = *(a1 + 136);
  if (&v16[v9] >= v22)
  {
    v23 = *(a1 + 128);
    v24 = v16 - v23;
    v25 = (3 * (v22 - v23) + ((3 * (v22 - v23)) >> 63)) >> 1;
    v26 = v9 + v16 - v23;
    if (v26 <= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    result = sub_1001D90AC(v27 + 256);
    v28 = result;
    v29 = *(a1 + 128);
    *(a1 + 120) = &result[*(a1 + 120) - v29];
    if (v24 >= 1)
    {
      result = memcpy(result, v29, v24 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v28;
    *(a1 + 136) = &v28[v27];
    v16 = &v28[v24];
  }

  if (v9 >= 1)
  {
    v30 = v9;
    v31 = v16;
    do
    {
      v33 = *a2++;
      v32 = v33;
      *v31 = v33;
      if ((v33 - 58) <= 0xF5u && ((v32 & 0xDF) - 91) <= 0xE5u)
      {
        v34 = v32 - 32;
        v35 = v34 > 0x3F;
        v36 = (1 << v34) & 0x8000000000002001;
        if (v35 || v36 == 0)
        {
          v48 = 0;
          v49 = 0;
          qmemcpy(sub_1002A80E0(&v48, 80), "Key names may only contain alphanumeric characters [a-zA-Z0-9], '-', '_' and ' '", 80);
          sub_1002A8980(-5, &v48, "icvYMLWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 1976);
        }
      }

      ++v31;
      --v30;
    }

    while (v30);
  }

  v38 = &v16[v9];
  *v38 = 58;
  v16 = v38 + 1;
  if (!a3 || (v7 & 8) != 0)
  {
    goto LABEL_70;
  }

  v16 = v38 + 2;
  v38[1] = 32;
LABEL_71:
  v39 = *(a1 + 136);
  if (&v16[v11] >= v39)
  {
    v40 = *(a1 + 128);
    v41 = v16 - v40;
    v42 = (3 * (v39 - v40) + ((3 * (v39 - v40)) >> 63)) >> 1;
    v43 = v11 + v16 - v40;
    if (v43 <= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v43;
    }

    v45 = sub_1001D90AC(v44 + 256);
    v46 = v45;
    v47 = *(a1 + 128);
    *(a1 + 120) = &v45[*(a1 + 120) - v47];
    if (v41 >= 1)
    {
      memcpy(v45, v47, v41 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v46;
    *(a1 + 136) = &v46[v44];
    v16 = &v46[v41];
  }

  result = memcpy(v16, a3, v11);
  v16 += v11;
LABEL_79:
  *(a1 + 120) = v16;
  *(a1 + 68) = v7 & 0xFFFFFFDF;
  return result;
}

void sub_10028B45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

char *sub_10028B4EC(uint64_t a1, const char *a2, const char *a3)
{
  sub_100289404(a1, 0);
  v6 = *(a1 + 396);
  if (v6 == 2)
  {
    v54 = 0;
    v55 = 0;
    qmemcpy(sub_1002A80E0(&v54, 36), "At present, output Base64 data only.", 36);
    sub_1002A8980(-2, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3855);
  }

  if (!v6)
  {
    sub_1002895CC(a1, 1);
  }

  if (!a2)
  {
    v10 = 0;
    v8 = 0;
    if (a3)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (!*a2)
  {
    v10 = 0;
    a2 = 0;
    v8 = 0;
    if (a3)
    {
      goto LABEL_19;
    }

LABEL_13:
    v11 = 0;
    v12 = *(a1 + 68);
    v13 = v12 & 7;
    if (v13 >= 5)
    {
      goto LABEL_20;
    }

LABEL_14:
    *(a1 + 12) = 0;
    if (v10)
    {
      v12 = 38;
    }

    else
    {
      v12 = 37;
    }

    goto LABEL_22;
  }

  v7 = strlen(a2);
  if (!v7)
  {
    v54 = 0;
    v55 = 0;
    v14 = sub_1002A80E0(&v54, 19);
    *(v14 + 15) = 2037674093;
    *v14 = *"The key is an empty";
    sub_1002A8980(-5, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3867);
  }

  v8 = v7;
  if (v7 > 4096)
  {
    v54 = 0;
    v55 = 0;
    v9 = sub_1002A80E0(&v54, 19);
    *(v9 + 15) = 1735290732;
    *v9 = *"The key is too long";
    sub_1002A8980(-5, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3869);
  }

  v10 = 1;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_19:
  v11 = strlen(a3);
  v12 = *(a1 + 68);
  v13 = v12 & 7;
  if (v13 < 5)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (v10 != (v13 == 6))
  {
    v54 = 0;
    v55 = 0;
    qmemcpy(sub_1002A80E0(&v54, 85), "An attempt to add element without a key to a map, or add element with key to sequence", 85);
    sub_1002A8980(-5, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3881);
  }

LABEL_22:
  if ((v12 & 8) == 0)
  {
    v15 = *(a1 + 120);
    if ((v12 & 0x20) != 0)
    {
      result = *(a1 + 128);
      v17 = *(a1 + 88);
      if (v15 <= &result[v17])
      {
LABEL_38:
        v20 = *(a1 + 64);
        if (v17 == v20)
        {
          v22 = v17;
          goto LABEL_40;
        }

        v22 = v20;
        goto LABEL_43;
      }
    }

    else
    {
      strcpy(v15, ",\n");
      sub_10028614C(a1, *(a1 + 128));
      result = *(a1 + 128);
      *(a1 + 120) = result;
      v15 = result;
      v17 = *(a1 + 88);
      if (result <= &result[v17])
      {
        goto LABEL_38;
      }
    }

    *v15 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v17) = *(a1 + 88);
    goto LABEL_38;
  }

  v18 = *(a1 + 120);
  if ((v12 & 0x20) == 0)
  {
    *v18++ = 44;
  }

  result = *(a1 + 128);
  v19 = v11 + v8 + v18 - result;
  if (*(a1 + 144) >= v19 || (v20 = *(a1 + 64), v19 - v20 < 11))
  {
    *v18 = 32;
    v23 = v18 + 1;
    if (!v10)
    {
      goto LABEL_66;
    }

    goto LABEL_44;
  }

  *(a1 + 120) = v18;
  v21 = *(a1 + 88);
  if (v18 > &result[v21])
  {
    *v18 = 10;
    sub_10028614C(a1, *(a1 + 128));
    result = *(a1 + 128);
    LODWORD(v21) = *(a1 + 88);
    v20 = *(a1 + 64);
  }

  v22 = v20;
  if (v21 == v20)
  {
LABEL_40:
    v23 = &result[v22];
    *(a1 + 120) = &result[v22];
    if (!v10)
    {
      goto LABEL_66;
    }

    goto LABEL_44;
  }

LABEL_43:
  memset(result, 32, v22);
  *(a1 + 88) = v20;
  result = *(a1 + 128);
  v23 = &result[v22];
  *(a1 + 120) = &result[v22];
  if (!v10)
  {
    goto LABEL_66;
  }

LABEL_44:
  v24 = *a2;
  if (v24 != 95 && (v24 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v54 = 0;
    v55 = 0;
    qmemcpy(sub_1002A80E0(&v54, 33), "Key must start with a letter or _", 33);
    sub_1002A8980(-5, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3923);
  }

  v53 = v11;
  v25 = *(a1 + 136);
  if (&v23[v8] >= v25)
  {
    v26 = *(a1 + 128);
    v27 = v23 - v26;
    v28 = (3 * (v25 - v26) + ((3 * (v25 - v26)) >> 63)) >> 1;
    v29 = v23 - v26 + v8;
    if (v29 <= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    result = sub_1001D90AC(v30 + 256);
    v31 = result;
    v32 = *(a1 + 128);
    *(a1 + 120) = &result[*(a1 + 120) - v32];
    if (v27 >= 1)
    {
      result = memcpy(result, v32, v27 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v31;
    *(a1 + 136) = &v31[v30];
    v23 = &v31[v27];
  }

  *v23 = 34;
  v33 = (v23 + 1);
  if (v8)
  {
    v34 = v33;
    v35 = v8;
    do
    {
      v37 = *a2++;
      v36 = v37;
      *v34 = v37;
      if ((v37 - 58) <= 0xF5u && ((v36 & 0xDF) - 91) <= 0xE5u)
      {
        v38 = v36 - 32;
        v39 = v38 > 0x3F;
        v40 = (1 << v38) & 0x8000000000002001;
        if (v39 || v40 == 0)
        {
          v54 = 0;
          v55 = 0;
          qmemcpy(sub_1002A80E0(&v54, 80), "Key names may only contain alphanumeric characters [a-zA-Z0-9], '-', '_' and ' '", 80);
          sub_1002A8980(-5, &v54, "icvJSONWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 3934);
        }
      }

      ++v34;
      --v35;
    }

    while (v35);
  }

  v42 = &v33[v8];
  *v42 = 14882;
  v23 = &v33[v8 + 3];
  v42[2] = 32;
  v11 = v53;
LABEL_66:
  if (a3)
  {
    v43 = *(a1 + 136);
    if (&v23[v11] >= v43)
    {
      v44 = *(a1 + 128);
      v45 = v23 - v44;
      v46 = (3 * (v43 - v44) + ((3 * (v43 - v44)) >> 63)) >> 1;
      v47 = v11;
      v48 = v23 - v44 + v11;
      if (v48 <= v46)
      {
        v49 = v46;
      }

      else
      {
        v49 = v48;
      }

      v50 = sub_1001D90AC(v49 + 256);
      v51 = v50;
      v52 = *(a1 + 128);
      *(a1 + 120) = &v50[*(a1 + 120) - v52];
      if (v45 >= 1)
      {
        memcpy(v50, v52, v45 & 0x7FFFFFFF);
      }

      *(a1 + 128) = v51;
      *(a1 + 136) = &v51[v49];
      v23 = &v51[v45];
      v11 = v47;
    }

    result = memcpy(v23, a3, v11);
    v23 += v11;
  }

  *(a1 + 120) = v23;
  *(a1 + 68) = v12 & 0xFFFFFFDF;
  return result;
}

void sub_10028BB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

double sub_10028BBBC(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = -27;
LABEL_5:
    v6 = 0;
    v7 = 0;
    qmemcpy(sub_1002A80E0(&v6, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v3, &v6, "cvStartReadRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4920);
  }

  if (*a1 != 1280131417)
  {
    v3 = -5;
    goto LABEL_5;
  }

  if (!a2 || !a3)
  {
    v6 = 0;
    v7 = 0;
    qmemcpy(sub_1002A80E0(&v6, 42), "Null pointer to source file node or reader", 42);
    sub_1002A8980(-27, &v6, "cvStartReadRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4923);
  }

  v4 = *a2 & 7;
  if ((v4 - 1) > 1)
  {
    if (v4)
    {
      if (v4 != 5)
      {
        v6 = 0;
        v7 = 0;
        qmemcpy(sub_1002A80E0(&v6, 56), "The file node should be a numerical scalar or a sequence", 56);
        sub_1002A8980(-5, &v6, "cvStartReadRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4943);
      }

      sub_100232554(*(a2 + 16), a3, 0);
    }

    else
    {
      result = 0.0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *(a3 + 32) = a2;
    *(a3 + 40) = a2 + 64;
    *(a3 + 24) = a2;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_10028BDD8(_DWORD *a1, void *a2, int a3, uint64_t a4, const char *a5)
{
  v27 = a4;
  v28 = a3;
  if (!a1)
  {
    v7 = -27;
LABEL_5:
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v7, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4955);
  }

  if (*a1 != 1280131417)
  {
    v7 = -5;
    goto LABEL_5;
  }

  if (!a2 || !a4)
  {
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 43), "Null pointer to reader or destination array", 43);
    sub_1002A8980(-27, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4958);
  }

  if (a3 != 1 && !a2[1])
  {
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 51), "The readed sequence is a scalar, thus len must be 1", 51);
    sub_1002A8980(-201, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 4961);
  }

  v8 = sub_10028A808(a5, v31);
  result = sub_10028C47C(a5);
  v10 = v8;
  v26 = result;
LABEL_13:
  v11 = 0;
  v12 = 0;
  v13 = v27;
  while (1)
  {
    v14 = &v31[2 * v11];
    v15 = *v14;
    v16 = v14[1];
    LODWORD(v14) = (((v16 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v16 & 7))) & 3);
    v17 = (v13 + ((v12 + v14 - 1) & -v14));
    if (v15 >= 1)
    {
      break;
    }

LABEL_14:
    v13 = v27;
    v12 = v17 - v27;
    if (++v11 == v10)
    {
      v27 += v26;
      goto LABEL_13;
    }
  }

  v18 = 0;
  while (1)
  {
    v19 = a2[3];
    if ((*v19 & 7) != 1)
    {
      if ((*v19 & 7) != 2)
      {
        v29 = 0;
        v30 = 0;
        qmemcpy(sub_1002A80E0(&v29, 46), "The sequence element is not a numerical scalar", 46);
        sub_1002A8980(-2, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5077);
      }

      v20 = *(v19 + 16);
      if (v16 > 3)
      {
        if (v16 <= 5)
        {
          if (v16 == 4)
          {
            *v17 = rint(v20);
          }

          else
          {
            v23 = v20;
            *v17 = v23;
          }

          ++v17;
          goto LABEL_63;
        }

        if (v16 == 6)
        {
          *v17 = v20;
          v17 += 2;
          goto LABEL_63;
        }

        if (v16 != 7)
        {
LABEL_79:
          v29 = 0;
          v30 = 0;
          *sub_1002A80E0(&v29, 16) = *"Unsupported type";
          sub_1002A8980(-210, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5071);
        }

        v19 = rint(v20);
LABEL_51:
        *v17 = v19;
        v17 += 2;
        goto LABEL_63;
      }

      if (v16 <= 1)
      {
        if (v16)
        {
          if (v16 != 1)
          {
            goto LABEL_79;
          }

          v19 = rint(v20);
          goto LABEL_28;
        }

        v19 = rint(v20);
LABEL_53:
        LODWORD(v19) = v19 & ~(v19 >> 31);
        v21 = v19 < 255;
        v22 = -1;
        goto LABEL_54;
      }

      if (v16 != 2)
      {
        v19 = rint(v20);
LABEL_46:
        if (v19 <= -32768)
        {
          LODWORD(v19) = -32768;
        }

        v24 = 0x7FFF;
        goto LABEL_60;
      }

      v19 = rint(v20);
LABEL_59:
      LODWORD(v19) = v19 & ~(v19 >> 31);
      v24 = 0xFFFF;
LABEL_60:
      if (v19 >= v24)
      {
        LOWORD(v19) = v24;
      }

      *v17 = v19;
      v17 = (v17 + 2);
      goto LABEL_63;
    }

    LODWORD(v19) = *(v19 + 16);
    if (v16 <= 3)
    {
      if (v16 <= 1)
      {
        if (!v16)
        {
          goto LABEL_53;
        }

        if (v16 != 1)
        {
          goto LABEL_78;
        }

LABEL_28:
        if (v19 <= -128)
        {
          LODWORD(v19) = -128;
        }

        v21 = v19 < 127;
        v22 = 127;
LABEL_54:
        if (!v21)
        {
          LOBYTE(v19) = v22;
        }

        *v17 = v19;
        v17 = (v17 + 1);
        goto LABEL_63;
      }

      if (v16 != 2)
      {
        goto LABEL_46;
      }

      goto LABEL_59;
    }

    if (v16 > 5)
    {
      if (v16 == 6)
      {
        *v17 = v19;
        v17 += 2;
        goto LABEL_63;
      }

      if (v16 != 7)
      {
LABEL_78:
        v29 = 0;
        v30 = 0;
        *sub_1002A80E0(&v29, 16) = *"Unsupported type";
        sub_1002A8980(-210, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5021);
      }

      goto LABEL_51;
    }

    if (v16 == 4)
    {
      *v17 = v19;
    }

    else
    {
      *v17 = v19;
    }

    ++v17;
LABEL_63:
    v25 = a2[3] + 32;
    a2[3] = v25;
    if (v25 >= a2[5])
    {
      result = sub_10023323C(a2, 1);
    }

    if (v28 - 1 == v18)
    {
      break;
    }

    if (v15 == ++v18)
    {
      v28 -= v15;
      v10 = v8;
      goto LABEL_14;
    }
  }

  if (v28 != v15 || v8 - 1 != v11)
  {
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 60), "The sequence slice does not fit an integer number of records", 60);
    sub_1002A8980(-201, &v29, "cvReadRawDataSlice", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5092);
  }

  if (!a2[1])
  {
    a2[3] -= 32;
  }

  return result;
}

void sub_10028C3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10028C47C(const char *a1)
{
  v1 = a1;
  v2 = sub_10028A808(a1, &v16);
  if (v2 < 1)
  {
    v6 = -1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (((*(&v16 + v3 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v16 + v3 + 1) & 7))) & 3);
      v4 = ((v4 + v5 - 1) & -v5) + v5 * *(&v16 + v3);
      v3 += 2;
    }

    while (v3 < (2 * v2));
    v6 = v4 - 1;
  }

  v7 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v12 = *v1;
        if (v12 <= 0x68)
        {
          break;
        }

        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        if (v7 <= 2)
        {
          v9 = 2;
        }

        else
        {
          v9 = v7;
        }

        if (v12 != 119)
        {
          v9 = v7;
        }

        if (v12 != 117)
        {
          v8 = v9;
        }

        if (v7 <= 4)
        {
          v10 = 4;
        }

        else
        {
          v10 = v7;
        }

        if (v7 <= 2)
        {
          v11 = 2;
        }

        else
        {
          v11 = v7;
        }

        if (v12 == 115)
        {
          v7 = v11;
        }

        if (v12 == 105)
        {
          v7 = v10;
        }

        if (*v1 > 0x74u)
        {
          v7 = v8;
        }

        ++v1;
      }

      if (*v1 <= 0x63u)
      {
        break;
      }

      if (v7 <= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = v7;
      }

      if (v12 == 102)
      {
        v7 = v13;
      }

      if (v12 == 100)
      {
        v7 = 8;
      }

      ++v1;
    }

    if (v12 != 99)
    {
      break;
    }

    if (v7 <= 1)
    {
      v7 = 1;
    }

LABEL_43:
    ++v1;
  }

  if (*v1)
  {
    goto LABEL_43;
  }

  v14 = (((v17 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v17 & 7))) & 3);
  return (((v6 + v14) & -v14) + v7 - 1) & -v7;
}

uint64_t sub_10028C630(_DWORD *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!a2 || !a3)
  {
    v10[0] = 0;
    v10[1] = 0;
    qmemcpy(sub_1002A80E0(v10, 54), "Null pointers to source file node or destination array", 54);
    sub_1002A8980(-27, v10, "cvReadRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5106);
  }

  sub_10028BBBC(a1, a2, v11);
  if ((*a2 & 7) == 5)
  {
    v8 = *(*(a2 + 16) + 40);
  }

  else
  {
    v8 = 1;
  }

  return sub_10028BDD8(a1, v11, v8, a3, a4);
}

void *sub_10028C72C(uint64_t a1)
{
  if (!a1 || *(a1 + 4) != 72)
  {
    v18 = 0;
    v19 = 0;
    v2 = sub_1002A80E0(&v18, 17);
    *(v2 + 16) = 111;
    *v2 = *"Invalid type info";
    sub_1002A8980(-201, &v18, "cvRegisterType", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6559);
  }

  if (!*(a1 + 32) || !*(a1 + 40) || !*(a1 + 48) || !*(a1 + 56))
  {
    v18 = 0;
    v19 = 0;
    qmemcpy(sub_1002A80E0(&v18, 81), "Some of required function pointers (is_instance, release, read or write) are NULL", 81);
    sub_1002A8980(-27, &v18, "cvRegisterType", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6565);
  }

  v3 = *(a1 + 24);
  v4 = *v3;
  if (v4 != 95 && (v4 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v18 = 0;
    v19 = 0;
    qmemcpy(sub_1002A80E0(&v18, 41), "Type name should start with a letter or _", 41);
    sub_1002A8980(-5, &v18, "cvRegisterType", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6569);
  }

  v6 = strlen(v3);
  v7 = v6;
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a1 + 24) + v8);
      if ((v9 - 58) <= 0xF5u && ((v9 & 0xDF) - 91) <= 0xE5u)
      {
        v10 = *(*(a1 + 24) + v8);
        if (v10 != 45 && v10 != 95)
        {
          v18 = 0;
          v19 = 0;
          qmemcpy(sub_1002A80E0(&v18, 54), "Type name should contain only letters, digits, - and _", 54);
          sub_1002A8980(-5, &v18, "cvRegisterType", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6578);
        }
      }

      ++v8;
    }

    while ((v6 & 0x7FFFFFFF) != v8);
  }

  v11 = sub_1001D90AC(v6 + 73);
  v13 = *(a1 + 32);
  v12 = *(a1 + 48);
  v14 = *(a1 + 64);
  *(v11 + 16) = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 64) = v14;
  *(v11 + 32) = v13;
  *(v11 + 48) = v12;
  *(v11 + 24) = v11 + 72;
  result = memcpy((v11 + 72), *(a1 + 24), v7 + 1);
  *v11 = 0;
  v16 = qword_1004D5468;
  *(v11 + 8) = 0;
  *(v11 + 16) = v16;
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = &qword_1004D5470;
  }

  *v17 = v11;
  qword_1004D5468 = v11;
  return result;
}

void *sub_10028CA60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = 0x4800000000;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  v9[7] = a6;
  v9[8] = a7;
  sub_10028C72C(v9);
  *a1 = qword_1004D5468;
  return a1;
}

uint64_t sub_10028CABC(uint64_t a1)
{
  v2 = *(*a1 + 24);
  v3 = qword_1004D5468;
  if (v2)
  {
    v4 = qword_1004D5468 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = qword_1004D5468;
    while (strcmp(*(v5 + 24), v2))
    {
      v5 = *(v5 + 16);
      if (!v5)
      {
        return a1;
      }
    }

    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = &qword_1004D5468;
    if (v6)
    {
      v8 = (v6 + 16);
      v9 = v3;
    }

    else
    {
      v9 = *(v5 + 16);
    }

    *v8 = v7;
    if (v7)
    {
      *(v7 + 8) = v6;
      if (v9)
      {
        v10 = qword_1004D5470 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      qword_1004D5470 = v6;
      if (v9)
      {
        v12 = v6 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    qword_1004D5470 = 0;
    qword_1004D5468 = 0;
LABEL_19:
    j__free(v5);
  }

  return a1;
}

BOOL sub_10028CB90(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 17049;
  }

  return result;
}

void *sub_10028CBA8(void *result)
{
  if (!result)
  {
    v2[0] = 0;
    v2[1] = 0;
    v1 = sub_1002A80E0(v2, 19);
    *(v1 + 15) = 1919251566;
    *v1 = *"NULL double pointer";
    sub_1002A8980(-27, v2, "icvReleaseSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5729);
  }

  *result = 0;
  return result;
}

_DWORD *sub_10028CC48(uint64_t a1, uint64_t a2)
{
  __endptr = 0;
  v4 = sub_100283BF4(a1, a2, "flags");
  if (v4 && (*v4 & 7) == 3)
  {
    v5 = *(v4 + 24);
    v6 = sub_100283BF4(a1, a2, "count");
    if (!v6)
    {
LABEL_4:
      LODWORD(v7) = -1;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v6 = sub_100283BF4(a1, a2, "count");
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  if ((*v6 & 7) == 2)
  {
    v7 = rint(*(v6 + 16));
  }

  else if ((*v6 & 7) == 1)
  {
    LODWORD(v7) = *(v6 + 16);
  }

  else
  {
    LODWORD(v7) = 0x7FFFFFFF;
  }

LABEL_11:
  v66 = v7;
  v8 = sub_100283BF4(a1, a2, "dt");
  if (!v8 || (*v8 & 7) != 3 || (v9 = *(v8 + 24), !v5) || v66 == -1 || !v9)
  {
    v72 = 0;
    v71 = 0;
    qmemcpy(sub_1002A80E0(&v71, 48), "Some of essential sequence attributes are absent", 48);
    sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5953);
  }

  if (*v5 - 48 > 9)
  {
    if (strstr(v5, "curve"))
    {
      v13 = 1117327360;
    }

    else
    {
      v13 = 1117323264;
    }

    if (strstr(v5, "closed"))
    {
      v13 |= 0x4000u;
    }

    if (strstr(v5, "hole"))
    {
      v12 = v13 | 0x8000;
    }

    else
    {
      v12 = v13;
    }

    if (!strstr(v5, "untyped"))
    {
      v12 |= sub_10029A8E0(v9);
    }
  }

  else
  {
    v10 = strtol(v5, &__endptr, 16);
    if (__endptr == v5 || (v10 & 0xFFFF0000) != 0x42990000)
    {
      v72 = 0;
      v71 = 0;
      qmemcpy(sub_1002A80E0(&v71, 30), "The sequence flags are invalid", 30);
      sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5970);
    }

    if ((v10 & 0xE00) == 0x200)
    {
      v11 = 1117327360;
    }

    else
    {
      v11 = 1117323264;
    }

    v12 = v10 & 0x81FF | (((v10 >> 12) & 1) << 14) | v11;
  }

  v14 = sub_100283BF4(a1, a2, "header_dt");
  if (v14 && (*v14 & 7) == 3)
  {
    v15 = *(v14 + 24);
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100283BF4(a1, a2, "header_user_data");
  v17 = v16 != 0;
  if ((v15 != 0) != v17)
  {
    v72 = 0;
    v71 = 0;
    qmemcpy(sub_1002A80E0(&v71, 74), "One of header_dt and header_user_data is there, while the other is not", 74);
    sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6004);
  }

  v18 = sub_100283BF4(a1, a2, "rect");
  v19 = sub_100283BF4(a1, a2, "origin");
  v20 = v19;
  if (v18)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = v16 != 0;
  }

  if (v19)
  {
    ++v21;
  }

  if (v21 >= 2)
  {
    v72 = 0;
    v71 = 0;
    qmemcpy(sub_1002A80E0(&v71, 66), "Only one of header_user_data, rect and origin tags may occur", 66);
    sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6010);
  }

  if (v15)
  {
    v22 = sub_10028A808(v15, &v71);
    if (v22 < 1)
    {
      v26 = 96;
    }

    else
    {
      v23 = 0;
      v24 = 96;
      do
      {
        v25 = (((*(&v71 + v23 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v71 + v23 + 1) & 7))) & 3);
        v24 = ((v24 + v25 - 1) & -v25) + v25 * *(&v71 + v23);
        v23 += 2;
      }

      while (v23 < (2 * v22));
      v26 = v24;
    }
  }

  else
  {
    v27 = 96;
    if (v19)
    {
      v27 = 104;
    }

    if (v18)
    {
      v26 = 128;
    }

    else
    {
      v26 = v27;
    }
  }

  v28 = sub_10028A808(v9, &v71);
  if (v28 < 1)
  {
    v32 = -1;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = (((*(&v71 + v29 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v71 + v29 + 1) & 7))) & 3);
      v30 = ((v30 + v31 - 1) & -v31) + v31 * *(&v71 + v29);
      v29 += 2;
    }

    while (v29 < (2 * v28));
    v32 = v30 - 1;
  }

  v33 = (((HIDWORD(v71) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (BYTE4(v71) & 7))) & 3);
  v34 = sub_100231FEC(v12, v26, (v32 + v33) & -v33, *(a1 + 24));
  if (v16)
  {
    if (!v15)
    {
      v72 = 0;
      v71 = 0;
      v38 = sub_1002A80E0(&v71, 9);
      *(v38 + 8) = 116;
      *v38 = *"header_dt";
      sub_1002A8980(-215, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6026);
    }

    sub_10028BBBC(a1, v16, &v71);
    if ((*v16 & 7) == 5)
    {
      v35 = *(*(v16 + 16) + 40);
    }

    else
    {
      v35 = 1;
    }

    sub_10028BDD8(a1, &v71, v35, (v34 + 24), v15);
  }

  else if (v18)
  {
    v36 = sub_100283BF4(a1, v18, "x");
    if (v36)
    {
      if ((*v36 & 7) == 2)
      {
        v37 = rint(*(v36 + 16));
      }

      else if ((*v36 & 7) == 1)
      {
        LODWORD(v37) = *(v36 + 16);
      }

      else
      {
        LODWORD(v37) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v37) = 0;
    }

    v34[24] = v37;
    v41 = sub_100283BF4(a1, v18, "y");
    if (v41)
    {
      if ((*v41 & 7) == 2)
      {
        v42 = rint(*(v41 + 16));
      }

      else if ((*v41 & 7) == 1)
      {
        LODWORD(v42) = *(v41 + 16);
      }

      else
      {
        LODWORD(v42) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v42) = 0;
    }

    v34[25] = v42;
    v43 = sub_100283BF4(a1, v18, "width");
    if (v43)
    {
      if ((*v43 & 7) == 2)
      {
        v44 = rint(*(v43 + 16));
      }

      else if ((*v43 & 7) == 1)
      {
        LODWORD(v44) = *(v43 + 16);
      }

      else
      {
        LODWORD(v44) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v44) = 0;
    }

    v34[26] = v44;
    v45 = sub_100283BF4(a1, v18, "height");
    if (v45)
    {
      if ((*v45 & 7) == 2)
      {
        v46 = rint(*(v45 + 16));
      }

      else if ((*v45 & 7) == 1)
      {
        LODWORD(v46) = *(v45 + 16);
      }

      else
      {
        LODWORD(v46) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v46) = 0;
    }

    v34[27] = v46;
    v47 = sub_100283BF4(a1, a2, "color");
    if (v47)
    {
      if ((*v47 & 7) == 2)
      {
        v34[28] = rint(*(v47 + 16));
      }

      else if ((*v47 & 7) == 1)
      {
        v34[28] = *(v47 + 16);
      }

      else
      {
        v34[28] = 0x7FFFFFFF;
      }
    }

    else
    {
      v34[28] = 0;
    }
  }

  else if (v20)
  {
    v39 = sub_100283BF4(a1, v20, "x");
    if (v39)
    {
      if ((*v39 & 7) == 2)
      {
        v40 = rint(*(v39 + 16));
      }

      else if ((*v39 & 7) == 1)
      {
        LODWORD(v40) = *(v39 + 16);
      }

      else
      {
        LODWORD(v40) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v40) = 0;
    }

    v34[24] = v40;
    v48 = sub_100283BF4(a1, v20, "y");
    if (v48)
    {
      if ((*v48 & 7) == 2)
      {
        v49 = rint(*(v48 + 16));
      }

      else if ((*v48 & 7) == 1)
      {
        LODWORD(v49) = *(v48 + 16);
      }

      else
      {
        LODWORD(v49) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v49) = 0;
    }

    v34[25] = v49;
  }

  sub_10023359C(v34, 0, v66, 0);
  v50 = sub_10028A808(v9, v69);
  if (v50 < 1)
  {
    v53 = 0;
  }

  else
  {
    v51 = (2 * v50);
    if (v50 >= 9)
    {
      v54 = ((v51 - 1) >> 1) + 1;
      v55 = v54 & 7;
      if ((v54 & 7) == 0)
      {
        v55 = 8;
      }

      v56 = v54 - v55;
      v52 = 2 * v56;
      v57 = &v70;
      v58 = 0uLL;
      v59 = 0uLL;
      do
      {
        v60 = v57 - 8;
        v61 = vld2q_f32(v60);
        v62 = vld2q_f32(v57);
        v58 = vaddq_s32(v61, v58);
        v59 = vaddq_s32(v62, v59);
        v57 += 16;
        v56 -= 8;
      }

      while (v56);
      v53 = vaddvq_s32(vaddq_s32(v59, v58));
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    do
    {
      v53 += v69[v52];
      v52 += 2;
    }

    while (v52 < v51);
  }

  v63 = sub_100283BF4(a1, a2, "data");
  if (!v63)
  {
    v72 = 0;
    v71 = 0;
    qmemcpy(sub_1002A80E0(&v71, 43), "The image data is not found in file storage", 43);
    sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6053);
  }

  if ((*v63 & 7u) < 5)
  {
    if (((*v63 & 7) != 0) == v53 * v66)
    {
      goto LABEL_139;
    }

LABEL_138:
    v72 = 0;
    v71 = 0;
    qmemcpy(sub_1002A80E0(&v71, 55), "The number of stored elements does not match to count", 55);
    sub_1002A8980(-2, &v71, "icvReadSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6056);
  }

  if (*(*(v63 + 16) + 40) != v53 * v66)
  {
    goto LABEL_138;
  }

LABEL_139:
  sub_10028BBBC(a1, v63, v68);
  for (i = *(v34 + 11); i; i = *(i + 8))
  {
    sub_10028BDD8(a1, v68, *(i + 20) * v53, *(i + 24), v9);
    if (i == **(v34 + 11))
    {
      break;
    }
  }

  return v34;
}

void sub_10028D780(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10028CEFCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10028D858(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  if (!a4)
  {
    goto LABEL_21;
  }

  v9 = &v20;
  v10 = 1;
  v11 = a4;
  while (!*v11)
  {
LABEL_9:
    v9 = *(v9 + 1);
    if (v9)
    {
      v11 = *v9;
      if (*v9)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  if (strcmp("recursive", *v11))
  {
    v12 = 0;
    while (1)
    {
      v13 = v11[v12 + 2];
      if (!v13)
      {
        goto LABEL_9;
      }

      v12 += 2;
      if (!strcmp("recursive", v13))
      {
        v10 = v12 & 0xFFFFFFFE | 1;
        break;
      }
    }
  }

  v14 = v11[v10];
  if (v14 && (*v14 != 48 || v14[1]) && strcmp(v11[v10], "false") && strcmp(v14, "False") && strcmp(v14, "FALSE"))
  {
    sub_100288FB8(a1, a2, 6, "opencv-sequence-tree");
    sub_100288FB8(a1, "sequences", 5, 0);
    sub_100237230(&v18, a3, 0x7FFFFFFF);
    for (i = v18; v18; i = v18)
    {
      sub_10029A9D4(a1, 0, i, a4, a5, v19);
      sub_100237308(&v18);
    }

    sub_10028984C(a1);
    return sub_10028984C(a1);
  }

LABEL_21:

  return sub_10029A9D4(a1, a2, a3, a4, a5, 0xFFFFFFFFLL);
}

uint64_t sub_10028DA50(_DWORD *a1, uint64_t a2)
{
  v3 = sub_100283BF4(a1, a2, "sequences");
  if (!v3 || (*v3 & 7) != 5)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 90), "opencv-sequence-tree instance should contain a field sequences that should be a sequence", 90);
    sub_1002A8980(-212, &v19, "icvReadSeqTree", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6087);
  }

  v4 = *(v3 + 16);
  v5 = *(v4 + 40);
  sub_100232554(v4, v21, 0);
  v18 = v5;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = v22;
      v12 = sub_1002913A4(a1, v22, 0);
      if (!v12)
      {
        v19 = 0;
        v20 = 0;
        v13 = sub_1002A80E0(&v19, 3);
        *v13 = 25971;
        *(v13 + 2) = 113;
        sub_1002A8980(-215, &v19, "icvReadSeqTree", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6099);
      }

      v14 = sub_100283BF4(a1, v11, "level");
      if (!v14)
      {
LABEL_13:
        v19 = 0;
        v20 = 0;
        qmemcpy(sub_1002A80E0(&v19, 56), "All the sequence tree nodes should contain level field", 56);
        sub_1002A8980(-212, &v19, "icvReadSeqTree", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6102);
      }

      if ((*v14 & 7) == 2)
      {
        break;
      }

      if ((*v14 & 7) == 1)
      {
        LODWORD(v15) = *(v14 + 16);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }

      LODWORD(v15) = 0x7FFFFFFF;
      if (!v10)
      {
        v10 = v12;
      }

      v16 = 0;
      if (v6 != 0x7FFFFFFF)
      {
LABEL_18:
        if (v8)
        {
          v8[4] = v12;
        }

        *(v12 + 8) = 0;
        v9 = v8;
        goto LABEL_30;
      }

LABEL_24:
      if (v16)
      {
        do
        {
          v8 = v8[3];
          --v6;
        }

        while (v6 > v15);
        v9 = v8[3];
        *(v12 + 8) = v8;
LABEL_29:
        v8[2] = v12;
        goto LABEL_30;
      }

      *(v12 + 8) = v8;
      if (v8)
      {
        goto LABEL_29;
      }

LABEL_30:
      *(v12 + 24) = v9;
      v22 += *(v4 + 44);
      if (v22 >= v23)
      {
        sub_10023323C(v21, 1);
      }

      ++v7;
      v6 = v15;
      v8 = v12;
      if (v7 == v18)
      {
        return v10;
      }
    }

    v15 = rint(*(v14 + 16));
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (!v10)
    {
      v10 = v12;
    }

    v16 = v15 < v6;
    if (v15 > v6)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  return 0;
}

void sub_10028DD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_10028DD68(_DWORD *result)
{
  if (result)
  {
    if (HIWORD(*result) == 17048)
    {
      return ((*result & 0x3000) == 4096);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_10028DD8C(void *result)
{
  if (!result)
  {
    v2[0] = 0;
    v2[1] = 0;
    v1 = sub_1002A80E0(v2, 19);
    *(v1 + 15) = 1919251566;
    *v1 = *"NULL double pointer";
    sub_1002A8980(-27, v2, "icvReleaseGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6145);
  }

  *result = 0;
  return result;
}

_DWORD *sub_10028DE2C(uint64_t a1, uint64_t a2)
{
  __endptr = 0;
  v3 = sub_100283BF4(a1, a2, "flags");
  if (v3 && (*v3 & 7) == 3)
  {
    v4 = *(v3 + 24);
    v5 = sub_100283BF4(a1, a2, "vertex_dt");
    if (!v5)
    {
LABEL_9:
      v6 = 0;
      v7 = sub_100283BF4(a1, a2, "edge_dt");
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    v5 = sub_100283BF4(a1, a2, "vertex_dt");
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if ((*v5 & 7) != 3)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 24);
  v7 = sub_100283BF4(a1, a2, "edge_dt");
  if (!v7)
  {
LABEL_13:
    v125 = 0;
    v8 = sub_100283BF4(a1, a2, "vertex_count");
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_10:
  if ((*v7 & 7) != 3)
  {
    goto LABEL_13;
  }

  v125 = *(v7 + 24);
  v8 = sub_100283BF4(a1, a2, "vertex_count");
  if (!v8)
  {
LABEL_12:
    LODWORD(v9) = -1;
    goto LABEL_19;
  }

LABEL_14:
  if ((*v8 & 7) == 2)
  {
    v9 = rint(*(v8 + 16));
  }

  else if ((*v8 & 7) == 1)
  {
    LODWORD(v9) = *(v8 + 16);
  }

  else
  {
    LODWORD(v9) = 0x7FFFFFFF;
  }

LABEL_19:
  v132 = v9;
  v10 = sub_100283BF4(a1, a2, "edge_count");
  v124 = v6;
  if (v10)
  {
    if ((*v10 & 7) == 2)
    {
      v121 = rint(*(v10 + 16));
      if (!v4)
      {
        goto LABEL_32;
      }
    }

    else if ((*v10 & 7) == 1)
    {
      LODWORD(v121) = *(v10 + 16);
      if (!v4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      LODWORD(v121) = 0x7FFFFFFF;
      if (!v4)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    LODWORD(v121) = -1;
    if (!v4)
    {
      goto LABEL_32;
    }
  }

  if (v132 == -1 || v121 == -1 || !v125)
  {
LABEL_32:
    v142 = 0;
    v141 = 0;
    qmemcpy(sub_1002A80E0(&v141, 45), "Some of essential graph attributes are absent", 45);
    sub_1002A8980(-2, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6324);
  }

  v11 = *v4;
  if ((v11 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v11] & 0x10000) != 0)
  {
    v13 = strtol(v4, &__endptr, 16);
    if (__endptr == v4 || (v13 & 0xFFFF0000) != 0x42980000)
    {
      v142 = 0;
      v141 = 0;
      qmemcpy(sub_1002A80E0(&v141, 30), "The sequence flags are invalid", 30);
      sub_1002A8980(-2, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6337);
    }

    v12 = (v13 & 0x1000) == 0;
  }

  else
  {
    v12 = strstr(v4, "oriented") == 0;
  }

  if (v12)
  {
    v15 = 1117261824;
  }

  else
  {
    v15 = 1117278208;
  }

  v16 = sub_100283BF4(a1, a2, "header_dt");
  if (v16 && (*v16 & 7) == 3)
  {
    v17 = *(v16 + 24);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_100283BF4(a1, a2, "header_user_data");
  if ((v17 != 0) != (v18 != 0))
  {
    v142 = 0;
    v141 = 0;
    qmemcpy(sub_1002A80E0(&v141, 74), "One of header_dt and header_user_data is there, while the other is not", 74);
    sub_1002A8980(-2, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6352);
  }

  if (v17)
  {
    v19 = sub_10028A808(v17, &v141);
    if (v19 >= 1)
    {
      v20 = 0;
      v21 = 120;
      do
      {
        v22 = (((*(&v141 + v20 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v141 + v20 + 1) & 7))) & 3);
        v21 = ((v21 + v22 - 1) & -v22) + v22 * *(&v141 + v20);
        v20 += 2;
      }

      while (v20 < (2 * v19));
      v23 = v6;
      if (v6)
      {
        goto LABEL_57;
      }

LABEL_62:
      v122 = 0;
      v123 = 0;
      v29 = 16;
      goto LABEL_82;
    }

    v21 = 120;
    v23 = v6;
    if (!v6)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v21 = 120;
    v23 = v6;
    if (!v6)
    {
      goto LABEL_62;
    }
  }

LABEL_57:
  v24 = sub_10028A808(v23, &v141);
  if (v24 < 1)
  {
    v28 = -1;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = (((*(&v141 + v25 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v141 + v25 + 1) & 7))) & 3);
      v26 = ((v26 + v27 - 1) & -v27) + v27 * *(&v141 + v25);
      v25 += 2;
    }

    while (v25 < (2 * v24));
    v28 = v26 - 1;
  }

  v30 = HIDWORD(v141);
  v31 = sub_10028A808(v124, &v141);
  if (v31 < 1)
  {
    v29 = 16;
  }

  else
  {
    v32 = 0;
    v29 = 16;
    do
    {
      v33 = (((*(&v141 + v32 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v141 + v32 + 1) & 7))) & 3);
      v29 = ((v29 + v33 - 1) & -v33) + v33 * *(&v141 + v32);
      v32 += 2;
    }

    while (v32 < (2 * v31));
  }

  v34 = sub_10028A808(v125, v138);
  v35 = (((v30 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v30 & 7))) & 3);
  v123 = (v28 + v35) & -v35;
  if (v34 < 1)
  {
    v122 = 0;
  }

  else
  {
    v36 = (2 * v34);
    if (v34 >= 9)
    {
      v39 = ((v36 - 1) >> 1) + 1;
      v40 = v39 & 7;
      if ((v39 & 7) == 0)
      {
        v40 = 8;
      }

      v41 = v39 - v40;
      v37 = 2 * v41;
      v42 = v140;
      v43 = 0uLL;
      v44 = 0uLL;
      do
      {
        v45 = v42 - 8;
        v46 = vld2q_f32(v45);
        v47 = vld2q_f32(v42);
        v43 = vaddq_s32(v46, v43);
        v44 = vaddq_s32(v47, v44);
        v42 += 16;
        v41 -= 8;
      }

      while (v41);
      v38 = vaddvq_s32(vaddq_s32(v44, v43));
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    do
    {
      v38 += v138[v37];
      v37 += 2;
    }

    while (v37 < v36);
    v122 = v38;
  }

LABEL_82:
  v48 = sub_10028A808(v125, v138);
  if (v48 < 2 || (v138[0] == 2 ? (v49 = v138[1] == 4) : (v49 = 0), v49 ? (v50 = v138[2] < 1) : (v50 = 1), !v50 ? (v51 = v138[3] == 5) : (v51 = 0), !v51))
  {
    v142 = 0;
    v141 = 0;
    qmemcpy(sub_1002A80E0(&v141, 52), "Graph edges should start with 2 integers and a float", 52);
    sub_1002A8980(-5, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6378);
  }

  if (v48 < 3)
  {
    v52 = 4;
  }

  else if ((((v139 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v139 & 7))) & 3) >= 8)
  {
    v52 = 8;
  }

  else
  {
    v52 = 4;
  }

  v53 = (2 * v48);
  if (v48 >= 9)
  {
    v56 = ((v53 - 1) >> 1) + 1;
    v57 = v56 & 7;
    if ((v56 & 7) == 0)
    {
      v57 = 8;
    }

    v58 = v56 - v57;
    v54 = 2 * v58;
    v59 = v140;
    v60 = 0uLL;
    v61 = 0uLL;
    do
    {
      v62 = v59 - 8;
      v63 = vld2q_f32(v62);
      v64 = vld2q_f32(v59);
      v60 = vaddq_s32(v63, v60);
      v61 = vaddq_s32(v64, v61);
      v59 += 16;
      v58 -= 8;
    }

    while (v58);
    v55 = vaddvq_s32(vaddq_s32(v61, v60));
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  do
  {
    v55 += v138[v54];
    v54 += 2;
  }

  while (v54 < v53);
  v120 = v55;
  v65 = *(v125 + 2);
  if (v65 == 102 || v65 == 49 && *(v125 + 3) == 102)
  {
    v104 = (v65 - 48) >= 0xA;
    v68 = v125;
    if (!v104)
    {
      v68 = v125 + 1;
    }

    v67 = (v68 + 3);
  }

  else
  {
    v66 = strtol((v125 + 2), &__endptr, 10);
    v67 = v136;
    sprintf(v136, "%df%s", v66 - 1, __endptr);
  }

  v69 = sub_10028A808(v67, &v141);
  if (v69 < 1)
  {
    v71 = 40;
  }

  else
  {
    v70 = 0;
    v71 = 40;
    do
    {
      v72 = (((*(&v141 + v70 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v141 + v70 + 1) & 7))) & 3);
      v71 = ((v71 + v72 - 1) & -v72) + v72 * *(&v141 + v70);
      v70 += 2;
    }

    while (v70 < (2 * v69));
  }

  v131 = v71;
  v73 = sub_10028A808(v125, &v141);
  if (v73 < 1)
  {
    v77 = -1;
  }

  else
  {
    v74 = 0;
    v75 = 0;
    do
    {
      v76 = (((*(&v141 + v74 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v141 + v74 + 1) & 7))) & 3);
      v75 = ((v75 + v76 - 1) & -v76) + v76 * *(&v141 + v74);
      v74 += 2;
    }

    while (v74 < (2 * v73));
    v77 = v75 - 1;
  }

  v78 = HIDWORD(v141);
  v133 = sub_1002365E8(v15, v21, v29, v131, *(a1 + 24));
  if (v18)
  {
    if (!v17)
    {
      v142 = 0;
      v141 = 0;
      v80 = sub_1002A80E0(&v141, 9);
      *(v80 + 8) = 116;
      *v80 = *"header_dt";
      sub_1002A8980(-215, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6405);
    }

    sub_10028BBBC(a1, v18, &v141);
    if ((*v18 & 7) == 5)
    {
      v79 = *(*(v18 + 16) + 40);
    }

    else
    {
      v79 = 1;
    }

    sub_10028BDD8(a1, &v141, v79, (v133 + 30), v17);
  }

  v81 = (((v78 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v78 & 7))) & 3);
  v82 = (v77 + v81) & -v81;
  v83 = 3 * v123;
  v119 = v82;
  v84 = 3 * v82;
  if (3 * v123 <= v84)
  {
    v83 = v84;
  }

  if (v83 <= 0x10000)
  {
    v85 = 0x10000;
  }

  else
  {
    v85 = v83;
  }

  v116 = v85;
  v86 = sub_1001D90AC(v85);
  v87 = sub_1001D90AC(8 * v132);
  v117 = sub_100283BF4(a1, a2, "vertices");
  v118 = sub_100283BF4(a1, a2, "edges");
  if (!v118)
  {
    v142 = 0;
    v141 = 0;
    qmemcpy(sub_1002A80E0(&v141, 13), "No edges data", 13);
    sub_1002A8980(-5, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6417);
  }

  v88 = v124;
  if (v124 && !v117)
  {
    v142 = 0;
    v141 = 0;
    *sub_1002A80E0(&v141, 16) = *"No vertices data";
    sub_1002A8980(-5, &v141, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6419);
  }

  v89 = 0;
  v128 = v52 - 1;
  v127 = -v52;
  v90 = v122;
  do
  {
    v126 = v89;
    if (v89)
    {
      v91 = v125;
    }

    else
    {
      v91 = v88;
    }

    if (v89)
    {
      v92 = v119;
    }

    else
    {
      v92 = v123;
    }

    v93 = v120;
    if (!v89)
    {
      v93 = v90;
    }

    v130 = v93;
    if (v89)
    {
      v94 = v121;
    }

    else
    {
      v94 = v132;
    }

    if (v92 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = v92;
    }

    if (v91)
    {
      if (v89)
      {
        v96 = v118;
      }

      else
      {
        v96 = v117;
      }

      sub_10028BBBC(a1, v96, &v141);
    }

    if (v94 >= 1)
    {
      v97 = v92;
      v98 = v116 / v95;
      if (v126)
      {
        v99 = 0;
        v100 = v86;
        do
        {
          if (v91 && !v99)
          {
            if (v94 >= v98)
            {
              v101 = v98;
            }

            else
            {
              v101 = v94;
            }

            v99 = v101 * v130;
            sub_10028BDD8(a1, &v141, v101 * v130, v86, v91);
            v100 = v86;
          }

          v134 = 0;
          v102 = v100[1];
          v103 = *v100;
          v104 = v103 >= v132 || v102 >= v132;
          if (v104)
          {
            *v136 = 0;
            v137 = 0;
            qmemcpy(sub_1002A80E0(v136, 46), "Some of stored vertex indices are out of range", 46);
            sub_1002A8980(-211, v136, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6464);
          }

          if (!sub_10023697C(v133, v87[v103], v87[v102], 0, &v134))
          {
            *v136 = 0;
            v137 = 0;
            qmemcpy(sub_1002A80E0(v136, 27), "Duplicated edge has occured", 27);
            sub_1002A8980(-5, v136, "icvReadGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6470);
          }

          v106 = v134;
          *(v134 + 4) = v100[2];
          if (v131 >= 41)
          {
            memcpy((v106 + 40), ((v100 + v128 + 12) & v127), v131 - 40);
          }

          v100 = (v100 + v97);
          --v99;
          --v94;
        }

        while (v94);
      }

      else
      {
        v107 = v132;
        v108 = v87;
        if (v91)
        {
          v109 = 0;
          v110 = v132;
          v111 = v87;
          v112 = v86;
          do
          {
            if (!v109)
            {
              if (v94 >= v98)
              {
                v113 = v98;
              }

              else
              {
                v113 = v94;
              }

              v109 = v113 * v130;
              sub_10028BDD8(a1, &v141, v113 * v130, v86, v91);
              v112 = v86;
            }

            *v136 = 0;
            sub_1002366C4(v133, 0, v136);
            v114 = *v136;
            *v111++ = *v136;
            memcpy((v114 + 16), v112, v123);
            v112 += v97;
            --v109;
            --v94;
            --v110;
          }

          while (v110);
        }

        else
        {
          do
          {
            *v136 = 0;
            sub_1002366C4(v133, 0, v136);
            *v108++ = *v136;
            --v107;
          }

          while (v107);
        }
      }
    }

    v89 = v126 + 1;
    v88 = v124;
    v90 = v122;
  }

  while (v126 != 1);
  j__free(v86);
  j__free(v87);
  return v133;
}

void sub_10028ED10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10028EE38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v63[0] = a4;
  v63[1] = a5;
  v8 = *(a3 + 104);
  v9 = *(*(a3 + 112) + 104);
  v10 = sub_1001D90AC(4 * v8);
  sub_100232554(v5, v60, 0);
  if (*(v5 + 40) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v61;
      if ((*v61 & 0x80000000) == 0)
      {
        *(v10 + 4 * v12) = *v61;
        *v13 = v12++;
      }

      v61 = v13 + *(v5 + 44);
      if (v61 >= v62)
      {
        sub_10023323C(v60, 1);
      }

      ++v11;
    }

    while (v11 < *(v5 + 40));
  }

  v52 = v10;
  sub_100288FB8(a1, a2, 6, "opencv-graph");
  if ((*v5 & 0x4000) != 0)
  {
    v14 = "oriented";
  }

  else
  {
    v14 = "";
  }

  sub_100289AEC(a1, "flags", v14, 1);
  sub_1002899A0(a1, "vertex_count", v8);
  v15 = sub_10029AC28(v5, "vertex_dt", v63, 16, v65);
  if (v15)
  {
    sub_100289AEC(a1, "vertex_dt", v15, 0);
  }

  sub_1002899A0(a1, "edge_count", v9);
  v16 = sub_10029AC28(*(v5 + 112), "edge_dt", v63, 40, v66);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = "";
  }

  sprintf(v64, "2if%s", v17);
  sub_100289AEC(a1, "edge_dt", v64, 0);
  sub_10029AFA0(a1, v5, v63, 120);
  v18 = *(v5 + 44);
  if (v18 >= 21846)
  {
    v19 = 3 * v18;
  }

  else
  {
    v19 = 0x10000;
  }

  v20 = 3 * *(*(v5 + 112) + 44);
  if (v20 <= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v53 = v21;
  v22 = sub_1001D90AC(v21);
  v23 = 0;
  v24 = 1;
  v54 = v5;
  v55 = v15;
  while (2)
  {
    v25 = v24;
    if (v24)
    {
      v26 = v15;
    }

    else
    {
      v26 = v64;
    }

    if (!v26)
    {
      goto LABEL_24;
    }

    v27 = v5;
    if ((v24 & 1) == 0)
    {
      v27 = *(v5 + 112);
    }

    v59 = *(v27 + 44);
    v28 = sub_10028A808(v26, &v67);
    if (v28 < 1)
    {
      v32 = v68;
      v57 = -1;
      if ((v23 & 1) == 0)
      {
LABEL_41:
        v33 = 4;
        goto LABEL_42;
      }
    }

    else
    {
      v29 = 0;
      v30 = 0;
      do
      {
        v31 = (((*(&v67 + v29 + 1) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(&v67 + v29 + 1) & 7))) & 3);
        v30 = ((v30 + v31 - 1) & -v31) + v31 * *(&v67 + v29);
        v29 += 2;
      }

      while (v29 < (2 * v28));
      v32 = v68;
      v57 = v30 - 1;
      if ((v23 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (sub_10028A808(v64, &v67) < 3)
    {
      goto LABEL_41;
    }

    if ((((v69 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v69 & 7))) & 3) >= 8)
    {
      v33 = 8;
    }

    else
    {
      v33 = 4;
    }

LABEL_42:
    if (v25)
    {
      v34 = "vertices";
    }

    else
    {
      v34 = "edges";
    }

    sub_100288FB8(a1, v34, 13, 0);
    sub_100232554(v27, v60, 0);
    v35 = a1;
    if (*(v27 + 40) < 1)
    {
      goto LABEL_23;
    }

    v36 = 0;
    v37 = 0;
    v38 = (((v32 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v32 & 7))) & 3);
    v39 = (v57 + v38) & -v38;
    v56 = -v33;
    v58 = v33 - 1;
    v40 = v39;
    v41 = v22;
    v42 = v53 / v39;
    do
    {
      v43 = v61;
      if ((*v61 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      if (v25)
      {
        v44 = v61 + 16;
        v45 = v41;
        v46 = v40;
      }

      else
      {
        v41 = ((v41 + 3) & 0xFFFFFFFFFFFFFFFCLL);
        *v41 = **(v61 + 3);
        v41[1] = **(v43 + 4);
        v41[2] = *(v43 + 1);
        if (v59 < 41)
        {
          goto LABEL_54;
        }

        v45 = ((v41 + v58 + 12) & v56);
        v44 = v43 + 40;
        v46 = v59 - 40;
      }

      memcpy(v45, v44, v46);
LABEL_54:
      if (++v37 >= v42)
      {
        sub_100289C48(v35, v22, v37, v26);
        v37 = 0;
        v41 = v22;
      }

      else
      {
        v41 = (v41 + v40);
      }

LABEL_57:
      v61 += *(v27 + 44);
      if (v61 >= v62)
      {
        sub_10023323C(v60, 1);
      }

      ++v36;
    }

    while (v36 < *(v27 + 40));
    v5 = v54;
    if (v37 >= 1)
    {
      sub_100289C48(v35, v22, v37, v26);
    }

LABEL_23:
    sub_10028984C(v35);
    a1 = v35;
    v15 = v55;
LABEL_24:
    v24 = 0;
    v23 = 1;
    if (v25)
    {
      continue;
    }

    break;
  }

  sub_10028984C(a1);
  sub_100232554(v5, v60, 0);
  v47 = *(v5 + 40);
  if (v47 >= 1)
  {
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = v61;
      if ((*v61 & 0x80000000) == 0)
      {
        v51 = v52[v49++];
        *v61 = v51;
      }

      v61 = &v50[*(v5 + 44)];
      if (v61 >= v62)
      {
        sub_10023323C(v60, 1);
        v47 = *(v5 + 40);
      }

      ++v48;
    }

    while (v48 < v47);
  }

  j__free(v22);
  j__free(v52);
}

BOOL sub_10028F414(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 16964;
  }

  return result;
}

uint64_t sub_10028F42C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_100283BF4(v3, v1, "sizes");
  v28 = v4;
  v6 = sub_100283BF4(v4, v2, "dt");
  if (!v6 || (*v6 & 7) != 3 || !v5 || !*(v6 + 24))
  {
    __src = 0;
    v35 = 0;
    qmemcpy(sub_1002A80E0(&__src, 46), "Some of essential matrix attributes are absent", 46);
    sub_1002A8980(-2, &__src, "icvReadSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5525);
  }

  if ((*v5 & 7) == 5)
  {
    v27 = *(v6 + 24);
    v24 = *(*(v5 + 16) + 40);
    if ((v24 - 33) > 0xFFFFFFDF)
    {
      goto LABEL_14;
    }

LABEL_13:
    __src = 0;
    v35 = 0;
    qmemcpy(sub_1002A80E0(&__src, 48), "Could not determine sparse matrix dimensionality", 48);
    sub_1002A8980(-212, &__src, "icvReadSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5531);
  }

  if ((*v5 & 7) == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v27 = *(v6 + 24);
  v24 = v7;
  if ((v7 - 33) <= 0xFFFFFFDF)
  {
    goto LABEL_13;
  }

LABEL_14:
  sub_10028BBBC(v4, v5, &__src);
  if ((*v5 & 7) == 5)
  {
    v8 = *(*(v5 + 16) + 40);
  }

  else
  {
    v8 = 1;
  }

  sub_10028BDD8(v4, &__src, v8, v36, "i");
  v9 = sub_10029A8E0(v27);
  v10 = sub_100283BF4(v4, v2, "data");
  v11 = v10;
  if (!v10 || (*v10 & 7) != 5)
  {
    __src = 0;
    v35 = 0;
    qmemcpy(sub_1002A80E0(&__src, 44), "The matrix data is not found in file storage", 44);
    sub_1002A8980(-2, &__src, "icvReadSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5538);
  }

  v26 = sub_1001FC868(v24, v36, v9);
  v12 = *(v11 + 16);
  sub_10028BBBC(v4, v11, v31);
  if (*(v12 + 40) >= 1)
  {
    v13 = 0;
    v14 = (v9 >> 3) & 0x1FF;
    v25 = v24 - 1;
    do
    {
      if ((*v32 & 7) != 1)
      {
        v29 = 0;
        v30 = 0;
        qmemcpy(sub_1002A80E0(&v29, 31), "Sparse matrix data is corrupted", 31);
        sub_1002A8980(-212, &v29, "icvReadSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5553);
      }

      v15 = v32[4];
      if (v13 < 1 || v15 < 0)
      {
        if (v13 < 1)
        {
          LODWORD(__src) = v32[4];
          v16 = 1;
          v17 = v24;
          v18 = v24 - 1;
          if (v24 > 1)
          {
LABEL_31:
            v13 = v17 + v13 - v16;
            v19 = &__src + v16;
            do
            {
              v21 = (v32 + *(v12 + 44));
              v32 = v21;
              if (v21 >= v33)
              {
                sub_10023323C(v31, 1);
                v21 = v32;
              }

              if ((*v21 & 7) != 1 || (v20 = v21[4], v20 < 0))
              {
                v29 = 0;
                v30 = 0;
                qmemcpy(sub_1002A80E0(&v29, 31), "Sparse matrix data is corrupted", 31);
                sub_1002A8980(-212, &v29, "icvReadSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5569);
              }

              *v19++ = v20;
              --v18;
            }

            while (v18);
          }
        }

        else
        {
          v16 = v25 + v15;
          v17 = v24;
          v18 = v24 - v16;
          if (v24 > v16)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        *(&__src + v25) = v15;
      }

      v32 = (v32 + *(v12 + 44));
      if (v32 >= v33)
      {
        sub_10023323C(v31, 1);
      }

      v22 = sub_1001FE44C(v26, &__src, 0, 1, 0);
      sub_10028BDD8(v28, v31, v14 + 1, v22, v27);
      v13 += v14 + 2;
    }

    while (v13 < *(v12 + 40));
  }

  return v26;
}

void sub_10028F900(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10028F9A8(uint64_t a1, const char *a2, _DWORD *a3)
{
  sub_100231744(0);
  v7 = v6;
  v34 = v6;
  sub_100288FB8(a1, a2, 6, "opencv-sparse-matrix");
  v27 = sub_1001FD6A4(a3, 0);
  sub_100288FB8(a1, "sizes", 13, 0);
  sub_100289C48(a1, (a3 + 13), v27, "i");
  sub_10028984C(a1);
  sprintf(&v35, "%d%c", ((*a3 >> 3) & 0x1FF) + 1, aUcwsifdr[*a3 & 7]);
  if (v36[1])
  {
    v8 = 0;
  }

  else
  {
    v8 = v35 == 49;
  }

  if (v8)
  {
    v9 = v36;
  }

  else
  {
    v9 = &v35;
  }

  sub_100289AEC(a1, "dt", v9, 0);
  sub_100288FB8(a1, "data", 13, 0);
  v10 = sub_100231FEC(7u, 0x60uLL, 8uLL, v7);
  v11 = sub_1001FCD40(a3, &v31);
  if (v11)
  {
    while (1)
    {
      __src[0] = v11 + a3[12];
      sub_100233314(v10, __src);
      v11 = *(v32 + 8);
      if (!v11)
      {
        v12 = v33++;
        v13 = *(v31 + 40);
        if (v33 >= v13)
        {
          break;
        }

        v14 = v12 + 1;
        v15 = ~v12 + v13;
        while (1)
        {
          v11 = *(*(v31 + 32) + 8 * v14);
          if (v11)
          {
            break;
          }

          ++v14;
          if (!--v15)
          {
            goto LABEL_16;
          }
        }

        v33 = v14;
      }

      v32 = v11;
    }
  }

LABEL_16:
  sub_100233FD4(v10, sub_10029B408, &v27);
  sub_100232554(v10, __src, 0);
  if (v10[10] >= 1)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *v29++;
      if (v29 >= v30)
      {
        sub_10023323C(__src, 1);
      }

      if (v16)
      {
        break;
      }

      v24 = 0;
      if (v27 > 0)
      {
        goto LABEL_29;
      }

LABEL_18:
      sub_100289C48(a1, v18 + a3[11] - a3[12], 1, &v35);
      ++v16;
      v17 = v18;
      if (v16 >= v10[10])
      {
        goto LABEL_32;
      }
    }

    v19 = 0;
    v20 = v18;
    do
    {
      v22 = *v20++;
      v21 = v22;
      v23 = *v17++;
      ++v19;
    }

    while (v21 == v23);
    v24 = v19 - 1;
    if (v27 - 1 > v19 - 1)
    {
      (*(a1 + 312))(a1, 0, (v19 - v27));
    }

    if (v24 >= v27)
    {
      goto LABEL_18;
    }

LABEL_29:
    v25 = &v18[v24];
    do
    {
      v26 = *v25++;
      (*(a1 + 312))(a1, 0, v26);
      ++v24;
    }

    while (v27 > v24);
    goto LABEL_18;
  }

LABEL_32:
  sub_10028984C(a1);
  sub_10028984C(a1);
  sub_100231874(&v34);
}

_DWORD *sub_10028FCE8(_DWORD *result)
{
  if (result)
  {
    return (*result == 144);
  }

  return result;
}

uint64_t sub_10028FCFC(_DWORD *a1, uint64_t a2)
{
  v4 = sub_100283BF4(a1, a2, "width");
  if (v4)
  {
    if ((*v4 & 7) == 2)
    {
      v5 = rint(*(v4 + 16));
      v6 = sub_100283BF4(a1, a2, "height");
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if ((*v4 & 7) == 1)
      {
        LODWORD(v5) = *(v4 + 16);
        v6 = sub_100283BF4(a1, a2, "height");
        if (!v6)
        {
          goto LABEL_5;
        }

LABEL_8:
        if ((*v6 & 7) == 2)
        {
          v7 = rint(*(v6 + 16));
          v8 = sub_100283BF4(a1, a2, "dt");
          if (v8)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if ((*v6 & 7) != 1)
          {
            v7 = 0x7FFFFFFFLL;
            v8 = sub_100283BF4(a1, a2, "dt");
            if (!v8)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }

          v7 = *(v6 + 16);
          v8 = sub_100283BF4(a1, a2, "dt");
          if (v8)
          {
            goto LABEL_19;
          }
        }

LABEL_22:
        v9 = 0;
        v10 = sub_100283BF4(a1, a2, "origin");
        if (!v10)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

      LODWORD(v5) = 0x7FFFFFFF;
      v6 = sub_100283BF4(a1, a2, "height");
      if (v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = sub_100283BF4(a1, a2, "height");
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_5:
  v7 = 0;
  v8 = sub_100283BF4(a1, a2, "dt");
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_19:
  if ((*v8 & 7) != 3)
  {
    goto LABEL_22;
  }

  v9 = *(v8 + 24);
  v10 = sub_100283BF4(a1, a2, "origin");
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_23:
  if ((*v10 & 7) != 3 || !v5 || !v7 || !v9 || !*(v10 + 24))
  {
LABEL_28:
    v44 = 0;
    v45 = 0;
    qmemcpy(sub_1002A80E0(&v44, 45), "Some of essential image attributes are absent", 45);
    sub_1002A8980(-2, &v44, "icvReadImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5666);
  }

  v11 = sub_10029A8E0(v9);
  v12 = sub_100283BF4(a1, a2, "layout");
  if (!v12)
  {
    if (!strcmp("interleaved", "interleaved"))
    {
      goto LABEL_36;
    }

LABEL_35:
    v44 = 0;
    v45 = 0;
    qmemcpy(sub_1002A80E0(&v44, 35), "Only interleaved images can be read", 35);
    sub_1002A8980(-2, &v44, "icvReadImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5671);
  }

  if ((*v12 & 7) != 3)
  {
    goto LABEL_35;
  }

  v13 = *(v12 + 24);
  if (!v13 || strcmp(v13, "interleaved"))
  {
    goto LABEL_35;
  }

LABEL_36:
  v14 = sub_100283BF4(a1, a2, "data");
  if (!v14)
  {
    v44 = 0;
    v45 = 0;
    qmemcpy(sub_1002A80E0(&v44, 43), "The image data is not found in file storage", 43);
    sub_1002A8980(-2, &v44, "icvReadImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5675);
  }

  v15 = v14;
  if ((*v14 & 7u) < 5)
  {
    v16 = v7 * v5;
    v17 = ((v11 >> 3) & 0x1FF) + 1;
    if (((*v14 & 7) != 0) == v17 * v7 * v5)
    {
      goto LABEL_42;
    }

LABEL_41:
    v44 = 0;
    v45 = 0;
    qmemcpy(sub_1002A80E0(&v44, 63), "The matrix size does not match to the number of stored elements", 63);
    sub_1002A8980(-209, &v44, "icvReadImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5679);
  }

  v16 = v7 * v5;
  v17 = ((v11 >> 3) & 0x1FF) + 1;
  if (*(*(v14 + 16) + 40) != v17 * v7 * v5)
  {
    goto LABEL_41;
  }

LABEL_42:
  if ((v11 & 7) == 4 || (v11 & 5) == 1)
  {
    v19 = 0x80000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1001FEF3C(v5 | (v7 << 32), (0x442211088uLL >> (4 * (v11 & 7))) & 0x78 | v19, v17);
  v21 = sub_100283BF4(a1, a2, "roi");
  if (v21)
  {
    v22 = v21;
    v23 = sub_100283BF4(a1, v21, "x");
    v43 = v5;
    if (v23)
    {
      if ((*v23 & 7) == 2)
      {
        v24 = rint(*(v23 + 16));
      }

      else if ((*v23 & 7) == 1)
      {
        LODWORD(v24) = *(v23 + 16);
      }

      else
      {
        LODWORD(v24) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v24) = 0;
    }

    v25 = v24;
    v26 = sub_100283BF4(a1, v22, "y");
    v42 = v7;
    if (v26)
    {
      if ((*v26 & 7) == 2)
      {
        v27 = rint(*(v26 + 16));
        v28 = sub_100283BF4(a1, v22, "width");
        if (!v28)
        {
          goto LABEL_60;
        }
      }

      else if ((*v26 & 7) == 1)
      {
        v27 = *(v26 + 16);
        v28 = sub_100283BF4(a1, v22, "width");
        if (!v28)
        {
LABEL_60:
          LODWORD(v29) = 0;
          goto LABEL_71;
        }
      }

      else
      {
        v27 = 0x7FFFFFFFLL;
        v28 = sub_100283BF4(a1, v22, "width");
        if (!v28)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = sub_100283BF4(a1, v22, "width");
      if (!v28)
      {
        goto LABEL_60;
      }
    }

    if ((*v28 & 7) == 2)
    {
      v29 = rint(*(v28 + 16));
    }

    else if ((*v28 & 7) == 1)
    {
      LODWORD(v29) = *(v28 + 16);
    }

    else
    {
      LODWORD(v29) = 0x7FFFFFFF;
    }

LABEL_71:
    v5 = v25 | (v27 << 32);
    v30 = v29;
    v31 = sub_100283BF4(a1, v22, "height");
    if (v31)
    {
      if ((*v31 & 7) == 2)
      {
        v32 = rint(*(v31 + 16));
      }

      else if ((*v31 & 7) == 1)
      {
        v32 = *(v31 + 16);
      }

      else
      {
        v32 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v32 = 0;
    }

    v7 = v30 | (v32 << 32);
    v33 = sub_100283BF4(a1, v22, "coi");
    if (v33)
    {
      if ((*v33 & 7) == 2)
      {
        v34 = rint(*(v33 + 16));
      }

      else if ((*v33 & 7) == 1)
      {
        v34 = *(v33 + 16);
      }

      else
      {
        v34 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v34 = 0;
    }

    sub_1001FF0D8(v20, v5, v7);
    sub_1001FF2D8(v20, v34);
    LODWORD(v7) = v42;
    LODWORD(v5) = v43;
  }

  v35 = (v17 << ((0xFA50u >> (2 * (v11 & 7))) & 3)) * v5;
  v36 = *(v20 + 96);
  if (v35 == v36)
  {
    v37 = v16;
  }

  else
  {
    v37 = v5;
  }

  if (v35 == v36)
  {
    v38 = 1;
  }

  else
  {
    v38 = v7;
  }

  sub_10028BBBC(a1, v15, v46);
  if (v38 >= 1)
  {
    v39 = 0;
    v40 = v37 * v17;
    do
    {
      sub_10028BDD8(a1, v46, v40, *(v20 + 88) + *(v20 + 96) * v39++, v9);
    }

    while (v38 != v39);
  }

  return v20;
}

void sub_10029041C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002A8124(va);
  __break(1u);
}

void sub_10029042C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029048C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a3 + 28) == 1)
  {
    v18[0] = 0;
    v18[1] = 0;
    qmemcpy(sub_1002A80E0(v18, 48), "Images with planar data layout are not supported", 48);
    sub_1002A8980(-210, v18, "icvWriteImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5606);
  }

  sub_100288FB8(a1, a2, 6, "opencv-image");
  sub_1002899A0(a1, "width", *(a3 + 40));
  sub_1002899A0(a1, "height", *(a3 + 44));
  if (*(a3 + 32))
  {
    v5 = "bottom-left";
  }

  else
  {
    v5 = "top-left";
  }

  sub_100289AEC(a1, "origin", v5, 0);
  if (*(a3 + 28) == 1)
  {
    v6 = "planar";
  }

  else
  {
    v6 = "interleaved";
  }

  sub_100289AEC(a1, "layout", v6, 0);
  if (*(a3 + 48))
  {
    sub_100288FB8(a1, "roi", 14, 0);
    sub_1002899A0(a1, "x", *(*(a3 + 48) + 4));
    sub_1002899A0(a1, "y", *(*(a3 + 48) + 8));
    sub_1002899A0(a1, "width", *(*(a3 + 48) + 12));
    sub_1002899A0(a1, "height", *(*(a3 + 48) + 16));
    sub_1002899A0(a1, "coi", **(a3 + 48));
    sub_10028984C(a1);
  }

  v7 = (0x43160520u >> (((*(a3 + 16) >> 2) & 0x3C) + ((*(a3 + 16) >> 31) & 0x14))) & 7;
  v8 = &v19;
  sprintf(&v19, "%d%c", *(a3 + 8), aUcwsifdr[v7]);
  if (v20[1])
  {
    v9 = 0;
  }

  else
  {
    v9 = v19 == 49;
  }

  if (v9)
  {
    v8 = v20;
  }

  sub_100289AEC(a1, "dt", v8, 0);
  v10 = *(a3 + 40);
  v11 = (*(a3 + 8) * v10) << ((0xFA50u >> (2 * v7)) & 3);
  v12 = *(a3 + 96);
  if (v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a3 + 44);
  }

  if (v11 == v12)
  {
    v14 = *(a3 + 44);
  }

  else
  {
    v14 = 1;
  }

  sub_100288FB8(a1, "data", 13, 0);
  if (v13 >= 1)
  {
    v15 = 0;
    v16 = v14 * v10;
    do
    {
      sub_100289C48(a1, *(a3 + 88) + *(a3 + 96) * v15++, v16, v8);
    }

    while (v13 != v15);
  }

  sub_10028984C(a1);
  return sub_10028984C(a1);
}

void sub_1002907B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002907E8(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 16962 && (*(result + 36) & 0x80000000) == 0 && *(result + 32) >= 0;
  }

  return result;
}

uint64_t sub_10029081C(_DWORD *a1, uint64_t a2)
{
  v4 = sub_100283BF4(a1, a2, "rows");
  if (!v4)
  {
    LODWORD(v5) = -1;
    v6 = sub_100283BF4(a1, a2, "cols");
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if ((*v4 & 7) == 2)
  {
    v5 = rint(*(v4 + 16));
    v6 = sub_100283BF4(a1, a2, "cols");
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if ((*v4 & 7) != 1)
  {
    LODWORD(v5) = 0x7FFFFFFF;
    v6 = sub_100283BF4(a1, a2, "cols");
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_5:
    LODWORD(v7) = -1;
    v8 = sub_100283BF4(a1, a2, "dt");
    if (!v8)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  LODWORD(v5) = *(v4 + 16);
  v6 = sub_100283BF4(a1, a2, "cols");
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  if ((*v6 & 7) == 2)
  {
    v7 = rint(*(v6 + 16));
    v8 = sub_100283BF4(a1, a2, "dt");
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  else if ((*v6 & 7) == 1)
  {
    LODWORD(v7) = *(v6 + 16);
    v8 = sub_100283BF4(a1, a2, "dt");
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    LODWORD(v7) = 0x7FFFFFFF;
    v8 = sub_100283BF4(a1, a2, "dt");
    if (!v8)
    {
      goto LABEL_23;
    }
  }

LABEL_19:
  if ((*v8 & 7) != 3 || (v9 = *(v8 + 24), (v5 & 0x80000000) != 0) || (v7 & 0x80000000) != 0 || !v9)
  {
LABEL_23:
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 46), "Some of essential matrix attributes are absent", 46);
    sub_1002A8980(-2, &v16, "icvReadMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5286);
  }

  v10 = sub_10029A8E0(*(v8 + 24));
  v11 = sub_100283BF4(a1, a2, "data");
  if (!v11)
  {
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 44), "The matrix data is not found in file storage", 44);
    sub_1002A8980(-2, &v16, "icvReadMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5292);
  }

  v12 = v11;
  if ((*v11 & 7u) < 5)
  {
    v13 = (*v11 & 7) != 0;
    if ((*v11 & 7) == 0)
    {
      return sub_1001FA8A8(v5, v7, v10);
    }
  }

  else
  {
    v13 = *(*(v11 + 16) + 40);
    if (v13 < 1)
    {
      return sub_1001FA8A8(v5, v7, v10);
    }
  }

  if (v13 != v7 * v5 + v7 * v5 * ((v10 >> 3) & 0x1FF))
  {
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 63), "The matrix size does not match to the number of stored elements", 63);
    sub_1002A8980(-209, &v16, "icvReadMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5297);
  }

  v15 = sub_1001FA87C(v5, v7, v10);
  sub_10028C630(a1, v12, *(v15 + 24), v9);
  return v15;
}

uint64_t sub_100290BCC(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_100288FB8(a1, a2, 6, "opencv-matrix");
  sub_1002899A0(a1, "rows", *(a3 + 32));
  sub_1002899A0(a1, "cols", *(a3 + 36));
  sprintf(&v14, "%d%c", ((*a3 >> 3) & 0x1FF) + 1, aUcwsifdr[*a3 & 7]);
  if (v15[1])
  {
    v5 = 0;
  }

  else
  {
    v5 = v14 == 49;
  }

  if (v5)
  {
    v6 = v15;
  }

  else
  {
    v6 = &v14;
  }

  sub_100289AEC(a1, "dt", v6, 0);
  sub_100288FB8(a1, "data", 13, 0);
  v7 = sub_1001FD8C8(a3);
  if (v7 >= 1)
  {
    v8 = HIDWORD(v7);
    if (SHIDWORD(v7) >= 1)
    {
      if (*(a3 + 24))
      {
        v9 = 0;
        v10 = *a3;
        if ((*a3 & 0x4000) != 0)
        {
          v11 = HIDWORD(v7);
        }

        else
        {
          v11 = 1;
        }

        v12 = v11 * v7;
        do
        {
          sub_100289C48(a1, *(a3 + 24) + v9 * *(a3 + 4), v12, &v14);
          if ((v10 & 0x4000) != 0)
          {
            break;
          }

          ++v9;
        }

        while (v9 < v8);
      }
    }
  }

  sub_10028984C(a1);
  return sub_10028984C(a1);
}

BOOL sub_100290D5C(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 16963;
  }

  return result;
}

uint64_t sub_100290D78(_DWORD *a1, uint64_t a2)
{
  memset(v22, 0, sizeof(v22));
  v4 = sub_100283BF4(a1, a2, "sizes");
  v5 = sub_100283BF4(a1, a2, "dt");
  if (!v5 || (*v5 & 7) != 3 || !v4 || !*(v5 + 24))
  {
    v20 = 0;
    v21 = 0;
    qmemcpy(sub_1002A80E0(&v20, 46), "Some of essential matrix attributes are absent", 46);
    sub_1002A8980(-2, &v20, "icvReadMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5369);
  }

  v19 = *(v5 + 24);
  if ((*v4 & 7) == 5)
  {
    v6 = *(*(v4 + 16) + 40);
    if ((v6 - 33) > 0xFFFFFFDF)
    {
      goto LABEL_14;
    }

LABEL_13:
    v20 = 0;
    v21 = 0;
    qmemcpy(sub_1002A80E0(&v20, 45), "Could not determine the matrix dimensionality", 45);
    sub_1002A8980(-212, &v20, "icvReadMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5375);
  }

  if ((*v4 & 7) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if ((v6 - 33) <= 0xFFFFFFDF)
  {
    goto LABEL_13;
  }

LABEL_14:
  sub_10028BBBC(a1, v4, &v20);
  if ((*v4 & 7) == 5)
  {
    v7 = *(*(v4 + 16) + 40);
  }

  else
  {
    v7 = 1;
  }

  sub_10028BDD8(a1, &v20, v7, v22, "i");
  v8 = sub_10029A8E0(v19);
  v9 = sub_100283BF4(a1, a2, "data");
  v10 = v9;
  if (!v9)
  {
    v20 = 0;
    v21 = 0;
    qmemcpy(sub_1002A80E0(&v20, 44), "The matrix data is not found in file storage", 44);
    sub_1002A8980(-2, &v20, "icvReadMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5382);
  }

  v11 = ((v8 >> 3) & 0x1FF) + 1;
  if (v6 >= 1)
  {
    v12 = v6;
    v13 = v22;
    do
    {
      if (!*v13)
      {
        v20 = 0;
        v21 = 0;
        *sub_1002A80E0(&v20, 8) = 0x5D695B73657A6973;
        sub_1002A8980(-215, &v20, "icvReadMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5388);
      }

      v11 *= *v13++;
      --v12;
    }

    while (v12);
  }

  if ((*v9 & 7u) < 5)
  {
    v14 = (*v9 & 7) != 0;
    if ((*v9 & 7) != 0 && v14 != v11)
    {
LABEL_29:
      v20 = 0;
      v21 = 0;
      qmemcpy(sub_1002A80E0(&v20, 63), "The matrix size does not match to the number of stored elements", 63);
      sub_1002A8980(-209, &v20, "icvReadMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 5396);
    }
  }

  else
  {
    v14 = *(*(v9 + 16) + 40);
    if (v14 >= 1 && v14 != v11)
    {
      goto LABEL_29;
    }
  }

  if (v14 < 1)
  {
    return sub_1001FB644(v6, v22, v8);
  }

  v17 = sub_1001FB618(v6, v22, v8);
  sub_10028C630(a1, v10, *(v17 + 24), v19);
  return v17;
}

void sub_100291174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100291204(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = a3;
  v11 = 0;
  sub_100288FB8(a1, a2, 6, "opencv-nd-matrix");
  v5 = sub_1001FD6A4(a3, __dst);
  sub_100288FB8(a1, "sizes", 13, 0);
  sub_100289C48(a1, __dst, v5, "i");
  sub_10028984C(a1);
  v6 = sub_1001FD564(a3);
  sprintf(&v15, "%d%c", ((v6 >> 3) & 0x1FF) + 1, aUcwsifdr[v6 & 7]);
  if (v16[1])
  {
    v7 = 0;
  }

  else
  {
    v7 = v15 == 49;
  }

  if (v7)
  {
    v8 = v16;
  }

  else
  {
    v8 = &v15;
  }

  sub_100289AEC(a1, "dt", v8, 0);
  sub_100288FB8(a1, "data", 13, 0);
  if (*(a3 + 32) >= 1 && *(a3 + 24))
  {
    sub_1001FBB14(1u, &v14, 0, v13, &v10, 0);
    do
    {
      sub_100289C48(a1, v12, v11, &v15);
    }

    while (sub_1001FC684(&v10));
  }

  sub_10028984C(a1);
  return sub_10028984C(a1);
}

uint64_t sub_1002913A4(_DWORD *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v4 = -27;
LABEL_5:
    v7 = 0;
    v8 = 0;
    qmemcpy(sub_1002A80E0(&v7, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v4, &v7, "cvRead", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6708);
  }

  if (*a1 != 1280131417)
  {
    v4 = -5;
    goto LABEL_5;
  }

  if (!a2)
  {
    return 0;
  }

  if ((*a2 & 0x10) == 0 || (v5 = *(a2 + 8)) == 0)
  {
    v7 = 0;
    v8 = 0;
    qmemcpy(sub_1002A80E0(&v7, 57), "The node does not represent a user object (unknown type?)", 57);
    sub_1002A8980(-2, &v7, "cvRead", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6714);
  }

  result = (*(v5 + 48))(a1, a2);
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_100291524(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    v10 = -27;
LABEL_5:
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 31), "Invalid pointer to file storage", 31);
    sub_1002A8980(v10, &v14, "cvWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6731);
  }

  if (*a1 != 1280131417)
  {
    v10 = -5;
    goto LABEL_5;
  }

  if (!a1[2])
  {
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 38), "The file storage is opened for reading", 38);
    sub_1002A8980(-2, &v14, "cvWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6731);
  }

  if (!a3)
  {
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 34), "Null pointer to the written object", 34);
    sub_1002A8980(-27, &v14, "cvWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6734);
  }

  v11 = qword_1004D5468;
  if (!qword_1004D5468)
  {
LABEL_12:
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 14), "Unknown object", 14);
    sub_1002A8980(-5, &v14, "cvWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6738);
  }

  while (!(*(v11 + 32))(a3))
  {
    v11 = *(v11 + 16);
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  v12 = *(v11 + 56);
  if (!v12)
  {
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 39), "The object does not have write function", 39);
    sub_1002A8980(-5, &v14, "cvWrite", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6741);
  }

  return v12(a1, a2, a3, a4, a5);
}

uint64_t sub_1002917F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 432);
  }

  return v1 & 1;
}

uint64_t sub_100291810(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100291880(uint64_t a1, char **a2, unsigned int a3, uint64_t a4)
{
  *(a1 + 8) = 0u;
  *a1 = off_1004752F8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  sub_100291A20(a1, a2, a3, a4);
  return a1;
}

void sub_1002918E8(_Unwind_Exception *a1)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  sub_1002A8124(v3);
  sub_100291810(v1);
  _Unwind_Resume(a1);
}

void *sub_100291918(void *a1)
{
  *a1 = off_1004752F8;
  v3 = a1 + 5;
  v2 = a1[5];
  if (v3[1] != v2)
  {
    do
    {
      sub_10028984C(a1[2]);
      v2 = a1[5];
      v4 = a1[6] - 1;
      a1[6] = v4;
    }

    while (v4 != v2);
  }

  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_1002A8124(a1 + 3);
  v5 = a1[1];
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  a1[1] = 0;
  a1[2] = 0;
  return a1;
}

void sub_1002919E8(void *a1)
{
  sub_100291918(a1);

  operator delete();
}

uint64_t sub_100291A20(void *a1, char **a2, unsigned int a3, uint64_t a4)
{
  sub_1002ACE7C(v15, &off_100475328);
  (*(*a1 + 32))(a1);
  v8 = "";
  if (*a2)
  {
    v9 = *a2;
  }

  else
  {
    v9 = "";
  }

  if (*a4)
  {
    v8 = *a4;
  }

  if (*(a4 + 8))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (sub_100283F94(v9, 0, a3, v10))
  {
    operator new();
  }

  v11 = a1[1];
  a1[1] = 0;
  a1[2] = 0;
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v11 + 16))(v11);
  }

  v12 = (*(*a1 + 24))(a1);
  if (v12)
  {
    v13 = 6;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 16) = v13;
  if (v16)
  {
    sub_1002ACC1C(v15);
  }

  return v12;
}

uint64_t sub_100291BEC(uint64_t result)
{
  v2 = (result + 8);
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v3 = result;
    (*(*v1 + 16))(v1);
    result = v3;
  }

  *v2 = 0;
  v2[1] = 0;
  *(result + 48) = *(result + 40);
  *(result + 64) = 0;
  return result;
}

uint64_t sub_100291C68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = a1[2];
  if (v3 && *(v3 + 376))
  {
    sub_100283290(v3, a2);
  }

  return (*(*a1 + 32))(a1);
}

uint64_t sub_100291CE8(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = "";
  }

  if ((*(*a1 + 24))(a1))
  {
    v5 = *v4;
    if ((v5 | 0x20) == 0x7D)
    {
      v6 = *(a1 + 48);
      if (*(a1 + 40) == v6)
      {
        sub_1002A8688(&v44, "Extra closing '%c'", *v4);
        sub_1002A8980(-2, &v44, "operator<<", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6957);
      }

      if (v5 == 93)
      {
        v7 = 91;
      }

      else
      {
        v7 = 123;
      }

      v8 = *(v6 - 1);
      if (v7 != v8)
      {
        sub_1002A8688(&v44, "The closing '%c' does not match the opening '%c'", v5, v8);
        sub_1002A8980(-2, &v44, "operator<<", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6960);
      }

      *(a1 + 48) = v6 - 1;
      v9 = 6;
      if (*(a1 + 40) != v6 - 1)
      {
        if (*(v6 - 2) == 123)
        {
          v9 = 6;
        }

        else
        {
          v9 = 1;
        }
      }

      *(a1 + 64) = v9;
      sub_10028984C(*(a1 + 16));
      v44 = 0;
      v45 = 0;
      if (&v44 != (a1 + 24))
      {
        sub_1002A8124((a1 + 24));
        v10 = v44;
        if (v44)
        {
          atomic_fetch_add(v44 - 1, 1u);
          v10 = v44;
        }

        v11 = v45;
        *(a1 + 24) = v10;
        *(a1 + 32) = v11;
      }

LABEL_83:
      sub_1002A8124(&v44);
      return a1;
    }

    if (*(a1 + 64) == 6)
    {
      v22 = v5 == 95;
      v12 = ((v5 & 0xDF) - 65);
      if (!v22 && v12 >= 0x1A)
      {
        sub_1002A8688(&v44, "Incorrect element name %s", v4);
        sub_1002A8980(-2, &v44, "operator<<", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 6970);
      }

      if (a1 + 24 != a2)
      {
        sub_1002A8124((a1 + 24));
        v14 = *a2;
        if (*a2)
        {
          atomic_fetch_add(v14 - 1, 1u);
          v14 = *a2;
        }

        *(a1 + 24) = v14;
        *(a1 + 32) = *(a2 + 8);
      }

      v15 = 5;
      goto LABEL_34;
    }

    if ((*(a1 + 64) & 3) != 1)
    {
      v44 = 0;
      v45 = 0;
      *sub_1002A80E0(&v44, 16) = *"Invalid fs.state";
      sub_1002A8980(-2, &v44, "operator<<", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 7000);
    }

    if ((v5 | 0x20) == 0x7B)
    {
      v17 = *(a1 + 48);
      v16 = *(a1 + 56);
      if (v17 >= v16)
      {
        v23 = *(a1 + 40);
        v24 = (v17 - v23);
        v25 = v17 - v23 + 1;
        if (v25 < 0)
        {
          sub_10000918C();
        }

        v26 = v16 - v23;
        if (2 * v26 > v25)
        {
          v25 = 2 * v26;
        }

        if (v26 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          operator new();
        }

        v30 = v17 - v23;
        *v24 = v5;
        v18 = v24 + 1;
        memcpy(0, v23, v30);
        *(a1 + 40) = 0;
        *(a1 + 48) = v24 + 1;
        *(a1 + 56) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v17 = v5;
        v18 = v17 + 1;
      }

      v31 = *(a1 + 24);
      *(a1 + 48) = v18;
      v32 = *v4 == 123;
      if (*v4 == 123)
      {
        v33 = 6;
      }

      else
      {
        v33 = 1;
      }

      *(a1 + 64) = v33;
      v34 = v4 + 1;
      v35 = v4[1];
      if (v32)
      {
        v36 = 6;
      }

      else
      {
        v36 = 5;
      }

      if (v35 == 58)
      {
        v37 = v36 | 8;
      }

      else
      {
        v37 = v36;
      }

      v38 = 1;
      if (v35 == 58)
      {
        v38 = 2;
        v34 = v4 + 2;
      }

      if (!v31)
      {
        v31 = "";
      }

      if (*(a1 + 32))
      {
        v39 = v31;
      }

      else
      {
        v39 = 0;
      }

      if (v4[v38])
      {
        v40 = v34;
      }

      else
      {
        v40 = 0;
      }

      sub_100288FB8(*(a1 + 16), v39, v37, v40);
      v44 = 0;
      v45 = 0;
      if (&v44 != (a1 + 24))
      {
        sub_1002A8124((a1 + 24));
        v41 = v44;
        if (v44)
        {
          atomic_fetch_add(v44 - 1, 1u);
          v41 = v44;
        }

        v42 = v45;
        *(a1 + 24) = v41;
        *(a1 + 32) = v42;
      }

      goto LABEL_83;
    }

    if (v5 != 92 || ((v20 = v4[1], v19 = (v4 + 1), v21 = (1 << (v20 - 91)) & 0x500000005, (v20 - 91) <= 0x22) ? (v22 = v21 == 0) : (v22 = 1), v22))
    {
      v28 = *a2;
      v29 = *(a2 + 8);
      v44 = v28;
      v45 = v29;
      if (v28)
      {
        atomic_fetch_add(v28 - 1, 1u);
      }
    }

    else
    {
      sub_1001FA81C(&v44, v19);
    }

    sub_10029223C(a1, a1 + 24, &v44);
    sub_1002A8124(&v44);
    if (*(a1 + 64) == 5)
    {
      v15 = 6;
LABEL_34:
      *(a1 + 64) = v15;
    }
  }

  return a1;
}

void sub_100292194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029223C(uint64_t a1, uint64_t a2, const char **a3)
{
  v3 = *(a1 + 16);
  v4 = *a2;
  if (!*a2)
  {
    v4 = "";
  }

  if (*(a2 + 8))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = "";
  }

  return sub_100289AEC(v3, v5, v6, 0);
}

_BYTE *sub_100292270(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  result = 0;
  if (a1 && a2 && a4)
  {
    v6 = (a1 + a3);
    v7 = 3 * (a4 / 3);
    if (v7 < 1)
    {
      v13 = v6;
      v9 = a2;
      v15 = a4;
      if (a4 != 2)
      {
LABEL_8:
        if (v15 != 1)
        {
LABEL_13:
          *v9 = 0;
          return (v9 - a2);
        }

        v16 = *v13;
        *v9 = aAbcdefghijklmn[v16 >> 2];
        v9[1] = aAbcdefghijklmn[16 * (v16 & 3)];
        v17 = 61;
LABEL_12:
        v9[2] = v17;
        v9[3] = 61;
        v9 += 4;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = &v6[v7];
      v9 = a2;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v10[1];
        v13 = v10 + 3;
        v14 = v10[2];
        *v9 = aAbcdefghijklmn[v11 >> 2];
        v9[1] = aAbcdefghijklmn[(v12 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v11 & 3))];
        v9[2] = aAbcdefghijklmn[(v14 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v12 & 0xF))];
        v9[3] = aAbcdefghijklmn[v14 & 0x3F];
        v9 += 4;
        v10 = v13;
      }

      while (v13 < v8);
      v15 = &v6[a4] - v13;
      if (v15 != 2)
      {
        goto LABEL_8;
      }
    }

    v18 = *v13;
    v19 = v13[1];
    *v9 = aAbcdefghijklmn[v18 >> 2];
    v9[1] = aAbcdefghijklmn[(v19 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v18 & 3))];
    v17 = aAbcdefghijklmn[4 * (v19 & 0xF)];
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1002923BC@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002825FC(&v10);
  v4 = strlen(a1);
  v5 = sub_100241184(&v10, a1, v4);
  LOBYTE(v9[0]) = 32;
  sub_100241184(v5, v9, 1);
  std::stringbuf::str();
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6 >= 0x18)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 27), "buffer.size() < HEADER_SIZE", 27);
    sub_1002A8980(-215, v9, "make_base64_header", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 7785);
  }

  std::string::reserve(a2, 0x18uLL);
  while (1)
  {
    v7 = *(a2 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v7 > 0x17)
    {
      break;
    }

    std::string::push_back(a2, 32);
  }

  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1002925D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1002A8124(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_100282818(va1);
  _Unwind_Resume(a1);
}

BOOL sub_100292628(const char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = strlen(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100241528();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  *(&__dst + v5) = 0;
  sub_100292868(v11, &__dst, 8);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  v6 = sub_100292A78(v11, a2);
  v7 = *(v6 + *(*v6 - 24) + 32);
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::istream::~istream();
  std::ios::~ios();
  return (v7 & 5) == 0;
}

void sub_100292838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100292DB8(va);
  _Unwind_Resume(a1);
}

void sub_10029284C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100292868(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 168) = 0;
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  *(a1 + 8) = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 16));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  std::locale::locale((a1 + 24));
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a3 | 8;
  std::stringbuf::str();
  return a1;
}

void sub_100292A28(_Unwind_Exception *a1)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 16) = v2;
  std::locale::~locale((v1 + 24));
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t *sub_100292A78(uint64_t *a1, uint64_t a2)
{
  std::istream::sentry::sentry();
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, &std::ctype<char>::id);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v16 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v17 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_18:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      if (v9)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      goto LABEL_28;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_18;
  }

  v17 = 2;
  v16 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (v9)
  {
    goto LABEL_28;
  }

LABEL_27:
  v17 |= 4u;
LABEL_28:
  std::ios_base::clear((a1 + *(v16 - 24)), *(a1 + *(v16 - 24) + 32) | v17);
  return a1;
}

void sub_100292D08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x100292CC8);
  }

  __cxa_rethrow();
}

uint64_t sub_100292DB8(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_100292ED8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = v3 - v1;
  v5 = v3 - v1;
  if (v3 != v1)
  {
    if ((v5 & 3) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v5 = strlen(v1);
  if (v5)
  {
    v6 = (v5 & 3) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

LABEL_10:
  v8 = &v1[v5];
  if (v1[v5 - 1] == 61)
  {
    v9 = *(v8 - 2);
    v8 -= 2;
    if (v9 != 61)
    {
      v8 = &v1[v5 - 1];
    }
  }

  if (v1 < v8)
  {
    v10 = v1;
    do
    {
      v11 = *v10;
      if (v11 > 0x7E)
      {
        return 0;
      }

      if (v11 != 65 && byte_1003E3C2A[*v10] == 0)
      {
        return 0;
      }
    }

    while (++v10 != v8);
  }

  if (v3 != v1)
  {
    v13 = *(a1 + 64);
    if ((v4 & 3) == 0 && v4 && v13)
    {
      v14 = *(a1 + 64);
      if (v4 >= 1)
      {
        v15 = *(a1 + 64);
        do
        {
          v16 = byte_1003E3C2A[*(v1 + 1)];
          v17 = byte_1003E3C2A[*(v1 + 2)];
          v18 = byte_1003E3C2A[*(v1 + 3)];
          *v15 = (4 * byte_1003E3C2A[*v1]) | (v16 >> 4) & 3;
          v15[1] = (16 * v16) | (v17 >> 2) & 0xF;
          v14 = v15 + 3;
          v15[2] = v18 | (v17 << 6);
          v1 += 4;
          v15 += 3;
        }

        while (v1 < v3);
      }

      *v14 = 0;
      *(a1 + 48) = *(a1 + 40);
      v19 = v14 - v13;
      if (v14 != v13)
      {
        if ((*a1 + v19) >= *(a1 + 8))
        {
          v20 = 0;
          v21 = 0;
          qmemcpy(sub_1002A80E0(&v20, 23), "dst_cur + len < dst_end", 23);
          sub_1002A8980(-215, &v20, "flush", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 7865);
        }

        memcpy(*a1, v13, v14 - v13);
        *a1 += v19;
        return 1;
      }
    }

    else
    {
      *(a1 + 48) = v1;
    }

    v20 = 0;
    v21 = 0;
    *sub_1002A80E0(&v20, 8) = 0x30203D21206E656CLL;
    sub_1002A8980(-215, &v20, "flush", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 7862);
  }

  return 1;
}

void sub_10029314C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  if ((*v9 + v10) < v9[1])
  {
    JUMPOUT(0x10029306CLL);
  }

  JUMPOUT(0x100293084);
}

void *sub_10029319C(void *a1)
{
  if (a1[6] != a1[5])
  {
    sub_100292ED8(a1);
  }

  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1002931F8(uint64_t a1, unint64_t __src, unint64_t a3)
{
  if (__src < a3)
  {
    v5 = __src;
    do
    {
      v6 = *(a1 + 48);
      if (*(a1 + 56) - v6 >= (a3 - v5))
      {
        v7 = a3 - v5;
      }

      else
      {
        v7 = *(a1 + 56) - v6;
      }

      memcpy(v6, v5, v7);
      v8 = *(a1 + 56);
      v9 = *(a1 + 48) + v7;
      *(a1 + 48) = v9;
      if (v9 >= v8 && (sub_100292ED8(a1) & 1) == 0)
      {
        v12[0] = 0;
        v12[1] = 0;
        v10 = sub_1002A80E0(v12, 7);
        *v10 = 1937075302;
        *(v10 + 3) = 690514035;
        sub_1002A8980(-215, v12, "read", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 7842);
      }

      v5 += v7;
    }

    while (v5 < a3);
  }

  return a1;
}

void sub_100293454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void sub_1002934B8(uint64_t *a1, char *__s)
{
  if (!__s)
  {
    __p = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&__p, 13), "Invalid 'dt'.", 13);
    sub_1002A8980(-5, &__p, "check_dt", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8359);
  }

  v3 = *(a1 + 31);
  if (v3 < 0)
  {
    v4 = (a1 + 1);
    if (a1[2])
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = v4;
    std::string::assign(v7, __s);
    sub_1002923BC(__s, &__p);
    v9 = v21;
    v10 = v21;
    if ((v21 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v21 & 0x80u) != 0)
    {
      v9 = v20;
    }

    if (v9 >= 1)
    {
      v12 = &p_p[v9];
      v13 = *a1;
      do
      {
        v14 = *(v13 + 64);
        if (*(v13 + 72) - v14 >= v12 - p_p)
        {
          v15 = v12 - p_p;
        }

        else
        {
          v15 = *(v13 + 72) - v14;
        }

        memcpy(v14, p_p, v15);
        v16 = *(v13 + 72);
        v17 = *(v13 + 64) + v15;
        *(v13 + 64) = v17;
        if (v17 >= v16)
        {
          sub_10029C17C(v13);
        }

        p_p += v15;
      }

      while (p_p < v12);
      v10 = v21;
    }

    if ((v10 & 0x80) != 0)
    {
      operator delete(__p);
    }

    return;
  }

  v4 = (a1 + 1);
  if (!*(a1 + 31))
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = strlen(__s);
  if ((v3 & 0x80000000) == 0)
  {
    if (v6 == v3 && !memcmp(v4, __s, v6))
    {
      return;
    }

LABEL_26:
    __p = 0;
    v20 = 0;
    v18 = sub_1002A80E0(&__p, 20);
    *(v18 + 16) = 778593140;
    *v18 = *"'dt' does not match.";
    sub_1002A8980(-5, &__p, "check_dt", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 8370);
  }

  if (v6 != a1[2])
  {
    goto LABEL_26;
  }

  if (v6 == -1)
  {
    sub_100282420();
  }

  if (memcmp(*v4, __s, v6))
  {
    goto LABEL_26;
  }
}

void sub_100293AD4(uint64_t a1, int a2, char *a3, uint64_t a4)
{
  v14 = 0;
  sub_10029C2DC(v9, a1, a2, a3);
  while (v9[0] < v9[2])
  {
    v16 = 0.0;
    (*(v12 + 2))(v9[0] + *(v12 + 1), &v16);
    v5 = v12;
    v6 = *v12;
    if (*v12 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          v7 = SLOBYTE(v16);
        }

        else
        {
          if (v6 != 2)
          {
            goto LABEL_25;
          }

          v7 = LOWORD(v16);
        }
      }

      else
      {
        v7 = LOBYTE(v16);
      }

      goto LABEL_23;
    }

    if (v6 <= 4)
    {
      if (v6 == 3)
      {
        v7 = SLOWORD(v16);
      }

      else
      {
        if (v6 != 4)
        {
          goto LABEL_25;
        }

        v7 = LODWORD(v16);
      }

LABEL_23:
      LODWORD(v15) = v7;
      goto LABEL_24;
    }

    if (v6 == 5)
    {
      v8 = *&v16;
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_25;
      }

      v8 = v16;
    }

    v15 = v8;
LABEL_24:
    v6 = *v12;
LABEL_25:
    if (v6 <= 6)
    {
      __src = dword_1003E3D0C[v6];
    }

    v12 += 24;
    if (v5 + 24 == v11)
    {
      v12 = __p;
      v9[0] += v9[3];
    }

    sub_100233314(a4, &__src);
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_100293C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100293C50(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000927C();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_100294018(a1, &v11);
}

void sub_100293FC0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_100294018(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_1002941A4(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

uint64_t sub_10029433C(uint64_t a1, const char *a2, int a3, void **a4, uint64_t a5)
{
  v9 = *(a1 + 120);
  v10 = *(a1 + 68);
  if (a2)
  {
    if (*a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0;
    }

    if (a3 != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = 0;
    if (a3 != 1)
    {
      goto LABEL_22;
    }
  }

  if ((*(a1 + 68) & 7u) < 5)
  {
    if (v11)
    {
      v10 = 38;
    }

    else
    {
      v10 = 37;
    }

    *(a1 + 12) = 0;
  }

  else if (((*(a1 + 68) & 7) == 6) != (v11 != 0))
  {
    v54 = 0;
    v55 = 0;
    qmemcpy(sub_1002A80E0(&v54, 85), "An attempt to add element without a key to a map, or add element with key to sequence", 85);
    sub_1002A8980(-5, &v54, "icvXMLWriteTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2892);
  }

  if ((v10 & 0x20) == 0)
  {
    v13 = *(a1 + 120);
    v12 = *(a1 + 128);
    v14 = *(a1 + 88);
    if (v13 > &v12[v14])
    {
      *v13 = 10;
      sub_10028614C(a1, *(a1 + 128));
      v12 = *(a1 + 128);
      LODWORD(v14) = *(a1 + 88);
    }

    v15 = *(a1 + 64);
    if (v14 == v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
      memset(v12, 32, v15);
      *(a1 + 88) = v15;
      v12 = *(a1 + 128);
    }

    v9 = &v12[v16];
    *(a1 + 120) = &v12[v16];
  }

LABEL_22:
  v52 = v10;
  if (v11)
  {
    if (*v11 == 95 && !v11[1])
    {
      v54 = 0;
      v55 = 0;
      qmemcpy(sub_1002A80E0(&v54, 33), "A single _ is a reserved tag name", 33);
      sub_1002A8980(-5, &v54, "icvXMLWriteTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2907);
    }
  }

  else
  {
    v11 = "_";
  }

  result = strlen(v11);
  v18 = result;
  *v9 = 60;
  v19 = v9 + 1;
  if (a3 == 2)
  {
    if (a4)
    {
      v54 = 0;
      v55 = 0;
      qmemcpy(sub_1002A80E0(&v54, 45), "Closing tag should not include any attributes", 45);
      sub_1002A8980(-5, &v54, "icvXMLWriteTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2914);
    }

    v19 = v9 + 2;
    v9[1] = 47;
  }

  v20 = *v11;
  if (v20 != 95 && (v20 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v54 = 0;
    v55 = 0;
    qmemcpy(sub_1002A80E0(&v54, 35), "Key should start with a letter or _", 35);
    sub_1002A8980(-5, &v54, "icvXMLWriteTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2919);
  }

  v22 = result;
  v23 = *(a1 + 136);
  v53 = a5;
  if (&v19[result] >= v23)
  {
    v24 = *(a1 + 128);
    v25 = v19 - v24;
    v26 = (3 * (v23 - v24) + ((3 * (v23 - v24)) >> 63)) >> 1;
    v27 = v19 - v24 + result;
    if (v27 <= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    result = sub_1001D90AC(v28 + 256);
    v29 = result;
    v30 = *(a1 + 128);
    *(a1 + 120) = result + *(a1 + 120) - v30;
    if (v25 >= 1)
    {
      result = memcpy(result, v30, v25 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v29;
    *(a1 + 136) = &v29[v28];
    v19 = &v29[v25];
  }

  if (v18 >= 1)
  {
    v31 = v18 & 0x7FFFFFFF;
    v32 = v19;
    do
    {
      v34 = *v11++;
      v33 = v34;
      if ((v34 - 58) <= 0xF5u && ((v33 & 0xDF) - 91) <= 0xE5u && v33 != 45 && v33 != 95)
      {
        v54 = 0;
        v55 = 0;
        qmemcpy(sub_1002A80E0(&v54, 74), "Key name may only contain alphanumeric characters [a-zA-Z0-9], '-' and '_'", 74);
        sub_1002A8980(-5, &v54, "icvXMLWriteTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2926);
      }

      *v32++ = v33;
      --v31;
    }

    while (v31);
  }

  v35 = &v19[v22];
  if (a4)
  {
LABEL_53:
    result = *a4;
    if (*a4)
    {
      v36 = a4 + 1;
      do
      {
        v40 = strlen(result);
        v41 = strlen(*v36);
        v42 = v40 + v41 + 4;
        v43 = *(a1 + 136);
        if (&v35[v42] >= v43)
        {
          v44 = *(a1 + 128);
          v45 = v35 - v44;
          v46 = (3 * (v43 - v44) + ((3 * (v43 - v44)) >> 63)) >> 1;
          v47 = v42 + v35 - v44;
          if (v47 <= v46)
          {
            v48 = v46;
          }

          else
          {
            v48 = v47;
          }

          v49 = sub_1001D90AC(v48 + 256);
          v50 = v49;
          v51 = *(a1 + 128);
          *(a1 + 120) = &v49[*(a1 + 120) - v51];
          if (v45 >= 1)
          {
            memcpy(v49, v51, v45 & 0x7FFFFFFF);
          }

          *(a1 + 128) = v50;
          *(a1 + 136) = &v50[v48];
          v35 = &v50[v45];
        }

        *v35 = 32;
        v37 = v35 + 1;
        memcpy(v37, *(v36 - 1), v40);
        v38 = &v37[v40];
        *v38 = 8765;
        v38 += 2;
        memcpy(v38, *v36, v41);
        v39 = &v38[v41];
        *v39 = 34;
        v35 = v39 + 1;
        result = v36[1];
        v36 += 2;
      }

      while (result);
    }
  }

  while (v53)
  {
    a4 = *v53;
    v53 = *(v53 + 8);
    if (a4)
    {
      goto LABEL_53;
    }
  }

  *v35 = 62;
  *(a1 + 120) = v35 + 1;
  *(a1 + 68) = v52 & 0xFFFFFFDF;
  return result;
}

void sub_100294898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

char *sub_100294910(uint64_t a1, char *a2, int a3)
{
  v6 = 0;
  while (1)
  {
    do
    {
      while (1)
      {
        while (a3 == 1)
        {
          v11 = *a2;
          if (v11 <= 0x1F && v11 != 9)
          {
LABEL_43:
            a3 = 1;
            goto LABEL_45;
          }

          a2 += 3;
          while (v11 != 45 || *(a2 - 2) != 45 || *(a2 - 1) != 62)
          {
            v11 = *(a2 - 2);
            ++a2;
            if (v11 <= 0x1F && v11 != 9)
            {
              goto LABEL_43;
            }
          }

          a3 = 0;
          v11 = *a2;
          if (v11 <= 0x1F)
          {
            goto LABEL_45;
          }
        }

        if (a3 != 3)
        {
          break;
        }

        do
        {
          v7 = *a2;
          v8 = v7 == 62;
          if (v7 == 60)
          {
            v9 = v6 + 1;
          }

          else
          {
            v9 = v6;
          }

          v6 = v9 - v8;
          if (v9 - v8 < 0)
          {
            return a2;
          }

          ++a2;
        }

        while (v7 > 0x1F || v7 == 9);
        a3 = 3;
        v12 = *--a2;
        v11 = v12;
        if (v12 <= 0x1F)
        {
          goto LABEL_45;
        }
      }

      while (1)
      {
        v11 = *a2;
        if (v11 != 9 && v11 != 32)
        {
          break;
        }

        ++a2;
      }

      if (v11 != 60)
      {
        if (v11 > 0x1F)
        {
          return a2;
        }

        break;
      }

      if (a2[1] != 33 || a2[2] != 45 || a2[3] != 45)
      {
        return a2;
      }

      if (a3)
      {
        sprintf(v25, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Comments are not allowed here");
        sub_1002A9248(-212, "icvXMLSkipSpaces", v25, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2278);
      }

      a3 = 1;
      v13 = a2[4];
      a2 += 4;
      v11 = v13;
    }

    while (v13 > 0x1F);
LABEL_45:
    v16 = v11 > 0xD;
    v17 = (1 << v11) & 0x2401;
    if (v16 || v17 == 0)
    {
      sprintf(v25, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid character in the stream");
      sub_1002A9248(-212, "icvXMLSkipSpaces", v25, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2290);
    }

    v19 = sub_1002862DC(a1, *(a1 + 128), (*(a1 + 136) - *(a1 + 128)));
    if (!v19)
    {
      break;
    }

    a2 = v19;
    v20 = v19[(strlen(v19) - 1)];
    if (v20 != 10 && v20 != 13)
    {
      if (*(a1 + 352))
      {
        if (*(a1 + 368) < *(a1 + 360))
        {
          goto LABEL_2;
        }
      }

      else
      {
        v22 = *(a1 + 104);
        if (v22)
        {
          if (!feof(v22))
          {
            goto LABEL_2;
          }
        }

        else
        {
          v23 = *(a1 + 112);
          if (!v23 || !gzeof(v23))
          {
LABEL_2:
            sprintf(v25, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Too long string or a last string w/o newline");
            sub_1002A9248(-212, "icvXMLSkipSpaces", v25, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2303);
          }
        }
      }
    }

    ++*(a1 + 148);
  }

  a2 = *(a1 + 128);
  *a2 = 0;
  *(a1 + 152) = 1;
  return a2;
}

char *sub_100294C4C(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, int *a5)
{
  if (!*__s)
  {
    sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Preliminary end of the stream");
    sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2681);
  }

  if (*__s != 60)
  {
    sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Tag should start with '<'");
    sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2684);
  }

  v7 = __s + 1;
  v6 = __s[1];
  if ((v6 - 48) >= 0xA && (v6 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    if (__s[1] > 0x3Eu)
    {
      if (v6 == 63)
      {
        v42 = 0;
        v10 = 0;
        v7 = __s + 2;
        v36 = 4;
        v9 = 1;
        goto LABEL_12;
      }

      if (v6 == 95)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v6 == 33)
      {
        v42 = 0;
        v9 = 0;
        v10 = 0;
        v7 = __s + 2;
        v11 = 5;
        goto LABEL_11;
      }

      if (v6 == 47)
      {
        v9 = 0;
        v10 = 0;
        v7 = __s + 2;
        v36 = 2;
        v42 = 1;
        goto LABEL_12;
      }
    }

    sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Unknown tag type");
    sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2706);
  }

LABEL_10:
  v42 = 0;
  v9 = 0;
  v10 = 1;
  v11 = 1;
LABEL_11:
  v36 = v11;
LABEL_12:
  v12 = 0;
  v13 = 0;
  v40 = 0;
  v14 = 0;
  v41 = v10 ^ 1;
  while (1)
  {
    v15 = *v7;
    if (v15 != 95 && (v15 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Name should start with a letter or underscore");
      sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2713);
    }

    for (i = 0; ; ++i)
    {
      v18 = v7[i];
      if ((v18 - 48) >= 0xAu && ((v18 & 0xDF) - 65) >= 0x1Au)
      {
        v20 = v7[i];
        if (v20 != 95 && v20 != 45)
        {
          break;
        }
      }
    }

    v21 = sub_10028356C(a1, v7, i, 1);
    v22 = v21;
    if (!v21)
    {
      *v43 = 0;
      v44 = 0;
      *sub_1002A80E0(v43, 8) = 0x656D616E72747461;
      sub_1002A8980(-215, v43, "icvXMLParseTag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2720);
    }

    v7 += i;
    if (v14)
    {
      if (v42)
      {
        sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Closing tag should not contain any attributes");
        sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2728);
      }

      if (v12 && v13 <= 3)
      {
        v23 = *v12;
      }

      else
      {
        v24 = sub_100231C8C(*(a1 + 16), 0x58uLL);
        *(v24 + 72) = 0u;
        *(v24 + 56) = 0u;
        *(v24 + 40) = 0u;
        *(v24 + 24) = 0u;
        *(v24 + 8) = 0u;
        v23 = v24 + 16;
        *v24 = v24 + 16;
        v13 = 0;
        if (v12)
        {
          v12[1] = v24;
          v12 = v24;
        }

        else
        {
          v12 = v24;
          v40 = v24;
        }
      }

      *(v23 + 16 * v13) = *(v22 + 16);
      if (*v7 == 61)
      {
        goto LABEL_45;
      }

LABEL_43:
      v7 = sub_100294910(a1, v7, 2);
      if (*v7 != 61)
      {
        sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Attribute name should be followed by '='");
        sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2754);
      }

      goto LABEL_45;
    }

    v14 = v21;
    if (!v12)
    {
      goto LABEL_51;
    }

    if (*v7 != 61)
    {
      goto LABEL_43;
    }

LABEL_45:
    v27 = v7[1];
    v26 = v7 + 1;
    v25 = v27;
    if (v27 != 34 && v25 != 39)
    {
      v28 = *sub_100294910(a1, v26, 2);
      if (v28 != 34 && v28 != 39)
      {
        sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Attribute value should be put into single or double quotes");
        sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2762);
      }
    }

    v7 = sub_100295364(a1);
    *(*v12 + 8 * ((2 * v13++) | 1)) = v45;
LABEL_51:
    v29 = *v7;
    if (v29 == 62)
    {
      break;
    }

    v30 = sub_100294910(a1, v7, 2);
    v7 = v30;
    v31 = *v30;
    if (v31 == 62)
    {
      break;
    }

    v32 = v9 ^ 1;
    if (v31 != 63)
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      if (v30[1] != 62)
      {
        sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid closing tag for <?xml ...");
        sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2790);
      }

      result = v30 + 2;
      v35 = 4;
      goto LABEL_77;
    }

    if (v31 == 47)
    {
      v33 = v41;
      if (v30[1] != 62)
      {
        v33 = 1;
      }

      if ((v33 & 1) == 0)
      {
        result = v30 + 2;
        v35 = 3;
        goto LABEL_77;
      }
    }

    if (v29 > 0x20 || ((1 << v29) & 0x100003E01) == 0)
    {
      sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "There should be space between attributes");
      sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2802);
    }
  }

  if (v9)
  {
    sprintf(v43, "%s(%d): %s", *(a1 + 96), *(a1 + 148), "Invalid closing tag for <?xml ...");
    sub_1002A9248(-212, "icvXMLParseTag", v43, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/persistence.cpp", 2783);
  }

  result = v7 + 1;
  v35 = v36;
LABEL_77:
  *a3 = v14;
  *a5 = v35;
  *a4 = v40;
  return result;
}