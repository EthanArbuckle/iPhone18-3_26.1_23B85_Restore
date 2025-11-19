uintmax_t strtoumax(const char *__nptr, char **__endptr, int __base)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return strtoumax_l(__nptr, __endptr, __base, v4);
  }

  else
  {
    return strtoumax_l(__nptr, __endptr, __base, __global_locale);
  }
}

unint64_t strtouq(const char *__str, char **__endptr, int __base)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return strtoull_l(__str, __endptr, __base, v4);
  }

  else
  {
    return strtoull_l(__str, __endptr, __base, __global_locale);
  }
}

uint64_t system_NOCANCEL(uint64_t a1)
{
  v17 = a1;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12.__sigaction_u.__sa_handler = 0;
  *&v12.sa_mask = 0;
  v11.__sigaction_u.__sa_handler = 0;
  *&v11.sa_mask = 0;
  v10.__sigaction_u.__sa_handler = 0;
  *&v10.sa_mask = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 8;
  __argv[0] = "sh";
  __argv[1] = "-c";
  v23 = a1;
  v24 = 0;
  if (!__unix_conforming)
  {
    __unix_conforming = 1;
  }

  if (v17)
  {
    v13 = posix_spawnattr_init(&v6);
    if (v13)
    {
      v4 = v13;
      *__error() = v4;
      return -1;
    }

    else
    {
      v7 = 0;
      pthread_mutex_lock(&__systemfn_mutex);
      v12.__sigaction_u.__sa_handler = (&dword_0 + 1);
      v12.sa_mask = 0;
      v12.sa_flags = 0;
      sigaction(2, &v12, &v11);
      if (v11.__sigaction_u.__sa_handler != (&dword_0 + 1))
      {
        v21 = 2;
        v7 |= 2u;
        v5 = 12;
      }

      sigaction(3, &v12, &v10);
      if (v10.__sigaction_u.__sa_handler != (&dword_0 + 1))
      {
        v20 = 3;
        v7 |= 4u;
        v5 |= 4u;
      }

      v19 = 20;
      v9 = 0x80000;
      sigprocmask(1, &v9, &v8);
      posix_spawnattr_setsigmask(&v6, &v8);
      if ((v5 & 4) != 0)
      {
        posix_spawnattr_setsigdefault(&v6, &v7);
      }

      posix_spawnattr_setflags(&v6, v5);
      v1 = _NSGetEnviron();
      v13 = posix_spawn(&v16, "/bin/sh", 0, &v6, __argv, *v1);
      posix_spawnattr_destroy(&v6);
      if (v13)
      {
        if (v13 == 12 || v13 == 35)
        {
          v14 = -1;
        }

        else
        {
          v14 = 32512;
        }
      }

      else
      {
        v15 = v16;
        do
        {
          v16 = wait4(v15, &v14, 0, 0);
          v3 = 0;
          if (v16 == -1)
          {
            v3 = *__error() == 4;
          }
        }

        while (v3);
        if (v16 == -1)
        {
          v14 = -1;
        }
      }

      sigaction(2, &v11, 0);
      sigaction(3, &v10, 0);
      sigprocmask(3, &v8, 0);
      pthread_mutex_unlock(&__systemfn_mutex);
      return v14;
    }
  }

  else
  {
    return access("/bin/sh", 0) != -1;
  }
}

void *__cdecl tdelete(const void *a1, void **a2, int (__cdecl *a3)(const void *, const void *))
{
  v9 = a2;
  if (!a2)
  {
    return 0;
  }

  v8 = *a2;
  if (!*a2)
  {
    return 0;
  }

  while (1)
  {
    v5 = (a3)(a1, **v9);
    if (!v5)
    {
      break;
    }

    v8 = *v9;
    if (v5 < 0)
    {
      v4 = (*v9 + 8);
    }

    else
    {
      v4 = (*v9 + 16);
    }

    v9 = v4;
    if (!*v4)
    {
      return 0;
    }
  }

  v6 = *(*v9 + 2);
  i = *(*v9 + 1);
  if (i)
  {
    if (v6)
    {
      if (v6[1])
      {
        for (i = v6[1]; i[1]; i = i[1])
        {
          v6 = i;
        }

        v6[1] = i[2];
        i[1] = *(*v9 + 1);
        i[2] = *(*v9 + 2);
      }

      else
      {
        v6[1] = i;
        i = v6;
      }
    }
  }

  else
  {
    i = *(*v9 + 2);
  }

  free(*v9);
  *v9 = i;
  return v8;
}

void *__cdecl tfind(const void *a1, void *const *a2, int (__cdecl *a3)(const void *, const void *))
{
  v6 = a2;
  if (!a2)
  {
    return 0;
  }

  while (*v6)
  {
    v5 = (a3)(a1, **v6);
    if (!v5)
    {
      return *v6;
    }

    if (v5 < 0)
    {
      v4 = *v6 + 8;
    }

    else
    {
      v4 = *v6 + 16;
    }

    v6 = v4;
  }

  return 0;
}

void *__cdecl tsearch(const void *a1, void **a2, int (__cdecl *a3)(const void *, const void *))
{
  v6 = a2;
  if (!a2)
  {
    return 0;
  }

  while (*v6)
  {
    v5 = (a3)(a1, **v6);
    if (!v5)
    {
      return *v6;
    }

    if (v5 < 0)
    {
      v4 = *v6 + 8;
    }

    else
    {
      v4 = *v6 + 16;
    }

    v6 = v4;
  }

  v7 = malloc_type_malloc();
  if (v7)
  {
    *v6 = v7;
    *v7 = a1;
    v7[2] = 0;
    v7[1] = 0;
  }

  return v7;
}

void twalk(const void *a1, void (__cdecl *a2)(const void *, VISIT, int))
{
  if (a1)
  {
    if (a2)
    {
      trecurse(a1, a2, 0);
    }
  }
}

uint64_t trecurse(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), unsigned int a3)
{
  if (!*(a1 + 8) && !*(a1 + 16))
  {
    return a2(a1, 3, a3);
  }

  a2(a1, 0, a3);
  if (*(a1 + 8))
  {
    trecurse(*(a1 + 8), a2, a3 + 1);
  }

  a2(a1, 1, a3);
  if (*(a1 + 16))
  {
    trecurse(*(a1 + 16), a2, a3 + 1);
  }

  return a2(a1, 2, a3);
}

