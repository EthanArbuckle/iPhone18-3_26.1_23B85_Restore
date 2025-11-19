int vfscanf_l(FILE *a1, locale_t a2, const char *a3, va_list a4)
{
  libc_hooks_will_write(a1, 152);
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

  flockfile(a1);
  v5 = __svfscanf_l(a1, a2, a3, a4);
  funlockfile(a1);
  return v5;
}

unsigned __int8 *__sccl(void *a1, unsigned __int8 *a2, _xlocale *a3)
{
  v12 = a2 + 1;
  v10 = *a2;
  if (v10 == 94)
  {
    __c = 1;
    v12 = a2 + 2;
    v10 = a2[1];
    memset(a1, 1, 0x100uLL);
  }

  else
  {
    __c = 0;
    memset(a1, 0, 0x100uLL);
  }

  if (!v10)
  {
    return v12 - 1;
  }

  __ca = 1 - __c;
LABEL_7:
  while (2)
  {
    *(a1 + v10) = __ca;
    while (1)
    {
      v3 = v12++;
      v5 = *v3;
      if (!*v3)
      {
        return v12 - 1;
      }

      if (v5 != 45)
      {
        break;
      }

      v9 = *v12;
      if (v9 == 93)
      {
        goto LABEL_18;
      }

      if (*(*(a3 + 165) + 64))
      {
        if (v9 < v10)
        {
          goto LABEL_18;
        }
      }

      else if ((__collate_range_cmp(v9, v10, a3) & 0x80000000) != 0)
      {
LABEL_18:
        v10 = 45;
        goto LABEL_7;
      }

      ++v12;
      if (*(*(a3 + 165) + 64))
      {
        do
        {
          *(a1 + ++v10) = __ca;
        }

        while (v10 < v9);
      }

      else
      {
        for (i = 0; i < 256; ++i)
        {
          if ((__collate_range_cmp(v10, i, a3) & 0x80000000) != 0 && __collate_range_cmp(i, v9, a3) <= 0)
          {
            *(a1 + i) = __ca;
          }
        }
      }

      v10 = v9;
    }

    if (v5 != 93)
    {
      v10 = *v3;
      continue;
    }

    return v12;
  }
}

uint64_t parsefloat(uint64_t a1, unsigned __int8 **a2, uint64_t a3, _xlocale *a4)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  decimal_point = localeconv_l(a4)->decimal_point;
  v15 = 0;
  v14 = 0;
  if (a3)
  {
    v8 = a3 + 1;
  }

  else
  {
    v8 = 513;
  }

  v11 = v8;
  v13 = __parsefloat_buf(v8);
  if (v13)
  {
    v12 = &v13[v8 - 1];
    v22 = v13 - 1;
    v21 = v13;
    do
    {
LABEL_7:
      v7 = 1;
      if (a3)
      {
        v7 = v21 < v12;
      }

      if (!v7)
      {
        break;
      }

      v17 = **a1;
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
                while (!v18)
                {
                  v18 = 1;
                  if (v17 == 45 || v17 == 43)
                  {
                    goto LABEL_97;
                  }
                }

                if (v18 != 1)
                {
                  break;
                }

                switch(v17)
                {
                  case '0':
                    v18 = 5;
                    v22 = v21;
                    goto LABEL_97;
                  case 'I':
                    goto LABEL_33;
                  case 'N':
                    goto LABEL_34;
                  case 'i':
LABEL_33:
                    v18 = 2;
                    goto LABEL_97;
                  case 'n':
LABEL_34:
                    v18 = 3;
                    goto LABEL_97;
                }

                v18 = 6;
              }

              switch(v18)
              {
                case 2:
                  if (v20 > 6 || v17 != aNfinity[v20] && v17 != aNfinity_0[v20])
                  {
                    goto LABEL_104;
                  }

                  if (v20 == 1 || v20 == 6)
                  {
                    v22 = v21;
                  }

                  ++v20;
                  goto LABEL_97;
                case 3:
                  if (v20)
                  {
                    if (v20 == 1)
                    {
                      if (v17 != 78 && v17 != 110)
                      {
                        goto LABEL_104;
                      }

                      v22 = v21;
                    }

                    else if (v20 == 2)
                    {
                      if (v17 != 40)
                      {
                        goto LABEL_104;
                      }
                    }

                    else if (v17 == 41)
                    {
                      v22 = v21;
                      v18 = 4;
                    }

                    else if (!isalnum_l(v17, a4) && v17 != 95)
                    {
                      goto LABEL_104;
                    }
                  }

                  else if (v17 != 65 && v17 != 97)
                  {
                    goto LABEL_104;
                  }

                  ++v20;
                  goto LABEL_97;
                case 4:
                  goto LABEL_104;
              }

              if (v18 != 5)
              {
                break;
              }

              v18 = 6;
              if (v17 == 88 || v17 == 120)
              {
                v14 = 1;
                goto LABEL_97;
              }

              v15 = 1;
            }

            if (v18 != 6)
            {
              break;
            }

            if ((v14 & 1) != 0 && isxdigit_l(v17, a4) || isdigit_l(v17, a4))
            {
              v15 = 1;
              v22 = v21;
              goto LABEL_97;
            }

            v18 = 7;
          }

          if (v18 != 7)
          {
            break;
          }

          if (v17 == decimal_point[v19])
          {
            if (!decimal_point[++v19])
            {
              v18 = 8;
              if (v15)
              {
                v22 = v21;
              }
            }

            goto LABEL_97;
          }

          if (v19)
          {
            goto LABEL_104;
          }

          v18 = 8;
        }

        if (v18 == 8)
        {
          break;
        }

        if (v18 != 9)
        {
          if (!isdigit_l(v17, a4))
          {
            goto LABEL_104;
          }

          v22 = v21;
          goto LABEL_97;
        }

        v18 = 10;
        if (v17 == 45 || v17 == 43)
        {
          goto LABEL_97;
        }
      }

      if (v17 == 69 || v17 == 101) && (v14 & 1) == 0 || (v17 == 80 || v17 == 112) && (v14)
      {
        if ((v15 & 1) == 0)
        {
          break;
        }

        v18 = 9;
      }

      else
      {
        if (((v14 & 1) == 0 || !isxdigit_l(v17, a4)) && !isdigit_l(v17, a4))
        {
          break;
        }

        v22 = v21;
        v15 = 1;
      }

LABEL_97:
      if (v21 >= v12)
      {
        v10 = v21 - v13;
        v9 = v22 - v13;
        v11 += 513;
        v13 = __parsefloat_buf(v11);
        if (!v13)
        {
          *a2 = 0;
          return 0;
        }

        v12 = &v13[v11 - 1];
        v21 = &v13[v10];
        v22 = &v13[v9];
      }

      v4 = v21++;
      *v4 = v17;
      v5 = *(a1 + 8) - 1;
      *(a1 + 8) = v5;
      if (v5 > 0)
      {
        ++*a1;
        goto LABEL_7;
      }
    }

    while (!__srefill(a1));
LABEL_104:
    while (v22 < --v21)
    {
      __ungetc(*v21, a1);
    }

    v23 = v22 + 1;
    *v23 = 0;
    *a2 = v13;
    return (v23 - v13);
  }

  else
  {
    *a2 = 0;
    return 0;
  }
}

int __svfscanf(FILE *a1, const char *a2, va_list a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return __svfscanf_l(a1, v4, a2, a3);
  }

  else
  {
    return __svfscanf_l(a1, __global_locale, a2, a3);
  }
}

void *__parsefloat_buf(size_t a1)
{
  if (__parsefloat_buf_parsefloat_tsd_key == -1)
  {
    pthread_mutex_lock(&__parsefloat_buf_parsefloat_tsd_lock);
    if (__parsefloat_buf_parsefloat_tsd_key == -1)
    {
      __parsefloat_buf_parsefloat_tsd_key = 15;
      pthread_key_init_np();
    }

    pthread_mutex_unlock(&__parsefloat_buf_parsefloat_tsd_lock);
  }

  __ptr = pthread_getspecific(__parsefloat_buf_parsefloat_tsd_key);
  if (__ptr)
  {
    if (a1 > __parsefloat_buf_bsiz)
    {
      __ptr = reallocf(__ptr, a1);
      pthread_setspecific(__parsefloat_buf_parsefloat_tsd_key, __ptr);
      if (!__ptr)
      {
        __parsefloat_buf_bsiz = 0;
        return 0;
      }

      __parsefloat_buf_bsiz = a1;
    }

    return __ptr;
  }

  if (a1 > 0x201)
  {
    v2 = a1;
  }

  else
  {
    v2 = 513;
  }

  __parsefloat_buf_bsiz = v2;
  __ptra = malloc_type_malloc();
  if (__ptra)
  {
    pthread_setspecific(__parsefloat_buf_parsefloat_tsd_key, __ptra);
    return __ptra;
  }

  else
  {
    __parsefloat_buf_bsiz = 0;
    return 0;
  }
}

int vfwprintf_l(FILE *a1, locale_t a2, const __int32 *a3, __darwin_va_list a4)
{
  v8 = a2;
  if (a2)
  {
    if (a2 == -1)
    {
      v8 = __global_locale;
    }
  }

  else
  {
    v8 = &__c_locale;
  }

  flockfile(a1);
  if ((a1->_flags & 0x1A) != 0xA || a1->_file < 0)
  {
    v5 = __vfwprintf(a1, v8, a3, a4);
  }

  else
  {
    v5 = __sbprintf(a1, v8, a3, a4);
  }

  funlockfile(a1);
  return v5;
}

uint64_t __sbprintf(uint64_t a1, _xlocale *a2, int *a3, _DWORD *a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  memset(__b, 0, sizeof(__b));
  memset(v14, 0, sizeof(v14));
  __b[13] = v14;
  v14[0] = 0;
  memset(v13, 0, sizeof(v13));
  v13[0] = 850045858;
  memcpy(&v14[1], v13, 0x40uLL);
  LOBYTE(v14[9]) &= 0xF8u;
  memset(&v14[10], 0, 0x80uLL);
  LOBYTE(v14[9]) &= ~8u;
  if ((*(v11 + 16) & 8) == 0 || (v5 = 0, !*(v11 + 24)) && (v5 = 0, (*(v11 + 16) & 0x200) == 0))
  {
    v5 = __swsetup(v11) != 0;
  }

  if (v5)
  {
    return -1;
  }

  else
  {
    LOWORD(__b[2]) = *(v11 + 16) & 0xFFFD;
    WORD1(__b[2]) = *(v11 + 18);
    __b[6] = *(v11 + 48);
    __b[10] = *(v11 + 80);
    *(__b[13] + 72) = *(__b[13] + 72) & 0xF8 | ((32 * *(*(v11 + 104) + 72)) >> 5) & 7;
    memcpy((__b[13] + 80), (*(v11 + 104) + 80), 0x80uLL);
    __b[0] = v15;
    __b[3] = v15;
    HIDWORD(__b[1]) = 1024;
    LODWORD(__b[4]) = 1024;
    LODWORD(__b[5]) = 0;
    v7 = __vfwprintf(__b, v10, v9, v8);
    if ((v7 & 0x80000000) == 0 && __fflush(__b))
    {
      v7 = -1;
    }

    if ((__b[2] & 0x40) != 0)
    {
      *(v11 + 16) |= 0x40u;
    }

    return v7;
  }
}

