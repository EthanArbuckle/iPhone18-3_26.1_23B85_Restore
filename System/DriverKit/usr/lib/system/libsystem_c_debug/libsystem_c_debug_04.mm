unsigned int *MCGetMsg(uint64_t a1, int a2)
{
  if (!a1 || *(a1 + 36) || a2 <= 0)
  {
    return 0;
  }

  v6 = 0;
  if (a2 - 1 >= _OSSwapInt32(*(a1 + 32)))
  {
    v5 = _OSSwapInt32(*(a1 + 32));
    v4 = v5 / 2;
  }

  else
  {
    v4 = a2 - 1;
    v5 = a2;
  }

  while (1)
  {
    v7 = (*(a1 + 12) + 16 * v4);
    if (_OSSwapInt32(*v7) == a2)
    {
      return v7;
    }

    if (_OSSwapInt32(*v7) >= a2)
    {
      v5 = v4;
      v3 = -1;
    }

    else
    {
      v6 = v4 + 1;
      if (v5 > v4 + a2 - _OSSwapInt32(*v7) + 1)
      {
        v5 = v4 + a2 - _OSSwapInt32(*v7) + 1;
      }

      v3 = 1;
    }

    if (v6 >= v5)
    {
      break;
    }

    if (v5 - v6 == 1)
    {
      v4 += v3;
    }

    else
    {
      v4 += (v5 - v6) / 2 * v3;
    }
  }

  return 0;
}

unsigned int *MCGetSet(uint64_t a1, int a2)
{
  if (!a1 || a2 <= 0)
  {
    return 0;
  }

  v6 = 0;
  if (a2 - 1 < *(a1 + 8))
  {
    v4 = a2 - 1;
    v5 = a2;
  }

  else
  {
    v5 = *(a1 + 8);
    v4 = v5 / 2;
  }

  while (1)
  {
    v7 = (*(a1 + 16) + 40 * v4);
    if (_OSSwapInt32(*v7) == a2)
    {
      break;
    }

    if (_OSSwapInt32(*v7) >= a2)
    {
      v5 = v4;
      v3 = -1;
    }

    else
    {
      v6 = v4 + 1;
      if (v5 > v4 + a2 - _OSSwapInt32(*v7) + 1)
      {
        v5 = v4 + a2 - _OSSwapInt32(*v7) + 1;
      }

      v3 = 1;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    if (v5 - v6 == 1)
    {
      v4 += v3;
    }

    else
    {
      v4 += (v5 - v6) / 2 * v3;
    }
  }

  if (v7[9] && loadSet(a1, v7) <= 0)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

int catclose(nl_catd a1)
{
  if (a1 && a1 != -1)
  {
    fclose(a1->__data);
    __nls_free_resources(a1, a1->__size);
    free(a1);
    return 0;
  }

  else
  {
    *__error() = 9;
    return -1;
  }
}

void __nls_free_resources(uint64_t a1, int a2)
{
  for (i = 0; i < a2; ++i)
  {
    v3 = *(a1 + 16) + 40 * i;
    if (!*(v3 + 36))
    {
      free(*(v3 + 20));
      free(*(v3 + 12));
    }
  }

  free(*(a1 + 16));
}

uint64_t loadSet(FILE **a1, uint64_t a2)
{
  v11 = *a1;
  v10 = _OSSwapInt64(*(a2 + 20));
  if (fseeko(v11, v10, 0) == -1)
  {
    return 0;
  }

  else
  {
    _OSSwapInt32(*(a2 + 28));
    v2 = malloc_type_malloc();
    *(a2 + 20) = v2;
    if (v2)
    {
      v9 = *(a2 + 20);
      v8 = _OSSwapInt32(*(a2 + 28));
      if (fread(v9, v8, 1uLL, *a1) != 1 || (__stream = *a1, __offseta = _OSSwapInt64(*(a2 + 12)), fseeko(__stream, __offseta, 0) == -1))
      {
        v12 = *__error();
        free(*(a2 + 20));
        *__error() = v12;
        return 0;
      }

      else
      {
        _OSSwapInt32(*(a2 + 32));
        v3 = malloc_type_malloc();
        *(a2 + 12) = v3;
        if (v3)
        {
          for (i = 0; i < _OSSwapInt32(*(a2 + 32)); ++i)
          {
            v16 = *(a2 + 12) + 16 * i;
            if (fread(v16, 0x10uLL, 1uLL, *a1) != 1)
            {
              v14 = *__error();
              free(*(a2 + 12));
              free(*(a2 + 20));
              *__error() = v14;
              return 0;
            }

            if (*(v16 + 12))
            {
              --i;
            }

            else
            {
              v5 = *(a2 + 20);
              *(v16 + 4) = v5 + _OSSwapInt64(*(v16 + 4));
            }
          }

          *(a2 + 36) = 0;
          return 1;
        }

        else
        {
          v13 = *__error();
          free(*(a2 + 20));
          *__error() = v13;
          return -1;
        }
      }
    }

    else
    {
      return -1;
    }
  }
}

void flockfile(FILE *a1)
{
  v1 = *__error();
  pthread_mutex_lock((a1->_extra + 8));
  *__error() = v1;
}

int ftrylockfile(FILE *a1)
{
  v3 = 0;
  v2 = *__error();
  if (pthread_mutex_trylock((a1->_extra + 8)))
  {
    v3 = -1;
  }

  *__error() = v2;
  return v3;
}

void funlockfile(FILE *a1)
{
  v1 = *__error();
  pthread_mutex_unlock((a1->_extra + 8));
  *__error() = v1;
}

int asprintf(char **a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vasprintf_l(a1, v3, a2, va);
  }

  else
  {
    return vasprintf_l(a1, &__global_locale, a2, va);
  }
}

void clearerr(FILE *a1)
{
  flockfile(a1);
  a1->_flags &= 0xFF9Fu;
  funlockfile(a1);
}

int dprintf(int a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vdprintf_l(a1, v3, a2, va);
  }

  else
  {
    return vdprintf_l(a1, __global_locale, a2, va);
  }
}

int fclose(FILE *a1)
{
  v2 = 0;
  libc_hooks_will_write(a1, 152);
  pthread_once(&__sdidinit, __sinit);
  if (a1)
  {
    if (a1->_flags)
    {
      flockfile(a1);
      v3 = __sflush(a1);
      if (v3 < 0)
      {
        v2 = *__error();
      }

      if (a1->_close && ((a1->_close)(a1->_cookie) & 0x80000000) != 0)
      {
        v3 = -1;
        v2 = *__error();
      }

      if ((a1->_flags & 0x80) != 0)
      {
        free(a1->_bf._base);
      }

      if (a1->_ub._base)
      {
        if (a1->_ub._base != a1->_ubuf)
        {
          free(a1->_ub._base);
        }

        a1->_ub._base = 0;
      }

      if (a1->_lb._base)
      {
        free(a1->_lb._base);
        a1->_lb._base = 0;
      }

      a1->_file = -1;
      a1->_w = 0;
      a1->_r = 0;
      funlockfile(a1);
      __sfprelease(a1);
      if (v2)
      {
        *__error() = v2;
      }

      return v3;
    }

    else
    {
      *__error() = 9;
      return -1;
    }
  }

  else
  {
    *__error() = 14;
    return -1;
  }
}

uint64_t libc_hooks_will_write(uint64_t result, uint64_t a2)
{
  v2 = 0;
  if (off_E1540)
  {
    v2 = off_E1540;
  }

  if (v2)
  {
    return off_E1540(result, a2);
  }

  return result;
}

