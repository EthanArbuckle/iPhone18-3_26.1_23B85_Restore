__int32 *do_mvis(__int32 *a1, __int32 a2, __int16 a3, int a4, const __int32 *a5)
{
  if (a2 == 10 || (!iswspace(a2) || a4 != 13 && a4 != 10) && (iswspace(a2) || a2 >= 33 && a2 != 61 && a2 <= 126) && !wcschr(dword_C2774, a2))
  {
    return do_svis(a1, a2, a3, a4, a5);
  }

  *a1 = 61;
  a1[1] = dword_C27A8[a2 >> 4];
  v5 = a1 + 2;
  v12 = a1 + 3;
  *v5 = dword_C27A8[a2 & 0xF];
  return v12;
}

__int32 *do_svis(__int32 *a1, __int32 a2, __int16 a3, unsigned __int8 a4, const __int32 *a5)
{
  v8 = wcschr(a5, a2) != 0;
  if (v8)
  {
    goto LABEL_17;
  }

  if ((a3 & 0x4000) == 0)
  {
    if (!iswgraph(a2))
    {
      goto LABEL_6;
    }

LABEL_16:
    *a1 = a2;
    return a1 + 1;
  }

  if (isgraph_l(a2, 0))
  {
    goto LABEL_16;
  }

LABEL_6:
  if (a2 == 32 || a2 == 9 || a2 == 10 || (a3 & 0x4000) == 0 && a2 > 127 && iswspace(a2) || (a3 & 0x20) != 0 && (a2 == 8 || a2 == 7 || a2 == 13))
  {
    goto LABEL_16;
  }

LABEL_17:
  v6 = 0;
  for (i = 7; (i & 0x80000000) == 0; --i)
  {
    v6 |= 255 << (8 * i);
    if ((a2 & v6) != 0 || !i)
    {
      a1 = do_mbyte(a1, (a2 & (255 << (8 * i))) >> (8 * i), a3, a4, v8);
    }
  }

  return a1;
}

_DWORD *do_mbyte(_DWORD *a1, int a2, __int16 a3, unsigned __int8 a4, int a5)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  if ((a3 & 2) != 0)
  {
    switch(a2)
    {
      case 0:
        *a1 = 92;
        v15 = a1 + 2;
        a1[1] = 48;
        if (a4 >= 0x30u && a4 <= 0x37u)
        {
          *v15 = 48;
          v15 = a1 + 4;
          a1[3] = 48;
        }

        return v15;
      case 7:
        *a1 = 92;
        a1[1] = 97;
        return a1 + 2;
      case 8:
        *a1 = 92;
        a1[1] = 98;
        return a1 + 2;
      case 9:
        *a1 = 92;
        a1[1] = 116;
        return a1 + 2;
      case 10:
        *a1 = 92;
        a1[1] = 110;
        return a1 + 2;
      case 11:
        *a1 = 92;
        a1[1] = 118;
        return a1 + 2;
      case 12:
        *a1 = 92;
        a1[1] = 102;
        return a1 + 2;
      case 13:
        *a1 = 92;
        a1[1] = 114;
        return a1 + 2;
      case 32:
        *a1 = 92;
        a1[1] = 115;
        return a1 + 2;
      case 36:
      case 48:
      case 77:
      case 94:
      case 97:
      case 98:
      case 102:
      case 110:
      case 114:
      case 115:
      case 116:
      case 118:
        goto LABEL_22;
      default:
        if ((a3 & 0x4000) != 0)
        {
          if (!isgraph_l(a2, 0))
          {
            goto LABEL_22;
          }
        }

        else if (!iswgraph(a2))
        {
          goto LABEL_22;
        }

        if (v13 >= 0x30u && v13 <= 0x37u)
        {
          goto LABEL_22;
        }

        *v14 = 92;
        v14[1] = v13;
        v17 = v14 + 2;
        break;
    }
  }

  else
  {
LABEL_22:
    if (a5 || (v13 & 0x7F) == 0x20 || (v12 & 1) != 0)
    {
      *v14 = 92;
      v14[1] = ((v13 >> 6) & 3) + 48;
      v14[2] = ((v13 >> 3) & 7) + 48;
      v5 = v14 + 3;
      v16 = v14 + 4;
      *v5 = (v13 & 7) + 48;
    }

    else
    {
      if ((v12 & 0x40) == 0)
      {
        v6 = v14++;
        *v6 = 92;
      }

      if ((v13 & 0x80) != 0)
      {
        v13 &= 0x7Fu;
        v7 = v14++;
        *v7 = 77;
      }

      if (iswcntrl(v13))
      {
        *v14 = 94;
        v8 = v14 + 1;
        v16 = v14 + 2;
        if (v13 == 127)
        {
          *v8 = 63;
        }

        else
        {
          *v8 = v13 + 64;
        }
      }

      else
      {
        *v14 = 45;
        v9 = v14 + 1;
        v16 = v14 + 2;
        *v9 = v13;
      }
    }

    return v16;
  }

  return v17;
}

uint64_t waitpid_NOCANCEL(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 & 0x13) == a3)
  {
    return __wait4_nocancel();
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t _ascii_init(uint64_t a1)
{
  *(a1 + 72) = _ascii_mbrtowc;
  *(a1 + 80) = _ascii_mbsinit;
  *(a1 + 88) = _ascii_mbsnrtowcs;
  *(a1 + 96) = _ascii_wcrtomb;
  *(a1 + 104) = _ascii_wcsnrtombs;
  *(a1 + 64) = 1;
  *(a1 + 68) = 128;
  return 0;
}

uint64_t _ascii_mbrtowc(_DWORD *a1, _BYTE *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return -2;
  }

  if ((*a2 & 0x80) != 0)
  {
    *__error() = 92;
    return -1;
  }

  else
  {
    if (a1)
    {
      *a1 = *a2;
    }

    return *a2 != 0;
  }
}

uint64_t _ascii_mbsnrtowcs(_DWORD *a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  if (a1)
  {
    v13 = *a2;
    for (i = 0; ; ++i)
    {
      v4 = a4--;
      v9 = 0;
      if (v4)
      {
        v5 = a3--;
        v9 = v5 != 0;
      }

      if (!v9)
      {
        break;
      }

      if ((*v13 & 0x80) != 0)
      {
        *a2 = v13;
        *__error() = 92;
        return -1;
      }

      v6 = v13++;
      LODWORD(v6) = *v6;
      v7 = v16++;
      *v7 = v6;
      if (!v6)
      {
        *a2 = 0;
        return i;
      }
    }

    *a2 = v13;
    return i;
  }

  else
  {
    for (j = *a2; ; ++j)
    {
      v10 = 0;
      if (a3)
      {
        v10 = *j != 0;
      }

      if (!v10)
      {
        break;
      }

      if ((*j & 0x80) != 0)
      {
        *__error() = 92;
        return -1;
      }

      --a3;
    }

    return j - *a2;
  }
}

uint64_t _ascii_wcrtomb(_BYTE *a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  if (a2 < 0 || a2 > 127)
  {
    *__error() = 92;
    return -1;
  }

  else
  {
    *a1 = a2;
    return 1;
  }
}

uint64_t _ascii_wcsnrtombs(_BYTE *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  if (a1)
  {
    v13 = *a2;
    for (i = 0; ; ++i)
    {
      v4 = a4--;
      v9 = 0;
      if (v4)
      {
        v5 = a3--;
        v9 = v5 != 0;
      }

      if (!v9)
      {
        break;
      }

      if (*v13 < 0 || *v13 > 127)
      {
        *a2 = v13;
        *__error() = 92;
        return -1;
      }

      v6 = v13++;
      LOBYTE(v6) = *v6;
      v7 = v16++;
      *v7 = v6;
      if (!v6)
      {
        *a2 = 0;
        return i;
      }
    }

    *a2 = v13;
    return i;
  }

  else
  {
    for (j = *a2; ; ++j)
    {
      v10 = 0;
      if (a3)
      {
        v10 = *j != 0;
      }

      if (!v10)
      {
        break;
      }

      if (*j < 0 || *j > 127)
      {
        *__error() = 92;
        return -1;
      }

      --a3;
    }

    return j - *a2;
  }
}

uint64_t _BIG5_init(uint64_t a1)
{
  *(a1 + 72) = _BIG5_mbrtowc;
  *(a1 + 96) = _BIG5_wcrtomb;
  *(a1 + 80) = _BIG5_mbsinit;
  *(a1 + 64) = 2;
  *(a1 + 68) = 128;
  return 0;
}

uint64_t _BIG5_mbrtowc(int *a1, unsigned __int8 *a2, unint64_t a3, int *a4)
{
  v11 = a2;
  if ((*a4 & 0xFFFFFF00) != 0)
  {
    *__error() = 22;
    return -1;
  }

  if (!a2)
  {
    v11 = &unk_C42B5;
    a3 = 1;
    a1 = 0;
  }

  if (!a3)
  {
    return -2;
  }

  if (*a4)
  {
    if (!*v11)
    {
LABEL_9:
      *__error() = 92;
      return -1;
    }

    if (a1)
    {
      *a1 = *v11 | (*a4 << 8);
    }

    *a4 = 0;
    return 1;
  }

  else
  {
    v6 = _big5_check(*v11);
    v4 = v11;
    v12 = v11 + 1;
    v7 = *v4;
    if (v6 == 2)
    {
      if (a3 < 2)
      {
        *a4 = v7;
        return -2;
      }

      if (!*v12)
      {
        goto LABEL_9;
      }

      v8 = *v12 | (v7 << 8);
      if (a1)
      {
        *a1 = v8;
      }

      return 2;
    }

    else
    {
      if (a1)
      {
        *a1 = v7;
      }

      return v7 != 0;
    }
  }
}

uint64_t _BIG5_wcrtomb(_BYTE *a1, __int16 a2, _DWORD *a3)
{
  if (*a3)
  {
    *__error() = 22;
    return -1;
  }

  else if (a1)
  {
    if (a2 < 0)
    {
      *a1 = HIBYTE(a2);
      a1[1] = a2;
      return 2;
    }

    else
    {
      *a1 = a2;
      return 1;
    }
  }

  else
  {
    return 1;
  }
}

BOOL _BIG5_mbsinit(_DWORD *a1)
{
  v2 = 1;
  if (a1)
  {
    return *a1 == 0;
  }

  return v2;
}

uint64_t _big5_check(unsigned __int8 a1)
{
  v2 = 0;
  if (a1 >= 0xA1u)
  {
    v2 = a1 != 255;
  }

  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

wint_t btowc_l(int a1, locale_t a2)
{
  v6 = a1;
  v5 = a2;
  memcpy(__b, &btowc_l_initial, sizeof(__b));
  v4 = 0;
  v3 = 0;
  if (v5)
  {
    if (v5 == -1)
    {
      v5 = __global_locale;
    }
  }

  else
  {
    v5 = &__c_locale;
  }

  if (v6 == -1)
  {
    return -1;
  }

  v4 = v6;
  if ((*(*(v5 + 166) + 72))(&v3, &v4, 1, __b, v5) <= 1)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

wint_t btowc(int a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return btowc_l(a1, v2);
  }

  else
  {
    return btowc_l(a1, __global_locale);
  }
}

uint64_t __collate_load_tables(char *a1, void *a2)
{
  __s1 = a1;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  i = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  memset(&__b, 0, sizeof(__b));
  if (!strcmp(__s1, "C") || !strcmp(__s1, "POSIX") || !strncmp(__s1, "C.", 2uLL))
  {
    if (v12 == __global_locale)
    {
      __collate_load_error = 1;
    }

    xlocale_release(v12[165]);
    v12[165] = &__xlocale_C_collate;
    xlocale_retain(&__xlocale_C_collate);
    return 1;
  }

  else if (__collate_load_tables_cache && !strcmp(__s1, (__collate_load_tables_cache + 16)))
  {
    if (v12 == __global_locale)
    {
      __collate_load_error = 0;
    }

    xlocale_release(v12[165]);
    v12[165] = __collate_load_tables_cache;
    xlocale_retain(__collate_load_tables_cache);
    return 1;
  }

  else
  {
    strcpy(__dst, __s1);
    strcat(__dst, "/LC_COLLATE");
    v11 = __open_path_locale(__dst);
    if (v11 == -1)
    {
      return -1;
    }

    else if (fstat(v11, &__b) < 0)
    {
      close_NOCANCEL();
      return -1;
    }

    else if (__b.st_size >= 0xA8uLL)
    {
      v5 = mmap(0, __b.st_size, 3, 2, v11, 0);
      close_NOCANCEL();
      v6 = v5;
      if (v5 == -1)
      {
        return -1;
      }

      else
      {
        v9 = 1;
        if (!strncmp(v6, "1.1A\n", 0xCuLL))
        {
          return __collate_load_tables_legacy(__s1, v12, v6, v5, &__b, &__collate_load_tables_cache);
        }

        else if (strncmp(v6, "DARWIN 1.0\n", 0xCuLL) || (v6 += 12, v6 += 12, v4 = v6, v6 += 144, v9 = *(v4 + 14), v9 < 0))
        {
          munmap(v5, __b.st_size);
          *__error() = 79;
          return -1;
        }

        else
        {
          if (*(v4 + 13))
          {
            goto LABEL_26;
          }

          v10 = 136 * v9 + 10240 + 44 * *(v4 + 15);
            ;
          }

          if (v10 != __b.st_size - (v6 - v5))
          {
LABEL_26:
            munmap(v5, __b.st_size);
            *__error() = 22;
            return -1;
          }

          else
          {
            v7 = malloc_type_malloc();
            if (v7)
            {
              *(v7 + 72) = v5;
              *(v7 + 80) = __b.st_size;
              *v7 = 2;
              *(v7 + 8) = destruct_collate;
              *(v7 + 192) = v6;
              v6 += 10240;
              for (i = 0; i < *v4; ++i)
              {
                if (*&v4[4 * i + 64] <= 0)
                {
                  *(v7 + 96 + 8 * i) = 0;
                }

                else
                {
                  *(v7 + 96 + 8 * i) = v6;
                  v6 += 100 * *&v4[4 * i + 64];
                }
              }

              if (v9 <= 0)
              {
                *(v7 + 176) = 0;
              }

              else
              {
                *(v7 + 176) = v6;
                v6 += 136 * v9;
              }

              if (*(v4 + 15) <= 0)
              {
                *(v7 + 184) = 0;
              }

              else
              {
                *(v7 + 184) = v6;
              }

              strcpy((v7 + 16), __s1);
              *(v7 + 88) = v4;
              xlocale_release(__collate_load_tables_cache);
              __collate_load_tables_cache = v7;
              xlocale_release(v12[165]);
              v12[165] = __collate_load_tables_cache;
              *(v7 + 64) = 0;
              if (v12 == __global_locale)
              {
                __collate_load_error = 0;
              }

              return 0;
            }

            else
            {
              munmap(v5, __b.st_size);
              *__error() = 12;
              return -1;
            }
          }
        }
      }
    }

    else
    {
      close_NOCANCEL();
      *__error() = 22;
      return -1;
    }
  }
}

uint64_t __collate_load_tables_legacy(const char *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v53 = 0;
  v54 = 0;
  v52 = 0x100000001;
  v43 = a3 + 10;
  v47 = a3 + 38;
  for (i = 0; i < (*(v43 + 3) & 0xF); ++i)
  {
    *(v43 + 4 + 4 * i) = _OSSwapInt32(*(v43 + 4 + 4 * i));
    *(v43 + 12 + 4 * i) = _OSSwapInt32(*(v43 + 12 + 4 * i));
    if ((*(v43 + 4 + 4 * i) & 0x80000000) != 0)
    {
      *(v43 + 4 + 4 * i) = -*(v43 + 4 + 4 * i);
    }
  }

  *(v43 + 20) = _OSSwapInt32(*(v43 + 20));
  *(v43 + 24) = _OSSwapInt32(*(v43 + 24));
  v30 = *(v43 + 20);
  if (v30 < 0)
  {
    munmap(a4, *(a5 + 96));
    *__error() = 79;
    return -1;
  }

  else
  {
    v31 = 48 * v30 + 2048 + 12 * *(v43 + 24);
    for (j = 0; j < (*(v43 + 3) & 0xF); ++j)
    {
      v31 += 44 * *(v43 + 12 + 4 * j);
    }

    if (v31 == *(a5 + 96) - (v47 - a4))
    {
      v42 = malloc_type_malloc();
      if (v42)
      {
        *(v42 + 72) = a4;
        *(v42 + 80) = *(a5 + 96);
        v32 = 136 * v30 + 10384 + 44 * *(v43 + 24);
        for (k = 0; k < (*(v43 + 3) & 0xF); ++k)
        {
          if ((*(v43 + 2) & 1) != 0 && k > 0)
          {
            *(v43 + 12 + 4 * k) = *(v43 + 12);
          }

          v32 += 100 * *(v43 + 12 + 4 * k);
        }

        v6 = malloc_type_calloc();
        *(v42 + 88) = v6;
        if (v6)
        {
          v37 = *(v42 + 88) + 144;
          *v42 = 2;
          *(v42 + 8) = destruct_collate;
          v41 = v47;
          *(v42 + 192) = v37;
          v48 = (v47 + 2048);
          v38 = v37 + 10240;
          if (*(v43 + 12) <= 0)
          {
            *(v42 + 96) = 0;
          }

          else
          {
            v53 = v48;
            *(v42 + 96) = v38;
            v48 += 11 * *(v43 + 12);
            v38 += 100 * *(v43 + 12);
          }

          if (*(v43 + 16) <= 0)
          {
            *(v42 + 104) = 0;
          }

          else
          {
            *(v42 + 104) = v38;
            v38 += 100 * *(v43 + 16);
            if (*(v43 + 2))
            {
              v54 = v53;
            }

            else
            {
              v54 = v48;
              v48 += 11 * *(v43 + 16);
            }
          }

          if (v30 <= 0)
          {
            v40 = 0;
            *(v42 + 176) = 0;
          }

          else
          {
            v40 = v48;
            *(v42 + 176) = v38;
            v48 += 12 * v30;
            v38 += 136 * v30;
          }

          if (*(v43 + 24) <= 0)
          {
            v39 = 0;
            *(v42 + 184) = 0;
          }

          else
          {
            v39 = v48;
            *(v42 + 184) = v38;
          }

          v22 = *(v42 + 192);
          v21 = v41;
          v33 = 256;
          while (1)
          {
            v7 = v33--;
            if (v7 <= 0)
            {
              break;
            }

            for (m = 0; m < (*(v43 + 3) & 0xF); ++m)
            {
              *(v22 + 4 * m) = _OSSwapInt32(*(v21 + 4 * m));
              if (*(&v52 + m) <= *(v22 + 4 * m) + 1)
              {
                v14 = *(v22 + 4 * m) + 1;
              }

              else
              {
                v14 = *(&v52 + m);
              }

              *(&v52 + m) = v14;
            }

            v22 += 40;
            v21 += 8;
          }

          for (n = 0; n < (*(v43 + 3) & 0xF); ++n)
          {
            if (*(v43 + 12 + 4 * n) > 0)
            {
              v20 = (&v53)[n];
              v19 = *(v42 + 96 + 8 * n);
              v34 = *(v43 + 12 + 4 * n);
              while (1)
              {
                v8 = v34--;
                if (v8 <= 0)
                {
                  break;
                }

                memcpy(v19 + 1, v20 + 1, 0x28uLL);
                *v19 = *v20;
                *v19 = _OSSwapInt32(*v19);
                wntohl((v19 + 1), 10);
                v20 += 11;
                v19 += 25;
              }
            }
          }

          __dst = *(v42 + 176);
          __src = v40;
          v35 = v30;
          while (1)
          {
            v9 = v35--;
            if (v9 <= 0)
            {
              break;
            }

            memcpy(__dst, __src, 0x28uLL);
            wntohl(__dst, 10);
            for (ii = 0; ii < (*(v43 + 3) & 0xF); ++ii)
            {
              *&__dst[4 * ii + 96] = _OSSwapInt32(*&__src[4 * ii + 40]);
              if (*(&v52 + ii) <= *&__dst[4 * ii + 96] + 1)
              {
                v13 = *&__dst[4 * ii + 96] + 1;
              }

              else
              {
                v13 = *(&v52 + ii);
              }

              *(&v52 + ii) = v13;
            }

            __dst += 136;
            __src += 48;
          }

          if (*(v43 + 24) > 0)
          {
            v16 = *(v42 + 184);
            v15 = v39;
            v36 = *(v43 + 24);
            while (1)
            {
              v10 = v36--;
              if (v10 <= 0)
              {
                break;
              }

              *v16 = *v15;
              *v16 = _OSSwapInt32(*v16);
              for (jj = 0; jj < (*(v43 + 3) & 0xF); ++jj)
              {
                v16[jj + 1] = _OSSwapInt32(v15[jj + 1]);
                if (*(&v52 + jj) <= (v16[jj + 1] + 1))
                {
                  v12 = v16[jj + 1] + 1;
                }

                else
                {
                  v12 = *(&v52 + jj);
                }

                *(&v52 + jj) = v12;
              }

              v16 += 11;
              v15 += 3;
            }
          }

          strcpy((v42 + 16), a1);
          __collate_fill_info(v42, v43, &v52);
          xlocale_release(*a6);
          *a6 = v42;
          xlocale_release(a2[165]);
          a2[165] = v42;
          __collate_resolve_legacy_substitutions(a2);
          *(*(v42 + 88) + 52) &= ~1u;
          *(v42 + 64) = 0;
          if (a2 == __global_locale)
          {
            __collate_load_error = 0;
          }

          return 0;
        }

        else
        {
          munmap(a4, *(a5 + 96));
          free(v42);
          *__error() = 12;
          return -1;
        }
      }

      else
      {
        munmap(a4, *(a5 + 96));
        *__error() = 12;
        return -1;
      }
    }

    else
    {
      munmap(a4, *(a5 + 96));
      *__error() = 22;
      return -1;
    }
  }
}