uint64_t __vfwprintf(uint64_t a1, _xlocale *a2, int *a3, _DWORD *a4)
{
  v302 = a1;
  v301 = a2;
  v300 = a3;
  v299 = a4;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  v295 = 0;
  i = 0;
  v293 = 0;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v289 = 0;
  memset(v288, 0, sizeof(v288));
  decpt = 0;
  v286 = 0;
  v285 = 0.0;
  v284 = 0;
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v278 = 0uLL;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v267 = 0;
  memset(v266, 0, sizeof(v266));
  memset(v265, 0, sizeof(v265));
  v264 = 0;
  v263 = 0;
  if ((*(a1 + 16) & 8) == 0 || (v196 = 0, !*(v302 + 24)) && (v196 = 0, (*(v302 + 16) & 0x200) == 0))
  {
    v196 = __swsetup(v302) != 0;
  }

  if (v196)
  {
    *__error() = 9;
    return -1;
  }

  if ((*(*(v302 + 104) + 72) & 7) == 0)
  {
    *(*(v302 + 104) + 72) = *(*(v302 + 104) + 72) & 0xF8 | 1;
  }

  v263 = 0;
  v298 = v300;
  *&v265[4] = 0;
  *v265 = 1;
  v264 = v299;
  io_init(v266, v302);
  v292 = 0;
  decpt = get_decpt(v301);
LABEL_10:
  i = v298;
  while (1)
  {
    v297 = *v298;
    v195 = 0;
    if (v297)
    {
      v195 = v297 != 37;
    }

    if (!v195)
    {
      break;
    }

    ++v298;
  }

  v296 = v298 - i;
  if (v296)
  {
    if (v292 + v296 >= 0x80000000)
    {
      goto LABEL_660;
    }

    if (io_print_0(v266, i, v296, v301))
    {
      goto LABEL_707;
    }

    v292 += v296;
  }

  if (!v297)
  {
LABEL_706:
    io_flush_0(v266, v301);
    goto LABEL_707;
  }

  v277 = v298++;
  v293 = 0;
  v272 = 0;
  v291 = 0;
  v290 = -1;
  *(&v288[0] + 1) = 0;
  v289 = 0;
  v307 = 0;
  v276 = 88;
  while (2)
  {
    v4 = v298++;
    v297 = *v4;
LABEL_23:
    switch(v297)
    {
      case ' ':
        if (!v289)
        {
          v289 = 32;
        }

        continue;
      case '#':
        v293 |= 1u;
        continue;
      case '\'':
        v293 |= 0x200u;
        continue;
      case '*':
        v295 = 0;
        for (i = v298; (*i - 48) <= 9; ++i)
        {
          v295 = 10 * v295 + *i - 48;
        }

        if (*i == 36)
        {
          v262 = *v265;
          if (!*&v265[4])
          {
            *&v265[4] = v305;
            if (__find_warguments(v300, v264, &v265[4]))
            {
              v292 = -1;
              goto LABEL_707;
            }
          }

          *v265 = v295;
          if (*&v265[4])
          {
            v5 = *v265;
            ++*v265;
            v194 = *(*&v265[4] + 16 * v5);
          }

          else
          {
            *v265 = (*v265 + 1);
            v6 = v299;
            v299 += 2;
            v261 = *v6;
            v194 = v261;
          }

          v291 = v194;
          *v265 = v262;
          v298 = ++i;
        }

        else
        {
          if (*&v265[4])
          {
            v7 = *v265;
            ++*v265;
            v193 = *(*&v265[4] + 16 * v7);
          }

          else
          {
            *v265 = (*v265 + 1);
            v8 = v299;
            v299 += 2;
            v260 = *v8;
            v193 = v260;
          }

          v291 = v193;
        }

        if (v291 < 0)
        {
          v291 = -v291;
LABEL_46:
          v293 |= 4u;
        }

        continue;
      case '+':
        v289 = 43;
        continue;
      case ',':
      case ':':
      case ';':
      case '_':
        v276 = v297;
        continue;
      case '-':
        goto LABEL_46;
      case '.':
        v9 = v298++;
        v297 = *v9;
        if (v297 != 42)
        {
          v290 = 0;
          while ((v297 - 48) <= 9)
          {
            v290 = 10 * v290 + v297 - 48;
            v14 = v298++;
            v297 = *v14;
          }

          goto LABEL_23;
        }

        v295 = 0;
        for (i = v298; (*i - 48) <= 9; ++i)
        {
          v295 = 10 * v295 + *i - 48;
        }

        if (*i == 36)
        {
          v259 = *v265;
          if (!*&v265[4])
          {
            *&v265[4] = v305;
            if (__find_warguments(v300, v264, &v265[4]))
            {
              v292 = -1;
              goto LABEL_707;
            }
          }

          *v265 = v295;
          if (*&v265[4])
          {
            v10 = *v265;
            ++*v265;
            v192 = *(*&v265[4] + 16 * v10);
          }

          else
          {
            *v265 = (*v265 + 1);
            v11 = v299;
            v299 += 2;
            v258 = *v11;
            v192 = v258;
          }

          v290 = v192;
          *v265 = v259;
          v298 = ++i;
        }

        else
        {
          if (*&v265[4])
          {
            v12 = *v265;
            ++*v265;
            v191 = *(*&v265[4] + 16 * v12);
          }

          else
          {
            *v265 = (*v265 + 1);
            v13 = v299;
            v299 += 2;
            v257 = *v13;
            v191 = v257;
          }

          v290 = v191;
        }

        continue;
      case '0':
        v293 |= 0x80u;
        continue;
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
        v296 = 0;
        do
        {
          v296 = 10 * v296 + v297 - 48;
          v15 = v298++;
          v297 = *v15;
        }

        while ((v297 - 48) < 0xA);
        if (v297 != 36)
        {
          v291 = v296;
          goto LABEL_23;
        }

        *v265 = v296;
        if (!*&v265[4])
        {
          *&v265[4] = v305;
          if (__find_warguments(v300, v264, &v265[4]))
          {
            v292 = -1;
            goto LABEL_707;
          }
        }

        continue;
      case 'A':
      case 'a':
        if ((v293 & 0x4000) != 0)
        {
          v293 |= 0x100u;
          goto LABEL_462;
        }

        if (v297 == 97)
        {
          v307 = 120;
          v268 = &__vfwprintf_xdigs_lower;
          v283 = 112;
        }

        else
        {
          v307 = 88;
          v268 = "0123456789ABCDEFn";
          v283 = 80;
        }

        if ((v290 & 0x8000000000000000) == 0)
        {
          ++v290;
        }

        if ((v293 & 8) != 0)
        {
          if (*&v265[4])
          {
            v37 = *v265;
            ++*v265;
            v174 = *(*&v265[4] + 16 * v37);
          }

          else
          {
            *v265 = (*v265 + 1);
            v38 = v299;
            v299 += 2;
            v246 = *v38;
            v174 = v246;
          }

          v285 = v174;
          v279 = __hldtoa(v268, v290, &v284, &v286, &v282, v174);
        }

        else
        {
          if (*&v265[4])
          {
            v39 = *v265;
            ++*v265;
            v173 = *(*&v265[4] + 16 * v39);
          }

          else
          {
            *v265 = (*v265 + 1);
            v40 = v299;
            v299 += 2;
            v245 = *v40;
            v173 = v245;
          }

          v285 = v173;
          v279 = __hdtoa(v268, v290, &v284, &v286, &v282, v173);
        }

        if (v290 < 0)
        {
          v290 = v282 - v279;
        }

        if (v284 == 0x7FFFFFFF)
        {
          v307 = 0;
        }

        free(v263);
        v280 = v282 - v279;
        v263 = __mbsconv(v279, -1, v301);
        i = v263;
        __freedtoa(v279);
        goto LABEL_204;
      case 'C':
        v293 |= 0x10u;
        goto LABEL_90;
      case 'D':
        v293 |= 0x10u;
        goto LABEL_102;
      case 'E':
      case 'e':
        if ((v293 & 0x4000) != 0)
        {
          v293 |= 0x100u;
          goto LABEL_462;
        }

        v283 = v297;
        if (v290 < 0)
        {
          v290 = 7;
        }

        else
        {
          ++v290;
        }

        goto LABEL_185;
      case 'F':
      case 'f':
        if ((v293 & 0x4000) != 0)
        {
          v293 |= 0x100u;
          goto LABEL_462;
        }

        v283 = 0;
        goto LABEL_185;
      case 'G':
      case 'g':
        if ((v293 & 0x4000) != 0)
        {
          v293 |= 0x100u;
        }

        else
        {
          v283 = v297 - 2;
          if (!v290)
          {
            v290 = 1;
          }

LABEL_185:
          if (v290 < 0)
          {
            v290 = 6;
          }

          free(v263);
          if ((v293 & 8) != 0)
          {
            if (*&v265[4])
            {
              v41 = *v265;
              ++*v265;
              v172 = *(*&v265[4] + 16 * v41);
            }

            else
            {
              *v265 = (*v265 + 1);
              v42 = v299;
              v299 += 2;
              v244 = *v42;
              v172 = v244;
            }

            v285 = v172;
            if (v283)
            {
              v43 = 2;
            }

            else
            {
              v43 = 3;
            }

            v279 = __ldtoa(&v285, v43, v290, &v284, &v286, &v282);
          }

          else
          {
            if (*&v265[4])
            {
              v44 = *v265;
              ++*v265;
              v171 = *(*&v265[4] + 16 * v44);
            }

            else
            {
              *v265 = (*v265 + 1);
              v45 = v299;
              v299 += 2;
              v243 = *v45;
              v171 = v243;
            }

            v285 = v171;
            if (v283)
            {
              v46 = 2;
            }

            else
            {
              v46 = 3;
            }

            v279 = __dtoa(v46, v290, &v284, &v286, &v282, v171);
            if (v284 == 9999)
            {
              v284 = 0x7FFFFFFF;
            }
          }

          v280 = v282 - v279;
          v263 = __mbsconv(v279, -1, v301);
          i = v263;
          __freedtoa(v279);
LABEL_204:
          if (v286)
          {
            v289 = 45;
          }

          if (v284 == 0x7FFFFFFF)
          {
            if (*i == 78)
            {
              v47 = "n";
              if (v297 <= 96)
              {
                v47 = "N";
              }

              i = v47;
              v289 = 0;
            }

            else
            {
              v48 = "i";
              if (v297 <= 96)
              {
                v48 = "I";
              }

              i = v48;
            }

            v270 = 3;
            v293 &= ~0x80u;
          }

          else
          {
            v293 |= 0x100u;
            if (v297 == 103 || v297 == 71)
            {
              if (v284 < -3 || v284 > v290)
              {
                if ((v293 & 1) == 0)
                {
                  v290 = v280;
                }
              }

              else
              {
                v283 = 0;
                if (v293)
                {
                  v290 -= v284;
                }

                else
                {
                  v290 = v280 - v284;
                }

                if (v290 < 0)
                {
                  v290 = 0;
                }
              }
            }

            if (v283)
            {
              v281 = exponent_0(v309, v284 - 1, v283);
              v270 = v281 + v290;
              if (v290 > 1 || (v293 & 1) != 0)
              {
                ++v270;
              }
            }

            else
            {
              if (v284 < 1)
              {
                v270 = 1;
              }

              else
              {
                v270 = v284;
              }

              if (v290 || (v293 & 1) != 0)
              {
                v270 += v290 + 1;
              }

              if ((v293 & 0x200) != 0 && v284 >= 1)
              {
                inited = grouping_init_0(v288, v284, v301);
                v270 += inited;
              }
            }
          }
        }

        goto LABEL_462;
      case 'L':
        v293 |= 8u;
        continue;
      case 'O':
        v293 |= 0x10u;
        goto LABEL_262;
      case 'S':
        v293 |= 0x10u;
        goto LABEL_315;
      case 'U':
        v293 |= 0x10u;
        goto LABEL_336;
      case 'X':
        v268 = "0123456789ABCDEFn";
        goto LABEL_385;
      case 'c':
LABEL_90:
        if ((v293 & 0x4000) == 0)
        {
          if ((v293 & 0x10) != 0)
          {
            if (*&v265[4])
            {
              v16 = *v265;
              ++*v265;
              v190 = *(*&v265[4] + 16 * v16);
            }

            else
            {
              *v265 = (*v265 + 1);
              v17 = v299;
              v299 += 2;
              v256 = *v17;
              v190 = v256;
            }

            i = v308;
            v308[0] = v190;
          }

          else
          {
            if (*&v265[4])
            {
              v18 = *v265;
              ++*v265;
              v189 = *(*&v265[4] + 16 * v18);
            }

            else
            {
              *v265 = (*v265 + 1);
              v19 = v299;
              v299 += 2;
              v255 = *v19;
              v189 = v255;
            }

            v20 = btowc_l(v189, v301);
            i = v308;
            v308[0] = v20;
          }

          v270 = 1;
          v289 = 0;
        }

        goto LABEL_462;
      case 'd':
      case 'i':
LABEL_102:
        if ((v293 & 0x4000) != 0)
        {
          goto LABEL_462;
        }

        if ((v293 & 0x1C20) != 0)
        {
          if ((v293 & 0x1000) != 0)
          {
            if (*&v265[4])
            {
              v21 = *v265;
              ++*v265;
              v188 = *(*&v265[4] + 16 * v21);
            }

            else
            {
              *v265 = (*v265 + 1);
              v22 = v299;
              v299 += 2;
              v254 = *v22;
              v188 = v254;
            }

            v187 = v188;
          }

          else
          {
            if ((v293 & 0x400) != 0)
            {
              if (*&v265[4])
              {
                v23 = *v265;
                ++*v265;
                v186 = *(*&v265[4] + 16 * v23);
              }

              else
              {
                *v265 = (*v265 + 1);
                v24 = v299;
                v299 += 2;
                v253 = *v24;
                v186 = v253;
              }

              v185 = v186;
            }

            else
            {
              if ((v293 & 0x800) != 0)
              {
                if (*&v265[4])
                {
                  v25 = *v265;
                  ++*v265;
                  v184 = *(*&v265[4] + 16 * v25);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v26 = v299;
                  v299 += 2;
                  v252 = *v26;
                  v184 = v252;
                }

                v183 = v184;
              }

              else
              {
                if (*&v265[4])
                {
                  v27 = *v265;
                  ++*v265;
                  v182 = *(*&v265[4] + 16 * v27);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v28 = v299;
                  v299 += 2;
                  v251 = *v28;
                  v182 = v251;
                }

                v183 = v182;
              }

              v185 = v183;
            }

            v187 = v185;
          }

          v274 = v187;
          if (v187 < 0)
          {
            v274 = -v274;
            v289 = 45;
          }
        }

        else
        {
          if ((v293 & 0x10) != 0)
          {
            if (*&v265[4])
            {
              v29 = *v265;
              ++*v265;
              v181 = *(*&v265[4] + 16 * v29);
            }

            else
            {
              *v265 = (*v265 + 1);
              v30 = v299;
              v299 += 2;
              v250 = *v30;
              v181 = v250;
            }

            v180 = v181;
          }

          else
          {
            if ((v293 & 0x40) != 0)
            {
              if (*&v265[4])
              {
                v31 = *v265;
                ++*v265;
                v179 = *(*&v265[4] + 16 * v31);
              }

              else
              {
                *v265 = (*v265 + 1);
                v32 = v299;
                v299 += 2;
                v249 = *v32;
                LOWORD(v179) = v249;
              }

              v178 = v179;
            }

            else
            {
              if ((v293 & 0x2000) != 0)
              {
                if (*&v265[4])
                {
                  v33 = *v265;
                  ++*v265;
                  v177 = *(*&v265[4] + 16 * v33);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v34 = v299;
                  v299 += 2;
                  v248 = *v34;
                  LOBYTE(v177) = v248;
                }

                v176 = v177;
              }

              else
              {
                if (*&v265[4])
                {
                  v35 = *v265;
                  ++*v265;
                  v175 = *(*&v265[4] + 16 * v35);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v36 = v299;
                  v299 += 2;
                  v247 = *v36;
                  v175 = v247;
                }

                v176 = v175;
              }

              v178 = v176;
            }

            v180 = v178;
          }

          v275 = v180;
          if (v180 < 0)
          {
            v275 = -v275;
            v289 = 45;
          }
        }

        v273 = 10;
        goto LABEL_439;
      case 'h':
        if ((v293 & 0x40) != 0)
        {
          v293 &= ~0x40u;
          v293 |= 0x2000u;
        }

        else
        {
          v293 |= 0x40u;
        }

        continue;
      case 'j':
        v293 |= 0x1000u;
        continue;
      case 'l':
        if ((v293 & 0x10) != 0)
        {
          v293 &= ~0x10u;
          v293 |= 0x20u;
        }

        else
        {
          v293 |= 0x10u;
        }

        continue;
      case 'n':
        if (*&v265[4])
        {
          v50 = *v265;
          ++*v265;
          v170 = *(*&v265[4] + 16 * v50);
        }

        else
        {
          *v265 = (*v265 + 1);
          v51 = v299;
          v299 += 2;
          v241 = *v51;
          v170 = v241;
        }

        v242 = v170;
        if (v170)
        {
          if ((v293 & 0x20) != 0)
          {
            *v242 = v292;
          }

          else if ((v293 & 0x400) != 0)
          {
            *v242 = v292;
          }

          else if ((v293 & 0x800) != 0)
          {
            *v242 = v292;
          }

          else if ((v293 & 0x1000) != 0)
          {
            *v242 = v292;
          }

          else if ((v293 & 0x10) != 0)
          {
            *v242 = v292;
          }

          else if ((v293 & 0x40) != 0)
          {
            *v242 = v292;
          }

          else if ((v293 & 0x2000) != 0)
          {
            *v242 = v292;
          }

          else
          {
            *v242 = v292;
          }
        }

        goto LABEL_10;
      case 'o':
LABEL_262:
        if ((v293 & 0x4000) != 0)
        {
          goto LABEL_462;
        }

        if ((v293 & 0x1C20) != 0)
        {
          if ((v293 & 0x1000) != 0)
          {
            if (*&v265[4])
            {
              v52 = *v265;
              ++*v265;
              v169 = *(*&v265[4] + 16 * v52);
            }

            else
            {
              *v265 = (*v265 + 1);
              v53 = v299;
              v299 += 2;
              v240 = *v53;
              v169 = v240;
            }

            v168 = v169;
          }

          else
          {
            if ((v293 & 0x400) != 0)
            {
              if (*&v265[4])
              {
                v54 = *v265;
                ++*v265;
                v167 = *(*&v265[4] + 16 * v54);
              }

              else
              {
                *v265 = (*v265 + 1);
                v55 = v299;
                v299 += 2;
                v239 = *v55;
                v167 = v239;
              }

              v166 = v167;
            }

            else
            {
              if ((v293 & 0x800) != 0)
              {
                if (*&v265[4])
                {
                  v56 = *v265;
                  ++*v265;
                  v165 = *(*&v265[4] + 16 * v56);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v57 = v299;
                  v299 += 2;
                  v238 = *v57;
                  v165 = v238;
                }

                v164 = v165;
              }

              else
              {
                if (*&v265[4])
                {
                  v58 = *v265;
                  ++*v265;
                  v163 = *(*&v265[4] + 16 * v58);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v59 = v299;
                  v299 += 2;
                  v237 = *v59;
                  v163 = v237;
                }

                v164 = v163;
              }

              v166 = v164;
            }

            v168 = v166;
          }

          v274 = v168;
        }

        else
        {
          if ((v293 & 0x10) != 0)
          {
            if (*&v265[4])
            {
              v60 = *v265;
              ++*v265;
              v162 = *(*&v265[4] + 16 * v60);
            }

            else
            {
              *v265 = (*v265 + 1);
              v61 = v299;
              v299 += 2;
              v236 = *v61;
              v162 = v236;
            }

            v161 = v162;
          }

          else
          {
            if ((v293 & 0x40) != 0)
            {
              if (*&v265[4])
              {
                v62 = *v265;
                ++*v265;
                v160 = *(*&v265[4] + 16 * v62);
              }

              else
              {
                *v265 = (*v265 + 1);
                v63 = v299;
                v299 += 2;
                v235 = *v63;
                LOWORD(v160) = v235;
              }

              v159 = v160;
            }

            else
            {
              if ((v293 & 0x2000) != 0)
              {
                if (*&v265[4])
                {
                  v64 = *v265;
                  ++*v265;
                  v158 = *(*&v265[4] + 16 * v64);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v65 = v299;
                  v299 += 2;
                  v234 = *v65;
                  LOBYTE(v158) = v234;
                }

                v157 = v158;
              }

              else
              {
                if (*&v265[4])
                {
                  v66 = *v265;
                  ++*v265;
                  v156 = *(*&v265[4] + 16 * v66);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v67 = v299;
                  v299 += 2;
                  v233 = *v67;
                  v156 = v233;
                }

                v157 = v156;
              }

              v159 = v157;
            }

            v161 = v159;
          }

          v275 = v161;
        }

        v273 = 8;
        goto LABEL_438;
      case 'p':
        if ((v293 & 0x4000) != 0)
        {
          goto LABEL_462;
        }

        if (*&v265[4])
        {
          v68 = *v265;
          ++*v265;
          v155 = *(*&v265[4] + 16 * v68);
        }

        else
        {
          *v265 = (*v265 + 1);
          v69 = v299;
          v299 += 2;
          v232 = *v69;
          v155 = v232;
        }

        v274 = v155;
        v273 = 16;
        v268 = &__vfwprintf_xdigs_lower;
        v293 |= 0x1000u;
        v307 = 120;
        goto LABEL_438;
      case 'q':
        v293 |= 0x20u;
        continue;
      case 's':
LABEL_315:
        if ((v293 & 0x10) != 0)
        {
          if (*&v265[4])
          {
            v70 = *v265;
            ++*v265;
            v154 = *(*&v265[4] + 16 * v70);
          }

          else
          {
            *v265 = (*v265 + 1);
            v71 = v299;
            v299 += 2;
            v231 = *v71;
            v154 = v231;
          }

          i = v154;
          if (!v154)
          {
            i = "(";
          }
        }

        else
        {
          v230 = 0;
          free(v263);
          if (*&v265[4])
          {
            v72 = *v265;
            ++*v265;
            v153 = *(*&v265[4] + 16 * v72);
          }

          else
          {
            *v265 = (*v265 + 1);
            v73 = v299;
            v299 += 2;
            v229 = *v73;
            v153 = v229;
          }

          v230 = v153;
          if (v153)
          {
            v263 = __mbsconv(v230, v290, v301);
            if (!v263)
            {
              *(v302 + 16) |= 0x40u;
              goto LABEL_707;
            }

            i = v263;
          }

          else
          {
            v263 = 0;
            i = "(";
          }
        }

        v270 = wcslen(i);
        if (v270 >= 0x7FFFFFFF)
        {
          goto LABEL_660;
        }

        if ((v290 & 0x8000000000000000) == 0 && v290 < v270)
        {
          v270 = v290;
        }

        v289 = 0;
LABEL_462:
        if ((v293 & 0x4000) == 0)
        {
          if (v272 <= v270)
          {
            v122 = v270;
          }

          else
          {
            v122 = v272;
          }

          v271 = v122;
          if (v289)
          {
            ++v271;
          }

          if (v307)
          {
            v271 += 2;
          }

          if (v291 <= v271)
          {
            v121 = v271;
          }

          else
          {
            v121 = v291;
          }

          v269 = v121;
          if (v292 + v121 >= 0x80000000)
          {
LABEL_660:
            v292 = -1;
            *__error() = 84;
            goto LABEL_707;
          }

          if ((v293 & 0x84) == 0 && io_pad_0(v266, v291 - v271, " ", v301))
          {
            goto LABEL_707;
          }

          if (v289 && io_print_0(v266, &v289, 1, v301))
          {
            goto LABEL_707;
          }

          if (v307)
          {
            v306 = 48;
            if (io_print_0(v266, &v306, 2, v301))
            {
              goto LABEL_707;
            }
          }

          if ((v293 & 0x84) == 0x80 && io_pad_0(v266, v291 - v271, "0", v301))
          {
            goto LABEL_707;
          }

          if ((v293 & 0x100) != 0)
          {
            if (v283)
            {
              if (v290 > 1 || (v293 & 1) != 0)
              {
                v118 = i++;
                v308[0] = *v118;
                v308[1] = decpt;
                if (io_print_0(v266, v308, 2, v301) || io_print_0(v266, i, v280 - 1, v301) || io_pad_0(v266, v290 - v280, "0", v301))
                {
                  goto LABEL_707;
                }
              }

              else if (io_print_0(v266, i, 1, v301))
              {
                goto LABEL_707;
              }

              if (io_print_0(v266, v309, v281, v301))
              {
                goto LABEL_707;
              }
            }

            else
            {
              if (v284 > 0)
              {
                if (*(&v288[0] + 1))
                {
                  v296 = grouping_print_0(v288, v266, i, v263 + 4 * v280, v301);
                  if (v296 < 0)
                  {
                    goto LABEL_707;
                  }

                  i += v296;
                }

                else
                {
                  if (io_printandpad_0(v266, i, v263 + 4 * v280, v284, "0", v301))
                  {
                    goto LABEL_707;
                  }

                  i += v284;
                }

                if (v290 || (v293) && io_print_0(v266, &decpt, 1, v301))
                {
                  goto LABEL_707;
                }
              }

              else
              {
                if (io_print_0(v266, "0", 1, v301) || (v290 || (v293 & 1) != 0) && io_print_0(v266, &decpt, 1, v301) || io_pad_0(v266, -v284, "0", v301))
                {
                  goto LABEL_707;
                }

                v290 += v284;
              }

              if (io_printandpad_0(v266, i, v263 + 4 * v280, v290, "0", v301))
              {
                goto LABEL_707;
              }
            }
          }

          else
          {
            if (io_pad_0(v266, v272 - v270, "0", v301))
            {
              goto LABEL_707;
            }

            if (*(&v288[0] + 1))
            {
              if ((grouping_print_0(v288, v266, i, v309, v301) & 0x80000000) != 0)
              {
                goto LABEL_707;
              }
            }

            else if (io_print_0(v266, i, v270, v301))
            {
              goto LABEL_707;
            }
          }

          if ((v293 & 4) != 0 && io_pad_0(v266, v291 - v271, " ", v301))
          {
            goto LABEL_707;
          }

          v292 += v269;
          if (io_flush_0(v266, v301))
          {
            goto LABEL_707;
          }

          goto LABEL_10;
        }

        j = 0;
        v211 = 0;
        v210 = 0;
        v209 = 0;
        v208 = 0;
        v207 = 0;
        v206 = 0;
        if (*&v265[4])
        {
          v107 = *v265;
          ++*v265;
          v124 = *(*&v265[4] + 16 * v107);
        }

        else
        {
          *v265 = (*v265 + 1);
          v108 = ((v299 + 15) & 0xFFFFFFFFFFFFFFF0);
          v299 = v108 + 1;
          v124 = *v108;
        }

        v278 = v124;
        if ((((v298 - v277 - 4) >> 2) + 2) > 0x21)
        {
          v209 = malloc_type_malloc();
        }

        else
        {
          v209 = v304;
        }

        if (v276 == 88)
        {
          if (v297 == 99)
          {
            v276 = 0;
          }

          else
          {
            v276 = 32;
          }
        }

        v211 = 0;
        j = 0;
        while (2)
        {
          if (j < (v298 - v277 - 4) >> 2)
          {
            v123 = v277[j];
            if (v123 == 42)
            {
              if (v277[j - 1] == 46)
              {
                v207 = 1;
              }

              else
              {
                v208 = 1;
              }
            }

            else if (v123 == 44 || (v123 - 58) < 2 || v123 == 95 || v123 == 104 || v123 == 108 || v123 == 118)
            {
              goto LABEL_487;
            }

            v109 = v277[j];
            v110 = v211++;
            v209[v110] = v109;
LABEL_487:
            ++j;
            continue;
          }

          break;
        }

        if ((v293 & 0x40) != 0)
        {
          if (v297 == 99)
          {
            v197 = 1;
          }

          else if (v297 == 112)
          {
            v197 = 4;
          }

          else
          {
            v111 = v211++;
            v209[v111] = 104;
            v197 = 1;
          }

          v210 = 8;
          goto LABEL_516;
        }

        if ((v293 & 0x10) != 0)
        {
          v210 = 4;
          if (v297 == 112)
          {
            v112 = 5;
          }

          else
          {
            v112 = 2;
          }

          v197 = v112;
          goto LABEL_516;
        }

        switch(v297)
        {
          case 'A':
          case 'E':
          case 'G':
            goto LABEL_510;
          case 'X':
            goto LABEL_511;
          case 'a':
            goto LABEL_510;
          case 'c':
            goto LABEL_512;
          case 'd':
            goto LABEL_511;
        }

        if ((v297 - 101) < 3)
        {
LABEL_510:
          v210 = 4;
          v197 = 6;
          goto LABEL_516;
        }

        if (v297 != 112)
        {
LABEL_511:
          v113 = v211++;
          v209[v113] = 104;
          v114 = v211++;
          v209[v114] = 104;
        }

LABEL_512:
        v210 = 16;
        if (v297 == 112)
        {
          v115 = 3;
        }

        else
        {
          v115 = 0;
        }

        v197 = v115;
LABEL_516:
        v116 = v211++;
        v209[v116] = v297;
        v117 = v211++;
        v209[v117] = 0;
        if (v208)
        {
          if (!v207)
          {
            if (v197)
            {
              if (v197 == 1)
              {
                goto LABEL_592;
              }

              if (v197 == 2)
              {
                goto LABEL_594;
              }

              if (v197 != 3)
              {
                if (v197 != 4)
                {
                  if (v197 != 5)
                  {
                    v202 = asprintf_l(&v206, v301, v209, v291, *&v278);
LABEL_595:
                    v292 += v202;
                    if (io_print_0(v266, v206, v202, v301))
                    {
                      goto LABEL_707;
                    }

                    free(v206);
                    for (j = 1; ; ++j)
                    {
                      if (j >= v210)
                      {
                        goto LABEL_646;
                      }

                      if (v276 && io_print_0(v266, &v276, 1, v301))
                      {
                        goto LABEL_707;
                      }

                      if (!v197)
                      {
LABEL_607:
                        v203 = asprintf_l(&v206, v301, v209, v291, *(&v278 + j));
                        goto LABEL_612;
                      }

                      if (v197 == 1)
                      {
                        break;
                      }

                      if (v197 != 2)
                      {
                        if (v197 == 3)
                        {
                          goto LABEL_607;
                        }

                        if (v197 == 4)
                        {
                          break;
                        }

                        if (v197 != 5)
                        {
                          v203 = asprintf_l(&v206, v301, v209, v291, *(&v278 + j));
                          goto LABEL_612;
                        }
                      }

                      v203 = asprintf_l(&v206, v301, v209, v291, *(&v278 + j));
LABEL_612:
                      v292 += v203;
                      if (io_print_0(v266, v206, v203, v301))
                      {
                        goto LABEL_707;
                      }

                      free(v206);
                    }

                    v203 = asprintf_l(&v206, v301, v209, v291, *(&v278 + j));
                    goto LABEL_612;
                  }

LABEL_594:
                  v202 = asprintf_l(&v206, v301, v209, v291, v278);
                  goto LABEL_595;
                }

LABEL_592:
                v202 = asprintf_l(&v206, v301, v209, v291, v278);
                goto LABEL_595;
              }
            }

            v202 = asprintf_l(&v206, v301, v209, v291, v278);
            goto LABEL_595;
          }

          if (v197)
          {
            if (v197 == 1)
            {
              goto LABEL_624;
            }

            if (v197 == 2)
            {
              goto LABEL_626;
            }

            if (v197 != 3)
            {
              if (v197 != 4)
              {
                if (v197 != 5)
                {
                  v204 = asprintf_l(&v206, v301, v209, v291, v290, *&v278);
LABEL_627:
                  v292 += v204;
                  if (io_print_0(v266, v206, v204, v301))
                  {
                    goto LABEL_707;
                  }

                  free(v206);
                  for (j = 1; ; ++j)
                  {
                    if (j >= v210)
                    {
LABEL_646:
                      if (v209 != v304)
                      {
                        free(v209);
                      }

                      goto LABEL_10;
                    }

                    if (v276 && io_print_0(v266, &v276, 1, v301))
                    {
                      goto LABEL_707;
                    }

                    if (!v197)
                    {
LABEL_639:
                      v205 = asprintf_l(&v206, v301, v209, v291, v290, *(&v278 + j));
                      goto LABEL_644;
                    }

                    if (v197 == 1)
                    {
                      break;
                    }

                    if (v197 != 2)
                    {
                      if (v197 == 3)
                      {
                        goto LABEL_639;
                      }

                      if (v197 == 4)
                      {
                        break;
                      }

                      if (v197 != 5)
                      {
                        v205 = asprintf_l(&v206, v301, v209, v291, v290, *(&v278 + j));
                        goto LABEL_644;
                      }
                    }

                    v205 = asprintf_l(&v206, v301, v209, v291, v290, *(&v278 + j));
LABEL_644:
                    v292 += v205;
                    if (io_print_0(v266, v206, v205, v301))
                    {
                      goto LABEL_707;
                    }

                    free(v206);
                  }

                  v205 = asprintf_l(&v206, v301, v209, v291, v290, *(&v278 + j));
                  goto LABEL_644;
                }

LABEL_626:
                v204 = asprintf_l(&v206, v301, v209, v291, v290, v278);
                goto LABEL_627;
              }

LABEL_624:
              v204 = asprintf_l(&v206, v301, v209, v291, v290, v278);
              goto LABEL_627;
            }
          }

          v204 = asprintf_l(&v206, v301, v209, v291, v290, v278);
          goto LABEL_627;
        }

        if (v207)
        {
          if (v197)
          {
            if (v197 == 1)
            {
              goto LABEL_559;
            }

            if (v197 == 2)
            {
              goto LABEL_561;
            }

            if (v197 != 3)
            {
              if (v197 != 4)
              {
                if (v197 != 5)
                {
                  v200 = asprintf_l(&v206, v301, v209, v290, *&v278);
LABEL_562:
                  v292 += v200;
                  if (io_print_0(v266, v206, v200, v301))
                  {
                    goto LABEL_707;
                  }

                  free(v206);
                  for (j = 1; ; ++j)
                  {
                    if (j >= v210)
                    {
                      goto LABEL_646;
                    }

                    if (v276 && io_print_0(v266, &v276, 1, v301))
                    {
                      goto LABEL_707;
                    }

                    if (!v197)
                    {
LABEL_574:
                      v201 = asprintf_l(&v206, v301, v209, v290, *(&v278 + j));
                      goto LABEL_579;
                    }

                    if (v197 == 1)
                    {
                      break;
                    }

                    if (v197 != 2)
                    {
                      if (v197 == 3)
                      {
                        goto LABEL_574;
                      }

                      if (v197 == 4)
                      {
                        break;
                      }

                      if (v197 != 5)
                      {
                        v201 = asprintf_l(&v206, v301, v209, v290, *(&v278 + j));
                        goto LABEL_579;
                      }
                    }

                    v201 = asprintf_l(&v206, v301, v209, v290, *(&v278 + j));
LABEL_579:
                    v292 += v201;
                    if (io_print_0(v266, v206, v201, v301))
                    {
                      goto LABEL_707;
                    }

                    free(v206);
                  }

                  v201 = asprintf_l(&v206, v301, v209, v290, *(&v278 + j));
                  goto LABEL_579;
                }

LABEL_561:
                v200 = asprintf_l(&v206, v301, v209, v290, v278);
                goto LABEL_562;
              }

LABEL_559:
              v200 = asprintf_l(&v206, v301, v209, v290, v278);
              goto LABEL_562;
            }
          }

          v200 = asprintf_l(&v206, v301, v209, v290, v278);
          goto LABEL_562;
        }

        switch(v197)
        {
          case 0:
            goto LABEL_525;
          case 1:
LABEL_527:
            v198 = asprintf_l(&v206, v301, v209, v278);
            goto LABEL_530;
          case 2:
            goto LABEL_529;
          case 3:
LABEL_525:
            v198 = asprintf_l(&v206, v301, v209, v278);
            goto LABEL_530;
          case 4:
            goto LABEL_527;
        }

        if (v197 != 5)
        {
          v198 = asprintf_l(&v206, v301, v209, *&v278);
          goto LABEL_530;
        }

LABEL_529:
        v198 = asprintf_l(&v206, v301, v209, v278);
LABEL_530:
        v292 += v198;
        if (!io_print_0(v266, v206, v198, v301))
        {
          free(v206);
          for (j = 1; ; ++j)
          {
            if (j >= v210)
            {
              goto LABEL_646;
            }

            if (v276 && io_print_0(v266, &v276, 1, v301))
            {
              goto LABEL_707;
            }

            if (!v197)
            {
LABEL_542:
              v199 = asprintf_l(&v206, v301, v209, *(&v278 + j));
              goto LABEL_547;
            }

            if (v197 == 1)
            {
              break;
            }

            if (v197 != 2)
            {
              if (v197 == 3)
              {
                goto LABEL_542;
              }

              if (v197 == 4)
              {
                break;
              }

              if (v197 != 5)
              {
                v199 = asprintf_l(&v206, v301, v209, *(&v278 + j));
                goto LABEL_547;
              }
            }

            v199 = asprintf_l(&v206, v301, v209, *(&v278 + j));
LABEL_547:
            v292 += v199;
            if (io_print_0(v266, v206, v199, v301))
            {
              goto LABEL_707;
            }

            free(v206);
          }

          v199 = asprintf_l(&v206, v301, v209, *(&v278 + j));
          goto LABEL_547;
        }

LABEL_707:
        free(v263);
        if ((*(v302 + 16) & 0x40) != 0)
        {
          v292 = -1;
        }

        if (*&v265[4] && *&v265[4] != v305)
        {
          free(*&v265[4]);
        }

        if (v292 < 0 || v292 >= 0x7FFFFFFF)
        {
          return -1;
        }

        else
        {
          return v292;
        }

      case 't':
        v293 |= 0x800u;
        continue;
      case 'u':
LABEL_336:
        if ((v293 & 0x4000) != 0)
        {
          goto LABEL_462;
        }

        if ((v293 & 0x1C20) != 0)
        {
          if ((v293 & 0x1000) != 0)
          {
            if (*&v265[4])
            {
              v74 = *v265;
              ++*v265;
              v152 = *(*&v265[4] + 16 * v74);
            }

            else
            {
              *v265 = (*v265 + 1);
              v75 = v299;
              v299 += 2;
              v228 = *v75;
              v152 = v228;
            }

            v151 = v152;
          }

          else
          {
            if ((v293 & 0x400) != 0)
            {
              if (*&v265[4])
              {
                v76 = *v265;
                ++*v265;
                v150 = *(*&v265[4] + 16 * v76);
              }

              else
              {
                *v265 = (*v265 + 1);
                v77 = v299;
                v299 += 2;
                v227 = *v77;
                v150 = v227;
              }

              v149 = v150;
            }

            else
            {
              if ((v293 & 0x800) != 0)
              {
                if (*&v265[4])
                {
                  v78 = *v265;
                  ++*v265;
                  v148 = *(*&v265[4] + 16 * v78);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v79 = v299;
                  v299 += 2;
                  v226 = *v79;
                  v148 = v226;
                }

                v147 = v148;
              }

              else
              {
                if (*&v265[4])
                {
                  v80 = *v265;
                  ++*v265;
                  v146 = *(*&v265[4] + 16 * v80);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v81 = v299;
                  v299 += 2;
                  v225 = *v81;
                  v146 = v225;
                }

                v147 = v146;
              }

              v149 = v147;
            }

            v151 = v149;
          }

          v274 = v151;
        }

        else
        {
          if ((v293 & 0x10) != 0)
          {
            if (*&v265[4])
            {
              v82 = *v265;
              ++*v265;
              v145 = *(*&v265[4] + 16 * v82);
            }

            else
            {
              *v265 = (*v265 + 1);
              v83 = v299;
              v299 += 2;
              v224 = *v83;
              v145 = v224;
            }

            v144 = v145;
          }

          else
          {
            if ((v293 & 0x40) != 0)
            {
              if (*&v265[4])
              {
                v84 = *v265;
                ++*v265;
                v143 = *(*&v265[4] + 16 * v84);
              }

              else
              {
                *v265 = (*v265 + 1);
                v85 = v299;
                v299 += 2;
                v223 = *v85;
                LOWORD(v143) = v223;
              }

              v142 = v143;
            }

            else
            {
              if ((v293 & 0x2000) != 0)
              {
                if (*&v265[4])
                {
                  v86 = *v265;
                  ++*v265;
                  v141 = *(*&v265[4] + 16 * v86);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v87 = v299;
                  v299 += 2;
                  v222 = *v87;
                  LOBYTE(v141) = v222;
                }

                v140 = v141;
              }

              else
              {
                if (*&v265[4])
                {
                  v88 = *v265;
                  ++*v265;
                  v139 = *(*&v265[4] + 16 * v88);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v89 = v299;
                  v299 += 2;
                  v221 = *v89;
                  v139 = v221;
                }

                v140 = v139;
              }

              v142 = v140;
            }

            v144 = v142;
          }

          v275 = v144;
        }

        v273 = 10;
        goto LABEL_438;
      case 'v':
        v293 |= 0x4000u;
        continue;
      case 'x':
        v268 = &__vfwprintf_xdigs_lower;
LABEL_385:
        if ((v293 & 0x4000) != 0)
        {
          goto LABEL_462;
        }

        if ((v293 & 0x1C20) != 0)
        {
          if ((v293 & 0x1000) != 0)
          {
            if (*&v265[4])
            {
              v90 = *v265;
              ++*v265;
              v138 = *(*&v265[4] + 16 * v90);
            }

            else
            {
              *v265 = (*v265 + 1);
              v91 = v299;
              v299 += 2;
              v220 = *v91;
              v138 = v220;
            }

            v137 = v138;
          }

          else
          {
            if ((v293 & 0x400) != 0)
            {
              if (*&v265[4])
              {
                v92 = *v265;
                ++*v265;
                v136 = *(*&v265[4] + 16 * v92);
              }

              else
              {
                *v265 = (*v265 + 1);
                v93 = v299;
                v299 += 2;
                v219 = *v93;
                v136 = v219;
              }

              v135 = v136;
            }

            else
            {
              if ((v293 & 0x800) != 0)
              {
                if (*&v265[4])
                {
                  v94 = *v265;
                  ++*v265;
                  v134 = *(*&v265[4] + 16 * v94);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v95 = v299;
                  v299 += 2;
                  v218 = *v95;
                  v134 = v218;
                }

                v133 = v134;
              }

              else
              {
                if (*&v265[4])
                {
                  v96 = *v265;
                  ++*v265;
                  v132 = *(*&v265[4] + 16 * v96);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v97 = v299;
                  v299 += 2;
                  v217 = *v97;
                  v132 = v217;
                }

                v133 = v132;
              }

              v135 = v133;
            }

            v137 = v135;
          }

          v274 = v137;
        }

        else
        {
          if ((v293 & 0x10) != 0)
          {
            if (*&v265[4])
            {
              v98 = *v265;
              ++*v265;
              v131 = *(*&v265[4] + 16 * v98);
            }

            else
            {
              *v265 = (*v265 + 1);
              v99 = v299;
              v299 += 2;
              v216 = *v99;
              v131 = v216;
            }

            v130 = v131;
          }

          else
          {
            if ((v293 & 0x40) != 0)
            {
              if (*&v265[4])
              {
                v100 = *v265;
                ++*v265;
                v129 = *(*&v265[4] + 16 * v100);
              }

              else
              {
                *v265 = (*v265 + 1);
                v101 = v299;
                v299 += 2;
                v215 = *v101;
                LOWORD(v129) = v215;
              }

              v128 = v129;
            }

            else
            {
              if ((v293 & 0x2000) != 0)
              {
                if (*&v265[4])
                {
                  v102 = *v265;
                  ++*v265;
                  v127 = *(*&v265[4] + 16 * v102);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v103 = v299;
                  v299 += 2;
                  v214 = *v103;
                  LOBYTE(v127) = v214;
                }

                v126 = v127;
              }

              else
              {
                if (*&v265[4])
                {
                  v104 = *v265;
                  ++*v265;
                  v125 = *(*&v265[4] + 16 * v104);
                }

                else
                {
                  *v265 = (*v265 + 1);
                  v105 = v299;
                  v299 += 2;
                  v213 = *v105;
                  v125 = v213;
                }

                v126 = v125;
              }

              v128 = v126;
            }

            v130 = v128;
          }

          v275 = v130;
        }

        v273 = 16;
        if ((v293 & 1) == 0)
        {
          goto LABEL_437;
        }

        if ((v293 & 0x1C20) != 0)
        {
          if (!v274)
          {
            goto LABEL_437;
          }
        }

        else if (!v275)
        {
          goto LABEL_437;
        }

        v307 = v297;
LABEL_437:
        v293 &= ~0x200u;
LABEL_438:
        v289 = 0;
LABEL_439:
        v272 = v290;
        if ((v290 & 0x80000000) == 0)
        {
          v293 &= ~0x80u;
        }

        i = v309;
        if ((v293 & 0x1C20) != 0)
        {
          if (v274 || v290 || (v293 & 1) != 0 && v273 == 8)
          {
            i = __ujtoa_0(v274, i, v273, v293 & 1, v268);
          }
        }

        else if (v275 || v290 || (v293 & 1) != 0 && v273 == 8)
        {
          i = __ultoa_0(v275, i, v273, v293 & 1, v268);
        }

        v270 = (v308 - i + 128) >> 2;
        if (v270 >= 33)
        {
          abort_report_np("%s:%s:%u: size (%zd) > BUF (%d)");
        }

        if ((v293 & 0x200) != 0 && v270)
        {
          v106 = grouping_init_0(v288, v270, v301);
          v270 += v106;
        }

        goto LABEL_462;
      case 'z':
        v293 |= 0x400u;
        continue;
      default:
        if (!v297)
        {
          goto LABEL_706;
        }

        i = v308;
        v308[0] = v297;
        v270 = 1;
        v289 = 0;
        goto LABEL_462;
    }
  }
}