FILE *__cdecl fdopen(int a1, const char *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  libc_hooks_will_read_cstring(a2);
  if (v8 < 0x8000)
  {
    v5 = __sflags(v7, &v4);
    if (v5)
    {
      v3 = fcntl_NOCANCEL();
      if (v3 < 0)
      {
        return 0;
      }

      else if ((v3 & 3) == 2 || (v3 & 3) == (v4 & 3))
      {
        v6 = __sfp(1);
        if (v6)
        {
          v6->_flags = v5;
          if ((v4 & 8) != 0 && (v3 & 8) == 0)
          {
            v6->_flags |= 0x100u;
          }

          v6->_file = v8;
          v6->_cookie = v6;
          v6->_read = __sread;
          v6->_write = __swrite;
          v6->_seek = __sseek;
          v6->_close = __sclose;
          return v6;
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

    else
    {
      return 0;
    }
  }

  else
  {
    *__error() = 24;
    return 0;
  }
}

int feof(FILE *a1)
{
  flockfile(a1);
  v2 = (a1->_flags & 0x20) != 0;
  funlockfile(a1);
  return v2;
}

int ferror(FILE *a1)
{
  flockfile(a1);
  v2 = (a1->_flags & 0x40) != 0;
  funlockfile(a1);
  return v2;
}

int fflush(FILE *a1)
{
  if (!a1)
  {
    return _fwalk(sflush_locked);
  }

  libc_hooks_will_write(a1, 152);
  flockfile(a1);
  v2 = __sflush(a1);
  funlockfile(a1);
  return v2;
}

uint64_t sflush_locked(FILE *a1)
{
  flockfile(a1);
  v2 = __sflush(a1);
  funlockfile(a1);
  return v2;
}

uint64_t __sflush(uint64_t a1)
{
  __len_4 = *(a1 + 16);
  __src = *(a1 + 24);
  if (!__src)
  {
    return 0;
  }

  if ((__len_4 & 4) != 0)
  {
    if (!*(a1 + 72))
    {
      return 0;
    }

    __len = *(a1 + 8);
    if (__len > 0)
    {
      if (_sseek(a1, -__len, 1u) == -1)
      {
        if (*__error() == 29)
        {
          return 0;
        }

        else
        {
          return -1;
        }
      }

      if (*(a1 + 88))
      {
        if (*(a1 + 88) != a1 + 116)
        {
          free(*(a1 + 88));
        }

        *(a1 + 88) = 0;
      }

      *a1 = *(a1 + 24);
      *(a1 + 8) = 0;
      *(a1 + 16) &= ~0x20u;
      memset((*(a1 + 104) + 80), 0, 0x80uLL);
    }

    return 0;
  }

  if ((__len_4 & 8) != 0)
  {
    v1 = __OFSUB__(*a1, __src);
    __lena = *a1 - __src;
    *a1 = __src;
    if ((__len_4 & 3) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(a1 + 32);
    }

    *(a1 + 12) = v3;
    while (__lena > 0)
    {
      v4 = _swrite(a1, __src, __lena);
      if (v4 <= 0)
      {
        if (__src > *a1)
        {
          memmove(*a1, __src, __lena);
        }

        *a1 += __lena;
        if ((*(a1 + 16) & 2) == 0)
        {
          *(a1 + 12) -= __lena;
        }

        *(a1 + 16) |= 0x40u;
        return -1;
      }

      __lena -= v4;
      __src += v4;
    }
  }

  return 0;
}

uint64_t __fflush(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 16) & 0x18) != 0)
    {
      return __sflush(a1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return _fwalk(sflush_locked);
  }
}

int fgetc(FILE *a1)
{
  flockfile(a1);
  v1 = a1->_r - 1;
  a1->_r = v1;
  if (v1 < 0)
  {
    v4 = __srget(a1);
  }

  else
  {
    v2 = a1->_p++;
    v4 = *v2;
  }

  funlockfile(a1);
  return v4;
}

uint64_t __slbexpand(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  if (*(a1 + 128) < a2)
  {
    if (a2 <= 0x7FFFFFFF)
    {
      v2 = *(a1 + 120);
      v4 = malloc_type_realloc();
      if (v4)
      {
        *(a1 + 120) = v4;
        *(a1 + 128) = v5;
        return 0;
      }

      else
      {
        return -1;
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
    return 0;
  }
}

char *__cdecl fgetln(FILE *a1, size_t *a2)
{
  flockfile(a1);
  if (!((32 * *(a1->_extra + 72)) >> 5))
  {
    *(a1->_extra + 72) = *(a1->_extra + 72) & 0xF8 | 7;
  }

  if (a1->_r <= 0 && __srefill(a1))
  {
    *a2 = 0;
    funlockfile(a1);
    return 0;
  }

  else
  {
    v8 = memchr(a1->_p, 10, a1->_r);
    if (v8)
    {
      v9 = (v8 + 1);
      p = a1->_p;
      v6 = v9 - a1->_p;
      *a2 = v6;
      a1->_flags |= 0x2000u;
      a1->_r -= v6;
      a1->_p = v9;
      funlockfile(a1);
      return p;
    }

    else
    {
      r = a1->_r;
      v5 = 0;
      while (!__slbexpand(a1, r + 80))
      {
        memcpy(&a1->_lb._base[v5], a1->_p, r - v5);
        v5 = r;
        if (__srefill(a1))
        {
          goto LABEL_15;
        }

        v10 = memchr(a1->_p, 10, a1->_r);
        if (v10)
        {
          v11 = (v10 + 1);
          __n = v11 - a1->_p;
          r += __n;
          if (!__slbexpand(a1, r))
          {
            memcpy(&a1->_lb._base[v5], a1->_p, __n);
            a1->_r -= __n;
            a1->_p = v11;
LABEL_15:
            *a2 = r;
            funlockfile(a1);
            return a1->_lb._base;
          }

          break;
        }

        r += a1->_r;
      }

      *a2 = 0;
      a1->_flags |= 0x40u;
      funlockfile(a1);
      return 0;
    }
  }
}

int fgetpos(FILE *a1, fpos_t *a2)
{
  v2 = ftello(a1);
  *a2 = v2;
  if (v2 == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

char *__cdecl fgets(char *a1, int a2, FILE *a3)
{
  if (a2 <= 0)
  {
    return 0;
  }

  libc_hooks_will_write(a1, a2);
  libc_hooks_will_write(a3, 152);
  flockfile(a3);
  if (!((32 * *(a3->_extra + 72)) >> 5))
  {
    *(a3->_extra + 72) = *(a3->_extra + 72) & 0xF8 | 7;
  }

  __dst = a1;
  for (i = a2 - 1; i; i -= __n)
  {
    __n = a3->_r;
    if (!a3->_r)
    {
      if (__srefill(a3))
      {
        if (__dst == a1)
        {
          funlockfile(a3);
          return 0;
        }

        break;
      }

      __n = a3->_r;
    }

    __s = a3->_p;
    if (__n > i)
    {
      __n = i;
    }

    v4 = memchr(__s, 10, __n);
    if (v4)
    {
      v5 = (v4 + 1);
      a3->_r -= v5 - __s;
      a3->_p = v5;
      memcpy(__dst, __s, v5 - __s);
      __dst[v5 - __s] = 0;
      funlockfile(a3);
      return a1;
    }

    a3->_r -= __n;
    a3->_p += __n;
    memcpy(__dst, __s, __n);
    __dst += __n;
  }

  *__dst = 0;
  funlockfile(a3);
  return a1;
}

wint_t fgetwc(FILE *a1)
{
  flockfile(a1);
  if (!((32 * *(a1->_extra + 72)) >> 5))
  {
    *(a1->_extra + 72) = *(a1->_extra + 72) & 0xF8 | 1;
  }

  v6 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v5)
  {
    v1 = __fgetwc(a1, v5);
  }

  else
  {
    v1 = __fgetwc(a1, __global_locale);
  }

  v3 = v1;
  funlockfile(a1);
  return v3;
}

uint64_t __fgetwc(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v6 = *(a2 + 1328);
  v5 = *(v6 + 72);
  if (*(a1 + 8) <= 0 && __srefill(v10))
  {
    return -1;
  }

  else if (*(v6 + 64) == 1)
  {
    v2 = (*v10)++;
    v8 = *v2;
    --*(v10 + 8);
    return v8;
  }

  else
  {
    while (1)
    {
      v7 = v5(&v8, *v10, *(v10 + 8), *(v10 + 104) + 80, v9);
      if (v7 == -1)
      {
LABEL_13:
        *(v10 + 16) |= 0x40u;
        *__error() = 92;
        return -1;
      }

      if (v7 != -2)
      {
        break;
      }

      if (__srefill(v10))
      {
        goto LABEL_13;
      }
    }

    if (v7)
    {
      *v10 += v7;
      *(v10 + 8) -= v7;
      return v8;
    }

    else
    {
      ++*v10;
      --*(v10 + 8);
      return 0;
    }
  }
}

wint_t fgetwc_l(FILE *a1, locale_t a2)
{
  v4 = a2;
  if (a2)
  {
    if (a2 == -1)
    {
      v4 = __global_locale;
    }
  }

  else
  {
    v4 = &__c_locale;
  }

  flockfile(a1);
  if (!((32 * *(a1->_extra + 72)) >> 5))
  {
    *(a1->_extra + 72) = *(a1->_extra + 72) & 0xF8 | 1;
  }

  v3 = __fgetwc(a1, v4);
  funlockfile(a1);
  return v3;
}

__int32 *__cdecl fgetwln_l(FILE *a1, size_t *a2, locale_t a3)
{
  flockfile(a1);
  if (!((32 * *(a1->_extra + 72)) >> 5))
  {
    *(a1->_extra + 72) = *(a1->_extra + 72) & 0xF8 | 1;
  }

  v5 = 0;
  do
  {
    v6 = __fgetwc(a1, a3);
    if (v6 == -1)
    {
      break;
    }

    if (a1->_lb._size <= 4 * v5 && __slbexpand(a1, 4 * (v5 + 512)))
    {
      goto LABEL_10;
    }

    v3 = v5++;
    *&a1->_lb._base[4 * v3] = v6;
  }

  while (v6 != 10);
  if (v5)
  {
    funlockfile(a1);
    *a2 = v5;
    return a1->_lb._base;
  }

LABEL_10:
  funlockfile(a1);
  *a2 = 0;
  return 0;
}

__int32 *__cdecl fgetwln(FILE *a1, size_t *a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return fgetwln_l(a1, a2, v3);
  }

  else
  {
    return fgetwln_l(a1, a2, __global_locale);
  }
}

__int32 *__cdecl fgetws_l(__int32 *a1, int a2, FILE *a3, locale_t a4)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = 0;
  v12 = 0;
  p = 0;
  if (a4)
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

  v9 = *(v14 + 166);
  v8 = *(v9 + 88);
  flockfile(v15);
  if (!((32 * *(v15->_extra + 72)) >> 5))
  {
    *(v15->_extra + 72) = *(v15->_extra + 72) & 0xF8 | 1;
  }

  if (v16 > 0)
  {
    if (v15->_r > 0 || !__srefill(v15))
    {
      v13 = v17;
      while (1)
      {
        p = v15->_p;
        v10 = memchr(v15->_p, 10, v15->_r);
        v7 = v10 ? v10 - v15->_p + 1 : v15->_r;
        v12 = v8(v13, &p, v7, v16 - 1, v15->_extra + 80, v14);
        if (v12 == -1)
        {
          break;
        }

        if (!p)
        {
          ++v12;
          p = memchr(v15->_p, 0, v15->_r) + 1;
        }

        v15->_r -= p - LODWORD(v15->_p);
        v15->_p = p;
        v16 -= v12;
        v13 += v12;
        v6 = 0;
        if (*(v13 - 1) != 10)
        {
          v6 = 0;
          if (v16 > 1)
          {
            v5 = 1;
            if (v15->_r <= 0)
            {
              v5 = __srefill(v15) == 0;
            }

            v6 = v5;
          }
        }

        if (!v6)
        {
          if (v13 != v17 && (*(v9 + 80))(v15->_extra + 80, v14))
          {
            *v13 = 0;
            funlockfile(v15);
            return v17;
          }

          break;
        }
      }
    }
  }

  else
  {
    *__error() = 22;
  }

  funlockfile(v15);
  return 0;
}

__int32 *__cdecl fgetws(__int32 *a1, int a2, FILE *a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return fgetws_l(a1, a2, a3, v4);
  }

  else
  {
    return fgetws_l(a1, a2, a3, __global_locale);
  }
}

int fileno(FILE *a1)
{
  flockfile(a1);
  file = a1->_file;
  funlockfile(a1);
  return file;
}

uint64_t *__sfp(int a1)
{
  pthread_once(&__sdidinit, __sinit);
  if (a1)
  {
    v3 = atomic_fetch_add_explicit(&__scounted, 1uLL, memory_order_relaxed) + 1;
    if (v3 > sysconf(26))
    {
      atomic_fetch_add_explicit(&__scounted, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      *__error() = 24;
      return 0;
    }

    if (v3 < 0)
    {
      atomic_fetch_add_explicit(&__scounted, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      *__error() = 84;
      return 0;
    }
  }

  pthread_mutex_lock(&filelist_lock);
  for (i = &__sglue; i; i = *i)
  {
    v7 = i[2];
    v6 = *(i + 2);
    while ((--v6 & 0x80000000) == 0)
    {
      if (!*(v7 + 8))
      {
        goto LABEL_18;
      }

      v7 += 19;
    }
  }

  pthread_mutex_unlock(&filelist_lock);
  v5 = moreglue(10);
  if (v5)
  {
    pthread_mutex_lock(&filelist_lock);
    *lastglue = v5;
    lastglue = v5;
    v7 = v5[2];
LABEL_18:
    *(v7 + 8) = 1;
    pthread_mutex_unlock(&filelist_lock);
    *v7 = 0;
    *(v7 + 3) = 0;
    *(v7 + 2) = 0;
    v7[3] = 0;
    *(v7 + 8) = 0;
    *(v7 + 10) = 0;
    *(v7 + 9) = -1;
    v7[11] = 0;
    *(v7 + 24) = 0;
    v7[15] = 0;
    *(v7 + 32) = 0;
    *v7[13] = 0;
    __dst = (v7[13] + 8);
    memset(__b, 0, sizeof(__b));
    __b[0] = 850045858;
    memcpy(__dst, __b, 0x40uLL);
    *(v7[13] + 72) &= 0xF8u;
    memset((v7[13] + 80), 0, 0x80uLL);
    *(v7[13] + 72) &= ~8u;
    *(v7[13] + 72) = *(v7[13] + 72) & 0xF7 | (8 * (a1 != 0));
    return v7;
  }

  else
  {
    if (a1)
    {
      atomic_fetch_add_explicit(&__scounted, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    }

    return 0;
  }
}

void *__sinit()
{
  __cleanup = 1;
  __scounted = 3;
  for (i = 0; i < 17; ++i)
  {
    *(&usual + 19 * i + 13) = &usual_extra + 208 * i;
    **(&usual + 19 * i + 13) = 0;
    __dst = (*(&usual + 19 * i + 13) + 8);
    memset(__b, 0, sizeof(__b));
    __b[0] = 850045858;
    memcpy(__dst, __b, 0x40uLL);
    v0 = *(&usual + 19 * i + 13);
    *(v0 + 72) &= 0xF8u;
    result = memset((*(&usual + 19 * i + 13) + 80), 0, 0x80uLL);
    v2 = *(&usual + 19 * i + 13);
    *(v2 + 72) &= ~8u;
  }

  return result;
}

uint64_t moreglue(int a1)
{
  v6 = malloc_type_malloc();
  if (!v6)
  {
    return 0;
  }

  if ((v6 + 24) % 8uLL)
  {
    v3 = v6 + 24 + 8 - (v6 + 24) % 8uLL;
  }

  else
  {
    v3 = v6 + 24;
  }

  __b = v3;
  v4 = v3 + 152 * a1;
  *v6 = 0;
  *(v6 + 8) = a1;
  *(v6 + 16) = v3;
  while ((--a1 & 0x80000000) == 0)
  {
    memset(__b, 0, 0x98uLL);
    __b[13] = v4;
    *__b[13] = 0;
    __dst = (__b[13] + 8);
    memset(v9, 0, sizeof(v9));
    v9[0] = 850045858;
    memcpy(__dst, v9, 0x40uLL);
    *(__b[13] + 72) &= 0xF8u;
    memset((__b[13] + 80), 0, 0x80uLL);
    *(__b[13] + 72) &= ~8u;
    __b += 19;
    v4 += 208;
  }

  return v6;
}

uint64_t __sfprelease(uint64_t a1)
{
  if ((*(*(a1 + 104) + 72) & 8) != 0)
  {
    atomic_fetch_add_explicit(&__scounted, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    *(*(a1 + 104) + 72) &= ~8u;
  }

  pthread_mutex_destroy((*(a1 + 104) + 8));
  pthread_mutex_lock(&filelist_lock);
  *(a1 + 16) = 0;
  return pthread_mutex_unlock(&filelist_lock);
}

uint64_t f_prealloc()
{
  result = getdtablesize();
  v2 = result;
  for (i = &__sglue; ; i = *i)
  {
    v2 -= *(i + 2);
    v1 = 0;
    if (v2 > 0)
    {
      v1 = *i != 0;
    }

    if (!v1)
    {
      break;
    }
  }

  if (v2 > 0)
  {
    result = moreglue(v2);
    v4 = result;
    if (result)
    {
      pthread_mutex_lock(&filelist_lock);
      *lastglue = v4;
      lastglue = v4;
      return pthread_mutex_unlock(&filelist_lock);
    }
  }

  return result;
}

uint64_t tryflush(FILE *a1)
{
  if (ftrylockfile(a1) < 0)
  {
    return -1;
  }

  else
  {
    v2 = __sflush(a1);
    funlockfile(a1);
    return v2;
  }
}

uint64_t __sflags(char *a1, int *a2)
{
  v7 = a1 + 1;
  v3 = *a1;
  switch(v3)
  {
    case 'a':
      v6 = 8;
      v5 = 1;
      v4 = 520;
      break;
    case 'r':
      v6 = 4;
      v5 = 0;
      v4 = 0;
      break;
    case 'w':
      v6 = 8;
      v5 = 1;
      v4 = 1536;
      break;
    default:
      *__error() = 22;
      return 0;
  }

  if (*v7 == 98)
  {
    v7 = a1 + 2;
  }

  if (*v7 == 43)
  {
    v6 = 16;
    v5 = 2;
    if (*++v7 == 98)
    {
      ++v7;
    }
  }

  if (*v7 == 120)
  {
    v4 |= 0x800u;
  }

  *a2 = v5 | v4;
  return v6;
}

FILE *__cdecl fopen(const char *__filename, const char *__mode)
{
  v8 = __filename;
  v7 = __mode;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  libc_hooks_will_read_cstring(__filename);
  libc_hooks_will_read_cstring(v7);
  v4 = __sflags(v7, &v3);
  if (!v4)
  {
    return 0;
  }

  v6 = __sfp(1);
  if (!v6)
  {
    return 0;
  }

  v5 = open_NOCANCEL();
  if (v5 < 0)
  {
    __sfprelease(v6);
    return 0;
  }

  else if (v5 < 0x8000)
  {
    v6->_file = v5;
    v6->_flags = v4;
    v6->_cookie = v6;
    v6->_read = __sread;
    v6->_write = __swrite;
    v6->_seek = __sseek;
    v6->_close = __sclose;
    if ((v3 & 8) != 0)
    {
      _sseek(v6, 0, 2u);
    }

    return v6;
  }

  else
  {
    v6->_flags = 0;
    close_NOCANCEL();
    *__error() = 24;
    return 0;
  }
}

int fprintf(FILE *a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vfprintf_l(a1, v3, a2, va);
  }

  else
  {
    return vfprintf_l(a1, &__global_locale, a2, va);
  }
}

int fpurge(FILE *a1)
{
  flockfile(a1);
  if (a1->_flags)
  {
    if (a1->_ub._base)
    {
      if (a1->_ub._base != a1->_ubuf)
      {
        free(a1->_ub._base);
      }

      a1->_ub._base = 0;
    }

    a1->_p = a1->_bf._base;
    a1->_r = 0;
    if ((a1->_flags & 3) != 0)
    {
      size = 0;
    }

    else
    {
      size = a1->_bf._size;
    }

    a1->_w = size;
    v3 = 0;
  }

  else
  {
    *__error() = 9;
    v3 = -1;
  }

  funlockfile(a1);
  return v3;
}

int fputc(int a1, FILE *a2)
{
  flockfile(a2);
  v2 = a2->_w - 1;
  a2->_w = v2;
  if (v2 < 0 && (a2->_w < a2->_lbfsize || a1 == 10))
  {
    v7 = __swbuf(a1, a2);
  }

  else
  {
    v3 = a2->_p++;
    *v3 = a1;
    v7 = a1;
  }

  funlockfile(a2);
  return v7;
}

int fputs(const char *a1, FILE *a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  v5 = 0;
  v6 = 0;
  v3 = 0;
  v4 = 0;
  libc_hooks_will_read_cstring(a1);
  libc_hooks_will_write(v8, 152);
  if (!v9)
  {
    v9 = "(null)";
  }

  v3 = v9;
  HIDWORD(v6) = strlen(v9);
  v4 = SHIDWORD(v6);
  v5 = &v3;
  LODWORD(v6) = 1;
  flockfile(v8);
  if (!((32 * *(v8->_extra + 72)) >> 5))
  {
    *(v8->_extra + 72) = *(v8->_extra + 72) & 0xF8 | 7;
  }

  v7 = __sfvwrite(v8, &v5);
  funlockfile(v8);
  if (v7)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

uint64_t __fputwc(int a1, FILE *a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  if (*(*(a3 + 1328) + 64) == 1 && v12 > 0 && v12 <= 255)
  {
    v9[0] = v12;
    v7 = 1;
  }

  else
  {
    v7 = (*(*(v10 + 1328) + 96))(v9, v12, v11->_extra + 80, v10);
    if (v7 == -1)
    {
      v11->_flags |= 0x40u;
      return -1;
    }
  }

  for (i = 0; i < v7; ++i)
  {
    v15 = v9[i];
    v14 = v11;
    v3 = v11->_w - 1;
    v11->_w = v3;
    if (v3 < 0 && (v14->_w < v14->_lbfsize || v15 == 10))
    {
      v16 = __swbuf(v15, v14);
    }

    else
    {
      v4 = v15;
      v5 = v14->_p++;
      *v5 = v4;
      v16 = v4;
    }

    if (v16 == -1)
    {
      return -1;
    }
  }

  return v12;
}

wint_t fputwc(__int32 a1, FILE *a2)
{
  flockfile(a2);
  if (!((32 * *(a2->_extra + 72)) >> 5))
  {
    *(a2->_extra + 72) = *(a2->_extra + 72) & 0xF8 | 1;
  }

  v8 = __locale_key;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v8);
  if (v7)
  {
    v2 = __fputwc(a1, a2, v7);
  }

  else
  {
    v2 = __fputwc(a1, a2, __global_locale);
  }

  v4 = v2;
  funlockfile(a2);
  return v4;
}

wint_t fputwc_l(__int32 a1, FILE *a2, locale_t a3)
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

  flockfile(a2);
  if (!((32 * *(a2->_extra + 72)) >> 5))
  {
    *(a2->_extra + 72) = *(a2->_extra + 72) & 0xF8 | 1;
  }

  v4 = __fputwc(a1, a2, v5);
  funlockfile(a2);
  return v4;
}

int fputws_l(const __int32 *a1, FILE *a2, locale_t a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v6 = a1;
  if (a3)
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

  v5 = *(*(v12 + 166) + 104);
  flockfile(v13);
  if (!((32 * *(v13->_extra + 72)) >> 5))
  {
    *(v13->_extra + 72) = *(v13->_extra + 72) & 0xF8 | 1;
  }

  if ((v13->_flags & 8) == 0 || (v4 = 0, !v13->_bf._base) && (v4 = 0, (v13->_flags & 0x200) == 0))
  {
    v4 = __swsetup(v13) != 0;
  }

  if (!v4)
  {
    v9 = &v7;
    LODWORD(v10) = 1;
    v7 = v16;
    while (1)
    {
      v11 = v5(v16, &v6, -1, 1024, v13->_extra + 80, v12);
      if (v11 == -1)
      {
        break;
      }

      HIDWORD(v10) = v11;
      v8 = v11;
      if (__sfvwrite(v13, &v9))
      {
        break;
      }

      if (!v6)
      {
        funlockfile(v13);
        return 0;
      }
    }
  }

  funlockfile(v13);
  return -1;
}

int fputws(const __int32 *a1, FILE *a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return fputws_l(a1, a2, v3);
  }

  else
  {
    return fputws_l(a1, a2, __global_locale);
  }
}

uint64_t strtonum(const char *__numstr, uint64_t __minval, uint64_t __maxval, const char **__errstrp)
{
  __str = __numstr;
  v11 = __minval;
  v10 = __maxval;
  v9 = __errstrp;
  v8 = 0;
  v7 = 0;
  __endptr = 0;
  memcpy(__dst, &unk_C8880, sizeof(__dst));
  DWORD2(__dst[0]) = *__error();
  *__error() = 0;
  if (v11 <= v10)
  {
    v8 = strtoll(__str, &__endptr, 10);
    if (*__error() == 22 || __str == __endptr || *__endptr)
    {
      v7 = 1;
    }

    else if (v8 == 0x8000000000000000 && *__error() == 34 || v8 < v11)
    {
      v7 = 2;
    }

    else if (v8 == 0x7FFFFFFFFFFFFFFFLL && *__error() == 34 || v8 > v10)
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 1;
  }

  if (v9)
  {
    *v9 = *&__dst[v7];
  }

  v5 = DWORD2(__dst[v7]);
  *__error() = v5;
  if (v7)
  {
    return 0;
  }

  return v8;
}

size_t fread(void *a1, size_t a2, size_t a3, FILE *a4)
{
  libc_hooks_will_write(a4, 152);
  flockfile(a4);
  v5 = __fread(a1, a2, a3, a4);
  funlockfile(a4);
  return v5;
}

unint64_t __fread(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v9 = a3;
  libc_hooks_will_write(a1, a2 * a3);
  v7 = v9 * a2;
  if (!(v9 * a2))
  {
    return 0;
  }

  if (!((32 * *(*(a4 + 104) + 72)) >> 5))
  {
    *(*(a4 + 104) + 72) = *(*(a4 + 104) + 72) & 0xF8 | 7;
  }

  if ((*(a4 + 8) & 0x80000000) != 0)
  {
    *(a4 + 8) = 0;
  }

  while (v7)
  {
    if (v7 <= 0x7FFFFFFF)
    {
      v5 = v7;
    }

    else
    {
      v5 = 2147482624;
    }

    v6 = __fread0(v11, v5, a4);
    if (v6 != v5)
    {
      return (v9 * a2 - v7 + v6) / a2;
    }

    v11 += v5;
    v7 -= v5;
  }

  return v9;
}

uint64_t __fread0(char *a1, unsigned int a2, uint64_t a3)
{
  v10 = a2;
  while (1)
  {
    __n = *(a3 + 8);
    if (v10 <= __n)
    {
      break;
    }

    memcpy(a1, *a3, __n);
    *a3 += __n;
    a1 += __n;
    v10 -= __n;
    v6 = __srefill0(a3);
    if (v6 > 0)
    {
      break;
    }

    if (v6)
    {
      return a2 - v10;
    }
  }

  if ((*(a3 + 16) & 0x82) != 0 && v10 > *(a3 + 32))
  {
    v5 = *(a3 + 24);
    *(a3 + 24) = a1;
    for (*(a3 + 32) = v10; *(a3 + 32) > 0; *(a3 + 32) -= *(a3 + 8))
    {
      if (__srefill1(a3))
      {
        v11 = *(a3 + 32);
        *(a3 + 24) = v5;
        *a3 = *(a3 + 24);
        return a2 - v11;
      }

      *(a3 + 24) += *(a3 + 8);
    }

    *(a3 + 24) = v5;
    v4 = *(a3 + 32) * ((v10 - 1) / *(a3 + 32));
    memcpy(*(a3 + 24), &a1[v4], v10 - v4);
    *a3 = *(a3 + 24) + v10 - v4;
    *(a3 + 8) = 0;
  }

  else
  {
    while (1)
    {
      __na = *(a3 + 8);
      if (v10 <= __na)
      {
        break;
      }

      memcpy(a1, *a3, __na);
      *a3 += __na;
      a1 += __na;
      v10 -= __na;
      if (__srefill1(a3))
      {
        return a2 - v10;
      }
    }

    memcpy(a1, *a3, v10);
    *(a3 + 8) -= v10;
    *a3 += v10;
  }

  return a2;
}

FILE *__cdecl freopen(const char *a1, const char *a2, FILE *a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v6 = 0;
  libc_hooks_will_read_cstring(a1);
  libc_hooks_will_read_cstring(v15);
  libc_hooks_will_write(v14, 152);
  v11 = __sflags(v15, &v9);
  if (v11)
  {
    pthread_once(&__sdidinit, __sinit);
    flockfile(v14);
    if (v16)
    {
      if (v14->_flags)
      {
        if ((v14->_flags & 8) != 0)
        {
          __sflush(v14);
        }

        if (v14->_close)
        {
          (v14->_close)(v14->_cookie);
        }

        v10 = 0;
      }

      else
      {
        v14->_flags = 32;
        v10 = 0;
      }

      v13 = open_NOCANCEL();
      if (v13 < 0 && v10 && (*__error() == 23 || *__error() == 24))
      {
        (v14->_close)(v14->_cookie);
        v10 = 0;
        v13 = open_NOCANCEL();
      }

      v6 = *__error();
    }

    else
    {
      if (!v14->_flags)
      {
        funlockfile(v14);
        *__error() = 22;
        return 0;
      }

      file = v14->_file;
      v12 = fcntl_NOCANCEL();
      if (v12 < 0)
      {
        goto LABEL_7;
      }

      if ((v12 & 3) != 2 && (v12 & 3) != (v9 & 3))
      {
        fclose(v14);
        funlockfile(v14);
        *__error() = 9;
        return 0;
      }

      if ((v14->_flags & 8) != 0)
      {
        __sflush(v14);
      }

      if (((v9 ^ v12) & 8) != 0)
      {
        v12 &= ~8u;
        v12 |= v9 & 8;
        v4 = v14->_file;
        if ((fcntl_NOCANCEL() & 0x80000000) != 0)
        {
LABEL_7:
          v8 = *__error();
          fclose(v14);
          funlockfile(v14);
          *__error() = v8;
          return 0;
        }
      }

      if ((v9 & 0x400) != 0)
      {
        ftruncate(v14->_file, 0);
      }

      if ((v9 & 8) == 0)
      {
        _sseek(v14, 0, 0);
      }

      v13 = v14->_file;
      v10 = 0;
    }

    if (v10)
    {
      (v14->_close)(v14->_cookie);
    }

    if ((v14->_flags & 0x80) != 0)
    {
      free(v14->_bf._base);
    }

    v14->_w = 0;
    v14->_r = 0;
    v14->_p = 0;
    v14->_bf._base = 0;
    v14->_bf._size = 0;
    v14->_lbfsize = 0;
    if (v14->_ub._base)
    {
      if (v14->_ub._base != v14->_ubuf)
      {
        free(v14->_ub._base);
      }

      v14->_ub._base = 0;
    }

    v14->_ub._size = 0;
    if (v14->_lb._base)
    {
      free(v14->_lb._base);
      v14->_lb._base = 0;
    }

    v14->_lb._size = 0;
    *(v14->_extra + 72) &= 0xF8u;
    memset(v14->_extra + 80, 0, 0x80uLL);
    if (v13 < 0)
    {
      funlockfile(v14);
      __sfprelease(v14);
      *__error() = v6;
      return 0;
    }

    else if (v13 < 0x8000)
    {
      v14->_flags = v11;
      v14->_file = v13;
      v14->_cookie = v14;
      v14->_read = __sread;
      v14->_write = __swrite;
      v14->_seek = __sseek;
      v14->_close = __sclose;
      if ((v9 & 8) != 0)
      {
        _sseek(v14, 0, 2u);
      }

      funlockfile(v14);
      return v14;
    }

    else
    {
      funlockfile(v14);
      __sfprelease(v14);
      *__error() = 24;
      return 0;
    }
  }

  else
  {
    v7 = *__error();
    fclose(v14);
    *__error() = v7;
    return 0;
  }
}

int fscanf(FILE *a1, const char *a2, ...)
{
  va_start(va, a2);
  libc_hooks_will_write(a1, 152);
  flockfile(a1);
  v8 = __locale_key;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v8);
  if (v7)
  {
    v2 = __svfscanf_l(a1, v7, a2, va);
  }

  else
  {
    v2 = __svfscanf_l(a1, __global_locale, a2, va);
  }

  v4 = v2;
  funlockfile(a1);
  return v4;
}

int fscanf_l(FILE *a1, locale_t a2, const char *a3, ...)
{
  va_start(va, a3);
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
  v4 = __svfscanf_l(a1, a2, a3, va);
  funlockfile(a1);
  return v4;
}

int fseek(FILE *a1, uint64_t a2, int a3)
{
  v4 = *__error();
  pthread_once(&__sdidinit, __sinit);
  flockfile(a1);
  v5 = _fseeko(a1, a2, a3, 1);
  funlockfile(a1);
  if (!v5)
  {
    *__error() = v4;
  }

  return v5;
}

uint64_t _fseeko(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  memset(&__b, 0, sizeof(__b));
  v12 = *(v16 + 72);
  if (!v12)
  {
LABEL_2:
    *__error() = 29;
    return -1;
  }

  if (!v14)
  {
    if (v15 < 0)
    {
      goto LABEL_34;
    }

LABEL_17:
    v10 = 0;
    v6 = 0;
    goto LABEL_18;
  }

  if (v14 != 1)
  {
    if (v14 != 2)
    {
      goto LABEL_34;
    }

    goto LABEL_17;
  }

  if (_ftello(v16, &v10))
  {
    return -1;
  }

  if (v10 < 0)
  {
    goto LABEL_2;
  }

  if (v15 > 0 && v10 > 0x7FFFFFFFFFFFFFFFLL - v15)
  {
    goto LABEL_12;
  }

  v15 += v10;
  if (v15 < 0)
  {
    goto LABEL_34;
  }

  v14 = 0;
  v6 = 1;
LABEL_18:
  if (!*(v16 + 24))
  {
    __smakebuf(v16);
  }

  if ((*(v16 + 16) & 0x81A) != 0)
  {
    goto LABEL_59;
  }

  if ((*(v16 + 16) & 0x400) == 0)
  {
    if (v12 != __sseek || *(v16 + 18) < 0 || fstat(*(v16 + 18), &__b) || (__b.st_mode & 0xF000) != 0x8000)
    {
      *(v16 + 16) |= 0x800u;
      goto LABEL_59;
    }

    *(v16 + 136) = __b.st_blksize;
    *(v16 + 16) |= 0x400u;
  }

  if (!v14)
  {
    v11 = v15;
    goto LABEL_35;
  }

  if (fstat(*(v16 + 18), &__b))
  {
    goto LABEL_59;
  }

  if (v15 > 0 && __b.st_size > 0x7FFFFFFFFFFFFFFFLL - v15)
  {
LABEL_12:
    *__error() = 84;
    return -1;
  }

  v11 = __b.st_size + v15;
  if (__b.st_size + v15 < 0)
  {
LABEL_34:
    *__error() = 22;
    return -1;
  }

LABEL_35:
  if (v6 || !_ftello(v16, &v10))
  {
    if ((*(v16 + 16) & 0x2000) == 0)
    {
      if (*(v16 + 88))
      {
        v10 += *(v16 + 8);
        v8 = **(v16 + 104) - *(v16 + 24);
        v10 -= v8;
        v8 += *(v16 + 112);
      }

      else
      {
        v8 = *v16 - *(v16 + 24);
        v10 -= v8;
        v8 += *(v16 + 8);
      }

      if (v11 >= v10 && v11 < v10 + v8)
      {
        v5 = v11 - v10;
        *v16 = *(v16 + 24) + v11 - v10;
        *(v16 + 8) = v8 - v5;
        if (*(v16 + 88))
        {
          if (*(v16 + 88) != v16 + 116)
          {
            free(*(v16 + 88));
          }

          *(v16 + 88) = 0;
        }

        goto LABEL_47;
      }
    }

    v10 = v11 & ~(*(v16 + 136) - 1);
    if (_sseek(v16, v10, 0) == -1)
    {
      goto LABEL_59;
    }

    *(v16 + 8) = 0;
    *v16 = *(v16 + 24);
    if (*(v16 + 88))
    {
      if (*(v16 + 88) != v16 + 116)
      {
        free(*(v16 + 88));
      }

      *(v16 + 88) = 0;
    }

    v8 = v11 - v10;
    if (v11 != v10)
    {
      if (__srefill(v16) || *(v16 + 8) < v8)
      {
        goto LABEL_59;
      }

      *v16 += v8;
      *(v16 + 8) -= v8;
    }

LABEL_47:
    *(v16 + 16) &= ~0x20u;
    memset((*(v16 + 104) + 80), 0, 0x80uLL);
    return 0;
  }

LABEL_59:
  if (__sflush(v16))
  {
    return -1;
  }

  v9 = _sseek(v16, v15, v14);
  if (v9 == -1)
  {
    return -1;
  }

  else
  {
    if (*(v16 + 88))
    {
      if (*(v16 + 88) != v16 + 116)
      {
        free(*(v16 + 88));
      }

      *(v16 + 88) = 0;
    }

    *v16 = *(v16 + 24);
    *(v16 + 8) = 0;
    *(v16 + 16) &= ~0x20u;
    memset((*(v16 + 104) + 80), 0, 0x80uLL);
    return 0;
  }
}

int fseeko(FILE *__stream, off_t a2, int __whence)
{
  v4 = *__error();
  pthread_once(&__sdidinit, __sinit);
  flockfile(__stream);
  v5 = _fseeko(__stream, a2, __whence, 0);
  funlockfile(__stream);
  if (!v5)
  {
    *__error() = v4;
  }

  return v5;
}

off_t ftello(FILE *__stream)
{
  v4 = __stream;
  v3 = 0;
  flockfile(__stream);
  v2 = _ftello(v4, &v3);
  funlockfile(v4);
  if (v2)
  {
    return -1;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return v3;
  }

  *__error() = 29;
  return -1;
}

uint64_t _ftello(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 72))
  {
    if (__ftell_conformance_fix)
    {
      if ((*(a1 + 16) & 4) == 0 && (*(a1 + 16) & 8) != 0 && *a1 && (*a1 - *(a1 + 24)) > 0 && (*(a1 + 16) & 0x100) != 0)
      {
        v5 = _sseek(a1, 0, 2u);
        if (v5 == -1)
        {
          return 1;
        }
      }

      else if ((*(a1 + 16) & 0x1000) != 0)
      {
        v5 = *(a1 + 144);
      }

      else
      {
        v5 = _sseek(a1, 0, 1u);
        if (v5 == -1)
        {
          return 1;
        }
      }
    }

    else
    {
      if (__sflush(a1))
      {
        return 1;
      }

      if ((*(a1 + 16) & 0x1000) != 0)
      {
        v5 = *(a1 + 144);
      }

      else
      {
        v5 = _sseek(a1, 0, 1u);
        if (v5 == -1)
        {
          return 1;
        }
      }
    }

    if ((*(a1 + 16) & 4) != 0)
    {
      if (*(a1 + 88))
      {
        v3 = *(a1 + 112);
      }

      else
      {
        v3 = *(a1 + 8);
      }

      v5 -= v3;
      if ((v5 & 0x8000000000000000) != 0)
      {
        *(a1 + 16) |= 0x40u;
        *__error() = 5;
        return 1;
      }

      if (*(a1 + 88))
      {
        v5 -= *(a1 + 8);
      }
    }

    else if ((*(a1 + 16) & 8) != 0)
    {
      if (*a1)
      {
        v4 = *a1 - *(a1 + 24);
        if ((__ftell_conformance_fix & 1) == 0 || v4)
        {
          if (v5 > 0x7FFFFFFFFFFFFFFFLL - v4)
          {
            *__error() = 84;
            return 1;
          }

          v5 += v4;
        }
      }
    }

    *a2 = v5;
    return 0;
  }

  *__error() = 29;
  return 1;
}