void destruct_collate(uint64_t a1)
{
  if ((*(*(a1 + 88) + 52) & 2) != 0)
  {
    free(*(a1 + 88));
  }

  if (*(a1 + 72) && *(a1 + 80))
  {
    munmap(*(a1 + 72), *(a1 + 80));
  }

  free(a1);
}

void __collate_err(int a1, const char *a2)
{
  v4 = *__error();
  v2 = getprogname();
  strlen(v2);
  write_NOCANCEL();
  write_NOCANCEL();
  strlen(a2);
  write_NOCANCEL();
  write_NOCANCEL();
  v3 = strerror(v4);
  strlen(v3);
  write_NOCANCEL();
  write_NOCANCEL();
  exit(a1);
}

uint64_t __collate_wcsnlen(_DWORD *a1, int a2)
{
  for (i = 0; ; ++i)
  {
    v3 = 0;
    if (*a1)
    {
      v3 = i < a2;
    }

    if (!v3)
    {
      break;
    }

    ++a1;
  }

  return i;
}

uint64_t _collate_lookup(uint64_t result, const __int32 *a2, _DWORD *a3, int *a4, int a5, int **a6)
{
  v19 = result;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (a5 >= **(result + 88))
  {
    *v16 = *v18;
    *v17 = 1;
    *v14 = 0;
    return result;
  }

  v8 = *v14;
  if (*v14)
  {
    *v16 = *v8;
    v9 = v8 + 1;
    if (v9 != *v14 && *v9)
    {
      *v14 = v9;
    }

    else
    {
      *v14 = 0;
    }

    *v17 = 0;
  }

  else
  {
    *v17 = 1;
    result = chainsearch(v19, v18, &v10);
    v13 = result;
    if (!result || (v11 = *(v13 + 96 + 4 * v15), v11 < 0))
    {
      if (*v18 > 255)
      {
        if (*(*(v19 + 88) + 60) <= 0 || (result = largesearch(v19, *v18), (v12 = result) == 0))
        {
          if ((*(*(v19 + 88) + 1 + v15) & 8) != 0)
          {
            *v16 = *v18 & 0x7FFFFFFF;
          }

          else
          {
            *v16 = *(*(v19 + 88) + 104 + 4 * v15);
          }

          return result;
        }

        *v16 = *(v12 + 4 + 4 * v15);
      }

      else
      {
        *v16 = *(*(v19 + 192) + 40 * *v18 + 4 * v15);
      }
    }

    else
    {
      *v17 = v10;
      *v16 = v11;
    }

    result = lookup_substsearch(v19, *v16, v15);
    if (result)
    {
      v6 = *result;
      *v16 = *result;
      if (v6 > 0)
      {
        if (*(result + 4))
        {
          v7 = result + 4;
        }

        else
        {
          v7 = 0;
        }

        *v14 = v7;
      }
    }
  }

  return result;
}

uint64_t chainsearch(uint64_t a1, const __int32 *a2, _DWORD *a3)
{
  v10 = 0;
  v9 = *(*(a1 + 88) + 56) - 1;
  v4 = *(a1 + 176);
  if (v9 < 0)
  {
    return 0;
  }

  while (1)
  {
    if (v10 > v9)
    {
      return 0;
    }

    v8 = (v10 + v9) / 2;
    v5 = (v4 + 136 * v8);
    v7 = *a2 - *v5;
    if (!v7)
    {
      v6 = __collate_wcsnlen(v5, 24);
      v7 = wcsncmp(a2, v5, v6);
      if (!v7)
      {
        break;
      }
    }

    if (v7 <= 0)
    {
      v9 = v8 - 1;
    }

    else
    {
      v10 = v8 + 1;
    }
  }

  *a3 = v6;
  return v4 + 136 * v8;
}

uint64_t largesearch(uint64_t a1, int a2)
{
  v7 = 0;
  v6 = *(*(a1 + 88) + 60) - 1;
  v3 = *(a1 + 184);
  if (v6 < 0)
  {
    return 0;
  }

  while (v7 <= v6)
  {
    v5 = (v7 + v6) / 2;
    v4 = a2 - *(v3 + 44 * v5);
    if (!v4)
    {
      return v3 + 44 * v5;
    }

    if (v4 <= 0)
    {
      v6 = v5 - 1;
    }

    else
    {
      v7 = v5 + 1;
    }
  }

  return 0;
}

_DWORD *lookup_substsearch(uint64_t a1, int a2, int a3)
{
  if (!*(*(a1 + 88) + 64 + 4 * a3))
  {
    return 0;
  }

  if (a3 >= **(a1 + 88))
  {
    return 0;
  }

  if ((a2 & 0x40000000) == 0)
  {
    return 0;
  }

  v4 = (*(a1 + 96 + 8 * a3) + 100 * (a2 & 0xBFFFFFFF));
  if (*v4 != a2)
  {
    __assert_rtn("lookup_substsearch", "collate.c", 699, "p->val == key");
  }

  return v4 + 1;
}

const __int32 *__collate_lookup_l(const __int32 *result, int *a2, int *a3, int *a4, void *a5)
{
  v16 = result;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (!*result)
  {
    *v15 = 0;
    *v14 = 0;
    *v13 = 0;
    return result;
  }

  if (v12)
  {
    if (v12 == -1)
    {
      v12 = __global_locale;
    }
  }

  else
  {
    v12 = &__c_locale;
  }

  v9 = v12[165];
  if (*(v9 + 64))
  {
    *v15 = 1;
    *v14 = *v16;
    *v13 = 0;
    return result;
  }

  *v15 = 1;
  result = chainsearch(v9, v16, &v7);
  v11 = result;
  if (!result || v11[24] < 0)
  {
    if (*v16 > 255)
    {
      if (*(*(v12[165] + 88) + 60) <= 0 || (result = largesearch(v9, *v16), (v10 = result) == 0))
      {
        v7 = *(*(v12[165] + 88) + 104);
        if (v7 < 0)
        {
          v6 = *v16 - v7;
        }

        else
        {
          v6 = v7;
        }

        *v14 = v6;
        v7 = *(*(v12[165] + 88) + 108);
        if (v7 < 0)
        {
          v5 = *v16 - v7;
        }

        else
        {
          v5 = v7;
        }

        *v13 = v5;
        return result;
      }

      *v14 = v10[1];
      *v13 = v10[2];
    }

    else
    {
      *v14 = *(*(v12[165] + 192) + 40 * *v16);
      *v13 = *(*(v12[165] + 192) + 40 * *v16 + 4);
    }
  }

  else
  {
    *v15 = v7;
    *v14 = v11[24];
    *v13 = v11[25];
  }

  if ((*v14 & 0x80000000) == 0)
  {
    result = lookup_substsearch(v9, *v14, 0);
    v8 = result;
    if (result)
    {
      *v14 = *v8;
    }
  }

  if ((*v13 & 0x80000000) == 0)
  {
    result = lookup_substsearch(v9, *v13, 1);
    v8 = result;
    if (result)
    {
      *v13 = v8[1];
    }
  }

  return result;
}

char *__collate_lookup(char *result, int *a2, int *a3, int *a4)
{
  v11 = result;
  v13 = __locale_key;
  v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v13);
  if (v12)
  {
    v4 = v12;
  }

  else
  {
    v4 = __global_locale;
  }

  if (*result)
  {
    if (!*(*(v4 + 165) + 64) && (v7 = __collate_mbstowcs(result, v4)) != 0)
    {
      __collate_lookup_l(v7, a2, a3, a4, v4);
      v6 = *__error();
      free(v7);
      result = __error();
      *result = v6;
    }

    else
    {
      *a2 = 1;
      *a3 = *v11;
      *a4 = 0;
      v5 = *__error();
      free(0);
      result = __error();
      *result = v5;
    }
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  return result;
}

__int32 *__collate_mbstowcs(char *a1, _xlocale *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v4 = a1;
  memcpy(&__b, &__collate_mbstowcs_initial, sizeof(__b));
  v5 = mbsrtowcs_l(0, &v4, 0, &__b, v6);
  if (v5 == -1)
  {
    return 0;
  }

  v3 = malloc_type_malloc();
  if (!v3)
  {
    __collate_err(71, "__collate_mbstowcs");
  }

  memcpy(&__b, &__collate_mbstowcs_initial, sizeof(__b));
  mbsrtowcs_l(v3, &v7, v5, &__b, v6);
  v3[v5] = 0;
  return v3;
}

uint64_t __collate_lookup_which(const __int32 *a1, _DWORD *a2, int *a3, int a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v8 = *(a5 + 1320);
  *a2 = 1;
  result = chainsearch(v8, v16, &v6);
  v11 = result;
  if (result)
  {
    v7 = *(v11 + 96 + 4 * v13);
    if ((v7 & 0x80000000) == 0)
    {
      *v15 = v6;
      *v14 = v7;
      goto LABEL_12;
    }
  }

  if (*v16 <= 255)
  {
    *v14 = *(*(*(v12 + 1320) + 192) + 40 * *v16 + 4 * v13);
    goto LABEL_12;
  }

  if (*(*(*(v12 + 1320) + 88) + 60) > 0)
  {
    result = largesearch(v8, *v16);
    v10 = result;
    if (result)
    {
      *v14 = *(v10 + 4 + 4 * v13);
LABEL_12:
      result = lookup_substsearch(v8, *v14, 0);
      v9 = result;
      if (result)
      {
        *v14 = *v9;
      }

      return result;
    }
  }

  if ((*(*(*(v12 + 1320) + 88) + 1 + v13) & 8) != 0)
  {
    *v14 = *v16 & 0x7FFFFFFF;
  }

  else
  {
    *v14 = *(*(*(v12 + 1320) + 88) + 104 + 4 * v13);
  }

  return result;
}