int vfwprintf(FILE *a1, const __int32 *a2, __darwin_va_list a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return vfwprintf_l(a1, v4, a2, a3);
  }

  else
  {
    return vfwprintf_l(a1, __global_locale, a2, a3);
  }
}

uint64_t get_decpt(_xlocale *a1)
{
  v4 = a1;
  v3 = 0;
  memcpy(&__b, &initial_mbs, sizeof(__b));
  v1 = localeconv_l(v4);
  if (mbrtowc_l(&v3, v1->decimal_point, *(*(v4 + 166) + 64), &__b, v4) >= 0xFFFFFFFFFFFFFFFELL)
  {
    return 46;
  }

  return v3;
}

uint64_t io_print_0(uint64_t a1, uint64_t a2, int a3, _xlocale *a4)
{
  *(a1 + 24 + 16 * *(a1 + 16)) = a2;
  *(a1 + 24 + 16 * *(a1 + 16) + 8) = a3;
  *(a1 + 20) += a3;
  v4 = *(a1 + 16) + 1;
  *(a1 + 16) = v4;
  if (v4 < 8)
  {
    return 0;
  }

  else
  {
    return __sprint_0(*a1, a4, a1 + 8);
  }
}

__int32 *__mbsconv(const char *a1, int a2, _xlocale *a3)
{
  memset(&__b, 0, sizeof(__b));
  v4 = *(*(a3 + 166) + 64);
  if (!a1)
  {
    return 0;
  }

  if (a2 < 0)
  {
    v7 = strlen(a1);
    v5 = 0;
  }

  else
  {
    v8 = a1;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    memcpy(&__b, &initial_mbs, sizeof(__b));
    while (v6 != a2)
    {
      v5 = mbrlen_l(v8, v4, &__b, a3);
      if (!v5 || v5 >= 0xFFFFFFFFFFFFFFFELL)
      {
        break;
      }

      v8 += v5;
      ++v6;
      v7 += v5;
    }

    if (v5 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return 0;
    }
  }

  v11 = malloc_type_malloc();
  if (!v11)
  {
    return 0;
  }

  v10 = v11;
  v9 = a1;
  memcpy(&__b, &initial_mbs, sizeof(__b));
  while (v7)
  {
    v5 = mbrtowc_l(v10, v9, v7, &__b, a3);
    if (!v5 || v5 >= 0xFFFFFFFFFFFFFFFELL)
    {
      break;
    }

    ++v10;
    v9 += v5;
    v7 -= v5;
  }

  if (v5 < 0xFFFFFFFFFFFFFFFELL)
  {
    *v10 = 0;
    return v11;
  }

  else
  {
    free(v11);
    return 0;
  }
}

uint64_t exponent_0(_DWORD *a1, int a2, int a3)
{
  v11 = a2;
  *a1 = a3;
  if (a2 < 0)
  {
    v11 = -a2;
    v10 = a1 + 2;
    a1[1] = 45;
  }

  else
  {
    v10 = a1 + 2;
    a1[1] = 43;
  }

  v8 = &v12;
  if (v11 <= 9)
  {
    if (a3 == 101 || a3 == 69)
    {
      v5 = v10++;
      *v5 = 48;
    }

    v6 = v10++;
    *v6 = v11 + 48;
  }

  else
  {
    do
    {
      v8 = (v8 - 4);
      *v8 = v11 % 10 + 48;
      v11 /= 10;
    }

    while (v11 > 9);
    v9 = (v8 - 4);
    *v9 = v11 + 48;
    while (v9 < &v12)
    {
      v3 = v9;
      v9 = (v9 + 4);
      v4 = v10++;
      *v4 = *v3;
    }
  }

  return v10 - a1;
}

uint64_t grouping_init_0(uint64_t a1, int a2, _xlocale *a3)
{
  v3 = localeconv_l(a3);
  *(a1 + 8) = __fix_nogrouping(v3->grouping);
  *a1 = get_thousep(a3);
  *(a1 + 24) = 0;
  *(a1 + 20) = 0;
  *(a1 + 16) = a2;
  while (**(a1 + 8) != 127 && *(a1 + 16) > **(a1 + 8))
  {
    *(a1 + 16) -= **(a1 + 8);
    if (*(*(a1 + 8) + 1))
    {
      ++*(a1 + 20);
      ++*(a1 + 8);
    }

    else
    {
      ++*(a1 + 24);
    }
  }

  return (*(a1 + 20) + *(a1 + 24));
}

_DWORD *__ultoa_0(unint64_t a1, _DWORD *a2, int a3, int a4, uint64_t a5)
{
  v9 = a1;
  v8 = a2;
  if (a3 == 8)
  {
    do
    {
      *--v8 = (v9 & 7) + 48;
      v9 >>= 3;
    }

    while (v9);
    if (a4 && *v8 != 48)
    {
      v5 = v8--;
      *(v5 - 1) = 48;
    }

    return v8;
  }

  if (a3 != 10)
  {
    if (a3 != 16)
    {
      abort_report_np("%s:%s:%u: __ultoa: invalid base=%d");
    }

    do
    {
      *--v8 = *(a5 + (v9 & 0xF));
      v9 >>= 4;
    }

    while (v9);
    return v8;
  }

  if (a1 >= 0xA)
  {
    if (a1 > 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = a2 - 1;
      *(a2 - 1) = a1 % 0xA + 48;
      v7 = a1 / 0xA;
    }

    else
    {
      v7 = a1;
    }

    do
    {
      *--v8 = v7 % 10 + 48;
      v7 /= 10;
    }

    while (v7);
    return v8;
  }

  *(a2 - 1) = a1 + 48;
  return a2 - 1;
}

uint64_t io_pad_0(uint64_t a1, int a2, uint64_t a3, _xlocale *a4)
{
  while (a2 > 0)
  {
    if (a2 < 16)
    {
      v5 = a2;
    }

    else
    {
      v5 = 16;
    }

    if (io_print_0(a1, a3, v5, a4))
    {
      return -1;
    }

    a2 -= v5;
  }

  return 0;
}

uint64_t grouping_print_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _xlocale *a5)
{
  if (io_printandpad_0(a2, a3, a4, *(a1 + 16), "0", a5))
  {
    return -1;
  }

  else
  {
    for (i = a3 + 4 * *(a1 + 16); ; i += 4 * **(a1 + 8))
    {
      v6 = 1;
      if (*(a1 + 20) <= 0)
      {
        v6 = *(a1 + 24) > 0;
      }

      if (!v6)
      {
        break;
      }

      if (*(a1 + 24) <= 0)
      {
        --*(a1 + 8);
        --*(a1 + 20);
      }

      else
      {
        --*(a1 + 24);
      }

      if (io_print_0(a2, a1, 1, a5))
      {
        return -1;
      }

      if (io_printandpad_0(a2, i, a4, **(a1 + 8), "0", a5))
      {
        return -1;
      }
    }

    if (i > a4)
    {
      i = a4;
    }

    return ((i - a3) / 4);
  }
}

uint64_t io_printandpad_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _xlocale *a6)
{
  v7 = (a3 - a2) / 4;
  if (v7 > a4)
  {
    v7 = a4;
  }

  if (v7 <= 0)
  {
    v7 = 0;
    return io_pad_0(a1, a4 - v7, a5, a6);
  }

  if (!io_print_0(a1, a2, v7, a6))
  {
    return io_pad_0(a1, a4 - v7, a5, a6);
  }

  return -1;
}

uint64_t __sprint_0(FILE *a1, _xlocale *a2, uint64_t a3)
{
  v7 = *a3;
  while (*(a3 + 12))
  {
    v6 = *v7;
    v4 = v7[1];
    for (i = 0; i < v4; ++i)
    {
      if (__xfputwc(*(v6 + 4 * i), a1, a2) == -1)
      {
        return -1;
      }
    }

    *(a3 + 12) -= v4;
    v7 += 2;
  }

  *(a3 + 8) = 0;
  return 0;
}

uint64_t __xfputwc(__int32 a1, FILE *a2, _xlocale *a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  memset(&__b, 0, sizeof(__b));
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  if ((v12->_flags & 0x200) != 0)
  {
    memcpy(&__b, &initial_mbs, sizeof(__b));
    v5 = wcrtomb_l(v10, v13, &__b, v11);
    if (v5 == -1)
    {
      v12->_flags |= 0x40u;
      return -1;
    }

    else
    {
      v8 = &v6;
      HIDWORD(v9) = v5;
      LODWORD(v9) = 1;
      v6 = v10;
      v7 = v5;
      if (__sfvwrite(v12, &v8) == -1)
      {
        return -1;
      }

      else
      {
        return v13;
      }
    }
  }

  else
  {
    return __fputwc(v13, v12, v11);
  }
}

uint64_t get_thousep(_xlocale *a1)
{
  v4 = a1;
  v3 = 0;
  memcpy(&__b, &initial_mbs, sizeof(__b));
  v1 = localeconv_l(v4);
  if (mbrtowc_l(&v3, v1->thousands_sep, *(*(v4 + 166) + 64), &__b, v4) >= 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return v3;
}

int vfwscanf(FILE *a1, const __int32 *a2, __darwin_va_list a3)
{
  flockfile(a1);
  if (!((32 * *(a1->_extra + 72)) >> 5))
  {
    *(a1->_extra + 72) = *(a1->_extra + 72) & 0xF8 | 1;
  }

  v10 = __locale_key;
  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v10);
  if (v9)
  {
    v3 = __vfwscanf(a1, v9, a2, a3);
  }

  else
  {
    v3 = __vfwscanf(a1, __global_locale, a2, a3);
  }

  v5 = v3;
  funlockfile(a1);
  return v5;
}

uint64_t __vfwscanf(uint64_t a1, _xlocale *a2, __int32 *a3, __int32 **a4)
{
  v87 = a1;
  v86 = a2;
  v85 = a3;
  v84 = a4;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  i = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  base = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  __n = 0;
  v67 = 0;
  v66 = 0;
  memset(&__b, 0, sizeof(__b));
  v65 = *(*(v86 + 166) + 64);
  v77 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v66 = v84;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v4 = v85++;
      v83 = *v4;
      if (!v83)
      {
        return v77;
      }

      if (!iswspace_l(v83, v86))
      {
        break;
      }

      while (1)
      {
        v83 = __fgetwc(v87, v86);
        v50 = 0;
        if (v83 != -1)
        {
          v50 = iswspace_l(v83, v86) != 0;
        }

        if (!v50)
        {
          break;
        }

        ++v76;
      }

      if (v83 != -1)
      {
        __ungetwc(v83, v87, v86);
      }
    }

    if (v83 == 37)
    {
      break;
    }

    v71 = __fgetwc(v87, v86);
    if (v71 == -1)
    {
      goto LABEL_314;
    }