FILE *__cdecl funopen(const void *a1, int (__cdecl *a2)(void *, char *, int), int (__cdecl *a3)(void *, const char *, int), fpos_t (__cdecl *a4)(void *, fpos_t, int), int (__cdecl *a5)(void *))
{
  if (a2)
  {
    if (a3)
    {
      v6 = 16;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    if (!a3)
    {
      *__error() = 22;
      return 0;
    }

    v6 = 8;
  }

  v7 = __sfp(0);
  if (!v7)
  {
    return 0;
  }

  v7->_flags = v6;
  v7->_file = -1;
  v7->_cookie = a1;
  v7->_read = a2;
  v7->_write = a3;
  v7->_seek = a4;
  v7->_close = a5;
  return v7;
}

uint64_t __sfvwrite(uint64_t a1, _DWORD *a2)
{
  if (a2[3])
  {
    if ((*(a1 + 16) & 8) == 0 || (v10 = 0, !*(a1 + 24)) && (v10 = 0, (*(a1 + 16) & 0x200) == 0))
    {
      v10 = __swsetup(a1) != 0;
    }

    if (v10)
    {
      return -1;
    }

    else
    {
      v20 = **a2;
      v21 = *(*a2 + 8);
      v19 = *a2 + 16;
      if ((*(a1 + 16) & 2) != 0)
      {
        while (1)
        {
          while (!v21)
          {
            v20 = *v19;
            v21 = *(v19 + 8);
            v19 += 16;
          }

          v2 = v21 >= 0x7FFFFFFF ? _swrite(a1, v20, 0x7FFFFFFFu) : _swrite(a1, v20, v21);
          if (v2 <= 0)
          {
            break;
          }

          v20 += v2;
          v21 -= v2;
          v3 = a2[3] - v2;
          a2[3] = v3;
          if (!v3)
          {
            return 0;
          }
        }

LABEL_69:
        *(a1 + 16) |= 0x40u;
        return -1;
      }

      else
      {
        if ((*(a1 + 16) & 1) == 0)
        {
          while (1)
          {
            while (!v21)
            {
              v20 = *v19;
              v21 = *(v19 + 8);
              v19 += 16;
            }

            if ((*(a1 + 16) & 0x4200) == 0x4200 && *(a1 + 12) < v21)
            {
              v11 = *a1 - *(a1 + 24);
              *(a1 + 12) = v21 + 128;
              *(a1 + 32) = v11 + v21 + 128;
              *(a1 + 24) = reallocf(*(a1 + 24), *(a1 + 32) + 1);
              if (!*(a1 + 24))
              {
                goto LABEL_69;
              }

              *a1 = *(a1 + 24) + v11;
            }

            v15 = *(a1 + 12);
            if ((*(a1 + 16) & 0x200) != 0)
            {
              if (v21 < v15)
              {
                v15 = v21;
              }

              if (v15 > 0)
              {
                memcpy(*a1, v20, v15);
                *(a1 + 12) -= v15;
                *a1 += v15;
              }

              v15 = v21;
            }

            else if (*a1 <= *(a1 + 24) || v21 <= v15)
            {
              v16 = *(a1 + 32);
              if (v21 >= v16)
              {
                if (v16)
                {
                  if (v16 * (v21 / v16) >= 0x7FFFFFFF)
                  {
                    LODWORD(v9) = 0x7FFFFFFF;
                  }

                  else
                  {
                    v9 = v16 * (v21 / v16);
                  }

                  v16 = v9;
                }

                v15 = _swrite(a1, v20, v16);
                if (v15 <= 0)
                {
                  goto LABEL_69;
                }
              }

              else
              {
                v15 = v21;
                memcpy(*a1, v20, v21);
                *(a1 + 12) -= v21;
                *a1 += v21;
              }
            }

            else
            {
              memcpy(*a1, v20, v15);
              *a1 += v15;
              if (__fflush(a1))
              {
                goto LABEL_69;
              }
            }

            v20 += v15;
            v21 -= v15;
            v4 = a2[3] - v15;
            a2[3] = v4;
            if (!v4)
            {
              return 0;
            }
          }
        }

        v13 = 0;
        v12 = 0;
        do
        {
          while (!v21)
          {
            v13 = 0;
            v20 = *v19;
            v21 = *(v19 + 8);
            v19 += 16;
          }

          if (!v13)
          {
            v14 = memchr(v20, 10, v21);
            if (v14)
            {
              v8 = v14 + 1 - v20;
            }

            else
            {
              v8 = v21 + 1;
            }

            v12 = v8;
            v13 = 1;
          }

          if (v21 >= v12)
          {
            v7 = v12;
          }

          else
          {
            v7 = v21;
          }

          v17 = *(a1 + 12) + *(a1 + 32);
          if (*a1 <= *(a1 + 24) || v7 <= v17)
          {
            v18 = *(a1 + 32);
            if (v7 < v18)
            {
              v17 = v7;
              memcpy(*a1, v20, v7);
              *(a1 + 12) -= v7;
              *a1 += v7;
            }

            else
            {
              v17 = _swrite(a1, v20, v18);
              if (v17 <= 0)
              {
                goto LABEL_69;
              }
            }
          }

          else
          {
            memcpy(*a1, v20, v17);
            *a1 += v17;
            if (__fflush(a1))
            {
              goto LABEL_69;
            }
          }

          v12 -= v17;
          if (!v12)
          {
            if (__fflush(a1))
            {
              goto LABEL_69;
            }

            v13 = 0;
          }

          v20 += v17;
          v21 -= v17;
          v5 = a2[3] - v17;
          a2[3] = v5;
        }

        while (v5);
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t _fwalk(uint64_t (*a1)(uint64_t *))
{
  v3 = 0;
  for (i = &__sglue; i; i = *i)
  {
    v5 = i[2];
    v4 = *(i + 2);
    while ((--v4 & 0x80000000) == 0)
    {
      if (*(v5 + 8))
      {
        if ((v5[2] & 0x8000) == 0)
        {
          v3 |= a1(v5);
        }
      }

      v5 += 19;
    }
  }

  return v3;
}

int fwide(FILE *a1, int a2)
{
  flockfile(a1);
  if (a2 && !((32 * *(a1->_extra + 72)) >> 5))
  {
    if (a2 > 0)
    {
      v2 = 1;
    }

    else
    {
      v2 = -1;
    }

    *(a1->_extra + 72) = *(a1->_extra + 72) & 0xF8 | v2 & 7;
  }

  v4 = (32 * *(a1->_extra + 72)) >> 5;
  funlockfile(a1);
  return v4;
}

int fwprintf(FILE *a1, const __int32 *a2, ...)
{
  va_start(va, a2);
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vfwprintf_l(a1, v3, a2, va);
  }

  else
  {
    return vfwprintf_l(a1, __global_locale, a2, va);
  }
}

size_t fwrite(const void *a1, size_t a2, size_t a3, FILE *a4)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  i = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  v11 = a3 * a2;
  if (!(a3 * a2))
  {
    return 0;
  }

  v8 = &v6;
  LODWORD(v9) = 1;
  libc_hooks_will_write(v12, 152);
  flockfile(v12);
  if (!((32 * *(v12->_extra + 72)) >> 5))
  {
    *(v12->_extra + 72) = *(v12->_extra + 72) & 0xF8 | 7;
  }

  for (i = v11; i; i -= v5)
  {
    if (i <= 0x7FFFFFFF)
    {
      v5 = i;
    }

    else
    {
      v5 = 2147482624;
    }

    v6 = v15;
    v7 = v5;
    HIDWORD(v9) = v5;
    libc_hooks_will_read(v15, v5);
    if (__sfvwrite(v12, &v8))
    {
      v13 = (v11 - i + v5 - SHIDWORD(v9)) / v14;
      break;
    }

    v15 += v5;
  }

  funlockfile(v12);
  return v13;
}

int fwscanf(FILE *a1, const __int32 *a2, ...)
{
  va_start(va, a2);
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vfwscanf_l(a1, v3, a2, va);
  }

  else
  {
    return vfwscanf_l(a1, __global_locale, a2, va);
  }
}

int getc(FILE *a1)
{
  flockfile(a1);
  v1 = a1->_r - 1;
  a1->_r = v1;
  if (v1 < 0)
  {
    v4 = __srget(a1);
  }

  else
  {
    v2 = a1->_p++;
    v4 = *v2;
  }

  funlockfile(a1);
  return v4;
}

int getc_unlocked(FILE *a1)
{
  v1 = a1->_r - 1;
  a1->_r = v1;
  if (v1 < 0)
  {
    return __srget(a1);
  }

  v2 = a1->_p++;
  return *v2;
}

int getchar(void)
{
  flockfile(__stdinp);
  v0 = __stdinp->_r - 1;
  __stdinp->_r = v0;
  if (v0 < 0)
  {
    v3 = __srget(__stdinp);
  }

  else
  {
    v1 = __stdinp->_p++;
    v3 = *v1;
  }

  funlockfile(__stdinp);
  return v3;
}

int getchar_unlocked(void)
{
  v0 = *(&dword_8 + __stdinp) - 1;
  *(&dword_8 + __stdinp) = v0;
  if (v0 < 0)
  {
    return __srget(__stdinp);
  }

  v1 = __stdinp->_p++;
  return *v1;
}

ssize_t getdelim(char **__linep, size_t *__linecapp, int __delimiter, FILE *__stream)
{
  v10 = __linep;
  v9 = __linecapp;
  v8 = __delimiter;
  v7 = __stream;
  v6 = 0;
  v5 = 0;
  flockfile(__stream);
  if (!((32 * *(v7->_extra + 72)) >> 5))
  {
    *(v7->_extra + 72) = *(v7->_extra + 72) & 0xF8 | 7;
  }

  if (!v10 || !v9)
  {
    *__error() = 22;
LABEL_24:
    v7->_flags |= 0x40u;
    funlockfile(v7);
    return -1;
  }

  if (!*v10)
  {
    *v9 = 0;
  }

  if (v7->_r <= 0 && __srefill(v7))
  {
    if ((v7->_flags & 0x40) != 0 || expandtofit(v10, 1uLL, v9))
    {
      goto LABEL_24;
    }

    funlockfile(v7);
    **v10 = 0;
    return -1;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = memchr(v7->_p, v8, v7->_r);
      if (v6)
      {
        break;
      }

      if (sappend(v10, &v5, v9, v7->_p, v7->_r))
      {
        goto LABEL_24;
      }

      if (__srefill(v7))
      {
        if ((v7->_flags & 0x40) != 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    if (sappend(v10, &v5, v9, v7->_p, ++v6 - v7->_p))
    {
      goto LABEL_24;
    }

    v7->_r -= v6 - LODWORD(v7->_p);
    v7->_p = v6;
LABEL_23:
    *(*v10 + v5) = 0;
    funlockfile(v7);
    return v5;
  }
}

uint64_t expandtofit(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  if (a2 <= 0x8000000000000000)
  {
    if (a2 > *a3)
    {
      if (a2 == 0x8000000000000000)
      {
        v5 = 0x8000000000000000;
      }

      else
      {
        v5 = p2roundup(a2);
      }

      v3 = *a1;
      v6 = malloc_type_realloc();
      if (!v6)
      {
        return -1;
      }

      *a3 = v5;
      *a1 = v6;
    }

    return 0;
  }

  *__error() = 84;
  return -1;
}

uint64_t sappend(uint64_t *a1, void *a2, uint64_t *a3, const void *a4, size_t a5)
{
  v5 = __CFADD__(a5, *a2);
  v7 = a5 + *a2;
  if (v5 || ((((v7 == -1) << 63) >> 63) | (v7 == -1)) != 0)
  {
    *__error() = 84;
    return -1;
  }

  else if (expandtofit(a1, v7 + 1, a3))
  {
    return -1;
  }

  else
  {
    memcpy((*a1 + *a2), a4, a5);
    *a2 += a5;
    return 0;
  }
}

uint64_t p2roundup(uint64_t a1)
{
  v2 = a1;
  if (((a1 - 1) & a1) != 0)
  {
    v3 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
    return (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
  }

  return v2;
}

char *__cdecl gets(char *a1)
{
  flockfile(__stdinp);
  if (!((32 * *(&stru_20.fileoff + *&stru_68.sectname[__stdinp])) >> 5))
  {
    *(&stru_20.fileoff + *&stru_68.sectname[__stdinp]) = *(&stru_20.fileoff + *&stru_68.sectname[__stdinp]) & 0xF8 | 7;
  }

  if (!gets_warned)
  {
    write_NOCANCEL();
    gets_warned = 1;
  }

  for (i = a1; ; ++i)
  {
    v1 = *(&dword_8 + __stdinp) - 1;
    *(&dword_8 + __stdinp) = v1;
    if (v1 < 0)
    {
      v5 = __srget(__stdinp);
    }

    else
    {
      v2 = __stdinp->_p++;
      v5 = *v2;
    }

    if (v5 == 10)
    {
      break;
    }

    if (v5 == -1)
    {
      if (i == a1)
      {
        funlockfile(__stdinp);
        return 0;
      }

      break;
    }

    v3 = i;
    *v3 = v5;
  }

  *i = 0;
  funlockfile(__stdinp);
  return a1;
}

int getw(FILE *a1)
{
  v4 = a1;
  v3 = 0;
  if (fread(&v3, 4uLL, 1uLL, a1) == 1)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

wint_t getwc(FILE *a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return fgetwc_l(a1, v2);
  }

  else
  {
    return fgetwc_l(a1, __global_locale);
  }
}

wint_t getwchar(void)
{
  v1 = __stdinp;
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return fgetwc_l(v1, v2);
  }

  else
  {
    return fgetwc_l(v1, __global_locale);
  }
}

uint64_t __smakebuf(uint64_t result)
{
  v9 = result;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  if ((*(result + 16) & 2) != 0)
  {
    v1 = v9 + 119;
    *v9 = v9 + 119;
    *(v9 + 24) = v1;
    *(v9 + 32) = 1;
    return result;
  }

  v7 = __swhatbuf(v9, &v6, &v5);
  if ((*(v9 + 18) & 0x80000000) == 0)
  {
    result = __senvbuf(v9, &v6, &v5);
    v7 |= result;
    if ((v7 & 2) != 0)
    {
      *(v9 + 16) |= 2u;
      v2 = v9 + 119;
      *v9 = v9 + 119;
      *(v9 + 24) = v2;
      *(v9 + 32) = 1;
      return result;
    }

    if (!v6)
    {
      v6 = 1024;
    }
  }

  if (v5)
  {
    if (isatty(*(v9 + 18)))
    {
      v7 |= 1u;
      if (v6 > 0x1000)
      {
        v6 = 4096;
        *(v9 + 136) = 4096;
      }
    }
  }

  result = malloc_type_malloc();
  v8 = result;
  if (result)
  {
    __cleanup = 1;
    v7 |= 0x80u;
    v4 = v8;
    *v9 = v8;
    *(v9 + 24) = v4;
    *(v9 + 32) = v6;
    *(v9 + 16) |= v7;
  }

  else
  {
    *(v9 + 16) |= 2u;
    v3 = v9 + 119;
    *v9 = v9 + 119;
    *(v9 + 24) = v3;
    *(v9 + 32) = 1;
  }

  return result;
}

uint64_t __swhatbuf(uint64_t a1, void *a2, _DWORD *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  memset(&__b, 0, sizeof(__b));
  if (*(v10 + 18) < 0 || fstat(*(v10 + 18), &__b) < 0)
  {
    *v8 = 0;
    *v9 = 1024;
    return 2048;
  }

  else
  {
    *v8 = (__b.st_mode & 0xF000) == 0x2000;
    if (__b.st_blksize > 0)
    {
      if (__b.st_blksize <= 0x1000000)
      {
        st_blksize = __b.st_blksize;
      }

      else
      {
        st_blksize = 0x1000000;
      }

      *v9 = st_blksize;
      *(v10 + 136) = st_blksize;
      v5 = 0;
      if ((__b.st_mode & 0xF000) == 0x8000)
      {
        v5 = *(v10 + 72) == __sseek;
      }

      if (v5)
      {
        return 1024;
      }

      else
      {
        return 2048;
      }
    }

    else
    {
      *v9 = 1024;
      return 2048;
    }
  }
}

uint64_t __senvbuf(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v8 = 0;
  v7 = 0;
  v9 = __getevp(*(a1 + 18));
  if (!v9 || !*v9)
  {
    return 0;
  }

  v6 = *v9;
  switch(v6)
  {
    case '0':
      goto LABEL_12;
    case 'B':
    case 'F':
      goto LABEL_14;
    case 'L':
LABEL_13:
      ++v9;
      v8 = 1;
      break;
    case 'U':
LABEL_12:
      ++v9;
      v8 = 2;
      break;
    case 'f':
LABEL_14:
      ++v9;
      break;
    case 'l':
      goto LABEL_13;
    case 'u':
      goto LABEL_12;
  }

  if (v8 == 2 && *v9)
  {
    return 0;
  }

  while (isdigit(*v9))
  {
    v7 = 10 * v7 + *v9++ - 48;
  }

  v5 = *v9;
  if (!*v9 || v5 == 66)
  {
    goto LABEL_28;
  }

  if (v5 == 75)
  {
    goto LABEL_27;
  }

  if (v5 != 77)
  {
    if (v5 != 107)
    {
      return 0;
    }

LABEL_27:
    ++v9;
    v7 <<= 10;
    goto LABEL_28;
  }

  ++v9;
  v7 <<= 20;
LABEL_28:
  if (*v9 == 66)
  {
    ++v9;
  }

  if (*v9)
  {
    return 0;
  }

  else
  {
    *a3 = 0;
    if (v7 <= 0x1000000)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0x1000000;
    }

    *a2 = v4;
    return v8;
  }
}

char *__getevp(int a1)
{
  if (__getevp_predicate != -1)
  {
    _os_once();
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (__stdout_evp)
      {
        return &__stdout_evp;
      }
    }

    else if (a1 == 2 && __stderr_evp)
    {
      return &__stderr_evp;
    }
  }

  else if (__stdin_evp)
  {
    return &__stdin_evp;
  }

  if (__fallback_evp)
  {
    return &__fallback_evp;
  }

  else
  {
    return 0;
  }
}

char *__evpinit()
{
  __loadevp("STDBUF", &__fallback_evp);
  __loadevp("STDBUF0", &__stdin_evp);
  __loadevp("STDBUF1", &__stdout_evp);
  __loadevp("STDBUF2", &__stderr_evp);
  __loadevp("_STDBUF_I", &__stdin_evp);
  __loadevp("_STDBUF_O", &__stdout_evp);
  return __loadevp("_STDBUF_E", &__stderr_evp);
}

char *__loadevp(const char *a1, char *a2)
{
  result = getenv(a1);
  if (result)
  {
    return strlcpy(a2, result, 0x10uLL);
  }

  return result;
}

int mkostemps(char *path, int slen, int oflags)
{
  v8 = path;
  v7 = slen;
  v6 = oflags;
  v5 = 0;
  if ((oflags & 0xFEFFFFC7) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else if (find_temp_path(-2, v8, v7, 1, _mkostemps_action, &v6, &v5))
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

uint64_t find_temp_path(int a1, char *a2, int a3, char a4, uint64_t (*a5)(void, char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  __src = 0;
  i = 0;
  __s = 0;
  j = 0;
  v15 = 0;
  memset(&__b, 0, sizeof(__b));
  if (v24 < 0)
  {
    goto LABEL_2;
  }

    ;
  }

  if (i - v25 >= 1024)
  {
    *__error() = 63;
    return 0;
  }

  i -= v24;
  __s = i;
  if (--i < v25 || strchr(__s, 47))
  {
LABEL_2:
    *__error() = 22;
    return 0;
  }

  else
  {
    while (1)
    {
      v12 = 0;
      if (i >= v25)
      {
        v12 = *i == 88;
      }

      if (!v12)
      {
        break;
      }

      v7 = padchar[arc4random_uniform(0x3Eu)];
      v8 = i--;
      *v8 = v7;
    }

    __src = i + 1;
    memcpy(__dst, i + 1, __s - (i + 1));
    if (v23)
    {
      while (i > v25)
      {
        if (*i == 47)
        {
          *i = 0;
          v13 = fstatat(v26, v25, &__b, 0);
          *i = 47;
          if (v13)
          {
            return 0;
          }

          if ((__b.st_mode & 0xF000) != 0x4000)
          {
            *__error() = 20;
            return 0;
          }

          break;
        }

        --i;
      }
    }

LABEL_24:
    v11 = v22(v26, v25, v21, v20);
    if (v11)
    {
      if (v11 == 2)
      {
        return 0;
      }

      else
      {
        i = __src;
        for (j = __dst; ; ++j)
        {
          if (i == __s)
          {
            *__error() = 17;
            return 0;
          }

          v15 = strchr("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", *i);
          if (!v15)
          {
            break;
          }

          if (*++v15)
          {
            v10 = *v15;
          }

          else
          {
            v10 = padchar[0];
          }

          *i = v10;
          if (*i != *j)
          {
            goto LABEL_24;
          }

          ++i;
        }

        *__error() = 5;
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }
}

uint64_t _mkostemps_action(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  if (a3)
  {
    v6 = *a3;
  }

  v7 = openat_NOCANCEL();
  if (v7 < 0)
  {
    if (*__error() == 17)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    *a4 = v7;
    return 0;
  }
}

int mkostempsat_np(int dfd, char *path, int slen, int oflags)
{
  v10 = dfd;
  v9 = path;
  v8 = slen;
  v7 = oflags;
  v6 = 0;
  if ((oflags & 0xFEFFFFC7) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else if (find_temp_path(v10, v9, v8, 1, _mkostemps_action, &v7, &v6))
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

int mkstemps(char *a1, int a2)
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = 0;
  if (find_temp_path(-2, a1, a2, 1, _mkostemps_action, 0, v4))
  {
    return v4[0];
  }

  else
  {
    return -1;
  }
}

int mkstempsat_np(int dfd, char *path, int slen)
{
  v7 = dfd;
  v6 = path;
  v5[1] = slen;
  v5[0] = 0;
  if (find_temp_path(dfd, path, slen, 1, _mkostemps_action, 0, v5))
  {
    return v5[0];
  }

  else
  {
    return -1;
  }
}

int mkostemp(char *path, int oflags)
{
  v6 = path;
  v5 = oflags;
  v4 = 0;
  if ((oflags & 0xFEFFFFC7) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else if (find_temp_path(-2, v6, 0, 1, _mkostemps_action, &v5, &v4))
  {
    return v4;
  }

  else
  {
    return -1;
  }
}

int mkstemp(char *a1)
{
  v4 = a1;
  v3 = 0;
  if (find_temp_path(-2, a1, 0, 1, _mkostemps_action, 0, &v3))
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

char *__cdecl mkdtemp(char *a1)
{
  if (find_temp_path(-2, a1, 0, 1, _mkdtemp_action, 0, 0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t _mkdtemp_action(int a1, const char *a2)
{
  if (mkdirat(a1, a2, 0x1C0u))
  {
    if (*__error() == 17)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 0;
  }
}

char *__cdecl mkdtempat_np(int dfd, char *path)
{
  if (find_temp_path(dfd, path, 0, 1, _mkdtemp_action, 0, 0))
  {
    return path;
  }

  else
  {
    return 0;
  }
}

char *_mktemp(char *a1)
{
  if (find_temp_path(-2, a1, 0, 0, _mktemp_action, 0, 0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t _mktemp_action(int a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  memset(&__b, 0, sizeof(__b));
  if (fstatat(v10, v9, &__b, 32))
  {
    if (*__error() == 2)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 1;
  }
}

int mkstemp_dprotected_np(char *path, int dpclass, int dpflags)
{
  v6 = path;
  v5[2] = dpclass;
  v5[1] = dpflags;
  v5[0] = 0;
  v7[0] = dpclass;
  v7[1] = dpflags;
  if (find_temp_path(-2, path, 0, 1, _mkstemp_dprotected_np_action, v7, v5))
  {
    return v5[0];
  }

  else
  {
    return -1;
  }
}

uint64_t _mkstemp_dprotected_np_action(int a1, const char *a2, int *a3, int *a4)
{
  if (a1 != -2)
  {
    __assert_rtn("_mkstemp_dprotected_np_action", "mktemp.c", 321, "dfd == AT_FDCWD");
  }

  v6 = open_dprotected_np(a2, 2562, *a3, a3[1], 384);
  if (v6 < 0)
  {
    if (*__error() == 17)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    *a4 = v6;
    return 0;
  }
}

int rpmatch(const char *a1)
{
  v7 = a1;
  memset(&v6, 0, sizeof(v6));
  memset(&v5, 0, sizeof(v5));
  v1 = nl_langinfo(52);
  if (regcomp(&v6, v1, 5))
  {
    return -1;
  }

  v2 = nl_langinfo(53);
  if (regcomp(&v5, v2, 5))
  {
    regfree(&v6);
    return -1;
  }

  else
  {
    if (regexec(&v6, v7, 0, 0, 0))
    {
      if (regexec(&v5, v7, 0, 0, 0))
      {
        v4 = -1;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 1;
    }

    regfree(&v6);
    regfree(&v5);
    return v4;
  }
}

BOOL __find_arguments(char *a1, _DWORD *a2, uint64_t *a3)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  memset(__b, 0, sizeof(__b));
  v22 = v25;
  inittypes(__b);
  v19 = 0;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v21 = *v22;
      v15 = 0;
      if (v21)
      {
        v15 = v21 != 37;
      }

      if (!v15)
      {
        break;
      }

      ++v22;
    }

    if (!v21)
    {
      break;
    }

    ++v22;
    v18 = 0;
    v17 = 0;
    while (2)
    {
      v3 = v22++;
      v21 = *v3;
LABEL_9:
      switch(v21)
      {
        case ' ':
        case '#':
        case '\'':
        case '+':
        case '-':
        case '0':
          continue;
        case '*':
          v19 = addaster(__b, &v22);
          if (!v19)
          {
            continue;
          }

          goto LABEL_99;
        case '.':
          v4 = v22++;
          v21 = *v4;
          if (v21 != 42)
          {
            while ((v21 - 48) <= 9)
            {
              v5 = v22++;
              v21 = *v5;
            }

            goto LABEL_9;
          }

          v19 = addaster(__b, &v22);
          if (v19)
          {
            goto LABEL_99;
          }

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
          v20 = 0;
          do
          {
            v20 = 10 * v20 + v21 - 48;
            v6 = v22++;
            v21 = *v6;
          }

          while ((v21 - 48) <= 9);
          if (v21 == 36)
          {
            LODWORD(__b[6]) = v20;
            continue;
          }

          v17 = v20;
          goto LABEL_9;
        case 'A':
        case 'E':
        case 'F':
        case 'G':
        case 'a':
        case 'e':
        case 'f':
        case 'g':
          if ((v18 & 0x4000) != 0)
          {
            v9 = addtype(__b, 26);
          }

          else
          {
            if ((v18 & 8) != 0)
            {
              v10 = 23;
            }

            else
            {
              v10 = 22;
            }

            v9 = addtype(__b, v10);
          }

          v19 = v9;
          if (!v9)
          {
            goto LABEL_2;
          }

          goto LABEL_99;
        case 'C':
          v18 |= 0x10u;
          goto LABEL_35;
        case 'D':
          v18 |= 0x10u;
          goto LABEL_44;
        case 'L':
          v18 |= 8u;
          continue;
        case 'O':
          v18 |= 0x10u;
          goto LABEL_75;
        case 'S':
          v18 |= 0x10u;
          goto LABEL_86;
        case 'U':
          v18 |= 0x10u;
          goto LABEL_92;
        case 'X':
        case 'u':
        case 'x':
LABEL_92:
          if ((v18 & 0x4000) != 0)
          {
            v19 = addtype(__b, 26);
            if (v19)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v19 = adduarg(__b, v18);
            if (v19)
            {
              goto LABEL_99;
            }
          }

          break;
        case 'c':
LABEL_35:
          if ((v18 & 0x10) != 0)
          {
            v7 = addtype(__b, 24);
          }

          else
          {
            if ((v18 & 0x4000) != 0)
            {
              v8 = 26;
            }

            else
            {
              v8 = 2;
            }

            v7 = addtype(__b, v8);
          }

          v19 = v7;
          if (!v7)
          {
            goto LABEL_2;
          }

          goto LABEL_99;
        case 'd':
        case 'i':
LABEL_44:
          if ((v18 & 0x4000) != 0)
          {
            v19 = addtype(__b, 26);
            if (v19)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v19 = addsarg(__b, v18);
            if (v19)
            {
              goto LABEL_99;
            }
          }

          goto LABEL_2;
        case 'h':
          if ((v18 & 0x40) != 0)
          {
            v18 &= ~0x40u;
            v18 |= 0x2000u;
          }

          else
          {
            v18 |= 0x40u;
          }

          continue;
        case 'j':
          v18 |= 0x1000u;
          continue;
        case 'l':
          if ((v18 & 0x10) != 0)
          {
            v18 &= ~0x10u;
            v18 |= 0x20u;
          }

          else
          {
            v18 |= 0x10u;
          }

          continue;
        case 'n':
          if ((v18 & 0x1000) != 0)
          {
            v19 = addtype(__b, 18);
          }

          else if ((v18 & 0x800) != 0)
          {
            v19 = addtype(__b, 12);
          }

          else if ((v18 & 0x400) != 0)
          {
            v19 = addtype(__b, 15);
          }

          else if ((v18 & 0x20) != 0)
          {
            v19 = addtype(__b, 10);
          }

          else if ((v18 & 0x10) != 0)
          {
            v19 = addtype(__b, 7);
          }

          else if ((v18 & 0x40) != 0)
          {
            v19 = addtype(__b, 1);
          }

          else if ((v18 & 0x2000) != 0)
          {
            v19 = addtype(__b, 21);
          }

          else
          {
            v19 = addtype(__b, 4);
          }

          if (!v19)
          {
            goto LABEL_2;
          }

          goto LABEL_99;
        case 'o':
LABEL_75:
          if ((v18 & 0x4000) != 0)
          {
            v19 = addtype(__b, 26);
            if (v19)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v19 = adduarg(__b, v18);
            if (v19)
            {
              goto LABEL_99;
            }
          }

          goto LABEL_2;
        case 'p':
          if ((v18 & 0x4000) != 0)
          {
            v11 = 26;
          }

          else
          {
            v11 = 19;
          }

          v19 = addtype(__b, v11);
          if (!v19)
          {
            goto LABEL_2;
          }

          goto LABEL_99;
        case 'q':
          v18 |= 0x20u;
          continue;
        case 's':
LABEL_86:
          if ((v18 & 0x10) != 0)
          {
            v12 = 25;
          }

          else
          {
            v12 = 20;
          }

          v19 = addtype(__b, v12);
          if (!v19)
          {
            goto LABEL_2;
          }

          goto LABEL_99;
        case 't':
          v18 |= 0x800u;
          continue;
        case 'z':
          v18 |= 0x400u;
          continue;
        default:
          if (!v21)
          {
            goto LABEL_98;
          }

          goto LABEL_2;
      }

      break;
    }
  }

LABEL_98:
  build_arg_table(__b, v24, v23);
LABEL_99:
  freetypes(__b);
  v14 = 1;
  if (!v19)
  {
    return *v23 == 0;
  }

  return v14;
}

uint64_t inittypes(uint64_t result)
{
  *result = result + 8;
  *(result + 40) = 8;
  *(result + 44) = 0;
  *(result + 48) = 1;
  for (i = 0; i < 8; ++i)
  {
    *(*result + 4 * i) = 0;
  }

  return result;
}

uint64_t addaster(_DWORD *a1, _BYTE **a2)
{
  v4 = 0;
  for (i = *a2; (*i - 48) <= 9; ++i)
  {
    v4 = 10 * v4 + *i - 48;
  }

  if (*i != 36)
  {
    if (addtype(a1, 2))
    {
      return -1;
    }

    return 0;
  }

  v3 = a1[12];
  a1[12] = v4;
  if (!addtype(a1, 2))
  {
    a1[12] = v3;
    *a2 = i + 1;
    return 0;
  }

  return -1;
}

uint64_t addtype(_DWORD *a1, int a2)
{
  if (_ensurespace(a1))
  {
    return -1;
  }

  else
  {
    v2 = *a1;
    v3 = a1[12]++;
    *(v2 + 4 * v3) = a2;
    return 0;
  }
}

uint64_t addsarg(_DWORD *a1, __int16 a2)
{
  if (_ensurespace(a1))
  {
    return -1;
  }

  else
  {
    if ((a2 & 0x1000) != 0)
    {
      v2 = *a1;
      v3 = a1[12]++;
      *(v2 + 4 * v3) = 16;
    }

    else if ((a2 & 0x400) != 0)
    {
      v4 = *a1;
      v5 = a1[12]++;
      *(v4 + 4 * v5) = 13;
    }

    else if ((a2 & 0x800) != 0)
    {
      v6 = *a1;
      v7 = a1[12]++;
      *(v6 + 4 * v7) = 11;
    }

    else if ((a2 & 0x20) != 0)
    {
      v8 = *a1;
      v9 = a1[12]++;
      *(v8 + 4 * v9) = 8;
    }

    else
    {
      v10 = *a1;
      v11 = a1[12]++;
      if ((a2 & 0x10) != 0)
      {
        *(v10 + 4 * v11) = 5;
      }

      else
      {
        *(v10 + 4 * v11) = 2;
      }
    }

    return 0;
  }
}

uint64_t adduarg(_DWORD *a1, __int16 a2)
{
  if (_ensurespace(a1))
  {
    return -1;
  }

  else
  {
    if ((a2 & 0x1000) != 0)
    {
      v2 = *a1;
      v3 = a1[12]++;
      *(v2 + 4 * v3) = 17;
    }

    else if ((a2 & 0x400) != 0)
    {
      v4 = *a1;
      v5 = a1[12]++;
      *(v4 + 4 * v5) = 14;
    }

    else if ((a2 & 0x800) != 0)
    {
      v6 = *a1;
      v7 = a1[12]++;
      *(v6 + 4 * v7) = 14;
    }

    else if ((a2 & 0x20) != 0)
    {
      v8 = *a1;
      v9 = a1[12]++;
      *(v8 + 4 * v9) = 9;
    }

    else
    {
      v10 = *a1;
      v11 = a1[12]++;
      if ((a2 & 0x10) != 0)
      {
        *(v10 + 4 * v11) = 6;
      }

      else
      {
        *(v10 + 4 * v11) = 3;
      }
    }

    return 0;
  }
}

uint64_t build_arg_table(uint64_t result, _DWORD *a2, uint64_t *a3)
{
  v34 = result;
  if (*(result + 44) < 8 || (v3 = 16 * *(result + 44), result = malloc_type_malloc(), (*a3 = result) != 0))
  {
    **a3 = 0;
    for (i = 1; i <= *(v34 + 44); ++i)
    {
      result = *(*v34 + 4 * i);
      switch(result)
      {
        case 0:
          v4 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v4;
          break;
        case 1:
          v6 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v6;
          break;
        case 2:
          v7 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v7;
          break;
        case 3:
          v8 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v8;
          break;
        case 4:
          v9 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v9;
          break;
        case 5:
          v10 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v10;
          break;
        case 6:
          v11 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v11;
          break;
        case 7:
          v12 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v12;
          break;
        case 8:
          v13 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v13;
          break;
        case 9:
          v14 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v14;
          break;
        case 10:
          v15 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v15;
          break;
        case 11:
          v16 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v16;
          break;
        case 12:
          v17 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v17;
          break;
        case 13:
          v19 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v19;
          break;
        case 14:
          v18 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v18;
          break;
        case 15:
          v20 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v20;
          break;
        case 16:
          v21 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v21;
          break;
        case 17:
          v22 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v22;
          break;
        case 18:
          v23 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v23;
          break;
        case 19:
          v28 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v28;
          break;
        case 20:
          v27 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v27;
          break;
        case 21:
          v5 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v5;
          break;
        case 22:
          v24 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v24;
          break;
        case 23:
          v25 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v25;
          break;
        case 24:
          v29 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v29;
          break;
        case 25:
          v30 = a2;
          a2 += 2;
          *(*a3 + 16 * i) = *v30;
          break;
        case 26:
          v26 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF0);
          a2 = v26 + 1;
          *(*a3 + 16 * i) = *v26;
          break;
        default:
          continue;
      }
    }
  }

  return result;
}

void freetypes(void **a1)
{
  if (*a1 != a1 + 1)
  {
    free(*a1);
  }
}

BOOL __find_warguments(int *a1, _DWORD *a2, uint64_t *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  memset(__b, 0, sizeof(__b));
  v19 = v22;
  inittypes(__b);
  v16 = 0;
  while (1)
  {
LABEL_2:
    v18 = *v19;
    v12 = 0;
    if (v18)
    {
      v12 = v18 != 37;
    }

    if (!v12)
    {
      break;
    }

    ++v19;
  }

  if (v18)
  {
    ++v19;
    v15 = 0;
    v14 = 0;
    while (1)
    {
      v3 = v19++;
      v18 = *v3;
LABEL_9:
      switch(v18)
      {
        case ' ':
        case '#':
        case '\'':
        case '+':
        case '-':
        case '0':
          continue;
        case '*':
          v16 = addwaster(__b, &v19);
          if (!v16)
          {
            continue;
          }

          goto LABEL_81;
        case '.':
          v4 = v19++;
          v18 = *v4;
          if (v18 != 42)
          {
            while ((v18 - 48) <= 9)
            {
              v5 = v19++;
              v18 = *v5;
            }

            goto LABEL_9;
          }

          v16 = addwaster(__b, &v19);
          if (v16)
          {
            goto LABEL_81;
          }

          break;
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          v17 = 0;
          do
          {
            v17 = 10 * v17 + v18 - 48;
            v6 = v19++;
            v18 = *v6;
          }

          while ((v18 - 48) <= 9);
          if (v18 == 36)
          {
            LODWORD(__b[6]) = v17;
            continue;
          }

          v14 = v17;
          goto LABEL_9;
        case 'A':
        case 'E':
        case 'F':
        case 'G':
        case 'a':
        case 'e':
        case 'f':
        case 'g':
          if ((v15 & 8) != 0)
          {
            v8 = 23;
          }

          else
          {
            v8 = 22;
          }

          v16 = addtype(__b, v8);
          if (!v16)
          {
            goto LABEL_2;
          }

          goto LABEL_81;
        case 'C':
          v15 |= 0x10u;
          goto LABEL_35;
        case 'D':
          v15 |= 0x10u;
          goto LABEL_41;
        case 'L':
          v15 |= 8u;
          continue;
        case 'O':
          v15 |= 0x10u;
          goto LABEL_66;
        case 'S':
          v15 |= 0x10u;
          goto LABEL_71;
        case 'U':
          v15 |= 0x10u;
          goto LABEL_77;
        case 'X':
        case 'u':
        case 'x':
LABEL_77:
          v16 = adduarg(__b, v15);
          if (!v16)
          {
            goto LABEL_2;
          }

          goto LABEL_81;
        case 'c':
LABEL_35:
          if ((v15 & 0x10) != 0)
          {
            v7 = 24;
          }

          else
          {
            v7 = 2;
          }

          v16 = addtype(__b, v7);
          if (!v16)
          {
            goto LABEL_2;
          }

          goto LABEL_81;
        case 'd':
        case 'i':
LABEL_41:
          v16 = addsarg(__b, v15);
          if (!v16)
          {
            goto LABEL_2;
          }

          goto LABEL_81;
        case 'h':
          if ((v15 & 0x40) != 0)
          {
            v15 &= ~0x40u;
            v15 |= 0x2000u;
          }

          else
          {
            v15 |= 0x40u;
          }

          continue;
        case 'j':
          v15 |= 0x1000u;
          continue;
        case 'l':
          if ((v15 & 0x10) != 0)
          {
            v15 &= ~0x10u;
            v15 |= 0x20u;
          }

          else
          {
            v15 |= 0x10u;
          }

          continue;
        case 'n':
          if ((v15 & 0x1000) != 0)
          {
            v16 = addtype(__b, 18);
          }

          else if ((v15 & 0x800) != 0)
          {
            v16 = addtype(__b, 12);
          }

          else if ((v15 & 0x400) != 0)
          {
            v16 = addtype(__b, 15);
          }

          else if ((v15 & 0x20) != 0)
          {
            v16 = addtype(__b, 10);
          }

          else if ((v15 & 0x10) != 0)
          {
            v16 = addtype(__b, 7);
          }

          else if ((v15 & 0x40) != 0)
          {
            v16 = addtype(__b, 1);
          }

          else if ((v15 & 0x2000) != 0)
          {
            v16 = addtype(__b, 21);
          }

          else
          {
            v16 = addtype(__b, 4);
          }

          if (!v16)
          {
            goto LABEL_2;
          }

          goto LABEL_81;
        case 'o':
LABEL_66:
          v16 = adduarg(__b, v15);
          if (!v16)
          {
            goto LABEL_2;
          }

          goto LABEL_81;
        case 'p':
          v16 = addtype(__b, 19);
          if (!v16)
          {
            goto LABEL_2;
          }

          goto LABEL_81;
        case 'q':
          v15 |= 0x20u;
          continue;
        case 's':
LABEL_71:
          if ((v15 & 0x10) != 0)
          {
            v9 = 25;
          }

          else
          {
            v9 = 20;
          }

          v16 = addtype(__b, v9);
          if (!v16)
          {
            goto LABEL_2;
          }

          goto LABEL_81;
        case 't':
          v15 |= 0x800u;
          continue;
        case 'z':
          v15 |= 0x400u;
          continue;
        default:
          if (!v18)
          {
            goto LABEL_80;
          }

          goto LABEL_2;
      }
    }
  }

LABEL_80:
  build_arg_table(__b, v21, v20);
LABEL_81:
  freetypes(__b);
  v11 = 1;
  if (!v16)
  {
    return *v20 == 0;
  }

  return v11;
}

uint64_t addwaster(_DWORD *a1, _DWORD **a2)
{
  v4 = 0;
  for (i = *a2; (*i - 48) <= 9; ++i)
  {
    v4 = 10 * v4 + *i - 48;
  }

  if (*i != 36)
  {
    if (addtype(a1, 2))
    {
      return -1;
    }

    return 0;
  }

  v3 = a1[12];
  a1[12] = v4;
  if (!addtype(a1, 2))
  {
    a1[12] = v3;
    *a2 = i + 1;
    return 0;
  }

  return -1;
}

uint64_t _ensurespace(_DWORD *a1)
{
  if (a1[12] >= a1[10] && __grow_type_table(a1))
  {
    return -1;
  }

  else
  {
    if (a1[12] > a1[11])
    {
      a1[11] = a1[12];
    }

    return 0;
  }
}

uint64_t __grow_type_table(uint64_t a1)
{
  v6 = *a1;
  v5 = *(a1 + 40);
  v2 = 2 * v5;
  if (2 * v5 < *(a1 + 48) + 1)
  {
    v2 = *(a1 + 48) + 1;
  }

  if (v5 == 8)
  {
    __dst = malloc_type_malloc();
    if (!__dst)
    {
      return -1;
    }

    memmove(__dst, v6, 0x20uLL);
  }

  else
  {
    __dst = malloc_type_realloc();
    if (!__dst)
    {
      return -1;
    }
  }

  for (i = v5; i < v2; ++i)
  {
    *(__dst + i) = 0;
  }

  *a1 = __dst;
  *(a1 + 40) = v2;
  return 0;
}

int printf(const char *a1, ...)
{
  va_start(va, a1);
  v2 = __stdoutp;
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vfprintf_l(v2, v3, a1, va);
  }

  else
  {
    return vfprintf_l(v2, __global_locale, a1, va);
  }
}

int putc(int a1, FILE *a2)
{
  flockfile(a2);
  v2 = a2->_w - 1;
  a2->_w = v2;
  if (v2 < 0 && (a2->_w < a2->_lbfsize || a1 == 10))
  {
    v7 = __swbuf(a1, a2);
  }

  else
  {
    v3 = a2->_p++;
    *v3 = a1;
    v7 = a1;
  }

  funlockfile(a2);
  return v7;
}

int putc_unlocked(int a1, FILE *a2)
{
  v2 = a2->_w - 1;
  a2->_w = v2;
  if (v2 < 0 && (a2->_w < a2->_lbfsize || a1 == 10))
  {
    return __swbuf(a1, a2);
  }

  v3 = a2->_p++;
  *v3 = a1;
  return a1;
}

int putchar(int a1)
{
  v4 = __stdoutp;
  flockfile(__stdoutp);
  v1 = v4->_w - 1;
  v4->_w = v1;
  if (v1 < 0 && (v4->_w < v4->_lbfsize || a1 == 10))
  {
    v6 = __swbuf(a1, v4);
  }

  else
  {
    v2 = v4->_p++;
    *v2 = a1;
    v6 = a1;
  }

  funlockfile(v4);
  return v6;
}

int putchar_unlocked(int a1)
{
  v4 = __stdoutp;
  v1 = __stdoutp->_w - 1;
  __stdoutp->_w = v1;
  if (v1 < 0 && (v4->_w < v4->_lbfsize || a1 == 10))
  {
    return __swbuf(a1, v4);
  }

  v2 = v4->_p++;
  *v2 = a1;
  return a1;
}

int puts(const char *a1)
{
  v7 = a1;
  v6 = 0;
  v5 = 0;
  v3 = 0;
  v4 = 0;
  libc_hooks_will_read_cstring(a1);
  if (!v7)
  {
    v7 = "(null)";
  }

  v8[0] = v7;
  v5 = strlen(v7);
  v8[1] = v5;
  v8[2] = "\n";
  v8[3] = 1;
  HIDWORD(v4) = v5 + 1;
  v3 = v8;
  LODWORD(v4) = 2;
  flockfile(__stdoutp);
  if (!((32 * *(&stru_20.fileoff + *&stru_68.sectname[__stdoutp])) >> 5))
  {
    *(&stru_20.fileoff + *&stru_68.sectname[__stdoutp]) = *(&stru_20.fileoff + *&stru_68.sectname[__stdoutp]) & 0xF8 | 7;
  }

  if (__sfvwrite(__stdoutp, &v3))
  {
    v1 = -1;
  }

  else
  {
    v1 = 10;
  }

  v6 = v1;
  funlockfile(__stdoutp);
  return v6;
}

int putw(int a1, FILE *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v3[0] = &v7;
  v3[1] = 4;
  v4[0] = v3;
  v4[1] = 0x400000001;
  flockfile(a2);
  v5 = __sfvwrite(v6, v4);
  funlockfile(v6);
  return v5;
}

wint_t putwc(__int32 a1, FILE *a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return fputwc_l(a1, a2, v3);
  }

  else
  {
    return fputwc_l(a1, a2, __global_locale);
  }
}

wint_t putwchar(__int32 a1)
{
  v2 = __stdoutp;
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return fputwc_l(a1, v2, v3);
  }

  else
  {
    return fputwc_l(a1, v2, __global_locale);
  }
}

uint64_t __srefill0(uint64_t a1)
{
  pthread_once(&__sdidinit, __sinit);
  if (!((32 * *(*(a1 + 104) + 72)) >> 5))
  {
    *(*(a1 + 104) + 72) = *(*(a1 + 104) + 72) & 0xF8 | 7;
  }

  *(a1 + 8) = 0;
  if ((*(a1 + 16) & 0x20) != 0)
  {
    return -1;
  }

  else
  {
    if ((*(a1 + 16) & 4) != 0)
    {
      if (*(a1 + 88))
      {
        if (*(a1 + 88) != a1 + 116)
        {
          free(*(a1 + 88));
        }

        *(a1 + 88) = 0;
        v1 = *(a1 + 112);
        *(a1 + 8) = v1;
        if (v1)
        {
          *a1 = **(a1 + 104);
          return 0;
        }
      }
    }

    else
    {
      if ((*(a1 + 16) & 0x10) == 0)
      {
        *__error() = 9;
        *(a1 + 16) |= 0x40u;
        return -1;
      }

      if ((*(a1 + 16) & 8) != 0)
      {
        if (__sflush(a1))
        {
          return -1;
        }

        *(a1 + 16) &= ~8u;
        *(a1 + 12) = 0;
        *(a1 + 40) = 0;
      }

      *(a1 + 16) |= 4u;
    }

    if (!*(a1 + 24))
    {
      __smakebuf(a1);
    }

    if ((*(a1 + 16) & 3) != 0)
    {
      *(a1 + 16) |= 0x8000u;
      _fwalk(lflush);
      *(a1 + 16) &= ~0x8000u;
      if ((*(a1 + 16) & 9) == 9)
      {
        __sflush(a1);
      }
    }

    return 1;
  }
}

uint64_t lflush(FILE *a1)
{
  v2 = 0;
  if ((a1->_flags & 9) == 9)
  {
    flockfile(a1);
    v2 = __sflush(a1);
    funlockfile(a1);
  }

  return v2;
}

uint64_t __srefill1(uint64_t a1)
{
  *a1 = *(a1 + 24);
  *(a1 + 8) = _sread(a1, *a1, *(a1 + 32));
  *(a1 + 16) &= ~0x2000u;
  if (*(a1 + 8) > 0)
  {
    return 0;
  }

  else
  {
    if (*(a1 + 8))
    {
      *(a1 + 8) = 0;
      *(a1 + 16) |= 0x40u;
    }

    else
    {
      *(a1 + 16) |= 0x20u;
    }

    return -1;
  }
}

uint64_t __srefill(uint64_t a1)
{
  v2 = __srefill0(a1);
  if (v2 > 0)
  {
    return __srefill1(a1);
  }

  else
  {
    return v2;
  }
}

int remove(const char *a1)
{
  v3 = a1;
  memset(&__b, 0, sizeof(__b));
  if (lstat(v3, &__b) < 0)
  {
    return -1;
  }

  if ((__b.st_mode & 0xF000) == 0x4000)
  {
    return rmdir(v3);
  }

  return unlink(v3);
}

void rewind(FILE *a1)
{
  v1 = *__error();
  pthread_once(&__sdidinit, __sinit);
  flockfile(a1);
  if (!_fseeko(a1, 0, 0, 1))
  {
    *__error() = v1;
  }

  a1->_flags &= 0xFF9Fu;
  funlockfile(a1);
}

int __srget(FILE *a1)
{
  if (__srefill(a1))
  {
    return -1;
  }

  --a1->_r;
  v1 = a1->_p++;
  return *v1;
}

int scanf(const char *a1, ...)
{
  va_start(va, a1);
  flockfile(__stdinp);
  v3 = __stdinp;
  v7 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
  if (v6)
  {
    v1 = __svfscanf_l(v3, v6, a1, va);
  }

  else
  {
    v1 = __svfscanf_l(v3, __global_locale, a1, va);
  }

  v4 = v1;
  funlockfile(__stdinp);
  return v4;
}

int scanf_l(locale_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v5 = a1;
  if (a1)
  {
    if (a1 == -1)
    {
      v5 = __global_locale;
    }
  }

  else
  {
    v5 = &__c_locale;
  }

  flockfile(__stdinp);
  v3 = __svfscanf_l(__stdinp, v5, a2, va);
  funlockfile(__stdinp);
  return v3;
}

void setbuf(FILE *a1, char *a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  setvbuf(a1, a2, v2, 0x400uLL);
}

void setbuffer(FILE *a1, char *a2, int a3)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  setvbuf(a1, a2, v3, a3);
}

int setvbuf(FILE *a1, char *a2, int a3, size_t a4)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  flags = 0;
  v9 = 0;
  v8 = 0;
  if (a3 != 2 && (v13 > 1 || (v12 & 0x80000000) != 0))
  {
    return -1;
  }

  libc_hooks_will_write(v15, 152);
  libc_hooks_will_write(v14, v12);
  flockfile(v15);
  v11 = 0;
  __sflush(v15);
  if (v15->_ub._base)
  {
    if (v15->_ub._base != v15->_ubuf)
    {
      free(v15->_ub._base);
    }

    v15->_ub._base = 0;
  }

  v15->_lbfsize = 0;
  v15->_r = 0;
  flags = v15->_flags;
  if ((flags & 0x80) != 0)
  {
    free(v15->_bf._base);
  }

  flags &= 0xFFFFE35C;
  if (v13 == 2)
  {
LABEL_19:
    v15->_flags = flags | 2;
    v15->_w = 0;
    nbuf = v15->_nbuf;
    v15->_p = v15->_nbuf;
    v15->_bf._base = nbuf;
    v15->_bf._size = 1;
    funlockfile(v15);
    return v11;
  }

  v4 = __swhatbuf(v15, &v9, &v8);
  flags |= v4;
  if (!v12)
  {
    v14 = 0;
    v12 = v9;
  }

  if (!v14)
  {
    v14 = malloc_type_malloc();
    if (!v14)
    {
      v11 = -1;
      if (v12 != v9)
      {
        v12 = v9;
        v14 = malloc_type_malloc();
      }
    }

    if (!v14)
    {
      goto LABEL_19;
    }

    flags |= 0x80u;
  }

  if (v12 != v9)
  {
    flags |= 0x800u;
  }

  if (v13 == 1)
  {
    flags |= 1u;
  }

  v15->_flags = flags;
  v6 = v14;
  v15->_p = v14;
  v15->_bf._base = v6;
  v15->_bf._size = v12;
  if ((flags & 8) != 0)
  {
    if (flags)
    {
      v15->_w = 0;
      v15->_lbfsize = -v15->_bf._size;
    }

    else
    {
      v15->_w = v12;
    }
  }

  else
  {
    v15->_w = 0;
  }

  __cleanup = 1;
  funlockfile(v15);
  return v11;
}

int snprintf(char *__str, size_t __size, const char *__format, ...)
{
  va_start(va, __format);
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return vsnprintf_l(__str, __size, v4, __format, va);
  }

  else
  {
    return vsnprintf_l(__str, __size, __global_locale, __format, va);
  }
}

int sprintf(char *a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vsprintf_l(a1, v3, a2, va);
  }

  else
  {
    return vsprintf_l(a1, &__global_locale, a2, va);
  }
}

int sscanf(const char *a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vsscanf_l(a1, v3, a2, va);
  }

  else
  {
    return vsscanf_l(a1, __global_locale, a2, va);
  }
}

uint64_t _sread(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = (*(a1 + 64))(*(a1 + 48), a2, a3);
  if (v4 <= 0)
  {
    if (v4 < 0)
    {
      *(a1 + 16) &= ~0x1000u;
    }
  }

  else if ((*(a1 + 16) & 0x1000) != 0)
  {
    if (*(a1 + 144) <= 0x7FFFFFFFFFFFFFFFLL - v4)
    {
      *(a1 + 144) += v4;
    }

    else
    {
      *(a1 + 16) &= ~0x1000u;
    }
  }

  return v4;
}

uint64_t _swrite(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 16) & 0x100) != 0)
  {
    v4 = *__error();
    if (_sseek(a1, 0, 2u) == -1 && (*(a1 + 16) & 0x400) != 0)
    {
      return -1;
    }

    *__error() = v4;
  }

  v5 = (*(a1 + 80))(*(a1 + 48), a2, a3);
  if ((v5 & 0x80000000) != 0)
  {
    *(a1 + 16) &= ~0x1000u;
  }

  else if ((*(a1 + 16) & 0x1100) == 0x1100 && *(a1 + 144) <= 0x7FFFFFFFFFFFFFFFLL - v5)
  {
    *(a1 + 144) += v5;
  }

  else
  {
    *(a1 + 16) &= ~0x1000u;
  }

  return v5;
}

uint64_t _sseek(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *__error();
  *__error() = 0;
  v6 = (*(a1 + 72))(*(a1 + 48), a2, a3);
  v4 = *__error();
  if (!*__error())
  {
    *__error() = v5;
  }

  if (v6 < 0)
  {
    if (v4)
    {
      if (v4 == 29)
      {
        *(a1 + 16) &= ~0x100u;
      }
    }

    else
    {
      if (a2 || a3 != 1)
      {
        if (*(a1 + 88))
        {
          if (*(a1 + 88) != a1 + 116)
          {
            free(*(a1 + 88));
          }

          *(a1 + 88) = 0;
        }

        *a1 = *(a1 + 24);
        *(a1 + 8) = 0;
        *(a1 + 16) &= ~0x20u;
      }

      *(a1 + 16) |= 0x40u;
      *__error() = 22;
    }

    *(a1 + 16) &= ~0x1000u;
    return -1;
  }

  else if ((*(a1 + 16) & 0x400) != 0)
  {
    *(a1 + 16) |= 0x1000u;
    *(a1 + 144) = v6;
  }

  return v6;
}

int swprintf(__int32 *a1, size_t a2, const __int32 *a3, ...)
{
  va_start(va, a3);
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return vswprintf_l(a1, a2, v4, a3, va);
  }

  else
  {
    return vswprintf_l(a1, a2, __global_locale, a3, va);
  }
}