uint64_t __collate_collating_symbol(__int32 *a1, size_t a2, char *a3, size_t a4, mbstate_t *a5, _xlocale *a6)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  i = 0;
  v11 = 0;
  if (*(*(a6 + 165) + 64))
  {
    if (v20)
    {
      if (v18 == 1 && isascii(*v19))
      {
        *v21 = *v19;
        return 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v13 = *(v16 + 165);
    v14 = v23;
    for (i = 0; v18; ++i)
    {
      v11 = mbrtowc_l(&v15, v19, v18, v17, v16);
      if (v11 >= 0xFFFFFFFFFFFFFFFELL)
      {
        return -1;
      }

      if (!v11)
      {
        break;
      }

      if (i >= 0x18)
      {
        return -1;
      }

      v6 = v14++;
      *v6 = v15;
      v19 += v11;
      v18 -= v11;
    }

    if (i && i <= v20)
    {
      if (i == 1)
      {
        if (v23[0] > 255)
        {
          if (*(*(*(v16 + 165) + 88) + 60) <= 0)
          {
            return 0;
          }

          v10 = largesearch(v13, v23[0]);
          if (!v10 || (*(v10 + 4) & 0x80000000) != 0)
          {
            return 0;
          }

          else
          {
            if (v20)
            {
              *v21 = v23[0];
            }

            return 1;
          }
        }

        else if ((*(*(*(v16 + 165) + 192) + 40 * v23[0]) & 0x80000000) != 0)
        {
          return 0;
        }

        else
        {
          if (v20)
          {
            *v21 = v23[0];
          }

          return 1;
        }
      }

      else
      {
        *v14 = 0;
        if (*(*(*(v16 + 165) + 88) + 56) > 0 && (v9 = 0, v8 = 0, (v9 = chainsearch(v13, v23, &v8)) != 0))
        {
          if (v8 < v20)
          {
            v20 = v8;
          }

          wcsncpy(v21, v23, v20);
          return v8;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return -1;
    }
  }
}

uint64_t __collate_equiv_class(char *a1, size_t a2, mbstate_t *a3, _xlocale *a4)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  i = 0;
  v12 = 0;
  v11 = 0;
  if (*(*(a4 + 165) + 64))
  {
    return 0;
  }

  else
  {
    v14 = *(v17 + 165);
    v15 = v22;
    for (i = 0; v19; ++i)
    {
      v12 = mbrtowc_l(&v16, v20, v19, v18, v17);
      if (v12 >= 0xFFFFFFFFFFFFFFFELL)
      {
        return -1;
      }

      if (!v12)
      {
        break;
      }

      if (i >= 0x18)
      {
        return -1;
      }

      v4 = v15++;
      *v4 = v16;
      v20 += v12;
      v19 -= v12;
    }

    if (i)
    {
      if (i == 1)
      {
        v11 = -1;
        if (v22[0] > 255)
        {
          if (*(*(*(v17 + 165) + 88) + 60) > 0)
          {
            v10 = largesearch(v14, v22[0]);
            if (v10)
            {
              v11 = *(v10 + 4);
            }
          }
        }

        else
        {
          v11 = *(*(*(v17 + 165) + 192) + 40 * v22[0]);
        }

        if (v11)
        {
          if (v11 <= 0)
          {
            return 0;
          }

          else
          {
            return v11;
          }
        }

        else
        {
          return 1;
        }
      }

      else
      {
        *v15 = 0;
        if (*(*(*(v17 + 165) + 88) + 56) > 0 && (v9 = 0, v8 = 0, (v9 = chainsearch(v14, v22, &v8)) != 0))
        {
          v11 = *(v9 + 96);
          if (v11)
          {
            if (v11 < 0)
            {
              return -v11;
            }

            else
            {
              return v11;
            }
          }

          else
          {
            return 1;
          }
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return -1;
    }
  }
}

uint64_t __collate_equiv_match(int a1, _DWORD *a2, unint64_t a3, __int32 a4, char *a5, size_t a6, void *a7, void *a8, _xlocale *a9)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  __src = a7;
  v29 = a8;
  v28 = a9;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  memset(__b, 0, sizeof(__b));
  v20 = v32;
  v18 = v31;
  if (*(*(a9 + 165) + 64))
  {
    return -1;
  }

  v19 = *(v28 + 165);
  if (v36 == 1)
  {
    v36 = 0;
  }

  if (__src)
  {
    memcpy(__b, __src, sizeof(__b));
  }

  v21 = &v39;
  v24 = 0;
  v26 = 0;
  if (v33)
  {
    v21 = &v40;
    v39 = v33;
    v26 = 1;
  }

  while (1)
  {
    v14 = 0;
    if (v18)
    {
      v14 = v26 < *(*(*(v28 + 165) + 88) + 11);
    }

    if (!v14)
    {
      break;
    }

    v25 = mbrtowc_l(&v27, v20, v18, __src, v28);
    if (v25 == -1 || v25 == -2 || !v25)
    {
      break;
    }

    v9 = v21++;
    *v9 = v27;
    v20 += v25;
    v24 += v25;
    v18 -= v25;
    ++v26;
  }

  *v21 = 0;
  if (v26 <= 1)
  {
    goto LABEL_22;
  }

  v17 = chainsearch(v19, &v39, &v23);
  if (!v17)
  {
    goto LABEL_22;
  }

  v16 = *(v17 + 96);
  if (v16 < 0)
  {
    v16 = -v16;
  }

  if (v16 != v36)
  {
LABEL_22:
    v23 = 1;
    if (v39 > 255)
    {
      if (*(*(*(v28 + 165) + 88) + 60) <= 0)
      {
        goto LABEL_28;
      }

      v15 = largesearch(v19, v39);
      if (!v15 || v36 != *(v15 + 4))
      {
        goto LABEL_28;
      }
    }

    else if (v36 != *(*(*(v28 + 165) + 192) + 40 * v39))
    {
LABEL_28:
      if (__src)
      {
        memcpy(__src, __b, 0x80uLL);
      }

      return 0;
    }
  }

  if (v23 < v26)
  {
    v26 = v23;
    if (__src)
    {
      memcpy(__src, __b, 0x80uLL);
    }

    if (v33)
    {
      --v23;
    }

    v24 = 0;
    while (1)
    {
      v10 = v23--;
      if (v10 <= 0)
      {
        break;
      }

      v25 = mbrtowc_l(&v27, v32, v31, __src, v28);
      v32 += v25;
      v24 += v25;
      v31 -= v25;
    }
  }

  if (v35)
  {
    if (v34 < v26)
    {
      if (__src)
      {
        memcpy(__src, __b, 0x80uLL);
      }

      return -1;
    }

    v22 = &v39;
    while (v26)
    {
      v11 = v22++;
      LODWORD(v11) = *v11;
      v12 = v35++;
      *v12 = v11;
      --v26;
    }
  }

  if (v29)
  {
    *v29 = v24;
  }

  return v26;
}

uint64_t __collate_equiv_wchar(_xlocale *a1, wint_t a2, int a3, int a4)
{
  v16 = a2;
  v15 = a3;
  if (*(*(a1 + 165) + 64))
  {
    if (a2 <= 255 && a3 <= 255)
    {
      if (a4)
      {
        if (!iswlower_l(a2, a1))
        {
          v16 = towlower_l(v16, a1);
        }

        if (!iswlower_l(v15, a1))
        {
          v15 = towlower_l(v15, a1);
        }
      }

      return v16 == v15;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v13 = *(a1 + 165);
    v12 = __collate_pri_for (a1, a2);
    if (v12)
    {
      v11 = __collate_pri_for (a1, v15);
      if (v11)
      {
        if (*v12 == *v11)
        {
          v10 = **(v13 + 88);
          if (a4 || v10 == 1)
          {
            return 1;
          }

          else
          {
            for (i = 1; i < v10 - 1; ++i)
            {
              if ((v12[i] & 0x40000000) != 0)
              {
                v8 = lookup_substsearch(v13, v12[i], i);
                if (!v8)
                {
                  __assert_rtn("__collate_equiv_wchar", "collate.c", 1456, "sleft != NULL");
                }

                v6 = *v8;
              }

              else
              {
                v6 = v12[i];
              }

              if ((v11[i] & 0x40000000) != 0)
              {
                v7 = lookup_substsearch(v13, v11[i], i);
                if (!v7)
                {
                  __assert_rtn("__collate_equiv_wchar", "collate.c", 1465, "sright != NULL");
                }

                v5 = *v7;
              }

              else
              {
                v5 = v11[i];
              }

              if (v6 != v5)
              {
                return 0;
              }
            }

            return 1;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __collate_pri_for (uint64_t a1, int a2)
{
  if (*(*(a1 + 1320) + 64))
  {
    __assert_rtn("__collate_pri_for", "collate.c", 1385, "!XLOCALE_COLLATE(loc)->__collate_load_error");
  }

  if (a2 <= 255)
  {
    return *(*(a1 + 1320) + 192) + 40 * a2;
  }

  v2 = largesearch(*(a1 + 1320), a2);
  if (v2)
  {
    return v2 + 4;
  }

  else
  {
    return 0;
  }
}

uint64_t _collate_wxfrm(uint64_t a1, const __int32 *a2, _DWORD *a3, uint64_t a4)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  i = 0;
  v18 = 0;
  v17 = 0;
  *&v16[8] = 0;
  *v16 = **(a1 + 88);
  if (!a2)
  {
    __assert_rtn("_collate_wxfrm", "collate.c", 1497, "src");
  }

  for (i = 0; ; ++i)
  {
    if (i >= *v16)
    {
      free(v21);
      return *&v16[4];
    }

    v18 = 0;
    if (i)
    {
      if (v25)
      {
        v4 = v26++;
        *v4 = 1;
        --v25;
      }

      ++v17;
    }

    v20 = *(*(v28 + 88) + 1 + i);
    v22 = v27;
    if ((v20 & 2) != 0)
    {
      break;
    }

LABEL_17:
    if ((v20 & 4) != 0)
    {
      while (1)
      {
        v11 = 1;
        if (!*v22)
        {
          v11 = v18 != 0;
        }

        if (!v11)
        {
          break;
        }

        _collate_lookup(v28, v22, &v23, &v24, i, &v18);
        v22 += v23;
        if (v24 <= 0)
        {
          if (v24 < 0)
          {
            goto LABEL_23;
          }

          v18 = 0;
          v24 = 0x7FFFFFFF;
        }

        if (v25)
        {
          v7 = v26++;
          *v7 = v24;
          --v25;
        }

        *&v16[4] = ++v17;
      }
    }

    else
    {
      while (1)
      {
        v10 = 1;
        if (!*v22)
        {
          v10 = v18 != 0;
        }

        if (!v10)
        {
          break;
        }

        _collate_lookup(v28, v22, &v23, &v24, i, &v18);
        v22 += v23;
        if (v24 > 0)
        {
          if (v25)
          {
            v8 = v26++;
            *v8 = v24;
            --v25;
          }

          *&v16[4] = ++v17;
        }

        else
        {
          if (v24 < 0)
          {
LABEL_23:
            *__error() = 22;
            goto LABEL_39;
          }

          v18 = 0;
        }
      }
    }
  }

  free(v21);
  v21 = wcsdup(v22);
  if (v21)
  {
    v15 = v21;
    for (j = &v21[wcslen(v21) - 1]; v15 < j; --j)
    {
      v13 = *v15;
      v5 = v15++;
      *v5 = *j;
      v6 = j;
      *v6 = v13;
    }

    v22 = v21;
    goto LABEL_17;
  }

  *__error() = 12;
LABEL_39:
  if (v21)
  {
    v12 = *__error();
    free(v21);
    *__error() = v12;
  }

  return -1;
}

uint64_t _collate_sxfrm(uint64_t a1, const __int32 *a2, _BYTE *a3, uint64_t a4)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  i = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v18 = **(a1 + 88);
  if (!a2)
  {
    __assert_rtn("_collate_sxfrm", "collate.c", 1661, "src");
  }

  for (i = 0; ; ++i)
  {
    if (i >= v18)
    {
      free(v26);
      return v21;
    }

    v23 = 0;
    if (i)
    {
      if (v30)
      {
        v4 = v31++;
        *v4 = 46;
        --v30;
      }

      ++v22;
    }

    v25 = *(*(v33 + 88) + 1 + i);
    v27 = v32;
    if ((v25 & 2) != 0)
    {
      break;
    }

LABEL_17:
    if ((v25 & 4) != 0)
    {
      while (1)
      {
        v13 = 1;
        if (!*v27)
        {
          v13 = v23 != 0;
        }

        if (!v13)
        {
          break;
        }

        _collate_lookup(v33, v27, &v28, &v29, i, &v23);
        v27 += v28;
        if (v29 <= 0)
        {
          if (v29 < 0)
          {
            goto LABEL_23;
          }

          v23 = 0;
          v29 = 0x7FFFFFFF;
        }

        v20 = xfrm(v33, v19, v29, i);
        v22 += v20;
        if (v30)
        {
          while (v20)
          {
            --v20;
            if (v30)
            {
              v7 = v19[v20];
              v8 = v31++;
              *v8 = v7;
              --v30;
            }
          }
        }

        v21 = v22;
      }
    }

    else
    {
      while (1)
      {
        v12 = 1;
        if (!*v27)
        {
          v12 = v23 != 0;
        }

        if (!v12)
        {
          break;
        }

        _collate_lookup(v33, v27, &v28, &v29, i, &v23);
        v27 += v28;
        if (v29 > 0)
        {
          v20 = xfrm(v33, v19, v29, i);
          v22 += v20;
          if (v30)
          {
            while (v20)
            {
              --v20;
              if (v30)
              {
                v9 = v19[v20];
                v10 = v31++;
                *v10 = v9;
                --v30;
              }
            }
          }

          v21 = v22;
        }

        else
        {
          if (v29 < 0)
          {
LABEL_23:
            *__error() = 22;
            goto LABEL_45;
          }

          v23 = 0;
        }
      }
    }
  }

  free(v26);
  v26 = wcsdup(v27);
  if (v26)
  {
    v17 = v26;
    for (j = &v26[wcslen(v26) - 1]; v17 < j; --j)
    {
      v15 = *v17;
      v5 = v17++;
      *v5 = *j;
      v6 = j;
      *v6 = v15;
    }

    v27 = v26;
    goto LABEL_17;
  }

  *__error() = 12;
LABEL_45:
  if (v26)
  {
    v14 = *__error();
    free(v26);
    *__error() = v14;
  }

  return -1;
}

uint64_t xfrm(uint64_t a1, _BYTE *a2, int a3, int a4)
{
  v6 = *(*(a1 + 88) + 12 + 4 * a4);
  v5 = 0;
  while (v6)
  {
    *a2 = (a3 & 0x3F) + 48;
    a3 >>= 6;
    v6 >>= 6;
    ++a2;
    ++v5;
  }

  return v5;
}

uint64_t __collate_equiv_value(uint64_t a1, __int32 *a2, size_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  if (a3 && v9 < 0x18)
  {
    if (*(*(v11 + 1320) + 64))
    {
      if (v9 == 1 && *v10 <= 255)
      {
        return *v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v8 = *(v11 + 1320);
      if (v9 == 1)
      {
        v7 = __collate_pri_for (v11, *v10);
        if (v7)
        {
          return *v10;
        }

        else
        {
          return 0;
        }
      }

      else if (*(*(*(v11 + 1320) + 88) + 56) > 0 && (v6 = 0, v5 = 0, wcsncpy(v13, v10, v9), v13[v9] = 0, (v6 = chainsearch(v8, v13, &v5)) != 0))
      {
        if (*(v6 + 96))
        {
          return *v10;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t wntohl(uint64_t result, int a2)
{
  for (i = result; ; ++i)
  {
    v2 = 0;
    if (*i)
    {
      v2 = a2 > 0;
    }

    if (!v2)
    {
      break;
    }

    result = _OSSwapInt32(*i);
    *i = result;
    --a2;
  }

  return result;
}

void *__collate_fill_info(uint64_t a1, uint64_t a2, const void *a3)
{
  __b = *(a1 + 88);
  memset(__b, 0, 0x90uLL);
  *__b = *(a2 + 3) & 0xF;
  __b[11] = *(a2 + 3) >> 4;
  *(__b + 13) = *(a2 + 2) | 2;
  *(__b + 14) = *(a2 + 20);
  *(__b + 15) = *(a2 + 24);
  *(__b + 1) = *a2;
  result = memcpy(__b + 12, a3, 0x28uLL);
  *(__b + 8) = *(a2 + 12);
  *(__b + 13) = *(a2 + 4);
  return result;
}

uint64_t __collate_resolve_legacy_substitutions(uint64_t result)
{
  v11 = result;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v10 = *(result + 1320);
  v4 = 0;
LABEL_2:
  if (v4 < **(v10 + 88))
  {
    v7 = *(v10 + 96 + 8 * v4);
    for (i = 0; ; ++i)
    {
      if (i >= *(*(v10 + 88) + 64 + 4 * v4))
      {
        ++v4;
        goto LABEL_2;
      }

      v6 = *(v7 + 100 * i);
      *(v7 + 100 * i) = i | 0x40000000;
      v5 = i | 0x40000000;
      result = chainsearch(v10, &v6, &v3);
      v9 = result;
      if (result)
      {
        *(v9 + 96 + 4 * v4) = v5;
      }

      else if (v6 > 255)
      {
        if (*(*(v10 + 88) + 60) <= 0)
        {
          continue;
        }

        result = largesearch(v10, v6);
        v8 = result;
        if (!result)
        {
          continue;
        }

        *(v8 + 4 + 4 * v4) = v5;
      }

      else
      {
        *(*(v10 + 192) + 40 * v6 + 4 * v4) = v5;
      }

      for (j = 0; j < 0x60; ++j)
      {
        v6 = *(v7 + 100 * i + 4 + 4 * j);
        if (!v6)
        {
          break;
        }

        result = __collate_lookup_which(&v6, &v3, &v5, 0, v11);
        *(v7 + 100 * i + 4 + 4 * j) = v5;
      }
    }
  }

  return result;
}

uint64_t __collate_range_cmp(int a1, int a2, _xlocale *a3)
{
  __collate_range_cmp_s1 = a1;
  __collate_range_cmp_s2 = a2;
  return wcscoll_l(&__collate_range_cmp_s1, &__collate_range_cmp_s2, a3);
}

uint64_t _EUC_CN_init(uint64_t a1)
{
  v2 = *(a1 + 120);
  *(v2 + 3184) = 0;
  result = 0;
  *(v2 + 3192) = 0;
  *(a1 + 72) = _EUC_CN_mbrtowc;
  *(a1 + 96) = _EUC_CN_wcrtomb;
  *(a1 + 88) = _EUC_CN_mbsnrtowcs;
  *(a1 + 104) = _EUC_CN_wcsnrtombs;
  *(a1 + 80) = _EUC_mbsinit;
  *(a1 + 64) = 2;
  *(a1 + 68) = 128;
  return result;
}

BOOL _EUC_mbsinit(uint64_t a1)
{
  v2 = 1;
  if (a1)
  {
    return *(a1 + 4) == 0;
  }

  return v2;
}

uint64_t _EUC_KR_init(uint64_t a1)
{
  v2 = *(a1 + 120);
  *(v2 + 3184) = 0;
  result = 0;
  *(v2 + 3192) = 0;
  *(a1 + 72) = _EUC_KR_mbrtowc;
  *(a1 + 96) = _EUC_KR_wcrtomb;
  *(a1 + 88) = _EUC_KR_mbsnrtowcs;
  *(a1 + 104) = _EUC_KR_wcsnrtombs;
  *(a1 + 80) = _EUC_mbsinit;
  *(a1 + 64) = 2;
  *(a1 + 68) = 128;
  return result;
}

uint64_t _EUC_JP_init(uint64_t a1)
{
  v2 = *(a1 + 120);
  *(v2 + 3184) = 0;
  result = 0;
  *(v2 + 3192) = 0;
  *(a1 + 72) = _EUC_JP_mbrtowc;
  *(a1 + 96) = _EUC_JP_wcrtomb;
  *(a1 + 88) = _EUC_JP_mbsnrtowcs;
  *(a1 + 104) = _EUC_JP_wcsnrtombs;
  *(a1 + 80) = _EUC_mbsinit;
  *(a1 + 64) = 3;
  *(a1 + 68) = 128;
  return result;
}

uint64_t _EUC_init(uint64_t a1)
{
  v2 = _EUC_JP_init(a1);
  if (!v2)
  {
    *(a1 + 68) = 256;
  }

  return v2;
}

uint64_t _EUC_TW_init(uint64_t a1)
{
  v2 = *(a1 + 120);
  *(v2 + 3184) = 0;
  result = 0;
  *(v2 + 3192) = 0;
  *(a1 + 72) = _EUC_TW_mbrtowc;
  *(a1 + 96) = _EUC_TW_wcrtomb;
  *(a1 + 88) = _EUC_TW_mbsnrtowcs;
  *(a1 + 104) = _EUC_TW_wcsnrtombs;
  *(a1 + 80) = _EUC_mbsinit;
  *(a1 + 64) = 4;
  *(a1 + 68) = 128;
  return result;
}

uint64_t _EUC_mbrtowc_impl(int *a1, unsigned __int8 *a2, unint64_t a3, int *a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, uint64_t a9)
{
  v17 = a2;
  v13 = 0;
  if (a4[1] < 0 || a4[1] > *(*(a9 + 1328) + 64))
  {
    *__error() = 22;
    return -1;
  }

  if (!a2)
  {
    v17 = &unk_C42B5;
    a3 = 1;
    a1 = 0;
  }

  if (!a3)
  {
    return -2;
  }

  if (a4[1])
  {
    v14 = a4[1];
    v13 = *a4;
  }

  else
  {
    v12 = *v17;
    if ((*v17 & 0x80) == 0)
    {
      if (a1)
      {
        *a1 = v12;
      }

      return v12 != 0;
    }

    if (v12 < 0xA1u)
    {
      if (v12 == a5)
      {
        v14 = a6;
      }

      else
      {
        if (v12 != a7)
        {
          *__error() = 92;
          return -1;
        }

        v14 = a8;
      }
    }

    else
    {
      v14 = 2;
    }

    a4[1] = v14;
    *a4 = 0;
  }

  for (i = 0; ; ++i)
  {
    v11 = v14 >= a3 ? a3 : v14;
    if (i >= v11)
    {
      break;
    }

    v13 = (v13 << 8) | *v17++;
  }

  if (i >= v14)
  {
    if (a1)
    {
      *a1 = v13;
    }

    a4[1] = 0;
    if (v13)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    a4[1] = v14 - i;
    *a4 = v13;
    *__error() = 92;
    return -2;
  }
}

uint64_t _EUC_wcrtomb_impl(_BYTE *a1, int a2, uint64_t a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7)
{
  v12 = a2;
  if (*(a3 + 4))
  {
    *__error() = 22;
    return -1;
  }

  if (!a1)
  {
    return 1;
  }

  if ((a2 & 0xFFFFFF80) == 0)
  {
    *a1 = a2;
    return 1;
  }

  if (a2 <= 0xFFFFFF)
  {
    if (a2 < 0x10000)
    {
      if (a2 > 0xFF)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 3;
    }
  }

  else
  {
    v10 = 4;
  }

  v15 = __locale_key;
  v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v15);
  if (v14)
  {
    v8 = v14;
  }

  else
  {
    v8 = __global_locale;
  }

  if (v10 > *(v8[166] + 64))
  {
LABEL_26:
    *__error() = 92;
    return -1;
  }

  if (a2 < 41216 || a2 >= 0x10000)
  {
    v9 = (a2 >> (8 * (v10 - 1)));
    if (v9 == a4)
    {
      if (v10 != a5)
      {
        goto LABEL_26;
      }
    }

    else if (v9 != a6 || v10 != a7)
    {
      goto LABEL_26;
    }
  }

  for (i = v10 - 1; (i & 0x80000000) == 0; --i)
  {
    a1[i] = v12;
    v12 >>= 8;
  }

  return v10;
}

unsigned __int8 *__fix_locale_grouping_str(unsigned __int8 *a1)
{
  if (!a1 || !*a1)
  {
    return &nogrouping;
  }

  v6 = a1;
  v5 = a1;
  while (1)
  {
    if (!*v6)
    {
      *v5 = 0;
      return a1;
    }

    if (*v6 != 59)
    {
      break;
    }

LABEL_20:
    ++v6;
  }

  if (*v6 == 45 && v6[1] == 49)
  {
    v1 = v5++;
    *v1 = 127;
    ++v6;
    goto LABEL_20;
  }

  if (!isdigit(*v6))
  {
    return &nogrouping;
  }

  v4 = *v6 - 48;
  if (isdigit(v6[1]))
  {
    v4 = 10 * v4 + *++v6 - 48;
  }

  *v5 = v4;
  if (*v5)
  {
    ++v5;
    goto LABEL_20;
  }

  if (v5 == a1)
  {
    return &nogrouping;
  }

  else
  {
    return a1;
  }
}

_BYTE *__fix_nogrouping(_BYTE *a1)
{
  if (a1 && *a1)
  {
    return a1;
  }

  else
  {
    return &__nogrouping;
  }
}

uint64_t _GB18030_init(uint64_t a1)
{
  *(a1 + 72) = _GB18030_mbrtowc;
  *(a1 + 96) = _GB18030_wcrtomb;
  *(a1 + 80) = _GB18030_mbsinit;
  *(a1 + 64) = 4;
  *(a1 + 68) = 128;
  return 0;
}

uint64_t _GB18030_mbrtowc(int *a1, const char *a2, unint64_t a3, int *a4)
{
  v23 = a2;
  if (*a4 < 0 || *a4 > 4)
  {
    *__error() = 22;
    return -1;
  }

  if (!a2)
  {
    v23 = &unk_C42B5;
    a3 = 1;
    a1 = 0;
  }

  if (a3 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = a3;
  }

  if (v11 >= 4 - *a4)
  {
    v9 = 4 - *a4;
  }

  else
  {
    if (a3 >= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = a3;
    }

    v9 = v10;
  }

  strncpy(a4 + *a4 + 4, v23, v9);
  v12 = *a4;
  *a4 += v9;
  v22 = *a4;
  if (!*a4)
  {
    return -2;
  }

  v4 = (a4 + 1);
  if (*(a4 + 4) > 0x7Fu)
  {
    if (*v4 >= 0x81u && *v4 != 255)
    {
      v17 = *v4;
      if (v22 < 2)
      {
        return -2;
      }

      v5 = a4 + 5;
      v14 = *(a4 + 5);
      if (v14 >= 0x40 && *v5 <= 0x7Eu || *v5 >= 0x80u && *v5 != 255)
      {
        v16 = v14 | (v17 << 8);
        v13 = 2;
        goto LABEL_43;
      }

      if (*v5 >= 0x30u && *v5 <= 0x39u)
      {
        v18 = v14 | ((v17 & 0x7F) << 8);
        if (v22 < 3)
        {
          return -2;
        }

        v6 = a4 + 6;
        v24 = a4 + 7;
        if (*(a4 + 6) >= 0x81u && *v6 != 255)
        {
          v19 = *v6 | (v18 << 8);
          if (v22 < 4)
          {
            return -2;
          }

          v15 = *v24;
          if (v15 >= 0x30 && *v24 <= 0x39u)
          {
            v16 = v15 | (v19 << 8);
            v13 = 4;
            goto LABEL_43;
          }
        }
      }
    }

    *__error() = 92;
    return -1;
  }

  v13 = 1;
  v16 = *v4;
LABEL_43:
  if (a1)
  {
    *a1 = v16;
  }

  *a4 = 0;
  if (v16)
  {
    return v13 - v12;
  }

  else
  {
    return 0;
  }
}

uint64_t _GB18030_wcrtomb(_BYTE *a1, int a2, _DWORD *a3)
{
  if (!*a3)
  {
    if (!a1)
    {
      return 1;
    }

    if ((a2 & 0x80000000) == 0)
    {
      if ((a2 & 0x7F000000) != 0)
      {
        v5 = a2 | 0x80000000;
        if ((a2 | 0x80000000) >> 24 < 0x81)
        {
          goto LABEL_33;
        }

        if (HIBYTE(v5) == 255)
        {
          goto LABEL_33;
        }

        *a1 = (a2 | 0x80000000) >> 24;
        if (BYTE2(v5) < 0x30u)
        {
          goto LABEL_33;
        }

        if (BYTE2(v5) > 0x39u)
        {
          goto LABEL_33;
        }

        a1[1] = BYTE2(v5);
        if (BYTE1(v5) < 0x81u)
        {
          goto LABEL_33;
        }

        if (BYTE1(v5) == 255)
        {
          goto LABEL_33;
        }

        a1[2] = BYTE1(v5);
        if (a2 < 0x30u || a2 > 0x39u)
        {
          goto LABEL_33;
        }

        a1[3] = a2;
        return 4;
      }

      if ((a2 & 0xFF0000) == 0)
      {
        if ((a2 & 0xFF00) != 0)
        {
          if (BYTE1(a2) < 0x81u)
          {
            goto LABEL_33;
          }

          if (BYTE1(a2) == 255)
          {
            goto LABEL_33;
          }

          *a1 = BYTE1(a2);
          if (a2 < 0x40u || a2 == 127 || a2 == 255)
          {
            goto LABEL_33;
          }

          a1[1] = a2;
          return 2;
        }

        if (a2 <= 127)
        {
          *a1 = a2;
          return 1;
        }
      }
    }

LABEL_33:
    *__error() = 92;
    return -1;
  }

  *__error() = 22;
  return -1;
}

BOOL _GB18030_mbsinit(_DWORD *a1)
{
  v2 = 1;
  if (a1)
  {
    return *a1 == 0;
  }

  return v2;
}

uint64_t _GB2312_init(uint64_t a1)
{
  *(a1 + 72) = _GB2312_mbrtowc;
  *(a1 + 96) = _GB2312_wcrtomb;
  *(a1 + 80) = _GB2312_mbsinit;
  *(a1 + 64) = 2;
  *(a1 + 68) = 128;
  return 0;
}

uint64_t _GB2312_mbrtowc(int *a1, const char *a2, unint64_t a3, int *a4)
{
  v17 = a2;
  if (*a4 < 0 || *a4 > 2)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    if (!a2)
    {
      v17 = &unk_C42B5;
      a3 = 1;
      a1 = 0;
    }

    if (a3 >= 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = a3;
    }

    if (v10 >= 2 - *a4)
    {
      v8 = 2 - *a4;
    }

    else
    {
      if (a3 >= 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = a3;
      }

      v8 = v9;
    }

    strncpy(a4 + *a4 + 4, v17, v8);
    v11 = *a4;
    *a4 += v8;
    v18 = a4 + 1;
    v12 = _GB2312_check(a4 + 4, *a4);
    if (v12 < 0)
    {
      return v12;
    }

    else
    {
      v14 = 0;
      v13 = v12;
      while (1)
      {
        v4 = v13--;
        if (v4 <= 0)
        {
          break;
        }

        v5 = v18;
        v18 = (v18 + 1);
        v14 = *v5 | (v14 << 8);
      }

      if (a1)
      {
        *a1 = v14;
      }

      *a4 = 0;
      if (v14)
      {
        return v12 - v11;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t _GB2312_wcrtomb(_BYTE *a1, __int16 a2, _DWORD *a3)
{
  if (*a3)
  {
    *__error() = 22;
    return -1;
  }

  else if (a1)
  {
    if (a2 < 0)
    {
      *a1 = HIBYTE(a2);
      a1[1] = a2;
      return 2;
    }

    else
    {
      *a1 = a2;
      return 1;
    }
  }

  else
  {
    return 1;
  }
}

BOOL _GB2312_mbsinit(_DWORD *a1)
{
  v2 = 1;
  if (a1)
  {
    return *a1 == 0;
  }

  return v2;
}

uint64_t _GB2312_check(unsigned __int8 *a1, unint64_t a2)
{
  if (a2)
  {
    if (*a1 < 0xA1u || *a1 == 255)
    {
      if ((*a1 & 0x80) != 0)
      {
        return -1;
      }

      else
      {
        return 1;
      }
    }

    else if (a2 >= 2)
    {
      if (a1[1] < 0xA1u || a1[1] == 255)
      {
        return -1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return -2;
    }
  }

  else
  {
    return -2;
  }
}

uint64_t _GBK_init(uint64_t a1)
{
  *(a1 + 72) = _GBK_mbrtowc;
  *(a1 + 96) = _GBK_wcrtomb;
  *(a1 + 80) = _GBK_mbsinit;
  *(a1 + 64) = 2;
  *(a1 + 68) = 128;
  return 0;
}

uint64_t _GBK_mbrtowc(int *a1, unsigned __int8 *a2, unint64_t a3, int *a4)
{
  v11 = a2;
  if ((*a4 & 0xFFFFFF00) != 0)
  {
    *__error() = 22;
    return -1;
  }

  if (!a2)
  {
    v11 = &unk_C42B5;
    a3 = 1;
    a1 = 0;
  }

  if (!a3)
  {
    return -2;
  }

  if (*a4)
  {
    if (!*v11)
    {
LABEL_9:
      *__error() = 92;
      return -1;
    }

    if (a1)
    {
      *a1 = *v11 | (*a4 << 8);
    }

    *a4 = 0;
    return 1;
  }

  else
  {
    v6 = _gbk_check(*v11);
    v4 = v11;
    v12 = v11 + 1;
    v7 = *v4;
    if (v6 == 2)
    {
      if (a3 < 2)
      {
        *a4 = v7;
        return -2;
      }

      if (!*v12)
      {
        goto LABEL_9;
      }

      v8 = *v12 | (v7 << 8);
      if (a1)
      {
        *a1 = v8;
      }

      return 2;
    }

    else
    {
      if (a1)
      {
        *a1 = v7;
      }

      return v7 != 0;
    }
  }
}

uint64_t _GBK_wcrtomb(_BYTE *a1, __int16 a2, _DWORD *a3)
{
  if (*a3)
  {
    *__error() = 22;
    return -1;
  }

  else if (a1)
  {
    if (a2 < 0)
    {
      *a1 = HIBYTE(a2);
      a1[1] = a2;
      return 2;
    }

    else
    {
      *a1 = a2;
      return 1;
    }
  }

  else
  {
    return 1;
  }
}

BOOL _GBK_mbsinit(_DWORD *a1)
{
  v2 = 1;
  if (a1)
  {
    return *a1 == 0;
  }

  return v2;
}

uint64_t _gbk_check(unsigned __int8 a1)
{
  v2 = 0;
  if (a1 >= 0x81u)
  {
    v2 = a1 != 255;
  }

  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t __part_load_locale(char *a1, _BYTE *a2, void **a3, char *a4, int a5, int a6, uint64_t a7)
{
  __s = a1;
  v24 = a2;
  v23 = a3;
  __s2 = a4;
  v21 = a5;
  v20 = a6;
  v19 = a7;
  v18 = 0;
  v17 = 0;
  i = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  memset(&__b, 0, sizeof(__b));
  v10 = strlen(__s) + 1;
  strcpy(__dst, __s);
  strcat(__dst, "/");
  strcat(__dst, __s2);
  v17 = __open_path_locale(__dst);
  if (v17 < 0)
  {
    return -1;
  }

  if (fstat(v17, &__b))
  {
LABEL_24:
    v18 = *__error();
    close_NOCANCEL();
    v8 = v18;
    *__error() = v8;
    return -1;
  }

  if (__b.st_size <= 0)
  {
    *__error() = 79;
    goto LABEL_24;
  }

  v14 = malloc_type_malloc();
  if (!v14)
  {
    *__error() = 12;
    goto LABEL_24;
  }

  strcpy(v14, __s);
  v13 = &v14[v10];
  v12 = &v14[v10 + __b.st_size];
  if (read_NOCANCEL() != __b.st_size)
  {
LABEL_23:
    v18 = *__error();
    free(v14);
    v9 = v18;
    *__error() = v9;
    goto LABEL_24;
  }

  if (*(v12 - 1) != 10)
  {
LABEL_10:
    *__error() = 79;
    goto LABEL_23;
  }

  v15 = split_lines(v13, v12);
  if (v15 < v21)
  {
    if (v15 < v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = v21;
  }

  close_NOCANCEL();
  if (*v23)
  {
    free(*v23);
  }

  *v23 = v14;
  v13 = *v23;
  for (i = 0; i < v15; ++i)
  {
    v13 += strlen(v13) + 1;
    *(v19 + 8 * i) = v13;
  }

  for (i = v15; i < v21; ++i)
  {
    *(v19 + 8 * i) = 0;
  }

  *v24 = 1;
  return 0;
}

uint64_t split_lines(_BYTE *a1, unint64_t a2)
{
  v3 = 0;
  while (a1 < a2)
  {
    if (*a1 == 10)
    {
      *a1 = 0;
      ++v3;
    }

    ++a1;
  }

  return v3;
}

void destruct_ldpart(void **a1)
{
  if (a1)
  {
    free(a1[8]);
  }

  free(a1);
}

uint64_t __messages_load_locale(char *a1, uint64_t a2)
{
  if (!strcmp(a1, "C") || !strcmp(a1, "POSIX") || !strncmp(a1, "C.", 2uLL))
  {
    *(a2 + 1312) = 0;
    xlocale_release(*(a2 + 1360));
    *(a2 + 1360) = 0;
    return 1;
  }

  else if (__messages_load_locale_cache && *(__messages_load_locale_cache + 64) && !strcmp(a1, *(__messages_load_locale_cache + 64)))
  {
    *(a2 + 1312) = 1;
    xlocale_release(*(a2 + 1360));
    *(a2 + 1360) = __messages_load_locale_cache;
    xlocale_retain(__messages_load_locale_cache);
    return 1;
  }

  else
  {
    v3 = malloc_type_malloc();
    if (v3)
    {
      *v3 = 1;
      v3[1] = destruct_ldpart;
      v3[8] = 0;
      locale = __part_load_locale(a1, (a2 + 1312), v3 + 8, "LC_MESSAGES/LC_MESSAGES", 4, 2, (v3 + 9));
      if (locale)
      {
        if (locale == -1)
        {
          free(v3);
        }
      }

      else
      {
        if (!v3[11])
        {
          v3[11] = &empty;
        }

        if (!v3[12])
        {
          v3[12] = &empty;
        }

        xlocale_release(*(a2 + 1360));
        *(a2 + 1360) = v3;
        xlocale_release(__messages_load_locale_cache);
        __messages_load_locale_cache = v3;
        xlocale_retain(v3);
      }

      return locale;
    }

    else
    {
      return -1;
    }
  }
}

char **__get_current_messages_locale(uint64_t a1)
{
  if (*(a1 + 1312))
  {
    return (*(a1 + 1360) + 72);
  }

  else
  {
    return _C_messages_locale;
  }
}

uint64_t __monetary_load_locale(char *a1, uint64_t a2)
{
  if (!strcmp(a1, "C") || !strcmp(a1, "POSIX") || !strncmp(a1, "C.", 2uLL))
  {
    if (*(a2 + 1313))
    {
      *(a2 + 1313) = 0;
      xlocale_release(*(a2 + 1336));
      *(a2 + 1336) = 0;
      *(a2 + 1316) = 1;
    }

    return 1;
  }

  else if (*(a2 + 1313) && !strcmp(a1, *(*(a2 + 1336) + 64)))
  {
    return 1;
  }

  else if (__monetary_load_locale_cache && *(__monetary_load_locale_cache + 64) && !strcmp(a1, *(__monetary_load_locale_cache + 64)))
  {
    *(a2 + 1313) = 1;
    xlocale_release(*(a2 + 1336));
    *(a2 + 1336) = __monetary_load_locale_cache;
    xlocale_retain(__monetary_load_locale_cache);
    *(a2 + 1316) = 1;
    return 1;
  }

  else
  {
    v3 = malloc_type_malloc();
    if (v3)
    {
      *v3 = 1;
      *(v3 + 1) = destruct_ldpart;
      *(v3 + 8) = 0;
      locale = __part_load_locale(a1, (a2 + 1313), v3 + 8, "LC_MONETARY", 21, 15, v3 + 72);
      if (locale == -1)
      {
        free(v3);
      }

      else
      {
        *(a2 + 1316) = 1;
      }

      if (!locale)
      {
        *(v3 + 13) = __fix_locale_grouping_str(*(v3 + 13));
        **(v3 + 16) = cnv(*(v3 + 16));
        **(v3 + 17) = cnv(*(v3 + 17));
        **(v3 + 18) = cnv(*(v3 + 18));
        **(v3 + 19) = cnv(*(v3 + 19));
        **(v3 + 20) = cnv(*(v3 + 20));
        **(v3 + 21) = cnv(*(v3 + 21));
        **(v3 + 22) = cnv(*(v3 + 22));
        **(v3 + 23) = cnv(*(v3 + 23));
        if (*(v3 + 24))
        {
          **(v3 + 24) = cnv(*(v3 + 24));
        }

        else
        {
          *(v3 + 24) = *(v3 + 18);
        }

        if (*(v3 + 25))
        {
          **(v3 + 25) = cnv(*(v3 + 25));
        }

        else
        {
          *(v3 + 25) = *(v3 + 20);
        }

        if (*(v3 + 26))
        {
          **(v3 + 26) = cnv(*(v3 + 26));
        }

        else
        {
          *(v3 + 26) = *(v3 + 19);
        }

        if (*(v3 + 27))
        {
          **(v3 + 27) = cnv(*(v3 + 27));
        }

        else
        {
          *(v3 + 27) = *(v3 + 21);
        }

        if (*(v3 + 28))
        {
          **(v3 + 28) = cnv(*(v3 + 28));
        }

        else
        {
          *(v3 + 28) = *(v3 + 22);
        }

        if (*(v3 + 29))
        {
          **(v3 + 29) = cnv(*(v3 + 29));
        }

        else
        {
          *(v3 + 29) = *(v3 + 23);
        }

        xlocale_release(*(a2 + 1336));
        *(a2 + 1336) = v3;
        xlocale_release(__monetary_load_locale_cache);
        __monetary_load_locale_cache = v3;
        xlocale_retain(v3);
      }

      return locale;
    }

    else
    {
      return -1;
    }
  }
}

uint64_t cnv(const char *a1)
{
  v2 = strtol(a1, 0, 10);
  if (v2 == -1)
  {
    LOBYTE(v2) = 127;
  }

  return v2;
}

_UNKNOWN **__get_current_monetary_locale(uint64_t a1)
{
  if (*(a1 + 1313))
  {
    return (*(a1 + 1336) + 72);
  }

  else
  {
    return &_C_monetary_locale;
  }
}

uint64_t __numeric_load_locale(char *a1, uint64_t a2)
{
  if (!strcmp(a1, "C") || !strcmp(a1, "POSIX") || !strncmp(a1, "C.", 2uLL))
  {
    if (*(a2 + 1314))
    {
      *(a2 + 1314) = 0;
      xlocale_release(*(a2 + 1344));
      *(a2 + 1344) = 0;
      *(a2 + 1317) = 1;
    }

    return 1;
  }

  else if (*(a2 + 1314) && !strcmp(a1, *(*(a2 + 1344) + 64)))
  {
    return 1;
  }

  else if (__numeric_load_locale_cache && *(__numeric_load_locale_cache + 64) && !strcmp(a1, *(__numeric_load_locale_cache + 64)))
  {
    *(a2 + 1314) = 1;
    xlocale_release(*(a2 + 1344));
    *(a2 + 1344) = __numeric_load_locale_cache;
    xlocale_retain(__numeric_load_locale_cache);
    *(a2 + 1317) = 1;
    return 1;
  }

  else
  {
    v3 = malloc_type_malloc();
    if (v3)
    {
      *v3 = 1;
      *(v3 + 1) = destruct_ldpart;
      *(v3 + 8) = 0;
      locale = __part_load_locale(a1, (a2 + 1314), v3 + 8, "LC_NUMERIC", 3, 3, v3 + 72);
      if (locale == -1)
      {
        free(v3);
      }

      else
      {
        *(a2 + 1317) = 1;
      }

      if (!locale)
      {
        if (!**(v3 + 9))
        {
          *(v3 + 9) = ".";
        }

        *(v3 + 11) = __fix_locale_grouping_str(*(v3 + 11));
        xlocale_release(*(a2 + 1344));
        *(a2 + 1344) = v3;
        xlocale_release(__numeric_load_locale_cache);
        __numeric_load_locale_cache = v3;
        xlocale_retain(v3);
      }

      return locale;
    }

    else
    {
      return -1;
    }
  }
}

char **__get_current_numeric_locale(uint64_t a1)
{
  if (*(a1 + 1314))
  {
    return (*(a1 + 1344) + 72);
  }

  else
  {
    return &_C_numeric_locale;
  }
}

void _locale_lock_fork_prepare()
{
  v2 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v1)
  {
    v0 = v1;
  }

  else
  {
    v0 = __global_locale;
  }

  os_unfair_lock_lock(v0 + 324);
}

void _locale_lock_fork_parent()
{
  v2 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v1)
  {
    v0 = v1;
  }

  else
  {
    v0 = __global_locale;
  }

  os_unfair_lock_unlock(v0 + 324);
}

void _locale_lock_fork_child()
{
  v2 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v1)
  {
    v0 = v1;
  }

  else
  {
    v0 = __global_locale;
  }

  *(v0 + 324) = 0;
}

lconv *__cdecl localeconv_l(locale_t a1)
{
  v4 = a1;
  if (a1)
  {
    if (a1 == -1)
    {
      v4 = &__global_locale;
    }
  }

  else
  {
    v4 = &__c_locale;
  }

  os_unfair_lock_lock(v4 + 324);
  if (*(v4 + 1316))
  {
    current_monetary_locale = __get_current_monetary_locale(v4);
    *(v4 + 175) = *current_monetary_locale;
    *(v4 + 176) = current_monetary_locale[1];
    *(v4 + 177) = current_monetary_locale[2];
    *(v4 + 178) = current_monetary_locale[3];
    *(v4 + 179) = current_monetary_locale[4];
    *(v4 + 180) = current_monetary_locale[5];
    *(v4 + 181) = current_monetary_locale[6];
    *(v4 + 1456) = *current_monetary_locale[7];
    *(v4 + 1457) = *current_monetary_locale[8];
    *(v4 + 1458) = *current_monetary_locale[9];
    *(v4 + 1459) = *current_monetary_locale[10];
    *(v4 + 1460) = *current_monetary_locale[11];
    *(v4 + 1461) = *current_monetary_locale[12];
    *(v4 + 1462) = *current_monetary_locale[13];
    *(v4 + 1463) = *current_monetary_locale[14];
    *(v4 + 1464) = *current_monetary_locale[15];
    *(v4 + 1465) = *current_monetary_locale[16];
    *(v4 + 1466) = *current_monetary_locale[17];
    *(v4 + 1467) = *current_monetary_locale[18];
    *(v4 + 1468) = *current_monetary_locale[19];
    *(v4 + 1469) = *current_monetary_locale[20];
    *(v4 + 1316) = 0;
  }

  if (*(v4 + 1317))
  {
    current_numeric_locale = __get_current_numeric_locale(v4);
    *(v4 + 172) = *current_numeric_locale;
    *(v4 + 173) = current_numeric_locale[1];
    *(v4 + 174) = current_numeric_locale[2];
    *(v4 + 1317) = 0;
    if (!*(v4 + 172))
    {
      _os_crash("loc->decimal_point is NULL (nlocale changed)");
      __break(1u);
      JUMPOUT(0x4DED4);
    }
  }

  os_unfair_lock_unlock(v4 + 324);
  if (!*(v4 + 172))
  {
    _os_crash("loc->decimal_point is NULL");
    __break(1u);
    JUMPOUT(0x4DF08);
  }

  return (v4 + 1376);
}

lconv *localeconv(void)
{
  v2 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (v1)
  {
    return localeconv_l(v1);
  }

  else
  {
    return localeconv_l(__global_locale);
  }
}

int mblen_l(const char *a1, size_t a2, locale_t a3)
{
  v5 = a3;
  if (a3)
  {
    if (a3 == -1)
    {
      v5 = __global_locale;
    }
  }

  else
  {
    v5 = &__c_locale;
  }

  if (a1)
  {
    v4 = (*(*(v5 + 166) + 72))(0, a1, a2, v5 + 16, v5);
    if (v4 < 0xFFFFFFFFFFFFFFFELL)
    {
      return v4;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    memcpy(v5 + 16, &mblen_l_initial, 0x80uLL);
    return 0;
  }
}

int mblen(const char *__s, size_t __n)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return mblen_l(__s, __n, v3);
  }

  else
  {
    return mblen_l(__s, __n, __global_locale);
  }
}

size_t mbrlen_l(const char *a1, size_t a2, mbstate_t *a3, locale_t a4)
{
  v6 = a3;
  v5 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v5 = &__global_locale;
    }
  }

  else
  {
    v5 = &__c_locale;
  }

  if (!a3)
  {
    v6 = (v5 + 144);
  }

  return (*(*(v5 + 166) + 72))(0, a1, a2, v6, v5);
}

size_t mbrlen(const char *a1, size_t a2, mbstate_t *a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return mbrlen_l(a1, a2, a3, v4);
  }

  else
  {
    return mbrlen_l(a1, a2, a3, __global_locale);
  }
}

size_t mbrtowc_l(__int32 *a1, const char *a2, size_t a3, mbstate_t *a4, locale_t a5)
{
  v7 = a4;
  v6 = a5;
  if (a5)
  {
    if (a5 == -1)
    {
      v6 = &__global_locale;
    }
  }

  else
  {
    v6 = &__c_locale;
  }

  if (!a4)
  {
    v7 = (v6 + 272);
  }

  return (*(*(v6 + 166) + 72))(a1, a2, a3, v7, v6);
}

size_t mbrtowc(__int32 *a1, const char *a2, size_t a3, mbstate_t *a4)
{
  v6 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v5)
  {
    return mbrtowc_l(a1, a2, a3, a4, v5);
  }

  else
  {
    return mbrtowc_l(a1, a2, a3, a4, __global_locale);
  }
}

int mbsinit_l(const mbstate_t *a1, locale_t a2)
{
  v3 = a2;
  if (!a2)
  {
    return (*(off_D4F88 + 10))(a1, &__c_locale);
  }

  if (a2 == -1)
  {
    v3 = &__global_locale;
  }

  return (*(*(v3 + 166) + 80))(a1, v3);
}

int mbsinit(const mbstate_t *a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return mbsinit_l(a1, v2);
  }

  else
  {
    return mbsinit_l(a1, __global_locale);
  }
}

size_t mbsnrtowcs_l(__int32 *a1, const char **a2, size_t a3, size_t a4, mbstate_t *a5, locale_t a6)
{
  v8 = a5;
  v7 = a6;
  if (a6)
  {
    if (a6 == -1)
    {
      v7 = &__global_locale;
    }
  }

  else
  {
    v7 = &__c_locale;
  }

  if (!a5)
  {
    v8 = (v7 + 400);
  }

  return (*(*(v7 + 166) + 88))(a1, a2, a3, a4, v8, v7);
}

size_t mbsnrtowcs(__int32 *a1, const char **a2, size_t a3, size_t a4, mbstate_t *a5)
{
  v7 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
  if (v6)
  {
    return mbsnrtowcs_l(a1, a2, a3, a4, a5, v6);
  }

  else
  {
    return mbsnrtowcs_l(a1, a2, a3, a4, a5, __global_locale);
  }
}

uint64_t __mbsnrtowcs_std(int *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v8 = *(*(a6 + 1328) + 72);
  v13 = *a2;
  v12 = 0;
  if (a1)
  {
    while (v16--)
    {
      v10 = v8(v19, v13, v17, v15, v14);
      switch(v10)
      {
        case -1:
          *v18 = v13;
          return -1;
        case -2:
          *v18 = v13 + v17;
          return v12;
        case 0:
          *v18 = 0;
          return v12;
      }

      v13 += v10;
      v17 -= v10;
      ++v12;
      ++v19;
    }

    *v18 = v13;
    return v12;
  }

  else
  {
    while (1)
    {
      v9 = v8(&v11, v13, v17, v15, v14);
      if (v9 == -1)
      {
        return -1;
      }

      if (!v9 || v9 == -2)
      {
        break;
      }

      v13 += v9;
      v17 -= v9;
      ++v12;
    }

    return v12;
  }
}

size_t mbsrtowcs_l(__int32 *a1, const char **a2, size_t a3, mbstate_t *a4, locale_t a5)
{
  v7 = a4;
  v6 = a5;
  if (a5)
  {
    if (a5 == -1)
    {
      v6 = &__global_locale;
    }
  }

  else
  {
    v6 = &__c_locale;
  }

  if (!a4)
  {
    v7 = (v6 + 528);
  }

  return (*(*(v6 + 166) + 88))(a1, a2, -1, a3, v7, v6);
}

size_t mbsrtowcs(__int32 *a1, const char **a2, size_t a3, mbstate_t *a4)
{
  v6 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v5)
  {
    return mbsrtowcs_l(a1, a2, a3, a4, v5);
  }

  else
  {
    return mbsrtowcs_l(a1, a2, a3, a4, __global_locale);
  }
}

size_t mbstowcs_l(__int32 *a1, const char *a2, size_t a3, locale_t a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  memset(__b, 0, sizeof(__b));
  v5 = 0;
  if (v6)
  {
    if (v6 == -1)
    {
      v6 = __global_locale;
    }
  }

  else
  {
    v6 = &__c_locale;
  }

  memcpy(__b, &mbstowcs_l_initial, sizeof(__b));
  v5 = v8;
  return (*(*(v6 + 166) + 88))(v9, &v5, -1, v7, __b, v6);
}

size_t mbstowcs(__int32 *a1, const char *a2, size_t a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return mbstowcs_l(a1, a2, a3, v4);
  }

  else
  {
    return mbstowcs_l(a1, a2, a3, __global_locale);
  }
}

int mbtowc_l(__int32 *a1, const char *a2, size_t a3, locale_t a4)
{
  v6 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v6 = __global_locale;
    }
  }

  else
  {
    v6 = &__c_locale;
  }

  if (a2)
  {
    v5 = (*(*(v6 + 166) + 72))(a1, a2, a3, v6 + 656, v6);
    if (v5 < 0xFFFFFFFFFFFFFFFELL)
    {
      return v5;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    memcpy(v6 + 656, &mbtowc_l_initial, 0x80uLL);
    return 0;
  }
}

int mbtowc(__int32 *a1, const char *a2, size_t a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return mbtowc_l(a1, a2, a3, v4);
  }

  else
  {
    return mbtowc_l(a1, a2, a3, __global_locale);
  }
}

uint64_t _MSKanji_init(uint64_t a1)
{
  *(a1 + 72) = _MSKanji_mbrtowc;
  *(a1 + 96) = _MSKanji_wcrtomb;
  *(a1 + 80) = _MSKanji_mbsinit;
  *(a1 + 64) = 2;
  *(a1 + 68) = 256;
  return 0;
}

uint64_t _MSKanji_mbrtowc(_DWORD *a1, unsigned __int8 *a2, unint64_t a3, unsigned int *a4)
{
  v9 = a2;
  if ((*a4 & 0xFFFFFF00) != 0)
  {
    *__error() = 22;
    return -1;
  }

  if (!a2)
  {
    v9 = &unk_C42B5;
    a3 = 1;
    a1 = 0;
  }

  if (!a3)
  {
    return -2;
  }

  if (*a4)
  {
    if (!*v9)
    {
LABEL_9:
      *__error() = 92;
      return -1;
    }

    if (a1)
    {
      *a1 = *v9 | (*a4 << 8);
    }

    *a4 = 0;
    return 1;
  }

  else
  {
    v4 = v9;
    v10 = v9 + 1;
    v6 = *v4;
    if ((v6 <= 0x80 || *v4 >= 0xA0u) && (*v4 < 0xE0u || *v4 >= 0xFDu))
    {
      if (a1)
      {
        *a1 = v6;
      }

      return v6 != 0;
    }

    else
    {
      if (a3 < 2)
      {
        *a4 = v6;
        return -2;
      }

      if (!*v10)
      {
        goto LABEL_9;
      }

      v7 = *v10 | (v6 << 8);
      if (a1)
      {
        *a1 = v7;
      }

      return 2;
    }
  }
}

uint64_t _MSKanji_wcrtomb(_BYTE *a1, int a2, _DWORD *a3)
{
  v9 = a1;
  if (*a3)
  {
    *__error() = 22;
    return -1;
  }

  else if (a1)
  {
    if (a2 <= 256)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v8 = v3;
    for (i = v3; ; *v5 = a2 >> (8 * i))
    {
      v4 = i--;
      if (v4 <= 0)
      {
        break;
      }

      v5 = v9++;
    }

    return v8;
  }

  else
  {
    return 1;
  }
}

BOOL _MSKanji_mbsinit(_DWORD *a1)
{
  v2 = 1;
  if (a1)
  {
    return *a1 == 0;
  }

  return v2;
}

wint_t nextwctype_l(wint_t a1, wctype_t a2, locale_t a3)
{
  v9 = a1;
  v4 = *(*(a3 + 166) + 120);
  v5 = 0;
  if (a1 < 256)
  {
    for (i = a1 + 1; i < 256; ++i)
    {
      if ((*(v4 + 60 + 4 * i) & a2) != 0)
      {
        return i;
      }
    }

    v9 = i - 1;
  }

  if (*(v4 + 3144) && v9 < **(v4 + 3144))
  {
    v9 = **(v4 + 3144);
    v5 = 1;
  }

  v7 = *(v4 + 3144);
  for (j = *(v4 + 3136); ; j >>= 1)
  {
    if (!j)
    {
      return -1;
    }

    v6 = v7 + 24 * (j >> 1);
    if (*v6 <= v9 && v9 <= *(v6 + 4))
    {
      break;
    }

    if (v9 > *(v6 + 4))
    {
      v7 = v6 + 24;
      --j;
    }
  }

  if (!v5)
  {
    ++v9;
  }

  if (*v6 > v9 || v9 > *(v6 + 4))
  {
LABEL_31:
    while (1)
    {
      v6 += 24;
      if (v6 >= *(v4 + 3144) + 24 * *(v4 + 3136))
      {
        break;
      }

      v11 = *v6;
      if (*(v6 + 16))
      {
        while (v11 <= *(v6 + 4))
        {
          if ((*(*(v6 + 16) + 4 * (v11 - *v6)) & a2) != 0)
          {
            return v11;
          }

          ++v11;
        }
      }

      else if ((*(v6 + 8) & a2) != 0)
      {
        return *v6;
      }
    }

    return -1;
  }

  else if (*(v6 + 16))
  {
    while (1)
    {
      if (v9 > *(v6 + 4))
      {
        goto LABEL_31;
      }

      if ((*(*(v6 + 16) + 4 * (v9 - *v6)) & a2) != 0)
      {
        return v9;
      }

      ++v9;
    }
  }

  else
  {
    if ((*(v6 + 8) & a2) == 0)
    {
      goto LABEL_31;
    }

    return v9;
  }
}

wint_t nextwctype(wint_t a1, wctype_t a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return nextwctype_l(a1, a2, v3);
  }

  else
  {
    return nextwctype_l(a1, a2, __global_locale);
  }
}

char *__cdecl nl_langinfo_l(nl_item a1, locale_t a2)
{
  v12 = a2;
  if (a2)
  {
    if (a2 == -1)
    {
      v12 = __global_locale;
    }
  }

  else
  {
    v12 = &__c_locale;
  }

  switch(a1)
  {
    case 0:
      v11 = &unk_C42B5;
      __s = querylocale(2, v12);
      if (__s)
      {
        v9 = strchr(__s, 46);
        if (v9)
        {
          v11 = v9 + 1;
        }

        else if (!strcmp(__s, "C") || !strcmp(__s, "POSIX"))
        {
          v11 = "US-ASCII";
        }

        else if (!strcmp(__s, "UTF-8"))
        {
          v11 = "UTF-8";
        }
      }

      goto LABEL_52;
    case 1:
      v11 = __get_current_time_locale(v12)[40];
      goto LABEL_52;
    case 2:
      v11 = __get_current_time_locale(v12)[39];
      goto LABEL_52;
    case 3:
      v11 = __get_current_time_locale(v12)[38];
      goto LABEL_52;
    case 4:
      v11 = __get_current_time_locale(v12)[57];
      goto LABEL_52;
    case 5:
      v11 = __get_current_time_locale(v12)[41];
      goto LABEL_52;
    case 6:
      v11 = __get_current_time_locale(v12)[42];
      goto LABEL_52;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      v11 = __get_current_time_locale(v12)[a1 + 24];
      goto LABEL_52;
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
      v11 = __get_current_time_locale(v12)[a1 + 10];
      goto LABEL_52;
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
      v11 = __get_current_time_locale(v12)[a1 - 9];
      goto LABEL_52;
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
      v11 = __get_current_time_locale(v12)[a1 - 33];
      goto LABEL_52;
    case 45:
      v11 = &unk_C42B5;
      goto LABEL_52;
    case 46:
      v11 = &unk_C42B5;
      goto LABEL_52;
    case 47:
      v11 = &unk_C42B5;
      goto LABEL_52;
    case 48:
      v11 = &unk_C42B5;
      goto LABEL_52;
    case 49:
      v11 = &unk_C42B5;
      goto LABEL_52;
    case 50:
      v11 = *__get_current_numeric_locale(v12);
      goto LABEL_52;
    case 51:
      v11 = __get_current_numeric_locale(v12)[1];
      goto LABEL_52;
    case 52:
      v11 = *__get_current_messages_locale(v12);
      goto LABEL_52;
    case 53:
      v11 = __get_current_messages_locale(v12)[1];
      goto LABEL_52;
    case 54:
      v11 = __get_current_messages_locale(v12)[2];
      goto LABEL_52;
    case 55:
      v11 = __get_current_messages_locale(v12)[3];
      goto LABEL_52;
    case 56:
      v11 = &unk_C42B5;
      v10 = __get_current_monetary_locale(v12)[1];
      if (*v10)
      {
        p_cs_precedes = localeconv_l(v12)->p_cs_precedes;
        if (p_cs_precedes == localeconv_l(v12)->n_cs_precedes)
        {
          v6 = 0;
          if (p_cs_precedes == 127)
          {
            current_monetary_locale = __get_current_monetary_locale(v12);
            if (!strcmp(v10, current_monetary_locale[2]))
            {
              v6 = 46;
            }
          }

          else
          {
            if (p_cs_precedes)
            {
              v3 = 45;
            }

            else
            {
              v3 = 43;
            }

            v6 = v3;
          }

          if (v6)
          {
            v5 = strlen(v10);
            nl_langinfo_l_csym = reallocf(nl_langinfo_l_csym, v5 + 2);
            if (nl_langinfo_l_csym)
            {
              *nl_langinfo_l_csym = v6;
              strcpy((nl_langinfo_l_csym + 1), v10);
              v11 = nl_langinfo_l_csym;
            }
          }
        }
      }

      goto LABEL_52;
    case 57:
      v11 = __get_current_time_locale(v12)[56];
LABEL_52:
      if (v11 && !*v11 && a1 != 57 && a1 && v12 != &__c_locale)
      {
        v11 = nl_langinfo_l(a1, &__c_locale);
      }

      v14 = v11;
      break;
    default:
      v14 = &unk_C42B5;
      break;
  }

  return v14;
}

char *__cdecl nl_langinfo(nl_item a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return nl_langinfo_l(a1, v2);
  }

  else
  {
    return nl_langinfo_l(a1, __global_locale);
  }
}

uint64_t __maskrune(int a1, unsigned int a2)
{
  if (a1 < 0 || a1 >= 256)
  {
    v4 = ___runetype(a1);
  }

  else
  {
    v7 = __locale_key;
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = __global_locale;
    }

    v4 = *(*(v3[166] + 120) + 60 + 4 * a1);
  }

  return v4 & a2;
}

BOOL __istype(int a1, unsigned int a2)
{
  if (isascii(a1))
  {
    return (_DefaultRuneLocale.__runetype[a1] & a2) != 0;
  }

  else
  {
    return __maskrune(a1, a2) != 0;
  }
}

uint64_t __toupper(int a1)
{
  if (a1 < 0 || a1 >= 256)
  {
    return ___toupper(a1);
  }

  else
  {
    v5 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      v2 = __global_locale;
    }

    return *(*(v2[166] + 120) + 2108 + 4 * a1);
  }
}

uint64_t __tolower(int a1)
{
  if (a1 < 0 || a1 >= 256)
  {
    return ___tolower(a1);
  }

  else
  {
    v5 = __locale_key;
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      v2 = __global_locale;
    }

    return *(*(v2[166] + 120) + 1084 + 4 * a1);
  }
}

uint64_t __wcwidth(int a1)
{
  if (a1)
  {
    v3 = __maskrune(a1, 0xE0040000);
    if ((v3 & 0xE0000000) != 0)
    {
      return (v3 & 0xE0000000) >> 30;
    }

    else if ((v3 & 0x40000) != 0)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t __maskrune_l(int a1, unsigned int a2, void *a3)
{
  if (a1 < 0 || a1 >= 256)
  {
    v4 = ___runetype_l(a1, a3);
  }

  else
  {
    v6 = a3;
    if (a3)
    {
      if (a3 == -1)
      {
        v6 = __global_locale;
      }
    }

    else
    {
      v6 = &__c_locale;
    }

    v4 = *(*(v6[166] + 120) + 60 + 4 * a1);
  }

  return v4 & a2;
}

BOOL __istype_l(int a1, unsigned int a2, void *a3)
{
  if (isascii(a1))
  {
    v4 = _DefaultRuneLocale.__runetype[a1] & a2;
  }

  else
  {
    v4 = __maskrune_l(a1, a2, a3);
  }

  return v4 != 0;
}

uint64_t __toupper_l(int a1, void *a2)
{
  if (isascii(a1))
  {
    return _DefaultRuneLocale.__mapupper[a1];
  }

  else
  {
    return ___toupper_l(a1, a2);
  }
}

uint64_t __tolower_l(int a1, void *a2)
{
  if (isascii(a1))
  {
    return _DefaultRuneLocale.__maplower[a1];
  }

  else
  {
    return ___tolower_l(a1, a2);
  }
}

uint64_t __wcwidth_l(int a1, void *a2)
{
  if (a1)
  {
    v4 = __maskrune_l(a1, 0xE0040000, a2);
    if ((v4 & 0xE0000000) != 0)
    {
      return (v4 & 0xE0000000) >> 30;
    }

    else if ((v4 & 0x40000) != 0)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t _none_init(uint64_t a1)
{
  *(a1 + 72) = _none_mbrtowc;
  *(a1 + 80) = _none_mbsinit;
  *(a1 + 88) = _none_mbsnrtowcs;
  *(a1 + 96) = _none_wcrtomb;
  *(a1 + 104) = _none_wcsnrtombs;
  *(a1 + 64) = 1;
  *(a1 + 68) = 256;
  return 0;
}

uint64_t _none_mbrtowc(_DWORD *a1, _BYTE *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return -2;
  }

  if (a1)
  {
    *a1 = *a2;
  }

  return *a2 != 0;
}

int64_t _none_mbsnrtowcs(_DWORD *a1, const void **a2, size_t a3, uint64_t a4)
{
  v17 = a1;
  v15 = a3;
  if (a1)
  {
    v13 = *a2;
    for (i = 0; ; ++i)
    {
      v4 = a4--;
      v9 = 0;
      if (v4)
      {
        v5 = v15--;
        v9 = v5 != 0;
      }

      if (!v9)
      {
        break;
      }

      v6 = v13++;
      LODWORD(v6) = *v6;
      v7 = v17++;
      *v7 = v6;
      if (!v6)
      {
        *a2 = 0;
        return i;
      }
    }

    *a2 = v13;
    return i;
  }

  else
  {
    v12 = memchr(*a2, 0, a3);
    if (v12)
    {
      return v12 - *a2;
    }

    else
    {
      return v15;
    }
  }
}

uint64_t _none_wcrtomb(_BYTE *a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  if (a2 < 0 || a2 > 255)
  {
    *__error() = 92;
    return -1;
  }

  else
  {
    *a1 = a2;
    return 1;
  }
}

uint64_t _none_wcsnrtombs(_BYTE *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  if (a1)
  {
    v13 = *a2;
    for (i = 0; ; ++i)
    {
      v4 = a4--;
      v9 = 0;
      if (v4)
      {
        v5 = a3--;
        v9 = v5 != 0;
      }

      if (!v9)
      {
        break;
      }

      if (*v13 < 0 || *v13 > 255)
      {
        *a2 = v13;
        *__error() = 92;
        return -1;
      }

      v6 = v13++;
      LOBYTE(v6) = *v6;
      v7 = v16++;
      *v7 = v6;
      if (!v6)
      {
        *a2 = 0;
        return i;
      }
    }

    *a2 = v13;
    return i;
  }

  else
  {
    for (j = *a2; ; ++j)
    {
      v10 = 0;
      if (a3)
      {
        v10 = *j != 0;
      }

      if (!v10)
      {
        break;
      }

      if (*j < 0 || *j > 255)
      {
        *__error() = 92;
        return -1;
      }

      --a3;
    }

    return j - *a2;
  }
}

uint64_t ___runetype_l(int a1, void *a2)
{
  v6 = a2;
  if (a1 < 0 || a1 == -1)
  {
    return 0;
  }

  if (a2)
  {
    if (a2 == -1)
    {
      v6 = &__global_locale;
    }
  }

  else
  {
    v6 = &__c_locale;
  }

  v4 = *(*(v6[166] + 120) + 3144);
  for (i = *(*(v6[166] + 120) + 3136); ; i >>= 1)
  {
    if (!i)
    {
      return 0;
    }

    v3 = v4 + 24 * (i >> 1);
    if (*v3 <= a1 && a1 <= *(v3 + 4))
    {
      break;
    }

    if (a1 > *(v3 + 4))
    {
      v4 = v3 + 24;
      --i;
    }
  }

  if (*(v3 + 16))
  {
    return *(*(v3 + 16) + 4 * (a1 - *v3));
  }

  else
  {
    return *(v3 + 8);
  }
}

uint64_t ___runetype(int a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return ___runetype_l(a1, v2);
  }

  else
  {
    return ___runetype_l(a1, __global_locale);
  }
}

char *__cdecl setlocale(int a1, const char *a2)
{
  v17 = a2;
  if (a1 < 0 || a1 >= 7)
  {
    *__error() = 22;
    return 0;
  }

  if (!a2)
  {
    if (a1)
    {
      return &current_categories[32 * a1];
    }

    else
    {
      return currentlocale();
    }
  }

  os_unfair_lock_lock(&__global_locale[162]);
  for (i = 1; i < 7; ++i)
  {
    strcpy(&new_categories[32 * i], &current_categories[32 * i]);
  }

  if (!*v17)
  {
    if (!a1)
    {
      for (j = 1; j < 7; ++j)
      {
        __s = __get_locale_env(j);
        if (strlen(__s) > 0x1F)
        {
          goto LABEL_36;
        }

        strcpy(&new_categories[32 * j], __s);
      }

      goto LABEL_48;
    }

    __sa = __get_locale_env(a1);
    if (strlen(__sa) <= 0x1F)
    {
      strcpy(&new_categories[32 * a1], __sa);
      goto LABEL_48;
    }

LABEL_36:
    *__error() = 22;
    os_unfair_lock_unlock(&__global_locale[162]);
    return 0;
  }

  if (a1)
  {
    if (strlen(v17) > 0x1F)
    {
      goto LABEL_36;
    }

    strcpy(&new_categories[32 * a1], v17);
  }

  else
  {
    v6 = strchr(v17, 47);
    if (v6)
    {
      v15 = 1;
      while (v6[1] == 47)
      {
        ++v6;
      }

      if (v6[1])
      {
        do
        {
          if (v15 == 7)
          {
            break;
          }

          if (v6 - v17 > 31)
          {
            goto LABEL_36;
          }

          strlcpy(&new_categories[32 * v15++], v17, v6 - v17 + 1);
          while (*v6 == 47)
          {
            ++v6;
          }

          v17 = v6;
          while (1)
          {
            v3 = 0;
            if (*v6)
            {
              v3 = *v6 != 47;
            }

            if (!v3)
            {
              break;
            }

            ++v6;
          }
        }

        while (*v17);
        while (v15 < 7)
        {
          strcpy(&new_categories[32 * v15], &new_categories[32 * v15 - 32]);
          ++v15;
        }

        goto LABEL_48;
      }

      goto LABEL_36;
    }

    if (strlen(v17) > 0x1F)
    {
      goto LABEL_36;
    }

    for (k = 1; k < 7; ++k)
    {
      strcpy(&new_categories[32 * k], v17);
    }
  }

LABEL_48:
  if (a1)
  {
    os_unfair_lock_unlock(&__global_locale[162]);
    return loadlocale(a1);
  }

  else
  {
    v9 = byte_D4996;
    v5 = qword_D49C8;
    xlocale_retain(qword_D49C8);
    for (m = 1; ; ++m)
    {
      if (m >= 7)
      {
        xlocale_release(v5);
        os_unfair_lock_unlock(&__global_locale[162]);
        return currentlocale();
      }

      strcpy(&saved_categories[32 * m], &current_categories[32 * m]);
      if (!loadlocale(m))
      {
        break;
      }
    }

    v10 = *__error();
    for (n = 1; n < m; ++n)
    {
      strcpy(&new_categories[32 * n], &saved_categories[32 * n]);
      if (!loadlocale(n))
      {
        strcpy(&new_categories[32 * n], "C");
        loadlocale(n);
      }
    }

    byte_D4996 = v9;
    qword_D49C8 = v5;
    xlocale_release(v5);
    *__error() = v10;
    os_unfair_lock_unlock(&__global_locale[162]);
    return 0;
  }
}

uint64_t currentlocale()
{
  if (!currentlocale_current_locale_string)
  {
    currentlocale_current_locale_string = malloc_type_malloc();
    if (!currentlocale_current_locale_string)
    {
      return 0;
    }
  }

  strlcpy(currentlocale_current_locale_string, "C", 0xE7uLL);
  for (i = 2; i < 7; ++i)
  {
    if (strcmp("C", &current_categories[32 * i]))
    {
      for (j = 2; j < 7; ++j)
      {
        strcat(currentlocale_current_locale_string, "/");
        strcat(currentlocale_current_locale_string, &current_categories[32 * j]);
      }

      return currentlocale_current_locale_string;
    }
  }

  return currentlocale_current_locale_string;
}

const char *__get_locale_env(int a1)
{
  v2 = getenv("LC_ALL");
  if (!v2 || !*v2)
  {
    v2 = getenv(categories[a1]);
  }

  if (!v2 || !*v2)
  {
    v2 = getenv("LANG");
  }

  if (!v2 || !*v2)
  {
    return "C";
  }

  return v2;
}

char *loadlocale(int a1)
{
  v6 = &new_categories + 32 * a1;
  v5 = &current_categories[32 * a1];
  if (*v6 == 46 && (!v6[1] || v6[1] == 46 && !v6[2]) || strchr(v6, 47))
  {
    goto LABEL_15;
  }

  v3 = *__error();
  v2 = __detect_path_locale();
  *__error() = v2;
  if (*__error())
  {
    return 0;
  }

  *__error() = v3;
  switch(a1)
  {
    case 1:
      v4 = __collate_load_tables;
      break;
    case 2:
      v4 = __wrap_setrunelocale;
      break;
    case 3:
      v4 = __monetary_load_locale;
      break;
    case 4:
      v4 = __numeric_load_locale;
      break;
    case 5:
      v4 = __time_load_locale;
      break;
    case 6:
      v4 = __messages_load_locale;
      break;
    default:
LABEL_15:
      *__error() = 22;
      return 0;
  }

  if (!strcmp(v6, v5))
  {
    return v5;
  }

  if (v4(v6, __global_locale) == -1)
  {
    return 0;
  }

  strcpy(v5, v6);
  xlocale_fill_name(*(&off_D4998 + a1 - 1), v6);
  if (a1 == 2)
  {
    if (byte_D4996 == 1)
    {
      byte_D4996 = 0;
    }
  }

  else if (a1 == 4)
  {
    byte_D4996 = 0;
    xlocale_release(qword_D49C8);
    qword_D49C8 = 0;
  }

  return v5;
}

uint64_t __detect_path_locale()
{
  if (_PathLocale)
  {
    return 0;
  }

  __s = getenv("PATH_LOCALE");
  if (!__s || issetugid())
  {
    _PathLocale = "/usr/share/locale";
    return 0;
  }

  if (strlen(__s) + 44 >= 0x400)
  {
    return 63;
  }

  _PathLocale = strdup(__s);
  if (_PathLocale)
  {
    return 0;
  }

  if (*__error())
  {
    return *__error();
  }

  else
  {
    return 12;
  }
}

uint64_t __open_path_locale(const char *a1)
{
  strcpy(__dst, _PathLocale);
  strcat(__dst, "/");
  strcat(__dst, a1);
  v2 = open_NOCANCEL();
  if ((v2 & 0x80000000) != 0)
  {
    strcpy(__dst, "/usr/share/locale");
    strcat(__dst, "/");
    strcat(__dst, a1);
    v3 = open_NOCANCEL();
    if ((v3 & 0x80000000) != 0)
    {
      strcpy(__dst, "/usr/local/share/locale");
      strcat(__dst, "/");
      strcat(__dst, a1);
      return open_NOCANCEL();
    }

    else
    {
      return v3;
    }
  }

  else
  {
    return v2;
  }
}

uint64_t __setrunelocale(const char *a1, void *a2)
{
  if (!strcmp(a1, "C") || !strcmp(a1, "POSIX"))
  {
    xlocale_release(a2[166]);
    a2[166] = &_DefaultRuneXLocale;
    if (a2 == __global_locale)
    {
      _CurrentRuneLocale = *(a2[166] + 120);
      __mb_cur_max = *(a2[166] + 64);
      __mb_sb_limit = *(a2[166] + 68);
    }

    return 0;
  }

  else
  {
    os_unfair_lock_lock(&__setrunelocale_cache_lock);
    if (__setrunelocale_CachedRuneLocale && !strcmp(a1, (__setrunelocale_CachedRuneLocale + 16)))
    {
      xlocale_release(a2[166]);
      a2[166] = __setrunelocale_CachedRuneLocale;
      xlocale_retain(__setrunelocale_CachedRuneLocale);
      if (a2 == __global_locale)
      {
        _CurrentRuneLocale = *(a2[166] + 120);
        __mb_cur_max = *(a2[166] + 64);
        __mb_sb_limit = *(a2[166] + 68);
      }

      os_unfair_lock_unlock(&__setrunelocale_cache_lock);
      return 0;
    }

    else
    {
      os_unfair_lock_unlock(&__setrunelocale_cache_lock);
      strcpy(__dst, a1);
      strcat(__dst, "/LC_CTYPE");
      v2 = __open_path_locale(__dst);
      v9 = fdopen_DARWIN_EXTSN(v2, "r");
      if (v9)
      {
        RuneMagi = _Read_RuneMagi(v9);
        if (RuneMagi)
        {
          fclose(v9);
          *(RuneMagi + 9) = 0;
          *(RuneMagi + 10) = 0;
          *(RuneMagi + 11) = __mbsnrtowcs_std;
          *(RuneMagi + 12) = 0;
          *(RuneMagi + 13) = __wcsnrtombs_std;
          v7 = *(RuneMagi + 15);
          *(v7 + 48) = 0;
          *(v7 + 40) = 0;
          if (!strcmp((v7 + 8), "NONE:US-ASCII") || !strcmp((v7 + 8), "ASCII"))
          {
            v6 = _ascii_init(RuneMagi);
          }

          else if (!strncmp((v7 + 8), "NONE", 4uLL))
          {
            v6 = _none_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "UTF-8"))
          {
            v6 = _UTF8_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "EUC-CN"))
          {
            v6 = _EUC_CN_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "EUC-JP"))
          {
            v6 = _EUC_JP_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "EUC-KR"))
          {
            v6 = _EUC_KR_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "EUC-TW"))
          {
            v6 = _EUC_TW_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "EUC"))
          {
            v6 = _EUC_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "GB18030"))
          {
            v6 = _GB18030_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "GB2312"))
          {
            v6 = _GB2312_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "GBK"))
          {
            v6 = _GBK_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "BIG5"))
          {
            v6 = _BIG5_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "MSKanji"))
          {
            v6 = _MSKanji_init(RuneMagi);
          }

          else if (!strcmp((v7 + 8), "UTF2"))
          {
            v6 = _UTF2_init(RuneMagi);
          }

          else
          {
            v6 = 79;
          }

          if (v6)
          {
            xlocale_release(RuneMagi);
          }

          else
          {
            strcpy(RuneMagi + 16, a1);
            xlocale_release(a2[166]);
            a2[166] = RuneMagi;
            if (a2 == __global_locale)
            {
              _CurrentRuneLocale = *(a2[166] + 120);
              __mb_cur_max = *(a2[166] + 64);
              __mb_sb_limit = *(a2[166] + 68);
            }

            os_unfair_lock_lock(&__setrunelocale_cache_lock);
            xlocale_release(__setrunelocale_CachedRuneLocale);
            __setrunelocale_CachedRuneLocale = RuneMagi;
            xlocale_retain(RuneMagi);
            os_unfair_lock_unlock(&__setrunelocale_cache_lock);
          }

          return v6;
        }

        else
        {
          if (*__error())
          {
            v4 = *__error();
          }

          else
          {
            v4 = 79;
          }

          fclose(v9);
          return v4;
        }
      }

      else if (*__error())
      {
        return *__error();
      }

      else
      {
        return 2;
      }
    }
  }
}