LABEL_20:
    if (v71 != v83)
    {
      __ungetwc(v71, v87, v86);
      return v77;
    }

    ++v76;
  }

  v82 = 0;
  v79 = 0;
  while (2)
  {
    v5 = v85++;
    v83 = *v5;
    switch(v83)
    {
      case 0:
        return -1;
      case 36:
        v67 = v82;
        if (v82 < 1 || v67 > 9 || *(v85 - 3) != 37)
        {
          goto LABEL_314;
        }

        v82 = 0;
        v84 = v66;
        while (v67 > 1)
        {
          v6 = *v84++;
          v64 = v6;
          --v67;
        }

        continue;
      case 37:
        while (2)
        {
          v71 = __fgetwc(v87, v86);
          if (v71 == -1)
          {
            goto LABEL_314;
          }

          if (iswspace_l(v71, v86))
          {
            ++v76;
            continue;
          }

          goto LABEL_20;
        }

      case 42:
        v79 |= 8u;
        continue;
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
        v82 = 10 * v82 + v83 - 48;
        continue;
      case 65:
      case 69:
      case 70:
      case 71:
      case 97:
      case 101:
      case 102:
      case 103:
        v83 = 4;
        goto LABEL_83;
      case 67:
        v79 |= 1u;
        goto LABEL_63;
      case 76:
        v79 |= 2u;
        continue;
      case 83:
        v79 |= 1u;
        goto LABEL_51;
      case 88:
      case 120:
        v79 |= 0x100u;
        v83 = 3;
        v79 |= 0x8000u;
        base = 16;
        goto LABEL_83;
      case 91:
        v74 = v85;
        if (*v85 == 94)
        {
          v72 = 1;
          ++v85;
        }

        else
        {
          v72 = 0;
        }

        if (*v85 == 93)
        {
          ++v85;
        }

        while (1)
        {
          v49 = 0;
          if (*v85)
          {
            v49 = *v85 != 93;
          }

          if (!v49)
          {
            break;
          }

          ++v85;
        }

        v73 = v85++;
        v79 |= 0x20u;
        v83 = 1;
        goto LABEL_83;
      case 99:
LABEL_63:
        v79 |= 0x20u;
        v83 = 0;
        goto LABEL_83;
      case 100:
        v83 = 3;
        base = 10;
        goto LABEL_83;
      case 104:
        if ((v79 & 4) != 0)
        {
          v79 &= ~4u;
          v79 |= 0x4000u;
        }

        else
        {
          v79 |= 4u;
        }

        continue;
      case 105:
        v83 = 3;
        base = 0;
        goto LABEL_83;
      case 106:
        v79 |= 0x800u;
        continue;
      case 108:
        if (v79)
        {
          v79 &= ~1u;
          v79 |= 0x400u;
        }

        else
        {
          v79 |= 1u;
        }

        continue;
      case 110:
        if ((v79 & 8) == 0)
        {
          v7 = *v84++;
          v62 = v7;
          v63 = v7;
          if (v7)
          {
            if ((v79 & 0x4000) != 0)
            {
              *v63 = v76;
            }

            else if ((v79 & 4) != 0)
            {
              *v63 = v76;
            }

            else if (v79)
            {
              *v63 = v76;
            }

            else if ((v79 & 0x400) != 0)
            {
              *v63 = v76;
            }

            else if ((v79 & 0x800) != 0)
            {
              *v63 = v76;
            }

            else if ((v79 & 0x2000) != 0)
            {
              *v63 = v76;
            }

            else if ((v79 & 0x1000) != 0)
            {
              *v63 = v76;
            }

            else
            {
              *v63 = v76;
            }
          }
        }

        goto LABEL_2;
      case 111:
        v83 = 3;
        v79 |= 0x8000u;
        base = 8;
        goto LABEL_83;
      case 112:
        v79 |= 0x110u;
        v83 = 3;
        v79 |= 0x8000u;
        base = 16;
        goto LABEL_83;
      case 113:
        v79 |= 0x400u;
        continue;
      case 115:
LABEL_51:
        v83 = 2;
        goto LABEL_83;
      case 116:
        v79 |= 0x1000u;
        continue;
      case 117:
        v83 = 3;
        v79 |= 0x8000u;
        base = 10;
LABEL_83:
        if ((v79 & 0x20) != 0)
        {
          goto LABEL_90;
        }

        while (1)
        {
          v71 = __fgetwc(v87, v86);
          v48 = 0;
          if (v71 != -1)
          {
            v48 = iswspace_l(v71, v86) != 0;
          }

          if (!v48)
          {
            break;
          }

          ++v76;
        }

        if (v71 == -1)
        {
          goto LABEL_314;
        }

        __ungetwc(v71, v87, v86);
LABEL_90:
        if (v83)
        {
          switch(v83)
          {
            case 1:
              if (!v82)
              {
                v82 = -1;
              }

              if (v79 & 8) != 0 && (v79)
              {
                for (i = 0; ; ++i)
                {
                  v71 = __fgetwc(v87, v86);
                  v45 = 0;
                  if (v71 != -1)
                  {
                    v12 = v82--;
                    v45 = 0;
                    if (v12)
                    {
                      if (v72)
                      {
                        v44 = wmemchr(v74, v71, v73 - v74) == 0;
                      }

                      else
                      {
                        v44 = wmemchr(v74, v71, v73 - v74) != 0;
                      }

                      v45 = v44;
                    }
                  }

                  if (!v45)
                  {
                    break;
                  }
                }

                if (v71 != -1)
                {
                  __ungetwc(v71, v87, v86);
                }

                if (i)
                {
                  goto LABEL_193;
                }

                return v77;
              }

              if (v79)
              {
                v13 = *v84++;
                v59 = v13;
                v81 = v13;
                v78 = v13;
                while (1)
                {
                  v71 = __fgetwc(v87, v86);
                  v43 = 0;
                  if (v71 != -1)
                  {
                    v14 = v82--;
                    v43 = 0;
                    if (v14)
                    {
                      if (v72)
                      {
                        v42 = wmemchr(v74, v71, v73 - v74) == 0;
                      }

                      else
                      {
                        v42 = wmemchr(v74, v71, v73 - v74) != 0;
                      }

                      v43 = v42;
                    }
                  }

                  if (!v43)
                  {
                    break;
                  }

                  v15 = v81++;
                  *v15 = v71;
                }

                if (v71 != -1)
                {
                  __ungetwc(v71, v87, v86);
                }

                i = v81 - v78;
                if (!i)
                {
                  return v77;
                }

                *v81 = 0;
                ++v77;
              }

              else
              {
                if ((v79 & 8) == 0)
                {
                  v16 = *v84++;
                  v58 = v16;
                  v70 = v16;
                }

                i = 0;
                memcpy(&__b, &initial_mbs_0, sizeof(__b));
                while (1)
                {
                  v71 = __fgetwc(v87, v86);
                  v41 = 0;
                  if (v71 != -1)
                  {
                    v41 = 0;
                    if (v82)
                    {
                      if (v72)
                      {
                        v40 = wmemchr(v74, v71, v73 - v74) == 0;
                      }

                      else
                      {
                        v40 = wmemchr(v74, v71, v73 - v74) != 0;
                      }

                      v41 = v40;
                    }
                  }

                  if (!v41)
                  {
                    break;
                  }

                  if (v82 < v65 || (v79 & 8) != 0)
                  {
                    __n = wcrtomb_l(__src, v71, &__b, v86);
                    if (__n == -1)
                    {
                      goto LABEL_314;
                    }

                    if (__n > v82)
                    {
                      break;
                    }

                    if ((v79 & 8) == 0)
                    {
                      memcpy(v70, __src, __n);
                    }
                  }

                  else
                  {
                    __n = wcrtomb_l(v70, v71, &__b, v86);
                    if (__n == -1)
                    {
                      goto LABEL_314;
                    }
                  }

                  if ((v79 & 8) == 0)
                  {
                    v70 += __n;
                  }

                  v82 -= __n;
                  ++i;
                }

                if (v71 == -1)
                {
                  if (!v77)
                  {
                    return -1;
                  }
                }

                else
                {
                  __ungetwc(v71, v87, v86);
                }

                if (!i)
                {
                  return v77;
                }

                if ((v79 & 8) == 0)
                {
                  *v70 = 0;
                  ++v77;
                }
              }

LABEL_193:
              v76 += i;
              goto LABEL_2;
            case 2:
              if (!v82)
              {
                v82 = -1;
              }

              if (v79 & 8) != 0 && (v79)
              {
                while (1)
                {
                  v71 = __fgetwc(v87, v86);
                  v39 = 0;
                  if (v71 != -1)
                  {
                    v17 = v82--;
                    v39 = 0;
                    if (v17)
                    {
                      v39 = iswspace_l(v71, v86) == 0;
                    }
                  }

                  if (!v39)
                  {
                    break;
                  }

                  ++v76;
                }

                if (v71 != -1)
                {
                  __ungetwc(v71, v87, v86);
                }
              }

              else if (v79)
              {
                v18 = *v84++;
                v57 = v18;
                v81 = v18;
                v78 = v18;
                while (1)
                {
                  v71 = __fgetwc(v87, v86);
                  v38 = 0;
                  if (v71 != -1)
                  {
                    v19 = v82--;
                    v38 = 0;
                    if (v19)
                    {
                      v38 = iswspace_l(v71, v86) == 0;
                    }
                  }

                  if (!v38)
                  {
                    break;
                  }

                  v20 = v81++;
                  *v20 = v71;
                  ++v76;
                }

                if (v71 != -1)
                {
                  __ungetwc(v71, v87, v86);
                }

                *v81 = 0;
                ++v77;
              }

              else
              {
                if ((v79 & 8) == 0)
                {
                  v21 = *v84++;
                  v56 = v21;
                  v70 = v21;
                }

                memcpy(&__b, &initial_mbs_0, sizeof(__b));
                while (1)
                {
                  v71 = __fgetwc(v87, v86);
                  v37 = 0;
                  if (v71 != -1)
                  {
                    v37 = 0;
                    if (v82)
                    {
                      v37 = iswspace_l(v71, v86) == 0;
                    }
                  }

                  if (!v37)
                  {
                    break;
                  }

                  if (v82 < v65 || (v79 & 8) != 0)
                  {
                    __n = wcrtomb_l(__src, v71, &__b, v86);
                    if (__n == -1)
                    {
                      goto LABEL_314;
                    }

                    if (__n > v82)
                    {
                      break;
                    }

                    if ((v79 & 8) == 0)
                    {
                      memcpy(v70, __src, __n);
                    }
                  }

                  else
                  {
                    __n = wcrtomb_l(v70, v71, &__b, v86);
                    if (__n == -1)
                    {
                      goto LABEL_314;
                    }
                  }

                  if ((v79 & 8) == 0)
                  {
                    v70 += __n;
                  }

                  v82 -= __n;
                  ++v76;
                }

                if (v71 != -1)
                {
                  __ungetwc(v71, v87, v86);
                }

                if ((v79 & 8) == 0)
                {
                  *v70 = 0;
                  ++v77;
                }
              }

              break;
            case 3:
              if (!v82 || v82 > 0x200)
              {
                v82 = 512;
              }

              v79 |= 0x2C0u;
              v81 = nptr;
              while (v82)
              {
                v83 = __fgetwc(v87, v86);
                if (v83 == 43 || v83 == 45)
                {
                  if ((v79 & 0x40) == 0)
                  {
                    goto LABEL_271;
                  }

                  v79 &= ~0x40u;
                  v79 |= 0x10000u;
                }

                else
                {
                  if (v83 == 48)
                  {
                    if (!base)
                    {
                      base = 8;
                      v79 |= 0x100u;
                    }

                    if ((v79 & 0x200) != 0)
                    {
                      v79 &= 0xFFFFFD3F;
                    }

                    else
                    {
                      v79 &= 0xFFFFFE3F;
                    }

                    goto LABEL_274;
                  }

                  if ((v83 - 49) <= 6)
                  {
                    base = __vfwscanf_basefix[base];
                    v79 &= 0xFFFFFE3F;
                    goto LABEL_274;
                  }

                  if (v83 == 57 || v83 == 56)
                  {
                    base = __vfwscanf_basefix[base];
                    if (base <= 8)
                    {
                      goto LABEL_271;
                    }

                    v79 &= 0xFFFFFE3F;
                    goto LABEL_274;
                  }

                  if ((v83 - 65) <= 5)
                  {
LABEL_263:
                    if (base <= 10)
                    {
                      goto LABEL_271;
                    }

                    v79 &= 0xFFFFFE3F;
                    goto LABEL_274;
                  }

                  if (v83 != 88)
                  {
                    if ((v83 - 97) <= 5)
                    {
                      goto LABEL_263;
                    }

                    if (v83 != 120)
                    {
                      goto LABEL_271;
                    }
                  }

                  if ((v79 & 0x100) == 0 || v81 != &nptr[((v79 & 0x10000) != 0) + 1])
                  {
LABEL_271:
                    if (v83 != -1)
                    {
                      __ungetwc(v83, v87, v86);
                    }

                    break;
                  }

                  base = 16;
                  v79 &= ~0x100u;
                }

LABEL_274:
                v22 = v81++;
                *v22 = v83;
                --v82;
              }

              if ((v79 & 0x80) != 0)
              {
                if (v81 > nptr)
                {
                  __ungetwc(*--v81, v87, v86);
                }

                return v77;
              }

              v83 = *(v81 - 1);
              if (v83 == 120 || v83 == 88)
              {
                --v81;
                __ungetwc(v83, v87, v86);
              }

              if ((v79 & 8) == 0)
              {
                v55 = 0;
                *v81 = 0;
                if ((v79 & 0x8000) != 0)
                {
                  v55 = wcstoumax_l(nptr, 0, base, v86);
                }

                else
                {
                  v55 = wcstoimax_l(nptr, 0, base, v86);
                }

                if ((v79 & 0x10) != 0)
                {
                  v23 = *v84++;
                  v54[9] = v23;
                  *v23 = v55;
                }

                else if ((v79 & 0x4000) != 0)
                {
                  v24 = *v84++;
                  v54[8] = v24;
                  *v24 = v55;
                }

                else if ((v79 & 4) != 0)
                {
                  v25 = *v84++;
                  v54[7] = v25;
                  *v25 = v55;
                }

                else if (v79)
                {
                  v26 = *v84++;
                  v54[6] = v26;
                  *v26 = v55;
                }

                else if ((v79 & 0x400) != 0)
                {
                  v27 = *v84++;
                  v54[5] = v27;
                  *v27 = v55;
                }

                else if ((v79 & 0x800) != 0)
                {
                  v28 = *v84++;
                  v54[4] = v28;
                  *v28 = v55;
                }

                else if ((v79 & 0x1000) != 0)
                {
                  v29 = *v84++;
                  v54[3] = v29;
                  *v29 = v55;
                }

                else
                {
                  v30 = *v84++;
                  if ((v79 & 0x2000) != 0)
                  {
                    v54[2] = v30;
                    *v30 = v55;
                  }

                  else
                  {
                    v54[1] = v30;
                    *v30 = v55;
                  }
                }

                ++v77;
              }

              v76 += v81 - nptr;
              break;
            case 4:
              v54[0] = 0;
              v31 = parsefloat_0(v87, v54, v82, v86);
              v82 = v31;
              if (!v31)
              {
                return v77;
              }

              if ((v79 & 8) == 0)
              {
                if ((v79 & 2) != 0)
                {
                  v53 = wcstold_l(v54[0], &v81, v86);
                  v32 = *v84++;
                  *v32 = v53;
                }

                else if (v79)
                {
                  v52 = wcstod_l(v54[0], &v81, v86);
                  v33 = *v84++;
                  *v33 = v52;
                }

                else
                {
                  v51 = wcstof_l(v54[0], &v81, v86);
                  v34 = *v84++;
                  *v34 = v51;
                }

                ++v77;
              }

              v76 += v82;
              break;
          }

          goto LABEL_2;
        }

        if (!v82)
        {
          v82 = 1;
        }

        if (v79)
        {
          if ((v79 & 8) == 0)
          {
            v8 = *v84++;
            v61 = v8;
            v81 = v8;
          }

          for (i = 0; ; ++i)
          {
            v9 = v82--;
            v47 = 0;
            if (v9)
            {
              v71 = __fgetwc(v87, v86);
              v47 = v71 != -1;
            }

            if (!v47)
            {
              break;
            }

            if ((v79 & 8) == 0)
            {
              v10 = v81++;
              *v10 = v71;
            }
          }

          if (!i)
          {
            goto LABEL_314;
          }

          v76 += i;
          if ((v79 & 8) == 0)
          {
            ++v77;
          }

          goto LABEL_2;
        }

        if ((v79 & 8) == 0)
        {
          v11 = *v84++;
          v60 = v11;
          v70 = v11;
        }

        i = 0;
        memcpy(&__b, &initial_mbs_0, sizeof(__b));
        while (1)
        {
          v46 = 0;
          if (v82)
          {
            v71 = __fgetwc(v87, v86);
            v46 = v71 != -1;
          }

          if (!v46)
          {
            break;
          }

          if (v82 < v65 || (v79 & 8) != 0)
          {
            __n = wcrtomb_l(__src, v71, &__b, v86);
            if (__n == -1)
            {
              goto LABEL_314;
            }

            if (__n > v82)
            {
              __ungetwc(v71, v87, v86);
              break;
            }

            if ((v79 & 8) == 0)
            {
              memcpy(v70, __src, __n);
            }
          }

          else
          {
            __n = wcrtomb_l(v70, v71, &__b, v86);
            if (__n == -1)
            {
              goto LABEL_314;
            }
          }

          if ((v79 & 8) == 0)
          {
            v70 += __n;
          }

          v82 -= __n;
          ++i;
        }

        if (i)
        {
          v76 += i;
          if ((v79 & 8) == 0)
          {
            ++v77;
          }

          goto LABEL_2;
        }

LABEL_314:
        if (v77)
        {
          return v77;
        }

        else
        {
          return -1;
        }

      case 122:
        v79 |= 0x2000u;
        continue;
      default:
        return v77;
    }
  }
}

int vfwscanf_l(FILE *a1, locale_t a2, const __int32 *a3, __darwin_va_list a4)
{
  v8 = a2;
  if (a2)
  {
    if (a2 == -1)
    {
      v8 = __global_locale;
    }
  }

  else
  {
    v8 = &__c_locale;
  }

  flockfile(a1);
  if (!((32 * *(a1->_extra + 72)) >> 5))
  {
    *(a1->_extra + 72) = *(a1->_extra + 72) & 0xF8 | 1;
  }

  v5 = __vfwscanf(a1, v8, a3, a4);
  funlockfile(a1);
  return v5;
}

uint64_t parsefloat_0(uint64_t a1, unsigned int **a2, uint64_t a3, _xlocale *a4)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  memcpy(&__b, &initial_mbs_0, sizeof(__b));
  v4 = localeconv();
  v22 = mbrtowc_l(&v16, v4->decimal_point, *(*(v23 + 166) + 64), &__b, v23);
  if (v22 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v16 = 46;
  }

  if (v24)
  {
    v8 = v24 + 1;
  }

  else
  {
    v8 = 513;
  }

  v11 = v8;
  v13 = __parsefloat_buf(4 * v8);
  if (v13)
  {
    v12 = &v13[v8 - 1];
    v21 = v13 - 1;
    v17 = -1;
    v20 = v13;
    while (1)
    {
      v7 = 1;
      if (v24)
      {
        v7 = v20 < v12;
      }

      if (!v7)
      {
        break;
      }

      v17 = __fgetwc(v26, v23);
      if (v17 == -1)
      {
        break;
      }

      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (!v18)
              {
                v18 = 1;
                if (v17 == 45 || v17 == 43)
                {
                  goto LABEL_95;
                }
              }

              if (v18 != 1)
              {
                break;
              }

              switch(v17)
              {
                case '0':
                  v18 = 5;
                  v21 = v20;
                  goto LABEL_95;
                case 'I':
                  goto LABEL_35;
                case 'N':
                  goto LABEL_36;
                case 'i':
LABEL_35:
                  v18 = 2;
                  goto LABEL_95;
                case 'n':
LABEL_36:
                  v18 = 3;
                  goto LABEL_95;
              }

              v18 = 6;
            }

            switch(v18)
            {
              case 2:
                if (v19 > 6 || v17 != aNfinity[v19] && v17 != aNfinity_0[v19])
                {
                  goto LABEL_100;
                }

                if (v19 == 1 || v19 == 6)
                {
                  v21 = v20;
                }

                ++v19;
                goto LABEL_95;
              case 3:
                if (v19)
                {
                  if (v19 == 1)
                  {
                    if (v17 != 78 && v17 != 110)
                    {
                      goto LABEL_100;
                    }

                    v21 = v20;
                  }

                  else if (v19 == 2)
                  {
                    if (v17 != 40)
                    {
                      goto LABEL_100;
                    }
                  }

                  else if (v17 == 41)
                  {
                    v21 = v20;
                    v18 = 4;
                  }

                  else if (!iswalnum_l(v17, v23) && v17 != 95)
                  {
                    goto LABEL_100;
                  }
                }

                else if (v17 != 65 && v17 != 97)
                {
                  goto LABEL_100;
                }

                ++v19;
                goto LABEL_95;
              case 4:
                goto LABEL_100;
            }

            if (v18 != 5)
            {
              break;
            }

            v18 = 6;
            if (v17 == 88 || v17 == 120)
            {
              v14 = 1;
              goto LABEL_95;
            }

            v15 = 1;
          }

          if (v18 != 6)
          {
            break;
          }

          if ((v14 & 1) != 0 && iswxdigit_l(v17, v23) || iswdigit_l(v17, v23))
          {
            v15 = 1;
LABEL_72:
            if (v15)
            {
              v21 = v20;
            }

            goto LABEL_95;
          }

          v18 = 7;
          if (v17 == v16)
          {
            goto LABEL_72;
          }
        }

        if (v18 == 7)
        {
          if (v17 == 69 || v17 == 101) && (v14 & 1) == 0 || (v17 == 80 || v17 == 112) && (v14)
          {
            if ((v15 & 1) == 0)
            {
              goto LABEL_100;
            }

            v18 = 8;
          }

          else
          {
            if (((v14 & 1) == 0 || !iswxdigit_l(v17, v23)) && !iswdigit_l(v17, v23))
            {
              goto LABEL_100;
            }

            v21 = v20;
            v15 = 1;
          }

          goto LABEL_95;
        }

        if (v18 != 8)
        {
          break;
        }

        v18 = 9;
        if (v17 == 45 || v17 == 43)
        {
          goto LABEL_95;
        }
      }

      if (v18 != 9)
      {
        abort_report_np("%s:%s:%u: unknown state %d");
      }

      if (!iswdigit_l(v17, v23))
      {
        break;
      }

      v21 = v20;
LABEL_95:
      if (v20 >= v12)
      {
        v10 = v20 - v13;
        v9 = v21 - v13;
        v11 += 513;
        v13 = __parsefloat_buf(4 * v11);
        if (!v13)
        {
          *v25 = 0;
          return 0;
        }

        v12 = &v13[v11 - 1];
        v20 = &v13[v10];
        v21 = &v13[v9];
      }

      v5 = v20++;
      *v5 = v17;
      v17 = -1;
    }

LABEL_100:
    if (v17 != -1)
    {
      __ungetwc(v17, v26, v23);
    }

    while (v21 < --v20)
    {
      __ungetwc(*v20, v26, v23);
    }

    *++v21 = 0;
    *v25 = v13;
    return (v21 - v13);
  }

  else
  {
    *v25 = 0;
    return 0;
  }
}

int vprintf(const char *a1, va_list a2)
{
  v3 = __stdoutp;
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return vfprintf_l(v3, v4, a1, a2);
  }

  else
  {
    return vfprintf_l(v3, __global_locale, a1, a2);
  }
}

int vscanf(const char *__format, va_list a2)
{
  flockfile(__stdinp);
  v4 = __stdinp;
  v9 = __locale_key;
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v9);
  if (v8)
  {
    v2 = __svfscanf_l(v4, v8, __format, a2);
  }

  else
  {
    v2 = __svfscanf_l(v4, __global_locale, __format, a2);
  }

  v5 = v2;
  funlockfile(__stdinp);
  return v5;
}

int vscanf_l(locale_t a1, const char *a2, va_list a3)
{
  v7 = a1;
  if (a1)
  {
    if (a1 == -1)
    {
      v7 = __global_locale;
    }
  }

  else
  {
    v7 = &__c_locale;
  }

  flockfile(__stdinp);
  v4 = __svfscanf_l(__stdinp, v7, a2, a3);
  funlockfile(__stdinp);
  return v4;
}

uint64_t _vsnprintf(uint64_t a1, pthread_rwlock_t *a2, char *a3, unint64_t a4, _xlocale *a5, char *a6, int *a7)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v12 = a7;
  v10 = 0;
  memset(__b, 0, sizeof(__b));
  memset(v20, 0, sizeof(v20));
  __b[13] = v20;
  v20[0] = 0;
  memset(v19, 0, sizeof(v19));
  v19[0] = 850045858;
  memcpy(&v20[1], v19, 0x40uLL);
  LOBYTE(v20[9]) &= 0xF8u;
  memset(&v20[10], 0, 0x80uLL);
  LOBYTE(v20[9]) &= ~8u;
  v11 = v15;
  if (v15)
  {
    --v15;
  }

  if (v15 > 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFFLL;
  }

  if (!v15)
  {
    if (v11)
    {
      *v16 = 0;
    }

    v16 = &v9;
    v15 = 1;
  }

  LODWORD(__b[2]) = -65016;
  __b[0] = v16;
  __b[3] = v16;
  HIDWORD(__b[1]) = v15;
  LODWORD(__b[4]) = v15;
  *(__b[13] + 72) &= 0xF8u;
  memset((__b[13] + 80), 0, 0x80uLL);
  v10 = __v2printf(v18, v17, __b, v14, v13, v12);
  if (v11)
  {
    *__b[0] = 0;
  }

  return v10;
}

int vsnprintf(char *__str, size_t __size, const char *__format, va_list a4)
{
  v6 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v5)
  {
    return _vsnprintf(-1, 0, __str, __size, v5, __format, a4);
  }

  else
  {
    return _vsnprintf(-1, 0, __str, __size, __global_locale, __format, a4);
  }
}

int vsprintf_l(char *a1, locale_t a2, const char *a3, va_list a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  memset(__b, 0, sizeof(__b));
  memset(v12, 0, sizeof(v12));
  __b[13] = v12;
  v12[0] = 0;
  memset(v11, 0, sizeof(v11));
  v11[0] = 850045858;
  memcpy(&v12[1], v11, 0x40uLL);
  LOBYTE(v12[9]) &= 0xF8u;
  LOBYTE(v12[9]) &= ~8u;
  LODWORD(__b[2]) = -65016;
  __b[0] = v10;
  __b[3] = v10;
  HIDWORD(__b[1]) = 0x7FFFFFFF;
  LODWORD(__b[4]) = 0x7FFFFFFF;
  LOBYTE(v12[9]) &= 0xF8u;
  memset(&v12[10], 0, 0x80uLL);
  v6 = __v2printf(-1, 0, __b, v9, v8, v7);
  *__b[0] = 0;
  return v6;
}

int vsprintf(char *a1, const char *a2, va_list a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return vsprintf_l(a1, v4, a2, a3);
  }

  else
  {
    return vsprintf_l(a1, __global_locale, a2, a3);
  }
}

int vsscanf_l(const char *a1, locale_t a2, const char *a3, va_list a4)
{
  __s = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  memset(__b, 0, sizeof(__b));
  memset(v11, 0, sizeof(v11));
  __b[13] = v11;
  v11[0] = 0;
  memset(v10, 0, sizeof(v10));
  v10[0] = 850045858;
  memcpy(&v11[1], v10, 0x40uLL);
  LOBYTE(v11[9]) &= 0xF8u;
  memset(&v11[10], 0, 0x80uLL);
  LOBYTE(v11[9]) &= ~8u;
  libc_hooks_will_read_cstring(__s);
  LODWORD(__b[2]) = -65532;
  __b[0] = __s;
  __b[3] = __s;
  LODWORD(__b[1]) = strlen(__s);
  LODWORD(__b[4]) = __b[1];
  __b[8] = eofread;
  __b[11] = 0;
  __b[15] = 0;
  *(__b[13] + 72) &= 0xF8u;
  memset((__b[13] + 80), 0, 0x80uLL);
  return __svfscanf_l(__b, v8, v7, v6);
}