int swscanf(const __int32 *a1, const __int32 *a2, ...)
{
  va_start(va, a2);
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return vswscanf_l(a1, v3, a2, va);
  }

  else
  {
    return vswscanf_l(a1, __global_locale, a2, va);
  }
}

char *__cdecl tempnam(const char *__dir, const char *__prefix)
{
  libc_hooks_will_read_cstring(__dir);
  libc_hooks_will_read_cstring(__prefix);
  v5 = malloc_type_malloc();
  if (!v5)
  {
    return 0;
  }

  if (!__prefix)
  {
    __prefix = "tmp.";
  }

  if (__dir && !access(__dir, 2))
  {
    v2 = __dir[strlen(__dir) - 1] == 47 ? &unk_C42B5 : "/";
    snprintf(v5, 0x400uLL, "%s%s%sXXXXXX", __dir, v2, __prefix);
    v6 = _mktemp(v5);
    if (v6)
    {
      return v6;
    }
  }

  if (!access("/var/tmp/", 2))
  {
    snprintf(v5, 0x400uLL, "%s%sXXXXXX", "/var/tmp/", __prefix);
    v7 = _mktemp(v5);
    if (v7)
    {
      return v7;
    }
  }

  if (!issetugid())
  {
    v8 = getenv("TMPDIR");
    if (v8)
    {
      if (!access(v8, 2))
      {
        v3 = v8[strlen(v8) - 1] == 47 ? &unk_C42B5 : "/";
        snprintf(v5, 0x400uLL, "%s%s%sXXXXXX", v8, v3, __prefix);
        v9 = _mktemp(v5);
        if (v9)
        {
          return v9;
        }
      }
    }
  }

  snprintf(v5, 0x400uLL, "%s%sXXXXXX", "/tmp/", __prefix);
  v10 = _mktemp(v5);
  if (v10)
  {
    return v10;
  }

  v11 = *__error();
  free(v5);
  *__error() = v11;
  return 0;
}