uint64_t __wrap_setrunelocale(const char *a1, void *a2)
{
  v3 = __setrunelocale(a1, a2);
  if (v3)
  {
    *__error() = v3;
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t ___tolower_l(int a1, void *a2)
{
  v6 = a2;
  if (a1 < 0 || a1 == -1)
  {
    return a1;
  }

  else
  {
    if (a2)
    {
      if (a2 == -1)
      {
        v6 = &__global_locale;
      }
    }

    else
    {
      v6 = &__c_locale;
    }

    if (a1 >= 256)
    {
      v4 = *(*(v6[166] + 120) + 3160);
      for (i = *(*(v6[166] + 120) + 3152); i; i >>= 1)
      {
        v3 = &v4[6 * (i >> 1)];
        if (*v3 <= a1 && a1 <= v3[1])
        {
          return (v3[2] + a1 - *v3);
        }

        if (a1 > v3[1])
        {
          v4 = v3 + 6;
          --i;
        }
      }

      return a1;
    }

    else
    {
      return *(*(v6[166] + 120) + 1084 + 4 * a1);
    }
  }
}

uint64_t ___tolower(int a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return ___tolower_l(a1, v2);
  }

  else
  {
    return ___tolower_l(a1, __global_locale);
  }
}

uint64_t ___toupper_l(int a1, void *a2)
{
  v6 = a2;
  if (a1 < 0 || a1 == -1)
  {
    return a1;
  }

  else
  {
    if (a2)
    {
      if (a2 == -1)
      {
        v6 = &__global_locale;
      }
    }

    else
    {
      v6 = &__c_locale;
    }

    if (a1 >= 256)
    {
      v4 = *(*(v6[166] + 120) + 3176);
      for (i = *(*(v6[166] + 120) + 3168); i; i >>= 1)
      {
        v3 = &v4[6 * (i >> 1)];
        if (*v3 <= a1 && a1 <= v3[1])
        {
          return (v3[2] + a1 - *v3);
        }

        if (a1 > v3[1])
        {
          v4 = v3 + 6;
          --i;
        }
      }

      return a1;
    }

    else
    {
      return *(*(v6[166] + 120) + 2108 + 4 * a1);
    }
  }
}

uint64_t ___toupper(int a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return ___toupper_l(a1, v2);
  }

  else
  {
    return ___toupper_l(a1, __global_locale);
  }
}