int vsscanf(const char *__str, const char *__format, va_list a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return vsscanf_l(__str, v4, __format, a3);
  }

  else
  {
    return vsscanf_l(__str, __global_locale, __format, a3);
  }
}

int vswprintf_l(__int32 *a1, size_t n, locale_t a3, const __int32 *a4, __darwin_va_list a5)
{
  v15 = a1;
  v14 = n;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  memset(&__b, 0, sizeof(__b));
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v18, 0, sizeof(v18));
  v10[13] = v18;
  v18[0] = 0;
  memset(v17, 0, sizeof(v17));
  v17[0] = 850045858;
  memcpy(&v18[1], v17, 0x40uLL);
  LOBYTE(v18[9]) &= 0xF8u;
  memset(&v18[10], 0, 0x80uLL);
  LOBYTE(v18[9]) &= ~8u;
  if (v13)
  {
    if (v13 == -1)
    {
      v13 = __global_locale;
    }
  }

  else
  {
    v13 = &__c_locale;
  }

  if (v14)
  {
    LODWORD(v10[2]) = -48632;
    v10[0] = malloc_type_malloc();
    v10[3] = v10[0];
    if (v10[0])
    {
      HIDWORD(v10[1]) = 127;
      LODWORD(v10[4]) = 127;
      *(v10[13] + 72) &= 0xF8u;
      memset((v10[13] + 80), 0, 0x80uLL);
      v8 = __vfwprintf(v10, v13, v12, v11);
      if (v8 < 0)
      {
        v7 = *__error();
        free(v10[3]);
        *__error() = v7;
        return -1;
      }

      else
      {
        *v10[0] = 0;
        v9 = v10[3];
        memcpy(&__b, &vswprintf_l_initial, sizeof(__b));
        v6 = mbsrtowcs_l(v15, &v9, v14, &__b, v13);
        free(v10[3]);
        if (v6 == -1)
        {
          *__error() = 92;
          return -1;
        }

        else if (v6 == v14)
        {
          v15[v14 - 1] = 0;
          *__error() = 84;
          return -1;
        }

        else
        {
          return v8;
        }
      }
    }

    else
    {
      *__error() = 12;
      return -1;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int vswprintf(__int32 *a1, size_t a2, const __int32 *a3, __darwin_va_list a4)
{
  v6 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v5)
  {
    return vswprintf_l(a1, a2, v5, a3, a4);
  }

  else
  {
    return vswprintf_l(a1, a2, __global_locale, a3, a4);
  }
}

int vswscanf_l(const __int32 *a1, locale_t a2, const __int32 *a3, __darwin_va_list a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  memset(&__b, 0, sizeof(__b));
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  memset(v17, 0, sizeof(v17));
  v10[13] = v17;
  v17[0] = 0;
  memset(v16, 0, sizeof(v16));
  v16[0] = 850045858;
  memcpy(&v17[1], v16, 0x40uLL);
  LOBYTE(v17[9]) &= 0xF8u;
  memset(&v17[10], 0, 0x80uLL);
  LOBYTE(v17[9]) &= ~8u;
  if (v13)
  {
    if (v13 == -1)
    {
      v13 = __global_locale;
    }
  }

  else
  {
    v13 = &__c_locale;
  }

  v4 = wcslen(v14) * *(*(v13 + 166) + 64);
  v9 = malloc_type_malloc();
  if (!v9)
  {
    return -1;
  }

  memcpy(&__b, &vswscanf_l_initial, sizeof(__b));
  v6 = v14;
  v8 = wcsrtombs_l(v9, &v6, 0xFFFFFFFFFFFFFFFFLL, &__b, v13);
  if (v8 == -1)
  {
    free(v9);
    return -1;
  }

  else
  {
    LODWORD(v10[2]) = -65532;
    v10[0] = v9;
    v10[3] = v9;
    LODWORD(v10[1]) = v8;
    LODWORD(v10[4]) = v8;
    v10[8] = eofread_0;
    v10[11] = 0;
    v10[15] = 0;
    *(v10[13] + 72) &= 0xF8u;
    memset((v10[13] + 80), 0, 0x80uLL);
    v7 = __vfwscanf(v10, v13, v12, v11);
    free(v9);
    return v7;
  }
}

int vswscanf(const __int32 *a1, const __int32 *a2, __darwin_va_list a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return vswscanf_l(a1, v4, a2, a3);
  }

  else
  {
    return vswscanf_l(a1, __global_locale, a2, a3);
  }
}

int vwprintf(const __int32 *a1, __darwin_va_list a2)
{
  v3 = __stdoutp;
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return vfwprintf_l(v3, v4, a1, a2);
  }

  else
  {
    return vfwprintf_l(v3, __global_locale, a1, a2);
  }
}

int vwscanf(const __int32 *a1, __darwin_va_list a2)
{
  v3 = __stdinp;
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return vfwscanf_l(v3, v4, a1, a2);
  }

  else
  {
    return vfwscanf_l(v3, __global_locale, a1, a2);
  }
}

int __swbuf(int a1, FILE *a2)
{
  v7 = a1;
  a2->_w = a2->_lbfsize;
  if ((a2->_flags & 8) == 0 || (v4 = 0, !a2->_bf._base) && (v4 = 0, (a2->_flags & 0x200) == 0))
  {
    v4 = __swsetup(a2) != 0;
  }

  if (v4)
  {
    *__error() = 9;
    return -1;
  }

  else
  {
    if (!((32 * *(a2->_extra + 72)) >> 5))
    {
      *(a2->_extra + 72) = *(a2->_extra + 72) & 0xF8 | 7;
    }

    v5 = a2->_p - a2->_bf._base;
    if (v5 >= a2->_bf._size)
    {
      if (__fflush(a2))
      {
        return -1;
      }

      v5 = 0;
    }

    --a2->_w;
    v2 = a2->_p++;
    *v2 = v7;
    if ((v5 + 1 == a2->_bf._size || (a2->_flags & 1) != 0 && v7 == 10) && __fflush(a2))
    {
      return -1;
    }

    else
    {
      return v7;
    }
  }
}

int wprintf(const __int32 *a1, ...)
{
  va_start(va, a1);
  v2 = __stdoutp;
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vfwprintf_l(v2, v3, a1, va);
  }

  else
  {
    return vfwprintf_l(v2, __global_locale, a1, va);
  }
}

int wscanf(const __int32 *a1, ...)
{
  va_start(va, a1);
  v2 = __stdinp;
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vfwscanf_l(v2, v3, a1, va);
  }

  else
  {
    return vfwscanf_l(v2, __global_locale, a1, va);
  }
}

uint64_t __swsetup(uint64_t a1)
{
  pthread_once(&__sdidinit, __sinit);
  if ((*(a1 + 16) & 8) == 0)
  {
    if ((*(a1 + 16) & 0x10) == 0)
    {
      *__error() = 9;
      *(a1 + 16) |= 0x40u;
      return -1;
    }

    if ((*(a1 + 16) & 4) != 0)
    {
      if (*(a1 + 88))
      {
        if (*(a1 + 88) != a1 + 116)
        {
          free(*(a1 + 88));
        }

        *(a1 + 88) = 0;
      }

      *(a1 + 16) &= 0xFFDBu;
      *(a1 + 8) = 0;
      *a1 = *(a1 + 24);
    }

    *(a1 + 16) |= 8u;
  }

  if (!*(a1 + 24))
  {
    __smakebuf(a1);
  }

  if (*(a1 + 16))
  {
    *(a1 + 12) = 0;
    *(a1 + 40) = -*(a1 + 32);
  }

  else
  {
    if ((*(a1 + 16) & 2) != 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(a1 + 32);
    }

    *(a1 + 12) = v2;
  }

  return 0;
}