FILE *tmpfile(void)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  __s = 0;
  if (!issetugid())
  {
    __s = getenv("TMPDIR");
  }

  if (!__s)
  {
    __s = "/tmp/";
  }

  if (!*__s)
  {
    return 0;
  }

  v0 = strlen(__s);
  v1 = &unk_C42B5;
  if (__s[v0 - 1] != 47)
  {
    v1 = "/";
  }

  asprintf(&v5, "%s%s%s", __s, v1, "tmp.XXXXXX");
  if (!v5)
  {
    return 0;
  }

  v10 = -1;
  sigprocmask(1, &v10, &v9);
  v7 = mkstemp(v5);
  if (v7 != -1)
  {
    unlink(v5);
  }

  free(v5);
  sigprocmask(3, &v9, 0);
  if (v7 == -1)
  {
    return 0;
  }

  v8 = fdopen(v7, "w+");
  if (v8)
  {
    return v8;
  }

  v6 = *__error();
  close_NOCANCEL();
  v3 = v6;
  *__error() = v3;
  return 0;
}

char *__cdecl tmpnam(char *a1)
{
  v2 = a1;
  if (a1)
  {
    goto LABEL_6;
  }

  if (!pthread_once(&tmpnam_buf_control, tmpnam_buf_allocate) && tmpnam_buf)
  {
    v2 = tmpnam_buf;
LABEL_6:
    libc_hooks_will_write(v2, 1024);
    snprintf(v2, 0x400uLL, "%stmp.%lu.XXXXXX", "/var/tmp/", tmpnam_tmpcount);
    ++tmpnam_tmpcount;
    return _mktemp(v2);
  }

  return 0;
}

uint64_t tmpnam_buf_allocate()
{
  result = malloc_type_malloc();
  tmpnam_buf = result;
  return result;
}

int ungetc(int a1, FILE *a2)
{
  pthread_once(&__sdidinit, __sinit);
  flockfile(a2);
  if (!((32 * *(a2->_extra + 72)) >> 5))
  {
    *(a2->_extra + 72) = *(a2->_extra + 72) & 0xF8 | 7;
  }

  v3 = __ungetc(a1, a2);
  funlockfile(a2);
  return v3;
}

uint64_t __ungetc(int a1, uint64_t a2)
{
  v5 = a1;
  if (a1 == -1)
  {
    return -1;
  }

  else
  {
    if ((*(a2 + 16) & 4) == 0)
    {
      if ((*(a2 + 16) & 0x10) == 0)
      {
        return -1;
      }

      if ((*(a2 + 16) & 8) != 0)
      {
        if (__sflush(a2))
        {
          return -1;
        }

        *(a2 + 16) &= ~8u;
        *(a2 + 12) = 0;
        *(a2 + 40) = 0;
      }

      *(a2 + 16) |= 4u;
    }

    if (*(a2 + 88))
    {
      if (*(a2 + 8) >= *(a2 + 96) && __submore(a2))
      {
        return -1;
      }

      else
      {
        v2 = (*a2 - 1);
        *a2 = v2;
        *v2 = v5;
        ++*(a2 + 8);
        return v5;
      }
    }

    else
    {
      *(a2 + 16) &= ~0x20u;
      if (*(a2 + 24) && *a2 > *(a2 + 24) && *(*a2 - 1) == v5)
      {
        --*a2;
        ++*(a2 + 8);
        return v5;
      }

      else
      {
        *(a2 + 112) = *(a2 + 8);
        **(a2 + 104) = *a2;
        *(a2 + 88) = a2 + 116;
        *(a2 + 96) = 3;
        *(a2 + 118) = v5;
        *a2 = a2 + 118;
        *(a2 + 8) = 1;
        return v5;
      }
    }
  }
}

uint64_t __submore(uint64_t a1)
{
  if (*(a1 + 88) == a1 + 116)
  {
    __src = malloc_type_malloc();
    if (__src)
    {
      *(a1 + 88) = __src;
      *(a1 + 96) = 1024;
      __srca = __src + 1021;
        ;
      }

      *a1 = __srca;
      return 0;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    __na = *(a1 + 96);
    v1 = *(a1 + 88);
    __srcb = malloc_type_realloc();
    if (__srcb)
    {
      memcpy(&__srcb[__na], __srcb, __na);
      *a1 = &__srcb[__na];
      *(a1 + 88) = __srcb;
      *(a1 + 96) = 2 * __na;
      return 0;
    }

    else
    {
      return -1;
    }
  }
}

uint64_t __ungetwc(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  if (a1 == -1)
  {
    return -1;
  }

  else
  {
    v5 = (*(*(v7 + 1328) + 96))(v6, v9, *(v8 + 104) + 80, v7);
    if (v5 == -1)
    {
      *(v8 + 16) |= 0x40u;
      return -1;
    }

    else
    {
      while (v5--)
      {
        if (__ungetc(v6[v5], v8) == -1)
        {
          return -1;
        }
      }

      return v9;
    }
  }
}

wint_t ungetwc(wint_t a1, FILE *a2)
{
  flockfile(a2);
  if (!((32 * *(a2->_extra + 72)) >> 5))
  {
    *(a2->_extra + 72) = *(a2->_extra + 72) & 0xF8 | 1;
  }

  v8 = __locale_key;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v8);
  if (v7)
  {
    v2 = __ungetwc(a1, a2, v7);
  }

  else
  {
    v2 = __ungetwc(a1, a2, __global_locale);
  }

  v4 = v2;
  funlockfile(a2);
  return v4;
}

wint_t ungetwc_l(wint_t a1, FILE *a2, locale_t a3)
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

  flockfile(a2);
  if (!((32 * *(a2->_extra + 72)) >> 5))
  {
    *(a2->_extra + 72) = *(a2->_extra + 72) & 0xF8 | 1;
  }

  v4 = __ungetwc(a1, a2, v5);
  funlockfile(a2);
  return v4;
}

uint64_t _vasprintf(uint64_t a1, pthread_rwlock_t *a2, void *a3, _xlocale *a4, char *a5, int *a6)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  v8 = 0;
  memset(__b, 0, sizeof(__b));
  memset(v17, 0, sizeof(v17));
  __b[13] = v17;
  v17[0] = 0;
  memset(v16, 0, sizeof(v16));
  v16[0] = 850045858;
  memcpy(&v17[1], v16, 0x40uLL);
  LOBYTE(v17[9]) &= 0xF8u;
  memset(&v17[10], 0, 0x80uLL);
  LOBYTE(v17[9]) &= ~8u;
  LODWORD(__b[2]) = -48632;
  __b[0] = malloc_type_malloc();
  __b[3] = __b[0];
  if (__b[0])
  {
    HIDWORD(__b[1]) = 127;
    LODWORD(__b[4]) = 127;
    *(__b[13] + 72) &= 0xF8u;
    memset((__b[13] + 80), 0, 0x80uLL);
    v8 = __v2printf(v14, v13, __b, v11, v10, v9);
    if ((v8 & 0x80000000) != 0)
    {
      free(__b[3]);
      *v12 = 0;
      *__error() = 12;
      return -1;
    }

    else
    {
      *__b[0] = 0;
      *v12 = __b[3];
      return v8;
    }
  }

  else
  {
    *v12 = 0;
    *__error() = 12;
    return -1;
  }
}

int vasprintf(char **a1, const char *a2, va_list a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return _vasprintf(-1, 0, a1, v4, a2, a3);
  }

  else
  {
    return _vasprintf(-1, 0, a1, &__global_locale, a2, a3);
  }
}

uint64_t _vdprintf(uint64_t a1, pthread_rwlock_t *a2, int a3, _xlocale *a4, char *a5, int *a6)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  memset(__b, 0, sizeof(__b));
  memset(v18, 0, sizeof(v18));
  __b[13] = v18;
  v18[0] = 0;
  memset(v17, 0, sizeof(v17));
  v17[0] = 850045858;
  memcpy(&v18[1], v17, 0x40uLL);
  LOBYTE(v18[9]) &= 0xF8u;
  memset(&v18[10], 0, 0x80uLL);
  LOBYTE(v18[9]) &= ~8u;
  if (v13 < 0x8000)
  {
    __b[0] = v19;
    HIDWORD(__b[1]) = 1024;
    LOWORD(__b[2]) = 8;
    WORD1(__b[2]) = v13;
    __b[6] = __b;
    __b[10] = __swrite;
    __b[3] = v19;
    LODWORD(__b[4]) = 1024;
    *(__b[13] + 72) &= 0xF8u;
    memset((__b[13] + 80), 0, 0x80uLL);
    v8 = __v2printf(v15, v14, __b, v12, v11, v10);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else if (__fflush(__b))
    {
      return -1;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    *__error() = 24;
    return -1;
  }
}

int vdprintf(int a1, const char *a2, va_list a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return _vdprintf(-1, 0, a1, v4, a2, a3);
  }

  else
  {
    return _vdprintf(-1, 0, a1, __global_locale, a2, a3);
  }
}

int vfprintf_l(FILE *a1, locale_t a2, const char *a3, va_list a4)
{
  libc_hooks_will_write(a1, 152);
  flockfile(a1);
  v5 = __xvprintf(-1, 0, a1, a2, a3, a4);
  funlockfile(a1);
  return v5;
}

int vfprintf(FILE *a1, const char *a2, va_list a3)
{
  libc_hooks_will_write(a1, 152);
  flockfile(a1);
  v10 = __locale_key;
  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v10);
  if (v9)
  {
    v3 = __xvprintf(-1, 0, a1, v9, a2, a3);
  }

  else
  {
    v3 = __xvprintf(-1, 0, a1, &__global_locale, a2, a3);
  }

  v5 = v3;
  funlockfile(a1);
  return v5;
}

BOOL __printf_is_memory_read_only(vm_address_t a1, vm_address_t a2)
{
  v8[2] = a1;
  v8[1] = a2;
  v8[0] = a1;
  v7 = 0;
  memset(__b, 0, sizeof(__b));
  infoCnt = 9;
  object_name = 0;
  v3 = 0;
  if (!vm_region_64(mach_task_self_, v8, &v7, 9, __b, &infoCnt, &object_name))
  {
    return (__b[0] & 2) == 0;
  }

  return v3;
}