uint64_t _UTF8_init(uint64_t a1)
{
  *(a1 + 72) = _UTF8_mbrtowc;
  *(a1 + 96) = _UTF8_wcrtomb;
  *(a1 + 80) = _UTF8_mbsinit;
  *(a1 + 88) = _UTF8_mbsnrtowcs;
  *(a1 + 104) = _UTF8_wcsnrtombs;
  *(a1 + 64) = 4;
  *(a1 + 68) = 128;
  return 0;
}

uint64_t _UTF8_mbrtowc(int *a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  v17 = a2;
  v12 = 0;
  if ((*(a4 + 4) & 0x80000000) != 0 || *(a4 + 4) > 4)
  {
    *__error() = 22;
    return -1;
  }

  if (!a2)
  {
    v17 = &unk_C42B5;
    a3 = 1;
    a1 = 0;
  }

  if (!a3)
  {
    return -2;
  }

  if (!*(a4 + 4))
  {
    v14 = *v17;
    if ((v14 & 0xFFFFFF80) == 0)
    {
      if (a1)
      {
        *a1 = v14;
      }

      return v14 != 0;
    }
  }

  if (!*(a4 + 4))
  {
    v15 = *v17;
    if ((v15 & 0x80) == 0)
    {
      v12 = 127;
      v11 = 1;
      v9 = sb_00_00;
      goto LABEL_34;
    }

    if ((v15 & 0xE0) == 0xC0)
    {
      if (*v17 >= 0xC2u)
      {
        v12 = 31;
        v11 = 2;
        v9 = sb_80_BF;
        goto LABEL_34;
      }
    }

    else
    {
      if ((v15 & 0xF0) == 0xE0)
      {
        v12 = 15;
        v11 = 3;
        if (v15 == 224)
        {
          v9 = sb_A0_BF;
        }

        else if (v15 == 237)
        {
          v9 = sb_80_9F;
        }

        else
        {
          v9 = sb_80_BF;
        }

        goto LABEL_34;
      }

      if ((v15 & 0xF8) == 0xF0 && *v17 <= 0xF4u)
      {
        v12 = 7;
        v11 = 4;
        if (v15 == 240)
        {
          v9 = sb_90_BF;
        }

        else if (v15 == 244)
        {
          v9 = sb_80_8F;
        }

        else
        {
          v9 = sb_80_BF;
        }

        goto LABEL_34;
      }
    }

LABEL_32:
    *__error() = 92;
    return -1;
  }

  v11 = *(a4 + 4);
  v9 = *(a4 + 8);
LABEL_34:
  if (*(a4 + 4))
  {
    v10 = *a4;
  }

  else
  {
    v4 = v17++;
    v10 = (*v4 & v12);
  }

  for (i = *(a4 + 4) == 0; ; ++i)
  {
    v8 = v11 >= a3 ? a3 : v11;
    if (i >= v8)
    {
      break;
    }

    if (v9)
    {
      if (*v17 < v9 || *v17 > HIBYTE(v9))
      {
        goto LABEL_32;
      }

      v9 = sb_00_00;
    }

    else if ((*v17 & 0xC0) != 0x80)
    {
      goto LABEL_32;
    }

    v5 = v17++;
    v10 = (v10 << 6) | *v5 & 0x3F;
  }

  if (i >= v11)
  {
    if (a1)
    {
      *a1 = v10;
    }

    *(a4 + 4) = 0;
    if (v10)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a4 + 4) = v11 - i;
    *(a4 + 8) = v9;
    *a4 = v10;
    return -2;
  }
}