FILE *__cdecl open_wmemstream(__int32 **__bufp, size_t *__sizep)
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
        memset(v6 + 4, 0, 0x80uLL);
        wmemstream_update(v6);
        v3 = funopen(v6, 0, wmemstream_write, wmemstream_seek, wmemstream_close);
        if (v3)
        {
          fwide(v3, 1);
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

uint64_t wmemstream_update(uint64_t result)
{
  v2 = 0;
  if ((*(result + 16) & 0x8000000000000000) == 0)
  {
    v2 = *(result + 24) >= 0;
  }

  if (!v2)
  {
    __assert_rtn("wmemstream_update", "open_wmemstream.c", 86, "ms->len >= 0 && ms->offset >= 0");
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

uint64_t wmemstream_write(void *a1, const char *a2, int a3)
{
  v10 = a2;
  v9 = a3;
  v6 = wbuflen(a1 + 4, a2, a3);
  if (v6 < 0)
  {
LABEL_2:
    *__error() = 92;
    return -1;
  }

  else if (wmemstream_grow(a1, a1[3] + v6))
  {
    v7 = 0;
    while (1)
    {
      v4 = 0;
      if (v9 > 0)
      {
        v4 = a1[3] < a1[2];
      }

      if (!v4)
      {
        break;
      }

      v5 = mbrtowc((**a1 + 4 * a1[3]), v10, v9, (a1 + 4));
      if (v5 == -1)
      {
        if (!v7)
        {
          goto LABEL_2;
        }

        break;
      }

      if (!v5)
      {
        v5 = 1;
      }

      if (v5 == -2)
      {
        v7 += v9;
        v9 = 0;
      }

      else
      {
        v7 += v5;
        v10 += v5;
        v9 -= v5;
        ++a1[3];
      }
    }

    wmemstream_update(a1);
    fprintf(__stderrp, "WMS: write(%p, %d) = %zd\n", a1, v9, v7);
    return v7;
  }

  else
  {
    return -1;
  }
}

uint64_t wmemstream_seek(void *a1, uint64_t a2, int a3)
{
  v4 = a1[3];
  if (a3)
  {
    if (a3 == 1)
    {
      if (a2)
      {
        __assert_rtn("wmemstream_seek", "open_wmemstream.c", 188, "pos == 0");
      }
    }

    else if (a3 == 2)
    {
      if (a2 < 0)
      {
        if (a2 + a1[2] < 0)
        {
          fprintf(__stderrp, "WMS: bad SEEK_END: pos %jd, len %zd\n", a2, a1[2]);
          *__error() = 22;
          return -1;
        }
      }

      else if (0x7FFFFFFFFFFFFFFFLL - a1[2] < a2)
      {
        fprintf(__stderrp, "WMS: bad SEEK_END: pos %jd, len %zd\n", a2, a1[2]);
        *__error() = 84;
        return -1;
      }

      a1[3] = a1[2] + a2;
    }
  }

  else
  {
    if (a2 < 0)
    {
      __assert_rtn("wmemstream_seek", "open_wmemstream.c", 183, "pos >= 0");
    }

    a1[3] = a2;
  }

  if (a1[3] != v4)
  {
    memset(a1 + 4, 0, 0x80uLL);
  }

  wmemstream_update(a1);
  fprintf(__stderrp, "WMS: seek(%p, %jd, %d) %jd -> %jd\n", a1, a2, a3, v4, a1[3]);
  return a1[3];
}

uint64_t wbuflen(const void *a1, const char *a2, int a3)
{
  memset(&__b, 0, sizeof(__b));
  v4 = 0;
  memcpy(&__b, a1, sizeof(__b));
  while (a3 > 0)
  {
    v5 = mbrlen(a2, a3, &__b);
    if (v5 == -1)
    {
      return -1;
    }

    if (v5 == -2)
    {
      break;
    }

    if (!v5)
    {
      v5 = 1;
    }

    a3 -= v5;
    a2 += v5;
    ++v4;
  }

  return v4;
}

uint64_t wmemstream_grow(uint64_t **a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0 || a2 >= 0x1FFFFFFFFFFFFFFFLL)
  {
    v4 = 0x1FFFFFFFFFFFFFFELL;
  }

  else
  {
    v4 = a2;
  }

  if (v4 <= a1[2])
  {
    return 1;
  }

  else
  {
    v2 = **a1;
    v5 = reallocarray_DARWIN_EXTSN();
    if (v5)
    {
      fprintf(__stderrp, "WMS: %p growing from %zd to %zd\n", a1, a1[2], v4);
      wmemset((v5 + 4 * a1[2] + 4), 0, v4 - a1[2]);
      **a1 = v5;
      a1[2] = v4;
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

char *__cdecl asctime_r(const tm *a1, char *a2)
{
  if (a1->tm_wday < 0 || a1->tm_wday >= 7)
  {
    v5 = "???";
  }

  else
  {
    v5 = &asctime_r_wday_name + 3 * a1->tm_wday;
  }

  if (a1->tm_mon < 0 || a1->tm_mon >= 12)
  {
    v4 = "???";
  }

  else
  {
    v4 = &asctime_r_mon_name[3 * a1->tm_mon];
  }

  strftime_l(v10, 0xDuLL, "%Y", a1, 0);
  if (strlen(v10) > 4)
  {
    v2 = "%.3s %.3s%3d %2.2d:%2.2d:%2.2d     %s\n";
  }

  else
  {
    v2 = "%.3s %.3s%3d %2.2d:%2.2d:%2.2d %-4s\n";
  }

  sprintf(__src, v2, v5, v4, a1->tm_mday, a1->tm_hour, a1->tm_min, a1->tm_sec, v10);
  if (strlen(__src) < 0x1A || a2 == &buf_asctime)
  {
    strcpy(a2, __src);
    return a2;
  }

  else
  {
    *__error() = 84;
    return 0;
  }
}

double difftime(time_t a1, time_t a2)
{
  if (a1 < 0 == a2 < 0)
  {
    return (a1 - a2);
  }

  if (a1 < 0)
  {
    return -(a2 - a1);
  }

  return (a1 - a2);
}

int ftime(timeb *a1)
{
  v4 = a1;
  v3 = 0;
  v2.tv_sec = 0;
  *&v2.tv_usec = 0;
  if (gettimeofday(&v2, &v3) < 0)
  {
    return -1;
  }

  v4->millitm = v2.tv_usec / 1000;
  v4->time = v2.tv_sec;
  v4->timezone = v3;
  v4->dstflag = WORD2(v3);
  return 0;
}

void tzsetwall_basic(int a1)
{
  tzsetwall_check_default_file_timestamp();
  if (!a1)
  {
    pthread_rwlock_rdlock(&lcl_rwlock);
  }

  if (lcl_is_set < 0)
  {
    if (!a1)
    {
      pthread_rwlock_unlock(&lcl_rwlock);
    }
  }

  else
  {
    pthread_rwlock_unlock(&lcl_rwlock);
    pthread_rwlock_wrlock(&lcl_rwlock);
    lcl_is_set = -1;
    if (tzload(0, &lclmem, 1))
    {
      gmtload(&lclmem);
    }

    settzname();
    pthread_rwlock_unlock(&lcl_rwlock);
    if (a1)
    {
      pthread_rwlock_rdlock(&lcl_rwlock);
    }
  }
}

void _st_tzset_basic(int a1)
{
  __s2 = getenv_copy_np("TZ");
  if (__s2)
  {
    if (!a1)
    {
      pthread_rwlock_rdlock(&lcl_rwlock);
    }

    if (lcl_is_set > 0 && !strcmp(lcl_TZname, __s2))
    {
      if (!a1)
      {
        pthread_rwlock_unlock(&lcl_rwlock);
      }
    }

    else
    {
      pthread_rwlock_unlock(&lcl_rwlock);
      pthread_rwlock_wrlock(&lcl_rwlock);
      lcl_is_set = strlen(__s2) < 0x100;
      if (lcl_is_set)
      {
        strcpy(lcl_TZname, __s2);
      }

      if (*__s2)
      {
        if (tzload(__s2, &lclmem, 1) && (*__s2 == 58 || tzparse(__s2, &lclmem, 0)))
        {
          gmtload(&lclmem);
        }
      }

      else
      {
        lclmem = 0;
        dword_D851C = 0;
        dword_D8520 = 0;
        dword_DAF68 = 0;
        qword_DAF60[0] = 0;
        dword_DAF6C = 0;
        strcpy(byte_DC760, "UTC");
      }

      settzname();
      pthread_rwlock_unlock(&lcl_rwlock);
      if (a1)
      {
        pthread_rwlock_rdlock(&lcl_rwlock);
      }
    }

    free(__s2);
  }

  else
  {
    tzsetwall_basic(a1);
  }
}

uint64_t tzload(const char *a1, uint64_t a2, int a3)
{
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v40 = 0;
  j = 0;
  v38 = 0;
  i = 0;
  NOCANCEL = 0;
  v34 = 0;
  v35 = -1;
  *(a2 + 20) = 0;
  *(v42 + 16) = 0;
  if (v43 && issetugid() && (*v43 == 58 && v43[1] == 47 || *v43 == 47 || strchr(v43, 46)))
  {
    v43 = 0;
  }

  if (!v43)
  {
    v43 = "/var/db/timezone/localtime";
  }

  v33 = 0;
  memset(&__b, 0, sizeof(__b));
  __dst = malloc_type_malloc();
  if (!__dst)
  {
    goto LABEL_136;
  }

  if (*v43 == 58)
  {
    ++v43;
  }

  v33 = *v43 == 47;
  if (v33)
  {
LABEL_19:
    if (v33 && access(v43, 4))
    {
      goto LABEL_22;
    }

    v38 = open_NOCANCEL();
    if (v38 == -1)
    {
      goto LABEL_22;
    }

    if (fstat(v38, &__b) < 0 || (__b.st_mode & 0xF000) != 0x8000)
    {
      free(__dst);
      close_NOCANCEL();
      return -1;
    }

    free(__dst);
    v34 = malloc_type_malloc();
    if (!v34 || (NOCANCEL = read_NOCANCEL(), (close_NOCANCEL() & 0x80000000) != 0) || NOCANCEL <= 0)
    {
LABEL_136:
      free(v34);
      return v35;
    }

    for (i = 4; i <= 8; i *= 2)
    {
      v30 = detzcode(v34 + 24);
      v29 = detzcode(v34 + 20);
      *v42 = detzcode(v34 + 28);
      *(v42 + 4) = detzcode(v34 + 32);
      *(v42 + 8) = detzcode(v34 + 36);
      *(v42 + 12) = detzcode(v34 + 40);
      v40 = v34 + 44;
      if ((*v42 & 0x80000000) != 0 || *v42 > 50 || *(v42 + 8) <= 0 || *(v42 + 8) > 256 || (*(v42 + 4) & 0x80000000) != 0 || *(v42 + 4) > 1200 || (*(v42 + 12) & 0x80000000) != 0 || *(v42 + 12) > 50 || v30 != *(v42 + 8) && v30 || v29 != *(v42 + 8) && v29 || NOCANCEL - (v40 - v34) < *(v42 + 4) * i + *(v42 + 4) + 6 * *(v42 + 8) + *(v42 + 12) + *v42 * (i + 4) + v30 + v29)
      {
        goto LABEL_136;
      }

      for (j = 0; j < *(v42 + 4); ++j)
      {
        if (i == 4)
        {
          v22 = detzcode(v40);
        }

        else
        {
          v22 = detzcode64(v40);
        }

        *(v42 + 24 + 8 * j) = v22;
        v40 += i;
      }

      for (j = 0; j < *(v42 + 4); ++j)
      {
        v3 = v40++;
        *(v42 + 9624 + j) = *v3;
        if (*(v42 + 9624 + j) >= *(v42 + 8))
        {
          goto LABEL_136;
        }
      }

      for (j = 0; j < *(v42 + 8); ++j)
      {
        v28 = v42 + 10824 + 24 * j;
        *v28 = detzcode(v40);
        v40 += 4;
        v4 = v40++;
        *(v28 + 8) = *v4;
        if (*(v28 + 8) >= 2u)
        {
          goto LABEL_136;
        }

        v5 = v40++;
        *(v28 + 12) = *v5;
        if ((*(v28 + 12) & 0x80000000) != 0 || *(v28 + 12) > *(v42 + 12))
        {
          goto LABEL_136;
        }
      }

      for (j = 0; j < *(v42 + 12); *(v42 + 16968 + j++) = *v6)
      {
        v6 = v40++;
      }

      *(v42 + 16968 + j) = 0;
      for (j = 0; j < *v42; ++j)
      {
        v27 = (v42 + 17480 + 16 * j);
        if (i == 4)
        {
          v21 = detzcode(v40);
        }

        else
        {
          v21 = detzcode64(v40);
        }

        *v27 = v21;
        v40 += i;
        v27[1] = detzcode(v40);
        v40 += 4;
      }

      for (j = 0; j < *(v42 + 8); ++j)
      {
        v26 = v42 + 10824 + 24 * j;
        if (v30)
        {
          v7 = v40++;
          *(v26 + 16) = *v7;
          if (*(v26 + 16) >= 2u)
          {
            goto LABEL_136;
          }
        }

        else
        {
          *(v26 + 16) = 0;
        }
      }

      for (j = 0; j < *(v42 + 8); ++j)
      {
        v25 = v42 + 10824 + 24 * j;
        if (v29)
        {
          v8 = v40++;
          *(v25 + 20) = *v8;
          if (*(v25 + 20) >= 2u)
          {
            goto LABEL_136;
          }
        }

        else
        {
          *(v25 + 20) = 0;
        }
      }

      for (j = 0; j < *(v42 + 4) - 2; ++j)
      {
        if (*(v42 + 24 + 8 * j) > *(v42 + 24 + 8 * (j + 1)))
        {
          *(v42 + 4) = ++j;
          break;
        }
      }

      if (!v34[4])
      {
        break;
      }

      NOCANCEL -= v40 - v34;
      for (j = 0; j < NOCANCEL; ++j)
      {
        v34[j] = v40[j];
      }

      if (i >= 8)
      {
        break;
      }
    }

    if (v41 && NOCANCEL > 2 && *v34 == 10 && v34[NOCANCEL - 1] == 10 && *(v42 + 8) + 2 <= 256)
    {
      v24 = malloc_type_malloc();
      if (!v24)
      {
        goto LABEL_136;
      }

      v34[NOCANCEL - 1] = 0;
      if (!tzparse(v34 + 1, v24, 0) && *(v24 + 2) == 2 && *(v42 + 12) + *(v24 + 3) <= 50)
      {
        for (j = 0; j < 2; ++j)
        {
          *&v24[24 * j + 10836] += *(v42 + 12);
        }

        for (j = 0; j < *(v24 + 3); ++j)
        {
          v9 = v24[j + 16968];
          v10 = v42 + 16968;
          v11 = (*(v42 + 12))++;
          *(v10 + v11) = v9;
        }

        for (j = 0; ; ++j)
        {
          v20 = 0;
          if (j < *(v24 + 1))
          {
            v20 = *&v24[8 * j + 24] <= *(v42 + 24 + 8 * (*(v42 + 4) - 1));
          }

          if (!v20)
          {
            break;
          }
        }

        while (1)
        {
          v19 = 0;
          if (j < *(v24 + 1))
          {
            v19 = *(v42 + 4) < 1200;
          }

          if (!v19)
          {
            break;
          }

          *(v42 + 24 + 8 * *(v42 + 4)) = *&v24[8 * j + 24];
          *(v42 + 9624 + (*(v42 + 4))++) = *(v42 + 8) + v24[j++ + 9624];
        }

        v12 = v42 + 10824;
        v13 = (*(v42 + 8))++;
        v14 = v12 + 24 * v13;
        *v14 = *(v24 + 10824);
        *(v14 + 16) = *(v24 + 1355);
        v15 = v42 + 10824;
        v16 = (*(v42 + 8))++;
        v17 = v15 + 24 * v16;
        *v17 = *(v24 + 678);
        *(v17 + 16) = *(v24 + 1358);
      }

      free(v24);
    }

    if (*(v42 + 4) > 1)
    {
      for (j = 1; j < *(v42 + 4); ++j)
      {
        if (typesequiv(v42, *(v42 + 9624 + j), *(v42 + 9624)) && differ_by_repeat(*(v42 + 24 + 8 * j), *(v42 + 24)))
        {
          *(v42 + 16) = 1;
          break;
        }
      }

      for (j = *(v42 + 4) - 2; (j & 0x80000000) == 0; --j)
      {
        if (typesequiv(v42, *(v42 + 9624 + *(v42 + 4) - 1), *(v42 + 9624 + j)) && differ_by_repeat(*(v42 + 24 + 8 * (*(v42 + 4) - 1)), *(v42 + 24 + 8 * j)))
        {
          *(v42 + 20) = 1;
          break;
        }
      }
    }

    v35 = 0;
    goto LABEL_136;
  }

  v40 = "/var/db/timezone/zoneinfo";
  v23 = strlen("/var/db/timezone/zoneinfo") + 1;
  if (v23 + strlen(v43) < 0x400)
  {
    strcpy(__dst, v40);
    strcat(__dst, "/");
    strcat(__dst, v43);
    if (strchr(v43, 46))
    {
      v33 = 1;
    }

    v43 = __dst;
    goto LABEL_19;
  }

LABEL_22:
  free(__dst);
  return -1;
}

uint64_t tzparse(char *a1, uint64_t a2, int a3)
{
  v39 = a1;
  v38 = a2;
  v37 = a3;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v35 = 0;
  if (a3)
  {
    v36 = v39;
    v34 = strlen(v39);
    v39 += v34;
    if (v34 >= 0x200)
    {
      v34 = 511;
    }

    v32 = 0;
  }

  else
  {
    v39 = getzname(v39, &v36, &v34);
    if (!*v39)
    {
      return -1;
    }

    v39 = getoffset(v39, &v32);
    if (!v39)
    {
      return -1;
    }
  }

  v27 = tzload("posixrules", v38, 0);
  if (v27)
  {
    *v38 = 0;
  }

  if (*v39)
  {
    if (*v39 == 60)
    {
      v35 = ++v39;
      v39 = getqzname(v39, 62);
      if (*v39 != 62)
      {
        return -1;
      }

      v33 = v39 - v35;
      ++v39;
    }

    else
    {
      v35 = v39;
      v39 = getzname(v39, &v35, &v33);
    }

    if (!*v39 || *v39 == 44 || *v39 == 59)
    {
      v31 = v32 - 3600;
    }

    else
    {
      v39 = getoffset(v39, &v31);
      if (!v39)
      {
        return -1;
      }
    }

    if (!*v39 && v27)
    {
      v39 = ",M4.1.0,M10.5.0";
    }

    if (*v39 == 44 || *v39 == 59)
    {
      memset(v26, 0, sizeof(v26));
      memset(v25, 0, sizeof(v25));
      ++v39;
      v39 = getrule(v39, v26);
      if (!v39)
      {
        return -1;
      }

      v3 = v39++;
      if (*v3 != 44)
      {
        return -1;
      }

      v39 = getrule(v39, v25);
      if (!v39)
      {
        return -1;
      }

      if (*v39)
      {
        return -1;
      }

      *(v38 + 8) = 2;
      *(v38 + 10824) = -v31;
      *(v38 + 10832) = 1;
      *(v38 + 10836) = v34 + 1;
      *(v38 + 10848) = -v32;
      *(v38 + 10856) = 0;
      *(v38 + 10860) = 0;
      v30 = (v38 + 24);
      v29 = (v38 + 9624);
      v23 = 0;
      *(v38 + 4) = 0;
      for (i = 1970; *(v38 + 4) + 2 <= 1200; ++i)
      {
        v22 = transtime(v23, i, v26, v32);
        v21 = transtime(v23, i, v25, v31);
        v4 = v30++;
        if (v22 <= v21)
        {
          *v4 = v22;
          v8 = v29++;
          *v8 = 0;
          v9 = v30++;
          *v9 = v21;
          v10 = v29++;
          *v10 = 1;
        }

        else
        {
          *v4 = v21;
          v5 = v29++;
          *v5 = 1;
          v6 = v30++;
          *v6 = v22;
          v7 = v29++;
          *v7 = 0;
        }

        *(v38 + 4) += 2;
        v14 = 0;
        if (!(i % 4))
        {
          v13 = 1;
          if (!(i % 100))
          {
            v13 = i % 400 == 0;
          }

          v14 = v13;
        }

        if (v23 + 86400 * *(&year_lengths + v14) <= v23)
        {
          break;
        }

        v23 += 86400 * *(&year_lengths + v14);
      }
    }

    else
    {
      if (*v39)
      {
        return -1;
      }

      v20 = 0;
      for (j = 0; j < *(v38 + 4); ++j)
      {
        if (!*(v38 + 10824 + 24 * *(v38 + 9624 + j) + 8))
        {
          v20 = -*(v38 + 10824 + 24 * *(v38 + 9624 + j));
          break;
        }
      }

      for (k = 0; k < *(v38 + 4); ++k)
      {
        if (*(v38 + 10824 + 24 * *(v38 + 9624 + k) + 8))
        {
          v19 = -*(v38 + 10824 + 24 * *(v38 + 9624 + k));
          break;
        }
      }

      for (m = 0; m < *(v38 + 4); ++m)
      {
        v15 = *(v38 + 9624 + m);
        *(v38 + 9624 + m) = *(v38 + 10824 + 24 * *(v38 + 9624 + m) + 8);
        if (!*(v38 + 10824 + 24 * v15 + 20))
        {
          *(v38 + 24 + 8 * m) += v32 - v20;
        }

        if (!*(v38 + 10824 + 24 * v15 + 8))
        {
          v20 = -*(v38 + 10824 + 24 * v15);
        }
      }

      *(v38 + 10824) = -v32;
      *(v38 + 10832) = 0;
      *(v38 + 10836) = 0;
      *(v38 + 10848) = -v31;
      *(v38 + 10856) = 1;
      *(v38 + 10860) = v34 + 1;
      *(v38 + 8) = 2;
    }
  }

  else
  {
    v33 = 0;
    *(v38 + 8) = 1;
    *(v38 + 4) = 0;
    *(v38 + 10824) = -v32;
    *(v38 + 10832) = 0;
    *(v38 + 10836) = 0;
  }

  *(v38 + 12) = v34 + 1;
  if (v33)
  {
    *(v38 + 12) += v33 + 1;
  }

  if (*(v38 + 12) > 0x200)
  {
    return -1;
  }

  else
  {
    v28 = (v38 + 16968);
    strncpy((v38 + 16968), v36, v34);
    v28 += v34;
    v11 = v28++;
    *v11 = 0;
    if (v33)
    {
      strncpy(v28, v35, v33);
      v28[v33] = 0;
    }

    return 0;
  }
}

uint64_t gmtload(uint64_t a1)
{
  result = tzload("UTC", a1, 1);
  if (result)
  {
    return tzparse("UTC", a1, 1);
  }

  return result;
}

size_t settzname()
{
  tzname[0] = "   ";
  off_D5740 = "   ";
  daylight = 0;
  result = _st_set_timezone(0);
  __darwin_altzone = 0;
  if (dword_D851C || dword_D8520 != 1)
  {
    v6 = dword_D851C - 1;
    v4 = &unk_DAAB0;
  }

  else
  {
    v6 = 0;
    v4 = &unk_C42B5;
  }

  v5 = 7;
  while (1)
  {
    v1 = 0;
    if ((v6 & 0x80000000) == 0)
    {
      v1 = v5 != 0;
    }

    if (!v1)
    {
      break;
    }

    v3 = &qword_DAF60[3 * v4[v6]];
    if ((v5 & 4) != 0 && *(v3 + 2))
    {
      v5 &= ~4u;
      daylight = 1;
    }

    if (*(v3 + 2))
    {
      if ((v5 & 2) != 0)
      {
        v5 &= ~2u;
        off_D5740 = &byte_DC760[*(v3 + 3)];
        __darwin_altzone = -*v3;
      }
    }

    else if (v5)
    {
      v5 &= ~1u;
      tzname[0] = &byte_DC760[*(v3 + 3)];
      result = _st_set_timezone(-*v3);
    }

    if (!v6)
    {
      if ((v5 & 2) != 0)
      {
        __darwin_altzone = -*v3;
      }

      if (v5)
      {
        result = _st_set_timezone(-*v3);
      }
    }

    --v6;
  }

  for (i = 0; i < unk_D8524; ++i)
  {
    result = strchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 :+-._", byte_DC760[i]);
    if (!result)
    {
      byte_DC760[i] = 95;
    }
  }

  for (j = 0; j < dword_D8520; ++j)
  {
    __s = &byte_DC760[SHIDWORD(qword_DAF60[3 * j + 1])];
    result = strlen(__s);
    if (result > 0xFF)
    {
      result = strcmp(__s, "Local time zone must be set--see zic manual page");
      if (result)
      {
        __s[255] = 0;
      }
    }
  }

  return result;
}

uint64_t _st_localsub(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = *a1;
  v17 = &lclmem;
  if (unk_D8528 && v13 < *(v17 + 3) || v17[5] && v13 > *&v17[2 * v17[1] + 4])
  {
    v12 = v13;
    if (v13 >= *(v17 + 3))
    {
      v10 = v13 - *&v17[2 * v17[1] + 4];
    }

    else
    {
      v10 = *(v17 + 3) - v13;
    }

    v9 = (v10 - 1) / 400 / 31556952 + 1;
    v11 = 0x2F0605980 * v9;
    if (v13 >= *(v17 + 3))
    {
      v12 -= v11;
    }

    else
    {
      v12 += v11;
    }

    if (v12 >= *(v17 + 3) && v12 <= *&v17[2 * v17[1] + 4])
    {
      v14 = _st_localsub(&v12, v19, v18);
      if (v14 != v18)
      {
        return v14;
      }

      v7 = *(v18 + 20);
      v8 = v13 >= *(v17 + 3) ? v7 + 400 * v9 : v7 - 400 * v9;
      *(v18 + 20) = v8;
      if (*(v18 + 20) == v8)
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
      return 0;
    }
  }

  else
  {
    if (v17[1] && v13 >= *(v17 + 3))
    {
      v6 = 1;
      v5 = v17[1];
      while (v6 < v5)
      {
        v4 = (v6 + v5) >> 1;
        if (v13 >= *&v17[2 * v4 + 6])
        {
          v6 = v4 + 1;
        }

        else
        {
          v5 = (v6 + v5) >> 1;
        }
      }

      v15 = *(v17 + v6 + 9623);
    }

    else
    {
      v15 = 0;
      while (v17[6 * v15 + 2708])
      {
        if (++v15 >= v17[2])
        {
          v15 = 0;
          break;
        }
      }
    }

    v16 = &v17[6 * v15 + 2706];
    v14 = timesub(&v13, *v16, v17, v18);
    if (v14)
    {
      *(v18 + 32) = v16[2];
      tzname[*(v18 + 32)] = v17 + v16[3] + 16968;
      *(v18 + 48) = v17 + v16[3] + 16968;
      return v14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t timesub(void *a1, uint64_t a2, int *a3, uint64_t a4)
{
  v17 = 0;
  v15 = 0;
  v14 = 0;
  v13 = *a3;
  while ((--v13 & 0x80000000) == 0)
  {
    v23 = &a3[4 * v13 + 4370];
    if (*a1 >= *v23)
    {
      if (*a1 == *v23)
      {
        if (v13 || (v11 = 1, *(v23 + 1) <= 0))
        {
          v11 = *(v23 + 1) > *&a3[4 * v13 + 4368];
        }

        v14 = v11;
        if (v11)
        {
          while (1)
          {
            v10 = 0;
            if (v13 > 0)
            {
              v10 = 0;
              if (*&a3[4 * v13 + 4370] == *&a3[4 * v13 + 4366] + 1)
              {
                v10 = *&a3[4 * v13 + 4372] == *&a3[4 * v13 + 4368] + 1;
              }
            }

            if (!v10)
            {
              break;
            }

            ++v14;
            --v13;
          }
        }
      }

      v15 = *(v23 + 1);
      break;
    }
  }

  v22 = *a1 / 86400;
  for (i = *a1 % 86400 + a2 - v15; i < 0; i += 86400)
  {
    --v22;
  }

  while (i >= 86400)
  {
    i -= 86400;
    ++v22;
  }

  *(a4 + 8) = i / 3600;
  v21 = i % 3600;
  *(a4 + 4) = v21 / 60;
  *a4 = v21 % 60 + v14;
  *(a4 + 24) = (v22 + 4) % 7;
  if ((*(a4 + 24) & 0x80000000) != 0)
  {
    *(a4 + 24) += 7;
  }

  for (j = 1970; ; j = v12)
  {
    v9 = 1;
    if ((v22 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      if (!(j % 4))
      {
        v7 = 1;
        if (!(j % 100))
        {
          v7 = j % 400 == 0;
        }

        v8 = v7;
      }

      v17 = v8;
      v9 = v22 >= *(&year_lengths + v8);
    }

    if (!v9)
    {
      break;
    }

    v12 = j + v22 / 365;
    if (v22 < 0)
    {
      --v12;
    }

    if (v12 - 1 < 0)
    {
      v6 = v12 / 4 - v12 / 100 + v12 / 400 - 1;
    }

    else
    {
      v6 = (v12 - 1) / 4 - (v12 - 1) / 100 + (v12 - 1) / 400;
    }

    if (j - 1 < 0)
    {
      v5 = j / 4 - j / 100 + j / 400 - 1;
    }

    else
    {
      v5 = (j - 1) / 4 - (j - 1) / 100 + (j - 1) / 400;
    }

    v22 -= 365 * (v12 - j) + v6 - v5;
  }

  v19 = j - 1900;
  if (v19 >= 0xFFFFFFFF80000000 && v19 <= 0x7FFFFFFF)
  {
    *(a4 + 20) = v19;
    *(a4 + 28) = v22;
    v16 = &mon_lengths[12 * v17];
    for (*(a4 + 16) = 0; v22 >= v16[*(a4 + 16)]; ++*(a4 + 16))
    {
      v22 -= v16[*(a4 + 16)];
    }

    *(a4 + 12) = v22 + 1;
    *(a4 + 32) = 0;
    *(a4 + 40) = a2;
    return a4;
  }

  else
  {
    *__error() = 84;
    return 0;
  }
}

tm *__cdecl localtime(const time_t *a1)
{
  pthread_once(&localtime_once, localtime_key_init);
  if (!localtime_key_error)
  {
    v3 = pthread_getspecific(localtime_key);
    if (!v3)
    {
      v3 = malloc_type_malloc();
      if (!v3)
      {
        return 0;
      }

      pthread_setspecific(localtime_key, v3);
    }

    pthread_rwlock_rdlock(&lcl_rwlock);
    _st_tzset_basic(1);
    v4 = _st_localsub(a1, 0, v3);
    pthread_rwlock_unlock(&lcl_rwlock);
    return v4;
  }

  v2 = localtime_key_error;
  *__error() = v2;
  return 0;
}

uint64_t localtime_key_init()
{
  localtime_key = 12;
  result = pthread_key_init_np();
  localtime_key_error = result;
  return result;
}

tm *__cdecl localtime_r(const time_t *a1, tm *a2)
{
  pthread_rwlock_rdlock(&lcl_rwlock);
  _st_tzset_basic(1);
  v4 = _st_localsub(a1, 0, a2);
  pthread_rwlock_unlock(&lcl_rwlock);
  return v4;
}

tm *__cdecl gmtime(const time_t *a1)
{
  pthread_once(&gmtime_once, gmtime_key_init);
  if (!gmtime_key_error)
  {
    v3 = pthread_getspecific(gmtime_key);
    if (!v3)
    {
      v3 = malloc_type_malloc();
      if (!v3)
      {
        return 0;
      }

      pthread_setspecific(gmtime_key, v3);
    }

    return gmtsub(a1, 0, v3);
  }

  v2 = gmtime_key_error;
  *__error() = v2;
  return 0;
}

uint64_t gmtime_key_init()
{
  gmtime_key = 13;
  result = pthread_key_init_np();
  gmtime_key_error = result;
  return result;
}

uint64_t gmtsub(void *a1, uint64_t a2, uint64_t a3)
{
  pthread_once(&gmt_once, gmt_init);
  v4 = timesub(a1, a2, gmtmem, a3);
  if (!v4)
  {
    return 0;
  }

  if (a2)
  {
    *(a3 + 48) = "   ";
  }

  else
  {
    *(a3 + 48) = &unk_E0F20;
  }

  return v4;
}

char *__cdecl ctime(const time_t *a1)
{
  v2 = localtime(a1);
  if (v2)
  {
    return asctime(v2);
  }

  else
  {
    return 0;
  }
}

char *__cdecl ctime_r(const time_t *a1, char *a2)
{
  v5 = a1;
  v4 = a2;
  memset(&__b, 0, sizeof(__b));
  if (localtime_r(v5, &__b))
  {
    return asctime_r(&__b, v4);
  }

  else
  {
    return 0;
  }
}

uint64_t _st_time1(_DWORD *a1, uint64_t (*a2)(uint64_t *a1, uint64_t a2, uint64_t a3), uint64_t a3, int a4)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  j = 0;
  k = 0;
  i = 0;
  v9 = 0;
  v8 = 0;
  if (a1)
  {
    if (v20[8] > 1)
    {
      v20[8] = 1;
    }

    v16 = time2(v20, v19, v18, &v8, v17);
    if (v8)
    {
      return v16;
    }

    else
    {
      if ((v20[8] & 0x80000000) != 0)
      {
        v20[8] = 0;
      }

      v4 = &lclmem;
      if (v19 != _st_localsub)
      {
        v4 = &gmtmem;
      }

      v15 = v4;
      for (i = 0; i < v15[2]; ++i)
      {
        v22[i + 256] = 0;
      }

      v9 = 0;
      for (i = v15[1] - 1; (i & 0x80000000) == 0; --i)
      {
        if (!v22[*(v15 + i + 9624) + 256])
        {
          v22[*(v15 + i + 9624) + 256] = 1;
          v5 = *(v15 + i + 9624);
          v6 = v9++;
          v22[v6] = v5;
        }
      }

      for (j = 0; j < v9; ++j)
      {
        v14 = v22[j];
        if (v15[6 * v14 + 2708] == v20[8])
        {
          for (k = 0; k < v9; ++k)
          {
            v13 = v22[k];
            if (v15[6 * v13 + 2708] != v20[8])
            {
              *v20 += v15[6 * v13 + 2706] - v15[6 * v14 + 2706];
              v20[8] = v20[8] == 0;
              v16 = time2(v20, v19, v18, &v8, v17);
              if (v8)
              {
                return v16;
              }

              *v20 -= v15[6 * v13 + 2706] - v15[6 * v14 + 2706];
              v20[8] = v20[8] == 0;
            }
          }
        }
      }

      return -1;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t time2(const void *a1, uint64_t (*a2)(uint64_t *a1, uint64_t a2, uint64_t a3), uint64_t a3, _DWORD *a4, int a5)
{
  v7 = time2sub(a1, a2, a3, a4, 0, a5);
  if (*a4)
  {
    return v7;
  }

  else
  {
    return time2sub(a1, a2, a3, a4, 1, a5);
  }
}

time_t mktime(tm *a1)
{
  v2 = *__error();
  pthread_rwlock_rdlock(&lcl_rwlock);
  _st_tzset_basic(1);
  v3 = _st_time1(a1, _st_localsub, 0, 1);
  pthread_rwlock_unlock(&lcl_rwlock);
  *__error() = v2;
  return v3;
}

time_t timelocal(tm *const a1)
{
  if (a1)
  {
    a1->tm_isdst = -1;
  }

  return mktime(a1);
}

time_t timegm(tm *const a1)
{
  if (a1)
  {
    a1->tm_isdst = 0;
  }

  return _st_time1(a1, gmtsub, 0, 1);
}

uint64_t timeoff(_DWORD *a1, uint64_t a2)
{
  if (a1)
  {
    a1[8] = 0;
  }

  return _st_time1(a1, gmtsub, a2, 1);
}

time_t time2posix(time_t a1)
{
  v3 = a1;
  tzset();
  v2 = v3;
  return v2 - leapcorr(&v3);
}

uint64_t leapcorr(void *a1)
{
  v2 = lclmem;
  while ((--v2 & 0x80000000) == 0)
  {
    if (*a1 >= qword_DC960[2 * v2])
    {
      return qword_DC960[2 * v2 + 1];
    }
  }

  return 0;
}

time_t posix2time(time_t a1)
{
  v10 = a1;
  v9 = 0;
  tzset();
  v4 = v10;
  v9 = v4 + leapcorr(&v10);
  v5 = v9;
  v6 = v5 - leapcorr(&v9);
  if (v6 >= v10)
  {
    if (v6 > v10)
    {
      do
      {
        v2 = --v9;
        v8 = v2 - leapcorr(&v9);
      }

      while (v8 > v10);
      if (v10 != v8)
      {
        return v9 + 1;
      }
    }

    return v9;
  }

  do
  {
    v3 = ++v9;
    v7 = v3 - leapcorr(&v9);
  }

  while (v7 < v10);
  if (v10 == v7)
  {
    return v9;
  }

  return v9 - 1;
}

double tzsetwall_check_default_file_timestamp()
{
  memset(&__b, 0, sizeof(__b));
  if (!lstat("/var/db/timezone/localtime", &__b))
  {
    if (__b.st_mtimespec.tv_sec > last_default_tzload_mtimespec || __b.st_mtimespec.tv_sec == last_default_tzload_mtimespec && __b.st_mtimespec.tv_nsec > *(&last_default_tzload_mtimespec + 1))
    {
      lcl_is_set = 0;
    }

    result = *&__b.st_mtimespec.tv_sec;
    last_default_tzload_mtimespec = __b.st_mtimespec;
  }

  return result;
}

uint64_t detzcode(_BYTE *a1)
{
  v1 = 0;
  if ((*a1 & 0x80) != 0)
  {
    v1 = -1;
  }

  v4 = v1;
  for (i = 0; i < 4; ++i)
  {
    v4 = a1[i] | (v4 << 8);
  }

  return v4;
}

uint64_t detzcode64(_BYTE *a1)
{
  v1 = 0;
  if ((*a1 & 0x80) != 0)
  {
    v1 = -1;
  }

  v4 = v1;
  for (i = 0; i < 8; ++i)
  {
    v4 = (v4 << 8) + a1[i];
  }

  return v4;
}

BOOL typesequiv(uint64_t a1, int a2, int a3)
{
  if (!a1 || a2 < 0 || a2 >= *(a1 + 8) || a3 < 0 || a3 >= *(a1 + 8))
  {
    return 0;
  }

  else
  {
    v6 = a1 + 10824 + 24 * a2;
    v5 = a1 + 10824 + 24 * a3;
    v4 = 0;
    if (*v6 == *v5)
    {
      v4 = 0;
      if (*(v6 + 8) == *(v5 + 8))
      {
        v4 = 0;
        if (*(v6 + 16) == *(v5 + 16))
        {
          v4 = 0;
          if (*(v6 + 20) == *(v5 + 20))
          {
            return strcmp((a1 + 16968 + *(v6 + 12)), (a1 + 16968 + *(v5 + 12))) == 0;
          }
        }
      }
    }

    return v4;
  }
}

char *getzname(const char *a1, void *a2, void *a3)
{
  v9 = a1;
  if (*a1 == 60 && (v5 = strchr(a1, 62)) != 0)
  {
    *a2 = v9 + 1;
    *a3 = v5 - v9 - 1;
    return v5 + 1;
  }

  else
  {
    *a2 = v9;
    while (1)
    {
      v6 = *v9;
      v4 = 0;
      if (*v9)
      {
        v4 = 0;
        if ((v6 - 48) > 9)
        {
          v4 = 0;
          if (v6 != 44)
          {
            v4 = 0;
            if (v6 != 45)
            {
              v4 = v6 != 43;
            }
          }
        }
      }

      if (!v4)
      {
        break;
      }

      ++v9;
    }

    *a3 = &v9[-*a2];
    return v9;
  }
}

char *getoffset(char *a1, void *a2)
{
  v5 = a1;
  v3 = 0;
  if (*a1 == 45)
  {
    v3 = 1;
    v5 = a1 + 1;
  }

  else if (*a1 == 43)
  {
    v5 = a1 + 1;
  }

  v6 = getsecs(v5, a2);
  if (!v6)
  {
    return 0;
  }

  if (v3)
  {
    *a2 = -*a2;
  }

  return v6;
}

_BYTE *getqzname(_BYTE *a1, int a2)
{
  while (1)
  {
    v3 = 0;
    if (*a1)
    {
      v3 = *a1 != a2;
    }

    if (!v3)
    {
      break;
    }

    ++a1;
  }

  return a1;
}

char *getrule(char *a1, uint64_t a2)
{
  if (*a1 == 74)
  {
    *a2 = 0;
    v6 = getnum(a1 + 1, (a2 + 4), 1, 365);
  }

  else if (*a1 == 77)
  {
    *a2 = 2;
    v7 = getnum(a1 + 1, (a2 + 12), 1, 12);
    if (!v7)
    {
      return 0;
    }

    v2 = v7;
    v8 = v7 + 1;
    if (*v2 != 46)
    {
      return 0;
    }

    v9 = getnum(v8, (a2 + 8), 1, 5);
    if (!v9)
    {
      return 0;
    }

    v3 = v9;
    v10 = v9 + 1;
    if (*v3 != 46)
    {
      return 0;
    }

    v6 = getnum(v10, (a2 + 4), 0, 6);
  }

  else
  {
    if ((*a1 - 48) > 9)
    {
      return 0;
    }

    *a2 = 1;
    v6 = getnum(a1, (a2 + 4), 0, 365);
  }

  if (!v6)
  {
    return 0;
  }

  if (*v6 == 47)
  {
    return getsecs(v6 + 1, (a2 + 16));
  }

  *(a2 + 16) = 7200;
  return v6;
}

uint64_t transtime(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v13 = 0;
  v8 = 0;
  if (!(a2 % 4))
  {
    v7 = 1;
    if (!(a2 % 100))
    {
      v7 = a2 % 400 == 0;
    }

    v8 = v7;
  }

  v6 = *a3;
  if (*a3)
  {
    if (v6 == 1)
    {
      v13 = a1 + 86400 * a3[1];
    }

    else if (v6 == 2)
    {
      v14 = a1;
      for (i = 0; i < a3[3] - 1; ++i)
      {
        v14 += 86400 * mon_lengths[12 * v8 + i];
      }

      if (a3[3] <= 2)
      {
        v5 = a2 - 1;
      }

      else
      {
        v5 = a2;
      }

      v9 = ((26 * ((a3[3] + 9) % 12 + 1) - 2) / 10 + 1 + v5 % 100 + v5 % 100 / 4 + v5 / 100 / 4 - 2 * (v5 / 100)) % 7;
      if (v9 < 0)
      {
        v9 += 7;
      }

      v10 = a3[1] - v9;
      if (v10 < 0)
      {
        v10 += 7;
      }

      for (j = 1; j < a3[2] && v10 + 7 < mon_lengths[12 * v8 - 1 + a3[3]]; ++j)
      {
        v10 += 7;
      }

      v13 = v14 + 86400 * v10;
    }
  }

  else
  {
    v13 = a1 + 86400 * (a3[1] - 1);
    if (v8 && a3[1] >= 60)
    {
      v13 += 86400;
    }
  }

  return v13 + *(a3 + 2) + a4;
}

char *getsecs(char *a1, void *a2)
{
  v5 = a1;
  v4 = a2;
  v3 = 0;
  v5 = getnum(a1, &v3, 0, 167);
  if (v5)
  {
    *v4 = 3600 * v3;
    if (*v5 == 58)
    {
      ++v5;
      v5 = getnum(v5, &v3, 0, 59);
      if (!v5)
      {
        return 0;
      }

      *v4 += 60 * v3;
      if (*v5 == 58)
      {
        ++v5;
        v5 = getnum(v5, &v3, 0, 60);
        if (!v5)
        {
          return 0;
        }

        *v4 += v3;
      }
    }

    return v5;
  }

  return 0;
}

char *getnum(char *a1, int *a2, int a3, int a4)
{
  v7 = a1;
  if (!a1)
  {
    return 0;
  }

  v6 = *a1;
  if ((*a1 - 48) > 9)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 = 10 * v5 + v6 - 48;
    if (v5 > a4)
    {
      return 0;
    }

    v6 = *++v7;
  }

  while ((*v7 - 48) <= 9);
  if (v5 < a3)
  {
    return 0;
  }

  *a2 = v5;
  return v7;
}

uint64_t time2sub(const void *a1, uint64_t (*a2)(uint64_t *a1, uint64_t a2, uint64_t a3), uint64_t a3, _DWORD *a4, int a5, int a6)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = 0;
  v27 = 0;
  i = 0;
  j = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  memset(__b, 0, sizeof(__b));
  memset(v16, 0, sizeof(v16));
  *v31 = 0;
  memcpy(__b, v34, sizeof(__b));
  if (v30 && normalize_overflow(&__b[1], __b, 60))
  {
    return -1;
  }

  if (normalize_overflow(&__b[2], &__b[1], 60))
  {
    return -1;
  }

  if (normalize_overflow(&__b[3], &__b[2], 24))
  {
    return -1;
  }

  v20 = __b[5];
  if (long_normalize_overflow(&v20, &__b[4], 12))
  {
    return -1;
  }

  if (long_increment_overflow(&v20, 1900))
  {
    return -1;
  }

  while (__b[3] <= 0)
  {
    if (long_increment_overflow(&v20, -1))
    {
      return -1;
    }

    v23 = v20 + (__b[4] > 1);
    v15 = 0;
    if (!(v23 % 4))
    {
      v14 = 1;
      if (!(v23 % 100))
      {
        v14 = v23 % 400 == 0;
      }

      v15 = v14;
    }

    __b[3] += year_lengths[v15];
  }

  while (__b[3] > 366)
  {
    v23 = v20 + (__b[4] > 1);
    v13 = 0;
    if (!(v23 % 4))
    {
      v12 = 1;
      if (!(v23 % 100))
      {
        v12 = v23 % 400 == 0;
      }

      v13 = v12;
    }

    __b[3] -= year_lengths[v13];
    if (long_increment_overflow(&v20, 1))
    {
      return -1;
    }
  }

  while (1)
  {
    v11 = 0;
    if (!(v20 % 4))
    {
      v10 = 1;
      if (!(v20 % 100))
      {
        v10 = v20 % 400 == 0;
      }

      v11 = v10;
    }

    i = mon_lengths[12 * v11 + __b[4]];
    if (__b[3] <= i)
    {
      break;
    }

    __b[3] -= i;
    if (++__b[4] >= 12)
    {
      __b[4] = 0;
      if (long_increment_overflow(&v20, 1))
      {
        return -1;
      }
    }
  }

  if (long_increment_overflow(&v20, -1900))
  {
    return -1;
  }

  __b[5] = v20;
  if (v20 != v20)
  {
    return -1;
  }

  if (__b[5] < 0)
  {
    return -1;
  }

  if (__b[0] < 0 || __b[0] >= 60)
  {
    if (v20 + 1900 < 1970)
    {
      if (increment_overflow(__b, -59))
      {
        return -1;
      }

      v24 = __b[0];
      __b[0] = 59;
    }

    else
    {
      v24 = __b[0];
      __b[0] = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v22 = 1;
  for (i = 0; i < 63; ++i)
  {
    v22 *= 2;
  }

  v21 = -(v22 + 1);
  while (1)
  {
    v18 = v22 / 2 + v21 / 2;
    if (v18 >= v22)
    {
      if (v18 > v21)
      {
        v18 = v21;
      }
    }

    else
    {
      v18 = v22;
    }

    if (v33(&v18, v32, v16))
    {
      v27 = tmcomp(v16, __b);
    }

    else
    {
      v7 = v18 > 0 ? 1 : -1;
      v27 = v7;
    }

    if (!v27)
    {
      break;
    }

    if (v18 == v22)
    {
      if (++v18 <= v22)
      {
        return -1;
      }

      ++v22;
    }

    else if (v18 == v21)
    {
      if (--v18 >= v21)
      {
        return -1;
      }

      --v21;
    }

    if (v22 > v21)
    {
      return -1;
    }

    if (v27 <= 0)
    {
      v22 = v18;
    }

    else
    {
      v21 = v18;
    }
  }

  v8 = &lclmem;
  if (v33 != _st_localsub)
  {
    v8 = &gmtmem;
  }

  v28 = v8;
  if (v29 && v28[2] == 1 && __b[8] > 0)
  {
    __b[8] = 0;
  }

  if (__b[8] < 0 || v16[8] == __b[8])
  {
LABEL_102:
    v19 = v18 + v24;
    if (v19 < v18 == v24 < 0)
    {
      v18 = v19;
      if (v33(&v18, v32, v34))
      {
        *v31 = 1;
        return v18;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    for (i = v28[2] - 1; (i & 0x80000000) == 0; --i)
    {
      if (v28[6 * i + 2708] == __b[8])
      {
        for (j = v28[2] - 1; (j & 0x80000000) == 0; --j)
        {
          if (v28[6 * j + 2708] != __b[8])
          {
            v19 = v18 + *&v28[6 * j + 2706] - *&v28[6 * i + 2706];
            if (v33(&v19, v32, v16))
            {
              if (!tmcomp(v16, __b) && v16[8] == __b[8])
              {
                v18 = v19;
                goto LABEL_102;
              }
            }
          }
        }
      }
    }

    return -1;
  }
}

BOOL normalize_overflow(int *a1, _DWORD *a2, int a3)
{
  if ((*a2 & 0x80000000) != 0)
  {
    v4 = -1 - (-1 - *a2) / a3;
  }

  else
  {
    v4 = *a2 / a3;
  }

  *a2 -= v4 * a3;
  return increment_overflow(a1, v4);
}

BOOL long_normalize_overflow(uint64_t *a1, _DWORD *a2, int a3)
{
  if ((*a2 & 0x80000000) != 0)
  {
    v4 = -1 - (-1 - *a2) / a3;
  }

  else
  {
    v4 = *a2 / a3;
  }

  *a2 -= v4 * a3;
  return long_increment_overflow(a1, v4);
}

BOOL long_increment_overflow(uint64_t *a1, int a2)
{
  v3 = *a1;
  *a1 += a2;
  return *a1 < v3 != a2 < 0;
}

BOOL increment_overflow(int *a1, int a2)
{
  v3 = *a1;
  *a1 += a2;
  return *a1 < v3 != a2 < 0;
}

uint64_t tmcomp(_DWORD *a1, _DWORD *a2)
{
  if (a1[5] == a2[5])
  {
    v4 = a1[4] - a2[4];
    if (!v4)
    {
      v4 = a1[3] - a2[3];
      if (!v4)
      {
        v4 = a1[2] - a2[2];
        if (!v4)
        {
          v4 = a1[1] - a2[1];
          if (!v4)
          {
            return (*a1 - *a2);
          }
        }
      }
    }

    return v4;
  }

  else if (a1[5] > a2[5])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

size_t strftime_l(char *a1, size_t a2, const char *a3, const tm *a4, locale_t a5)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = 0;
  v8 = 0;
  if (a5)
  {
    if (v10 == -1)
    {
      v10 = __global_locale;
    }
  }

  else
  {
    v10 = &__c_locale;
  }

  tzset();
  v8 = 0;
  if (v12)
  {
    v7 = v12;
  }

  else
  {
    v7 = "%c";
  }

  current_time_locale = __get_current_time_locale(v10);
  v9 = _st_fmt(v7, &v11->tm_sec, v14, &v14[v13], &v8, current_time_locale, v10);
  if (v8 && getenv("CHECK_STRFTIME_FORMATS_FOR_TWO_DIGIT_YEARS"))
  {
    fputs("\n", __stderrp);
    if (v12)
    {
      fprintf_l(__stderrp, v10, "strftime format %s ", v12);
    }

    else
    {
      fputs("NULL strftime format ", __stderrp);
    }

    fputs("yields only two digits of years in ", __stderrp);
    if (v8 == 1)
    {
      fputs("some locales", __stderrp);
    }

    else if (v8 == 2)
    {
      fputs("the current locale", __stderrp);
    }

    else
    {
      fputs("all locales", __stderrp);
    }

    fputs("\n", __stderrp);
  }

  if (v9 == &v14[v13])
  {
    return 0;
  }

  *v9 = 0;
  return v9 - v14;
}

_BYTE *_st_fmt(char *a1, int *a2, _BYTE *a3, _BYTE *a4, int *a5, uint64_t a6, _xlocale *a7)
{
  v49 = a1;
  v48 = a2;
  v47 = a3;
  v46 = a4;
  v45 = a5;
  v44 = a6;
  v43 = a7;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  while (*v49)
  {
    if (*v49 == 37)
    {
      v42 = 0;
      v41 = 0;
      v40 = 0;
      while (2)
      {
        switch(*++v49)
        {
          case 0:
            --v49;
            goto LABEL_138;
          case 43:
            v47 = _st_fmt(*(v44 + 344), v48, v47, v46, v45, v44, v43);
            goto LABEL_140;
          case 45:
            if (v40)
            {
              goto LABEL_138;
            }

            v40 = 1;
            continue;
          case 48:
            if (v40)
            {
              goto LABEL_138;
            }

            v40 = 3;
            continue;
          case 65:
            if (v48[6] < 0 || v48[6] >= 7)
            {
              v7 = _add("?", v47, v46);
            }

            else
            {
              v7 = _add(*(v44 + 248 + 8 * v48[6]), v47, v46);
            }

            v47 = v7;
            goto LABEL_140;
          case 66:
            if (v48[4] < 0 || v48[4] >= 12)
            {
              v9 = _add("?", v47, v46);
            }

            else
            {
              if (v41)
              {
                v26 = v44 + 352;
              }

              else
              {
                v26 = v44 + 96;
              }

              v9 = _add(*(v26 + 8 * v48[4]), v47, v46);
            }

            v47 = v9;
            goto LABEL_140;
          case 67:
            v47 = _yconv(v48[5], 1900, 1, 0, v47, v46, v43);
            goto LABEL_140;
          case 68:
            v47 = _st_fmt("%m/%d/%y", v48, v47, v46, v45, v44, v43);
            goto LABEL_140;
          case 69:
            if (v42 || v41)
            {
              goto LABEL_138;
            }

            ++v42;
            continue;
          case 70:
            v47 = _st_fmt("%Y-%m-%d", v48, v47, v46, v45, v44, v43);
            goto LABEL_140;
          case 71:
          case 86:
          case 103:
            v36 = 0;
            v35 = 0;
            v34 = 0;
            v33 = 0;
            v32 = 0;
            v36 = v48[5];
            v35 = 1900;
            v34 = v48[7];
            v33 = v48[6];
            break;
          case 72:
            v47 = _conv(v48[2], fmt_padding[v40], v47, v46, v43);
            goto LABEL_140;
          case 73:
            if (v48[2] % 12)
            {
              v11 = _conv(v48[2] % 12, fmt_padding[v40], v47, v46, v43);
            }

            else
            {
              v11 = _conv(0xCu, fmt_padding[v40], v47, v46, v43);
            }

            v47 = v11;
            goto LABEL_140;
          case 77:
            v47 = _conv(v48[1], fmt_padding[v40], v47, v46, v43);
            goto LABEL_140;
          case 79:
            if (v42 || v41)
            {
              goto LABEL_138;
            }

            v41 = 1;
            continue;
          case 82:
            v47 = _st_fmt("%H:%M", v48, v47, v46, v45, v44, v43);
            goto LABEL_140;
          case 83:
            v47 = _conv(*v48, fmt_padding[v40], v47, v46, v43);
            goto LABEL_140;
          case 84:
            v47 = _st_fmt("%H:%M:%S", v48, v47, v46, v45, v44, v43);
            goto LABEL_140;
          case 85:
            v47 = _conv((v48[7] + 7 - v48[6]) / 7, fmt_padding[v40], v47, v46, v43);
            goto LABEL_140;
          case 87:
            if (v48[6])
            {
              v21 = v48[6] - 1;
            }

            else
            {
              v21 = 6;
            }

            v47 = _conv((v48[7] + 7 - v21) / 7, fmt_padding[v40], v47, v46, v43);
            goto LABEL_140;
          case 88:
            v47 = _st_fmt(*(v44 + 304), v48, v47, v46, v45, v44, v43);
            goto LABEL_140;
          case 89:
            v47 = _yconv(v48[5], 1900, 1, 1, v47, v46, v43);
            goto LABEL_140;
          case 90:
            if (*(v48 + 6))
            {
              v47 = _add(*(v48 + 6), v47, v46);
            }

            else if ((v48[8] & 0x80000000) == 0)
            {
              v47 = _add(tzname[v48[8] != 0], v47, v46);
            }

            goto LABEL_140;
          case 95:
            if (v40)
            {
              goto LABEL_138;
            }

            v40 = 2;
            continue;
          case 97:
            if (v48[6] < 0 || v48[6] >= 7)
            {
              v8 = _add("?", v47, v46);
            }

            else
            {
              v8 = _add(*(v44 + 192 + 8 * v48[6]), v47, v46);
            }

            v47 = v8;
            goto LABEL_140;
          case 98:
          case 104:
            if (v48[4] < 0 || v48[4] >= 12)
            {
              v10 = _add("?", v47, v46);
            }

            else
            {
              v10 = _add(*(v44 + 8 * v48[4]), v47, v46);
            }

            v47 = v10;
            goto LABEL_140;
          case 99:
            v39 = 1;
            v47 = _st_fmt(*(v44 + 320), v48, v47, v46, &v39, v44, v43);
            if (v39 == 3)
            {
              v39 = 2;
            }

            if (v39 > *v45)
            {
              *v45 = v39;
            }

            goto LABEL_140;
          case 100:
            v47 = _conv(v48[3], fmt_padding[v40], v47, v46, v43);
            goto LABEL_140;
          case 101:
            v47 = _conv(v48[3], off_C88E0[v40], v47, v46, v43);
            goto LABEL_140;
          case 106:
            v47 = _conv(v48[7] + 1, off_C8900[v40], v47, v46, v43);
            goto LABEL_140;
          case 107:
            v47 = _conv(v48[2], off_C88E0[v40], v47, v46, v43);
            goto LABEL_140;
          case 108:
            if (v48[2] % 12)
            {
              v12 = _conv(v48[2] % 12, off_C88E0[v40], v47, v46, v43);
            }

            else
            {
              v12 = _conv(0xCu, off_C88E0[v40], v47, v46, v43);
            }

            v47 = v12;
            goto LABEL_140;
          case 109:
            v47 = _conv(v48[4] + 1, fmt_padding[v40], v47, v46, v43);
            goto LABEL_140;
          case 110:
            v47 = _add("\n", v47, v46);
            goto LABEL_140;
          case 112:
            if (v48[2] < 12)
            {
              v13 = _add(*(v44 + 328), v47, v46);
            }

            else
            {
              v13 = _add(*(v44 + 336), v47, v46);
            }

            v47 = v13;
            goto LABEL_140;
          case 114:
            v47 = _st_fmt(*(v44 + 456), v48, v47, v46, v45, v44, v43);
            goto LABEL_140;
          case 115:
            memset(&__b, 0, sizeof(__b));
            v37 = 0;
            memcpy(&__b, v48, sizeof(__b));
            v37 = mktime(&__b);
            sprintf_l(v50, v43, "%ld", v37);
            v47 = _add(v50, v47, v46);
            goto LABEL_140;
          case 116:
            v47 = _add("\t", v47, v46);
            goto LABEL_140;
          case 117:
            if (v48[6])
            {
              v14 = _conv(v48[6], "%d", v47, v46, v43);
            }

            else
            {
              v14 = _conv(7u, "%d", v47, v46, v43);
            }

            v47 = v14;
            goto LABEL_140;
          case 118:
            v47 = _st_fmt("%e-%b-%Y", v48, v47, v46, v45, v44, v43);
            goto LABEL_140;
          case 119:
            v47 = _conv(v48[6], "%d", v47, v46, v43);
            goto LABEL_140;
          case 120:
            v28 = 1;
            v47 = _st_fmt(*(v44 + 312), v48, v47, v46, &v28, v44, v43);
            if (v28 == 3)
            {
              v28 = 2;
            }

            if (v28 > *v45)
            {
              *v45 = v28;
            }

            goto LABEL_140;
          case 121:
            *v45 = 3;
            v47 = _yconv(v48[5], 1900, 0, 1, v47, v46, v43);
            goto LABEL_140;
          case 122:
            if ((v48[8] & 0x80000000) == 0)
            {
              if (v48[8])
              {
                v27 = -__darwin_altzone;
              }

              else
              {
                v27 = -_st_get_timezone();
              }

              if (v27 < 0)
              {
                v27 = -v27;
                v17 = _add("-", v47, v46);
              }

              else
              {
                v17 = _add("+", v47, v46);
              }

              v47 = v17;
              v47 = _conv(100 * (v27 / 60 / 60) + v27 / 60 % 60, off_C8920[v40], v17, v46, v43);
            }

            goto LABEL_140;
          default:
            goto LABEL_138;
        }

        break;
      }

      while (1)
      {
        v31 = 0;
        v30 = 0;
        v29 = 0;
        v25 = 0;
        if (!((v36 % 400 + v35 % 400) % 4))
        {
          v24 = 1;
          if (!((v36 % 400 + v35 % 400) % 100))
          {
            v24 = (v36 % 400 + v35 % 400) % 400 == 0;
          }

          v25 = v24;
        }

        if (v25)
        {
          v15 = 366;
        }

        else
        {
          v15 = 365;
        }

        v31 = v15;
        v30 = (v34 + 11 - v33) % 7 - 3;
        v29 = v30 - v15 % 7;
        if (v29 < -3)
        {
          v29 += 7;
        }

        v29 += v31;
        if (v34 >= v29)
        {
          ++v35;
          v32 = 1;
          goto LABEL_99;
        }

        if (v34 >= v30)
        {
          break;
        }

        --v35;
        v23 = 0;
        if (!((v36 % 400 + v35 % 400) % 4))
        {
          v22 = 1;
          if (!((v36 % 400 + v35 % 400) % 100))
          {
            v22 = (v36 % 400 + v35 % 400) % 400 == 0;
          }

          v23 = v22;
        }

        if (v23)
        {
          v16 = 366;
        }

        else
        {
          v16 = 365;
        }

        v34 += v16;
      }

      v32 = (v34 - v30) / 7 + 1;
LABEL_99:
      if (*v49 == 86)
      {
        v47 = _conv(v32, fmt_padding[v40], v47, v46, v43);
      }

      else if (*v49 == 103)
      {
        *v45 = 3;
        v47 = _yconv(v36, v35, 0, 1, v47, v46, v43);
      }

      else
      {
        v47 = _yconv(v36, v35, 1, 1, v47, v46, v43);
      }
    }

    else
    {
LABEL_138:
      if (v47 == v46)
      {
        return v47;
      }

      v18 = *v49;
      v19 = v47++;
      *v19 = v18;
    }

LABEL_140:
    ++v49;
  }

  return v47;
}

size_t strftime(char *a1, size_t a2, const char *a3, const tm *a4)
{
  v6 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v5)
  {
    return strftime_l(a1, a2, a3, a4, v5);
  }

  else
  {
    return strftime_l(a1, a2, a3, a4, __global_locale);
  }
}

_BYTE *_add(char *a1, _BYTE *a2, unint64_t a3)
{
  while (1)
  {
    v5 = 0;
    if (a2 < a3)
    {
      v3 = a1++;
      LODWORD(v3) = *v3;
      *a2 = v3;
      v5 = v3 != 0;
    }

    if (!v5)
    {
      break;
    }

    ++a2;
  }

  return a2;
}

_BYTE *_yconv(int a1, int a2, int a3, int a4, _BYTE *a5, unint64_t a6, _xlocale *a7)
{
  v13 = a5;
  v10 = a1 / 100 + a2 / 100 + (a1 % 100 + a2 % 100) / 100;
  v9 = (a1 % 100 + a2 % 100) % 100;
  if (v9 < 0 && v10 > 0)
  {
    v9 += 100;
    --v10;
  }

  else if (v10 < 0 && v9 > 0)
  {
    v9 -= 100;
    ++v10;
  }

  if (a3)
  {
    if (v10 || (v9 & 0x80000000) == 0)
    {
      v13 = _conv(v10, "%02d", a5, a6, a7);
    }

    else
    {
      v13 = _add("-0", a5, a6);
    }
  }

  if (a4)
  {
    if (v9 < 0)
    {
      return _conv(-v9, "%02d", v13, a6, a7);
    }

    else
    {
      return _conv(v9, "%02d", v13, a6, a7);
    }
  }

  return v13;
}

char *__cdecl strptime(const char *a1, const char *a2, tm *a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return strptime_l(a1, a2, a3, v4);
  }

  else
  {
    return strptime_l(a1, a2, a3, __global_locale);
  }
}

char *__cdecl strptime_l(const char *a1, const char *a2, tm *a3, locale_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = 0;
  if (a4)
  {
    if (v9 == -1)
    {
      v9 = __global_locale;
    }
  }

  else
  {
    v9 = &__c_locale;
  }

  v7 = 0;
  v10->tm_zone = 0;
  v8 = _strptime0(v12, v11, v10, &v7, v9, 1, 0, 85);
  if (v8)
  {
    v6 = 0;
    if (v7 == 1)
    {
      v6 = timegm(v10);
      localtime_r(&v6, v10);
    }

    else if (v7 == 2)
    {
      tm_gmtoff = v10->tm_gmtoff;
      v10->tm_gmtoff = 0;
      v6 = timeoff(v10, tm_gmtoff);
      localtime_r(&v6, v10);
    }
  }

  return v8;
}

const char *_strptime0(const char *a1, char *a2, tm *a3, _DWORD *a4, _xlocale *a5, int a6, int a7, int a8)
{
  v79 = a1;
  v78 = a2;
  v77 = a3;
  v76 = a4;
  v75 = a5;
  v74 = a6;
  v73 = a7;
  v72 = a8;
  v71 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  current_time_locale = __get_current_time_locale(a5);
  v70 = v78;
  while (1)
  {
LABEL_2:
    if (!*v70)
    {
      if ((v74 & 8) == 0 && (v74 & 2) != 0)
      {
        if ((v74 & 0x14) == 0x14)
        {
          v25 = 0;
          if (!((v77->tm_year + 1900) % 4))
          {
            v24 = 1;
            if (!((v77->tm_year + 1900) % 100))
            {
              v24 = (v77->tm_year + 1900) % 400 == 0;
            }

            v25 = v24;
          }

          v77->tm_yday = _strptime0_start_of_month[13 * v25 + v77->tm_mon] + v77->tm_mday - 1;
          v74 |= 8u;
        }

        else if ((v74 & 0x40) != 0)
        {
          v51 = v72 != 85;
          wday_of = first_wday_of(v77->tm_year + 1900);
          if (!v73 && wday_of == v51)
          {
            return 0;
          }

          if ((v74 & 0x20) == 0)
          {
            v77->tm_wday = v51;
            v74 |= 0x20u;
          }

          v48 = (7 - wday_of + v51) % 7;
          if (v72 == 86 && wday_of > 1 && wday_of <= 4)
          {
            v48 -= 7;
          }

          v49 = v48 + 7 * (v73 - 1) + (v77->tm_wday - v51 + 7) % 7;
          if (v49 < 0)
          {
            if ((v74 & 0x20) != 0)
            {
              return 0;
            }

            v49 = 0;
          }

          v77->tm_yday = v49;
          v74 |= 8u;
        }
      }

      if ((v74 & 0xA) == 0xA)
      {
        if ((v74 & 4) == 0)
        {
          for (HIDWORD(v68) = 0; ; ++HIDWORD(v68))
          {
            v23 = 0;
            if (!((v77->tm_year + 1900) % 4))
            {
              v22 = 1;
              if (!((v77->tm_year + 1900) % 100))
              {
                v22 = (v77->tm_year + 1900) % 400 == 0;
              }

              v23 = v22;
            }

            if (v77->tm_yday < _strptime0_start_of_month[13 * v23 + SHIDWORD(v68)])
            {
              break;
            }
          }

          if (SHIDWORD(v68) > 12)
          {
            HIDWORD(v68) = 1;
            v21 = 0;
            if (!((v77->tm_year + 1900) % 4))
            {
              v20 = 1;
              if (!((v77->tm_year + 1900) % 100))
              {
                v20 = (v77->tm_year + 1900) % 400 == 0;
              }

              v21 = v20;
            }

            v77->tm_yday -= _strptime0_start_of_month[13 * v21 + 12];
            ++v77->tm_year;
          }

          v77->tm_mon = HIDWORD(v68) - 1;
          v74 |= 4u;
        }

        if ((v74 & 0x10) == 0)
        {
          v19 = 0;
          if (!((v77->tm_year + 1900) % 4))
          {
            v18 = 1;
            if (!((v77->tm_year + 1900) % 100))
            {
              v18 = (v77->tm_year + 1900) % 400 == 0;
            }

            v19 = v18;
          }

          v77->tm_mday = v77->tm_yday - _strptime0_start_of_month[13 * v19 + v77->tm_mon] + 1;
          v74 |= 0x10u;
        }

        if ((v74 & 0x20) == 0)
        {
          v69 = first_wday_of(v77->tm_year + 1900);
          v77->tm_wday = (v69 + v77->tm_yday) % 7;
          v74 |= 0x20u;
        }
      }

      return v79;
    }

    i = 0;
    v8 = v70++;
    v71 = *v8;
    if (v71 == 37)
    {
      break;
    }

    if (isspace_l(v71, v75))
    {
      while (1)
      {
        v47 = 0;
        if (*v79)
        {
          v47 = isspace_l(*v79, v75) != 0;
        }

        if (!v47)
        {
          break;
        }

        ++v79;
      }
    }

    else
    {
      v9 = v79++;
      if (v71 != *v9)
      {
        return 0;
      }
    }
  }

  v66 = 0;
  v65 = 0;
  while (2)
  {
    v10 = v70++;
    v71 = *v10;
    if (is_zero(v71))
    {
      v11 = v70++;
      v71 = *v11;
    }

    else if (is_plus(v71))
    {
      v62 = *v70;
      if (v62)
      {
        if (v62 != 37 && !isspace_l(v62, v75))
        {
          v12 = v70++;
          v71 = *v12;
        }
      }
    }

    if (isdigit_l(v71, v75))
    {
      for (i = v71 - 48; ; i += *v13 - 48)
      {
        v46 = 0;
        if (*v70)
        {
          v46 = isdigit_l(*v70, v75) != 0;
        }

        if (!v46)
        {
          break;
        }

        i *= 10;
        v13 = v70++;
      }

      v14 = v70++;
      v71 = *v14;
    }

    switch(v71)
    {
      case '%':
        v15 = v79++;
        if (*v15 == 37)
        {
          goto LABEL_2;
        }

        return 0;
      case '+':
        v79 = _strptime0(v79, current_time_locale[43], v77, v76, v75, 1, 0, 85);
        if (v79)
        {
          v74 |= 0x36u;
          goto LABEL_2;
        }

        return 0;
      case 'A':
      case 'a':
        for (HIDWORD(v68) = 0; SHIDWORD(v68) < 7; ++HIDWORD(v68))
        {
          LODWORD(v68) = strlen(current_time_locale[SHIDWORD(v68) + 31]);
          if (!strncasecmp_l(v79, current_time_locale[SHIDWORD(v68) + 31], v68, v75))
          {
            break;
          }

          LODWORD(v68) = strlen(current_time_locale[SHIDWORD(v68) + 24]);
          if (!strncasecmp_l(v79, current_time_locale[SHIDWORD(v68) + 24], v68, v75))
          {
            break;
          }
        }

        if (SHIDWORD(v68) != 7)
        {
          v79 += v68;
          v77->tm_wday = HIDWORD(v68);
          v74 |= 0x20u;
          goto LABEL_2;
        }

        return 0;
      case 'B':
      case 'b':
      case 'h':
        HIDWORD(v68) = 0;
        while (SHIDWORD(v68) < 0xC)
        {
          if (v65)
          {
            if (v71 != 66)
            {
              goto LABEL_222;
            }

            LODWORD(v68) = strlen(current_time_locale[SHIDWORD(v68) + 44]);
            if (strncasecmp_l(v79, current_time_locale[SHIDWORD(v68) + 44], v68, v75))
            {
              goto LABEL_222;
            }
          }

          else
          {
            LODWORD(v68) = strlen(current_time_locale[SHIDWORD(v68) + 12]);
            if (strncasecmp_l(v79, current_time_locale[SHIDWORD(v68) + 12], v68, v75))
            {
LABEL_222:
              ++HIDWORD(v68);
              continue;
            }
          }

          break;
        }

        if (SHIDWORD(v68) == 12 && !v65)
        {
          for (HIDWORD(v68) = 0; SHIDWORD(v68) < 0xC; ++HIDWORD(v68))
          {
            LODWORD(v68) = strlen(current_time_locale[SHIDWORD(v68)]);
            if (!strncasecmp_l(v79, current_time_locale[SHIDWORD(v68)], v68, v75))
            {
              break;
            }
          }
        }

        if (SHIDWORD(v68) != 12)
        {
          v77->tm_mon = HIDWORD(v68);
          v79 += v68;
          v74 |= 4u;
          goto LABEL_2;
        }

        v80 = 0;
        break;
      case 'C':
        if (isdigit_l(*v79, v75) || is_plus(*v79) || is_minus(*v79))
        {
          v67 = 0;
          if (i)
          {
            v45 = i;
          }

          else
          {
            v45 = 2;
          }

          LODWORD(v68) = v45;
          if (is_plus(*v79))
          {
            LODWORD(v68) = v68 - 1;
            ++v79;
          }

          else if (is_minus(*v79))
          {
            LODWORD(v68) = v68 - 1;
            v67 = 1;
            ++v79;
          }

          HIDWORD(v68) = 0;
          while (1)
          {
            v44 = 0;
            if (v68)
            {
              v44 = 0;
              if (*v79)
              {
                v44 = isdigit_l(*v79, v75) != 0;
              }
            }

            if (!v44)
            {
              break;
            }

            HIDWORD(v68) *= 10;
            HIDWORD(v68) += *v79 - 48;
            LODWORD(v68) = v68 - 1;
            ++v79;
          }

          if (v67)
          {
            HIDWORD(v68) = -HIDWORD(v68);
          }

          if ((v74 & 0x200) != 0)
          {
            v77->tm_year = 100 * HIDWORD(v68) + v77->tm_year % 100 - 1900;
            v74 &= ~0x200u;
          }

          else
          {
            v77->tm_year = 100 * HIDWORD(v68) - 1900;
            v74 |= 2u;
            v74 |= 0x100u;
          }

          goto LABEL_2;
        }

        return 0;
      case 'D':
        v79 = _strptime0(v79, "%m/%d/%y", v77, v76, v75, 1, 0, 85);
        if (v79)
        {
          v74 |= 0x16u;
          v74 &= 0xFFFFFCFF;
          goto LABEL_2;
        }

        return 0;
      case 'E':
        if (v66 || v65)
        {
          goto LABEL_2;
        }

        ++v66;
        if (*v70 != 37)
        {
          continue;
        }

        return 0;
      case 'F':
        v79 = _strptime0(v79, "%Y-%m-%d", v77, v76, v75, 1, 0, 85);
        if (v79)
        {
          v74 |= 0x16u;
          v74 &= 0xFFFFFCFF;
          goto LABEL_2;
        }

        return 0;
      case 'H':
      case 'I':
      case 'k':
      case 'l':
        if (isdigit_l(*v79, v75))
        {
          if (i)
          {
            v39 = i;
          }

          else
          {
            v39 = 2;
          }

          v68 = v39;
          while (1)
          {
            v38 = 0;
            if (v68)
            {
              v38 = 0;
              if (*v79)
              {
                v38 = isdigit_l(*v79, v75) != 0;
              }
            }

            if (!v38)
            {
              break;
            }

            HIDWORD(v68) *= 10;
            HIDWORD(v68) += *v79 - 48;
            LODWORD(v68) = v68 - 1;
            ++v79;
          }

          if (v71 == 72 || v71 == 107)
          {
            if (SHIDWORD(v68) > 23)
            {
              return 0;
            }
          }

          else if (SHIDWORD(v68) > 12)
          {
            return 0;
          }

          v77->tm_hour = HIDWORD(v68);
          goto LABEL_2;
        }

        return 0;
      case 'M':
      case 'S':
        if (!*v79 || isspace_l(*v79, v75))
        {
          goto LABEL_2;
        }

        if (!isdigit_l(*v79, v75))
        {
          return 0;
        }

        if (i)
        {
          v41 = i;
        }

        else
        {
          v41 = 2;
        }

        v68 = v41;
        while (1)
        {
          v40 = 0;
          if (v68)
          {
            v40 = 0;
            if (*v79)
            {
              v40 = isdigit_l(*v79, v75) != 0;
            }
          }

          if (!v40)
          {
            break;
          }

          HIDWORD(v68) *= 10;
          HIDWORD(v68) += *v79 - 48;
          LODWORD(v68) = v68 - 1;
          ++v79;
        }

        if (v71 == 77)
        {
          if (SHIDWORD(v68) > 59)
          {
            return 0;
          }

          v77->tm_min = HIDWORD(v68);
        }

        else
        {
          if (SHIDWORD(v68) > 60)
          {
            return 0;
          }

          v77->tm_sec = HIDWORD(v68);
        }

        goto LABEL_2;
      case 'O':
        if (v66 || v65)
        {
          goto LABEL_2;
        }

        v65 = 1;
        if (*v70 != 37)
        {
          continue;
        }

        return 0;
      case 'R':
        v79 = _strptime0(v79, "%H:%M", v77, v76, v75, 1, 0, 85);
        if (v79)
        {
          goto LABEL_2;
        }

        return 0;
      case 'T':
        v79 = _strptime0(v79, "%H:%M:%S", v77, v76, v75, 1, 0, 85);
        if (v79)
        {
          goto LABEL_2;
        }

        return 0;
      case 'U':
      case 'V':
      case 'W':
        if (!isdigit_l(*v79, v75))
        {
          return 0;
        }

        if (i)
        {
          v37 = i;
        }

        else
        {
          v37 = 2;
        }

        v68 = v37;
        while (1)
        {
          v36 = 0;
          if (v68)
          {
            v36 = 0;
            if (*v79)
            {
              v36 = isdigit_l(*v79, v75) != 0;
            }
          }

          if (!v36)
          {
            break;
          }

          HIDWORD(v68) *= 10;
          HIDWORD(v68) += *v79 - 48;
          LODWORD(v68) = v68 - 1;
          ++v79;
        }

        if (SHIDWORD(v68) > 53)
        {
          return 0;
        }

        if (v71 == 86 && SHIDWORD(v68) < 1)
        {
          return 0;
        }

        v73 = HIDWORD(v68);
        v72 = v71;
        v74 |= 0x40u;
        goto LABEL_2;
      case 'X':
        v79 = _strptime0(v79, current_time_locale[38], v77, v76, v75, 1, 0, 85);
        if (v79)
        {
          goto LABEL_2;
        }

        return 0;
      case 'Y':
      case 'y':
        if (!*v79 || isspace_l(*v79, v75))
        {
          goto LABEL_2;
        }

        if (!isdigit_l(*v79, v75) && !is_plus(*v79) && !is_minus(*v79))
        {
          return 0;
        }

        if (i)
        {
          v29 = i;
        }

        else
        {
          if (v71 == 89)
          {
            v16 = 4;
          }

          else
          {
            v16 = 2;
          }

          v29 = v16;
        }

        LODWORD(v68) = v29;
        v67 = 0;
        if (is_plus(*v79))
        {
          LODWORD(v68) = v68 - 1;
          ++v79;
        }

        else if (is_minus(*v79))
        {
          LODWORD(v68) = v68 - 1;
          ++v79;
          v67 = 1;
        }

        HIDWORD(v68) = 0;
        while (1)
        {
          v28 = 0;
          if (v68)
          {
            v28 = 0;
            if (*v79)
            {
              v28 = isdigit_l(*v79, v75) != 0;
            }
          }

          if (!v28)
          {
            break;
          }

          HIDWORD(v68) *= 10;
          HIDWORD(v68) += *v79 - 48;
          LODWORD(v68) = v68 - 1;
          ++v79;
        }

        if (v68 < 0)
        {
          return 0;
        }

        if (v67)
        {
          HIDWORD(v68) = -HIDWORD(v68);
        }

        if (v71 == 89)
        {
          HIDWORD(v68) -= 1900;
        }

        else if (v71 == 121 && (v74 & 0x100) != 0)
        {
          HIDWORD(v68) = v77->tm_year + SHIDWORD(v68) % 100;
          v74 &= ~0x100u;
        }

        else if (v71 == 121)
        {
          if (SHIDWORD(v68) < 69)
          {
            HIDWORD(v68) += 100;
          }

          v74 |= 0x200u;
        }

        v77->tm_year = HIDWORD(v68);
        v74 |= 2u;
        if (v71 == 89)
        {
          v74 &= 0xFFFFFCFF;
        }

        goto LABEL_2;
      case 'Z':
        v56 = 0;
        v55 = 0;
        for (j = v79; ; ++j)
        {
          v27 = 0;
          if (*j)
          {
            v27 = isupper_l(*j, v75) != 0;
          }

          if (!v27)
          {
            break;
          }
        }

        if (i)
        {
          v26 = i;
        }

        else
        {
          v26 = j - v79;
        }

        v55 = v26;
        if (v26 == 3 && !strncmp(v79, "GMT", 3uLL))
        {
          *v76 = 1;
          v79 += v55;
        }

        else
        {
          tzset();
          v56 = strlen(tzname[0]);
          if (v55 == v56 && !strncmp(v79, tzname[0], v56))
          {
            v77->tm_isdst = 0;
            v79 += v55;
          }

          else
          {
            v56 = strlen(off_D5740);
            if (v55 != v56 || strncmp(v79, off_D5740, v56))
            {
              return 0;
            }

            v77->tm_isdst = 1;
            v79 += v55;
          }
        }

        goto LABEL_2;
      case 'c':
        v79 = _strptime0(v79, current_time_locale[40], v77, v76, v75, 1, 0, 85);
        if (!v79)
        {
          return 0;
        }

        v74 |= 0x36u;
        v74 &= 0xFFFFFCFF;
        goto LABEL_2;
      case 'd':
        goto LABEL_197;
      case 'e':
        if (*v79 && isspace_l(*v79, v75))
        {
          ++v79;
        }

LABEL_197:
        if (i)
        {
          v35 = i;
        }

        else
        {
          v35 = 2;
        }

        LODWORD(v68) = v35;
        if (isspace_l(*v79, v75) && isdigit_l(*(v79 + 1), v75) && !isdigit_l(*(v79 + 2), v75))
        {
          LODWORD(v68) = 1;
          ++v79;
        }

        if (!isdigit_l(*v79, v75))
        {
          return 0;
        }

        HIDWORD(v68) = 0;
        while (1)
        {
          v34 = 0;
          if (v68)
          {
            v34 = 0;
            if (*v79)
            {
              v34 = isdigit_l(*v79, v75) != 0;
            }
          }

          if (!v34)
          {
            break;
          }

          HIDWORD(v68) *= 10;
          HIDWORD(v68) += *v79 - 48;
          LODWORD(v68) = v68 - 1;
          ++v79;
        }

        if (SHIDWORD(v68) > 31)
        {
          return 0;
        }

        v77->tm_mday = HIDWORD(v68);
        v74 |= 0x10u;
        goto LABEL_2;
      case 'j':
        if (!isdigit_l(*v79, v75))
        {
          return 0;
        }

        if (i)
        {
          v43 = i;
        }

        else
        {
          v43 = 3;
        }

        v68 = v43;
        while (1)
        {
          v42 = 0;
          if (v68)
          {
            v42 = 0;
            if (*v79)
            {
              v42 = isdigit_l(*v79, v75) != 0;
            }
          }

          if (!v42)
          {
            break;
          }

          HIDWORD(v68) *= 10;
          HIDWORD(v68) += *v79 - 48;
          LODWORD(v68) = v68 - 1;
          ++v79;
        }

        if (SHIDWORD(v68) < 1 || SHIDWORD(v68) > 366)
        {
          return 0;
        }

        v77->tm_yday = HIDWORD(v68) - 1;
        v74 |= 8u;
        goto LABEL_2;
      case 'm':
        if (!isdigit_l(*v79, v75))
        {
          return 0;
        }

        if (i)
        {
          v33 = i;
        }

        else
        {
          v33 = 2;
        }

        v68 = v33;
        while (1)
        {
          v32 = 0;
          if (v68)
          {
            v32 = 0;
            if (*v79)
            {
              v32 = isdigit_l(*v79, v75) != 0;
            }
          }

          if (!v32)
          {
            break;
          }

          HIDWORD(v68) *= 10;
          HIDWORD(v68) += *v79 - 48;
          LODWORD(v68) = v68 - 1;
          ++v79;
        }

        if (SHIDWORD(v68) < 1 || SHIDWORD(v68) > 12)
        {
          return 0;
        }

        v77->tm_mon = HIDWORD(v68) - 1;
        v74 |= 4u;
        goto LABEL_2;
      case 'n':
      case 't':
        if (!isspace(*v79))
        {
          return 0;
        }

        while (isspace_l(*v79, v75))
        {
          ++v79;
        }

        goto LABEL_2;
      case 'p':
        if (v77->tm_hour > 12)
        {
          return 0;
        }

        LODWORD(v68) = strlen(current_time_locale[41]);
        if (strncasecmp_l(v79, current_time_locale[41], v68, v75))
        {
          LODWORD(v68) = strlen(current_time_locale[42]);
          if (strncasecmp_l(v79, current_time_locale[42], v68, v75))
          {
            return 0;
          }

          if (v77->tm_hour != 12)
          {
            v77->tm_hour += 12;
          }

          v79 += v68;
        }

        else
        {
          if (v77->tm_hour == 12)
          {
            v77->tm_hour = 0;
          }

          v79 += v68;
        }

        goto LABEL_2;
      case 'r':
        v79 = _strptime0(v79, current_time_locale[57], v77, v76, v75, 1, 0, 85);
        if (v79)
        {
          goto LABEL_2;
        }

        return 0;
      case 's':
        v61 = 0;
        v60 = 0;
        v59 = 0;
        v58 = 0;
        v60 = *__error();
        *__error() = 0;
        v59 = strtol_l(v79, &v61, 10, v75);
        if (*__error() == 34)
        {
          v31 = v60;
          *__error() = v31;
          return 0;
        }

        v58 = v59;
        v30 = v60;
        *__error() = v30;
        v79 = v61;
        if (!gmtime_r(&v58, v77))
        {
          return 0;
        }

        *v76 = 1;
        v74 |= 0x3Eu;
        v74 &= 0xFFFFFCFF;
        goto LABEL_2;
      case 'u':
      case 'w':
        if (!isdigit_l(*v79, v75))
        {
          return 0;
        }

        HIDWORD(v68) = *v79 - 48;
        if (v68 < 0 || SHIDWORD(v68) > 7 || v71 == 117 && SHIDWORD(v68) < 1 || v71 == 119 && SHIDWORD(v68) > 6)
        {
          return 0;
        }

        v77->tm_wday = SHIDWORD(v68) % 7;
        v74 |= 0x20u;
        ++v79;
        goto LABEL_2;
      case 'x':
        v79 = _strptime0(v79, current_time_locale[39], v77, v76, v75, 1, 0, 85);
        if (!v79)
        {
          return 0;
        }

        v74 |= 0x16u;
        v74 &= 0xFFFFFCFF;
        goto LABEL_2;
      case 'z':
        v54 = 0;
        v53 = 0;
        v52 = 0;
        if (*v79 != 43 && *v79 != 45 || !isdigit_l(*(v79 + 1), v75) || !isdigit_l(*(v79 + 2), v75) || !isdigit_l(*(v79 + 3), v75) || !isdigit_l(*(v79 + 4), v75))
        {
          return 0;
        }

        sscanf(v79, "%c%2d%2d", &v54, &v53, &v52);
        *v76 = 2;
        v77->tm_gmtoff = 60 * (60 * v53 + v52);
        if (v54 == 45)
        {
          v77->tm_gmtoff = -v77->tm_gmtoff;
        }

        v79 += 5;
        goto LABEL_2;
      default:
        return 0;
    }

    return v80;
  }
}