uint64_t __vfprintf(uint64_t a1, _xlocale *a2, char *a3, int *a4)
{
  v327 = a1;
  v326 = a2;
  v325 = a3;
  v324 = a4;
  v322 = 0;
  v321 = 0;
  v320 = 0;
  __s1 = 0;
  v318 = 0;
  v317 = 0;
  v316 = 0;
  __n = 0;
  v314 = 0;
  v313 = 0;
  v312 = 0u;
  v311 = 0u;
  only = 0;
  __s = 0;
  v308 = 0;
  v307 = 0;
  v306 = 0.0;
  v305 = 0;
  v304 = 0;
  v303 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0uLL;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v289 = 0;
  v288 = 0;
  memset(v287, 0, sizeof(v287));
  v282 = 0;
  v323 = a3;
  *&v284[4] = 0;
  *v284 = 1;
  v283 = a4;
  io_init(v287, a1);
  v317 = 0;
  v300 = 0;
  __s = localeconv_l(v326)->decimal_point;
  if (__s[1])
  {
    v197 = strlen(__s);
  }

  else
  {
    v197 = 1;
  }

  v308 = v197;
LABEL_5:
  __s1 = v323;
  while (1)
  {
    v322 = *v323;
    v196 = 0;
    if (v322)
    {
      v196 = v322 != 37;
    }

    if (!v196)
    {
      break;
    }

    ++v323;
  }

  v321 = v323 - __s1;
  if (v323 != __s1)
  {
    if (v317 + v321 >= 0x7FFFFFFF)
    {
      goto LABEL_12;
    }

    if (io_print(v287, __s1, v321, v326))
    {
      goto LABEL_719;
    }

    v317 += v321;
  }

  if (!v322)
  {
LABEL_718:
    io_flush(v287, v326);
    goto LABEL_719;
  }

  v298 = v323++;
  v318 = 0;
  v293 = 0;
  v316 = 0;
  __n = -1;
  *&v312 = 0;
  v314 = 0;
  v286 = 0;
  v297 = 88;
  while (2)
  {
    v4 = v323++;
    v322 = *v4;
LABEL_18:
    switch(v322)
    {
      case ' ':
        if (!v314)
        {
          v314 = 32;
        }

        continue;
      case '#':
        v318 |= 1u;
        continue;
      case '\'':
        v318 |= 0x200u;
        continue;
      case '*':
        v320 = 0;
        for (__s1 = v323; (*__s1 - 48) <= 9; ++__s1)
        {
          v320 = 10 * v320 + *__s1 - 48;
        }

        if (*__s1 == 36)
        {
          v281 = *v284;
          if (!*&v284[4])
          {
            *&v284[4] = v330;
            if (__find_arguments(v325, v283, &v284[4]))
            {
              v317 = -1;
              goto LABEL_719;
            }
          }

          *v284 = v320;
          if (*&v284[4])
          {
            v5 = *v284;
            ++*v284;
            v195 = *(*&v284[4] + 16 * v5);
          }

          else
          {
            *v284 = (*v284 + 1);
            v6 = v324;
            v324 += 2;
            v280 = *v6;
            v195 = v280;
          }

          v316 = v195;
          *v284 = v281;
          v323 = ++__s1;
        }

        else
        {
          if (*&v284[4])
          {
            v7 = *v284;
            ++*v284;
            v194 = *(*&v284[4] + 16 * v7);
          }

          else
          {
            *v284 = (*v284 + 1);
            v8 = v324;
            v324 += 2;
            v279 = *v8;
            v194 = v279;
          }

          v316 = v194;
        }

        if (v316 < 0)
        {
          v316 = -v316;
LABEL_41:
          v318 |= 4u;
        }

        continue;
      case '+':
        v314 = 43;
        continue;
      case ',':
      case ':':
      case ';':
      case '_':
        v297 = v322;
        continue;
      case '-':
        goto LABEL_41;
      case '.':
        v9 = v323++;
        v322 = *v9;
        if (v322 != 42)
        {
          __n = 0;
          while ((v322 - 48) <= 9)
          {
            __n = 10 * __n + v322 - 48;
            v14 = v323++;
            v322 = *v14;
          }

          goto LABEL_18;
        }

        v320 = 0;
        for (__s1 = v323; (*__s1 - 48) <= 9; ++__s1)
        {
          v320 = 10 * v320 + *__s1 - 48;
        }

        if (*__s1 == 36)
        {
          v278 = *v284;
          if (!*&v284[4])
          {
            *&v284[4] = v330;
            if (__find_arguments(v325, v283, &v284[4]))
            {
              v317 = -1;
              goto LABEL_719;
            }
          }

          *v284 = v320;
          if (*&v284[4])
          {
            v10 = *v284;
            ++*v284;
            v193 = *(*&v284[4] + 16 * v10);
          }

          else
          {
            *v284 = (*v284 + 1);
            v11 = v324;
            v324 += 2;
            v277 = *v11;
            v193 = v277;
          }

          __n = v193;
          *v284 = v278;
          v323 = ++__s1;
        }

        else
        {
          if (*&v284[4])
          {
            v12 = *v284;
            ++*v284;
            v192 = *(*&v284[4] + 16 * v12);
          }

          else
          {
            *v284 = (*v284 + 1);
            v13 = v324;
            v324 += 2;
            v276 = *v13;
            v192 = v276;
          }

          __n = v192;
        }

        continue;
      case '0':
        v318 |= 0x80u;
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
        v321 = 0;
        do
        {
          v321 = 10 * v321 + v322 - 48;
          v15 = v323++;
          v322 = *v15;
        }

        while ((v322 - 48) < 0xA);
        if (v322 != 36)
        {
          v316 = v321;
          goto LABEL_18;
        }

        *v284 = v321;
        if (!*&v284[4])
        {
          *&v284[4] = v330;
          if (__find_arguments(v325, v283, &v284[4]))
          {
            v317 = -1;
            goto LABEL_719;
          }
        }

        continue;
      case 'A':
      case 'a':
        if ((v318 & 0x4000) != 0)
        {
          v318 |= 0x100u;
          goto LABEL_466;
        }

        if (v322 == 97)
        {
          v286 = 120;
          v289 = &__vfprintf_xdigs_lower;
          v304 = 112;
        }

        else
        {
          v286 = 88;
          v289 = &__vfprintf_xdigs_upper;
          v304 = 80;
        }

        if ((__n & 0x8000000000000000) == 0)
        {
          ++__n;
        }

        if (v300)
        {
          __freedtoa(v300);
        }

        if ((v318 & 8) != 0)
        {
          if (*&v284[4])
          {
            v36 = *v284;
            ++*v284;
            v175 = *(*&v284[4] + 16 * v36);
          }

          else
          {
            *v284 = (*v284 + 1);
            v37 = v324;
            v324 += 2;
            v264 = *v37;
            v175 = v264;
          }

          v306 = v175;
          __s1 = __hldtoa(v289, __n, &v305, &v307, &v303, v175);
          v300 = __s1;
        }

        else
        {
          if (*&v284[4])
          {
            v38 = *v284;
            ++*v284;
            v174 = *(*&v284[4] + 16 * v38);
          }

          else
          {
            *v284 = (*v284 + 1);
            v39 = v324;
            v324 += 2;
            v263 = *v39;
            v174 = v263;
          }

          v306 = v174;
          __s1 = __hdtoa(v289, __n, &v305, &v307, &v303, v174);
          v300 = __s1;
        }

        if ((__n & 0x8000000000000000) != 0)
        {
          __n = v303 - __s1;
        }

        if (v305 == 0x7FFFFFFF)
        {
          v286 = 0;
        }

        goto LABEL_204;
      case 'C':
        v318 |= 0x10u;
        goto LABEL_85;
      case 'D':
        v318 |= 0x10u;
        goto LABEL_99;
      case 'E':
      case 'e':
        if ((v318 & 0x4000) != 0)
        {
          v318 |= 0x100u;
          goto LABEL_466;
        }

        v304 = v322;
        if ((__n & 0x8000000000000000) != 0)
        {
          __n = 7;
        }

        else
        {
          ++__n;
        }

        goto LABEL_184;
      case 'F':
      case 'f':
        if ((v318 & 0x4000) != 0)
        {
          v318 |= 0x100u;
          goto LABEL_466;
        }

        v304 = 0;
        goto LABEL_184;
      case 'G':
      case 'g':
        if ((v318 & 0x4000) != 0)
        {
          v318 |= 0x100u;
        }

        else
        {
          v304 = v322 - 2;
          if (!__n)
          {
            __n = 1;
          }

LABEL_184:
          if ((__n & 0x8000000000000000) != 0)
          {
            __n = 6;
          }

          if (v300)
          {
            __freedtoa(v300);
          }

          if ((v318 & 8) != 0)
          {
            if (*&v284[4])
            {
              v40 = *v284;
              ++*v284;
              v173 = *(*&v284[4] + 16 * v40);
            }

            else
            {
              *v284 = (*v284 + 1);
              v41 = v324;
              v324 += 2;
              v262 = *v41;
              v173 = v262;
            }

            v306 = v173;
            if (v304)
            {
              v42 = 2;
            }

            else
            {
              v42 = 3;
            }

            __s1 = __ldtoa(&v306, v42, __n, &v305, &v307, &v303);
            v300 = __s1;
          }

          else
          {
            if (*&v284[4])
            {
              v43 = *v284;
              ++*v284;
              v172 = *(*&v284[4] + 16 * v43);
            }

            else
            {
              *v284 = (*v284 + 1);
              v44 = v324;
              v324 += 2;
              v261 = *v44;
              v172 = v261;
            }

            v306 = v172;
            if (v304)
            {
              v45 = 2;
            }

            else
            {
              v45 = 3;
            }

            __s1 = __dtoa(v45, __n, &v305, &v307, &v303, v172);
            v300 = __s1;
            if (v305 == 9999)
            {
              v305 = 0x7FFFFFFF;
            }
          }

LABEL_204:
          if (v307)
          {
            v314 = 45;
          }

          if (v305 == 0x7FFFFFFF)
          {
            if (*__s1 == 78)
            {
              v46 = "nan";
              if (v322 <= 96)
              {
                v46 = "NAN";
              }

              __s1 = v46;
              v314 = 0;
            }

            else
            {
              v47 = "inf";
              if (v322 <= 96)
              {
                v47 = "INF";
              }

              __s1 = v47;
            }

            v291 = 3;
            v318 &= ~0x80u;
          }

          else
          {
            v318 |= 0x100u;
            v301 = v303 - __s1;
            if (v322 == 103 || v322 == 71)
            {
              if (v305 < -3 || v305 > __n)
              {
                if ((v318 & 1) == 0)
                {
                  __n = v301;
                }
              }

              else
              {
                v304 = 0;
                if (v318)
                {
                  __n -= v305;
                }

                else
                {
                  __n = v301 - v305;
                }

                if ((__n & 0x8000000000000000) != 0)
                {
                  __n = 0;
                }
              }
            }

            if (v304)
            {
              v302 = exponent(v332, v305 - 1, v304);
              v291 = v302 + __n;
              if (__n > 1 || (v318 & 1) != 0)
              {
                v291 += v308;
              }
            }

            else
            {
              if (v305 < 1)
              {
                v291 = 1;
              }

              else
              {
                v291 = v305;
              }

              if (__n || (v318 & 1) != 0)
              {
                v291 += __n + v308;
              }

              if ((v318 & 0x200) != 0 && v305 >= 1)
              {
                v48 = grouping_init(&v311, v305, v326);
                v291 += v48;
              }
            }
          }
        }

        goto LABEL_466;
      case 'L':
        v318 |= 8u;
        continue;
      case 'O':
        v318 |= 0x10u;
        goto LABEL_266;
      case 'S':
        v318 |= 0x10u;
        goto LABEL_319;
      case 'U':
        v318 |= 0x10u;
        goto LABEL_340;
      case 'X':
        v289 = &__vfprintf_xdigs_upper;
        goto LABEL_389;
      case 'c':
LABEL_85:
        if ((v318 & 0x4000) != 0)
        {
          goto LABEL_466;
        }

        if ((v318 & 0x10) != 0)
        {
          v275 = 0;
          memset(&v329, 0, sizeof(v329));
          __s1 = v331;
          if (*&v284[4])
          {
            v16 = *v284;
            ++*v284;
            v191 = *(*&v284[4] + 16 * v16);
          }

          else
          {
            *v284 = (*v284 + 1);
            v17 = v324;
            v324 += 2;
            v274 = *v17;
            v191 = v274;
          }

          v275 = wcrtomb_l(v331, v191, &v329, v326);
          if (v275 == -1)
          {
            *(v327 + 16) |= 0x40u;
            goto LABEL_719;
          }

          v291 = v275;
        }

        else
        {
          if (*&v284[4])
          {
            v18 = *v284;
            ++*v284;
            v190 = *(*&v284[4] + 16 * v18);
          }

          else
          {
            *v284 = (*v284 + 1);
            v19 = v324;
            v324 += 2;
            v273 = *v19;
            LOBYTE(v190) = v273;
          }

          __s1 = v331;
          v331[0] = v190;
          v291 = 1;
        }

        v314 = 0;
        goto LABEL_466;
      case 'd':
      case 'i':
LABEL_99:
        if ((v318 & 0x4000) != 0)
        {
          goto LABEL_466;
        }

        if ((v318 & 0x1C20) != 0)
        {
          if ((v318 & 0x1000) != 0)
          {
            if (*&v284[4])
            {
              v20 = *v284;
              ++*v284;
              v189 = *(*&v284[4] + 16 * v20);
            }

            else
            {
              *v284 = (*v284 + 1);
              v21 = v324;
              v324 += 2;
              v272 = *v21;
              v189 = v272;
            }

            v188 = v189;
          }

          else
          {
            if ((v318 & 0x400) != 0)
            {
              if (*&v284[4])
              {
                v22 = *v284;
                ++*v284;
                v187 = *(*&v284[4] + 16 * v22);
              }

              else
              {
                *v284 = (*v284 + 1);
                v23 = v324;
                v324 += 2;
                v271 = *v23;
                v187 = v271;
              }

              v186 = v187;
            }

            else
            {
              if ((v318 & 0x800) != 0)
              {
                if (*&v284[4])
                {
                  v24 = *v284;
                  ++*v284;
                  v185 = *(*&v284[4] + 16 * v24);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v25 = v324;
                  v324 += 2;
                  v270 = *v25;
                  v185 = v270;
                }

                v184 = v185;
              }

              else
              {
                if (*&v284[4])
                {
                  v26 = *v284;
                  ++*v284;
                  v183 = *(*&v284[4] + 16 * v26);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v27 = v324;
                  v324 += 2;
                  v269 = *v27;
                  v183 = v269;
                }

                v184 = v183;
              }

              v186 = v184;
            }

            v188 = v186;
          }

          v295 = v188;
          if (v188 < 0)
          {
            v295 = -v295;
            v314 = 45;
          }
        }

        else
        {
          if ((v318 & 0x10) != 0)
          {
            if (*&v284[4])
            {
              v28 = *v284;
              ++*v284;
              v182 = *(*&v284[4] + 16 * v28);
            }

            else
            {
              *v284 = (*v284 + 1);
              v29 = v324;
              v324 += 2;
              v268 = *v29;
              v182 = v268;
            }

            v181 = v182;
          }

          else
          {
            if ((v318 & 0x40) != 0)
            {
              if (*&v284[4])
              {
                v30 = *v284;
                ++*v284;
                v180 = *(*&v284[4] + 16 * v30);
              }

              else
              {
                *v284 = (*v284 + 1);
                v31 = v324;
                v324 += 2;
                v267 = *v31;
                LOWORD(v180) = v267;
              }

              v179 = v180;
            }

            else
            {
              if ((v318 & 0x2000) != 0)
              {
                if (*&v284[4])
                {
                  v32 = *v284;
                  ++*v284;
                  v178 = *(*&v284[4] + 16 * v32);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v33 = v324;
                  v324 += 2;
                  v266 = *v33;
                  LOBYTE(v178) = v266;
                }

                v177 = v178;
              }

              else
              {
                if (*&v284[4])
                {
                  v34 = *v284;
                  ++*v284;
                  v176 = *(*&v284[4] + 16 * v34);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v35 = v324;
                  v324 += 2;
                  v265 = *v35;
                  v176 = v265;
                }

                v177 = v176;
              }

              v179 = v177;
            }

            v181 = v179;
          }

          v296 = v181;
          if (v181 < 0)
          {
            v296 = -v296;
            v314 = 45;
          }
        }

        v294 = 10;
        goto LABEL_443;
      case 'h':
        if ((v318 & 0x40) != 0)
        {
          v318 &= ~0x40u;
          v318 |= 0x2000u;
        }

        else
        {
          v318 |= 0x40u;
        }

        continue;
      case 'j':
        v318 |= 0x1000u;
        continue;
      case 'l':
        if ((v318 & 0x10) != 0)
        {
          v318 &= ~0x10u;
          v318 |= 0x20u;
        }

        else
        {
          v318 |= 0x10u;
        }

        continue;
      case 'n':
        if (*&v284[4])
        {
          v49 = *v284;
          ++*v284;
          v171 = *(*&v284[4] + 16 * v49);
        }

        else
        {
          *v284 = (*v284 + 1);
          v50 = v324;
          v324 += 2;
          v259 = *v50;
          v171 = v259;
        }

        v260 = v171;
        if (v171)
        {
          if (!only)
          {
            v51 = strlen(v325);
            only = __printf_is_memory_read_only(v325, v51);
          }

          if (!only)
          {
            _os_crash("%%n used in a non-immutable format string");
            __break(1u);
            JUMPOUT(0x69520);
          }

          if ((v318 & 0x20) != 0)
          {
            v258 = v317;
            v257 = v260;
            libc_hooks_will_write(v260, 8);
            *v257 = v258;
          }

          else if ((v318 & 0x400) != 0)
          {
            v256 = v317;
            v255 = v260;
            libc_hooks_will_write(v260, 8);
            *v255 = v256;
          }

          else if ((v318 & 0x800) != 0)
          {
            v254 = v317;
            v253 = v260;
            libc_hooks_will_write(v260, 8);
            *v253 = v254;
          }

          else if ((v318 & 0x1000) != 0)
          {
            v252 = v317;
            v251 = v260;
            libc_hooks_will_write(v260, 8);
            *v251 = v252;
          }

          else if ((v318 & 0x10) != 0)
          {
            v250 = v317;
            v249 = v260;
            libc_hooks_will_write(v260, 8);
            *v249 = v250;
          }

          else if ((v318 & 0x40) != 0)
          {
            v248 = v317;
            v247 = v260;
            libc_hooks_will_write(v260, 2);
            *v247 = v248;
          }

          else if ((v318 & 0x2000) != 0)
          {
            v246 = v317;
            v245 = v260;
            libc_hooks_will_write(v260, 1);
            *v245 = v246;
          }

          else
          {
            v244 = v317;
            v243 = v260;
            libc_hooks_will_write(v260, 4);
            *v243 = v244;
          }
        }

        goto LABEL_5;
      case 'o':
LABEL_266:
        if ((v318 & 0x4000) != 0)
        {
          goto LABEL_466;
        }

        if ((v318 & 0x1C20) != 0)
        {
          if ((v318 & 0x1000) != 0)
          {
            if (*&v284[4])
            {
              v52 = *v284;
              ++*v284;
              v170 = *(*&v284[4] + 16 * v52);
            }

            else
            {
              *v284 = (*v284 + 1);
              v53 = v324;
              v324 += 2;
              v242 = *v53;
              v170 = v242;
            }

            v169 = v170;
          }

          else
          {
            if ((v318 & 0x400) != 0)
            {
              if (*&v284[4])
              {
                v54 = *v284;
                ++*v284;
                v168 = *(*&v284[4] + 16 * v54);
              }

              else
              {
                *v284 = (*v284 + 1);
                v55 = v324;
                v324 += 2;
                v241 = *v55;
                v168 = v241;
              }

              v167 = v168;
            }

            else
            {
              if ((v318 & 0x800) != 0)
              {
                if (*&v284[4])
                {
                  v56 = *v284;
                  ++*v284;
                  v166 = *(*&v284[4] + 16 * v56);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v57 = v324;
                  v324 += 2;
                  v240 = *v57;
                  v166 = v240;
                }

                v165 = v166;
              }

              else
              {
                if (*&v284[4])
                {
                  v58 = *v284;
                  ++*v284;
                  v164 = *(*&v284[4] + 16 * v58);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v59 = v324;
                  v324 += 2;
                  v239 = *v59;
                  v164 = v239;
                }

                v165 = v164;
              }

              v167 = v165;
            }

            v169 = v167;
          }

          v295 = v169;
        }

        else
        {
          if ((v318 & 0x10) != 0)
          {
            if (*&v284[4])
            {
              v60 = *v284;
              ++*v284;
              v163 = *(*&v284[4] + 16 * v60);
            }

            else
            {
              *v284 = (*v284 + 1);
              v61 = v324;
              v324 += 2;
              v238 = *v61;
              v163 = v238;
            }

            v162 = v163;
          }

          else
          {
            if ((v318 & 0x40) != 0)
            {
              if (*&v284[4])
              {
                v62 = *v284;
                ++*v284;
                v161 = *(*&v284[4] + 16 * v62);
              }

              else
              {
                *v284 = (*v284 + 1);
                v63 = v324;
                v324 += 2;
                v237 = *v63;
                LOWORD(v161) = v237;
              }

              v160 = v161;
            }

            else
            {
              if ((v318 & 0x2000) != 0)
              {
                if (*&v284[4])
                {
                  v64 = *v284;
                  ++*v284;
                  v159 = *(*&v284[4] + 16 * v64);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v65 = v324;
                  v324 += 2;
                  v236 = *v65;
                  LOBYTE(v159) = v236;
                }

                v158 = v159;
              }

              else
              {
                if (*&v284[4])
                {
                  v66 = *v284;
                  ++*v284;
                  v157 = *(*&v284[4] + 16 * v66);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v67 = v324;
                  v324 += 2;
                  v235 = *v67;
                  v157 = v235;
                }

                v158 = v157;
              }

              v160 = v158;
            }

            v162 = v160;
          }

          v296 = v162;
        }

        v294 = 8;
        goto LABEL_442;
      case 'p':
        if ((v318 & 0x4000) != 0)
        {
          goto LABEL_466;
        }

        if (*&v284[4])
        {
          v68 = *v284;
          ++*v284;
          v156 = *(*&v284[4] + 16 * v68);
        }

        else
        {
          *v284 = (*v284 + 1);
          v69 = v324;
          v324 += 2;
          v234 = *v69;
          v156 = v234;
        }

        v295 = v156;
        v294 = 16;
        v289 = &__vfprintf_xdigs_lower;
        v318 |= 0x1000u;
        v286 = 120;
        goto LABEL_442;
      case 'q':
        v318 |= 0x20u;
        continue;
      case 's':
LABEL_319:
        if ((v318 & 0x10) != 0)
        {
          v233 = 0;
          free(v282);
          if (*&v284[4])
          {
            v70 = *v284;
            ++*v284;
            v155 = *(*&v284[4] + 16 * v70);
          }

          else
          {
            *v284 = (*v284 + 1);
            v71 = v324;
            v324 += 2;
            v232 = *v71;
            v155 = v232;
          }

          v233 = v155;
          if (v155)
          {
            v282 = __wcsconv(v233, __n, v326);
            if (!v282)
            {
              *(v327 + 16) |= 0x40u;
              goto LABEL_719;
            }

            __s1 = v282;
          }

          else
          {
            v282 = 0;
            __s1 = "(null)";
          }
        }

        else
        {
          if (*&v284[4])
          {
            v72 = *v284;
            ++*v284;
            v154 = *(*&v284[4] + 16 * v72);
          }

          else
          {
            *v284 = (*v284 + 1);
            v73 = v324;
            v324 += 2;
            v231 = *v73;
            v154 = v231;
          }

          __s1 = v154;
          if (!v154)
          {
            __s1 = "(null)";
          }
        }

        if ((__n & 0x8000000000000000) != 0)
        {
          v153 = strlen(__s1);
        }

        else
        {
          v153 = strnlen(__s1, __n);
        }

        v230 = v153;
        if (v153 > 0x7FFFFFFE)
        {
          v317 = -1;
          goto LABEL_719;
        }

        v291 = v230;
        libc_hooks_will_read(__s1, v230);
        v314 = 0;
LABEL_466:
        if ((v318 & 0x4000) == 0)
        {
          if (v293 <= v291)
          {
            v122 = v291;
          }

          else
          {
            v122 = v293;
          }

          v292 = v122;
          if (v314)
          {
            ++v292;
          }

          if (v286)
          {
            v292 += 2;
          }

          if (v316 <= v292)
          {
            v121 = v292;
          }

          else
          {
            v121 = v316;
          }

          v290 = v121;
          if (v317 + v121 >= 0x7FFFFFFF)
          {
LABEL_12:
            v317 = -1;
            *__error() = 84;
            goto LABEL_719;
          }

          if ((v318 & 0x84) == 0 && io_pad(v287, v316 - v292, &blanks, v326))
          {
            goto LABEL_719;
          }

          if (v314 && io_print(v287, &v314, 1, v326))
          {
            goto LABEL_719;
          }

          if (v286)
          {
            v285 = 48;
            if (io_print(v287, &v285, 2, v326))
            {
              goto LABEL_719;
            }
          }

          if ((v318 & 0x84) == 0x80 && io_pad(v287, v316 - v292, &zeroes, v326))
          {
            goto LABEL_719;
          }

          if ((v318 & 0x100) != 0)
          {
            if (v304)
            {
              if (__n > 1 || (v318 & 1) != 0)
              {
                v118 = __s1++;
                if (io_print(v287, v118, 1, v326) || io_print(v287, __s, v308, v326) || io_print(v287, __s1, v301 - 1, v326) || io_pad(v287, __n - v301, &zeroes, v326))
                {
                  goto LABEL_719;
                }
              }

              else if (io_print(v287, __s1, 1, v326))
              {
                goto LABEL_719;
              }

              if (io_print(v287, v332, v302, v326))
              {
                goto LABEL_719;
              }
            }

            else
            {
              if (v305 > 0)
              {
                if (v312)
                {
                  v321 = grouping_print(&v311, v287, __s1, v303, v326);
                  if (v321 < 0)
                  {
                    goto LABEL_719;
                  }

                  __s1 += v321;
                }

                else
                {
                  if (io_printandpad(v287, __s1, v303, v305, &zeroes, v326))
                  {
                    goto LABEL_719;
                  }

                  __s1 += v305;
                }

                if (__n || (v318) && io_print(v287, __s, v308, v326))
                {
                  goto LABEL_719;
                }
              }

              else
              {
                if (io_print(v287, &zeroes, 1, v326) || (__n || (v318 & 1) != 0) && io_print(v287, __s, v308, v326) || io_pad(v287, -v305, &zeroes, v326))
                {
                  goto LABEL_719;
                }

                __n += v305;
              }

              if (io_printandpad(v287, __s1, v303, __n, &zeroes, v326))
              {
                goto LABEL_719;
              }
            }
          }

          else
          {
            if (io_pad(v287, v293 - v291, &zeroes, v326))
            {
              goto LABEL_719;
            }

            if (v312)
            {
              if ((grouping_print(&v311, v287, __s1, v332, v326) & 0x80000000) != 0)
              {
                goto LABEL_719;
              }
            }

            else if (io_print(v287, __s1, v291, v326))
            {
              goto LABEL_719;
            }
          }

          if ((v318 & 4) != 0 && io_pad(v287, v316 - v292, &blanks, v326))
          {
            goto LABEL_719;
          }

          v317 += v290;
          if (io_flush(v287, v326))
          {
            goto LABEL_719;
          }

          goto LABEL_5;
        }

        i = 0;
        v212 = 0;
        v211 = 0;
        v210 = 0;
        v209 = 0;
        v208 = 0;
        v207 = 0;
        if (*&v284[4])
        {
          v107 = *v284;
          ++*v284;
          v124 = *(*&v284[4] + 16 * v107);
        }

        else
        {
          *v284 = (*v284 + 1);
          v108 = ((v324 + 15) & 0xFFFFFFFFFFFFFFF0);
          v324 = (v108 + 1);
          v124 = *v108;
        }

        v299 = v124;
        if (&v323[~v298 + 2] > 0x21)
        {
          v210 = malloc_type_malloc();
        }

        else
        {
          v210 = v328;
        }

        if (v297 == 88)
        {
          if (v322 == 99)
          {
            v297 = 0;
          }

          else
          {
            v297 = 32;
          }
        }

        v212 = 0;
        i = 0;
        while (2)
        {
          if (i < &v323[~v298])
          {
            v123 = *(v298 + i);
            if (v123 == 42)
            {
              if (*(v298 + i - 1) == 46)
              {
                v208 = 1;
              }

              else
              {
                v209 = 1;
              }
            }

            else if (v123 == 44 || (v123 - 58) < 2 || v123 == 95 || v123 == 104 || v123 == 108 || v123 == 118)
            {
              goto LABEL_491;
            }

            v109 = *(v298 + i);
            v110 = v212++;
            v210[v110] = v109;
LABEL_491:
            ++i;
            continue;
          }

          break;
        }

        if ((v318 & 0x40) != 0)
        {
          if (v322 == 99)
          {
            v198 = 1;
          }

          else if (v322 == 112)
          {
            v198 = 4;
          }

          else
          {
            v111 = v212++;
            v210[v111] = 104;
            v198 = 1;
          }

          v211 = 8;
          goto LABEL_520;
        }

        if ((v318 & 0x10) != 0)
        {
          v211 = 4;
          if (v322 == 112)
          {
            v112 = 5;
          }

          else
          {
            v112 = 2;
          }

          v198 = v112;
          goto LABEL_520;
        }

        switch(v322)
        {
          case 'A':
          case 'E':
          case 'G':
            goto LABEL_514;
          case 'X':
            goto LABEL_515;
          case 'a':
            goto LABEL_514;
          case 'c':
            goto LABEL_516;
          case 'd':
            goto LABEL_515;
        }

        if ((v322 - 101) < 3)
        {
LABEL_514:
          v211 = 4;
          v198 = 6;
          goto LABEL_520;
        }

        if (v322 != 112)
        {
LABEL_515:
          v113 = v212++;
          v210[v113] = 104;
          v114 = v212++;
          v210[v114] = 104;
        }

LABEL_516:
        v211 = 16;
        if (v322 == 112)
        {
          v115 = 3;
        }

        else
        {
          v115 = 0;
        }

        v198 = v115;
LABEL_520:
        v116 = v212++;
        v210[v116] = v322;
        v117 = v212++;
        v210[v117] = 0;
        if (v209)
        {
          if (!v208)
          {
            if (v198)
            {
              if (v198 == 1)
              {
                goto LABEL_600;
              }

              if (v198 == 2)
              {
LABEL_602:
                v203 = asprintf_l(&v207, v326, v210, v316, v299);
LABEL_603:
                v317 += v203;
                if (io_print(v287, v207, v203, v326) || io_flush(v287, v326))
                {
                  goto LABEL_719;
                }

                free(v207);
                for (i = 1; ; ++i)
                {
                  if (i >= v211)
                  {
                    goto LABEL_658;
                  }

                  if (v297 && io_print(v287, &v297, 1, v326))
                  {
                    goto LABEL_719;
                  }

                  switch(v198)
                  {
                    case 0:
                      goto LABEL_616;
                    case 1:
                      goto LABEL_618;
                    case 2:
                      goto LABEL_620;
                    case 3:
LABEL_616:
                      v204 = asprintf_l(&v207, v326, v210, v316, *(&v299 + i));
                      break;
                    case 4:
LABEL_618:
                      v204 = asprintf_l(&v207, v326, v210, v316, *(&v299 + i));
                      break;
                    case 5:
LABEL_620:
                      v204 = asprintf_l(&v207, v326, v210, v316, *(&v299 + i));
                      break;
                    default:
                      v204 = asprintf_l(&v207, v326, v210, v316, *(&v299 + i));
                      break;
                  }

                  v317 += v204;
                  if (io_print(v287, v207, v204, v326) || io_flush(v287, v326))
                  {
                    goto LABEL_719;
                  }

                  free(v207);
                }
              }

              if (v198 != 3)
              {
                if (v198 != 4)
                {
                  if (v198 != 5)
                  {
                    v203 = asprintf_l(&v207, v326, v210, v316, *&v299);
                    goto LABEL_603;
                  }

                  goto LABEL_602;
                }

LABEL_600:
                v203 = asprintf_l(&v207, v326, v210, v316, v299);
                goto LABEL_603;
              }
            }

            v203 = asprintf_l(&v207, v326, v210, v316, v299);
            goto LABEL_603;
          }

          if (v198)
          {
            if (v198 == 1)
            {
              goto LABEL_634;
            }

            if (v198 == 2)
            {
LABEL_636:
              v205 = asprintf_l(&v207, v326, v210, v316, __n, v299);
LABEL_637:
              v317 += v205;
              if (io_print(v287, v207, v205, v326) || io_flush(v287, v326))
              {
                goto LABEL_719;
              }

              free(v207);
              for (i = 1; ; ++i)
              {
                if (i >= v211)
                {
LABEL_658:
                  if (v210 != v328)
                  {
                    free(v210);
                  }

                  goto LABEL_5;
                }

                if (v297 && io_print(v287, &v297, 1, v326))
                {
                  goto LABEL_719;
                }

                switch(v198)
                {
                  case 0:
                    goto LABEL_650;
                  case 1:
                    goto LABEL_652;
                  case 2:
                    goto LABEL_654;
                  case 3:
LABEL_650:
                    v206 = asprintf_l(&v207, v326, v210, v316, __n, *(&v299 + i));
                    break;
                  case 4:
LABEL_652:
                    v206 = asprintf_l(&v207, v326, v210, v316, __n, *(&v299 + i));
                    break;
                  case 5:
LABEL_654:
                    v206 = asprintf_l(&v207, v326, v210, v316, __n, *(&v299 + i));
                    break;
                  default:
                    v206 = asprintf_l(&v207, v326, v210, v316, __n, *(&v299 + i));
                    break;
                }

                v317 += v206;
                if (io_print(v287, v207, v206, v326) || io_flush(v287, v326))
                {
                  goto LABEL_719;
                }

                free(v207);
              }
            }

            if (v198 != 3)
            {
              if (v198 != 4)
              {
                if (v198 != 5)
                {
                  v205 = asprintf_l(&v207, v326, v210, v316, __n, *&v299);
                  goto LABEL_637;
                }

                goto LABEL_636;
              }

LABEL_634:
              v205 = asprintf_l(&v207, v326, v210, v316, __n, v299);
              goto LABEL_637;
            }
          }

          v205 = asprintf_l(&v207, v326, v210, v316, __n, v299);
          goto LABEL_637;
        }

        if (v208)
        {
          if (v198)
          {
            if (v198 == 1)
            {
              goto LABEL_565;
            }

            if (v198 == 2)
            {
LABEL_567:
              v201 = asprintf_l(&v207, v326, v210, __n, v299);
LABEL_568:
              v317 += v201;
              if (io_print(v287, v207, v201, v326) || io_flush(v287, v326))
              {
                goto LABEL_719;
              }

              free(v207);
              for (i = 1; ; ++i)
              {
                if (i >= v211)
                {
                  goto LABEL_658;
                }

                if (v297 && io_print(v287, &v297, 1, v326))
                {
                  goto LABEL_719;
                }

                switch(v198)
                {
                  case 0:
                    goto LABEL_581;
                  case 1:
                    goto LABEL_583;
                  case 2:
                    goto LABEL_585;
                  case 3:
LABEL_581:
                    v202 = asprintf_l(&v207, v326, v210, __n, *(&v299 + i));
                    break;
                  case 4:
LABEL_583:
                    v202 = asprintf_l(&v207, v326, v210, __n, *(&v299 + i));
                    break;
                  case 5:
LABEL_585:
                    v202 = asprintf_l(&v207, v326, v210, __n, *(&v299 + i));
                    break;
                  default:
                    v202 = asprintf_l(&v207, v326, v210, __n, *(&v299 + i));
                    break;
                }

                v317 += v202;
                if (io_print(v287, v207, v202, v326) || io_flush(v287, v326))
                {
                  goto LABEL_719;
                }

                free(v207);
              }
            }

            if (v198 != 3)
            {
              if (v198 != 4)
              {
                if (v198 != 5)
                {
                  v201 = asprintf_l(&v207, v326, v210, __n, *&v299);
                  goto LABEL_568;
                }

                goto LABEL_567;
              }

LABEL_565:
              v201 = asprintf_l(&v207, v326, v210, __n, v299);
              goto LABEL_568;
            }
          }

          v201 = asprintf_l(&v207, v326, v210, __n, v299);
          goto LABEL_568;
        }

        switch(v198)
        {
          case 0:
            goto LABEL_529;
          case 1:
LABEL_531:
            v199 = asprintf_l(&v207, v326, v210, v299);
            goto LABEL_534;
          case 2:
LABEL_533:
            v199 = asprintf_l(&v207, v326, v210, v299);
            goto LABEL_534;
          case 3:
LABEL_529:
            v199 = asprintf_l(&v207, v326, v210, v299);
            goto LABEL_534;
          case 4:
            goto LABEL_531;
          case 5:
            goto LABEL_533;
        }

        v199 = asprintf_l(&v207, v326, v210, *&v299);
LABEL_534:
        v317 += v199;
        if (!io_print(v287, v207, v199, v326) && !io_flush(v287, v326))
        {
          free(v207);
          for (i = 1; ; ++i)
          {
            if (i >= v211)
            {
              goto LABEL_658;
            }

            if (v297 && io_print(v287, &v297, 1, v326))
            {
              break;
            }

            switch(v198)
            {
              case 0:
                goto LABEL_547;
              case 1:
                goto LABEL_549;
              case 2:
                goto LABEL_551;
              case 3:
LABEL_547:
                v200 = asprintf_l(&v207, v326, v210, *(&v299 + i));
                break;
              case 4:
LABEL_549:
                v200 = asprintf_l(&v207, v326, v210, *(&v299 + i));
                break;
              case 5:
LABEL_551:
                v200 = asprintf_l(&v207, v326, v210, *(&v299 + i));
                break;
              default:
                v200 = asprintf_l(&v207, v326, v210, *(&v299 + i));
                break;
            }

            v317 += v200;
            if (io_print(v287, v207, v200, v326) || io_flush(v287, v326))
            {
              break;
            }

            free(v207);
          }
        }

LABEL_719:
        if (v300)
        {
          __freedtoa(v300);
        }

        free(v282);
        if ((*(v327 + 16) & 0x40) != 0)
        {
          v317 = -1;
        }

        if (*&v284[4] && *&v284[4] != v330)
        {
          free(*&v284[4]);
        }

        if (v317 < 0 || v317 >= 0x7FFFFFFF)
        {
          return -1;
        }

        else
        {
          return v317;
        }

      case 't':
        v318 |= 0x800u;
        continue;
      case 'u':
LABEL_340:
        if ((v318 & 0x4000) != 0)
        {
          goto LABEL_466;
        }

        if ((v318 & 0x1C20) != 0)
        {
          if ((v318 & 0x1000) != 0)
          {
            if (*&v284[4])
            {
              v74 = *v284;
              ++*v284;
              v152 = *(*&v284[4] + 16 * v74);
            }

            else
            {
              *v284 = (*v284 + 1);
              v75 = v324;
              v324 += 2;
              v229 = *v75;
              v152 = v229;
            }

            v151 = v152;
          }

          else
          {
            if ((v318 & 0x400) != 0)
            {
              if (*&v284[4])
              {
                v76 = *v284;
                ++*v284;
                v150 = *(*&v284[4] + 16 * v76);
              }

              else
              {
                *v284 = (*v284 + 1);
                v77 = v324;
                v324 += 2;
                v228 = *v77;
                v150 = v228;
              }

              v149 = v150;
            }

            else
            {
              if ((v318 & 0x800) != 0)
              {
                if (*&v284[4])
                {
                  v78 = *v284;
                  ++*v284;
                  v148 = *(*&v284[4] + 16 * v78);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v79 = v324;
                  v324 += 2;
                  v227 = *v79;
                  v148 = v227;
                }

                v147 = v148;
              }

              else
              {
                if (*&v284[4])
                {
                  v80 = *v284;
                  ++*v284;
                  v146 = *(*&v284[4] + 16 * v80);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v81 = v324;
                  v324 += 2;
                  v226 = *v81;
                  v146 = v226;
                }

                v147 = v146;
              }

              v149 = v147;
            }

            v151 = v149;
          }

          v295 = v151;
        }

        else
        {
          if ((v318 & 0x10) != 0)
          {
            if (*&v284[4])
            {
              v82 = *v284;
              ++*v284;
              v145 = *(*&v284[4] + 16 * v82);
            }

            else
            {
              *v284 = (*v284 + 1);
              v83 = v324;
              v324 += 2;
              v225 = *v83;
              v145 = v225;
            }

            v144 = v145;
          }

          else
          {
            if ((v318 & 0x40) != 0)
            {
              if (*&v284[4])
              {
                v84 = *v284;
                ++*v284;
                v143 = *(*&v284[4] + 16 * v84);
              }

              else
              {
                *v284 = (*v284 + 1);
                v85 = v324;
                v324 += 2;
                v224 = *v85;
                LOWORD(v143) = v224;
              }

              v142 = v143;
            }

            else
            {
              if ((v318 & 0x2000) != 0)
              {
                if (*&v284[4])
                {
                  v86 = *v284;
                  ++*v284;
                  v141 = *(*&v284[4] + 16 * v86);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v87 = v324;
                  v324 += 2;
                  v223 = *v87;
                  LOBYTE(v141) = v223;
                }

                v140 = v141;
              }

              else
              {
                if (*&v284[4])
                {
                  v88 = *v284;
                  ++*v284;
                  v139 = *(*&v284[4] + 16 * v88);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v89 = v324;
                  v324 += 2;
                  v222 = *v89;
                  v139 = v222;
                }

                v140 = v139;
              }

              v142 = v140;
            }

            v144 = v142;
          }

          v296 = v144;
        }

        v294 = 10;
        goto LABEL_442;
      case 'v':
        v318 |= 0x4000u;
        continue;
      case 'x':
        v289 = &__vfprintf_xdigs_lower;
LABEL_389:
        if ((v318 & 0x4000) != 0)
        {
          goto LABEL_466;
        }

        if ((v318 & 0x1C20) != 0)
        {
          if ((v318 & 0x1000) != 0)
          {
            if (*&v284[4])
            {
              v90 = *v284;
              ++*v284;
              v138 = *(*&v284[4] + 16 * v90);
            }

            else
            {
              *v284 = (*v284 + 1);
              v91 = v324;
              v324 += 2;
              v221 = *v91;
              v138 = v221;
            }

            v137 = v138;
          }

          else
          {
            if ((v318 & 0x400) != 0)
            {
              if (*&v284[4])
              {
                v92 = *v284;
                ++*v284;
                v136 = *(*&v284[4] + 16 * v92);
              }

              else
              {
                *v284 = (*v284 + 1);
                v93 = v324;
                v324 += 2;
                v220 = *v93;
                v136 = v220;
              }

              v135 = v136;
            }

            else
            {
              if ((v318 & 0x800) != 0)
              {
                if (*&v284[4])
                {
                  v94 = *v284;
                  ++*v284;
                  v134 = *(*&v284[4] + 16 * v94);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v95 = v324;
                  v324 += 2;
                  v219 = *v95;
                  v134 = v219;
                }

                v133 = v134;
              }

              else
              {
                if (*&v284[4])
                {
                  v96 = *v284;
                  ++*v284;
                  v132 = *(*&v284[4] + 16 * v96);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v97 = v324;
                  v324 += 2;
                  v218 = *v97;
                  v132 = v218;
                }

                v133 = v132;
              }

              v135 = v133;
            }

            v137 = v135;
          }

          v295 = v137;
        }

        else
        {
          if ((v318 & 0x10) != 0)
          {
            if (*&v284[4])
            {
              v98 = *v284;
              ++*v284;
              v131 = *(*&v284[4] + 16 * v98);
            }

            else
            {
              *v284 = (*v284 + 1);
              v99 = v324;
              v324 += 2;
              v217 = *v99;
              v131 = v217;
            }

            v130 = v131;
          }

          else
          {
            if ((v318 & 0x40) != 0)
            {
              if (*&v284[4])
              {
                v100 = *v284;
                ++*v284;
                v129 = *(*&v284[4] + 16 * v100);
              }

              else
              {
                *v284 = (*v284 + 1);
                v101 = v324;
                v324 += 2;
                v216 = *v101;
                LOWORD(v129) = v216;
              }

              v128 = v129;
            }

            else
            {
              if ((v318 & 0x2000) != 0)
              {
                if (*&v284[4])
                {
                  v102 = *v284;
                  ++*v284;
                  v127 = *(*&v284[4] + 16 * v102);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v103 = v324;
                  v324 += 2;
                  v215 = *v103;
                  LOBYTE(v127) = v215;
                }

                v126 = v127;
              }

              else
              {
                if (*&v284[4])
                {
                  v104 = *v284;
                  ++*v284;
                  v125 = *(*&v284[4] + 16 * v104);
                }

                else
                {
                  *v284 = (*v284 + 1);
                  v105 = v324;
                  v324 += 2;
                  v214 = *v105;
                  v125 = v214;
                }

                v126 = v125;
              }

              v128 = v126;
            }

            v130 = v128;
          }

          v296 = v130;
        }

        v294 = 16;
        if ((v318 & 1) == 0)
        {
          goto LABEL_441;
        }

        if ((v318 & 0x1C20) != 0)
        {
          if (!v295)
          {
            goto LABEL_441;
          }
        }

        else if (!v296)
        {
          goto LABEL_441;
        }

        v286 = v322;
LABEL_441:
        v318 &= ~0x200u;
LABEL_442:
        v314 = 0;
LABEL_443:
        v293 = __n;
        if ((__n & 0x80000000) == 0)
        {
          v318 &= ~0x80u;
        }

        __s1 = v332;
        if ((v318 & 0x1C20) != 0)
        {
          if (v295 || __n || (v318 & 1) != 0 && v294 == 8)
          {
            __s1 = __ujtoa(v295, __s1, v294, v318 & 1, v289);
          }
        }

        else if (v296 || __n || (v318 & 1) != 0 && v294 == 8)
        {
          __s1 = __ultoa(v296, __s1, v294, v318 & 1, v289);
        }

        v291 = v331 - __s1 + 32;
        if (v291 >= 33)
        {
          abort_report_np("%s:%s:%u: size (%zd) > BUF (%d)");
        }

        if ((v318 & 0x200) != 0 && v291)
        {
          v106 = grouping_init(&v311, v291, v326);
          v291 += v106;
        }

        goto LABEL_466;
      case 'z':
        v318 |= 0x400u;
        continue;
      default:
        if (!v322)
        {
          goto LABEL_718;
        }

        __s1 = v331;
        v331[0] = v322;
        v291 = 1;
        v314 = 0;
        goto LABEL_466;
    }
  }
}