uint64_t _UTF8_wcrtomb(_BYTE *a1, int a2, uint64_t a3)
{
  v7 = a2;
  if (*(a3 + 4))
  {
    *__error() = 22;
    return -1;
  }

  if (!a1)
  {
    return 1;
  }

  if ((a2 & 0xFFFFFF80) == 0)
  {
    *a1 = a2;
    return 1;
  }

  if ((a2 & 0xFFFFF800) == 0)
  {
    v6 = -64;
    v4 = 2;
    goto LABEL_17;
  }

  if ((a2 & 0xFFFF0000) == 0)
  {
    if (a2 < 55296 || a2 >= 57344)
    {
      v6 = -32;
      v4 = 3;
      goto LABEL_17;
    }

LABEL_16:
    *__error() = 92;
    return -1;
  }

  if ((a2 & 0xFFE00000) != 0 || a2 >= 1114112)
  {
    goto LABEL_16;
  }

  v6 = -16;
  v4 = 4;
LABEL_17:
  for (i = v4 - 1; i > 0; --i)
  {
    a1[i] = v7 & 0x3F | 0x80;
    v7 >>= 6;
  }

  *a1 = v7 | v6;
  return v4;
}

BOOL _UTF8_mbsinit(uint64_t a1)
{
  v2 = 1;
  if (a1)
  {
    return *(a1 + 4) == 0;
  }

  return v2;
}

uint64_t _UTF8_mbsnrtowcs(int *a1, char **a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v13 = a5;
  v12 = *a2;
  v11 = 0;
  if (a1)
  {
    if (!v17 || !v16 || *(v13 + 4) <= 0 || *v12 <= 0)
    {
      while (1)
      {
        if (!v16--)
        {
          *v18 = v12;
          return v11;
        }

        if (v17 && *v12 > 0)
        {
          *v19 = *v12;
          v9 = 1;
        }

        else
        {
          v9 = _UTF8_mbrtowc(v19, v12, v17, v15);
          switch(v9)
          {
            case -1:
              *v18 = v12;
              return -1;
            case -2:
              *v18 = &v12[v17];
              return v11;
            case 0:
              *v18 = 0;
              return v11;
          }
        }

        v12 += v9;
        v17 -= v9;
        ++v11;
        ++v19;
      }
    }
  }

  else if (!v17 || *(v13 + 4) <= 0 || *v12 <= 0)
  {
    while (1)
    {
      if (v17 && *v12 > 0)
      {
        v8 = 1;
      }

      else
      {
        v8 = _UTF8_mbrtowc(&v10, v12, v17, v15);
        if (v8 == -1)
        {
          return -1;
        }

        if (!v8 || v8 == -2)
        {
          return v11;
        }
      }

      v12 += v8;
      v17 -= v8;
      ++v11;
    }
  }

  *__error() = 92;
  return -1;
}

uint64_t _UTF8_wcsnrtombs(char *a1, int **a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
  v16 = a5;
  if (*(a5 + 4))
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    v14 = *v21;
    v13 = 0;
    if (v22)
    {
      while (1)
      {
        v10 = 0;
        if (v19)
        {
          v7 = v20--;
          v10 = v7 != 0;
        }

        if (!v10)
        {
          break;
        }

        if (*v14 >= 0x80)
        {
          if (v19 > 4)
          {
            __na = _UTF8_wcrtomb(v22, *v14, v18);
            if (__na == -1)
            {
              *v21 = v14;
              return -1;
            }
          }

          else
          {
            v8 = _UTF8_wcrtomb(__src, *v14, v18);
            __na = v8;
            if (v8 == -1)
            {
              *v21 = v14;
              return -1;
            }

            if (v8 > v19)
            {
              break;
            }

            memcpy(v22, __src, v8);
          }
        }

        else
        {
          __na = 1;
          *v22 = *v14;
        }

        if (!*v14)
        {
          *v21 = 0;
          return v13 + __na - 1;
        }

        ++v14;
        v22 += __na;
        v19 -= __na;
        v13 += __na;
      }

      *v21 = v14;
      return v13;
    }

    else
    {
      while (v20--)
      {
        if (*v14 >= 0x80)
        {
          __n = _UTF8_wcrtomb(__src, *v14, v18);
          if (__n == -1)
          {
            return -1;
          }
        }

        else
        {
          __n = 1;
        }

        if (!*v14)
        {
          return v13 + __n - 1;
        }

        ++v14;
        v13 += __n;
      }

      return v13;
    }
  }
}

size_t wcrtomb_l(char *a1, __int32 a2, mbstate_t *a3, locale_t a4)
{
  v6 = a3;
  v5 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v5 = &__global_locale;
    }
  }

  else
  {
    v5 = &__c_locale;
  }

  if (!a3)
  {
    v6 = (v5 + 784);
  }

  return (*(*(v5 + 166) + 96))(a1, a2, v6, v5);
}

size_t wcrtomb(char *a1, __int32 a2, mbstate_t *a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return wcrtomb_l(a1, a2, a3, v4);
  }

  else
  {
    return wcrtomb_l(a1, a2, a3, __global_locale);
  }
}

size_t wcsftime_l(__int32 *a1, size_t a2, const __int32 *a3, const tm *a4, locale_t a5)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  memset(&__b, 0, sizeof(__b));
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (v14)
  {
    if (v14 == -1)
    {
      v14 = __global_locale;
    }
  }

  else
  {
    v14 = &__c_locale;
  }

  v13 = 0;
  v12 = 0;
  memcpy(&__b, &wcsftime_l_initial, sizeof(__b));
  v10 = v16;
  v8 = wcsrtombs_l(0, &v10, 0, &__b, v14);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v12 = malloc_type_malloc();
  if (!v12)
  {
    goto LABEL_16;
  }

  memcpy(&__b, &wcsftime_l_initial, sizeof(__b));
  wcsrtombs_l(v12, &v10, v8 + 1, &__b, v14);
  if (0xFFFFFFFFFFFFFFFFLL / *(*(v14 + 166) + 64) <= v17)
  {
    *__error() = 22;
LABEL_16:
    v7 = *__error();
    free(v12);
    free(v13);
    *__error() = v7;
    return 0;
  }

  v5 = *(*(v14 + 166) + 64);
  v13 = malloc_type_malloc();
  if (!v13)
  {
    goto LABEL_16;
  }

  if (!strftime_l(v13, v17, v12, v15, v14))
  {
    goto LABEL_16;
  }

  v11 = v13;
  memcpy(&__b, &wcsftime_l_initial, sizeof(__b));
  v9 = mbsrtowcs_l(v18, &v11, v17, &__b, v14);
  if (v9 == -2 || v9 == -1 || v11)
  {
    goto LABEL_16;
  }

  free(v12);
  free(v13);
  return v9;
}

size_t wcsftime(__int32 *a1, size_t a2, const __int32 *a3, const tm *a4)
{
  v6 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v5)
  {
    return wcsftime_l(a1, a2, a3, a4, v5);
  }

  else
  {
    return wcsftime_l(a1, a2, a3, a4, __global_locale);
  }
}

size_t wcsnrtombs_l(char *a1, const __int32 **a2, size_t a3, size_t a4, mbstate_t *a5, locale_t a6)
{
  v8 = a5;
  v7 = a6;
  if (a6)
  {
    if (a6 == -1)
    {
      v7 = &__global_locale;
    }
  }

  else
  {
    v7 = &__c_locale;
  }

  if (!a5)
  {
    v8 = (v7 + 912);
  }

  return (*(*(v7 + 166) + 104))(a1, a2, a3, a4, v8, v7);
}

size_t wcsnrtombs(char *a1, const __int32 **a2, size_t a3, size_t a4, mbstate_t *a5)
{
  v7 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
  if (v6)
  {
    return wcsnrtombs_l(a1, a2, a3, a4, a5, v6);
  }

  else
  {
    return wcsnrtombs_l(a1, a2, a3, a4, a5, __global_locale);
  }
}

uint64_t __wcsnrtombs_std(void *a1, _DWORD **a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  __dst = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  __src = a5;
  v18 = a6;
  memset(__b, 0, sizeof(__b));
  v12 = *(v18 + 1328);
  v11 = *(v12 + 96);
  v10 = *(v12 + 64);
  v16 = *v22;
  v15 = 0;
  if (__dst)
  {
    while (1)
    {
      v9 = 0;
      if (v20)
      {
        v7 = v21--;
        v9 = v7 != 0;
      }

      if (!v9)
      {
        break;
      }

      if (v20 <= v10)
      {
        memcpy(__b, __src, sizeof(__b));
        __na = v11(v17, *v16, __src, v18);
        if (__na == -1)
        {
          *v22 = v16;
          return -1;
        }

        if (__na > v20)
        {
          memcpy(__src, __b, 0x80uLL);
          break;
        }

        memcpy(__dst, v17, __na);
      }

      else
      {
        __na = v11(__dst, *v16, __src, v18);
        if (__na == -1)
        {
          *v22 = v16;
          return -1;
        }
      }

      if (!*v16)
      {
        *v22 = 0;
        return v15 + __na - 1;
      }

      ++v16;
      __dst = __dst + __na;
      v20 -= __na;
      v15 += __na;
    }

    *v22 = v16;
    return v15;
  }

  else
  {
    while (v21--)
    {
      __n = v11(v17, *v16, __src, v18);
      if (__n == -1)
      {
        return -1;
      }

      if (!*v16)
      {
        return v15 + __n - 1;
      }

      ++v16;
      v15 += __n;
    }

    return v15;
  }
}

size_t wcsrtombs_l(char *a1, const __int32 **a2, size_t a3, mbstate_t *a4, locale_t a5)
{
  v7 = a4;
  v6 = a5;
  if (a5)
  {
    if (a5 == -1)
    {
      v6 = &__global_locale;
    }
  }

  else
  {
    v6 = &__c_locale;
  }

  if (!a4)
  {
    v7 = (v6 + 1040);
  }

  return (*(*(v6 + 166) + 104))(a1, a2, -1, a3, v7, v6);
}