int posix_openpt(int a1)
{
  v2 = open_NOCANCEL();
  if (v2 < 0)
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

char *__cdecl ptsname(int a1)
{
  if (ptsname_once != -1)
  {
    _os_once();
  }

  v6 = pthread_getspecific(ptsname_buffer_specific_key);
  if (!v6)
  {
    v6 = malloc_type_malloc();
    if (!v6)
    {
      v5 = _os_assert_log(0);
      _os_crash(v5);
      __break(1u);
    }

    v4 = pthread_setspecific(ptsname_buffer_specific_key, v6);
    if (v4)
    {
      v3 = _os_assert_log(v4);
      _os_crash(v3);
      __break(1u);
    }
  }

  if (ptsname_r(a1, v6, 0x80uLL))
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t ptsname_once_init()
{
  result = pthread_key_create(&ptsname_buffer_specific_key, &_free);
  if (result)
  {
    v1 = _os_assert_log(result);
    result = _os_crash(v1);
    __break(1u);
  }

  return result;
}

int ptsname_r(int fildes, char *buffer, size_t buflen)
{
  v9 = fildes;
  v8 = buffer;
  __size = buflen;
  v6 = 0;
  memset(&__b, 0, sizeof(__b));
  if (v8)
  {
    v6 = ioctl(v9, 0x40807453uLL, __source);
    if (v6)
    {
      return -1;
    }

    else
    {
      v6 = stat(__source, &__b);
      if (v6)
      {
        return -1;
      }

      else
      {
        v3 = strlcpy(v8, __source, __size);
        if (v3 < __size)
        {
          return 0;
        }

        else
        {
          *__error() = 34;
          return -1;
        }
      }
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

char *__cdecl l64a(uint64_t a1)
{
  v6 = a1;
  v5 = &l64a_buf;
  for (i = 0; ; ++i)
  {
    v2 = 0;
    if (v6)
    {
      v2 = i < 6;
    }

    if (!v2)
    {
      break;
    }

    v4 = v6 & 0x3F;
    if ((v6 & 0x3Fu) >= 2)
    {
      if ((v6 & 0x3Fu) >= 0xC)
      {
        if ((v6 & 0x3Fu) >= 0x26)
        {
          *v5 = v4 + 59;
        }

        else
        {
          *v5 = v4 + 53;
        }
      }

      else
      {
        *v5 = v4 + 46;
      }
    }

    else
    {
      *v5 = v4 + 46;
    }

    v6 >>= 6;
    ++v5;
  }

  *v5 = 0;
  return &l64a_buf;
}

const char *__cvt(int a1, _DWORD *a2, _DWORD *a3, int a4, int a5, double a6)
{
  v20 = a6;
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  __source = 0;
  v13 = 0;
  if (!a1)
  {
    *v17 = v20 < 0.0;
    *v18 = 0;
    return &unk_C42B5;
  }

  if (__cvt_s)
  {
    free(__cvt_s);
    __cvt_s = 0;
  }

  if (v19 < 0)
  {
    __size = 1 - v19;
  }

  else
  {
    __size = v19 + 1;
  }

  if (v20 == 0.0)
  {
    *v18 = 1 - v16;
    *v17 = 0;
    __cvt_s = malloc_type_malloc();
    v13 = __cvt_s;
    if (!__cvt_s)
    {
      return 0;
    }

    v6 = v13++;
    *v6 = 48;
    *v13 = 0;
    goto LABEL_24;
  }

  __source = __dtoa(v16 + 2, v19, v18, v17, &v13, v20);
  if (!__source)
  {
    return 0;
  }

  if (*v18 != 9999)
  {
    if (v15 && v16)
    {
      __size += *v18;
    }

    __cvt_s = malloc_type_malloc();
    if (!__cvt_s)
    {
      __freedtoa(__source);
      return 0;
    }

    strlcpy(__cvt_s, __source, __size);
    v13 = (__cvt_s + v13 - __source);
    __freedtoa(__source);
LABEL_24:
    if (v15)
    {
      __sizea = __size - &v13[-__cvt_s];
      while (--__sizea)
      {
        v8 = v13++;
        *v8 = 48;
      }

      *v13 = 0;
    }

    return __cvt_s;
  }

  *v18 = 0;
  v12 = *__source;
  __freedtoa(__source);
  v7 = "inf";
  if (v12 != 73)
  {
    return "nan";
  }

  return v7;
}

char *__cdecl gcvt(double a1, int a2, char *a3)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = 0;
  __dst = 0;
  v26 = 0;
  i = 0;
  v24 = 0;
  v23 = 0;
  v22 = localeconv();
  if (v30)
  {
    v28 = __dtoa(2, v30, &v24, &v23, 0, v31);
    if (v28)
    {
      if (v24 == 9999)
      {
        if (v23)
        {
          v3 = "-";
        }

        else
        {
          v3 = &unk_C42B5;
        }

        v4 = "inf";
        if (*v28 != 73)
        {
          v4 = "nan";
        }

        snprintf(v29, v30 + 1, "%s%s", v3, v4);
        __freedtoa(v28);
        return v29;
      }

      else
      {
        __dst = v29;
        if (v23)
        {
          v5 = __dst++;
          *v5 = 45;
        }

        if (v24 < 0 || v24 > v30)
        {
          if (--v24 < 0)
          {
            v23 = 1;
            v24 = -v24;
          }

          else
          {
            v23 = 0;
          }

          v26 = v28 + 1;
          v6 = *v28;
          v7 = __dst++;
          *v7 = v6;
          __dst = stpcpy(__dst, v22->decimal_point);
          while (*v26)
          {
            v8 = v26++;
            LOBYTE(v8) = *v8;
            v9 = __dst++;
            *v9 = v8;
          }

          v10 = __dst++;
          *v10 = 101;
          v11 = __dst++;
          if (v23)
          {
            *v11 = 45;
          }

          else
          {
            *v11 = 43;
          }

          if (v24 >= 10)
          {
            v23 = v24;
            for (i = 0; ; ++i)
            {
              v23 /= 10;
              if (!v23)
              {
                break;
              }
            }

            __dst[i + 1] = 0;
            while (v24)
            {
              v14 = i--;
              __dst[v14] = v24 % 10 + 48;
              v24 /= 10;
            }
          }

          else
          {
            v12 = __dst++;
            *v12 = 48;
            v13 = __dst++;
            *v13 = v24 + 48;
            *__dst = 0;
          }
        }

        else
        {
          i = 0;
          v26 = v28;
          while (i < v24)
          {
            if (*v26)
            {
              v15 = v26++;
              LOBYTE(v15) = *v15;
              v16 = __dst++;
              *v16 = v15;
            }

            else
            {
              v17 = __dst++;
              *v17 = 48;
            }

            ++i;
          }

          if (*v26)
          {
            if (v26 == v28)
            {
              v18 = __dst++;
              *v18 = 48;
            }

            __dst = stpcpy(__dst, v22->decimal_point);
            for (i = v24; *(v28 + i); ++i)
            {
              v19 = *(v28 + i);
              v20 = __dst++;
              *v20 = v19;
            }
          }

          *__dst = 0;
        }

        __freedtoa(v28);
        return v29;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *v29 = 0;
    return v29;
  }
}

void qsort_b(void *__base, size_t __nel, size_t __width, void *__compar)
{
  v5 = _Block_get_invoke_fn(__compar);
  v6 = 0;
  if (v5)
  {
    v6 = v5;
  }

  __compara = 0;
  if (v6)
  {
    __compara = v6;
  }

  qsort_r(__base, __nel, __width, __compar, __compara);
}

int heapsort_b(void *__base, size_t __nel, size_t __width, void *__compar)
{
  v47 = __nel;
  if (__nel <= 1)
  {
    return 0;
  }

  if (__width)
  {
    v20 = malloc_type_malloc();
    if (v20)
    {
      v21 = __base - __width;
      v33 = v47 / 2 + 1;
      while (--v33)
      {
        for (i = v33; ; i = v34)
        {
          v34 = 2 * i;
          if (2 * i > v47)
          {
            break;
          }

          v18 = &v21[v34 * __width];
          if (v34 < v47 && ((*(__compar + 2))(__compar, v18, &v18[__width]) & 0x80000000) != 0)
          {
            v18 += __width;
            ++v34;
          }

          v17 = &v21[i * __width];
          if ((*(__compar + 2))(__compar, v18, v17) <= 0)
          {
            break;
          }

          v39 = __width;
          do
          {
            v32 = *v17;
            v4 = v17++;
            *v4 = *v18;
            v5 = v18++;
            *v5 = v32;
            --v39;
          }

          while (v39);
        }
      }

      while (v47 > 1)
      {
        v40 = __width;
        v27 = v20;
        v22 = &v21[v47 * __width];
        do
        {
          v6 = v22++;
          v7 = v27++;
          *v7 = *v6;
          --v40;
        }

        while (v40);
        v41 = __width;
        v28 = &v21[v47 * __width];
        v23 = __base;
        do
        {
          v8 = v23++;
          v9 = v28++;
          *v9 = *v8;
          --v41;
        }

        while (v41);
        --v47;
        for (j = 1; ; j = v35)
        {
          v35 = 2 * j;
          if (2 * j > v47)
          {
            break;
          }

          v19 = &v21[v35 * __width];
          if (v35 < v47 && ((*(__compar + 2))(__compar, v19, &v19[__width]) & 0x80000000) != 0)
          {
            v19 += __width;
            ++v35;
          }

          v42 = __width;
          v29 = &v21[j * __width];
          v24 = v19;
          do
          {
            v10 = v24++;
            v11 = v29++;
            *v11 = *v10;
            --v42;
          }

          while (v42);
        }

        while (1)
        {
          v36 = j;
          j /= 2uLL;
          if (v36 == 1 || ((*(__compar + 2))(__compar, v20, &v21[j * __width]) & 0x80000000) != 0)
          {
            break;
          }

          v44 = __width;
          v31 = &v21[v36 * __width];
          v26 = &v21[j * __width];
          do
          {
            v14 = v26++;
            v15 = v31++;
            *v15 = *v14;
            --v44;
          }

          while (v44);
        }

        v43 = __width;
        v30 = &v21[v36 * __width];
        v25 = v20;
        do
        {
          v12 = v25++;
          v13 = v30++;
          *v13 = *v12;
          --v43;
        }

        while (v43);
      }

      free(v20);
      return 0;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t __heapsort_r(_BYTE *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, char *))
{
  v49 = a2;
  if (a2 > 1)
  {
    if (a3)
    {
      v21 = malloc_type_malloc();
      if (v21)
      {
        v22 = &a1[-a3];
        v34 = v49 / 2 + 1;
        while (--v34)
        {
          for (i = v34; ; i = v35)
          {
            v35 = 2 * i;
            if (2 * i > v49)
            {
              break;
            }

            v19 = &v22[v35 * a3];
            if (v35 < v49 && (a5(a4, v19, &v19[a3]) & 0x80000000) != 0)
            {
              v19 += a3;
              ++v35;
            }

            v18 = &v22[i * a3];
            if (a5(a4, v19, v18) <= 0)
            {
              break;
            }

            v40 = a3;
            do
            {
              v33 = *v18;
              v5 = v18++;
              *v5 = *v19;
              v6 = v19++;
              *v6 = v33;
              --v40;
            }

            while (v40);
          }
        }

        while (v49 > 1)
        {
          v41 = a3;
          v28 = v21;
          v23 = &v22[v49 * a3];
          do
          {
            v7 = v23++;
            v8 = v28++;
            *v8 = *v7;
            --v41;
          }

          while (v41);
          v42 = a3;
          v29 = &v22[v49 * a3];
          v24 = a1;
          do
          {
            v9 = v24++;
            v10 = v29++;
            *v10 = *v9;
            --v42;
          }

          while (v42);
          --v49;
          for (j = 1; ; j = v36)
          {
            v36 = 2 * j;
            if (2 * j > v49)
            {
              break;
            }

            v20 = &v22[v36 * a3];
            if (v36 < v49 && (a5(a4, v20, &v20[a3]) & 0x80000000) != 0)
            {
              v20 += a3;
              ++v36;
            }

            v43 = a3;
            v30 = &v22[j * a3];
            v25 = v20;
            do
            {
              v11 = v25++;
              v12 = v30++;
              *v12 = *v11;
              --v43;
            }

            while (v43);
          }

          while (1)
          {
            v37 = j;
            j /= 2uLL;
            if (v37 == 1 || (a5(a4, v21, &v22[j * a3]) & 0x80000000) != 0)
            {
              break;
            }

            v45 = a3;
            v32 = &v22[v37 * a3];
            v27 = &v22[j * a3];
            do
            {
              v15 = v27++;
              v16 = v32++;
              *v16 = *v15;
              --v45;
            }

            while (v45);
          }

          v44 = a3;
          v31 = &v22[v37 * a3];
          v26 = v21;
          do
          {
            v13 = v26++;
            v14 = v31++;
            *v14 = *v13;
            --v44;
          }

          while (v44);
        }

        free(v21);
        return 0;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      *__error() = 22;
      return -1;
    }
  }

  else
  {
    return 0;
  }
}

_DWORD *__ldtoa(double *a1, int a2, int a3, _DWORD *a4, _DWORD *a5, void *a6)
{
  v7 = __dtoa(a2, a3, a4, a5, a6, *a1);
  if (*a4 == 9999)
  {
    *a4 = 0x7FFFFFFF;
  }

  return v7;
}

char *_Read_RuneMagi(FILE *a1)
{
  v41 = a1;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  memset(&__b, 0, sizeof(__b));
  v14 = 0;
  RuneMagi_A = 0;
  v35 = 0;
  v1 = fileno(v41);
  if (fstat(v1, &__b) < 0)
  {
    return 0;
  }

  if (__b.st_size < 0xC3CuLL)
  {
LABEL_4:
    *__error() = 79;
    return 0;
  }

  st_size = __b.st_size;
  v2 = fileno(v41);
  v39 = mmap(0, st_size, 3, 2, v2, 0);
  if (v39 == -1)
  {
    *__error() = 22;
    return 0;
  }

  v36 = v39;
  v37 = &v39[__b.st_size];
  if (memcmp(v39, "RuneMagA", 8uLL))
  {
    __src = v36 + 3132;
    if (memcmp(v36, "RuneMagB", 8uLL))
    {
      *__error() = 79;
LABEL_61:
      v24 = *__error();
      munmap(v39, __b.st_size);
      free(v35);
      free(RuneMagi_A);
      *__error() = v24;
      return 0;
    }

    v17 = __src;
    __srca = &__src[12 * *(v36 + 778)];
    if (__srca <= v37)
    {
      v16 = __srca;
      __srcb = &__srca[12 * *(v36 + 779)];
      if (__srcb <= v37)
      {
        v15 = __srcb;
        __srcc = &__srcb[12 * *(v36 + 780)];
        if (__srcc <= v37)
        {
          v34 = v17;
          for (i = 0; i < *(v36 + 778); ++i)
          {
            if (!*&v34[12 * i + 8])
            {
              v13 = *&v34[12 * i + 4] - *&v34[12 * i] + 1;
              __srcc += 4 * v13;
              v14 += v13;
              if (__srcc > v37)
              {
                goto LABEL_48;
              }
            }
          }

          v32 = __srcc;
          if (&__srcc[20 * *(v36 + 782) + *(v36 + 781)] <= v37)
          {
            v40 = 24 * (*(v36 + 778) + *(v36 + 779) + *(v36 + 780)) + 128 + 4 * v14 + 20 * *(v36 + 782) + *(v36 + 781);
            RuneMagi_A = malloc_type_calloc();
            if (!RuneMagi_A)
            {
              goto LABEL_61;
            }

            *RuneMagi_A = 1;
            *(RuneMagi_A + 1) = destruct_ctype;
            v3 = malloc_type_calloc();
            *(RuneMagi_A + 15) = v3;
            v35 = v3;
            if (!v3)
            {
              free(RuneMagi_A);
              goto LABEL_61;
            }

            *(v35 + 398) = RuneMagi_A + 128;
            *v35 = *"RuneMagA";
            v4 = v35;
            v5 = v36;
            *(v35 + 8) = *(v36 + 8);
            *(v4 + 24) = *(v5 + 24);
            *(v35 + 14) = 0;
            *(v35 + 798) = *(v36 + 781);
            *(v35 + 784) = *(v36 + 778);
            *(v35 + 788) = *(v36 + 779);
            *(v35 + 792) = *(v36 + 780);
            *(v35 + 799) = *(v36 + 782);
            for (j = 0; j < 256; ++j)
            {
              *&v35[4 * j + 60] = *&v36[4 * j + 40];
              *&v35[4 * j + 1084] = *&v36[4 * j + 1064];
              *&v35[4 * j + 2108] = *&v36[4 * j + 2088];
            }

            *(v35 + 393) = *(v35 + 398);
            *(v35 + 398) = *(v35 + 393) + 24 * *(v35 + 784);
            *(v35 + 395) = *(v35 + 398);
            *(v35 + 398) = *(v35 + 395) + 24 * *(v35 + 788);
            *(v35 + 397) = *(v35 + 398);
            *(v35 + 398) = *(v35 + 397) + 24 * *(v35 + 792);
            *(v35 + 400) = *(v35 + 398);
            *(v35 + 398) = *(v35 + 400) + 20 * *(v35 + 799);
            __srcd = &v15[12 * *(v36 + 780)];
            v34 = v17;
            v33 = *(v35 + 393);
            for (k = 0; k < *(v35 + 784); ++k)
            {
              *(v33 + 24 * k) = *&v34[12 * k];
              *(v33 + 24 * k + 4) = *&v34[12 * k + 4];
              *(v33 + 24 * k + 8) = *&v34[12 * k + 8];
              if (*(v33 + 24 * k + 8))
              {
                *(v33 + 24 * k + 16) = 0;
              }

              else
              {
                v11 = *(v33 + 24 * k + 4) - *(v33 + 24 * k) + 1;
                v12 = __srcd;
                __srcd += 4 * v11;
                *(v33 + 24 * k + 16) = *(v35 + 398);
                *(v35 + 398) = *(v33 + 24 * k + 16) + 4 * v11;
                while (1)
                {
                  v6 = v11--;
                  if (v6 <= 0)
                  {
                    break;
                  }

                  *(*(v33 + 24 * k + 16) + 4 * v11) = *&v12[4 * v11];
                }
              }
            }

            v34 = v16;
            v33 = *(v35 + 395);
            for (m = 0; m < *(v35 + 788); ++m)
            {
              *(v33 + 24 * m) = *&v34[12 * m];
              *(v33 + 24 * m + 4) = *&v34[12 * m + 4];
              *(v33 + 24 * m + 8) = *&v34[12 * m + 8];
            }

            v34 = v15;
            v33 = *(v35 + 397);
            for (n = 0; n < *(v36 + 780); ++n)
            {
              *(v33 + 24 * n) = *&v34[12 * n];
              *(v33 + 24 * n + 4) = *&v34[12 * n + 4];
              *(v33 + 24 * n + 8) = *&v34[12 * n + 8];
            }

            if (*(v36 + 782) > 0)
            {
              v32 = __srcd;
              __srcd += 20 * *(v36 + 782);
              if (__srcd > v37)
              {
                goto LABEL_48;
              }

              *(v35 + 400) = *(v35 + 398);
              *(v35 + 398) = *(v35 + 400) + 20 * *(v35 + 799);
              for (ii = 0; ii < *(v36 + 782); ++ii)
              {
                v7 = (*(v35 + 400) + 20 * ii);
                v8 = &v32[20 * ii];
                *v7 = *v8;
                *(v7 + 6) = *(v8 + 6);
                *(*(v35 + 400) + 20 * ii + 16) = *&v32[20 * ii + 16];
              }
            }

            memcpy(*(v35 + 398), __srcd, *(v35 + 798));
            munmap(v39, __b.st_size);
            if (!*(v35 + 798))
            {
              *(v35 + 398) = 0;
            }

            if (!*(v35 + 784))
            {
              *(v35 + 393) = 0;
            }

            if (!*(v35 + 788))
            {
              *(v35 + 395) = 0;
            }

            if (!*(v35 + 792))
            {
              *(v35 + 397) = 0;
            }

            *(RuneMagi_A + 28) = v40;
            return RuneMagi_A;
          }
        }
      }
    }

LABEL_48:
    *__error() = 22;
    goto LABEL_61;
  }

  if (__b.st_size < 0xC5CuLL)
  {
    goto LABEL_4;
  }

  RuneMagi_A = _Read_RuneMagi_A(v41, v36, v37);
  v23 = *__error();
  munmap(v39, __b.st_size);
  if (!RuneMagi_A)
  {
    *__error() = v23;
  }

  return RuneMagi_A;
}

uint64_t _Read_RuneMagi_A(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = 0;
  v33 = 0;
  v32 = 0;
  v16 = a2 + 3164;
  *(a2 + 48) = _OSSwapInt32(*(a2 + 48));
  *(a2 + 3152) = _OSSwapInt32(*(a2 + 3152));
  *(a2 + 3156) = _OSSwapInt32(*(a2 + 3156));
  *(a2 + 3124) = _OSSwapInt32(*(a2 + 3124));
  *(a2 + 3132) = _OSSwapInt32(*(a2 + 3132));
  *(a2 + 3140) = _OSSwapInt32(*(a2 + 3140));
  v15 = v16;
  v17 = v16 + 16 * *(a2 + 3124);
  if (v17 > a3)
  {
    goto LABEL_9;
  }

  v14 = v17;
  v18 = v17 + 16 * *(a2 + 3132);
  if (v18 > a3)
  {
    goto LABEL_9;
  }

  v13 = v18;
  v19 = v18 + 16 * *(a2 + 3140);
  if (v19 > a3)
  {
    goto LABEL_9;
  }

  for (i = 0; i < *(a2 + 3124); ++i)
  {
    *(v15 + 16 * i) = _OSSwapInt32(*(v15 + 16 * i));
    *(v15 + 16 * i + 4) = _OSSwapInt32(*(v15 + 16 * i + 4));
    *(v15 + 16 * i + 8) = _OSSwapInt32(*(v15 + 16 * i + 8));
    if (!*(v15 + 16 * i + 8))
    {
      v11 = *(v15 + 16 * i + 4) - *(v15 + 16 * i) + 1;
      v19 += 4 * v11;
      v12 += v11;
      if (v19 > a3)
      {
        goto LABEL_9;
      }
    }
  }

  if (v19 + 20 * *(a2 + 3156) + *(a2 + 3152) > a3)
  {
    goto LABEL_9;
  }

  v34 = 24 * (*(a2 + 3124) + *(a2 + 3132) + *(a2 + 3140)) + 128 + 4 * v12 + 20 * *(a2 + 3156) + *(a2 + 3152);
  v3 = malloc_type_calloc();
  v33 = v3;
  if (!v3)
  {
    goto LABEL_50;
  }

  *v3 = 1;
  *(v3 + 8) = destruct_ctype;
  v4 = malloc_type_calloc();
  *(v33 + 120) = v4;
  v32 = v4;
  if (!v4)
  {
    free(v33);
    goto LABEL_50;
  }

  *(v4 + 3184) = v33 + 128;
  *v4 = *"RuneMagA";
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 56) = *(a2 + 48);
  *(v4 + 3192) = *(a2 + 3152);
  *(v4 + 3136) = *(a2 + 3124);
  *(v4 + 3152) = *(a2 + 3132);
  *(v4 + 3168) = *(a2 + 3140);
  *(v4 + 3196) = *(a2 + 3156);
  for (j = 0; j < 256; ++j)
  {
    *(v32 + 60 + 4 * j) = _OSSwapInt32(*(a2 + 52 + 4 * j));
    *(v32 + 1084 + 4 * j) = _OSSwapInt32(*(a2 + 1076 + 4 * j));
    *(v32 + 2108 + 4 * j) = _OSSwapInt32(*(a2 + 2100 + 4 * j));
  }

  *(v32 + 3144) = *(v32 + 3184);
  *(v32 + 3184) = *(v32 + 3144) + 24 * *(v32 + 3136);
  *(v32 + 3160) = *(v32 + 3184);
  *(v32 + 3184) = *(v32 + 3160) + 24 * *(v32 + 3152);
  *(v32 + 3176) = *(v32 + 3184);
  *(v32 + 3184) = *(v32 + 3176) + 24 * *(v32 + 3168);
  *(v32 + 3200) = *(v32 + 3184);
  *(v32 + 3184) = *(v32 + 3200) + 20 * *(v32 + 3196);
  v20 = (v13 + 16 * *(a2 + 3140));
  v29 = *(v32 + 3144);
  for (k = 0; k < *(v32 + 3136); ++k)
  {
    *(v29 + 24 * k) = *(v15 + 16 * k);
    *(v29 + 24 * k + 4) = *(v15 + 16 * k + 4);
    *(v29 + 24 * k + 8) = *(v15 + 16 * k + 8);
    if (*(v29 + 24 * k + 8))
    {
      *(v29 + 24 * k + 16) = 0;
    }

    else
    {
      v9 = *(v29 + 24 * k + 4) - *(v29 + 24 * k) + 1;
      v10 = v20;
      v20 += 4 * v9;
      *(v29 + 24 * k + 16) = *(v32 + 3184);
      *(v32 + 3184) = *(v29 + 24 * k + 16) + 4 * v9;
      while (1)
      {
        v5 = v9--;
        if (v5 <= 0)
        {
          break;
        }

        *(*(v29 + 24 * k + 16) + 4 * v9) = _OSSwapInt32(*&v10[4 * v9]);
      }
    }
  }

  v30 = *(v32 + 3160);
  for (m = 0; m < *(v32 + 3152); ++m)
  {
    *(v30 + 24 * m) = _OSSwapInt32(*(v14 + 16 * m));
    *(v30 + 24 * m + 4) = _OSSwapInt32(*(v14 + 16 * m + 4));
    *(v30 + 24 * m + 8) = _OSSwapInt32(*(v14 + 16 * m + 8));
  }

  v31 = *(v32 + 3176);
  for (n = 0; n < *(a2 + 3140); ++n)
  {
    *(v31 + 24 * n) = _OSSwapInt32(*(v13 + 16 * n));
    *(v31 + 24 * n + 4) = _OSSwapInt32(*(v13 + 16 * n + 4));
    *(v31 + 24 * n + 8) = _OSSwapInt32(*(v13 + 16 * n + 8));
  }

  if (*(a2 + 3156) > 0)
  {
    v28 = v20;
    v20 += 20 * *(a2 + 3156);
    if (v20 <= a3)
    {
      *(v32 + 3200) = *(v32 + 3184);
      *(v32 + 3184) = *(v32 + 3200) + 20 * *(v32 + 3196);
      for (ii = 0; ii < *(a2 + 3156); ++ii)
      {
        v6 = (*(v32 + 3200) + 20 * ii);
        v7 = &v28[20 * ii];
        *v6 = *v7;
        *(v6 + 6) = *(v7 + 6);
        *(*(v32 + 3200) + 20 * ii + 16) = _OSSwapInt32(*(v7 + 4));
      }

      goto LABEL_41;
    }

LABEL_9:
    *__error() = 22;
LABEL_50:
    v21 = *__error();
    free(v32);
    free(v33);
    *__error() = v21;
    return 0;
  }

LABEL_41:
  memcpy(*(v32 + 3184), v20, *(v32 + 3192));
  if (!*(v32 + 3192))
  {
    *(v32 + 3184) = 0;
  }

  if (!*(v32 + 3136))
  {
    *(v32 + 3144) = 0;
  }

  if (!*(v32 + 3152))
  {
    *(v32 + 3160) = 0;
  }

  if (!*(v32 + 3168))
  {
    *(v32 + 3176) = 0;
  }

  *(v33 + 112) = v34;
  return v33;
}

void destruct_ctype(void **a1)
{
  if (&_DefaultRuneLocale != a1[15])
  {
    free(a1[15]);
  }

  free(a1);
}

int mergesort_b(void *__base, size_t __nel, size_t __width, void *__compar)
{
  if (__width >= 4)
  {
    if (__nel)
    {
      v33 = 0;
      if (!(__width % 4))
      {
        v33 = __base % 4 == 0;
      }

      __dst = malloc_type_malloc();
      if (__dst)
      {
        __src = __base;
        setup_0(__base, __dst, __nel, __width, __compar);
        v20 = &__dst[__nel * __width];
        v34 = 0;
        v36 = 0;
        while (*((__dst + 7) & 0xFFFFFFFFFFFFFFF8) != v20)
        {
          v24 = __src;
          v19 = ((__src + 7) & 0xFFFFFFFFFFFFFFF8);
          v21 = __dst;
          v27 = __dst;
          while (v21 != v20)
          {
            v21 = *((v21 + 7) & 0xFFFFFFFFFFFFFFF8);
            v32 = v24;
            v25 = &__src[v21 - __dst];
            v31 = v25;
            if (v21 != v20)
            {
              v21 = *((v21 + 7) & 0xFFFFFFFFFFFFFFF8);
            }

            v24 = &__src[v21 - __dst];
            while (1)
            {
              v18 = 0;
              if (v32 < v25)
              {
                v18 = v31 < v24;
              }

              if (!v18)
              {
                break;
              }

              if ((*(__compar + 2))(__compar, v32, v31) > 0)
              {
                v26 = v32;
                v29 = v31;
                v30 = &__src[v21 - __dst];
                v35 = 0;
              }

              else
              {
                v26 = v31;
                v29 = v32;
                v30 = v25;
                v35 = -1;
              }

              if (v34)
              {
LABEL_30:
                for (i = __width; ; i *= 2)
                {
                  if (&v29[i] >= v30)
                  {
                    if (&v30[-__width] <= v29 || (*(__compar + 2))(__compar, v26, &v30[-__width]) > v35)
                    {
                      v29 = &v30[-__width];
                    }

                    else
                    {
                      v30 -= __width;
                    }

                    while (v30 > &v29[__width])
                    {
                      if ((*(__compar + 2))(__compar, v26) <= v35)
                      {
                        v30 = &v29[(((v30 - v29) / __width) >> 1) * __width];
                      }

                      else
                      {
                        v29 += (((v30 - v29) / __width) >> 1) * __width;
                      }
                    }

                    goto LABEL_49;
                  }

                  if ((*(__compar + 2))(__compar, v26, &v29[i]) <= v35)
                  {
                    break;
                  }

                  v29 += i;
                }

                v30 = &v29[i];
                if (i == __width)
                {
                  v34 = 0;
                }

                while (i > __width)
                {
                  i >>= 1;
                  if ((*(__compar + 2))(__compar, v26) <= v35)
                  {
                    v30 = &v29[i];
                  }

                  else
                  {
                    v29 += i;
                  }
                }

LABEL_49:
                v29 = v30;
              }

              else
              {
                while (1)
                {
                  v29 += __width;
                  v17 = 0;
                  if (v29 < v30)
                  {
                    v17 = (*(__compar + 2))(__compar, v26, v29) > v35;
                  }

                  if (!v17)
                  {
                    break;
                  }

                  if (++v36 == 6)
                  {
                    v34 = 1;
                    goto LABEL_30;
                  }
                }
              }

              v36 = __width;
              if (v26 == v32)
              {
                if (v33)
                {
                  do
                  {
                    *v27++ = *v31++;
                  }

                  while (v31 < v29);
                  do
                  {
                    *v27++ = *v32++;
                    v36 -= 4;
                  }

                  while (v36);
                }

                else
                {
                  do
                  {
                    v4 = v31;
                    v31 = (v31 + 1);
                    v5 = v27;
                    v27 = (v27 + 1);
                    *v5 = *v4;
                  }

                  while (v31 < v29);
                  do
                  {
                    v6 = v32;
                    v32 = (v32 + 1);
                    v7 = v27;
                    v27 = (v27 + 1);
                    *v7 = *v6;
                    --v36;
                  }

                  while (v36);
                }
              }

              else if (v33)
              {
                do
                {
                  *v27++ = *v32++;
                }

                while (v32 < v29);
                do
                {
                  *v27++ = *v31++;
                  v36 -= 4;
                }

                while (v36);
              }

              else
              {
                do
                {
                  v8 = v32;
                  v32 = (v32 + 1);
                  v9 = v27;
                  v27 = (v27 + 1);
                  *v9 = *v8;
                }

                while (v32 < v29);
                do
                {
                  v10 = v31;
                  v31 = (v31 + 1);
                  v11 = v27;
                  v27 = (v27 + 1);
                  *v11 = *v10;
                  --v36;
                }

                while (v36);
              }
            }

            if (v31 >= v24)
            {
              if (v32 < v25)
              {
                if (v33)
                {
                  do
                  {
                    *v27++ = *v32++;
                  }

                  while (v32 < v25);
                }

                else
                {
                  do
                  {
                    v14 = v32;
                    v32 = (v32 + 1);
                    v15 = v27;
                    v27 = (v27 + 1);
                    *v15 = *v14;
                  }

                  while (v32 < v25);
                }
              }
            }

            else if (v33)
            {
              do
              {
                *v27++ = *v31++;
              }

              while (v31 < v24);
            }

            else
            {
              do
              {
                v12 = v31;
                v31 = (v31 + 1);
                v13 = v27;
                v27 = (v27 + 1);
                *v13 = *v12;
              }

              while (v31 < v24);
            }

            *v19 = v24;
            v19 = ((v24 + 7) & 0xFFFFFFFFFFFFFFF8);
          }

          v28 = __src;
          __src = __dst;
          __dst = v28;
          v20 = &v28[__nel * __width];
        }

        if (__base == __dst)
        {
          memmove(__dst, __src, __nel * __width);
          __dst = __src;
        }

        free(__dst);
        return 0;
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

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t setup_0(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = 2 * a4;
  if (a3 > 5)
  {
    v27 = (a3 & 1) + 4;
    insertionsort_0(a1 + (a3 - v27) * a4, v27, a4, a5);
    v13 = a1 + a4 * (a3 - v27);
    *(&a2[a4 * (a3 - v27) + 7] & 0xFFFFFFFFFFFFFFF8) = &a2[a3 * a4];
    v12 = a2;
    v20 = a1;
    result = (*(a5 + 16))(a5, a1, a1 + a4);
    v21 = result > 0;
    while (v20 < v13)
    {
      v25 = 2;
      for (i = &v20[v26]; i < v13; i += v26)
      {
        result = (*(a5 + 16))(a5, i, &i[a4]);
        if (result > 0 != v21)
        {
          break;
        }

        v25 += 2;
      }

      if (v25 < 16)
      {
        do
        {
          *((v12 + 7) & 0xFFFFFFFFFFFFFFF8) = &v20[v26 - a1 + a2];
          v12 = &v20[v26 - a1 + a2];
          if (v21 > 0)
          {
            v15 = &v20[a4];
            v28 = a4;
            do
            {
              v22 = *v20;
              v6 = v20++;
              *v6 = *v15;
              v7 = v15++;
              *v7 = v22;
              --v28;
            }

            while (v28);
            v20 -= a4;
          }

          v20 += v26;
        }

        while (v20 < i);
      }

      else
      {
        v14 = i;
        for (j = &v20[v26]; j < v14; j += v26)
        {
          result = (*(a5 + 16))(a5, &j[-a4], j);
          if (result > 0 != v21)
          {
            *((v12 + 7) & 0xFFFFFFFFFFFFFFF8) = &j[a2 - a1];
            v12 = &j[a2 - a1];
            if (v21 > 0)
            {
              v16 = &j[-a4];
              do
              {
                v29 = a4;
                do
                {
                  v23 = *v20;
                  v8 = v20++;
                  *v8 = *v16;
                  v9 = v16++;
                  *v9 = v23;
                  --v29;
                }

                while (v29);
                v16 -= v26;
              }

              while (v20 < v16);
            }

            v20 = j;
          }
        }

        if (v21 > 0)
        {
          v17 = &j[-a4];
          do
          {
            v30 = a4;
            do
            {
              v24 = *v20;
              v10 = v20++;
              *v10 = *v17;
              v11 = v17++;
              *v11 = v24;
              --v30;
            }

            while (v30);
            v17 -= v26;
          }

          while (v20 < v17);
        }

        v20 = j;
        if (j >= v13 && (result = (*(a5 + 16))(a5, &j[-a4], j), result <= 0))
        {
          *((v12 + 7) & 0xFFFFFFFFFFFFFFF8) = &a2[a3 * a4];
          v12 = &a2[a3 * a4];
        }

        else
        {
          *((v12 + 7) & 0xFFFFFFFFFFFFFFF8) = &j[a2 - a1];
          v12 = &j[a2 - a1];
        }
      }

      v21 = !v21;
    }
  }

  else
  {
    result = insertionsort_0(a1, a3, a4, a5);
    *((a2 + 7) & 0xFFFFFFFFFFFFFFF8) = &a2[a3 * a4];
  }

  return result;
}

uint64_t insertionsort_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = result;
  for (i = (result + a3); --a2; i += a3)
  {
    for (j = i; j > v15; j -= a3)
    {
      v8 = &j[-a3];
      result = (*(a4 + 16))(a4, &j[-a3], j);
      if (result <= 0)
      {
        break;
      }

      v10 = j;
      v6 = a3;
      do
      {
        v7 = *v8;
        v4 = v8++;
        *v4 = *v10;
        v5 = v10++;
        *v5 = v7;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

int scandir_b(const char *a1, dirent ***a2, void *a3, void *a4)
{
  __nel = 0;
  v9 = opendir(a1);
  if (!v9)
  {
    return -1;
  }

  v10 = 32;
  __base = malloc_type_malloc();
  if (__base)
  {
    while (1)
    {
      v14 = readdir(v9);
      if (!v14)
      {
        break;
      }

      if (!a3 || (*(a3 + 2))(a3, v14))
      {
        v4 = (v14->d_namlen + 4) & 0xFFFFFFFC;
        v13 = malloc_type_malloc();
        if (!v13)
        {
          goto LABEL_17;
        }

        *v13 = v14->d_ino;
        v13[20] = v14->d_type;
        *(v13 + 8) = v14->d_reclen;
        *(v13 + 9) = v14->d_namlen;
        memmove(v13 + 21, v14->d_name, *(v13 + 9) + 1);
        if (__nel >= v10)
        {
          v7 = malloc_type_realloc();
          if (!v7)
          {
            free(v13);
            goto LABEL_17;
          }

          __base = v7;
          v10 *= 2;
        }

        v5 = __nel++;
        __base[v5] = v13;
      }
    }

    closedir(v9);
    if (__nel && a4)
    {
      qsort_b(__base, __nel, 8uLL, a4);
    }

    *a2 = __base;
    return __nel;
  }

  else
  {
LABEL_17:
    while (__nel)
    {
      free(__base[--__nel]);
    }

    free(__base);
    closedir(v9);
    return -1;
  }
}

uint64_t __printf_arginfo_errno(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __assert_rtn("__printf_arginfo_errno", "xprintf_errno.c", 44, "n >= 1");
  }

  result = 1;
  *a3 = 1;
  return result;
}

uint64_t __printf_render_errno(uint64_t a1, uint64_t a2, int **a3)
{
  __errnum = **a3;
  if (__errnum < 0 || __errnum >= 108)
  {
    sprintf(v12, "errno=%d/0x%x", __errnum, __errnum);
    v4 = strlen(v12);
    v8 = __printf_out(a1, a2, v12, v4);
    __printf_flush(a1);
    return v8;
  }

  else
  {
    v6 = strerror(__errnum);
    v3 = strlen(v6);
    return __printf_out(a1, a2, v6, v3);
  }
}

uint64_t __printf_arginfo_float(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __assert_rtn("__printf_arginfo_float", "xprintf_float.c", 130, "n > 0");
  }

  if (*(a1 + 40) >> 15)
  {
    *a3 = 256;
  }

  else
  {
    *a3 = 128;
    if (*(a1 + 40))
    {
      *a3 |= 0x10000u;
    }
  }

  return 1;
}

uint64_t __printf_render_float(uint64_t a1, unsigned __int16 *a2, float **a3)
{
  v59 = a1;
  v58 = a2;
  v57 = a3;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  fixed = 0;
  v42 = 0;
  v41 = 0.0;
  v40 = 0.0;
  v39 = 0;
  v38 = 0;
  if (a2[20] >> 15)
  {
    return __xprintf_vector(v59, v58, v57);
  }

  v56 = *(v58 + 5);
  v37 = 0;
  v49 = *(v58 + 9);
  v18 = 0;
  v27 = 0;
  __s = localeconv_l(v58[1])->thousands_sep;
  v20 = strlen(__s);
  fixed = 0;
  if ((v58[5] & 0x100) != 0)
  {
    v3 = localeconv_l(v58[1]);
    fixed = __fix_nogrouping(v3->grouping);
  }

  __n_4 = localeconv_l(v58[1])->decimal_point;
  __n = strlen(__n_4);
  v38 = -1;
  v17 = *(v58 + 7);
  if (v17 == 65)
  {
    goto LABEL_14;
  }

  if (v17 == 69)
  {
    goto LABEL_27;
  }

  if (v17 != 70)
  {
    if (v17 == 71)
    {
      goto LABEL_31;
    }

    if (v17 != 97)
    {
      if (v17 != 101)
      {
        if (v17 != 102)
        {
          if (v17 != 103)
          {
            if (*(v58 + 7) != 102)
            {
              __assert_rtn("__printf_render_float", "xprintf_float.c", 263, "pi->spec == 'f'");
            }

            goto LABEL_36;
          }

LABEL_31:
          v54 = *(v58 + 7) - 2;
          if (!v56)
          {
            v56 = 1;
          }

          goto LABEL_36;
        }

        goto LABEL_30;
      }

LABEL_27:
      v54 = *(v58 + 7);
      if (v56 < 0)
      {
        v56 = 7;
      }

      else
      {
        ++v56;
      }

      goto LABEL_36;
    }

LABEL_14:
    if (*(v58 + 7) == 97)
    {
      v37 = 120;
      v19 = &__lowercase_hex;
      v54 = 112;
    }

    else
    {
      v37 = 88;
      v19 = &__uppercase_hex;
      v54 = 80;
    }

    if ((v56 & 0x80000000) == 0)
    {
      ++v56;
    }

    if (v58[5])
    {
      v41 = **v57;
      v4 = __hldtoa(v19, v56, &v52, &v51, &v50, v41);
    }

    else
    {
      v40 = **v57;
      v4 = __hdtoa(v19, v56, &v52, &v51, &v50, v40);
    }

    v53 = v4;
    v55 = v4;
    if (v56 < 0)
    {
      v56 = v50 - v53;
    }

    if (v52 == 0x7FFFFFFF)
    {
      v37 = 0;
    }

    goto LABEL_48;
  }

LABEL_30:
  v54 = 0;
LABEL_36:
  if (v56 < 0)
  {
    v56 = 6;
  }

  if (v58[5])
  {
    v41 = **v57;
    if (v54)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    v53 = __ldtoa(&v41, v5, v56, &v52, &v51, &v50);
    v55 = v53;
  }

  else
  {
    v40 = **v57;
    if (v54)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    v53 = __dtoa(v6, v56, &v52, &v51, &v50, v40);
    v55 = v53;
    if (v52 == 9999)
    {
      v52 = 0x7FFFFFFF;
    }
  }

LABEL_48:
  if (v51)
  {
    v49 = 45;
  }

  if (v52 == 0x7FFFFFFF)
  {
    if (*v53 == 78)
    {
      v7 = "nan";
      if (*(v58 + 7) < 97)
      {
        v7 = "NAN";
      }

      v53 = v7;
      v49 = 0;
    }

    else
    {
      v8 = "inf";
      if (*(v58 + 7) < 97)
      {
        v8 = "INF";
      }

      v53 = v8;
    }

    v48 = 3;
    v18 = 1;
  }

  else
  {
    v47 = v50 - v53;
    if (*(v58 + 7) == 103 || *(v58 + 7) == 71)
    {
      if (v52 <= -4 || v52 > v56)
      {
        if ((v58[5] & 0x10) == 0)
        {
          v56 = v47;
        }
      }

      else
      {
        v54 = 0;
        if ((v58[5] & 0x10) != 0)
        {
          v56 -= v52;
        }

        else
        {
          v56 = v47 - v52;
        }

        if (v56 < 0)
        {
          v56 = 0;
        }
      }
    }

    if (v54)
    {
      v46 = exponent_1(v63, v52 - 1, v54);
      v48 = v46 + v56;
      if (v56 > 1 || (v58[5] & 0x10) != 0)
      {
        ++v48;
      }
    }

    else
    {
      if (v52 <= 0)
      {
        v48 = 1;
      }

      else
      {
        v48 = v52;
      }

      if (v56 || (v58[5] & 0x10) != 0)
      {
        v48 += v56 + 1;
      }

      if (fixed && v52 > 0)
      {
        v44 = 0;
        v45 = 0;
        v42 = v52;
        while (*fixed != 127 && v42 > *fixed)
        {
          v42 -= *fixed;
          if (fixed[1])
          {
            ++v45;
            ++fixed;
          }

          else
          {
            ++v44;
          }
        }

        v48 += v45 + v44;
      }

      else
      {
        v42 = v52;
      }
    }
  }

  if (v38 <= v48)
  {
    v16 = v48;
  }

  else
  {
    v16 = v38;
  }

  v39 = v16;
  if (v49)
  {
    ++v39;
  }

  if (v37)
  {
    v39 += 2;
  }

  if (*(v58 + 6) > v39)
  {
    v15 = *(v58 + 6);
  }

  if (*(v58 + 8) != 48 && (v58[5] & 0x40) == 0)
  {
    v27 = __printf_pad(v59, *(v58 + 6) - v39, 0);
  }

  if (v49)
  {
    v27 += __printf_puts(v59, &v49, 1u);
  }

  if (v37)
  {
    v36 = 48;
    v27 += __printf_puts(v59, &v36, 2u);
  }

  if (*(v58 + 8) == 48 && (v58[5] & 0x40) == 0)
  {
    v27 += __printf_pad(v59, *(v58 + 6) - v39, 1);
  }

  v28 = v27 + __printf_pad(v59, v38 - v48, 1);
  if (v18)
  {
    v29 = v28 + __printf_puts(v59, v53, v48);
  }

  else if (v54)
  {
    if (v56 > 1 || (v58[5] & 0x10) != 0)
    {
      v9 = v53;
      v53 = (v53 + 1);
      v61 = *v9;
      memcpy(v62, __n_4, __n);
      v33 = v28 + __printf_puts(v59, &v61, __n + 1);
      v34 = v33 + __printf_puts(v59, v53, v47 - 1);
      v35 = v34 + __printf_pad(v59, v56 - v47, 1);
    }

    else
    {
      v35 = v28 + __printf_puts(v59, v53, 1u);
    }

    v29 = v35 + __printf_puts(v59, v63, v46);
  }

  else
  {
    if (v52 > 0)
    {
      v22 = v50 - v53;
      if (v50 - v53 > v42)
      {
        v22 = v42;
      }

      if (v22 <= 0)
      {
        v14 = 0;
      }

      else
      {
        v28 += __printf_puts(v59, v53, v22);
        v14 = v22;
      }

      v31 = v28 + __printf_pad(v59, v42 - v14, 1);
      v53 = (v53 + v42);
      if (fixed)
      {
        while (1)
        {
          v13 = 1;
          if (v45 <= 0)
          {
            v13 = v44 > 0;
          }

          if (!v13)
          {
            break;
          }

          if (v44 <= 0)
          {
            --fixed;
            --v45;
          }

          else
          {
            --v44;
          }

          v32 = v31 + __printf_puts(v59, __s, v20);
          v23 = v50 - v53;
          if (v50 - v53 > *fixed)
          {
            v23 = *fixed;
          }

          if (v23 <= 0)
          {
            v12 = 0;
          }

          else
          {
            v32 += __printf_puts(v59, v53, v23);
            v12 = v23;
          }

          v31 = v32 + __printf_pad(v59, *fixed - v12, 1);
          v53 = (v53 + *fixed);
        }

        if (v53 > v50)
        {
          v53 = v50;
        }
      }

      if (v56 || (v58[5] & 0x10) != 0)
      {
        v31 += __printf_puts(v59, __n_4, __n);
      }
    }

    else
    {
      v30 = v28 + __printf_puts(v59, "0", 1u);
      if (v56 || (v58[5] & 0x10) != 0)
      {
        v30 += __printf_puts(v59, __n_4, __n);
      }

      v31 = v30 + __printf_pad(v59, -v52, 1);
      v56 += v52;
    }

    v24 = v50 - v53;
    if (v50 - v53 > v56)
    {
      v24 = v56;
    }

    if (v24 <= 0)
    {
      v11 = 0;
    }

    else
    {
      v31 += __printf_puts(v59, v53, v24);
      v11 = v24;
    }

    v29 = v31 + __printf_pad(v59, v56 - v11, 1);
  }

  if ((v58[5] & 0x40) != 0)
  {
    v29 += __printf_pad(v59, *(v58 + 6) - v39, 0);
  }

  __printf_flush(v59);
  if (v55)
  {
    __freedtoa(v55);
  }

  return v29;
}

uint64_t exponent_1(_BYTE *a1, int a2, int a3)
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

uint64_t __printf_arginfo_hexdump(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 2)
  {
    __assert_rtn("__printf_arginfo_hexdump", "xprintf_hexdump.c", 42, "n >= 2");
  }

  *a3 = 32;
  a3[1] = 1;
  return 2;
}

uint64_t __printf_render_hexdump(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (*(a2 + 24) <= 0 || *(a2 + 24) >= 16)
  {
    v18 = 16;
  }

  else
  {
    v18 = *(a2 + 24);
  }

  v20 = **a3;
  v19 = *a3[1];
  v11 = 0;
  v14 = 0;
  while (v19)
  {
    v12 = &v23;
    if ((*(a2 + 40) & 0x80) != 0)
    {
      v12 = &v24[sprintf(&v23, " %04x", v14) - 1];
    }

    for (i = 0; ; ++i)
    {
      v10 = 0;
      if (i < v18)
      {
        v10 = i < v19;
      }

      if (!v10)
      {
        break;
      }

      v12 += sprintf(v12, " %02x", *(v20 + i));
    }

    if ((*(a2 + 40) & 0x10) != 0)
    {
      while (i < v18)
      {
        v12 += sprintf(v12, "   ");
        ++i;
      }

      v13 = &v12[sprintf(v12, "  |")];
      for (j = 0; ; ++j)
      {
        v9 = 0;
        if (j < v18)
        {
          v9 = j < v19;
        }

        if (!v9)
        {
          break;
        }

        if (*(v20 + j) >= 0x20u && *(v20 + j) <= 0x7Eu)
        {
          v4 = v13++;
          *v4 = *(v20 + j);
        }

        else
        {
          v3 = v13++;
          *v3 = 46;
        }
      }

      while (j < v18)
      {
        v5 = v13++;
        *v5 = 32;
        ++j;
      }

      v6 = v13;
      v12 = v13 + 1;
      *v6 = 124;
    }

    if (v18 >= v19)
    {
      v17 = v19;
    }

    else
    {
      v17 = v18;
    }

    v20 += v17;
    v19 -= v17;
    v14 += v17;
    if (v19)
    {
      v7 = v12++;
      *v7 = 10;
    }

    v11 += __printf_puts(a1, v24, v12 - v24);
    __printf_flush(a1);
  }

  return v11;
}

uint64_t __printf_arginfo_int(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __assert_rtn("__printf_arginfo_int", "xprintf_int.c", 240, "n > 0");
  }

  *a3 = 1;
  if (*(a1 + 40) >> 15)
  {
    *a3 = 256;
  }

  else if ((*(a1 + 40) & 0x2000) != 0)
  {
    *a3 |= 0x800000u;
  }

  else if ((*(a1 + 40) & 0x4000) != 0)
  {
    *a3 |= 0x400000u;
  }

  else if ((*(a1 + 40) & 8) != 0)
  {
    *a3 |= 0x20000u;
  }

  else if ((*(a1 + 40) & 0x1000) != 0)
  {
    *a3 |= 0x200000u;
  }

  else if ((*(a1 + 40) & 0x800) != 0)
  {
    *a3 |= 0x100000u;
  }

  else if (*(a1 + 40))
  {
    *a3 |= 0x10000u;
  }

  else if ((*(a1 + 40) & 4) != 0)
  {
    *a3 |= 0x40000u;
  }

  else if ((*(a1 + 40) & 2) != 0)
  {
    *a3 = 2;
  }

  return 1;
}

uint64_t __printf_render_int(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if (*(a2 + 40) >> 15)
  {
    return __xprintf_vector(v33, v32, v31);
  }

  v11 = 0;
  v18 = 0;
  v17 = &__lowercase_hex;
  v27 = 0;
  v28 = &v36;
  if ((*(v32 + 40) & 0x100) != 0)
  {
    __s = localeconv_l(*(v32 + 8))->thousands_sep;
    v15 = strlen(__s);
    v3 = localeconv_l(*(v32 + 8));
    fixed = __fix_nogrouping(v3->grouping);
    v23 = 1;
  }

  else
  {
    __s = 0;
    v15 = 0;
    fixed = 0;
    v23 = 0;
  }

  v10 = *(v32 + 28);
  if (v10 != 79)
  {
    switch(v10)
    {
      case 'U':
LABEL_18:
        v26 = 10;
        v25 = 0;
        goto LABEL_20;
      case 'X':
        v17 = &__uppercase_hex;
LABEL_17:
        v26 = 16;
        v25 = 0;
        goto LABEL_20;
      case 'd':
      case 'i':
        v26 = 10;
        v25 = 1;
        goto LABEL_20;
    }

    if (v10 != 111)
    {
      if (v10 != 117)
      {
        if (v10 != 120)
        {
          fprintf(__stderrp, "pi->spec = '%c'\n", *(v32 + 28));
          __assert_rtn("__printf_render_int", "xprintf_int.c", 328, "1 == 0");
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  v26 = 8;
  v25 = 0;
LABEL_20:
  v30 = *v31;
  if (v25)
  {
    v27 = *(v32 + 36);
  }

  if ((*(v32 + 40) & 1) == 0 && (*(v32 + 40) & 0x800) == 0 && (*(v32 + 40) & 0x1000) == 0 && (*(v32 + 40) & 0x4000) == 0 && (*(v32 + 40) & 0x2000) == 0)
  {
    if ((*(v32 + 40) & 8) == 0)
    {
      if ((*(v32 + 40) & 4) != 0)
      {
        if (v25 && *v30 < 0)
        {
          v13 = -*v30;
          v27 = 45;
          v4 = __ultoa_1(v13, v28, v26, v17, v23, __s, v15, fixed);
        }

        else
        {
          v13 = *v30;
          v4 = __ultoa_1(v13, v28, v26, v17, v23, __s, v15, fixed);
        }
      }

      else if ((*(v32 + 40) & 2) != 0)
      {
        if (v25 && *v30 < 0)
        {
          v13 = -*v30;
          v27 = 45;
          v4 = __ultoa_1(v13, v28, v26, v17, v23, __s, v15, fixed);
        }

        else
        {
          v13 = *v30;
          v4 = __ultoa_1(v13, v28, v26, v17, v23, __s, v15, fixed);
        }
      }

      else if (v25 && (*v30 & 0x80000000) != 0)
      {
        v13 = -*v30;
        v27 = 45;
        v4 = __ultoa_1(v13, v28, v26, v17, v23, __s, v15, fixed);
      }

      else
      {
        v13 = *v30;
        v4 = __ultoa_1(v13, v28, v26, v17, v23, __s, v15, fixed);
      }

      goto LABEL_49;
    }

    if (v25 && (*v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

LABEL_34:
    v13 = *v30;
    v4 = __ultoa_1(*v30, v28, v26, v17, v23, __s, v15, fixed);
    goto LABEL_49;
  }

  if (!v25 || (*v30 & 0x8000000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_29:
  v13 = -*v30;
  v27 = 45;
  v4 = __ultoa_1(v13, v28, v26, v17, v23, __s, v15, fixed);
LABEL_49:
  v29 = v4;
  v19 = 0;
  if (v13)
  {
    if ((*(v32 + 40) & 0x10) != 0)
    {
      if (v26 == 8)
      {
        *--v29 = 48;
      }

      if (v26 == 16)
      {
        if (*(v32 + 28) == 120)
        {
          v18 = "0x";
        }

        else
        {
          v18 = "0X";
        }

        v19 = 2;
      }
    }
  }

  else if (!*(v32 + 20) && ((*(v32 + 40) & 0x10) == 0 || v26 != 8))
  {
    v29 = v28;
  }

  v20 = v19 + v28 - v29;
  if (v27)
  {
    ++v20;
  }

  if (*(v32 + 20) <= &v28[-v29])
  {
    if (*(v32 + 20) == -1)
    {
      if (*(v32 + 32) != 48 || *(v32 + 24) <= v20 || (*(v32 + 40) & 0x40) != 0)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v32 + 24) - v20;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = *(v32 + 20) - (v28 - v29);
  }

  v21 = v20 + v24;
  while (1)
  {
    v9 = 0;
    if (v24 > 0)
    {
      v9 = v29 > v35;
    }

    if (!v9)
    {
      break;
    }

    *--v29 = 48;
    --v24;
  }

  if (v21 >= 128)
  {
    if ((*(v32 + 40) & 0x40) == 0 && *(v32 + 24) > v21)
    {
      v11 = __printf_pad(v33, *(v32 + 24) - v21, 0);
    }

    if (v27)
    {
      v11 += __printf_puts(v33, &v27, 1u);
    }

    else if (v18)
    {
      v11 += __printf_puts(v33, v18, 2u);
    }

    if (v24 > 0)
    {
      v11 += __printf_pad(v33, v24, 1);
    }
  }

  else
  {
    if (v27)
    {
      *--v29 = v27;
    }

    else if (v18)
    {
      v5 = v18[1];
      *--v29 = v5;
      v6 = *v18;
      *--v29 = v6;
    }

    if (*(v32 + 24) > &v28[-v29] && (*(v32 + 40) & 0x40) == 0)
    {
      for (i = *(v32 + 24) - (v28 - v29); ; --i)
      {
        v8 = 0;
        if (i > 0)
        {
          v8 = v29 > v35;
        }

        if (!v8)
        {
          break;
        }

        *--v29 = 32;
      }

      if (i)
      {
        v11 = __printf_pad(v33, i, 0);
      }
    }
  }

  v12 = v11 + __printf_puts(v33, v29, v28 - v29);
  if (*(v32 + 24) > v12 && (*(v32 + 40) & 0x40) != 0)
  {
    v12 += __printf_pad(v33, *(v32 + 24) - v12, 0);
  }

  __printf_flush(v33);
  return v12;
}

char *__ultoa_1(unint64_t a1, char *a2, int a3, uint64_t a4, int a5, const void *a6, int a7, char *a8)
{
  v16 = a1;
  __dst = a2;
  if (a3 == 8)
  {
    do
    {
      *--__dst = (v16 & 7) + 48;
      v16 >>= 3;
    }

    while (v16);
    return __dst;
  }

  if (a3 != 10)
  {
    if (a3 != 16)
    {
      __assert_rtn("__ultoa", "xprintf_int.c", 162, "base == 16");
    }

    do
    {
      *--__dst = *(a4 + (v16 & 0xF));
      v16 >>= 4;
    }

    while (v16);
    return __dst;
  }

  if (a1 >= 0xA)
  {
    v9 = 0;
    if (a1 > 0x7FFFFFFFFFFFFFFFLL)
    {
      __dst = a2 - 1;
      *(a2 - 1) = a1 % 0xA + 48;
      v9 = 1;
      v10 = a1 / 0xA;
    }

    else
    {
      v10 = a1;
    }

    do
    {
      *--__dst = v10 % 10 + 48;
      ++v9;
      if (a5)
      {
        if (v9 == *a8 && *a8 != 127 && v10 > 9)
        {
          __dst -= a7;
          memcpy(__dst, a6, a7);
          v9 = 0;
          if (a8[1])
          {
            ++a8;
          }
        }
      }

      v10 /= 10;
    }

    while (v10);
    return __dst;
  }

  *(a2 - 1) = a1 + 48;
  return a2 - 1;
}

char *__ujtoa_1(unint64_t a1, char *a2, int a3, uint64_t a4, int a5, const void *a6, int a7, char *a8)
{
  v16 = a1;
  __dst = a2;
  if (a3 == 8)
  {
    do
    {
      *--__dst = (v16 & 7) + 48;
      v16 >>= 3;
    }

    while (v16);
    return __dst;
  }

  if (a3 != 10)
  {
    if (a3 != 16)
    {
      abort();
    }

    do
    {
      *--__dst = *(a4 + (v16 & 0xF));
      v16 >>= 4;
    }

    while (v16);
    return __dst;
  }

  if (a1 >= 0xA)
  {
    v9 = 0;
    if (a1 > 0x7FFFFFFFFFFFFFFFLL)
    {
      __dst = a2 - 1;
      *(a2 - 1) = a1 % 0xA + 48;
      v9 = 1;
      v10 = a1 / 0xA;
    }

    else
    {
      v10 = a1;
    }

    do
    {
      *--__dst = v10 % 10 + 48;
      ++v9;
      if (a5)
      {
        if (*a8 != 127 && v9 == *a8 && v10 > 9)
        {
          __dst -= a7;
          memcpy(__dst, a6, a7);
          v9 = 0;
          if (a8[1])
          {
            ++a8;
          }
        }
      }

      v10 /= 10;
    }

    while (v10);
    return __dst;
  }

  *(a2 - 1) = a1 % 0xA + 48;
  return a2 - 1;
}

uint64_t __printf_arginfo_ptr(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __assert_rtn("__printf_arginfo_ptr", "xprintf_int.c", 462, "n > 0");
  }

  if (*(a1 + 40) >> 15)
  {
    *a3 = 256;
  }

  else
  {
    *a3 = 32;
  }

  return 1;
}

uint64_t __printf_render_ptr(uint64_t a1, unsigned __int16 *a2, uint64_t **a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  memset(__b, 0, sizeof(__b));
  v5 = 0;
  v4 = 0;
  if (v8[20] >> 15)
  {
    return __xprintf_vector(v9, v8, v7);
  }

  else
  {
    v5 = **v7;
    memcpy(__b, v8, sizeof(__b));
    __b[7] = 120;
    LOWORD(__b[10]) = __b[10] & 0xFFEF | 0x10;
    LOWORD(__b[10]) = __b[10] & 0xFFFE | 1;
    v4 = &v5;
    return __printf_render_int(v9, __b, &v4);
  }
}

uint64_t __printf_arginfo_quote(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __assert_rtn("__printf_arginfo_quote", "xprintf_quote.c", 45, "n >= 1");
  }

  *a3 = 32;
  return 1;
}

uint64_t __printf_render_quote(uint64_t a1, uint64_t a2, const char ***a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  i = 0;
  v11 = 0;
  v10 = 0;
  v13 = **a3;
  if (!v13)
  {
    return __printf_out(v16, v15, "(null)", 8);
  }

  if (!*v13)
  {
    return __printf_out(v16, v15, "", 2);
  }

  v8 = 0;
  for (i = v13; *i; ++i)
  {
    if (isspace(*i) || *i == 92 || *i == 34)
    {
      ++v8;
    }
  }

  if (!v8)
  {
    v3 = strlen(v13);
    return __printf_out(v16, v15, v13, v3);
  }

  v6 = __printf_out(v16, v15, "", 1);
  i = v13;
  v11 = v13;
  while (*i)
  {
    v10 = 0;
    switch(*i)
    {
      case 92:
        v10 = "\\\";
        break;
      case 10:
        v10 = "\\n";
        break;
      case 13:
        v10 = "\\r";
        break;
      case 9:
        v10 = "\\t";
        break;
      case 32:
        v10 = " ";
        break;
      case 34:
        v10 = "\\"";
        break;
      default:
        if (!isspace(*i))
        {
          goto LABEL_34;
        }

        sprintf(v9, "\\%03o", *i);
        v10 = v9;
        break;
    }

    if (i != v11)
    {
      v6 += __printf_out(v16, v15, v11, i - v11);
    }

    v4 = strlen(v10);
    v6 += __printf_out(v16, v15, v10, v4);
    v11 = i + 1;
LABEL_34:
    ++i;
  }

  if (i != v11)
  {
    v6 += __printf_out(v16, v15, v11, i - v11);
  }

  v7 = v6 + __printf_out(v16, v15, "", 1);
  __printf_flush(v16);
  return v7;
}

uint64_t __printf_arginfo_str(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __assert_rtn("__printf_arginfo_str", "xprintf_str.c", 113, "n > 0");
  }

  if ((*(a1 + 40) & 8) != 0 || *(a1 + 28) == 67)
  {
    *a3 = 16;
  }

  else
  {
    *a3 = 8;
  }

  return 1;
}

uint64_t __printf_render_str(uint64_t a1, uint64_t a2, const char ***a3)
{
  if ((*(a2 + 40) & 8) != 0 || *(a2 + 28) == 83)
  {
    v8 = **a3;
    if (!v8)
    {
      return __printf_out(a1, a2, "(null)", 6);
    }

    __s = __wcsconv_0(v8, *(a2 + 20), *(a2 + 8));
    if (__s)
    {
      v3 = strlen(__s);
      v5 = __printf_out(a1, a2, __s, v3);
      __printf_flush(a1);
      free(__s);
      return v5;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v9 = **a3;
    if (!v9)
    {
      return __printf_out(a1, a2, "(null)", 6);
    }

    v6 = strlen(v9);
    if ((*(a2 + 20) & 0x80000000) == 0 && *(a2 + 20) < v6)
    {
      v6 = *(a2 + 20);
    }

    return __printf_out(a1, a2, v9, v6);
  }
}

char *__wcsconv_0(const __int32 *a1, int a2, _xlocale *a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  memset(&__b, 0, sizeof(__b));
  v9 = 0;
  if (v12 < 0)
  {
    v9 = v13;
    memcpy(&__b, &__wcsconv_initial_0, sizeof(__b));
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
    memcpy(&__b, &__wcsconv_initial_0, sizeof(__b));
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
  memcpy(&__b, &__wcsconv_initial_0, sizeof(__b));
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

uint64_t __printf_arginfo_chr(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __assert_rtn("__printf_arginfo_chr", "xprintf_str.c", 156, "n > 0");
  }

  if (*(a1 + 40) >> 15)
  {
    *a3 = 256;
  }

  else if ((*(a1 + 40) & 8) != 0 || *(a1 + 28) == 67)
  {
    *a3 = 4;
  }

  else
  {
    *a3 = 1;
  }

  return 1;
}

uint64_t __printf_render_chr(uint64_t a1, uint64_t a2, __int32 **a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v8 = 0u;
  memset(&v22, 0, sizeof(v22));
  v14 = 0;
  v3 = *(*(*(a2 + 8) + 1328) + 64);
  v13 = v5;
  v9 = &v5[-((v3 + 15) & 0x1FFFFFFF0)];
  v12 = v3;
  if (*(a2 + 40) >> 15)
  {
    v21 = __xprintf_vector(v20, v19, v18);
    v11 = 1;
  }

  else if ((*(v19 + 40) & 8) != 0 || *(v19 + 28) == 67)
  {
    v10 = 0;
    v16 = **v18;
    v7 = 0u;
    memset(&v22, 0, sizeof(v22));
    v14 = wcrtomb_l(v9, v16, &v22, *(v19 + 8));
    if (v14 == -1)
    {
      v21 = -1;
    }

    else
    {
      v10 = __printf_out(v20, v19, v9, v14);
      __printf_flush(v20);
      v21 = v10;
    }

    v11 = 1;
  }

  else
  {
    v17 = **v18;
    v15 = v17;
    v6 = 1;
    v17 = __printf_out(v20, v19, &v15, 1);
    __printf_flush(v20);
    v21 = v17;
    v11 = v6;
  }

  return v21;
}

uint64_t __printf_arginfo_time(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __assert_rtn("__printf_arginfo_time", "xprintf_time.c", 48, "n >= 1");
  }

  *a3 = 32;
  return 1;
}

uint64_t __printf_render_time(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  if ((*(a2 + 40) & 8) != 0)
  {
    v11 = **a3;
    v9 = *v11;
    v5 = 1000 * *(v11 + 2);
    v6 = 6;
  }

  else if (*(a2 + 40))
  {
    v10 = **a3;
    v9 = *v10;
    v5 = v10[1];
    v6 = 9;
  }

  else
  {
    v9 = ***a3;
    v5 = 0;
    v6 = 0;
  }

  if (*(a2 + 40) & 8) != 0 || (*(a2 + 40))
  {
    if ((*(a2 + 20) & 0x80000000) == 0)
    {
      v6 = *(a2 + 20);
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  v12 = v15;
  if ((*(a2 + 40) & 0x10) != 0)
  {
    v8 = v9;
    if (v9 >= 31536000)
    {
      v12 = &v15[sprintf(v15, "%jdy", v9 / 31536000)];
      v9 %= 31536000;
    }

    if (v8 >= 86400 && (v9 || v6))
    {
      v12 += sprintf(v12, "%jdd", v9 / 86400);
      v9 %= 86400;
    }

    if (v8 >= 3600 && (v9 || v6))
    {
      v12 += sprintf(v12, "%jdh", v9 / 3600);
      v9 %= 3600;
    }

    if (v8 >= 60 && (v9 || v6))
    {
      v12 += sprintf(v12, "%jdm", v9 / 60);
      v9 %= 60;
    }

    if (v9 || !v8 || v6)
    {
      v12 += sprintf(v12, "%jds", v9);
    }
  }

  else
  {
    v12 = &v15[sprintf(v15, "%jd", v9)];
  }

  if (v6)
  {
    for (i = v6; i < 9; ++i)
    {
      v5 /= 10;
    }

    v12 += sprintf(v12, ".%.*d", v6, v5);
  }

  v4 = __printf_out(a1, a2, v15, v12 - v15);
  __printf_flush(a1);
  return v4;
}

uint64_t __printf_arginfo_vis(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __assert_rtn("__printf_arginfo_vis", "xprintf_vis.c", 44, "n >= 1");
  }

  *a3 = 32;
  return 1;
}

uint64_t __printf_render_vis(uint64_t a1, uint64_t a2, char ***a3)
{
  __s = **a3;
  if (__s)
  {
    if ((*(a2 + 20) & 0x80000000) != 0)
    {
      v7 = strlen(__s);
    }

    else
    {
      v7 = *(a2 + 20);
    }

    v8 = malloc_type_malloc();
    if (v8)
    {
      if ((*(a2 + 40) & 0x80) != 0)
      {
        v5 = strvisx(v8, __s, v7, 156);
        v3 = __printf_out(a1, a2, v8, v5);
      }

      else if (*(a2 + 32) == 48)
      {
        v5 = strvisx(v8, __s, v7, 29);
        v3 = __printf_out(a1, a2, v8, v5);
      }

      else
      {
        if ((*(a2 + 40) & 0x10) != 0)
        {
          v5 = strvisx(v8, __s, v7, 28);
        }

        else
        {
          v5 = strvisx(v8, __s, v7, 31);
        }

        v3 = __printf_out(a1, a2, v8, v5);
      }

      v6 = v5 + v3;
      __printf_flush(a1);
      free(v8);
      return v6;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return __printf_out(a1, a2, "(null)", 6);
  }
}

uint64_t __printf_init(uint64_t result)
{
  *(result + 152) = result + 24;
  *(result + 8) = result + 24;
  *(result + 20) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t __printf_puts(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    **(a1 + 152) = a2;
    *(*(a1 + 152) + 8) = a3;
    *(a1 + 20) += a3;
    *(a1 + 152) += 16;
    if (++*(a1 + 16) >= 8)
    {
      __printf_flush(a1);
    }

    return a3;
  }

  else
  {
    return 0;
  }
}

uint64_t __printf_pad(uint64_t a1, int a2, int a3)
{
  v4 = 0;
  if (a3)
  {
    v5 = &zeroes_1;
  }

  else
  {
    v5 = &blanks_1;
  }

  v6 = a2;
  if (a2 > 0)
  {
    while (v6 > 16)
    {
      v4 += __printf_puts(a1, v5, 0x10u);
      v6 -= 16;
    }

    v4 += __printf_puts(a1, v5, v6);
  }

  return v4;
}

uint64_t __printf_out(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4)
{
  v5 = 0;
  if ((*(a2 + 40) & 0x40) == 0 && *(a2 + 24) > a4)
  {
    v5 = __printf_pad(a1, *(a2 + 24) - a4, *(a2 + 32) == 48);
  }

  v6 = v5 + __printf_puts(a1, a3, a4);
  if ((*(a2 + 40) & 0x40) != 0 && *(a2 + 24) > a4)
  {
    v6 += __printf_pad(a1, *(a2 + 24) - a4, *(a2 + 32) == 48);
  }

  return v6;
}

uint64_t __printf_arginfo_n(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __assert_rtn("__printf_arginfo_n", "xprintf.c", 233, "n >= 1");
  }

  *a3 = 32;
  return 1;
}

uint64_t __printf_render_n(uint64_t a1, uint64_t a2, _BYTE **a3)
{
  v13 = *a3;
  if ((*(a2 + 40) & 2) != 0)
  {
    v12 = *(a2 + 44);
    libc_hooks_will_write(v13, 1);
    *v13 = v12;
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    v11 = *(a2 + 44);
    libc_hooks_will_write(v13, 2);
    *v13 = v11;
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    v10 = *(a2 + 44);
    libc_hooks_will_write(v13, 8);
    *v13 = v10;
  }

  else if (*(a2 + 40))
  {
    v9 = *(a2 + 44);
    libc_hooks_will_write(v13, 8);
    *v13 = v9;
  }

  else if ((*(a2 + 40) & 0x1000) != 0)
  {
    v8 = *(a2 + 44);
    libc_hooks_will_write(v13, 8);
    *v13 = v8;
  }

  else if ((*(a2 + 40) & 0x2000) != 0)
  {
    v7 = *(a2 + 44);
    libc_hooks_will_write(v13, 8);
    *v13 = v7;
  }

  else if ((*(a2 + 40) & 0x800) != 0)
  {
    v6 = *(a2 + 44);
    libc_hooks_will_write(v13, 8);
    *v13 = v6;
  }

  else if ((*(a2 + 40) & 0x4000) != 0)
  {
    v5 = *(a2 + 44);
    libc_hooks_will_write(v13, 8);
    *v13 = v5;
  }

  else
  {
    v4 = *(a2 + 44);
    libc_hooks_will_write(v13, 4);
    *v13 = v4;
  }

  return 0;
}

uint64_t __printf_comp(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v29 = a2;
  j = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  i = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  v26 = *(a1 + 64);
  v21 = 0;
  v22 = 1;
  v16 = arrayinit(v18, 88);
  if (v16)
  {
    v15 = arrayinit(v17, 4);
    if (v15)
    {
      v24 = 0;
      while (1)
      {
        j = arrayget(v16, v24);
        if (!j)
        {
          v20 = -1;
          goto LABEL_110;
        }

        v27 = j;
        if (!*v26)
        {
          break;
        }

        v27 = j + 88;
        *(j + 20) = -1;
        *(j + 32) = 32;
        *(j + 16) = 88;
        v2 = v26;
        *(j + 64) = v26;
        *(j + 56) = v2;
        while (1)
        {
          v14 = 0;
          if (*v26)
          {
            v14 = *v26 != 37;
          }

          if (!v14)
          {
            break;
          }

          *(j + 64) = ++v26;
        }

        if (!*v26)
        {
          break;
        }

        ++v26;
        while (2)
        {
          *(j + 28) = *v26;
          switch(*(j + 28))
          {
            case ' ':
              if ((*(j + 40) & 0x80) == 0)
              {
                *(j + 40) = *(j + 40) & 0xFFDF | 0x20;
                *(j + 36) = 32;
              }

              ++v26;
              continue;
            case '#':
              *(j + 40) = *(j + 40) & 0xFFEF | 0x10;
              ++v26;
              continue;
            case '%':
              ++v26;
              goto LABEL_82;
            case '\'':
              *(j + 40) = *(j + 40) & 0xFEFF | 0x100;
              ++v26;
              continue;
            case '*':
              ++v26;
              for (i = 0; ; i += *v26++ - 48)
              {
                v11 = 0;
                if (*v26)
                {
                  v11 = (*v26 - 48) <= 9;
                }

                if (!v11)
                {
                  break;
                }

                i *= 10;
              }

              if (*v26 == 36)
              {
                if (i + 1 > v21)
                {
                  v21 = i + 1;
                }

                ++v26;
              }

              else
              {
                v4 = v22++;
                i = v4;
              }

              *(j + 48) = i;
              v23 = arrayget(v15, i);
              if (!v23)
              {
                v20 = -1;
                goto LABEL_110;
              }

              *v23 = 1;
              continue;
            case '+':
              *(j + 40) = *(j + 40) & 0xFF7F | 0x80;
              *(j + 36) = 43;
              ++v26;
              continue;
            case ',':
            case ':':
            case ';':
            case '_':
              *(j + 16) = *(j + 28);
              ++v26;
              continue;
            case '-':
              *(j + 40) = *(j + 40) & 0xFFBF | 0x40;
              ++v26;
              continue;
            case '.':
              *(j + 20) = 0;
              if (*++v26 == 42)
              {
                ++v26;
                for (i = 0; ; i += *v26++ - 48)
                {
                  v13 = 0;
                  if (*v26)
                  {
                    v13 = (*v26 - 48) <= 9;
                  }

                  if (!v13)
                  {
                    break;
                  }

                  i *= 10;
                }

                if (*v26 == 36)
                {
                  if (i + 1 > v21)
                  {
                    v21 = i + 1;
                  }

                  ++v26;
                }

                else
                {
                  v3 = v22++;
                  i = v3;
                }

                *(j + 52) = i;
                v23 = arrayget(v15, i);
                if (!v23)
                {
                  v20 = -1;
                  goto LABEL_110;
                }

                *v23 = 1;
              }

              else
              {
                while (1)
                {
                  v12 = 0;
                  if (*v26)
                  {
                    v12 = (*v26 - 48) <= 9;
                  }

                  if (!v12)
                  {
                    break;
                  }

                  *(j + 20) *= 10;
                  *(j + 20) += *v26++ - 48;
                }
              }

              continue;
            case '0':
              *(j + 32) = 48;
              ++v26;
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
              for (i = 0; ; i += *v26++ - 48)
              {
                v10 = 0;
                if (*v26)
                {
                  v10 = (*v26 - 48) <= 9;
                }

                if (!v10)
                {
                  break;
                }

                i *= 10;
              }

              if (*v26 == 36)
              {
                if (v22 > v21)
                {
                  v21 = v22;
                }

                v22 = i;
                ++v26;
              }

              else
              {
                *(j + 24) = i;
              }

              continue;
            case 'L':
              *(j + 40) = *(j + 40) & 0xFFFE | 1;
              ++v26;
              continue;
            case 'h':
              if (*++v26 == 104)
              {
                ++v26;
                *(j + 40) = *(j + 40) & 0xFFFD | 2;
              }

              else
              {
                *(j + 40) = *(j + 40) & 0xFFFB | 4;
              }

              continue;
            case 'j':
              *(j + 40) = *(j + 40) & 0xEFFF | 0x1000;
              ++v26;
              continue;
            case 'l':
              if (*++v26 == 108)
              {
                ++v26;
                *(j + 40) = *(j + 40) & 0xFFFE | 1;
                *(j + 40) &= ~0x800u;
              }

              else
              {
                *(j + 40) &= ~0x800u;
                *(j + 40) = *(j + 40) & 0xFFF7 | 8;
              }

              continue;
            case 'q':
              *(j + 40) &= ~8u;
              *(j + 40) = *(j + 40) & 0xF7FF | 0x800;
              ++v26;
              continue;
            case 't':
              *(j + 40) = *(j + 40) & 0xDFFF | 0x2000;
              ++v26;
              continue;
            case 'v':
              *(j + 40) = *(j + 40) & 0x7FFF | 0x8000;
              ++v26;
              continue;
            case 'z':
              *(j + 40) = *(j + 40) & 0xBFFF | 0x4000;
              ++v26;
              continue;
            default:
              ++v26;
LABEL_82:
              if (*(j + 28) < 33 || *(j + 28) > 126)
              {
                goto LABEL_95;
              }

              v9 = *(v29 + 200 + *(j + 28) - 33);
              if (v9 != 2 && v9 != 1)
              {
                if (v9 == 3)
                {
                  errx(1, "Unexpected flag: %c", *(j + 28));
                }
              }

              else
              {
                if (!arrayget(v15, v22 + 1))
                {
                  v20 = -1;
                  goto LABEL_110;
                }

                *j = *(v29 + 296 + 24 * (*(j + 28) - 33) + 16);
                *(j + 8) = *(v30 + 80);
                v7 = *(v29 + 296 + 24 * (*(j + 28) - 33));
                v8 = j;
                v5 = arrayget(v15, v22);
                v25 = v7(v8, 2, v5);
                if (v25 > 0)
                {
                  *(j + 72) = v22;
                }

                if (v25 > 1)
                {
                  *(j + 80) = v22 + 1;
                }

                v22 += v25;
              }

LABEL_95:
              ++v24;
              break;
          }

          break;
        }
      }

      if (v22 > v21)
      {
        v21 = v22;
      }

      *(v30 + 104) = *v15;
      *(v30 + 88) = *v16;
      *(v30 + 96) = v27;
      v25 = v21;
      *(v30 + 120) = v21;
      if (v25 < 1)
      {
        v25 = 1;
      }

      *(v30 + 112) = malloc_type_malloc();
      if (*(v30 + 112))
      {
        for (j = *(v30 + 88); j < v27; j += 88)
        {
          if (*(j + 72))
          {
            *(j + 72) = *(v30 + 112) + 16 * *(j + 72);
          }

          if (*(j + 80))
          {
            *(j + 80) = *(v30 + 112) + 16 * *(j + 80);
          }
        }

        *(v30 + 72) = v29;
        return v20;
      }

      else
      {
        v20 = -1;
LABEL_110:
        arrayfree(v16);
        arrayfree(v15);
        return v20;
      }
    }

    else
    {
      arrayfree(v16);
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t arrayinit(uint64_t a1, int a2)
{
  *a1 = malloc_type_calloc();
  if (!*a1)
  {
    return 0;
  }

  *(a1 + 8) = a2;
  *(a1 + 12) = 8;
  return a1;
}

void arrayfree(void **a1)
{
  if (a1)
  {
    free(*a1);
  }
}

uint64_t arrayget(uint64_t *a1, int a2)
{
  if (a2 < *(a1 + 3))
  {
    return *a1 + a2 * *(a1 + 2);
  }

  v7 = *(a1 + 3) * *(a1 + 2);
  v6 = a2 + 8;
  v5 = (a2 + 8) * *(a1 + 2);
  v2 = *a1;
  v4 = malloc_type_realloc();
  if (v4)
  {
    bzero((v4 + v7), v5 - v7);
    *a1 = v4;
    *(a1 + 3) = v6;
    return *a1 + a2 * *(a1 + 2);
  }

  return 0;
}

uint64_t __printf_exec(uint64_t a1, uint64_t a2, int *a3)
{
  v53 = a1;
  v52 = a2;
  v51 = a3;
  j = 0;
  i = 0;
  v48 = 0;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  __printf_init(v46);
  v46[0] = v52;
  for (i = 1; i < *(v53 + 120); ++i)
  {
    v26 = *(*(v53 + 104) + 4 * i);
    switch(v26)
    {
      case 1:
        v4 = v51;
        v51 += 2;
        v44 = *v4;
        *(*(v53 + 112) + 16 * i) = v44;
        break;
      case 2:
        v3 = v51;
        v51 += 2;
        v45 = *v3;
        *(*(v53 + 112) + 16 * i) = v45;
        break;
      case 4:
        v12 = v51;
        v51 += 2;
        v36 = *v12;
        *(*(v53 + 112) + 16 * i) = v36;
        break;
      case 8:
        v14 = v51;
        v51 += 2;
        v33 = *v14;
        v34 = v33;
        libc_hooks_will_read_cstring(v33);
        *(*(v53 + 112) + 16 * i) = v33;
        break;
      case 16:
        v15 = v51;
        v51 += 2;
        v31 = *v15;
        v32 = v31;
        libc_hooks_will_read_wcstring(v31);
        *(*(v53 + 112) + 16 * i) = v31;
        break;
      case 32:
        v13 = v51;
        v51 += 2;
        v35 = *v13;
        *(*(v53 + 112) + 16 * i) = v35;
        break;
      case 128:
        v16 = v51;
        v51 += 2;
        v30 = *v16;
        *(*(v53 + 112) + 16 * i) = v30;
        break;
      case 256:
        v18 = ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        v51 = (v18 + 1);
        v28 = *v18;
        *(*(v53 + 112) + 16 * i) = v28;
        break;
      case 65537:
        v9 = v51;
        v51 += 2;
        v39 = *v9;
        *(*(v53 + 112) + 16 * i) = v39;
        break;
      case 65664:
        v17 = v51;
        v51 += 2;
        v29 = *v17;
        *(*(v53 + 112) + 16 * i) = v29;
        break;
      case 131073:
        v6 = v51;
        v51 += 2;
        v42 = *v6;
        *(*(v53 + 112) + 16 * i) = v42;
        break;
      case 262145:
        v5 = v51;
        v51 += 2;
        v43 = *v5;
        *(*(v53 + 112) + 16 * i) = v43;
        break;
      case 1048577:
        v8 = v51;
        v51 += 2;
        v40 = *v8;
        *(*(v53 + 112) + 16 * i) = v40;
        break;
      case 2097153:
        v7 = v51;
        v51 += 2;
        v41 = *v7;
        *(*(v53 + 112) + 16 * i) = v41;
        break;
      case 4194305:
        v10 = v51;
        v51 += 2;
        v38 = *v10;
        *(*(v53 + 112) + 16 * i) = v38;
        break;
      case 8388609:
        v11 = v51;
        v51 += 2;
        v37 = *v11;
        *(*(v53 + 112) + 16 * i) = v37;
        break;
      default:
        errx(1, "argtype = %x (fmt = %s)\n", *(*(v53 + 104) + 4 * i), *(v53 + 64));
    }
  }

  for (j = *(v53 + 88); j < *(v53 + 96); j += 88)
  {
    if (*(j + 48))
    {
      *(j + 24) = *(*(v53 + 112) + 16 * *(j + 48));
      if ((*(j + 24) & 0x80000000) != 0)
      {
        *(j + 40) |= 0x40u;
        *(j + 24) = -*(j + 24);
      }
    }

    if (*(j + 52))
    {
      *(j + 20) = *(*(v53 + 112) + 16 * *(j + 52));
    }

    v48 += __printf_puts(v46, *(j + 56), *(j + 64) - *(j + 56));
    if (*(j + 28))
    {
      if (*(j + 28) >= 33 && *(j + 28) < 127 && (v19 = *(j + 28) - 33, v25 = *(*(v53 + 72) + v19 + 200), *(*(v53 + 72) + v19 + 200)))
      {
        if (v25 == 1)
        {
          __printf_flush(v46);
          *(j + 44) = v48;
          v24 = 0;
          if (*(*(v53 + 72) + 24 * (*(j + 28) - 33) + 304))
          {
            v24 = *(*(v53 + 72) + 24 * (*(j + 28) - 33) + 304);
          }

          v21 = v24(v52, j, j + 72);
          v48 += v21;
        }

        else if (v25 == 2)
        {
          *(j + 44) = v48;
          v23 = 0;
          if (*(*(v53 + 72) + 24 * (*(j + 28) - 33) + 304))
          {
            v23 = *(*(v53 + 72) + 24 * (*(j + 28) - 33) + 304);
          }

          v47 = v23(v46, j, j + 72);
          if (v47 < 0)
          {
            *(v46[0] + 16) |= 0x40u;
          }

          else
          {
            v48 += v47;
          }
        }
      }

      else
      {
        v27 = *(j + 28);
        v20 = __printf_out(v46, j, &v27, 1);
        v48 += v20;
      }
    }
  }

  __printf_flush(v46);
  return v48;
}

uint64_t libc_hooks_will_read_wcstring(uint64_t result)
{
  v1 = 0;
  if (off_E1538)
  {
    v1 = off_E1538;
  }

  if (v1)
  {
    return off_E1538(result);
  }

  return result;
}

uint64_t __v2printf(uint64_t a1, pthread_rwlock_t *a2, uint64_t a3, _xlocale *a4, char *a5, int *a6)
{
  memset(__b, 0, sizeof(__b));
  libc_hooks_will_read(a4, 1472);
  libc_hooks_will_read_cstring(a5);
  if ((*(a3 + 16) & 8) == 0 || (v10 = 0, !*(a3 + 24)) && (v10 = 0, (*(a3 + 16) & 0x200) == 0))
  {
    v10 = __swsetup(a3) != 0;
  }

  if (v10)
  {
    *__error() = 9;
    return -1;
  }

  else
  {
    if (!((32 * *(*(a3 + 104) + 72)) >> 5))
    {
      *(*(a3 + 104) + 72) = *(*(a3 + 104) + 72) & 0xF8 | 7;
    }

    if (a1 == -1)
    {
      if (a4)
      {
        if (a4 == -1)
        {
          a4 = &__global_locale;
        }

        return __vfprintf(a3, a4, a5, a6);
      }

      else
      {
        return __vfprintf(a3, &__c_locale, a5, a6);
      }
    }

    else if (a1)
    {
      pthread_mutex_lock(a1);
      pthread_rwlock_rdlock(*(a1 + 72));
      v14 = __printf_exec(a1, a3, a6);
      v11 = *__error();
      pthread_rwlock_unlock(*(a1 + 72));
      pthread_mutex_unlock(a1);
      *__error() = v11;
      return v14;
    }

    else if (a2)
    {
      pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
      memset(__b, 0, sizeof(__b));
      __b[8] = a5;
      if (a4)
      {
        if (a4 == -1)
        {
          a4 = &__global_locale;
        }

        xlocale_retain(a4);
      }

      else
      {
        v7 = __locale_key;
        v23 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
        if (v23)
        {
          v9 = v23;
        }

        else
        {
          v9 = &__global_locale;
        }

        a4 = v9;
        xlocale_retain(v9);
      }

      __b[10] = a4;
      pthread_rwlock_rdlock(a2);
      if ((__printf_comp(__b, a2) & 0x80000000) != 0)
      {
        v12 = *__error();
        pthread_rwlock_unlock(a2);
        xlocale_release(a4);
        *__error() = v12;
        return -1;
      }

      else
      {
        v15 = __printf_exec(__b, a3, a6);
        v13 = *__error();
        pthread_rwlock_unlock(a2);
        xlocale_release(a4);
        free(__b[11]);
        free(__b[13]);
        free(__b[14]);
        *__error() = v13;
        return v15;
      }
    }

    else
    {
      *__error() = 22;
      return -1;
    }
  }
}

uint64_t __xvprintf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(a3 + 16) & 0x1A) != 0xA || *(a3 + 18) < 0)
  {
    return __v2printf(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return __v3printf(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t __v3printf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  memset(v15, 0, sizeof(v15));
  v15[0] = 850045858;
  memcpy(&v17[1], v15, 0x40uLL);
  LOBYTE(v17[9]) &= 0xF8u;
  memset(&v17[10], 0, 0x80uLL);
  LOBYTE(v17[9]) &= ~8u;
  LOWORD(__b[2]) = *(v12 + 16) & 0xFFFD;
  WORD1(__b[2]) = *(v12 + 18);
  __b[6] = *(v12 + 48);
  __b[10] = *(v12 + 80);
  LOBYTE(v17[9]) = v17[9] & 0xF8 | ((32 * *(*(v12 + 104) + 72)) >> 5) & 7;
  memcpy(&v17[10], (*(v12 + 104) + 80), 0x80uLL);
  __b[0] = v16;
  __b[3] = v16;
  HIDWORD(__b[1]) = 1024;
  LODWORD(__b[4]) = 1024;
  LODWORD(__b[5]) = 0;
  v8 = __v2printf(v14, v13, __b, v11, v10, v9);
  if ((v8 & 0x80000000) == 0 && __fflush(__b))
  {
    v8 = -1;
  }

  if ((__b[2] & 0x40) != 0)
  {
    *(v12 + 16) |= 0x40u;
  }

  return v8;
}

uint64_t __xprintf_vector(uint64_t a1, const void *a2, float **a3)
{
  v58 = a1;
  v57 = a2;
  v56 = a3;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  memset(__b, 0, sizeof(__b));
  memcpy(__b, v57, sizeof(__b));
  v54 = *v56;
  v55 = *(v57 + 4);
  if (v55 == 88)
  {
    if (*(v57 + 7) == 99)
    {
      v55 = 0;
    }

    else
    {
      v55 = 32;
    }
  }

  __b[8] = &v55;
  __b[7] = &v55;
  if (v55)
  {
    ++__b[8];
  }

  LOWORD(__b[5]) &= ~0x8000u;
  if ((*(v57 + 20) & 4) != 0)
  {
    if (*(v57 + 7) == 112)
    {
      i = 0;
      v50 = 0;
      v49 = 0;
      v50 = *v54;
      v49 = &v50;
      v3 = __printf_render_ptr(v58, __b, &v49);
      v53 += v3;
      for (i = 1; i < 8; ++i)
      {
        v4 = __printf_puts(v58, __b[7], LODWORD(__b[8]) - LODWORD(__b[7]));
        v53 += v4;
        v50 = *(v54 + i);
        v5 = __printf_render_ptr(v58, __b, &v49);
        v53 += v5;
      }
    }

    else
    {
      j = 0;
      v47 = 0;
      v46 = 0;
      v47 = *v54;
      v46 = &v47;
      v6 = __printf_render_int(v58, __b, &v46);
      v53 += v6;
      for (j = 1; j < 8; ++j)
      {
        v7 = __printf_puts(v58, __b[7], LODWORD(__b[8]) - LODWORD(__b[7]));
        v53 += v7;
        v47 = *(v54 + j);
        v8 = __printf_render_int(v58, __b, &v46);
        v53 += v8;
      }
    }
  }

  else if ((*(v57 + 20) & 8) != 0)
  {
    LOWORD(__b[5]) &= ~8u;
    if (*(v57 + 7) == 112)
    {
      k = 0;
      v44 = 0;
      v43 = 0;
      v44 = *v54;
      v43 = &v44;
      v9 = __printf_render_ptr(v58, __b, &v43);
      v53 += v9;
      for (k = 1; k < 4; ++k)
      {
        v10 = __printf_puts(v58, __b[7], LODWORD(__b[8]) - LODWORD(__b[7]));
        v53 += v10;
        v44 = LODWORD(v54[k]);
        v11 = __printf_render_ptr(v58, __b, &v43);
        v53 += v11;
      }
    }

    else
    {
      m = 0;
      v41 = 0.0;
      v40 = 0;
      v41 = *v54;
      v40 = &v41;
      v12 = __printf_render_int(v58, __b, &v40);
      v53 += v12;
      for (m = 1; m < 4; ++m)
      {
        v13 = __printf_puts(v58, __b[7], LODWORD(__b[8]) - LODWORD(__b[7]));
        v53 += v13;
        v41 = v54[m];
        v14 = __printf_render_int(v58, __b, &v40);
        v53 += v14;
      }
    }
  }

  else
  {
    switch(*(v57 + 7))
    {
      case 'A':
      case 'E':
      case 'G':
      case 'a':
      case 'e':
      case 'f':
      case 'g':
        n = 0;
        v38 = 0.0;
        v37 = 0;
        v38 = *v54;
        v37 = &v38;
        v15 = __printf_render_float(v58, __b, &v37);
        v53 += v15;
        for (n = 1; n < 4; ++n)
        {
          v16 = __printf_puts(v58, __b[7], LODWORD(__b[8]) - LODWORD(__b[7]));
          v53 += v16;
          v38 = v54[n];
          v17 = __printf_render_float(v58, __b, &v37);
          v53 += v17;
        }

        break;
      case 'X':
      case 'd':
      case 'i':
      case 'o':
      case 'u':
      case 'x':
        LOWORD(__b[5]) = __b[5] & 0xFFFD | 2;
        ii = 0;
        v32 = 0;
        v31 = 0;
        v32 = *v54;
        v31 = &v32;
        v21 = __printf_render_int(v58, __b, &v31);
        v53 += v21;
        for (ii = 1; ii < 16; ++ii)
        {
          v22 = __printf_puts(v58, __b[7], LODWORD(__b[8]) - LODWORD(__b[7]));
          v53 += v22;
          v32 = *(v54 + ii);
          v23 = __printf_render_int(v58, __b, &v31);
          v53 += v23;
        }

        break;
      case 'c':
        jj = 0;
        v29 = 0;
        v28 = 0;
        v29 = *v54;
        v28 = &v29;
        v24 = __printf_render_chr(v58, __b, &v28);
        v53 += v24;
        for (jj = 1; jj < 16; ++jj)
        {
          v25 = __printf_puts(v58, __b[7], LODWORD(__b[8]) - LODWORD(__b[7]));
          v53 += v25;
          v29 = *(v54 + jj);
          v26 = __printf_render_chr(v58, __b, &v28);
          v53 += v26;
        }

        break;
      default:
        kk = 0;
        v35 = 0;
        v34 = 0;
        v35 = *v54;
        v34 = &v35;
        v18 = __printf_render_ptr(v58, __b, &v34);
        v53 += v18;
        for (kk = 1; kk < 16; ++kk)
        {
          v19 = __printf_puts(v58, __b[7], LODWORD(__b[8]) - LODWORD(__b[7]));
          v53 += v19;
          v35 = *(v54 + kk);
          v20 = __printf_render_ptr(v58, __b, &v34);
          v53 += v20;
        }

        break;
    }
  }

  return v53;
}

uint64_t at_quick_exit(uint64_t a1)
{
  v4 = malloc_type_calloc();
  if (v4)
  {
    v4[1] = a1;
    do
    {
      v1 = *v4;
      v2 = *v4;
      atomic_compare_exchange_strong(&handlers, &v2, v4);
      if (v2 != v1)
      {
        *v4 = v2;
      }
    }

    while (v2 != v1);
    return 0;
  }

  else
  {
    return -1;
  }
}

void quick_exit(int a1)
{
  for (i = atomic_load_explicit(&handlers, memory_order_acquire); i; i = *i)
  {
    (*(i + 8))();
  }

  _Exit(a1);
}

ssize_t strfmon(char *a1, size_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return _strfmon(a1, a2, v4, a3, va);
  }

  else
  {
    return _strfmon(a1, a2, __global_locale, a3, va);
  }
}

uint64_t _strfmon(char *a1, unint64_t a2, _xlocale *a3, unsigned __int8 *a4, double *a5)
{
  v80 = a1;
  v79 = a2;
  v78 = a3;
  v77 = a4;
  v76 = a5;
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0.0;
  v64 = 32;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v73 = localeconv_l(a3);
  v75 = v80;
  v74 = v77;
  v72 = 0;
  v60 = 0;
  v69 = 0;
  while (*v74)
  {
    if (*v74 != 37)
    {
      goto LABEL_6;
    }

    if (v74[1] == 37)
    {
      ++v74;
LABEL_6:
      if (v75 >= &v80[v79])
      {
        goto LABEL_191;
      }

      v5 = v74++;
      LOBYTE(v5) = *v5;
      v6 = v75++;
      *v6 = v5;
    }

    else
    {
      v71 = 5;
      v70 = 32;
      v67 = -1;
      v66 = -1;
      v68 = -1;
      v65 = 0.0;
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
                  v46 = *++v74;
                  if (v46 != 33)
                  {
                    break;
                  }

                  v71 |= 0x10u;
                }

                if (v46 != 40)
                {
                  break;
                }

                if ((v71 & 2) != 0)
                {
                  goto LABEL_192;
                }

                v71 |= 0xAu;
              }

              if (v46 != 43)
              {
                break;
              }

              if ((v71 & 2) != 0)
              {
                goto LABEL_192;
              }

              v71 |= 6u;
            }

            if (v46 != 45)
            {
              break;
            }

            v71 |= 0x20u;
          }

          if (v46 != 61)
          {
            break;
          }

          v70 = *++v74;
          if (!v70)
          {
            goto LABEL_192;
          }
        }

        if (v46 != 94)
        {
          break;
        }

        v71 &= ~1u;
      }

      if (isdigit_l(*v74, v78))
      {
        v56 = (v75 - v80);
        v68 = 0;
        while (isdigit_l(*v74, v78))
        {
          v68 *= 10;
          v68 += *v74 - 48;
          if (v68 > 0xFFFFFF)
          {
            goto LABEL_191;
          }

          ++v74;
        }

        if (&v56[v68] >= v79)
        {
          goto LABEL_191;
        }
      }

      if (*v74 == 35)
      {
        if (!isdigit_l(*++v74, v78))
        {
          goto LABEL_192;
        }

        v67 = 0;
        while (isdigit_l(*v74, v78))
        {
          v67 *= 10;
          v67 += *v74 - 48;
          if (v67 > 0xFFFFFF)
          {
            goto LABEL_191;
          }

          ++v74;
        }
      }

      if (*v74 == 46)
      {
        if (!isdigit_l(*++v74, v78))
        {
          goto LABEL_192;
        }

        v66 = 0;
        while (isdigit_l(*v74, v78))
        {
          v66 *= 10;
          v66 += *v74 - 48;
          if (v66 > 0xFFFFFF)
          {
            goto LABEL_191;
          }

          ++v74;
        }
      }

      v7 = v74++;
      v45 = *v7;
      if (v45 == 105)
      {
        v71 |= 0x40u;
      }

      else
      {
        if (v45 != 110)
        {
LABEL_192:
          *__error() = 22;
          goto LABEL_193;
        }

        v71 &= ~0x40u;
      }

      if (v60)
      {
        free(v60);
      }

      if ((v71 & 0x40) != 0)
      {
        v60 = strdup(v73->int_curr_symbol);
        if (v60)
        {
          v64 = *(v60 + 3);
          *(v60 + 3) = 0;
        }
      }

      else
      {
        v60 = strdup(v73->currency_symbol);
      }

      if (!v60)
      {
        goto LABEL_193;
      }

      v8 = *v76++;
      v65 = v8;
      if (v8 < 0.0)
      {
        v71 |= 0x80u;
        v65 = -v65;
      }

      if ((v67 & 0x80000000) == 0)
      {
        v44 = __calc_left_pad(v71 ^ 0x80, v60, v73);
        v69 = v44 - __calc_left_pad(v71, v60, v73);
        if (v69 < 0)
        {
          v69 = 0;
        }
      }

      v72 = __format_grouped_double(&v71, v67, v66, v70, &v73->decimal_point, v78, v65);
      if (!v72)
      {
        goto LABEL_193;
      }

      __setup_vars(v71, &v63, &v62, &v61, &v59, v73);
      __src = v75;
      while (1)
      {
        v9 = v69--;
        if (v9 <= 0)
        {
          break;
        }

        if (v75 >= &v80[v79])
        {
          goto LABEL_191;
        }

        v10 = v75++;
        *v10 = 32;
      }

      if (!v61 && (v71 & 0x80) != 0)
      {
        if (v75 >= &v80[v79])
        {
          goto LABEL_191;
        }

        v11 = v75++;
        *v11 = 40;
      }

      if (v63 == 1)
      {
        if (v61 == 1 || v61 == 3)
        {
          v55 = v59;
          while (*v55)
          {
            if (v75 >= &v80[v79])
            {
              goto LABEL_191;
            }

            v12 = v55++;
            LOBYTE(v12) = *v12;
            v13 = v75++;
            *v13 = v12;
          }

          if (v62 == 2)
          {
            if (v75 >= &v80[v79])
            {
              goto LABEL_191;
            }

            v14 = v75++;
            *v14 = 32;
          }
        }

        if ((v71 & 0x10) == 0)
        {
          v54 = v60;
          while (*v54)
          {
            if (v75 >= &v80[v79])
            {
              goto LABEL_191;
            }

            v15 = v54++;
            LOBYTE(v15) = *v15;
            v16 = v75++;
            *v16 = v15;
          }

          if (v61 == 4)
          {
            if (v62 == 2)
            {
              if (v75 >= &v80[v79])
              {
                goto LABEL_191;
              }

              v17 = v75++;
              *v17 = v64;
            }

            v53 = v59;
            while (*v53)
            {
              if (v75 >= &v80[v79])
              {
                goto LABEL_191;
              }

              v18 = v53++;
              LOBYTE(v18) = *v18;
              v19 = v75++;
              *v19 = v18;
            }

            if (v62 == 1)
            {
              if (v75 >= &v80[v79])
              {
                goto LABEL_191;
              }

              v20 = v75++;
              *v20 = 32;
            }
          }

          else if (v62 == 1)
          {
            if (v75 >= &v80[v79])
            {
              goto LABEL_191;
            }

            v21 = v75++;
            *v21 = v64;
          }
        }
      }

      else if (v61 == 1)
      {
        v52 = v59;
        while (*v52)
        {
          if (v75 >= &v80[v79])
          {
            goto LABEL_191;
          }

          v22 = v52++;
          LOBYTE(v22) = *v22;
          v23 = v75++;
          *v23 = v22;
        }

        if (v62 == 2)
        {
          if (v75 >= &v80[v79])
          {
            goto LABEL_191;
          }

          v24 = v75++;
          *v24 = 32;
        }
      }

      v51 = v72;
      while (*v51)
      {
        if (v75 >= &v80[v79])
        {
          goto LABEL_191;
        }

        v25 = v51++;
        LOBYTE(v25) = *v25;
        v26 = v75++;
        *v26 = v25;
      }

      if (!v63)
      {
        if (v61 == 3)
        {
          if (v62 == 1)
          {
            if (v75 >= &v80[v79])
            {
              goto LABEL_191;
            }

            v27 = v75++;
            *v27 = 32;
          }

          v50 = v59;
          while (*v50)
          {
            if (v75 >= &v80[v79])
            {
              goto LABEL_191;
            }

            v28 = v50++;
            LOBYTE(v28) = *v28;
            v29 = v75++;
            *v29 = v28;
          }
        }

        if ((v71 & 0x10) == 0)
        {
          if (v61 == 3 && v62 == 2 || v62 == 1 && (!v61 || v61 == 1 || v61 == 2 || v61 == 4))
          {
            if (v75 >= &v80[v79])
            {
              goto LABEL_191;
            }

            v30 = v75++;
            *v30 = v64;
          }

          v49 = v60;
          while (*v49)
          {
            if (v75 >= &v80[v79])
            {
              goto LABEL_191;
            }

            v31 = v49++;
            LOBYTE(v31) = *v31;
            v32 = v75++;
            *v32 = v31;
          }

          if (v61 == 4)
          {
            if (v62 == 2)
            {
              if (v75 >= &v80[v79])
              {
                goto LABEL_191;
              }

              v33 = v75++;
              *v33 = 32;
            }

            v48 = v59;
            while (*v48)
            {
              if (v75 >= &v80[v79])
              {
                goto LABEL_191;
              }

              v34 = v48++;
              LOBYTE(v34) = *v34;
              v35 = v75++;
              *v35 = v34;
            }
          }
        }
      }

      if (v61 == 2)
      {
        if (v62 == 2)
        {
          if (v75 >= &v80[v79])
          {
            goto LABEL_191;
          }

          v36 = v75++;
          *v36 = 32;
        }

        v47 = v59;
        while (*v47)
        {
          if (v75 >= &v80[v79])
          {
            goto LABEL_191;
          }

          v37 = v47++;
          LOBYTE(v37) = *v37;
          v38 = v75++;
          *v38 = v37;
        }
      }

      if (!v61)
      {
        if ((v71 & 0x80) != 0)
        {
          if (v75 >= &v80[v79])
          {
            goto LABEL_191;
          }

          v39 = v75++;
          *v39 = 41;
        }

        else if ((v67 & 0x80000000) == 0)
        {
          if (v75 >= &v80[v79])
          {
            goto LABEL_191;
          }

          v40 = v75++;
          *v40 = 32;
        }
      }

      if (v75 - __src < v68)
      {
        if ((v71 & 0x20) != 0)
        {
          while (v75 - __src < v68)
          {
            if (v75 >= &v80[v79])
            {
              goto LABEL_191;
            }

            v41 = v75++;
            *v41 = 32;
          }
        }

        else
        {
          v69 = v75 - __src;
          memmove(&__src[v68 - (v75 - __src)], __src, v75 - __src);
          memset(__src, 32, v68 - v69);
          v75 += v68 - v69;
        }
      }
    }
  }

  if (v75 < &v80[v79])
  {
    v42 = v75++;
    *v42 = 0;
    free(v72);
    free(v60);
    return v75 - v80 - 1;
  }

LABEL_191:
  *__error() = 7;
LABEL_193:
  v57 = *__error();
  if (v72)
  {
    free(v72);
  }

  if (v60)
  {
    free(v60);
  }

  *__error() = v57;
  return -1;
}

ssize_t strfmon_l(char *a1, size_t a2, locale_t a3, const char *a4, ...)
{
  va_start(va, a4);
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
    v5 = __c_locale;
  }

  return _strfmon(a1, a2, v5, a4, va);
}

uint64_t __calc_left_pad(unsigned int a1, const char *a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  __s = 0;
  v4 = 0;
  __setup_vars(a1, &v8, &v7, &v6, &__s, a3);
  if (v8)
  {
    v4 = strlen(v10);
    if (v7)
    {
      ++v4;
    }
  }

  if (v6)
  {
    if (v6 == 1 || (v6 == 4 || v6 == 3) && v8)
    {
      v4 += strlen(__s);
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    ++v4;
  }

  return v4;
}

void *__format_grouped_double(_DWORD *a1, int a2, int a3, int a4, char **a5, _xlocale *a6, double a7)
{
  v32 = a7;
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  __dst = 0;
  memset(__n, 0, sizeof(__n));
  v23 = 0;
  memset(__len, 0, sizeof(__len));
  fixed = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  fixed = __fix_nogrouping(a5[7]);
  v20 = *v27[5];
  if (!v20)
  {
    v20 = **v27;
  }

  v19 = *v27[6];
  if (!v19)
  {
    v19 = *v27[1];
  }

  if (v30 == -1)
  {
    v30 = 0;
  }

  if (v29 == -1)
  {
    v29 = (*v31 & 0x40) != 0 ? *(v27 + 80) : *(v27 + 81);
    if (v29 == 127)
    {
      v29 = 2;
    }
  }

  if (*v31)
  {
    v30 += get_groups(v30, fixed);
  }

  v14 = v34;
  snprintf_l(v34, 0x20uLL, v26, "%%%d.%df", v30 + v29 + 1, v29);
  __n[0] = asprintf_l(&__n[1], v26, v34, *&v32);
  if ((__n[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v23 = 2 * strlen(*&__n[1]) + 1;
  __dst = malloc_type_malloc();
  if (__dst)
  {
    bzero(__dst, v23);
    *&__len[1] = __dst + v23 - 1;
    __len[0] = 0;
    while (*(*&__n[1] + __len[0]) == 32)
    {
      ++__len[0];
      --__n[0];
    }

    if (v29 > 0)
    {
      *&__len[1] -= v29;
      memcpy(*&__len[1], (*&__n[1] + __n[0] + __len[0] - v29), v29);
      --*&__len[1];
      **&__len[1] = v20;
      __n[0] -= v29 + 1;
    }

    if ((*v31 & 1) != 0 && v19 && *fixed != 127 && *fixed > 0)
    {
      while (__n[0] > *fixed)
      {
        v17 = *fixed;
        while (1)
        {
          v7 = v17--;
          if (v7 <= 0)
          {
            break;
          }

          --__n[0];
          v8 = *(*&__n[1] + __n[0] + __len[0]);
          --*&__len[1];
          **&__len[1] = v8;
        }

        --*&__len[1];
        **&__len[1] = v19;
        ++v18;
        if (*++fixed == 127)
        {
          break;
        }

        if (!*fixed)
        {
          --fixed;
          while (__n[0] > *fixed)
          {
            v16 = *fixed;
            while (1)
            {
              v9 = v16--;
              if (v9 <= 0)
              {
                break;
              }

              --__n[0];
              v10 = *(*&__n[1] + __n[0] + __len[0]);
              --*&__len[1];
              **&__len[1] = v10;
            }

            --*&__len[1];
            **&__len[1] = v19;
            ++v18;
          }
        }
      }

      if (__n[0])
      {
        v15 = __n[0];
        while (1)
        {
          v11 = v15--;
          if (v11 <= 0)
          {
            break;
          }

          --__n[0];
          v12 = *(*&__n[1] + __n[0] + __len[0]);
          --*&__len[1];
          **&__len[1] = v12;
        }
      }

      __len[0] -= v18;
    }

    else
    {
      *&__len[1] -= __n[0];
      memcpy(*&__len[1], (*&__n[1] + __len[0]), __n[0]);
      if (!v29)
      {
        --__len[0];
      }
    }

    if (__len[0] > 0)
    {
      *&__len[1] -= __len[0];
      memset(*&__len[1], v28, __len[0]);
    }

    v23 = v23 - (*&__len[1] - __dst) + 1;
    memmove(__dst, *&__len[1], v23);
    free(*&__n[1]);
    return __dst;
  }

  else
  {
    free(*&__n[1]);
    return 0;
  }
}

uint64_t __setup_vars(uint64_t result, _BYTE *a2, _BYTE *a3, _BYTE *a4, const char **a5, uint64_t a6)
{
  if ((result & 0x80) != 0 && (result & 0x40) != 0)
  {
    *a2 = *(a6 + 89);
    *a3 = *(a6 + 91);
    if ((result & 8) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a6 + 93);
    }

    *a4 = v11;
    if (**(a6 + 72))
    {
      v10 = *(a6 + 72);
    }

    else
    {
      v10 = "-";
    }

    *a5 = v10;
  }

  else if ((result & 0x40) != 0)
  {
    *a2 = *(a6 + 88);
    *a3 = *(a6 + 90);
    if ((result & 8) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a6 + 92);
    }

    *a4 = v9;
    *a5 = *(a6 + 64);
  }

  else if ((result & 0x80) != 0)
  {
    *a2 = *(a6 + 84);
    *a3 = *(a6 + 85);
    if ((result & 8) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a6 + 87);
    }

    *a4 = v8;
    if (**(a6 + 72))
    {
      v7 = *(a6 + 72);
    }

    else
    {
      v7 = "-";
    }

    *a5 = v7;
  }

  else
  {
    *a2 = *(a6 + 82);
    *a3 = *(a6 + 83);
    if ((result & 8) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a6 + 86);
    }

    *a4 = v6;
    *a5 = *(a6 + 64);
  }

  if (*a2)
  {
    *a2 = 1;
  }

  if (*a3 == 127)
  {
    *a3 = 0;
  }

  if (*a4 == 127)
  {
    *a4 = 0;
  }

  return result;
}

uint64_t get_groups(int a1, char *a2)
{
  v5 = a2;
  v4 = 0;
  if (*a2 == 127 || *a2 <= 0)
  {
    return 0;
  }

  else
  {
    while (a1 > *v5)
    {
      ++v4;
      v2 = v5++;
      a1 -= *v2;
      if (*v5 == 127)
      {
        break;
      }

      if (!*v5)
      {
        v4 += (a1 - 1) / *(v5 - 1);
        break;
      }
    }

    return v4;
  }
}

errno_t memset_s(void *__s, rsize_t __smax, int __c, rsize_t __n)
{
  __len = __n;
  v5 = 0;
  if (!__s)
  {
    return 22;
  }

  if (__smax > 0x7FFFFFFFFFFFFFFFLL)
  {
    return 7;
  }

  if (__n > 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 7;
    __len = __smax;
  }

  if (__len > __smax)
  {
    v5 = 84;
    __len = __smax;
  }

  memset(__s, __c, __len);
  return v5;
}

void rb_tree_init(rb_tree_t *a1, const rb_tree_ops_t *a2)
{
  a1->opaque[1] = a2;
  a1->opaque[0] = 0;
  a1->opaque[2] = a1->opaque[0];
  a1->opaque[3] = a1->opaque[0];
  a1->opaque[4] = 0;
}

void *__cdecl rb_tree_find_node(rb_tree_t *a1, const void *a2)
{
  v7 = a1->opaque[1];
  v6 = v7[1];
  for (i = a1->opaque[0]; i; i = i[v3 < 0])
  {
    v4 = i - v7[2];
    v3 = v6(v7[3], v4, a2);
    if (!v3)
    {
      return v4;
    }
  }

  return 0;
}

void *__cdecl rb_tree_find_node_geq(rb_tree_t *a1, const void *a2)
{
  v9 = a1->opaque[1];
  v8 = v9[1];
  v7 = a1->opaque[0];
  v6 = 0;
  while (v7)
  {
    v5 = v7 - v9[2];
    v4 = v8(v9[3], v5, a2);
    if (!v4)
    {
      return v5;
    }

    if (v4 > 0)
    {
      v6 = v7;
    }

    v7 = v7[v4 < 0];
  }

  if (v6)
  {
    return v6 - v9[2];
  }

  else
  {
    return 0;
  }
}

void *__cdecl rb_tree_find_node_leq(rb_tree_t *a1, const void *a2)
{
  v9 = a1->opaque[1];
  v8 = v9[1];
  v7 = a1->opaque[0];
  v6 = 0;
  while (v7)
  {
    v5 = v7 - v9[2];
    v4 = v8(v9[3], v5, a2);
    if (!v4)
    {
      return v5;
    }

    if (v4 < 0)
    {
      v6 = v7;
    }

    v7 = v7[v4 < 0];
  }

  if (v6)
  {
    return v6 - v9[2];
  }

  else
  {
    return 0;
  }
}

void *__cdecl rb_tree_insert_node(rb_tree_t *a1, void *a2)
{
  v12 = a1->opaque[1];
  v11 = *v12;
  v8 = a2 + v12[2];
  v9 = a1->opaque[0];
  v10 = a1;
  v7 = 0;
  while (v9)
  {
    v5 = v9 - v12[2];
    v4 = v11(v12[3], v5, a2);
    if (!v4)
    {
      return v5;
    }

    v10 = v9;
    v7 = v4 < 0;
    v9 = v9->opaque[v4 < 0];
  }

  v8[2] = v10 | v8[2] & 3;
  if (v7)
  {
    v8[2] |= 2uLL;
  }

  else
  {
    v8[2] &= ~2uLL;
  }

  if (v10 == a1)
  {
    v8[2] &= ~1uLL;
    a1->opaque[2] = v8;
    a1->opaque[3] = v8;
    v6 = 0;
  }

  else
  {
    if (v10 == a1->opaque[v7 + 2])
    {
      a1->opaque[v7 + 2] = v8;
    }

    v8[2] |= 1uLL;
    v3 = 0;
    if (v10)
    {
      v3 = (v10->opaque[2] & 1) != 0;
    }

    v6 = v3;
  }

  *v8 = v10->opaque[v7];
  v8[1] = v10->opaque[v7];
  v10->opaque[v7] = v8;
  ++a1->opaque[4];
  if (v6)
  {
    rb_tree_insert_rebalance(a1, v8);
  }

  return a2;
}

void rb_tree_insert_rebalance(uint64_t a1, unint64_t a2)
{
  v8 = a2;
  v6 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(v6 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v5 = *(v6 + 16) & 0xFFFFFFFFFFFFFFFCLL;
    v2 = v6 == *(v5 + 8);
    v3 = *(v5 + 8 * (v6 != *(v5 + 8)));
    if (!v3 || (*(v3 + 16) & 1) == 0)
    {
      break;
    }

    *(v3 + 16) &= ~1uLL;
    *(v6 + 16) &= ~1uLL;
    if (*a1 != v5)
    {
      *(v5 + 16) |= 1uLL;
      v8 = v5;
      v6 = *(v5 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      if (v6)
      {
        if (*(v6 + 16))
        {
          continue;
        }
      }
    }

    return;
  }

  if (v8 == *(v6 + 8 * (v6 != *(v5 + 8))))
  {
    rb_tree_reparent_nodes(a1, v6, v6 != *(v5 + 8));
    v7 = *(v6 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  }

  rb_tree_reparent_nodes(a1, v5, v2);
  *(*a1 + 16) &= ~1uLL;
}

void rb_tree_remove_node(rb_tree_t *a1, void *a2)
{
  v5 = a1->opaque[1];
  v4 = a2 + v5[2];
  if (v4 && (*v4 || v4[1]))
  {
    if (*v4 && v4[1])
    {
      v2 = rb_tree_iterate(a1, a2, (v4[2] & 2) == 0);
      rb_tree_swap_prune_and_rebalance(a1, v4, v2 + v5[2]);
    }

    else
    {
      rb_tree_prune_blackred_branch(a1, v4, *v4 == 0);
    }
  }

  else
  {
    if (!v4 || (v3 = 0, (v4[2] & 1) == 0))
    {
      v3 = a1->opaque[0] != v4;
    }

    rb_tree_prune_node(a1, v4, v3);
  }
}

void rb_tree_prune_node(void *a1, void *a2, char a3)
{
  v5 = (a2[2] & 2) != 0;
  v4 = a2[2] & 0xFFFFFFFFFFFFFFFCLL;
  v3 = *a1 == a2;
  *(v4 + 8 * ((a2[2] & 2) != 0)) = *a2;
  --a1[4];
  if (a1[((a2[2] & 2) != 0) + 2] == a2)
  {
    a1[((a2[2] & 2) != 0) + 2] = v4;
    if (v3)
    {
      a1[3] = v4;
    }
  }

  a2[2] &= 3uLL;
  if (a3)
  {
    rb_tree_removal_rebalance(a1, v4, v5);
  }
}

void *rb_tree_prune_blackred_branch(void *result, uint64_t a2, unsigned int a3)
{
  v5 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(a2 + 8 * a3);
  v3 = *result == a2;
  *(v4 + 16) ^= (*(v4 + 16) ^ *(a2 + 16)) & 3;
  *(v5 + 8 * ((*(v4 + 16) & 2) != 0)) = v4;
  *(v4 + 16) = v5 | *(v4 + 16) & 3;
  --result[4];
  if (v3)
  {
    result[(a3 ^ 1) + 2] = v4;
  }

  else if (result[((*(a2 + 16) & 2) != 0) + 2] == a2)
  {
    result[((*(a2 + 16) & 2) != 0) + 2] = v4;
  }

  *(a2 + 16) &= 3uLL;
  return result;
}

void *__cdecl rb_tree_iterate(rb_tree_t *a1, void *a2, const unsigned int a3)
{
  v7 = a1->opaque[1];
  v6 = a3 ^ 1;
  if (a2)
  {
    v4 = a2 + v7[2];
    if (v4[a3])
    {
        ;
      }

      return (i - v7[2]);
    }

    else
    {
      while (a1->opaque[0] != v4)
      {
        if (v6 == ((v4[2] & 2) != 0))
        {
          return ((v4[2] & 0xFFFFFFFFFFFFFFFCLL) - v7[2]);
        }

        v4 = (v4[2] & 0xFFFFFFFFFFFFFFFCLL);
      }

      return 0;
    }
  }

  else if (a1->opaque[0])
  {
    return a1->opaque[(a3 == 0) + 2] - v7[2];
  }

  else
  {
    return 0;
  }
}

void rb_tree_swap_prune_and_rebalance(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = (*(a3 + 16) & 2) != 0;
  v9 = (*(a3 + 16) & 2) == 0;
  v7 = *(a3 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = 1;
  if (a3)
  {
    v5 = (*(a3 + 16) & 1) == 0;
  }

  v6 = v5;
  if (v7 == a2)
  {
    v8 = *(a3 + 8 * ((*(a3 + 16) & 2) != 0));
  }

  else
  {
    v8 = *(a3 + 8 * ((*(a3 + 16) & 2) == 0));
  }

  v4 = 0;
  if (v8)
  {
    v4 = (*(v8 + 16) & 1) != 0;
  }

  if (v4)
  {
    *(v8 + 16) &= ~1uLL;
    v6 = 0;
    if (v7 != a2)
    {
      *(v8 + 16) = v7 | *(v8 + 16) & 3;
      if (v3)
      {
        *(v8 + 16) |= 2uLL;
      }

      else
      {
        *(v8 + 16) &= ~2uLL;
      }
    }
  }

  if (v7 == a2)
  {
    v7 = a3;
  }

  else
  {
    *(v7 + 8 * v3) = v8;
    *(a3 + 8 * v9) = *(a2 + 8 * v9);
    *(*(a3 + 8 * v9) + 16) = a3 | *(*(a3 + 8 * v9) + 16) & 3;
    v9 = v3;
  }

  *(a3 + 8 * v9) = *(a2 + 8 * v9);
  *(*(a3 + 8 * v9) + 16) = a3 | *(*(a3 + 8 * v9) + 16) & 3;
  *(a3 + 16) ^= (*(a3 + 16) ^ *(a2 + 16)) & 3;
  *(a3 + 16) = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL | *(a3 + 16) & 3;
  *((*(a3 + 16) & 0xFFFFFFFFFFFFFFFCLL) + 8 * ((*(a3 + 16) & 2) != 0)) = a3;
  --a1[4];
  if (a1[((*(a2 + 16) & 2) != 0) + 2] == a2)
  {
    a1[((*(a2 + 16) & 2) != 0) + 2] = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  }

  *(a2 + 16) &= 3uLL;
  if (v6)
  {
    rb_tree_removal_rebalance(a1, v7, v3);
  }
}

size_t rb_tree_count(rb_tree_t *a1)
{
  if (a1)
  {
    return a1->opaque[4];
  }

  else
  {
    return 0;
  }
}

void rb_tree_reparent_nodes(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = *(a2 + 8 * a3);
  *(v5 + 8 * ((*(a2 + 16) & 2) != 0)) = v4;
  *(a2 + 8 * a3) = *(v4 + 8 * (a3 ^ 1));
  *(v4 + 8 * (a3 ^ 1)) = a2;
  *(v4 + 16) = v5 | *(v4 + 16) & 3;
  *(a2 + 16) = v4 | *(a2 + 16) & 3;
  v3 = (*(v4 + 16) ^ *(a2 + 16)) & 3;
  *(v4 + 16) ^= v3;
  *(a2 + 16) ^= v3;
  if (a3 != 1)
  {
    *(a2 + 16) |= 2uLL;
  }

  else
  {
    *(a2 + 16) &= ~2uLL;
  }

  if (*(a2 + 8 * a3))
  {
    *(*(a2 + 8 * a3) + 16) = a2 | *(*(a2 + 8 * a3) + 16) & 3;
    if (a3)
    {
      *(*(a2 + 8 * a3) + 16) |= 2uLL;
    }

    else
    {
      *(*a2 + 16) &= ~2uLL;
    }
  }
}

void rb_tree_removal_rebalance(void *a1, unint64_t a2, unsigned int a3)
{
  while (1)
  {
    v5 = 1;
    if (*(a2 + 8 * a3))
    {
      v5 = (*(*(a2 + 8 * a3) + 16) & 1) == 0;
    }

    if (!v5)
    {
      break;
    }

    v7 = a3 ^ 1;
    v6 = *(a2 + 8 * (a3 ^ 1));
    if (a2 && (*(a2 + 16) & 1) != 0 || *v6 && (*(*v6 + 16) & 1) != 0 || v6[1] && (*(v6[1] + 16) & 1) != 0)
    {
      goto LABEL_15;
    }

    v3 = *(a2 + 8 * (a3 ^ 1));
    if (v6 && (v6[2] & 1) != 0)
    {
      rb_tree_reparent_nodes(a1, a2, v7);
      v6 = *(a2 + 8 * v7);
LABEL_15:
      if (!a2 || (*(a2 + 16) & 1) == 0 || v6 && (v6[2] & 1) != 0 || *v6 && (*(*v6 + 16) & 1) != 0 || v6[1] && (*(v6[1] + 16) & 1) != 0)
      {
        if (!v6[v7] || (*(v6[v7] + 16) & 1) == 0)
        {
          rb_tree_reparent_nodes(a1, v6, a3);
          v6 = *(a2 + 8 * v7);
        }

        *(v6[v7] + 16) &= ~1uLL;
        rb_tree_reparent_nodes(a1, a2, v7);
      }

      else
      {
        *(a2 + 16) &= ~1uLL;
        v6[2] |= 1uLL;
      }

      return;
    }

    v4 = *(a2 + 8 * (a3 ^ 1));
    v6[2] |= 1uLL;
    if (*a1 == a2)
    {
      return;
    }

    a3 = (*(a2 + 16) & 2) != 0;
    a2 = *(a2 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  }
}

int regncomp_l(regex_t *a1, const char *a2, size_t a3, int a4, locale_t a5)
{
  v14 = malloc_type_malloc();
  if (!v14)
  {
    return 12;
  }

  if (a5)
  {
    if (a5 == -1)
    {
      a5 = __global_locale;
    }
  }

  else
  {
    a5 = &__c_locale;
  }

  if (*(*(a5 + 166) + 64) == 1)
  {
    v11 = a2;
    v10 = v14;
    for (i = 0; i < a3; ++i)
    {
      v5 = v11++;
      v6 = v10++;
      *v6 = *v5;
    }

    v13 = a3;
  }

  else
  {
    v8 = v14;
    memset(&__b, 0, sizeof(__b));
    while (a3)
    {
      v9 = mbrtowc_l(v8, a2, a3, &__b, a5);
      if (v9 + 2 <= 1)
      {
        free(v14);
        return 17;
      }

      if (!v9)
      {
        if (*a2)
        {
          free(v14);
          return 2;
        }

        v9 = 1;
      }

      a2 += v9;
      a3 -= v9;
      ++v8;
    }

    v13 = v8 - v14;
  }

  v14[v13] = 0;
  v15 = tre_compile(a1, v14, v13, a4, a5);
  free(v14);
  return v15;
}

int regncomp(regex_t *a1, const char *a2, size_t a3, int a4)
{
  v7 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    v5 = __global_locale;
  }

  return regncomp_l(a1, a2, a3, a4, v5);
}

int regcomp_l(regex_t *a1, const char *a2, int a3, locale_t a4)
{
  if ((a3 & 0x20) == 0)
  {
    v5 = strlen(a2);
    return regncomp_l(a1, a2, v5, a3, a4);
  }

  if (a1->re_endp >= a2)
  {
    v5 = a1->re_endp - a2;
    return regncomp_l(a1, a2, v5, a3, a4);
  }

  return 16;
}

int regcomp(regex_t *a1, const char *a2, int a3)
{
  v6 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    v4 = __global_locale;
  }

  return regcomp_l(a1, a2, a3, v4);
}

uint64_t regwncomp_l(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v6 = a5;
  if (!a5)
  {
    return tre_compile(a1, a2, a3, a4, __c_locale);
  }

  if (a5 == -1)
  {
    v6 = __global_locale;
  }

  return tre_compile(a1, a2, a3, a4, v6);
}

int regwncomp(regex_t *a1, const __int32 *a2, size_t a3, int a4)
{
  v7 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    v5 = __global_locale;
  }

  return tre_compile(a1, a2, a3, a4, v5);
}

int regwcomp_l(regex_t *a1, const __int32 *a2, int a3, locale_t a4)
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
    v6 = __c_locale;
  }

  v4 = wcslen(a2);
  return tre_compile(a1, a2, v4, a3, v6);
}

uint64_t tre_fill_pmatch(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, int a6)
{
  if ((a3 & 4) != 0)
  {
    return 0;
  }

  else
  {
    v12 = 0;
    if ((a6 & 0x80000000) == 0 && a5)
    {
      v11 = a5;
      if (*(a4 + 48) && *(*(a4 + 48) + 16) > 0)
      {
        v6 = *(a4 + 80);
        __dst = malloc_type_malloc();
        if (!__dst)
        {
          return 12;
        }

        memcpy(__dst, a5, 16 * *(a4 + 80));
        tre_reset_last_matched_branches(__dst, *(*(a4 + 48) + 8), *(*(a4 + 48) + 16), 0, 0);
        v11 = __dst;
      }

      v10 = *(a4 + 24);
      while (1)
      {
        v8 = 0;
        if (v12 < *(a4 + 72))
        {
          v8 = v12 < a1;
        }

        if (!v8)
        {
          break;
        }

        if (*(v10 + 8 * v12) == *(a4 + 88))
        {
          *(a2 + 16 * v12) = a6;
        }

        else
        {
          *(a2 + 16 * v12) = tre_tag_get(v11, *(v10 + 8 * v12));
        }

        if (*(v10 + 8 * v12 + 4) == *(a4 + 88))
        {
          *(a2 + 16 * v12 + 8) = a6;
        }

        else
        {
          *(a2 + 16 * v12 + 8) = tre_tag_get(v11, *(v10 + 8 * v12 + 4));
        }

        if (*(a2 + 16 * v12) == -1 || *(a2 + 16 * v12 + 8) == -1)
        {
          *(a2 + 16 * v12 + 8) = -1;
          *(a2 + 16 * v12) = -1;
        }

        ++v12;
      }

      if (v11 != a5)
      {
        free(v11);
      }
    }

    while (v12 < a1)
    {
      *(a2 + 16 * v12) = -1;
      *(a2 + 16 * v12++ + 8) = -1;
    }

    return 0;
  }
}

uint64_t tre_reset_last_matched_branches(uint64_t result, uint64_t *a2, int a3, int a4, int a5)
{
  v25 = result;
  v20 = 0;
  while (1)
  {
    v5 = a3--;
    if (v5 <= 0)
    {
      break;
    }

    if (*(a2 + 2) == 1)
    {
      v13 = *a2;
      if (a4 <= 0)
      {
        v16 = 0;
      }

      else
      {
        v9 = 1;
        if (!a5)
        {
          v8 = tre_tag_touch_get(v25, *(v13 + 20));
          v6 = tre_tag_touch_get(v25, a4);
          result = v8;
          v9 = v8 < v6;
        }

        v16 = v9;
      }

      if (v16)
      {
        v17 = *(v13 + 24);
        v12 = *v13;
        while (v17 > 0)
        {
          result = tre_tag_reset(v25, *v12);
          --v17;
          ++v12;
        }
      }

      if (*(v13 + 16) > 0)
      {
        result = tre_reset_last_matched_branches(v25, *(v13 + 8), *(v13 + 16), *(a2 + 3), v16);
      }
    }

    else
    {
      if (!a5)
      {
        v20 = 0;
        v18 = *(a2 + 2);
        v14 = *a2;
        while (v18 > 0)
        {
          result = tre_tag_touch_get(v25, *(v14 + 20));
          if (result > v20)
          {
            v20 = result;
          }

          --v18;
          v14 += 32;
        }
      }

      v19 = *(a2 + 2);
      v15 = *a2;
      while (v19 > 0)
      {
        v7 = 1;
        if (!a5)
        {
          result = tre_tag_touch_get(v25, *(v15 + 20));
          v7 = result < v20;
        }

        if (v7)
        {
          v11 = *(v15 + 24);
          v10 = *v15;
          while (v11 > 0)
          {
            result = tre_tag_reset(v25, *v10);
            --v11;
            ++v10;
          }
        }

        if (*(v15 + 16) > 0)
        {
          result = tre_reset_last_matched_branches(v25, *(v15 + 8), *(v15 + 16), *(a2 + 3), v7);
        }

        --v19;
        v15 += 32;
      }
    }

    a2 += 2;
  }

  return result;
}

uint64_t tre_tag_get(uint64_t a1, int a2)
{
  if (*(a1 + 16 * a2) <= 0)
  {
    return -1;
  }

  else
  {
    return *(a1 + 16 * a2 + 8);
  }
}

int regnexec(const regex_t *a1, const char *a2, size_t a3, size_t a4, regmatch_t __pmatch[], int a6)
{
  re_g = a1->re_g;
  if (*(*(*(re_g + 7) + 1328) + 64) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (a1->re_magic == 62053)
  {
    return tre_match(re_g, a2, a3, v6, a4, __pmatch, a6);
  }

  else
  {
    return 2;
  }
}

uint64_t tre_match(int *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, void *a6, int a7)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
  v16 = a7;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if ((a7 & 4) != 0 && v17)
  {
    if ((*v17 & 0x8000000000000000) != 0)
    {
      return 16;
    }

    if (v20 == -1)
    {
      if ((v17[1] & 0x8000000000000000) != 0 || *v17 > v17[1])
      {
        return 16;
      }

      v20 = v17[1] - *v17;
    }

    v12 = *v17;
    v11 = *v17;
    if (!v19)
    {
      v12 *= 4;
    }
  }

  if (v22[20] <= 0 || !v18 || (v7 = v22[20], (v14 = malloc_type_malloc()) != 0))
  {
    if (v22[25] || (v16 & 0x400) != 0)
    {
      v15 = tre_tnfa_run_backtrack(v22, (v21 + v12), v20, v19, v14, v16, &v13);
    }

    else
    {
      v15 = tre_tnfa_run_parallel(v22, (v21 + v12), v20, v19, v14, v16, &v13);
    }

    if (!v15)
    {
      v15 = tre_fill_pmatch(v18, v17, v22[24], v22, v14, v13);
      if (!v15 && (v22[24] & 4) == 0 && (v16 & 4) != 0 && v17 && v18)
      {
        v10 = v18;
        v9 = v17;
        while (v10)
        {
          if ((*v9 & 0x8000000000000000) == 0)
          {
            *v9 += v11;
          }

          if ((v9[1] & 0x8000000000000000) == 0)
          {
            v9[1] += v11;
          }

          v9 += 2;
          --v10;
        }
      }
    }

    if (v14)
    {
      free(v14);
    }

    return v15;
  }

  else
  {
    return 12;
  }
}

int regwnexec(const regex_t *a1, const __int32 *a2, size_t a3, size_t a4, regmatch_t __pmatch[], int a6)
{
  if (a1->re_magic == 62053)
  {
    return tre_match(a1->re_g, a2, a3, 0, a4, __pmatch, a6);
  }

  else
  {
    return 2;
  }
}

char *tre_ast_new_node(uint64_t a1, int a2, unint64_t a3)
{
  v4 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x48uLL);
  if (!v4)
  {
    return 0;
  }

  *v4 = tre_mem_alloc_impl(a1, 0, 0, 1, a3);
  if (!*v4)
  {
    return 0;
  }

  *(v4 + 12) = a2;
  *(v4 + 32) = -1;
  *(v4 + 13) = -1;
  return v4;
}

char *tre_ast_new_literal(uint64_t a1, int a2, int a3, int a4)
{
  v6 = tre_ast_new_node(a1, 0, 0x18uLL);
  if (!v6)
  {
    return 0;
  }

  v5 = *v6;
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  return v6;
}

char *tre_ast_new_iter(uint64_t a1, uint64_t a2, int a3, int a4, char a5)
{
  v7 = tre_ast_new_node(a1, 2, 0x20uLL);
  if (!v7)
  {
    return 0;
  }

  v6 = *v7;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 12) = a4;
  *(v6 + 16) = *(v6 + 16) & 0xFE | a5 & 1;
  *(v7 + 14) = *(a2 + 56);
  return v7;
}

char *tre_ast_new_union(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = tre_ast_new_node(a1, 3, 0x18uLL);
  if (!v4)
  {
    return 0;
  }

  **v4 = a2;
  *(*v4 + 8) = a3;
  *(v4 + 14) = *(a2 + 56) + *(a3 + 56);
  return v4;
}

char *tre_ast_new_catenation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = tre_ast_new_node(a1, 1, 0x10uLL);
  if (!v4)
  {
    return 0;
  }

  **v4 = a2;
  *(*v4 + 8) = a3;
  *(v4 + 14) = *(a2 + 56) + *(a3 + 56);
  return v4;
}

uint64_t tre_compile(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  j = 0;
  v26 = 0;
  v25 = 0;
  i = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  memset(__b, 0, sizeof(__b));
  v31 = tre_stack_new(512, 10240, 128);
  if (!v31)
  {
    return 12;
  }

  v16 = tre_mem_new_impl(0, 0);
  if (!v16)
  {
    tre_stack_destroy(v31);
    return 12;
  }

  memset(__b, 0, sizeof(__b));
  __b[0] = v16;
  __b[1] = v31;
  __b[3] = v35;
  LODWORD(__b[7]) = v34;
  if ((v33 & 0x101) != 0x101)
  {
    v33 &= ~0x40u;
  }

  HIDWORD(__b[10]) = v33;
  LODWORD(__b[9]) = -1;
  __b[6] = v32;
  LODWORD(__b[8]) = 0x40000000;
  v17 = tre_parse(__b);
  if (v17)
  {
    goto LABEL_86;
  }

  *(v36 + 8) = HIDWORD(__b[7]) - 1;
  v30 = __b[2];
  if ((__b[9] & 0x80000000) == 0 && LODWORD(__b[10]))
  {
    v17 = 2;
LABEL_86:
    tre_mem_destroy(v16);
    if (v31)
    {
      tre_stack_destroy(v31);
    }

    if (v26)
    {
      free(v26);
    }

    if (v25)
    {
      free(v25);
    }

    *(v36 + 24) = v20;
    if (v20)
    {
      *(v20 + 56) = 0;
    }

    tre_free(v36);
    return v17;
  }

  if (SLODWORD(__b[9]) > *(v36 + 8))
  {
    v17 = 6;
    goto LABEL_86;
  }

  v20 = malloc_type_calloc();
  if (!v20)
  {
    v17 = 12;
    goto LABEL_86;
  }

  *(v20 + 100) = SLODWORD(__b[9]) >= 0;
  *(v20 + 108) = __b[10];
  *(v20 + 72) = HIDWORD(__b[7]);
  *(v20 + 76) = LODWORD(__b[8]) - 0x40000000;
  *(v20 + 104) = HIDWORD(__b[9]);
  *(v20 + 56) = __b[6];
  if (*(v20 + 104) > 0 || (v33 & 4) == 0)
  {
    v17 = tre_add_tags(0, v31, v30, v20);
    if (v17)
    {
      goto LABEL_86;
    }

    if (*(v20 + 80) > 0)
    {
      v5 = *(v20 + 80) + 1;
      v18 = malloc_type_malloc();
      if (!v18)
      {
        v17 = 12;
        goto LABEL_86;
      }

      *(v20 + 32) = v18;
      memset(v18, -1, 4 * (*(v20 + 80) + 1));
    }

    v6 = (2 * *(v20 + 80) + 3);
    *(v20 + 40) = malloc_type_calloc();
    if (!*(v20 + 40))
    {
      v17 = 12;
      goto LABEL_86;
    }

    v19 = malloc_type_calloc();
    if (!v19)
    {
      v17 = 12;
      goto LABEL_86;
    }

    for (i = 0; i < SHIDWORD(__b[7]); ++i)
    {
      *(v19 + 8 * i + 4) = -1;
    }

    *(v20 + 24) = v19;
    v7 = tre_add_tags(v16, v31, v30, v20);
    v17 = v7;
    if (v7)
    {
      goto LABEL_86;
    }
  }

  v17 = tre_expand_ast(v16, v31, v30, &__b[8] + 1, v18, v20 + 112);
  if (v17)
  {
    goto LABEL_86;
  }

  v29 = v30;
  v8 = HIDWORD(__b[8])++;
  v28 = tre_ast_new_literal(v16, 0, 0, v8);
  if (!v28)
  {
    v17 = 12;
    goto LABEL_86;
  }

  v30 = tre_ast_new_catenation(v16, v29, v28);
  if (!v30)
  {
    v17 = 12;
    goto LABEL_86;
  }

  v17 = tre_compute_nfl(v16, v31, v30);
  if (v17)
  {
    goto LABEL_86;
  }

  v26 = malloc_type_malloc();
  if (!v26)
  {
    v17 = 12;
    goto LABEL_86;
  }

  v25 = malloc_type_malloc();
  if (!v25)
  {
    v17 = 12;
    goto LABEL_86;
  }

  for (i = 0; i < SHIDWORD(__b[8]); ++i)
  {
    *(v26 + i) = 0;
  }

  tre_ast_to_tnfa(v30, 0, v26, 0);
  v23 = 0;
  for (i = 0; i < SHIDWORD(__b[8]); ++i)
  {
    v25[i] = v23;
    v23 += *(v26 + i) + 1;
    *(v26 + i) = 0;
  }

  v9 = malloc_type_calloc();
  v22 = v9;
  if (!v9)
  {
    v17 = 12;
    goto LABEL_86;
  }

  *v20 = v22;
  *(v20 + 64) = v23;
  v17 = tre_ast_to_tnfa(v30, v22, v26, v25);
  if (v17)
  {
    goto LABEL_86;
  }

  *(v20 + 68) = -1;
  if (!*(v29 + 32))
  {
    v14 = 1;
    for (j = *(v30 + 3); ; j += 16)
    {
      v11 = 0;
      if (v14)
      {
        v11 = *j >= 0;
      }

      if (!v11)
      {
        break;
      }

      for (k = v22 + 56 * v25[*j]; *(k + 8); k += 56)
      {
        if (*k <= *(k + 4))
        {
          if (*(k + 4) != *k || *k == -1 || *(v20 + 68) != -1)
          {
            *(v20 + 68) = -1;
            v14 = 0;
            break;
          }

          *(v20 + 68) = *k;
        }
      }
    }
  }

  j = *(v30 + 3);
  i = 0;
  while ((*j & 0x80000000) == 0)
  {
    ++i;
    j += 16;
  }

  v21 = malloc_type_calloc();
  if (!v21)
  {
    v17 = 12;
    goto LABEL_86;
  }

  *(v20 + 8) = v21;
  i = 0;
  for (j = *(v30 + 3); (*j & 0x80000000) == 0; j += 16)
  {
    *(v21 + 56 * i + 8) = v22 + 56 * v25[*j];
    *(v21 + 56 * i + 16) = *j;
    *(v21 + 56 * i + 24) = 0;
    if (*(j + 2))
    {
        ;
      }

      *(v21 + 56 * i + 24) = malloc_type_malloc();
      if (!*(v21 + 56 * i + 24))
      {
        v17 = 12;
        goto LABEL_86;
      }

      memcpy(*(v21 + 56 * i + 24), *(j + 2), 4 * (m + 1));
    }

    *(v21 + 56 * i + 32) = 0;
    if (*(j + 6))
    {
      *(v21 + 56 * i + 32) = malloc_type_malloc();
      if (!*(v21 + 56 * i + 32))
      {
        v17 = 12;
        goto LABEL_86;
      }

      memcpy(*(v21 + 56 * i + 32), *(j + 6), 0x24uLL);
    }

    *(v21 + 56 * i++ + 40) = j[6];
  }

  *(v21 + 56 * i + 8) = 0;
  *(v20 + 64) = v23;
  *(v20 + 16) = v22 + 56 * v25[**(v30 + 4)];
  *(v20 + 92) = HIDWORD(__b[8]);
  *(v20 + 96) = v33;
  tre_mem_destroy(v16);
  tre_stack_destroy(v31);
  free(v26);
  free(v25);
  *v36 = 62053;
  *(v36 + 24) = v20;
  xlocale_retain(*(v20 + 56));
  return 0;
}

uint64_t tre_add_tags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = tre_stack_num_objects(a2);
  v29 = 1;
  if (a1)
  {
    v29 = a4 == 0;
  }

  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 1;
  v105 = -1;
  v104 = 0;
  v101 = 0;
  v100 = 0;
  v97 = 2;
  if (!v29)
  {
    *(a4 + 88) = 0;
    **(a4 + 40) = -1;
  }

  v4 = (2 * (*(a4 + 72) + *(a4 + 76) + 1));
  v112 = malloc_type_malloc();
  if (!v112)
  {
    return 12;
  }

  *v112 = -1;
  v111 = v112;
  if (!v29)
  {
    v5 = 2 * *(a4 + 104) + 1 + *(a4 + 80);
    v104 = malloc_type_malloc();
    v101 = v104;
    if (!v104)
    {
      v122 = 12;
      goto LABEL_350;
    }

    v100 = &v104[2 * *(a4 + 104) + 1];
  }

  tre_stack_push_voidptr(a2, a3);
  v122 = tre_stack_push_int(a2, 0);
  while (tre_stack_num_objects(a2) > v113 && !v122)
  {
    v28 = tre_stack_pop_int(a2);
    if (v28)
    {
      switch(v28)
      {
        case 1:
          v96 = 0;
          goto LABEL_40;
        case 2:
          v117 = tre_stack_pop_voidptr(a2);
          if (*(v117 + 40))
          {
            v24 = *(v117 + 40);
          }

          else
          {
            v24 = v117;
          }

          v76 = *v24;
          v75 = tre_stack_pop_int(a2);
          if (v76[16])
          {
            v105 = v75;
          }

          if (v29)
          {
            v23 = *(*v76 + 60);
            *(v117 + 60) = v23 + tre_stack_pop_int(a2);
          }

          else
          {
            v74 = *(*v76 + 8);
            if (!v74 || v74[6] <= 0)
            {
              goto LABEL_165;
            }

            v72 = v74 + 10;
            v69 = -1;
            for (i = 0; i <= v109 >> 3; ++i)
            {
              if (*(v72 + i))
              {
                v69 = 8 * i;
                for (j = *(v72 + i); (j & 1) == 0; j >>= 1)
                {
                  ++v69;
                }

                break;
              }
            }

            v74[5] = v69;
            v73 = tre_mem_alloc_impl(a1, 0, 0, 1, ((*(a4 + 80) + 7) >> 3) + 80);
            if (v73)
            {
              *(v73 + 1) = v74;
              *(v73 + 4) = 1;
              *(v73 + 5) = v74[5];
              *(v73 + 6) = v74[7];
              *(v73 + 7) = v74[8] + 1;
              *(v73 + 8) = v74[9];
              *(v73 + 6) = v73;
              *(v73 + 14) = 1;
              *(v73 + 17) = *(v73 + 6) + 1;
              *(v73 + 18) = *(v73 + 7);
              *(v73 + 19) = *(v73 + 8);
              *(*v76 + 8) = v73 + 40;
LABEL_165:
              v122 = tre_merge_branches(a1, v117, *v76, 0, *(a4 + 80));
              if (!v122)
              {
                if (v76[16])
                {
                  if (*(v76 + 2) || *(v76 + 3) > 1)
                  {
LABEL_174:
                    v97 = 0;
                  }

                  else
                  {
                    v67 = tre_ast_new_literal(a1, -1, -1, -1);
                    if (v67)
                    {
                      v68 = tre_ast_new_union(a1, v67, *v76);
                      if (v68)
                      {
                        *v76 = v68;
                        goto LABEL_174;
                      }

                      v122 = 12;
                    }

                    else
                    {
                      v122 = 12;
                    }
                  }
                }

                else
                {
                  v97 = 1;
                }
              }
            }

            else
            {
              v122 = 12;
            }
          }

          break;
        case 3:
          while (*v112 != -1)
          {
            ++v112;
          }

          v110 = 0;
          break;
        case 4:
          v119 = tre_stack_pop_voidptr(a2);
          if (*(v119 + 40))
          {
            v22 = *(v119 + 40);
          }

          else
          {
            v22 = v119;
          }

          v63 = *v22;
          v64 = tre_stack_pop_int(a2);
          if (v29)
          {
            *(v119 + 60) = *(*v63 + 60) + *(*(v63 + 8) + 60) + v64;
            if (*(v63 + 16) > 0)
            {
              ++*(v119 + 60);
            }

            if (*(v63 + 20) > 0)
            {
              ++*(v119 + 60);
            }
          }

          v112 = tre_stack_pop_voidptr(a2);
          if (v29 || !*(v119 + 66))
          {
LABEL_237:
            v97 = 1;
          }

          else
          {
            v62 = *(*v63 + 8);
            v61 = *(*(v63 + 8) + 8);
            v60 = *(*v63 + 16);
            v59 = *(*(v63 + 8) + 16);
            if (*(v63 + 16) <= 0)
            {
LABEL_202:
              if (*(v63 + 20) <= 0)
              {
                goto LABEL_208;
              }

              v122 = tre_add_tag_right(a1, *(v63 + 8), *(v63 + 20));
              if (!v122)
              {
                *(*(a4 + 32) + 4 * *(v63 + 20)) = 1;
                if (v61)
                {
LABEL_207:
                  *(v61 + 20) = *(v63 + 20);
LABEL_208:
                  if (v60)
                  {
                    if (v59)
                    {
                      if (*(v60 + 8))
                      {
                        if (*(v59 + 8))
                        {
                            ;
                          }

                          *k = *(v59 + 8);
                          *(v60 + 16) += *(v59 + 16);
                        }
                      }

                      else if (*(v59 + 8))
                      {
                        *(v60 + 8) = *(v59 + 8);
                        *(v60 + 16) = *(v59 + 16);
                      }

                      *(v60 + 24) += *(v59 + 24);
                      *(v60 + 28) += *(v59 + 28) - 1;
                      *(v60 + 32) += *(v59 + 32);
                      v58 = v60;
                    }

                    else
                    {
                      v58 = v60;
                      if (v61)
                      {
                        *v61 = *(v60 + 8);
                        *(v60 + 8) = v61;
                        ++*(v60 + 16);
                        *(v60 + 24) += *(v61 + 28);
                        *(v60 + 28) += *(v61 + 32);
                        *(v60 + 32) += *(v61 + 36);
                      }
                    }

                    goto LABEL_236;
                  }

                  if (v59)
                  {
                    v58 = v59;
                    if (v62)
                    {
                      *v62 = *(v59 + 8);
                      *(v59 + 8) = v62;
                      ++*(v59 + 16);
                      *(v59 + 24) += *(v62 + 28);
                      *(v59 + 28) += *(v62 + 32);
                      *(v59 + 32) += *(v62 + 36);
                    }

                    goto LABEL_236;
                  }

                  v58 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x28uLL);
                  if (v58)
                  {
                    *(v58 + 7) = 1;
                    if (v62)
                    {
                      *(v58 + 1) = v62;
                      *(v58 + 4) = 1;
                      *(v58 + 6) += *(v62 + 28);
                      *(v58 + 7) += *(v62 + 32);
                      *(v58 + 8) += *(v62 + 36);
                      if (v61)
                      {
                        *v62 = v61;
                        ++*(v58 + 4);
                        *(v58 + 6) += *(v61 + 28);
                        *(v58 + 7) += *(v61 + 32);
                        *(v58 + 8) += *(v61 + 36);
                      }
                    }

                    else if (v61)
                    {
                      *(v58 + 1) = v61;
                      *(v58 + 4) = 1;
                      *(v58 + 6) += *(v61 + 28);
                      *(v58 + 7) += *(v61 + 32);
                      *(v58 + 8) += *(v61 + 36);
                    }

LABEL_236:
                    *(v119 + 16) = v58;
                    goto LABEL_237;
                  }

                  v122 = 12;
                }

                else
                {
                  v122 = tre_merge_branches(a1, *(v63 + 8), 0, -1, *(a4 + 80));
                  if (!v122)
                  {
                    v61 = *(*(v63 + 8) + 8);
                    goto LABEL_207;
                  }
                }
              }
            }

            else
            {
              v122 = tre_add_tag_right(a1, *v63, *(v63 + 16));
              if (!v122)
              {
                *(*(a4 + 32) + 4 * *(v63 + 16)) = 1;
                if (v62)
                {
                  goto LABEL_201;
                }

                v122 = tre_merge_branches(a1, *v63, 0, -1, *(a4 + 80));
                if (!v122)
                {
                  v62 = *(*v63 + 8);
LABEL_201:
                  *(v62 + 20) = *(v63 + 16);
                  goto LABEL_202;
                }
              }
            }
          }

          break;
        case 5:
          v66 = tre_stack_pop_int(a2);
          v106 = tre_stack_pop_int(a2);
          if ((v66 & 0x80000000) == 0)
          {
            v107 = v66;
          }

          break;
        case 6:
          v118 = tre_stack_pop_voidptr(a2);
          v65 = *v118;
          if (v29)
          {
            *(v118 + 60) = *(*v65 + 60) + *(v65[1] + 60);
          }

          else
          {
            v122 = tre_merge_branches(a1, *v65, v65[1], 0, *(a4 + 80));
            if (!v122)
            {
              v122 = tre_merge_branches(a1, v118, *v65, 0, *(a4 + 80));
            }
          }

          break;
        case 7:
          v98 = tre_stack_pop_int(a2);
          v115 = tre_stack_pop_voidptr(a2);
            ;
          }

          v112[m] = 2 * v98 + 1;
          v112[m + 1] = -1;
          v110 |= 2u;
          if ((v105 & 0x80000000) == 0)
          {
            if (v29)
            {
              ++*(v115 + 60);
              goto LABEL_36;
            }

            v122 = tre_merge_branches(a1, v115, 0, v107, *(a4 + 80));
            if (!v122)
            {
              v122 = tre_add_tag_right(a1, v115, v107);
              if (!v122)
              {
                *(*(a4 + 32) + 4 * v107) = 0;
                  ;
                }

                *(*(a4 + 40) + 4 * n) = v107;
                *(*(a4 + 40) + 4 * (n + 1)) = v105;
                *(*(a4 + 40) + 4 * (n + 2)) = -1;
                *v101 = v107;
                v6 = v101 + 1;
                v101 += 2;
                *v6 = v105;
                ++v108;
                tre_purge_regset(v112, a4, v107);
LABEL_36:
                v105 = -1;
                *v112 = -1;
                v110 = 0;
                v107 = v106;
                ++v109;
                ++v106;
              }
            }
          }

          break;
        case 10:
          v120 = tre_stack_pop_voidptr(a2);
          *v55 = tre_stack_pop_int(a2);
          v56 = tre_mem_alloc_impl(a1, 0, 0, 1, ((*(a4 + 80) + 7) >> 3) + 40);
          if (v56)
          {
            *&v55[4] = *(v120 + 16);
            *(*&v55[4] + 20) = *v55;
            *(v56 + 7) = *(*&v55[4] + 24) + 1;
            *(v56 + 8) = *(*&v55[4] + 28);
            *(v56 + 9) = *(*&v55[4] + 32);
            *(v56 + 1) = *&v55[4];
            *(v56 + 4) = 1;
            *(v120 + 8) = v56;
            *(v120 + 16) = 0;
          }

          else
          {
            v122 = 12;
          }

          break;
      }
    }

    else
    {
      v96 = 1;
LABEL_40:
      v116 = tre_stack_pop_voidptr(a2);
      v99 = *(v116 + 13);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

        ;
      }

      v112[ii] = 2 * v99;
      v112[ii + 1] = -1;
      v110 |= 1u;
      tre_stack_push_voidptr(a2, v116);
      v122 = tre_stack_push_int(a2, v99);
      if (!v122)
      {
        v122 = tre_stack_push_int(a2, 7u);
        if (!v122)
        {
LABEL_46:
          v27 = *(v116 + 12);
          if (v27)
          {
            switch(v27)
            {
              case 1:
                v89 = **v116;
                v88 = (*v116)[1];
                v87 = -1;
                v122 = tre_stack_push_voidptr(a2, v116);
                if (!v122)
                {
                  v122 = tre_stack_push_int(a2, 6u);
                  if (!v122)
                  {
                    v122 = tre_stack_push_voidptr(a2, v88);
                    if (!v122)
                    {
                      v122 = tre_stack_push_int(a2, 0);
                      if (!v122)
                      {
                        v122 = tre_stack_push_int(a2, v106 + *(v89 + 60));
                        if (!v122)
                        {
                          if (*(v89 + 60) > 0 && *(v88 + 60) > 0)
                          {
                            v87 = v106++;
                          }

                          v122 = tre_stack_push_int(a2, v87);
                          if (!v122)
                          {
                            v122 = tre_stack_push_int(a2, 5u);
                            if (!v122)
                            {
                              v122 = tre_stack_push_voidptr(a2, v89);
                              if (!v122)
                              {
                                v122 = tre_stack_push_int(a2, 0);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                break;
              case 2:
                v86 = *v116;
                if (!v29 || (v122 = tre_stack_push_int(a2, v110 != 0)) == 0)
                {
                  v122 = tre_stack_push_int(a2, v107);
                  if (!v122)
                  {
                    v122 = tre_stack_push_voidptr(a2, v116);
                    if (!v122)
                    {
                      v122 = tre_stack_push_int(a2, 2u);
                      if (!v122)
                      {
                        v122 = tre_stack_push_voidptr(a2, *v86);
                        if (!v122)
                        {
                          v122 = tre_stack_push_int(a2, 0);
                          if (!v122)
                          {
                            if (!v110)
                            {
                              goto LABEL_104;
                            }

                            if (v29)
                            {
LABEL_103:
                              *v112 = -1;
                              v110 = 0;
                              v107 = v106;
                              ++v109;
                              ++v106;
LABEL_104:
                              v97 = 2;
                            }

                            else
                            {
                              v122 = tre_merge_branches(a1, v116, 0, v107, *(a4 + 80));
                              if (!v122)
                              {
                                v122 = tre_add_tag_left(a1, v116, v107);
                                if (!v122)
                                {
                                  if (v110 == 1 && v107)
                                  {
                                    if (v86[2])
                                    {
                                      v8 = 0;
                                    }

                                    else
                                    {
                                      v8 = 2;
                                    }

                                    *(*(a4 + 32) + 4 * v107) = v8;
                                  }

                                  else
                                  {
                                    *(*(a4 + 32) + 4 * v107) = v97;
                                  }

                                  tre_purge_regset(v112, a4, v107);
                                  goto LABEL_103;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                break;
              case 3:
                v80 = -1;
                if (v110)
                {
                  v80 = v107;
                  v107 = v106;
                  ++v109;
                  ++v106;
                }

                if (!v96)
                {
                  goto LABEL_135;
                }

                v26 = 0;
                if ((*(v116 + 13) & 0x80000000) == 0)
                {
                  v26 = *(v116 + 13) < 0x40000000;
                }

                if (*(v116 + 14) - v26 <= 0)
                {
                  goto LABEL_135;
                }

                v77 = tre_stack_num_objects(a2);
                tre_stack_push_voidptr(a2, v116);
                tre_stack_push_int(a2, 8u);
                while (tre_stack_num_objects(a2) > v77)
                {
                  v25 = tre_stack_pop_int(a2);
                  if (v25 == 8)
                  {
                    v78 = tre_stack_pop_voidptr(a2);
                    v85 = *v78;
                    v83 = **v78;
                    *(v78 + 66) = 1;
                    tre_stack_push_voidptr(a2, v78);
                    tre_stack_push_int(a2, 9u);
                    if (*(v83 + 48) == 3)
                    {
                      tre_stack_push_voidptr(a2, v83);
                      tre_stack_push_int(a2, 8u);
                    }

                    else
                    {
                      *(v85 + 4) = v107;
                      v107 = v106;
                      ++v109;
                      ++v106;
                    }
                  }

                  else if (v25 == 9)
                  {
                    v79 = tre_stack_pop_voidptr(a2);
                    v81 = *(*v79 + 8);
                    if (*(v81 + 48) == 3)
                    {
                      tre_stack_push_voidptr(a2, v81);
                      tre_stack_push_int(a2, 8u);
                    }

                    else
                    {
                      *(*v79 + 20) = v107;
                      v107 = v106;
                      ++v109;
                      ++v106;
                    }
                  }
                }

                if (v29 || (v122 = tre_stack_push_int(a2, v80)) == 0 && (v122 = tre_stack_push_voidptr(a2, v116)) == 0 && (v122 = tre_stack_push_int(a2, 0xAu)) == 0)
                {
LABEL_135:
                  v84 = **v116;
                  v82 = (*v116)[1];
                  v122 = tre_stack_push_voidptr(a2, v112);
                  if (!v122)
                  {
                    v122 = tre_stack_push_int(a2, v110 != 0);
                    if (!v122)
                    {
                      v122 = tre_stack_push_voidptr(a2, v116);
                      if (!v122)
                      {
                        v122 = tre_stack_push_int(a2, 4u);
                        if (!v122)
                        {
                          v122 = tre_stack_push_voidptr(a2, v82);
                          if (!v122)
                          {
                            v122 = tre_stack_push_int(a2, 1u);
                            if (!v122)
                            {
                              v122 = tre_stack_push_int(a2, 3u);
                              if (!v122)
                              {
                                v122 = tre_stack_push_voidptr(a2, v84);
                                if (!v122)
                                {
                                  v122 = tre_stack_push_int(a2, 1u);
                                  if (!v122)
                                  {
                                    if (v110)
                                    {
                                      if (v29)
                                      {
                                        goto LABEL_143;
                                      }

                                      v122 = tre_merge_branches(a1, v116, 0, v80, *(a4 + 80));
                                      if (!v122)
                                      {
                                        v122 = tre_add_tag_left(a1, v116, v80);
                                        if (!v122)
                                        {
                                          if (v110 == 1)
                                          {
                                            *(*(a4 + 32) + 4 * v80) = 2;
                                          }

                                          else
                                          {
                                            *(*(a4 + 32) + 4 * v80) = v97;
                                          }

                                          tre_purge_regset(v112, a4, v80);
LABEL_143:
                                          *v112 = -1;
                                          v110 = 0;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                break;
            }
          }

          else
          {
            v92 = *v116;
            if (((**v116 & 0x80000000) == 0 || *v92 == -4 || *v92 >= 0xFFFFFFFE) && v110)
            {
              if (v29)
              {
                *(v116 + 15) = 1;
                goto LABEL_69;
              }

              v122 = tre_merge_branches(a1, v116, 0, v107, *(a4 + 80));
              if (!v122)
              {
                v122 = tre_add_tag_left(a1, v116, v107);
                if (!v122)
                {
                  if (v110 == 1)
                  {
                    *(*(a4 + 32) + 4 * v107) = 2;
                  }

                  else
                  {
                    *(*(a4 + 32) + 4 * v107) = v97;
                  }

                  tre_purge_regset(v112, a4, v107);
                  if (*v92 != -4)
                  {
                    goto LABEL_69;
                  }

                  v91 = *(v92 + 1);
                  v90 = *(*(a4 + 24) + 8 * v91);
                  if ((*(*(a4 + 24) + 8 * v91 + 4) & 0x80000000) != 0)
                  {
                    v122 = 6;
                  }

                  else
                  {
                    if (v90 < v107)
                    {
                      if (v90 > 0)
                      {
                        --v90;
                      }

                      *v101 = v107;
                      v7 = v101 + 1;
                      v101 += 2;
                      *v7 = v90;
                    }

LABEL_69:
                    *v112 = -1;
                    v110 = 0;
                    v107 = v106;
                    ++v109;
                    ++v106;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v122)
  {
    goto LABEL_349;
  }

  if (!v29)
  {
    if (v109 != *(a4 + 80))
    {
      v122 = 2;
      goto LABEL_349;
    }

    tre_purge_regset(v112, a4, v107);
    *(*(a4 + 32) + 4 * v109) = v97;
    if (v101 <= &v104[2 * *(a4 + 104)])
    {
      *v101 = -1;
      for (jj = 0; jj < v109; ++jj)
      {
        *&v100[4 * jj] = jj;
      }

      v102 = v104;
      while ((*v102 & 0x80000000) == 0)
      {
        v9 = v102;
        v103 = v102 + 1;
        v49 = *v9;
        if (*v9 < v109)
        {
          v51 = *&v100[4 * v49];
          v10 = v103;
          v102 = v103 + 1;
          v50 = *&v100[4 * *v10];
          if (v50 <= v51)
          {
            for (kk = 0; kk < v109; ++kk)
            {
              if (*&v100[4 * kk] > v50 && *&v100[4 * kk] < v51)
              {
                ++*&v100[4 * kk];
              }
            }

            *&v100[4 * v49] = v50 + 1;
          }
        }

        else
        {
          v102 = v103 + 1;
        }
      }

      v48 = 0;
      for (mm = 0; mm < v109; ++mm)
      {
        if (*&v100[4 * mm] != mm)
        {
          v48 = 1;
          break;
        }
      }

      if (!v48)
      {
        free(v104);
        v104 = 0;
      }

      goto LABEL_269;
    }

    v122 = 2;
    goto LABEL_349;
  }

LABEL_269:
  if (!v104)
  {
    goto LABEL_346;
  }

  for (nn = 0; nn < *(a4 + 72); ++nn)
  {
    *(*(a4 + 24) + 8 * nn) = *&v100[4 * *(*(a4 + 24) + 8 * nn)];
    if (*(*(a4 + 24) + 8 * nn + 4) < v109)
    {
      v21 = *&v100[4 * *(*(a4 + 24) + 8 * nn + 4)];
    }

    else
    {
      v21 = *(*(a4 + 24) + 8 * nn + 4);
    }

    *(*(a4 + 24) + 8 * nn + 4) = v21;
  }

  __src = malloc_type_malloc();
  if (!__src)
  {
    v122 = 12;
    goto LABEL_349;
  }

  for (i1 = 0; i1 < v109; ++i1)
  {
    __src[*&v100[4 * i1]] = *(*(a4 + 32) + 4 * i1);
  }

  memcpy(*(a4 + 32), __src, 4 * v109);
  free(__src);
  for (i2 = 0; (*(*(a4 + 40) + 4 * i2) & 0x80000000) == 0; *(*(a4 + 40) + 4 * i2++) = v20)
  {
    if (*(*(a4 + 40) + 4 * i2) < v109)
    {
      v20 = *&v100[4 * *(*(a4 + 40) + 4 * i2)];
    }

    else
    {
      v20 = *(*(a4 + 40) + 4 * i2);
    }
  }

  v122 = tre_stack_push_voidptr(a2, a3);
  while (1)
  {
    v19 = 0;
    if (!v122)
    {
      v19 = tre_stack_num_objects(a2) > v113;
    }

    if (!v19)
    {
      break;
    }

    v121 = tre_stack_pop_voidptr(a2);
    v18 = *(v121 + 12);
    if (v18)
    {
      switch(v18)
      {
        case 1:
          v42 = *v121;
          v122 = tre_stack_push_voidptr(a2, (*v121)[1]);
          if (!v122)
          {
            v122 = tre_stack_push_voidptr(a2, *v42);
          }

          break;
        case 2:
          v122 = tre_stack_push_voidptr(a2, **v121);
          break;
        case 3:
          v43 = *v121;
          v122 = tre_stack_push_voidptr(a2, (*v121)[1]);
          if (!v122)
          {
            v122 = tre_stack_push_voidptr(a2, *v43);
          }

          break;
      }
    }

    else if (**v121 == -3)
    {
      *(*v121 + 1) = *&v100[4 * *(*v121 + 1)];
    }
  }

  if (!v122)
  {
LABEL_346:
    if (v29 || !*(a3 + 8))
    {
      goto LABEL_348;
    }

    v11 = 16 * *(*(a3 + 8) + 32) + 32 * *(*(a3 + 8) + 28);
    v12 = *(*(a3 + 8) + 36);
    v41 = malloc_type_calloc();
    if (!v41)
    {
      v122 = 12;
      goto LABEL_349;
    }

    v40 = v41;
    v37 = v41 + 32 * *(*(a3 + 8) + 28);
    v34 = (v37 + 16 * *(*(a3 + 8) + 32));
    tre_stack_push_voidptr(a2, *(a3 + 8));
    tre_stack_push_int(a2, 1u);
    v122 = tre_stack_push_int(a2, 0);
    while (1)
    {
      v17 = 0;
      if (!v122)
      {
        v17 = tre_stack_num_objects(a2) > v113;
      }

      if (!v17)
      {
        break;
      }

      v16 = tre_stack_pop_int(a2);
      if (v16)
      {
        switch(v16)
        {
          case 1:
            v39 = tre_stack_pop_voidptr(a2);
            v38 = tre_stack_pop_voidptr(a2);
            *(v39 + 16) = *(v38 + 16);
            *(v39 + 20) = *(v38 + 20);
            if (*(v38 + 24) > 0)
            {
              v13 = *(v38 + 24);
              *(v39 + 24) = v13;
              v30 = v13;
              *v39 = v34;
              for (i3 = 0; i3 < v109; ++i3)
              {
                if ((*(v38 + 40 + (i3 >> 3)) & (1 << (i3 & 7))) != 0)
                {
                  v14 = v34++;
                  *v14 = i3;
                  if (--v30 <= 0)
                  {
                    break;
                  }
                }
              }
            }

            if ((!*v38 || (v122 = tre_stack_push_voidptr(a2, *v38)) == 0 && (v122 = tre_stack_push_voidptr(a2, v39 + 32)) == 0 && (v122 = tre_stack_push_int(a2, 1u)) == 0) && *(v38 + 16) > 0)
            {
              *(v39 + 8) = v37;
              v122 = tre_stack_push_voidptr(a2, *(v38 + 8));
              if (!v122)
              {
                v122 = tre_stack_push_int(a2, *(v38 + 16));
                if (!v122)
                {
                  v122 = tre_stack_push_int(a2, 2u);
                }
              }
            }

            break;
          case 2:
            v33 = tre_stack_pop_int(a2);
            v122 = tre_stack_push_voidptr(a2, v37);
            if (!v122)
            {
              v122 = tre_stack_push_int(a2, 3u);
              if (!v122)
              {
                v37 += 16 * v33;
              }
            }

            break;
          case 3:
            v36 = tre_stack_pop_voidptr(a2);
            v35 = tre_stack_pop_voidptr(a2);
            *(v36 + 8) = *(v35 + 16);
            *v36 = v40;
            *(v36 + 12) = *(v35 + 20);
            if (!*v35 || (v122 = tre_stack_push_voidptr(a2, *v35)) == 0 && (v122 = tre_stack_push_voidptr(a2, v36 + 16)) == 0 && (v122 = tre_stack_push_int(a2, 3u)) == 0)
            {
              v122 = tre_stack_push_voidptr(a2, *(v35 + 8));
              if (!v122)
              {
                v122 = tre_stack_push_int(a2, *(v35 + 16));
                if (!v122)
                {
                  v122 = tre_stack_push_int(a2, 0);
                }
              }
            }

            break;
        }
      }

      else
      {
        v31 = tre_stack_pop_int(a2);
        v122 = tre_stack_push_voidptr(a2, v40);
        if (!v122)
        {
          v122 = tre_stack_push_int(a2, 1u);
          if (!v122)
          {
            v40 += 32 * v31;
          }
        }
      }
    }

    if (!v122)
    {
      *(a4 + 48) = v41;
LABEL_348:
      *(a4 + 88) = v109;
      *(a4 + 80) = v109;
      *(a4 + 84) = v108;
    }
  }

LABEL_349:
  free(v104);
LABEL_350:
  free(v111);
  return v122;
}

uint64_t tre_expand_ast(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v38 = a4;
  v37 = a5;
  v36 = a6;
  v35 = 0;
  v34 = tre_stack_num_objects(a2);
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = tre_stack_push_voidptr(v40, v39);
  if (v29)
  {
    return v29;
  }

  v28 = tre_stack_push_int(v40, 0);
  if (v28)
  {
    return v28;
  }

  while (1)
  {
    v10 = 0;
    if (!v35)
    {
      v6 = tre_stack_num_objects(v40);
      v10 = v6 > v34;
    }

    if (!v10)
    {
      break;
    }

    v27 = 0;
    v26 = 0;
    if (v35)
    {
      break;
    }

    v26 = tre_stack_pop_int(v40);
    v27 = tre_stack_pop_voidptr(v40);
    if (v26)
    {
      if (v26 == 1)
      {
        v21 = *v27;
        v20 = 0;
        v33 = tre_stack_pop_int(v40);
        v20 = v33;
        if (*(v21 + 2) || *(v21 + 3))
        {
          if (*(v21 + 2) > 1 || *(v21 + 3) > 1)
          {
            v18 = 0;
            v17 = 0;
            v15 = v33;
            for (i = 0; i < *(v21 + 2); ++i)
            {
              v14 = 0;
              if (i + 1 < *(v21 + 2))
              {
                v7 = 1;
              }

              else
              {
                v7 = 2;
              }

              v13 = v7;
              v15 = v33;
              v35 = tre_copy_ast(v41, v40, *v21, v7, &v33, v37, &v14, &v31);
              if (v35)
              {
                return v35;
              }

              if (v18)
              {
                v18 = tre_ast_new_catenation(v41, v18, v14);
              }

              else
              {
                v18 = v14;
              }

              if (!v18)
              {
                return 12;
              }
            }

            if (*(v21 + 3) == -1)
            {
              v15 = v33;
              v35 = tre_copy_ast(v41, v40, *v21, 0, &v33, 0, &v17, &v31);
              if (v35)
              {
                return v35;
              }

              v17 = tre_ast_new_iter(v41, v17, 0, -1, 0);
              if (!v17)
              {
                return 12;
              }
            }

            else
            {
              for (i = *(v21 + 2); i < *(v21 + 3); ++i)
              {
                v12 = 0;
                v11 = 0;
                v15 = v33;
                v35 = tre_copy_ast(v41, v40, *v21, 0, &v33, 0, &v11, &v31);
                if (v35)
                {
                  return v35;
                }

                if (v17)
                {
                  v17 = tre_ast_new_catenation(v41, v11, v17);
                }

                else
                {
                  v17 = v11;
                }

                if (!v17)
                {
                  return 12;
                }

                v12 = tre_ast_new_literal(v41, -1, -1, -1);
                if (!v12)
                {
                  return 12;
                }

                v17 = tre_ast_new_union(v41, v12, v17);
                if (!v17)
                {
                  return 12;
                }
              }
            }

            v33 = v15;
            if (v18)
            {
              if (v17)
              {
                v18 = tre_ast_new_catenation(v41, v18, v17);
              }
            }

            else
            {
              v18 = v17;
            }

            if (!v18)
            {
              return 12;
            }

            *v27 = *v18;
            *(v27 + 48) = *(v18 + 12);
          }
        }

        else
        {
          v19 = tre_ast_new_literal(v41, -1, -1, -1);
          if (!v19)
          {
            return 12;
          }

          *v27 = *v19;
          *(v27 + 48) = *(v19 + 12);
        }

        --v30;
        v32 += v33 - v20;
        if (!v30)
        {
          v33 = v32;
        }
      }
    }

    else
    {
      v9 = *(v27 + 48);
      if (v9)
      {
        switch(v9)
        {
          case 1:
            v23 = *v27;
            v35 = tre_stack_push_voidptr(v40, v23[1]);
            if (!v35)
            {
              v35 = tre_stack_push_int(v40, 0);
              if (!v35)
              {
                v35 = tre_stack_push_voidptr(v40, *v23);
                if (!v35)
                {
LABEL_25:
                  v35 = tre_stack_push_int(v40, 0);
                }
              }
            }

            break;
          case 2:
            v22 = *v27;
            v35 = tre_stack_push_int(v40, v33);
            if (!v35)
            {
              v35 = tre_stack_push_voidptr(v40, v27);
              if (!v35)
              {
                v35 = tre_stack_push_int(v40, 1u);
                if (!v35)
                {
                  v35 = tre_stack_push_voidptr(v40, *v22);
                  if (!v35)
                  {
                    v35 = tre_stack_push_int(v40, 0);
                    if (!v35)
                    {
                      if (*(v22 + 2) > 1 || *(v22 + 3) > 1)
                      {
                        v33 = 0;
                      }

                      ++v30;
                    }
                  }
                }
              }
            }

            break;
          case 3:
            v24 = *v27;
            v35 = tre_stack_push_voidptr(v40, v24[1]);
            if (!v35)
            {
              v35 = tre_stack_push_int(v40, 0);
              if (!v35)
              {
                v35 = tre_stack_push_voidptr(v40, *v24);
                if (!v35)
                {
                  goto LABEL_25;
                }
              }
            }

            break;
        }
      }

      else
      {
        v25 = *v27;
        if ((*v25 & 0x80000000) == 0 || *v25 == -4)
        {
          *(v25 + 2) += v33;
          if (*(v25 + 2) > v31)
          {
            v31 = *(v25 + 2);
          }
        }
      }
    }
  }

  *v38 += v32;
  if (v31 > *v38)
  {
    *v38 = v31;
  }

  return v35;
}

uint64_t tre_compute_nfl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v60 = a2;
  v59 = a3;
  v58 = tre_stack_num_objects(a2);
  v57 = tre_stack_push_voidptr(v60, v59);
  if (v57)
  {
    return v57;
  }

  else
  {
    v56 = tre_stack_push_int(v60, 0);
    if (v56)
    {
      return v56;
    }

    else
    {
      while (1)
      {
        v3 = tre_stack_num_objects(v60);
        if (v3 <= v58)
        {
          break;
        }

        v55 = 0;
        v54 = 0;
        v55 = tre_stack_pop_int(v60);
        v54 = tre_stack_pop_voidptr(v60);
        if (v55)
        {
          switch(v55)
          {
            case 1:
              v36 = *v54;
              v17 = 1;
              if (!*(*v36 + 64))
              {
                v17 = *(v36[1] + 64) != 0;
              }

              *(v54 + 64) = v17;
              v10 = tre_set_union(v61, *(*v36 + 24), *(v36[1] + 24), 0, 0, 0);
              *(v54 + 24) = v10;
              if (!*(v54 + 24))
              {
                return 12;
              }

              v11 = tre_set_union(v61, *(*v36 + 32), *(v36[1] + 32), 0, 0, 0);
              *(v54 + 32) = v11;
              if (!*(v54 + 32))
              {
                return 12;
              }

              break;
            case 2:
              v28 = 0;
              v27 = 0;
              v26 = 0;
              v25 = 0;
              v19 = *v54;
              v16 = 0;
              if (*(**v54 + 64))
              {
                v16 = *(v19[1] + 64) != 0;
              }

              *(v54 + 64) = v16;
              if (*(*v19 + 64))
              {
                matched = tre_match_empty(v60, *v19, 0, 0, 0, &v28, &v25);
                if (matched)
                {
                  return matched;
                }

                v27 = malloc_type_malloc();
                if (!v27)
                {
                  return 12;
                }

                *v27 = -1;
                v26 = 0;
                v23 = 0;
                if (v25)
                {
                  v23 = tre_mem_alloc_impl(v61, 0, 0, 0, 0x24uLL);
                  if (!v23)
                  {
LABEL_102:
                    free(v27);
                    return 12;
                  }
                }

                v21 = tre_match_empty(v60, *v19, v27, &v26, v23, 0, 0);
                if (v21)
                {
                  goto LABEL_104;
                }

                v13 = tre_set_union(v61, *(v19[1] + 24), *(*v19 + 24), v27, v26, v23);
                *(v54 + 24) = v13;
                free(v27);
                if (!*(v54 + 24))
                {
                  return 12;
                }
              }

              else
              {
                *(v54 + 24) = *(*v19 + 24);
              }

              if (*(v19[1] + 64))
              {
                v22 = tre_match_empty(v60, v19[1], 0, 0, 0, &v28, &v25);
                if (v22)
                {
                  return v22;
                }

                v27 = malloc_type_malloc();
                if (!v27)
                {
                  return 12;
                }

                *v27 = -1;
                v26 = 0;
                v24 = 0;
                if (v25)
                {
                  v24 = tre_mem_alloc_impl(v61, 0, 0, 0, 0x24uLL);
                  if (!v24)
                  {
                    goto LABEL_102;
                  }
                }

                v21 = tre_match_empty(v60, v19[1], v27, &v26, v24, 0, 0);
                if (v21)
                {
LABEL_104:
                  free(v27);
                  return v21;
                }

                v14 = tre_set_union(v61, *(*v19 + 32), *(v19[1] + 32), v27, v26, v24);
                *(v54 + 32) = v14;
                free(v27);
                if (!*(v54 + 32))
                {
                  return 12;
                }
              }

              else
              {
                *(v54 + 32) = *(v19[1] + 32);
              }

              break;
            case 3:
              v35 = 0;
              v34 = 0;
              v33 = 0;
              v32 = 0;
              v31 = 0;
              v30 = 0;
              v29 = *v54;
              if (*(v29 + 2) && !*(*v29 + 64))
              {
                *(v54 + 64) = 0;
                *(v54 + 32) = *(*v29 + 32);
              }

              else
              {
                *(v54 + 64) = 1;
                if (*(*v29 + 64))
                {
                  v30 = tre_match_empty(v60, *v29, 0, 0, 0, &v35, &v32);
                  if (v30)
                  {
                    return v30;
                  }

                  v34 = malloc_type_malloc();
                  if (!v34)
                  {
                    return 12;
                  }

                  *v34 = -1;
                  v33 = 0;
                  v31 = 0;
                  if (v32)
                  {
                    v31 = tre_mem_alloc_impl(v61, 0, 0, 0, 0x24uLL);
                    if (!v31)
                    {
                      free(v34);
                      return 12;
                    }
                  }

                  v30 = tre_match_empty(v60, *v29, v34, &v33, v31, 0, 0);
                  if (v30)
                  {
                    free(v34);
                    return v30;
                  }

                  v12 = tre_set_union(v61, *(*v29 + 32), *(*v29 + 32), v34, v33, v31);
                  *(v54 + 32) = v12;
                  free(v34);
                  if (!*(v54 + 32))
                  {
                    return 12;
                  }
                }

                else
                {
                  *(v54 + 32) = *(*v29 + 32);
                }
              }

              *(v54 + 24) = *(*v29 + 24);
              break;
          }
        }

        else
        {
          v18 = *(v54 + 48);
          if (v18)
          {
            switch(v18)
            {
              case 1:
                v46 = 0;
                v46 = tre_stack_push_voidptr(v60, v54);
                if (v46)
                {
                  return v46;
                }

                v45 = 0;
                v45 = tre_stack_push_int(v60, 2u);
                if (v45)
                {
                  return v45;
                }

                v44 = 0;
                v44 = tre_stack_push_voidptr(v60, *(*v54 + 8));
                if (v44)
                {
                  return v44;
                }

                v43 = 0;
                v43 = tre_stack_push_int(v60, 0);
                if (v43)
                {
                  return v43;
                }

                v42 = 0;
                v42 = tre_stack_push_voidptr(v60, **v54);
                if (v42)
                {
                  return v42;
                }

                v41 = 0;
                v41 = tre_stack_push_int(v60, 0);
                if (v41)
                {
                  return v41;
                }

                break;
              case 2:
                v40 = 0;
                v40 = tre_stack_push_voidptr(v60, v54);
                if (v40)
                {
                  return v40;
                }

                v39 = 0;
                v39 = tre_stack_push_int(v60, 3u);
                if (v39)
                {
                  return v39;
                }

                v38 = 0;
                v38 = tre_stack_push_voidptr(v60, **v54);
                if (v38)
                {
                  return v38;
                }

                v37 = 0;
                v37 = tre_stack_push_int(v60, 0);
                if (v37)
                {
                  return v37;
                }

                break;
              case 3:
                v52 = 0;
                v52 = tre_stack_push_voidptr(v60, v54);
                if (v52)
                {
                  return v52;
                }

                v51 = 0;
                v51 = tre_stack_push_int(v60, 1u);
                if (v51)
                {
                  return v51;
                }

                v50 = 0;
                v50 = tre_stack_push_voidptr(v60, *(*v54 + 8));
                if (v50)
                {
                  return v50;
                }

                v49 = 0;
                v49 = tre_stack_push_int(v60, 0);
                if (v49)
                {
                  return v49;
                }

                v48 = 0;
                v48 = tre_stack_push_voidptr(v60, **v54);
                if (v48)
                {
                  return v48;
                }

                v47 = 0;
                v47 = tre_stack_push_int(v60, 0);
                if (v47)
                {
                  return v47;
                }

                break;
            }
          }

          else
          {
            v53 = *v54;
            if (*v53 == -4)
            {
              *(v54 + 64) = 0;
              v4 = tre_set_one(v61, *(v53 + 2), 0, 0x7FFFFFFF, 0, -1);
              *(v54 + 24) = v4;
              if (!*(v54 + 24))
              {
                return 12;
              }

              v5 = tre_set_one(v61, *(v53 + 2), 0, 0x7FFFFFFF, 0, *(v53 + 1));
              *(v54 + 32) = v5;
              if (!*(v54 + 32))
              {
                return 12;
              }
            }

            else if ((*v53 & 0x80000000) != 0)
            {
              *(v54 + 64) = 1;
              v6 = tre_set_empty(v61);
              *(v54 + 24) = v6;
              if (!*(v54 + 24))
              {
                return 12;
              }

              v7 = tre_set_empty(v61);
              *(v54 + 32) = v7;
              if (!*(v54 + 32))
              {
                return 12;
              }
            }

            else
            {
              *(v54 + 64) = 0;
              v8 = tre_set_one(v61, *(v53 + 2), *v53, *(v53 + 1), 0, -1);
              *(v54 + 24) = v8;
              if (!*(v54 + 24))
              {
                return 12;
              }

              v9 = tre_set_one(v61, *(v53 + 2), *v53, *(v53 + 1), v53[2], -1);
              *(v54 + 32) = v9;
              if (!*(v54 + 32))
              {
                return 12;
              }
            }
          }
        }
      }

      return 0;
    }
  }
}