uint64_t io_init(uint64_t result, uint64_t a2)
{
  *(result + 8) = result + 24;
  *(result + 20) = 0;
  *(result + 16) = 0;
  *result = a2;
  return result;
}

uint64_t io_print(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    return __sprint(*a1, a4, (a1 + 8));
  }
}

uint64_t exponent(_BYTE *a1, int a2, char a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v10 = 0;
  v11 = a1 + 1;
  *a1 = a3;
  if (v13 < 0)
  {
    v13 = -v13;
    v3 = v11++;
    *v3 = 45;
  }

  else
  {
    v4 = v11++;
    *v4 = 43;
  }

  v10 = &v10;
  if (v13 <= 9)
  {
    if (v12 == 101 || v12 == 69)
    {
      v7 = v11++;
      *v7 = 48;
    }

    v8 = v11++;
    *v8 = v13 + 48;
  }

  else
  {
    do
    {
      *--v10 = v13 % 10 + 48;
      v13 /= 10;
    }

    while (v13 > 9);
    *--v10 = v13 + 48;
    while (v10 < &v10)
    {
      v5 = v10++;
      LOBYTE(v5) = *v5;
      v6 = v11++;
      *v6 = v5;
    }
  }

  return v11 - v14;
}

uint64_t grouping_init(uint64_t a1, int a2, _xlocale *a3)
{
  v4 = localeconv_l(a3);
  *(a1 + 16) = __fix_nogrouping(v4->grouping);
  *a1 = v4->thousands_sep;
  *(a1 + 8) = strlen(*a1);
  *(a1 + 32) = 0;
  *(a1 + 28) = 0;
  *(a1 + 24) = a2;
  while (**(a1 + 16) != 127 && *(a1 + 24) > **(a1 + 16))
  {
    *(a1 + 24) -= **(a1 + 16);
    if (*(*(a1 + 16) + 1))
    {
      ++*(a1 + 28);
      ++*(a1 + 16);
    }

    else
    {
      ++*(a1 + 32);
    }
  }

  return ((*(a1 + 28) + *(a1 + 32)) * *(a1 + 8));
}

char *__wcsconv(const __int32 *a1, int a2, _xlocale *a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  memset(&__b, 0, sizeof(__b));
  v9 = 0;
  if (v12 < 0)
  {
    v9 = v13;
    memcpy(&__b, &__wcsconv_initial, sizeof(__b));
    v5 = wcsrtombs_l(0, &v9, 0, &__b, v11);
    if (v5 == -1)
    {
      return 0;
    }
  }

  else if (v12 >= 128)
  {
    v5 = 0;
    v9 = v13;
    memcpy(&__b, &__wcsconv_initial, sizeof(__b));
    while (1)
    {
      v3 = v9++;
      v7 = wcrtomb_l(v10, *v3, &__b, v11);
      if (!v7 || v7 == -1 || v5 + v7 > v12)
      {
        break;
      }

      v5 += v7;
    }
  }

  else
  {
    v5 = v12;
  }

  v8 = malloc_type_malloc();
  if (!v8)
  {
    return 0;
  }

  v9 = v13;
  memcpy(&__b, &__wcsconv_initial, sizeof(__b));
  v6 = wcsrtombs_l(v8, &v9, v5, &__b, v11);
  if (v6 == -1)
  {
    free(v8);
    return 0;
  }

  else
  {
    v8[v6] = 0;
    return v8;
  }
}