size_t wcsrtombs(char *a1, const __int32 **a2, size_t a3, mbstate_t *a4)
{
  v6 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v5)
  {
    return wcsrtombs_l(a1, a2, a3, a4, v5);
  }

  else
  {
    return wcsrtombs_l(a1, a2, a3, a4, __global_locale);
  }
}

size_t __wcs_end_offset(const char *a1, uint64_t a2, _xlocale *a3)
{
  __little = localeconv_l(a3)->decimal_point;
  __len = a2 - a1;
  if (strnstr(a1, __little, a2 - a1))
  {
    __len -= strlen(__little) - 1;
  }

  return __len;
}

double wcstod_l(const __int32 *a1, __int32 **a2, locale_t a3)
{
  v15 = &v34;
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v16 = 0u;
  memset(&v36, 0, sizeof(v36));
  v27 = 0.0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v32 = 0;
  v33 = __locale_key;
  v34 = __locale_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v32 = *(StatusReg + 8 * v34);
  if (v32)
  {
    v14 = v32;
  }

  else
  {
    v14 = __global_locale;
  }

  v3 = (*(v14[166] + 64) + 1);
  v21 = &v8;
  v13 = &v8 - ((v3 + 15) & 0x1FFFFFFF0);
  v20 = v3;
  v19 = v30;
  v18 = 0;
  if (v28)
  {
    if (v28 == -1)
    {
      v28 = __global_locale;
    }
  }

  else
  {
    v28 = &__c_locale;
  }

  v23 = __numeric_ctype(v28);
  while (iswspace_l(*v30, v23))
  {
    ++v30;
  }

  v22 = _simple_salloc();
  if (v22)
  {
    v4 = v15;
    v18 = v30;
    v12 = 0u;
    *(v15 + 8) = 0u;
    *(v4 + 7) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 1) = 0u;
    while (1)
    {
      v5 = *v30;
      v11 = 0;
      if (v5)
      {
        v24 = wcrtomb_l(v13, *v30, &v36, v23);
        v11 = v24 != -1;
      }

      if (!v11)
      {
        break;
      }

      v13[v24] = 0;
      if ((_simple_sappend() & 0x80000000) != 0)
      {
        _simple_sfree();
        v31 = 0.0;
        v17 = 1;
        return v31;
      }

      ++v30;
    }

    v26 = _simple_string();
    v27 = strtod_l(v26, &v25, v28);
    if (v29)
    {
      if (v25 == v26)
      {
        v10 = v19;
      }

      else
      {
        v9 = v18;
        v6 = __wcs_end_offset(v26, v25, v28);
        v10 = &v9[v6];
      }

      *v29 = v10;
    }

    _simple_sfree();
    v31 = v27;
    v17 = 1;
  }

  else
  {
    v31 = 0.0;
    v17 = 1;
  }

  return v31;
}

double wcstod(const __int32 *a1, __int32 **a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return wcstod_l(a1, a2, v3);
  }

  else
  {
    return wcstod_l(a1, a2, __global_locale);
  }
}

float wcstof_l(const __int32 *a1, __int32 **a2, locale_t a3)
{
  v15 = &v34;
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v16 = 0u;
  memset(&v36, 0, sizeof(v36));
  v27 = 0.0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v32 = 0;
  v33 = __locale_key;
  v34 = __locale_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v32 = *(StatusReg + 8 * v34);
  if (v32)
  {
    v14 = v32;
  }

  else
  {
    v14 = __global_locale;
  }

  v3 = (*(v14[166] + 64) + 1);
  v21 = &v8;
  v13 = &v8 - ((v3 + 15) & 0x1FFFFFFF0);
  v20 = v3;
  v19 = v30;
  v18 = 0;
  if (v28)
  {
    if (v28 == -1)
    {
      v28 = __global_locale;
    }
  }

  else
  {
    v28 = &__c_locale;
  }

  v23 = __numeric_ctype(v28);
  while (iswspace_l(*v30, v23))
  {
    ++v30;
  }

  v22 = _simple_salloc();
  if (v22)
  {
    v4 = v15;
    v18 = v30;
    v12 = 0u;
    *(v15 + 8) = 0u;
    *(v4 + 7) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 1) = 0u;
    while (1)
    {
      v5 = *v30;
      v11 = 0;
      if (v5)
      {
        v24 = wcrtomb_l(v13, *v30, &v36, v23);
        v11 = v24 != -1;
      }

      if (!v11)
      {
        break;
      }

      v13[v24] = 0;
      if ((_simple_sappend() & 0x80000000) != 0)
      {
        _simple_sfree();
        v31 = 0.0;
        v17 = 1;
        return v31;
      }

      ++v30;
    }

    v26 = _simple_string();
    v27 = strtof_l(v26, &v25, v28);
    if (v29)
    {
      if (v25 == v26)
      {
        v10 = v19;
      }

      else
      {
        v9 = v18;
        v6 = __wcs_end_offset(v26, v25, v28);
        v10 = &v9[v6];
      }

      *v29 = v10;
    }

    _simple_sfree();
    v31 = v27;
    v17 = 1;
  }

  else
  {
    v31 = 0.0;
    v17 = 1;
  }

  return v31;
}

float wcstof(const __int32 *a1, __int32 **a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return wcstof_l(a1, a2, v3);
  }

  else
  {
    return wcstof_l(a1, a2, __global_locale);
  }
}

intmax_t wcstoimax_l(const __int32 *nptr, __int32 **endptr, int base, locale_t a4)
{
  v21 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v21 = __global_locale;
    }
  }

  else
  {
    v21 = &__c_locale;
  }

  v20 = nptr;
  do
  {
    v4 = v20++;
    v17 = *v4;
  }

  while (iswspace_l(*v4, v21));
  if (v17 == 45)
  {
    v15 = 1;
    v5 = v20++;
    v17 = *v5;
  }

  else
  {
    v15 = 0;
    if (v17 == 43)
    {
      v6 = v20++;
      v17 = *v6;
    }
  }

  if ((!base || base == 16) && v17 == 48 && (*v20 == 120 || *v20 == 88))
  {
    v17 = v20[1];
    v20 += 2;
    base = 16;
  }

  if (!base)
  {
    if (v17 == 48)
    {
      v7 = 8;
    }

    else
    {
      v7 = 10;
    }

    base = v7;
  }

  v14 = 0;
  v19 = 0;
  if (base < 2 || base > 36)
  {
    goto LABEL_51;
  }

  v8 = 0x8000000000000000;
  if (!v15)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v8 % base;
  v16 = v8 / base;
  while (1)
  {
    if (v17 >= 48 && v17 <= 57)
    {
      v18 = v17 - 48;
      goto LABEL_38;
    }

    if (v17 >= 65 && v17 <= 90)
    {
      v18 = v17 - 55;
      goto LABEL_38;
    }

    if (v17 < 97 || v17 > 122)
    {
      break;
    }

    v18 = v17 - 87;
LABEL_38:
    if (v18 >= base)
    {
      break;
    }

    if (v14 < 0 || v19 > v16 || v19 == v16 && v18 > v13)
    {
      v14 = -1;
    }

    else
    {
      v14 = 1;
      v19 = v19 * base + v18;
    }

    v9 = v20++;
    v17 = *v9;
  }

  if (v14 < 0)
  {
    v10 = 0x8000000000000000;
    if (!v15)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = v10;
    *__error() = 34;
    goto LABEL_54;
  }

  if (!v14)
  {
LABEL_51:
    *__error() = 22;
    goto LABEL_54;
  }

  if (v15)
  {
    v19 = -v19;
  }

LABEL_54:
  if (endptr)
  {
    if (v14)
    {
      v12 = (v20 - 1);
    }

    else
    {
      v12 = nptr;
    }

    *endptr = v12;
  }

  return v19;
}

intmax_t wcstoimax(const __int32 *__nptr, __int32 **__endptr, int __base)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return wcstoimax_l(__nptr, __endptr, __base, v4);
  }

  else
  {
    return wcstoimax_l(__nptr, __endptr, __base, __global_locale);
  }
}

uint64_t wcstol_l(const __int32 *a1, __int32 **a2, int a3, locale_t a4)
{
  v21 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v21 = __global_locale;
    }
  }

  else
  {
    v21 = &__c_locale;
  }

  v20 = a1;
  do
  {
    v4 = v20++;
    v17 = *v4;
  }

  while (iswspace_l(*v4, v21));
  if (v17 == 45)
  {
    v15 = 1;
    v5 = v20++;
    v17 = *v5;
  }

  else
  {
    v15 = 0;
    if (v17 == 43)
    {
      v6 = v20++;
      v17 = *v6;
    }
  }

  if ((!a3 || a3 == 16) && v17 == 48 && (*v20 == 120 || *v20 == 88))
  {
    v17 = v20[1];
    v20 += 2;
    a3 = 16;
  }

  if (!a3)
  {
    if (v17 == 48)
    {
      v7 = 8;
    }

    else
    {
      v7 = 10;
    }

    a3 = v7;
  }

  v14 = 0;
  v19 = 0;
  if (a3 < 2 || a3 > 36)
  {
    goto LABEL_51;
  }

  v8 = 0x8000000000000000;
  if (!v15)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v8 % a3;
  v16 = v8 / a3;
  while (1)
  {
    if (v17 >= 48 && v17 <= 57)
    {
      v18 = v17 - 48;
      goto LABEL_38;
    }

    if (v17 >= 65 && v17 <= 90)
    {
      v18 = v17 - 55;
      goto LABEL_38;
    }

    if (v17 < 97 || v17 > 122)
    {
      break;
    }

    v18 = v17 - 87;
LABEL_38:
    if (v18 >= a3)
    {
      break;
    }

    if (v14 < 0 || v19 > v16 || v19 == v16 && v18 > v13)
    {
      v14 = -1;
    }

    else
    {
      v14 = 1;
      v19 = v19 * a3 + v18;
    }

    v9 = v20++;
    v17 = *v9;
  }

  if (v14 < 0)
  {
    v10 = 0x8000000000000000;
    if (!v15)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = v10;
    *__error() = 34;
    goto LABEL_54;
  }

  if (!v14)
  {
LABEL_51:
    *__error() = 22;
    goto LABEL_54;
  }

  if (v15)
  {
    v19 = -v19;
  }

LABEL_54:
  if (a2)
  {
    if (v14)
    {
      v12 = (v20 - 1);
    }

    else
    {
      v12 = a1;
    }

    *a2 = v12;
  }

  return v19;
}

uint64_t wcstol(const __int32 *a1, __int32 **a2, int a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return wcstol_l(a1, a2, a3, v4);
  }

  else
  {
    return wcstol_l(a1, a2, a3, __global_locale);
  }
}

long double wcstold_l(const __int32 *a1, __int32 **a2, locale_t a3)
{
  v15 = &v34;
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v16 = 0u;
  memset(&v36, 0, sizeof(v36));
  v27 = 0.0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v32 = 0;
  v33 = __locale_key;
  v34 = __locale_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v32 = *(StatusReg + 8 * v34);
  if (v32)
  {
    v14 = v32;
  }

  else
  {
    v14 = __global_locale;
  }

  v3 = (*(v14[166] + 64) + 1);
  v21 = &v8;
  v13 = &v8 - ((v3 + 15) & 0x1FFFFFFF0);
  v20 = v3;
  v19 = v30;
  v18 = 0;
  if (v28)
  {
    if (v28 == -1)
    {
      v28 = __global_locale;
    }
  }

  else
  {
    v28 = &__c_locale;
  }

  v23 = __numeric_ctype(v28);
  while (iswspace_l(*v30, v23))
  {
    ++v30;
  }

  v22 = _simple_salloc();
  if (v22)
  {
    v4 = v15;
    v18 = v30;
    v12 = 0u;
    *(v15 + 8) = 0u;
    *(v4 + 7) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 1) = 0u;
    while (1)
    {
      v5 = *v30;
      v11 = 0;
      if (v5)
      {
        v24 = wcrtomb_l(v13, *v30, &v36, v23);
        v11 = v24 != -1;
      }

      if (!v11)
      {
        break;
      }

      v13[v24] = 0;
      if ((_simple_sappend() & 0x80000000) != 0)
      {
        _simple_sfree();
        v31 = 0.0;
        v17 = 1;
        return v31;
      }

      ++v30;
    }

    v26 = _simple_string();
    v27 = strtold_l(v26, &v25, v28);
    if (v29)
    {
      if (v25 == v26)
      {
        v10 = v19;
      }

      else
      {
        v9 = v18;
        v6 = __wcs_end_offset(v26, v25, v28);
        v10 = &v9[v6];
      }

      *v29 = v10;
    }

    _simple_sfree();
    v31 = v27;
    v17 = 1;
  }

  else
  {
    v31 = 0.0;
    v17 = 1;
  }

  return v31;
}

long double wcstold(const __int32 *a1, __int32 **a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return wcstold_l(a1, a2, v3);
  }

  else
  {
    return wcstold_l(a1, a2, __global_locale);
  }
}

uint64_t wcstoll_l(const __int32 *a1, __int32 **a2, int a3, locale_t a4)
{
  v21 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v21 = __global_locale;
    }
  }

  else
  {
    v21 = &__c_locale;
  }

  v20 = a1;
  do
  {
    v4 = v20++;
    v17 = *v4;
  }

  while (iswspace_l(*v4, v21));
  if (v17 == 45)
  {
    v15 = 1;
    v5 = v20++;
    v17 = *v5;
  }

  else
  {
    v15 = 0;
    if (v17 == 43)
    {
      v6 = v20++;
      v17 = *v6;
    }
  }

  if ((!a3 || a3 == 16) && v17 == 48 && (*v20 == 120 || *v20 == 88))
  {
    v17 = v20[1];
    v20 += 2;
    a3 = 16;
  }

  if (!a3)
  {
    if (v17 == 48)
    {
      v7 = 8;
    }

    else
    {
      v7 = 10;
    }

    a3 = v7;
  }

  v14 = 0;
  v19 = 0;
  if (a3 < 2 || a3 > 36)
  {
    goto LABEL_51;
  }

  v8 = 0x8000000000000000;
  if (!v15)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v8 % a3;
  v16 = v8 / a3;
  while (1)
  {
    if (v17 >= 48 && v17 <= 57)
    {
      v18 = v17 - 48;
      goto LABEL_38;
    }

    if (v17 >= 65 && v17 <= 90)
    {
      v18 = v17 - 55;
      goto LABEL_38;
    }

    if (v17 < 97 || v17 > 122)
    {
      break;
    }

    v18 = v17 - 87;
LABEL_38:
    if (v18 >= a3)
    {
      break;
    }

    if (v14 < 0 || v19 > v16 || v19 == v16 && v18 > v13)
    {
      v14 = -1;
    }

    else
    {
      v14 = 1;
      v19 = v19 * a3 + v18;
    }

    v9 = v20++;
    v17 = *v9;
  }

  if (v14 < 0)
  {
    v10 = 0x8000000000000000;
    if (!v15)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = v10;
    *__error() = 34;
    goto LABEL_54;
  }

  if (!v14)
  {
LABEL_51:
    *__error() = 22;
    goto LABEL_54;
  }

  if (v15)
  {
    v19 = -v19;
  }

LABEL_54:
  if (a2)
  {
    if (v14)
    {
      v12 = (v20 - 1);
    }

    else
    {
      v12 = a1;
    }

    *a2 = v12;
  }

  return v19;
}

uint64_t wcstoll(const __int32 *a1, __int32 **a2, int a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return wcstoll_l(a1, a2, a3, v4);
  }

  else
  {
    return wcstoll_l(a1, a2, a3, __global_locale);
  }
}

size_t wcstombs_l(char *a1, const __int32 *a2, size_t a3, locale_t a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  memset(__b, 0, sizeof(__b));
  v5 = 0;
  if (v6)
  {
    if (v6 == -1)
    {
      v6 = __global_locale;
    }
  }

  else
  {
    v6 = &__c_locale;
  }

  memcpy(__b, &wcstombs_l_initial, sizeof(__b));
  v5 = v8;
  return (*(*(v6 + 166) + 104))(v9, &v5, -1, v7, __b, v6);
}

size_t wcstombs(char *a1, const __int32 *a2, size_t a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return wcstombs_l(a1, a2, a3, v4);
  }

  else
  {
    return wcstombs_l(a1, a2, a3, __global_locale);
  }
}

unint64_t wcstoul_l(const __int32 *a1, __int32 **a2, int a3, locale_t a4)
{
  v18 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v18 = __global_locale;
    }
  }

  else
  {
    v18 = &__c_locale;
  }

  v17 = a1;
  do
  {
    v4 = v17++;
    v14 = *v4;
  }

  while (iswspace_l(*v4, v18));
  if (v14 == 45)
  {
    v12 = 1;
    v5 = v17++;
    v14 = *v5;
  }

  else
  {
    v12 = 0;
    if (v14 == 43)
    {
      v6 = v17++;
      v14 = *v6;
    }
  }

  if ((!a3 || a3 == 16) && v14 == 48 && (*v17 == 120 || *v17 == 88))
  {
    v14 = v17[1];
    v17 += 2;
    a3 = 16;
  }

  if (!a3)
  {
    if (v14 == 48)
    {
      v7 = 8;
    }

    else
    {
      v7 = 10;
    }

    a3 = v7;
  }

  v11 = 0;
  v16 = 0;
  if (a3 < 2 || a3 > 36)
  {
    goto LABEL_47;
  }

  v13 = 0xFFFFFFFFFFFFFFFFLL / a3;
  while (1)
  {
    if (v14 >= 48 && v14 <= 57)
    {
      v15 = v14 - 48;
      goto LABEL_36;
    }

    if (v14 >= 65 && v14 <= 90)
    {
      v15 = v14 - 55;
      goto LABEL_36;
    }

    if (v14 < 97 || v14 > 122)
    {
      break;
    }

    v15 = v14 - 87;
LABEL_36:
    if (v15 >= a3)
    {
      break;
    }

    if (v11 < 0 || v16 > v13 || v16 == v13 && v15 > (0xFFFFFFFFFFFFFFFFLL % a3))
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
      v16 = v16 * a3 + v15;
    }

    v8 = v17++;
    v14 = *v8;
  }

  if (v11 < 0)
  {
    v16 = -1;
    *__error() = 34;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12)
    {
      v16 = -v16;
    }
  }

  else
  {
LABEL_47:
    *__error() = 22;
  }

LABEL_50:
  if (a2)
  {
    if (v11)
    {
      v10 = (v17 - 1);
    }

    else
    {
      v10 = a1;
    }

    *a2 = v10;
  }

  return v16;
}

unint64_t wcstoul(const __int32 *a1, __int32 **a2, int a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return wcstoul_l(a1, a2, a3, v4);
  }

  else
  {
    return wcstoul_l(a1, a2, a3, __global_locale);
  }
}

unint64_t wcstoull_l(const __int32 *a1, __int32 **a2, int a3, locale_t a4)
{
  v18 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v18 = __global_locale;
    }
  }

  else
  {
    v18 = &__c_locale;
  }

  v17 = a1;
  do
  {
    v4 = v17++;
    v14 = *v4;
  }

  while (iswspace_l(*v4, v18));
  if (v14 == 45)
  {
    v12 = 1;
    v5 = v17++;
    v14 = *v5;
  }

  else
  {
    v12 = 0;
    if (v14 == 43)
    {
      v6 = v17++;
      v14 = *v6;
    }
  }

  if ((!a3 || a3 == 16) && v14 == 48 && (*v17 == 120 || *v17 == 88))
  {
    v14 = v17[1];
    v17 += 2;
    a3 = 16;
  }

  if (!a3)
  {
    if (v14 == 48)
    {
      v7 = 8;
    }

    else
    {
      v7 = 10;
    }

    a3 = v7;
  }

  v11 = 0;
  v16 = 0;
  if (a3 < 2 || a3 > 36)
  {
    goto LABEL_47;
  }

  v13 = 0xFFFFFFFFFFFFFFFFLL / a3;
  while (1)
  {
    if (v14 >= 48 && v14 <= 57)
    {
      v15 = v14 - 48;
      goto LABEL_36;
    }

    if (v14 >= 65 && v14 <= 90)
    {
      v15 = v14 - 55;
      goto LABEL_36;
    }

    if (v14 < 97 || v14 > 122)
    {
      break;
    }

    v15 = v14 - 87;
LABEL_36:
    if (v15 >= a3)
    {
      break;
    }

    if (v11 < 0 || v16 > v13 || v16 == v13 && v15 > (0xFFFFFFFFFFFFFFFFLL % a3))
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
      v16 = v16 * a3 + v15;
    }

    v8 = v17++;
    v14 = *v8;
  }

  if (v11 < 0)
  {
    v16 = -1;
    *__error() = 34;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12)
    {
      v16 = -v16;
    }
  }

  else
  {
LABEL_47:
    *__error() = 22;
  }

LABEL_50:
  if (a2)
  {
    if (v11)
    {
      v10 = (v17 - 1);
    }

    else
    {
      v10 = a1;
    }

    *a2 = v10;
  }

  return v16;
}

unint64_t wcstoull(const __int32 *a1, __int32 **a2, int a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return wcstoull_l(a1, a2, a3, v4);
  }

  else
  {
    return wcstoull_l(a1, a2, a3, __global_locale);
  }
}

uintmax_t wcstoumax_l(const __int32 *nptr, __int32 **endptr, int base, locale_t a4)
{
  v18 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v18 = __global_locale;
    }
  }

  else
  {
    v18 = &__c_locale;
  }

  v17 = nptr;
  do
  {
    v4 = v17++;
    v14 = *v4;
  }

  while (iswspace_l(*v4, v18));
  if (v14 == 45)
  {
    v12 = 1;
    v5 = v17++;
    v14 = *v5;
  }

  else
  {
    v12 = 0;
    if (v14 == 43)
    {
      v6 = v17++;
      v14 = *v6;
    }
  }

  if ((!base || base == 16) && v14 == 48 && (*v17 == 120 || *v17 == 88))
  {
    v14 = v17[1];
    v17 += 2;
    base = 16;
  }

  if (!base)
  {
    if (v14 == 48)
    {
      v7 = 8;
    }

    else
    {
      v7 = 10;
    }

    base = v7;
  }

  v11 = 0;
  v16 = 0;
  if (base < 2 || base > 36)
  {
    goto LABEL_47;
  }

  v13 = 0xFFFFFFFFFFFFFFFFLL / base;
  while (1)
  {
    if (v14 >= 48 && v14 <= 57)
    {
      v15 = v14 - 48;
      goto LABEL_36;
    }

    if (v14 >= 65 && v14 <= 90)
    {
      v15 = v14 - 55;
      goto LABEL_36;
    }

    if (v14 < 97 || v14 > 122)
    {
      break;
    }

    v15 = v14 - 87;
LABEL_36:
    if (v15 >= base)
    {
      break;
    }

    if (v11 < 0 || v16 > v13 || v16 == v13 && v15 > (0xFFFFFFFFFFFFFFFFLL % base))
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
      v16 = v16 * base + v15;
    }

    v8 = v17++;
    v14 = *v8;
  }

  if (v11 < 0)
  {
    v16 = -1;
    *__error() = 34;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12)
    {
      v16 = -v16;
    }
  }

  else
  {
LABEL_47:
    *__error() = 22;
  }

LABEL_50:
  if (endptr)
  {
    if (v11)
    {
      v10 = (v17 - 1);
    }

    else
    {
      v10 = nptr;
    }

    *endptr = v10;
  }

  return v16;
}

uintmax_t wcstoumax(const __int32 *__nptr, __int32 **__endptr, int __base)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return wcstoumax_l(__nptr, __endptr, __base, v4);
  }

  else
  {
    return wcstoumax_l(__nptr, __endptr, __base, __global_locale);
  }
}

int wctob_l(wint_t a1, locale_t a2)
{
  v5 = a1;
  v4 = a2;
  memcpy(__b, &wctob_l_initial, sizeof(__b));
  if (v4)
  {
    if (v4 == -1)
    {
      v4 = __global_locale;
    }
  }

  else
  {
    v4 = &__c_locale;
  }

  if (v5 != -1 && (*(*(v4 + 166) + 96))(v3, v5, __b, v4) == 1)
  {
    return v3[0];
  }

  else
  {
    return -1;
  }
}

int wctob(wint_t a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return wctob_l(a1, v2);
  }

  else
  {
    return wctob_l(a1, __global_locale);
  }
}

int wctomb_l(char *a1, __int32 a2, locale_t a3)
{
  v5 = a3;
  if (a3)
  {
    if (a3 == -1)
    {
      v5 = __global_locale;
    }
  }

  else
  {
    v5 = &__c_locale;
  }

  if (a1)
  {
    v4 = (*(*(v5 + 166) + 96))(a1, a2, v5 + 1168, v5);
    if (v4 == -1)
    {
      return -1;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    memcpy(v5 + 1168, &wctomb_l_initial, 0x80uLL);
    return 0;
  }
}

int wctomb(char *a1, __int32 a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return wctomb_l(a1, a2, v3);
  }

  else
  {
    return wctomb_l(a1, a2, __global_locale);
  }
}

wint_t towctrans_l(wint_t a1, wctrans_t a2, locale_t a3)
{
  v5 = a1;
  v4 = a3;
  if (a3)
  {
    if (a3 == -1)
    {
      v4 = __global_locale;
    }
  }

  else
  {
    v4 = &__c_locale;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  if (a2 == 1)
  {
    return towlower_l(a1, v4);
  }

  if (a2 != 2)
  {
LABEL_11:
    *__error() = 22;
    return v5;
  }

  return towupper_l(a1, v4);
}

wint_t towctrans(wint_t a1, wctrans_t a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return towctrans_l(a1, a2, v3);
  }

  else
  {
    return towctrans_l(a1, a2, __global_locale);
  }
}

wctrans_t wctrans(const char *a1)
{
  memcpy(__dst, &off_C8740, sizeof(__dst));
  for (i = 0; ; ++i)
  {
    v2 = 0;
    if (*&__dst[i])
    {
      v2 = strcmp(*&__dst[i], a1) != 0;
    }

    if (!v2)
    {
      break;
    }
  }

  if (!DWORD2(__dst[i]))
  {
    *__error() = 22;
  }

  return DWORD2(__dst[i]);
}

wctype_t wctype_l(const char *a1, locale_t a2)
{
  for (i = 0; ; ++i)
  {
    v4 = 0;
    if ((&wctype_l_props)[2 * i])
    {
      v4 = strcmp((&wctype_l_props)[2 * i], a1) != 0;
    }

    if (!v4)
    {
      break;
    }
  }

  if (LODWORD((&wctype_l_props)[2 * i + 1]))
  {
    return (&wctype_l_props)[2 * i + 1];
  }

  if (a2)
  {
    if (a2 == -1)
    {
      a2 = __global_locale;
    }
  }

  else
  {
    a2 = &__c_locale;
  }

  v8 = *(*(a2 + 166) + 120);
  v7 = *(v8 + 3196);
  if (v7 > 0)
  {
    for (__s1 = *(v8 + 3200); ; __s1 += 20)
    {
      v2 = v7--;
      if (v2 <= 0)
      {
        break;
      }

      if (!strncmp(__s1, a1, 0xEuLL))
      {
        return *(__s1 + 4);
      }
    }
  }

  return 0;
}

wctype_t wctype(const char *a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return wctype_l(a1, v2);
  }

  else
  {
    return wctype_l(a1, __global_locale);
  }
}

int wcwidth(__int32 a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return __wcwidth_l(a1, v2);
  }

  else
  {
    return __wcwidth_l(a1, __global_locale);
  }
}

int wcwidth_l(__int32 a1, locale_t a2)
{
  v3 = a2;
  if (!a2)
  {
    return __wcwidth_l(a1, __c_locale);
  }

  if (a2 == -1)
  {
    v3 = __global_locale;
  }

  return __wcwidth_l(a1, v3);
}

FILE *__cdecl open_memstream(char **__bufp, size_t *__sizep)
{
  if (__bufp && __sizep)
  {
    *__bufp = malloc_type_calloc();
    if (*__bufp)
    {
      v6 = malloc_type_malloc();
      if (v6)
      {
        *v6 = __bufp;
        v6[1] = __sizep;
        v6[2] = 0;
        v6[3] = 0;
        memstream_update(v6);
        v3 = funopen(v6, 0, memstream_write, memstream_seek, memstream_close);
        if (v3)
        {
          fwide(v3, -1);
          return v3;
        }

        else
        {
          v5 = *__error();
          free(v6);
          free(*__bufp);
          *__bufp = 0;
          *__error() = v5;
          return 0;
        }
      }

      else
      {
        v4 = *__error();
        free(*__bufp);
        *__bufp = 0;
        *__error() = v4;
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *__error() = 22;
    return 0;
  }
}

uint64_t memstream_update(uint64_t result)
{
  v2 = 0;
  if ((*(result + 16) & 0x8000000000000000) == 0)
  {
    v2 = *(result + 24) >= 0;
  }

  if (!v2)
  {
    __assert_rtn("memstream_update", "open_memstream.c", 96, "ms->len >= 0 && ms->offset >= 0");
  }

  if (*(result + 16) < *(result + 24))
  {
    v1 = *(result + 16);
  }

  else
  {
    v1 = *(result + 24);
  }

  **(result + 8) = v1;
  return result;
}

uint64_t memstream_write(uint64_t **a1, const void *a2, int a3)
{
  if (memstream_grow(a1, a1[3] + a3))
  {
    __n = a1[2] - a1[3];
    if (a3 < __n)
    {
      __n = a3;
    }

    memcpy(a1[3] + **a1, a2, __n);
    a1[3] = (a1[3] + __n);
    memstream_update(a1);
    fprintf(__stderrp, "MS: write(%p, %d) = %zd\n", a1, a3, __n);
    return __n;
  }

  else
  {
    return -1;
  }
}

uint64_t memstream_seek(void *a1, uint64_t a2, int a3)
{
  v4 = a1[3];
  if (!a3)
  {
    if (a2 < 0)
    {
      __assert_rtn("memstream_seek", "open_memstream.c", 136, "pos >= 0");
    }

    a1[3] = a2;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    if (a2)
    {
      __assert_rtn("memstream_seek", "open_memstream.c", 141, "pos == 0");
    }

    goto LABEL_18;
  }

  if (a3 != 2)
  {
LABEL_18:
    memstream_update(a1);
    fprintf(__stderrp, "MS: seek(%p, %jd, %d) %jd -> %jd\n", a1, a2, a3, v4, a1[3]);
    return a1[3];
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (0x7FFFFFFFFFFFFFFFLL - a1[2] < a2)
    {
      fprintf(__stderrp, "MS: bad SEEK_END: pos %jd, len %zd\n", a2, a1[2]);
      *__error() = 84;
      return -1;
    }

LABEL_17:
    a1[3] = a1[2] + a2;
    goto LABEL_18;
  }

  if (((a2 + a1[2]) & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

  fprintf(__stderrp, "MS: bad SEEK_END: pos %jd, len %zd\n", a2, a1[2]);
  *__error() = 22;
  return -1;
}

uint64_t memstream_grow(uint64_t **a1, uint64_t a2)
{
  if (a2 < 0 || a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0x7FFFFFFFFFFFFFFELL;
  }

  else
  {
    v7 = a2;
  }

  if (v7 <= a1[2])
  {
    return 1;
  }

  else
  {
    v2 = a1[2];
    if ((v2 * 15) >> 64 == (15 * v2) >> 63)
    {
      v6 = 15 * v2 / 10;
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFELL;
    }

    if (v6 <= v7)
    {
      v5 = v7;
    }

    else
    {
      v5 = v6;
    }

    v3 = **a1;
    v8 = malloc_type_realloc();
    if (v8)
    {
      fprintf(__stderrp, "MS: %p growing from %zd to %zd\n", a1, a1[2], v5);
      bzero(a1[2] + v8 + 1, v5 - a1[2]);
      **a1 = v8;
      a1[2] = v5;
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

void link_addr(const char *a1, sockaddr_dl *a2)
{
  sdl_data = a2->sdl_data;
  v9 = (&a2->sdl_len + a2->sdl_len);
  v8 = 0;
  v7 = 0;
  v6 = 0;
  bzero(&a2->sdl_family, a2->sdl_len - 1);
  a2->sdl_family = 18;
  while (1)
  {
    v7 &= 0xFFFFFFF3;
    if (*a1 < 48 || *a1 > 57)
    {
      if (*a1 < 97 || *a1 > 102)
      {
        if (*a1 < 65 || *a1 > 70)
        {
          if (*a1)
          {
            if (v7 || (*a1 < 65 || *a1 > 90) && (*a1 < 97 || *a1 > 122))
            {
              v7 |= 8u;
            }

            else
            {
              v7 = 12;
            }
          }

          else
          {
            v7 |= 4u;
          }
        }

        else
        {
          v6 = *a1 - 55;
        }
      }

      else
      {
        v6 = *a1 - 87;
      }
    }

    else
    {
      v6 = *a1 - 48;
    }

    ++a1;
    switch(v7)
    {
      case 0:
        goto LABEL_29;
      case 1:
        v7 = 2;
        v8 = v6 + 16 * v8;
        goto LABEL_36;
      case 2:
        v3 = sdl_data++;
        *v3 = v8;
LABEL_32:
        v7 = 1;
        v8 = v6;
        goto LABEL_36;
      case 3:
        goto LABEL_32;
    }

    if (v7 == 6 || v7 == 5)
    {
      break;
    }

    if (v7 == 7)
    {
      goto LABEL_37;
    }

    if (v7 == 8)
    {
      v7 = 3;
      a2->sdl_nlen = sdl_data - (a2 + 8);
      goto LABEL_36;
    }

    if (v7 != 12)
    {
      v7 = 3;
      v4 = sdl_data++;
      *v4 = v8;
      v8 = 0;
      goto LABEL_36;
    }

LABEL_29:
    v2 = sdl_data++;
    *v2 = *(a1 - 1);
LABEL_36:
    if (sdl_data >= v9)
    {
      goto LABEL_37;
    }
  }

  v5 = sdl_data;
  LODWORD(sdl_data) = sdl_data + 1;
  *v5 = v8;
LABEL_37:
  a2->sdl_alen = sdl_data - (a2 + 8 + a2->sdl_nlen);
  if ((sdl_data - a2) > 0x14)
  {
    a2->sdl_len = sdl_data - a2;
  }
}

char *__cdecl link_ntoa(const sockaddr_dl *a1)
{
  v9 = link_ntoa_obuf;
  v7 = &a1->sdl_data[a1->sdl_nlen];
  v6 = &v7[a1->sdl_alen];
  v5 = 1;
  if ((a1->sdl_nlen + 3 * a1->sdl_alen) < 0x40)
  {
    if (a1->sdl_nlen)
    {
      memmove(link_ntoa_obuf, a1->sdl_data, a1->sdl_nlen);
      v9 = &link_ntoa_obuf[a1->sdl_nlen];
      if (a1->sdl_alen)
      {
        ++v9;
        link_ntoa_obuf[a1->sdl_nlen] = 58;
      }
    }

    while (v7 < v6)
    {
      if (v5)
      {
        v5 = 0;
      }

      else
      {
        v1 = v9++;
        *v1 = 46;
      }

      v2 = v7++;
      v8 = *v2;
      if (v8 <= 0xF)
      {
        v3 = v9++;
        *v3 = hexlist[*v2];
      }

      else
      {
        v9[1] = hexlist[v8 & 0xF];
        *v9 = hexlist[v8 >> 4];
        v9 += 2;
      }
    }
  }

  *v9 = 0;
  return link_ntoa_obuf;
}

int sockatmark(int a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (ioctl(a1, 0x40047307uLL, v2) == -1)
  {
    return -1;
  }

  else
  {
    return v2[0];
  }
}

nl_catd catopen(const char *a1, int a2)
{
  __s = a1;
  __size_4 = a2;
  __size = 0;
  v23 = 0;
  v22 = 0;
  __s1 = 0;
  v20 = 0;
  __stringp = 0;
  __dst = 0;
  __source = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  memset(&__b, 0, sizeof(__b));
  if (__s && *__s)
  {
    if (strchr(__s, 47))
    {
      return loadCat(__s);
    }

    if (__size_4 == 1)
    {
      __s1 = querylocale(4, 0);
    }

    else
    {
      __s1 = getenv("LANG");
    }

    if (!__s1 || !*__s1 || strlen(__s1) > 0x1F || *__s1 == 46 && (!__s1[1] || __s1[1] == 46 && !__s1[2]) || strchr(__s1, 47))
    {
      __s1 = "C";
    }

    v16 = strdup(__s1);
    v15 = v16;
    if (!v16)
    {
      return -1;
    }

    __stringp = strchr(v16, 64);
    if (__stringp)
    {
      *__stringp = 0;
    }

    v13 = &unk_C42B5;
    v14 = &unk_C42B5;
    __stringp = strchr(v16, 95);
    if (__stringp)
    {
      v2 = __stringp++;
      *v2 = 0;
      v16 = __stringp;
      v14 = __stringp;
    }

    __stringp = strchr(v16, 46);
    if (__stringp)
    {
      v3 = __stringp++;
      *v3 = 0;
      v13 = __stringp;
    }

    v22 = getenv("NLSPATH");
    if (!v22 || issetugid())
    {
      v22 = "/usr/share/nls/%L/%N.cat:/usr/share/nls/%N/%L:/usr/local/share/nls/%L/%N.cat:/usr/local/share/nls/%N/%L";
    }

    __stringp = strdup(v22);
    v20 = __stringp;
    if (!__stringp)
    {
      v23 = *__error();
      free(v15);
      v11 = v23;
      *__error() = v11;
      return -1;
    }

    while (1)
    {
      v22 = strsep(&__stringp, ":");
      if (!v22)
      {
        free(v15);
        free(v20);
        *__error() = 2;
        return -1;
      }

      __dst = v28;
      if (!*v22)
      {
        break;
      }

      while (*v22)
      {
        if (*v22 == 37)
        {
          v10 = v22[1];
          switch(v10)
          {
            case '%':
              ++v22;
LABEL_48:
              if ((__dst - v28) >= 0x3FF)
              {
                goto LABEL_52;
              }

              v4 = *v22;
              v5 = __dst++;
              *v5 = v4;
              goto LABEL_56;
            case 'L':
              __source = __s1;
              break;
            case 'N':
              __source = __s;
              break;
            case 'c':
              __source = v13;
              break;
            case 'l':
              __source = v15;
              break;
            case 't':
              __source = v14;
              break;
            default:
              goto LABEL_48;
          }

          ++v22;
          goto LABEL_51;
        }

        if ((__dst - v28) >= 0x3FF)
        {
LABEL_52:
          free(v15);
          free(v20);
          *__error() = 63;
          return -1;
        }

        v7 = *v22;
        v8 = __dst++;
        *v8 = v7;
LABEL_56:
        ++v22;
      }

      *__dst = 0;
      if (!stat(v28, &__b))
      {
        free(v15);
        free(v20);
        return loadCat(v28);
      }
    }

    __source = __s;
    --v22;
LABEL_51:
    __size = 1023 - (__dst - v28);
    v6 = strlcpy(__dst, __source, __size);
    if (v6 >= __size)
    {
      goto LABEL_52;
    }

    __dst += strlen(__source);
    goto LABEL_56;
  }

  *__error() = 22;
  return -1;
}

uint64_t loadCat(const char *a1)
{
  *__s1 = 0u;
  v23 = 0u;
  v19 = malloc_type_malloc();
  if (!v19)
  {
    return -1;
  }

  v12 = open_NOCANCEL();
  if (v12 == -1)
  {
    v13 = *__error();
    free(v19);
    *__error() = v13;
    return -1;
  }

  else
  {
    v1 = fdopen(v12, "r");
    *v19 = v1;
    if (v1)
    {
      if (fread(__s1, 0x20uLL, 1uLL, *v19) == 1 && !strncmp(__s1, "*nazgul*", 8uLL))
      {
        if (_OSSwapInt32(*&__s1[8]) == 1)
        {
          if (_OSSwapInt32(DWORD1(v23)))
          {
            *(v19 + 2) = _OSSwapInt32(DWORD1(v23));
            v2 = *(v19 + 2);
            v3 = malloc_type_malloc();
            v19[2] = v3;
            if (v3)
            {
              v16 = _OSSwapInt64(*(&v23 + 1));
              for (i = 0; ; ++i)
              {
                if (i >= *(v19 + 2))
                {
                  return v19;
                }

                if (fseeko(*v19, v16, 0) == -1)
                {
                  break;
                }

                v18 = v19[2] + 40 * i;
                if (fread(v18, 0x28uLL, 1uLL, *v19) != 1)
                {
                  break;
                }

                if (*(v18 + 36))
                {
                  --i;
                }

                else
                {
                  *(v18 + 36) = 1;
                }

                v16 = _OSSwapInt64(*(v18 + 4));
              }

              __nls_free_resources(v19, i);
              fclose(*v19);
              fprintf(__stderrp, "%s: corrupt file.", _errowner);
              free(v19);
              *__error() = 79;
              return -1;
            }

            else
            {
              v15 = *__error();
              fclose(*v19);
              fprintf(__stderrp, "%s: no more memory.", _errowner);
              free(v19);
              *__error() = v15;
              return -1;
            }
          }

          else
          {
            fclose(*v19);
            free(v19);
            v6 = __stderrp;
            v7 = _errowner;
            v5 = _OSSwapInt32(DWORD1(v23));
            fprintf(v6, "%s: %s has %d sets!\n", v7, a1, v5);
            *__error() = 79;
            return -1;
          }
        }

        else
        {
          fclose(*v19);
          free(v19);
          v11 = _OSSwapInt32(*&__s1[8]);
          if (_OSSwapInt32(v11) == 1)
          {
            fprintf(__stderrp, "%s: %s is the wrong byte ordering.\n", _errowner, a1);
          }

          else
          {
            v9 = __stderrp;
            v10 = _errowner;
            v8 = _OSSwapInt32(*&__s1[8]);
            fprintf(v9, "%s: %s is version %d, we need %d.\n", v10, a1, v8, 1);
          }

          *__error() = 79;
          return -1;
        }
      }

      else
      {
        fclose(*v19);
        fprintf(__stderrp, "%s: corrupt file.", _errowner);
        free(v19);
        *__error() = 79;
        return -1;
      }
    }

    else
    {
      v14 = *__error();
      close_NOCANCEL();
      free(v19);
      *__error() = v14;
      return -1;
    }
  }
}

char *__cdecl catgets(nl_catd a1, int a2, int a3, const char *a4)
{
  if (!a1 || a1 == -1)
  {
    return a4;
  }

  v4 = MCGetSet(a1, a2);
  v7 = MCGetMsg(v4, a3);
  if (v7)
  {
    return *(v7 + 1);
  }

  else
  {
    return a4;
  }
}