_BYTE *__ultoa(unint64_t a1, _BYTE *a2, int a3, int a4, uint64_t a5)
{
  v8 = a1;
  v7 = a2;
  if (a3 == 8)
  {
    do
    {
      *--v7 = (v8 & 7) + 48;
      v8 >>= 3;
    }

    while (v8);
    if (a4 && *v7 != 48)
    {
      *--v7 = 48;
    }

    return v7;
  }

  if (a3 != 10)
  {
    if (a3 != 16)
    {
      abort_report_np("%s:%s:%u: __ultoa: invalid base=%d");
    }

    do
    {
      *--v7 = *(a5 + (v8 & 0xF));
      v8 >>= 4;
    }

    while (v8);
    return v7;
  }

  if (a1 >= 0xA)
  {
    if (a1 > 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = a2 - 1;
      *(a2 - 1) = a1 % 0xA + 48;
      v6 = a1 / 0xA;
    }

    else
    {
      v6 = a1;
    }

    do
    {
      *--v7 = v6 % 10 + 48;
      v6 /= 10;
    }

    while (v6);
    return v7;
  }

  *(a2 - 1) = a1 + 48;
  return a2 - 1;
}

uint64_t io_pad(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
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

    if (io_print(a1, a3, v5, a4))
    {
      return -1;
    }

    a2 -= v5;
  }

  return 0;
}

uint64_t grouping_print(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (io_printandpad(a2, a3, a4, *(a1 + 24), &zeroes, a5))
  {
    return -1;
  }

  else
  {
    for (i = a3 + *(a1 + 24); ; i += **(a1 + 16))
    {
      v6 = 1;
      if (*(a1 + 28) <= 0)
      {
        v6 = *(a1 + 32) > 0;
      }

      if (!v6)
      {
        break;
      }

      if (*(a1 + 32) <= 0)
      {
        --*(a1 + 16);
        --*(a1 + 28);
      }

      else
      {
        --*(a1 + 32);
      }

      if (io_print(a2, *a1, *(a1 + 8), a5))
      {
        return -1;
      }

      if (io_printandpad(a2, i, a4, **(a1 + 16), &zeroes, a5))
      {
        return -1;
      }
    }

    if (i > a4)
    {
      LODWORD(i) = a4;
    }

    return (i - v7);
  }
}

uint64_t io_printandpad(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = a3 - a2;
  if (a3 - a2 > a4)
  {
    v7 = a4;
  }

  if (v7 <= 0)
  {
    v7 = 0;
    return io_pad(a1, a4 - v7, a5, a6);
  }

  if (!io_print(a1, a2, v7, a6))
  {
    return io_pad(a1, a4 - v7, a5, a6);
  }

  return -1;
}

uint64_t __sprint(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[3])
  {
    v3 = __sfvwrite(a1, a3);
    a3[3] = 0;
    a3[2] = 0;
    return v3;
  }

  else
  {
    a3[2] = 0;
    return 0;
  }
}

int vfscanf(FILE *__stream, const char *__format, va_list a3)
{
  libc_hooks_will_write(__stream, 152);
  flockfile(__stream);
  v10 = __locale_key;
  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v10);
  if (v9)
  {
    v3 = __svfscanf_l(__stream, v9, __format, a3);
  }

  else
  {
    v3 = __svfscanf_l(__stream, __global_locale, __format, a3);
  }

  v5 = v3;
  funlockfile(__stream);
  return v5;
}

uint64_t __svfscanf_l(int *a1, _xlocale *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v106 = a1;
  v105 = a2;
  v104 = a3;
  v103 = a4;
  v102 = a3;
  v101 = 0;
  v100 = 0;
  memset(v99, 0, sizeof(v99));
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  base = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  memset(&__b, 0, sizeof(__b));
  v89 = 0;
  libc_hooks_will_write(v105, 1472);
  libc_hooks_will_read_cstring(v104);
  if (v105)
  {
    if (v105 == -1)
    {
      v105 = __global_locale;
    }
  }

  else
  {
    v105 = &__c_locale;
  }

  v89 = *(*(v105 + 166) + 64);
  if (!((32 * *(*(v106 + 13) + 72)) >> 5))
  {
    *(*(v106 + 13) + 72) = *(*(v106 + 13) + 72) & 0xF8 | 7;
  }

  v96 = 0;
  v95 = 0;
  v90 = v103;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_8:
          v4 = v102++;
          v101 = *v4;
          if (!v101)
          {
            return v96;
          }

          if (!isspace_l(v101, v105))
          {
            break;
          }

          while (1)
          {
            if (v106[2] > 0 || (v32 = 0, !__srefill(v106)))
            {
              v32 = isspace_l(**v106, v105) != 0;
            }

            if (!v32)
            {
              break;
            }

            ++v95;
            --v106[2];
            ++*v106;
          }
        }

        if (v101 == 37)
        {
          break;
        }

        if (v106[2] <= 0 && __srefill(v106))
        {
          goto LABEL_311;
        }

LABEL_27:
        if (**v106 != v101)
        {
          return v96;
        }

        --v106[2];
        ++*v106;
        ++v95;
      }

      v100 = 0;
      v98 = 0;
      while (2)
      {
        v5 = v102++;
        v101 = *v5;
        switch(v101)
        {
          case 0:
            return -1;
          case 36:
            v91 = v100;
            if (v100 < 1 || v91 > 9 || *(v102 - 3) != 37)
            {
              goto LABEL_311;
            }

            v100 = 0;
            v103 = v90;
            while (v91 > 1)
            {
              v6 = *v103++;
              v88 = v6;
              --v91;
            }

            continue;
          case 37:
            while (2)
            {
              if (v106[2] <= 0 && __srefill(v106))
              {
                goto LABEL_311;
              }

              if (isspace_l(**v106, v105))
              {
                ++v95;
                --v106[2];
                ++*v106;
                continue;
              }

              goto LABEL_27;
            }

          case 42:
            v98 |= 8u;
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
            v100 = 10 * v100 + v101 - 48;
            continue;
          case 65:
          case 69:
          case 70:
          case 71:
          case 97:
          case 101:
          case 102:
          case 103:
            v101 = 4;
            goto LABEL_80;
          case 67:
            v98 |= 1u;
            goto LABEL_60;
          case 76:
            v98 |= 2u;
            continue;
          case 83:
            v98 |= 1u;
            goto LABEL_57;
          case 88:
          case 120:
            v98 |= 0x100u;
            v101 = 3;
            v98 |= 0x8000u;
            base = 16;
            goto LABEL_80;
          case 91:
            v102 = __sccl(v110, v102, v105);
            v98 |= 0x20u;
            v101 = 1;
            goto LABEL_80;
          case 99:
LABEL_60:
            v98 |= 0x20u;
            v101 = 0;
            goto LABEL_80;
          case 100:
            v101 = 3;
            base = 10;
            goto LABEL_80;
          case 104:
            if ((v98 & 4) != 0)
            {
              v98 &= ~4u;
              v98 |= 0x4000u;
            }

            else
            {
              v98 |= 4u;
            }

            continue;
          case 105:
            v101 = 3;
            base = 0;
            goto LABEL_80;
          case 106:
            v98 |= 0x800u;
            continue;
          case 108:
            if (v98)
            {
              v98 &= ~1u;
              v98 |= 0x400u;
            }

            else
            {
              v98 |= 1u;
            }

            continue;
          case 110:
            if ((v98 & 8) == 0)
            {
              v7 = *v103++;
              v86 = v7;
              v87 = v7;
              if (v7)
              {
                if ((v98 & 0x4000) != 0)
                {
                  v85 = v95;
                  v84 = v87;
                  libc_hooks_will_write(v87, 1);
                  *v84 = v85;
                }

                else if ((v98 & 4) != 0)
                {
                  v83 = v95;
                  v82 = v87;
                  libc_hooks_will_write(v87, 2);
                  *v82 = v83;
                }

                else if (v98)
                {
                  v81 = v95;
                  v80 = v87;
                  libc_hooks_will_write(v87, 8);
                  *v80 = v81;
                }

                else if ((v98 & 0x400) != 0)
                {
                  v79 = v95;
                  v78 = v87;
                  libc_hooks_will_write(v87, 8);
                  *v78 = v79;
                }

                else if ((v98 & 0x800) != 0)
                {
                  v77 = v95;
                  v76 = v87;
                  libc_hooks_will_write(v87, 8);
                  *v76 = v77;
                }

                else if ((v98 & 0x2000) != 0)
                {
                  v75 = v95;
                  v74 = v87;
                  libc_hooks_will_write(v87, 8);
                  *v74 = v75;
                }

                else if ((v98 & 0x1000) != 0)
                {
                  v73 = v95;
                  v72 = v87;
                  libc_hooks_will_write(v87, 8);
                  *v72 = v73;
                }

                else
                {
                  v71 = v95;
                  v70 = v87;
                  libc_hooks_will_write(v87, 4);
                  *v70 = v71;
                }
              }
            }

            goto LABEL_8;
          case 111:
            v101 = 3;
            v98 |= 0x8000u;
            base = 8;
            goto LABEL_80;
          case 112:
            v98 |= 0x110u;
            v101 = 3;
            v98 |= 0x8000u;
            base = 16;
            goto LABEL_80;
          case 113:
            v98 |= 0x400u;
            continue;
          case 115:
LABEL_57:
            v101 = 2;
            goto LABEL_80;
          case 116:
            v98 |= 0x1000u;
            continue;
          case 117:
            v101 = 3;
            v98 |= 0x8000u;
            base = 10;
LABEL_80:
            if (v106[2] <= 0 && __srefill(v106))
            {
              goto LABEL_311;
            }

            if ((v98 & 0x20) != 0)
            {
              goto LABEL_88;
            }

            break;
          case 122:
            v98 |= 0x2000u;
            continue;
          default:
            return v96;
        }

        break;
      }

      while (isspace_l(**v106, v105))
      {
        ++v95;
        v8 = v106[2] - 1;
        v106[2] = v8;
        if (v8 <= 0)
        {
          if (__srefill(v106))
          {
            goto LABEL_311;
          }
        }

        else
        {
          ++*v106;
        }
      }

LABEL_88:
      if (!v101)
      {
        if (!v100)
        {
          v100 = 1;
        }

        if (v98)
        {
          if ((v98 & 8) != 0)
          {
            v93 = 0;
          }

          else
          {
            v9 = *v103++;
            v69 = v9;
            v93 = v9;
          }

          v99[0] = 0;
          do
          {
            if (!v100)
            {
              goto LABEL_119;
            }

            if (v99[0] == v89)
            {
              *(v106 + 8) |= 0x40u;
              goto LABEL_311;
            }

            v10 = **v106;
            v11 = v99[0]++;
            nptr[v11] = v10;
            ++*v106;
            --v106[2];
            memcpy(&__b, &__svfscanf_l_initial, sizeof(__b));
            v92 = mbrtowc_l(v93, nptr, v99[0], &__b, v105);
            if (v92 == -1)
            {
              *(v106 + 8) |= 0x40u;
              goto LABEL_311;
            }

            if (!v92 && (v98 & 8) == 0)
            {
              *v93 = 0;
            }

            if (v92 != -2)
            {
              v95 += v99[0];
              --v100;
              if ((v98 & 8) == 0)
              {
                ++v93;
              }

              v99[0] = 0;
            }
          }

          while (v106[2] > 0 || !__srefill(v106));
          if (!v99[0])
          {
LABEL_119:
            if ((v98 & 8) == 0)
            {
              ++v96;
            }

            goto LABEL_8;
          }

          *(v106 + 8) |= 0x40u;
        }

        else
        {
          if ((v98 & 8) != 0)
          {
            v68 = 0;
            while (1)
            {
              v99[0] = v106[2];
              if (v99[0] >= v100)
              {
                break;
              }

              v68 += v99[0];
              v100 -= v99[0];
              *v106 += v99[0];
              if (__srefill(v106))
              {
                if (!v68)
                {
                  goto LABEL_311;
                }

LABEL_130:
                v95 += v68;
                goto LABEL_8;
              }
            }

            v68 += v100;
            v106[2] -= v100;
            *v106 += v100;
            goto LABEL_130;
          }

          v12 = *v103++;
          v66 = v12;
          v67 = __fread(v12, 1uLL, v100, v106);
          if (v67)
          {
            v95 += v67;
            ++v96;
            goto LABEL_8;
          }
        }

LABEL_311:
        if (v96)
        {
          return v96;
        }

        else
        {
          return -1;
        }
      }

      if (v101 == 1)
      {
        if (!v100)
        {
          v100 = -1;
        }

        if ((v98 & 1) == 0)
        {
          if ((v98 & 8) != 0)
          {
            v99[0] = 0;
            do
            {
              if (v110[**v106])
              {
                ++v99[0];
                --v106[2];
                ++*v106;
                if (--v100)
                {
                  continue;
                }
              }

              goto LABEL_177;
            }

            while (v106[2] > 0 || !__srefill(v106));
            if (!v99[0])
            {
              goto LABEL_311;
            }

LABEL_177:
            if (!v99[0])
            {
              return v96;
            }

            goto LABEL_189;
          }

          v16 = *v103++;
          v62 = v16;
          *&v99[1] = v16;
          v97 = v16;
          do
          {
            if (v110[**v106])
            {
              --v106[2];
              v17 = (*v106)++;
              LOBYTE(v17) = *v17;
              v18 = (*&v99[1])++;
              *v18 = v17;
              if (--v100)
              {
                continue;
              }
            }

            goto LABEL_187;
          }

          while (v106[2] > 0 || !__srefill(v106));
          if (*&v99[1] == v97)
          {
            goto LABEL_311;
          }

LABEL_187:
          v99[0] = v99[1] - v97;
          if (v99[1] == v97)
          {
            return v96;
          }

          **&v99[1] = 0;
          ++v96;
          libc_hooks_will_read_cstring(v97);
          goto LABEL_189;
        }

        v65 = 0;
        v64 = 0;
        if ((v98 & 8) != 0)
        {
          v93 = &v65;
        }

        else
        {
          v13 = *v103++;
          v63 = v13;
          v93 = v13;
        }

        v99[0] = 0;
        v64 = 0;
        do
        {
          if (!v100)
          {
            goto LABEL_162;
          }

          if (v99[0] == v89)
          {
            *(v106 + 8) |= 0x40u;
            goto LABEL_311;
          }

          v14 = **v106;
          v15 = v99[0]++;
          nptr[v15] = v14;
          ++*v106;
          --v106[2];
          memcpy(&__b, &__svfscanf_l_initial, sizeof(__b));
          v92 = mbrtowc_l(&v65, nptr, v99[0], &__b, v105);
          if (v92 == -1)
          {
            *(v106 + 8) |= 0x40u;
            goto LABEL_311;
          }

          if (!v92)
          {
            v65 = 0;
          }

          if (v92 != -2)
          {
            if (wctob_l(v65, v105) != -1 && !v110[wctob_l(v65, v105)])
            {
              while (v99[0])
              {
                __ungetc(nptr[--v99[0]], v106);
              }

LABEL_162:
              if (v99[0])
              {
                *(v106 + 8) |= 0x40u;
                goto LABEL_311;
              }

              v99[0] = v64;
              if (!v64)
              {
                return v96;
              }

              if ((v98 & 8) == 0)
              {
                *v93 = 0;
                ++v96;
              }

LABEL_189:
              v95 += v99[0];
              goto LABEL_8;
            }

            v95 += v99[0];
            --v100;
            if ((v98 & 8) == 0)
            {
              *v93++ = v65;
            }

            ++v64;
            v99[0] = 0;
          }
        }

        while (v106[2] > 0 || !__srefill(v106));
        if (!v99[0])
        {
          goto LABEL_162;
        }

        *(v106 + 8) |= 0x40u;
        goto LABEL_311;
      }

      if (v101 != 2)
      {
        break;
      }

      if (!v100)
      {
        v100 = -1;
      }

      if ((v98 & 1) == 0)
      {
        if ((v98 & 8) != 0)
        {
          v99[0] = 0;
          do
          {
            if (isspace_l(**v106, v105))
            {
              break;
            }

            ++v99[0];
            --v106[2];
            ++*v106;
            if (!--v100)
            {
              break;
            }
          }

          while (v106[2] > 0 || !__srefill(v106));
          v95 += v99[0];
        }

        else
        {
          v22 = *v103++;
          v59 = v22;
          *&v99[1] = v22;
          v97 = v22;
          do
          {
            if (isspace_l(**v106, v105))
            {
              break;
            }

            --v106[2];
            v23 = (*v106)++;
            LOBYTE(v23) = *v23;
            v24 = (*&v99[1])++;
            *v24 = v23;
            if (!--v100)
            {
              break;
            }
          }

          while (v106[2] > 0 || !__srefill(v106));
          **&v99[1] = 0;
          v95 += v99[1] - v97;
          ++v96;
          libc_hooks_will_read_cstring(v97);
        }

        goto LABEL_8;
      }

      v61 = 0;
      if ((v98 & 8) != 0)
      {
        v93 = &v61;
      }

      else
      {
        v19 = *v103++;
        v60 = v19;
        v93 = v19;
      }

      v99[0] = 0;
      do
      {
        if (!v100)
        {
          goto LABEL_218;
        }

        if (v99[0] == v89)
        {
          *(v106 + 8) |= 0x40u;
          goto LABEL_311;
        }

        v20 = **v106;
        v21 = v99[0]++;
        nptr[v21] = v20;
        ++*v106;
        --v106[2];
        memcpy(&__b, &__svfscanf_l_initial, sizeof(__b));
        v92 = mbrtowc_l(v93, nptr, v99[0], &__b, v105);
        if (v92 == -1)
        {
          *(v106 + 8) |= 0x40u;
          goto LABEL_311;
        }

        if (!v92)
        {
          *v93 = 0;
        }

        if (v92 != -2)
        {
          if (iswspace_l(*v93, v105))
          {
            while (v99[0])
            {
              __ungetc(nptr[--v99[0]], v106);
            }

            goto LABEL_218;
          }

          v95 += v99[0];
          --v100;
          if ((v98 & 8) == 0)
          {
            ++v93;
          }

          v99[0] = 0;
        }
      }

      while (v106[2] > 0 || !__srefill(v106));
      if (v99[0])
      {
        *(v106 + 8) |= 0x40u;
        goto LABEL_311;
      }

LABEL_218:
      if ((v98 & 8) == 0)
      {
        *v93 = 0;
        ++v96;
      }
    }

    if (v101 == 3)
    {
      break;
    }

    if (v101 == 4)
    {
      v37 = 0;
      v28 = parsefloat(v106, &v37, v100, v105);
      v100 = v28;
      if (!v28)
      {
        return v96;
      }

      if ((v98 & 8) == 0)
      {
        v29 = *v103++;
        v36 = v29;
        if ((v98 & 2) != 0)
        {
          v35 = strtold_l(v37, &v99[1], v105);
          libc_hooks_will_write(v36, 8);
          *v36 = v35;
        }

        else if (v98)
        {
          v34 = strtod_l(v37, &v99[1], v105);
          libc_hooks_will_write(v36, 8);
          *v36 = v34;
        }

        else
        {
          v33 = strtof_l(v37, &v99[1], v105);
          libc_hooks_will_write(v36, 4);
          *v36 = v33;
        }

        ++v96;
      }

      v95 += v100;
    }
  }

  if (--v100 > 0x1FF)
  {
    v100 = 511;
  }

  ++v100;
  v98 |= 0x2C0u;
  *&v99[1] = nptr;
  while (v100)
  {
    v101 = **v106;
    if (v101 == 43 || v101 == 45)
    {
      if ((v98 & 0x40) == 0)
      {
        break;
      }

      v98 &= ~0x40u;
      v98 |= 0x10000u;
    }

    else
    {
      if (v101 == 48)
      {
        if (!base)
        {
          base = 8;
          v98 |= 0x100u;
        }

        if ((v98 & 0x200) != 0)
        {
          v98 &= 0xFFFFFD3F;
        }

        else
        {
          v98 &= 0xFFFFFE3F;
        }

        goto LABEL_268;
      }

      if ((v101 - 49) <= 6)
      {
        base = __svfscanf_l_basefix[base];
        v98 &= 0xFFFFFE3F;
        goto LABEL_268;
      }

      if (v101 == 57 || v101 == 56)
      {
        base = __svfscanf_l_basefix[base];
        if (base <= 8)
        {
          break;
        }

        v98 &= 0xFFFFFE3F;
        goto LABEL_268;
      }

      if ((v101 - 65) <= 5)
      {
LABEL_259:
        if (base <= 10)
        {
          break;
        }

        v98 &= 0xFFFFFE3F;
        goto LABEL_268;
      }

      if (v101 != 88)
      {
        if ((v101 - 97) <= 5)
        {
          goto LABEL_259;
        }

        if (v101 != 120)
        {
          break;
        }
      }

      if ((v98 & 0x100) == 0 || *&v99[1] != &nptr[((v98 & 0x10000) != 0) + 1])
      {
        break;
      }

      base = 16;
      v98 &= ~0x100u;
    }

LABEL_268:
    v25 = (*&v99[1])++;
    *v25 = v101;
    v26 = v106[2] - 1;
    v106[2] = v26;
    if (v26 <= 0)
    {
      if (__srefill(v106))
      {
        break;
      }
    }

    else
    {
      ++*v106;
    }

    --v100;
  }

  if ((v98 & 0x80) == 0)
  {
    v101 = *(*&v99[1] - 1);
    if (v101 == 120 || v101 == 88)
    {
      --*&v99[1];
      __ungetc(v101, v106);
    }

    if ((v98 & 8) == 0)
    {
      v58 = 0;
      **&v99[1] = 0;
      if ((v98 & 0x8000) != 0)
      {
        v58 = strtoumax_l(nptr, 0, base, v105);
      }

      else
      {
        v58 = strtoimax_l(nptr, 0, base, v105);
      }

      v27 = *v103++;
      v56 = v27;
      v57 = v27;
      if ((v98 & 0x10) != 0)
      {
        v55 = v58;
        v54 = v57;
        libc_hooks_will_write(v57, 8);
        *v54 = v55;
      }

      else if ((v98 & 0x4000) != 0)
      {
        v53 = v58;
        v52 = v57;
        libc_hooks_will_write(v57, 1);
        *v52 = v53;
      }

      else if ((v98 & 4) != 0)
      {
        v51 = v58;
        v50 = v57;
        libc_hooks_will_write(v57, 2);
        *v50 = v51;
      }

      else if (v98)
      {
        v49 = v58;
        v48 = v57;
        libc_hooks_will_write(v57, 8);
        *v48 = v49;
      }

      else if ((v98 & 0x400) != 0)
      {
        v47 = v58;
        v46 = v57;
        libc_hooks_will_write(v57, 8);
        *v46 = v47;
      }

      else if ((v98 & 0x800) != 0)
      {
        v45 = v58;
        v44 = v57;
        libc_hooks_will_write(v57, 8);
        *v44 = v45;
      }

      else if ((v98 & 0x1000) != 0)
      {
        v43 = v58;
        v42 = v57;
        libc_hooks_will_write(v57, 8);
        *v42 = v43;
      }

      else if ((v98 & 0x2000) != 0)
      {
        v41 = v58;
        v40 = v57;
        libc_hooks_will_write(v57, 8);
        *v40 = v41;
      }

      else
      {
        v39 = v58;
        v38 = v57;
        libc_hooks_will_write(v57, 4);
        *v38 = v39;
      }

      ++v96;
    }

    v95 += *&v99[1] - nptr;
    goto LABEL_8;
  }

  if (*&v99[1] > nptr)
  {
    --*&v99[1];
    __ungetc(**&v99[1], v106);
  }

  return v96;
}