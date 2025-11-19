uint64_t first_wday_of(int a1)
{
  v4 = 0;
  if (!(a1 % 4))
  {
    v3 = 1;
    if (!(a1 % 100))
    {
      v3 = a1 % 400 == 0;
    }

    v4 = v3;
  }

  if (v4)
  {
    v1 = 6;
  }

  else
  {
    v1 = 0;
  }

  return ((2 * (3 - a1 / 100 % 4) + a1 % 100 + a1 % 100 / 4 + v1 + 1) % 7);
}

char **__get_current_time_locale(uint64_t a1)
{
  if (*(a1 + 1315))
  {
    return (*(a1 + 1352) + 72);
  }

  else
  {
    return _C_time_locale;
  }
}

uint64_t __time_load_locale(char *a1, uint64_t a2)
{
  if (!strcmp(a1, "C") || !strcmp(a1, "POSIX") || !strncmp(a1, "C.", 2uLL))
  {
    *(a2 + 1315) = 0;
    xlocale_release(*(a2 + 1352));
    *(a2 + 1352) = 0;
    return 1;
  }

  else if (__time_load_locale_cache && *(__time_load_locale_cache + 64) && !strcmp(a1, *(__time_load_locale_cache + 64)))
  {
    *(a2 + 1315) = 1;
    xlocale_release(*(a2 + 1352));
    *(a2 + 1352) = __time_load_locale_cache;
    xlocale_retain(__time_load_locale_cache);
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
      locale = __part_load_locale(a1, (a2 + 1315), v3 + 8, "LC_TIME", 58, 58, v3 + 72);
      if (locale)
      {
        if (locale == -1)
        {
          free(v3);
        }
      }

      else
      {
        xlocale_release(*(a2 + 1352));
        *(a2 + 1352) = v3;
        xlocale_release(__time_load_locale_cache);
        __time_load_locale_cache = v3;
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

void *__cdecl memmem(const void *__big, size_t __big_len, const void *__little, size_t __little_len)
{
  if (!__big_len || !__little_len)
  {
    return 0;
  }

  if (__big_len < __little_len)
  {
    return 0;
  }

  if (__little_len == 1)
  {
    return memchr(__big, *__little, __big_len);
  }

  v6 = __big + __big_len - __little_len;
  for (__s1 = __big; __s1 <= v6; ++__s1)
  {
    if (*__s1 == *__little && !memcmp(__s1, __little, __little_len))
    {
      return __s1;
    }
  }

  return 0;
}

char *__cdecl rindex(const char *a1, int a2)
{
  v3 = 0;
  while (1)
  {
    if (*a1 == a2)
    {
      v3 = a1;
    }

    if (!*a1)
    {
      break;
    }

    ++a1;
  }

  return v3;
}

int strcasecmp_l(const char *a1, const char *a2, locale_t a3)
{
  v10 = a3;
  if (a3)
  {
    if (a3 == -1)
    {
      v10 = __global_locale;
    }
  }

  else
  {
    v10 = &__c_locale;
  }

  while (1)
  {
    v7 = tolower_l(*a1, v10);
    v3 = a2++;
    if (v7 != tolower_l(*v3, v10))
    {
      break;
    }

    v4 = a1++;
    if (!*v4)
    {
      return 0;
    }
  }

  v6 = tolower_l(*a1, v10);
  return v6 - tolower_l(*(a2 - 1), v10);
}

int strcasecmp(const char *a1, const char *a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return strcasecmp_l(a1, a2, v3);
  }

  else
  {
    return strcasecmp_l(a1, a2, __global_locale);
  }
}

int strncasecmp_l(const char *a1, const char *a2, size_t a3, locale_t a4)
{
  v12 = a3;
  v11 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v11 = __global_locale;
    }
  }

  else
  {
    v11 = &__c_locale;
  }

  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v8 = tolower_l(*a1, v11);
    v4 = a2++;
    if (v8 != tolower_l(*v4, v11))
    {
      break;
    }

    v5 = a1++;
    if (*v5)
    {
      if (--v12)
      {
        continue;
      }
    }

    return 0;
  }

  v7 = tolower_l(*a1, v11);
  return v7 - tolower_l(*(a2 - 1), v11);
}

int strncasecmp(const char *a1, const char *a2, size_t a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return strncasecmp_l(a1, a2, a3, v4);
  }

  else
  {
    return strncasecmp_l(a1, a2, a3, __global_locale);
  }
}

char *__cdecl strcasestr_l(const char *a1, const char *a2, locale_t a3)
{
  v8 = a3;
  if (a3)
  {
    if (a3 == -1)
    {
      v8 = __global_locale;
    }
  }

  else
  {
    v8 = &__c_locale;
  }

  __s = (a2 + 1);
  if (*a2)
  {
    v7 = tolower_l(*a2, v8);
    v6 = strlen(__s);
    do
    {
      v3 = a1++;
      v4 = *v3;
      if (!v4)
      {
        return 0;
      }
    }

    while (v7 != tolower_l(v4, v8) || strncasecmp_l(a1, __s, v6, v8));
    --a1;
  }

  return a1;
}

char *__cdecl strcasestr(const char *__big, const char *__little)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return strcasestr_l(__big, __little, v3);
  }

  else
  {
    return strcasestr_l(__big, __little, __global_locale);
  }
}

const char *strchrnul(uint64_t a1, unsigned __int8 a2)
{
  v7 = a1;
  libc_hooks_will_read_cstring(a1);
  if (!a2)
  {
    return (v7 + strlen(v7));
  }

  while (v7 % 8)
  {
    if (!*v7 || *v7 == a2)
    {
      return v7;
    }

    ++v7;
  }

  for (i = v7; ; ++i)
  {
    v4 = 0;
    if (((*i - 0x101010101010101) & ~*i & 0x8080808080808080) == 0)
    {
      v4 = (((*i ^ (0x101010101010101 * a2)) - 0x101010101010101) & ~(*i ^ (0x101010101010101 * a2)) & 0x8080808080808080) == 0;
    }

    if (!v4)
    {
      break;
    }
  }

  for (j = i; ; ++j)
  {
    v3 = 0;
    if (*j)
    {
      v3 = *j != a2;
    }

    if (!v3)
    {
      break;
    }
  }

  return j;
}

int strcoll_l(const char *a1, const char *a2, locale_t a3)
{
  v9 = a3;
  v7 = 0;
  if (a3)
  {
    if (a3 == -1)
    {
      v9 = __global_locale;
    }
  }

  else
  {
    v9 = &__c_locale;
  }

  if (!*(*(v9 + 165) + 64) && (v7 = __collate_mbstowcs(a1, v9)) != 0 && (v6 = __collate_mbstowcs(a2, v9)) != 0)
  {
    v8 = wcscoll_l(v7, v6, v9);
    v5 = *__error();
    free(v7);
    free(v6);
    *__error() = v5;
    return v8;
  }

  else
  {
    v4 = *__error();
    free(v7);
    free(0);
    *__error() = v4;
    return strcmp(a1, a2);
  }
}

int strcoll(const char *__s1, const char *__s2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return strcoll_l(__s1, __s2, v3);
  }

  else
  {
    return strcoll_l(__s1, __s2, __global_locale);
  }
}

size_t strcspn(const char *__s, const char *__charset)
{
  if (!*__s)
  {
    return 0;
  }

  v6[0] = 1;
  memset(&v6[1], 0, 24);
  while (*__charset)
  {
    v6[*__charset / 64] |= 1 << (*__charset % 64);
    ++__charset;
  }

    ;
  }

  return i - __s;
}

char *__cdecl strdup(const char *__s1)
{
  __n = strlen(__s1) + 1;
  __dst = malloc_type_malloc();
  if (!__dst)
  {
    return 0;
  }

  memcpy(__dst, __s1, __n);
  return __dst;
}

size_t __errstr(int a1, const char *a2, char *a3, size_t a4)
{
  v7 = &v11;
  v11 = 0;
  if (a1 < 0)
  {
    v5 = -a1;
  }

  else
  {
    v5 = a1;
  }

  v6 = v5;
  do
  {
    *--v7 = a0123456789[v6 % 0xA];
    v6 /= 0xAu;
  }

  while (v6);
  if (a1 < 0)
  {
    *--v7 = 45;
  }

  v8 = v7 - 1;
  *v8-- = 32;
  *v8 = 58;
  strlcpy(a3, a2, a4);
  return strlcat(a3, v8, a4);
}

int strerror_r(int __errnum, char *__strerrbuf, size_t __buflen)
{
  v4 = 0;
  if (__errnum < 0 || __errnum >= 108)
  {
    __errstr(__errnum, "Unknown error", __strerrbuf, __buflen);
    return 22;
  }

  else if (strlcpy(__strerrbuf, sys_errlist[__errnum], __buflen) >= __buflen)
  {
    return 34;
  }

  return v4;
}

char *__cdecl strerror(int __errnum)
{
  if ((__errnum & 0x80000000) == 0 && __errnum < 108)
  {
    return sys_errlist[__errnum];
  }

  if (!__strerror_ebuf)
  {
    __strerror_ebuf = malloc_type_calloc();
    if (!__strerror_ebuf)
    {
      return 0;
    }
  }

  if (strerror_r(__errnum, __strerror_ebuf, 0x800uLL))
  {
    *__error() = 22;
  }

  return __strerror_ebuf;
}

void strmode(int __mode, char *__bp)
{
  v23 = __mode & 0xF000;
  switch(v23)
  {
    case 4096:
      v24 = __bp + 1;
      *__bp = 112;
      break;
    case 8192:
      v24 = __bp + 1;
      *__bp = 99;
      break;
    case 16384:
      v24 = __bp + 1;
      *__bp = 100;
      break;
    case 24576:
      v24 = __bp + 1;
      *__bp = 98;
      break;
    case 32768:
      v24 = __bp + 1;
      *__bp = 45;
      break;
    case 40960:
      v24 = __bp + 1;
      *__bp = 108;
      break;
    case 49152:
      v24 = __bp + 1;
      *__bp = 115;
      break;
    default:
      v24 = __bp + 1;
      if (v23 == 57344)
      {
        *__bp = 119;
      }

      else
      {
        *__bp = 63;
      }

      break;
  }

  v2 = v24;
  v25 = v24 + 1;
  if ((__mode & 0x100) != 0)
  {
    *v2 = 114;
  }

  else
  {
    *v2 = 45;
  }

  v3 = v25;
  v26 = v25 + 1;
  if ((__mode & 0x80) != 0)
  {
    *v3 = 119;
  }

  else
  {
    *v3 = 45;
  }

  v22 = __mode & 0x840;
  if ((__mode & 0x840) != 0)
  {
    switch(v22)
    {
      case 64:
        v5 = v26++;
        *v5 = 120;
        break;
      case 2048:
        v6 = v26++;
        *v6 = 83;
        break;
      case 2112:
        v7 = v26++;
        *v7 = 115;
        break;
    }
  }

  else
  {
    v4 = v26++;
    *v4 = 45;
  }

  v8 = v26;
  v27 = v26 + 1;
  if ((__mode & 0x20) != 0)
  {
    *v8 = 114;
  }

  else
  {
    *v8 = 45;
  }

  v9 = v27;
  v28 = v27 + 1;
  if ((__mode & 0x10) != 0)
  {
    *v9 = 119;
  }

  else
  {
    *v9 = 45;
  }

  v21 = __mode & 0x408;
  if ((__mode & 0x408) != 0)
  {
    switch(v21)
    {
      case 8:
        v11 = v28++;
        *v11 = 120;
        break;
      case 1024:
        v12 = v28++;
        *v12 = 83;
        break;
      case 1032:
        v13 = v28++;
        *v13 = 115;
        break;
    }
  }

  else
  {
    v10 = v28++;
    *v10 = 45;
  }

  v14 = v28;
  v29 = v28 + 1;
  if ((__mode & 4) != 0)
  {
    *v14 = 114;
  }

  else
  {
    *v14 = 45;
  }

  v15 = v29;
  v30 = v29 + 1;
  if ((__mode & 2) != 0)
  {
    *v15 = 119;
  }

  else
  {
    *v15 = 45;
  }

  v20 = __mode & 0x201;
  if ((__mode & 0x201) != 0)
  {
    switch(v20)
    {
      case 1:
        v17 = v30++;
        *v17 = 120;
        break;
      case 512:
        v18 = v30++;
        *v18 = 84;
        break;
      case 513:
        v19 = v30++;
        *v19 = 116;
        break;
    }
  }

  else
  {
    v16 = v30++;
    *v16 = 45;
  }

  *v30 = 32;
  v30[1] = 0;
}

char *__cdecl strndup(const char *__s1, size_t __n)
{
  for (__na = 0; ; ++__na)
  {
    v3 = 0;
    if (__na < __n)
    {
      v3 = __s1[__na] != 0;
    }

    if (!v3)
    {
      break;
    }
  }

  __dst = malloc_type_malloc();
  if (!__dst)
  {
    return 0;
  }

  memcpy(__dst, __s1, __na);
  *(__dst + __na) = 0;
  return __dst;
}

char *__cdecl strnstr(const char *__big, const char *__little, size_t __len)
{
  __s = (__little + 1);
  v8 = *__little;
  if (*__little)
  {
    __n = strlen(__s);
    do
    {
      do
      {
        if (__len--)
        {
          v4 = __big++;
          v5 = *v4;
          if (v5)
          {
            continue;
          }
        }

        return 0;
      }

      while (v5 != v8);
      if (__n > __len)
      {
        return 0;
      }
    }

    while (strncmp(__big, __s, __n));
    --__big;
  }

  return __big;
}

char *__cdecl strpbrk(const char *__s, const char *__charset)
{
  while (1)
  {
    v2 = __s++;
    v5 = *v2;
    if (!*v2)
    {
      break;
    }

    v6 = __charset;
    while (1)
    {
      v3 = v6++;
      if (!*v3)
      {
        break;
      }

      if (*v3 == v5)
      {
        return (__s - 1);
      }
    }
  }

  return 0;
}

char *__cdecl strrchr(const char *__s, int __c)
{
  v3 = 0;
  while (1)
  {
    if (*__s == __c)
    {
      v3 = __s;
    }

    if (!*__s)
    {
      break;
    }

    ++__s;
  }

  return v3;
}

char *__cdecl strsep(char **__stringp, const char *__delim)
{
  v8 = *__stringp;
  if (!*__stringp)
  {
    return 0;
  }

  v5 = *__stringp;
LABEL_4:
  v2 = v8++;
  v6 = *v2;
  v7 = __delim;
  while (1)
  {
    v3 = v7++;
    if (*v3 == v6)
    {
      break;
    }

    if (!*v3)
    {
      goto LABEL_4;
    }
  }

  if (v6)
  {
    *(v8 - 1) = 0;
  }

  else
  {
    v8 = 0;
  }

  *__stringp = v8;
  return v5;
}

int strsignal_r(int __sig, char *__strsignalbuf, size_t __buflen)
{
  v12 = 0;
  *__s = 0;
  v17[0] = 0;
  *(v17 + 7) = 0;
  v10 = __sig;
  if (__sig < 0)
  {
    v10 = -__sig;
  }

  v9 = __s;
  do
  {
    v3 = v9++;
    *v3 = a0123456789[v10 % 10];
    v10 /= 10;
  }

  while (v10);
  if (__sig < 0)
  {
    v4 = v9++;
    *v4 = 45;
  }

  v7 = strlen(__s) + 2;
  if (__sig <= 0 || __sig >= 32)
  {
    v11 = strlcpy(__strsignalbuf, "Unknown signal", __buflen);
    v12 = 22;
  }

  else
  {
    v11 = strlcpy(__strsignalbuf, sys_siglist[__sig], __buflen);
    if (v11 >= __buflen - v7)
    {
      v12 = 34;
    }
  }

  if (v11 < __buflen - v7)
  {
    __strsignalbuf[v11] = 58;
    v8 = &__strsignalbuf[v11 + 2];
    __strsignalbuf[v11 + 1] = 32;
    do
    {
      --v9;
      v5 = v8++;
      *v5 = *v9;
    }

    while (v9 > __s);
    *v8 = 0;
  }

  return v12;
}

char *__cdecl strsignal(int __sig)
{
  __strsignalbuf = sig_tlsalloc();
  if (__strsignalbuf)
  {
    if (strsignal_r(__sig, __strsignalbuf, 0x800uLL))
    {
      *__error() = 22;
    }

    return __strsignalbuf;
  }

  else
  {
    *__error() = 12;
    return 0;
  }
}

void *sig_tlsalloc()
{
  v1 = 0;
  if (!pthread_once(&sig_init_once, sig_keycreate))
  {
    if (sig_keycreated)
    {
      v1 = pthread_getspecific(sig_key);
      if (!v1)
      {
        v1 = malloc_type_malloc();
        if (v1)
        {
          if (pthread_setspecific(sig_key, v1))
          {
            free(v1);
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sig_keycreate()
{
  result = pthread_key_create(&sig_key, &_free);
  sig_keycreated = result == 0;
  return result;
}

size_t strspn(const char *__s, const char *__charset)
{
  if (!*__s)
  {
    return 0;
  }

  memset(v6, 0, sizeof(v6));
  while (*__charset)
  {
    v6[*__charset / 64] |= 1 << (*__charset % 64);
    ++__charset;
  }

    ;
  }

  return i - __s;
}

char *__cdecl strtok_r(char *__str, const char *__sep, char **__lasts)
{
  v13 = __str;
  if (!__str)
  {
    v13 = *__lasts;
    if (!*__lasts)
    {
      return 0;
    }
  }

LABEL_4:
  v3 = v13++;
  v8 = *v3;
  v11 = __sep;
  while (1)
  {
    v4 = v11++;
    if (!*v4)
    {
      break;
    }

    if (v8 == *v4)
    {
      goto LABEL_4;
    }
  }

  if (v8)
  {
    v10 = v13 - 1;
LABEL_11:
    v5 = v13++;
    v9 = *v5;
    v12 = __sep;
    while (1)
    {
      v6 = v12++;
      if (*v6 == v9)
      {
        break;
      }

      if (!*v6)
      {
        goto LABEL_11;
      }
    }

    if (v9)
    {
      *(v13 - 1) = 0;
    }

    else
    {
      v13 = 0;
    }

    *__lasts = v13;
    return v10;
  }

  else
  {
    *__lasts = 0;
    return 0;
  }
}

size_t strxfrm(char *__s1, const char *__s2, size_t __n)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return strxfrm_l(__s1, __s2, __n, v4);
  }

  else
  {
    return strxfrm_l(__s1, __s2, __n, __global_locale);
  }
}

size_t strxfrm_l(char *a1, const char *a2, size_t a3, locale_t a4)
{
  v10 = a4;
  v7 = 0;
  if (a4)
  {
    if (a4 == -1)
    {
      v10 = __global_locale;
    }
  }

  else
  {
    v10 = &__c_locale;
  }

  v5 = *(v10 + 165);
  if (*a2)
  {
    v9 = strlen(a2);
    if (*(v5 + 64) || (v7 = malloc_type_malloc()) == 0 || mbstowcs_l(v7, a2, v9 + 1, v10) == -1 || (v8 = _collate_sxfrm(v5, v7, a1, a3), v8 == -1))
    {
      v6 = *__error();
      free(v7);
      strlcpy(a1, a2, a3);
      *__error() = v6;
      return v9;
    }

    else
    {
      free(v7);
      if (a3 <= v8)
      {
        if (a3)
        {
          a1[a3 - 1] = 0;
        }
      }

      else
      {
        a1[v8] = 0;
      }

      return v8;
    }
  }

  else
  {
    if (a3)
    {
      *a1 = 0;
    }

    return 0;
  }
}

void swab(const void *a1, void *a2, ssize_t a3)
{
  if (a3 > 0)
  {
    for (i = a3 >> 1; (i & 7) != 0; --i)
    {
      v11 = *a1;
      v3 = a1 + 1;
      a1 = a1 + 2;
      *a2 = *v3;
      v4 = a2 + 1;
      a2 = a2 + 2;
      *v4 = v11;
    }

    for (j = i >> 3; j > 0; --j)
    {
      v12 = *a1;
      *a2 = *(a1 + 1);
      *(a2 + 1) = v12;
      v13 = *(a1 + 2);
      *(a2 + 2) = *(a1 + 3);
      *(a2 + 3) = v13;
      v14 = *(a1 + 4);
      *(a2 + 4) = *(a1 + 5);
      *(a2 + 5) = v14;
      v15 = *(a1 + 6);
      *(a2 + 6) = *(a1 + 7);
      *(a2 + 7) = v15;
      v16 = *(a1 + 8);
      *(a2 + 8) = *(a1 + 9);
      *(a2 + 9) = v16;
      v17 = *(a1 + 10);
      *(a2 + 10) = *(a1 + 11);
      *(a2 + 11) = v17;
      v18 = *(a1 + 12);
      *(a2 + 12) = *(a1 + 13);
      *(a2 + 13) = v18;
      v19 = *(a1 + 14);
      v5 = a1 + 15;
      a1 = a1 + 16;
      *(a2 + 14) = *v5;
      v6 = a2 + 15;
      a2 = a2 + 16;
      *v6 = v19;
    }
  }
}

__int32 *__cdecl wcpcpy(__int32 *a1, const __int32 *a2)
{
  while (1)
  {
    v2 = *a2;
    *a1 = *a2;
    if (!v2)
    {
      break;
    }

    ++a2;
    ++a1;
  }

  return a1;
}

__int32 *__cdecl wcpncpy(__int32 *a1, const __int32 *a2, size_t a3)
{
  while (1)
  {
    if (!a3--)
    {
      return a1;
    }

    v4 = *a2;
    *a1 = *a2;
    if (!v4)
    {
      break;
    }

    ++a1;
    ++a2;
  }

  v7 = a1;
  while (a3--)
  {
    *++a1 = 0;
  }

  return v7;
}

int wcscasecmp_l(const __int32 *a1, const __int32 *a2, locale_t a3)
{
  while (*a1)
  {
    v5 = towlower_l(*a1, a3);
    v4 = towlower_l(*a2, a3);
    if (v5 != v4)
    {
      return v5 - v4;
    }

    ++a1;
    ++a2;
  }

  return -*a2;
}

int wcscasecmp(const __int32 *a1, const __int32 *a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return wcscasecmp_l(a1, a2, v3);
  }

  else
  {
    return wcscasecmp_l(a1, a2, __global_locale);
  }
}

__int32 *__cdecl wcscat(__int32 *result, const __int32 *a2)
{
    ;
  }

  do
  {
    v2 = a2++;
    LODWORD(v2) = *v2;
    v3 = i++;
    *v3 = v2;
  }

  while (v2);
  return result;
}

__int32 *__cdecl wcschr(const __int32 *a1, __int32 a2)
{
  while (1)
  {
    v3 = 0;
    if (*a1 != a2)
    {
      v3 = *a1 != 0;
    }

    if (!v3)
    {
      break;
    }

    ++a1;
  }

  if (*a1 == a2)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

int wcscmp(const __int32 *a1, const __int32 *a2)
{
  while (1)
  {
    v2 = a2++;
    if (*a1 != *v2)
    {
      break;
    }

    v3 = a1++;
    if (!*v3)
    {
      return 0;
    }
  }

  return *a1 - *(a2 - 1);
}

int wcscoll_l(const __int32 *a1, const __int32 *a2, locale_t a3)
{
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  i = 0;
  v29 = wcscmp(a1, a2);
  if (v38)
  {
    if (v38 == -1)
    {
      v38 = __global_locale;
    }
  }

  else
  {
    v38 = &__c_locale;
  }

  v28 = *(v38 + 165);
  if (*(v28 + 64) || !v29)
  {
    return v29;
  }

  if (!*v40 && *v39)
  {
    return -1;
  }

  if (*v40 && !*v39)
  {
    return 1;
  }

  for (i = 0; ; ++i)
  {
    if (i >= **(v28 + 88))
    {
      v29 = 0;
      goto LABEL_96;
    }

    v27 = 0;
    v26 = 0;
    v25 = v40;
    v24 = v39;
    if (i == **(v28 + 88))
    {
      v31 = 1;
    }

    else
    {
      v31 = *(*(v28 + 88) + 1 + i);
    }

    if ((v31 & 2) != 0)
    {
      free(v33);
      v33 = wcsdup(v25);
      if (!v33)
      {
        goto LABEL_96;
      }

      v22 = v33;
      for (j = &v33[wcslen(v33) - 1]; v22 < j; --j)
      {
        v18 = *v22;
        v3 = v22++;
        *v3 = *j;
        v4 = j;
        *v4 = v18;
      }

      free(v32);
      v32 = wcsdup(v24);
      if (!v32)
      {
        goto LABEL_96;
      }

      v23 = v32;
      for (k = &v32[wcslen(v32) - 1]; v23 < k; --k)
      {
        v19 = *v23;
        v5 = v23++;
        *v5 = *k;
        v6 = k;
        *v6 = v19;
      }

      v25 = v33;
      v24 = v32;
    }

    if ((v31 & 4) != 0)
    {
      while (1)
      {
        v13 = 0;
        if (*v25)
        {
          v13 = *v24 != 0;
        }

        if (!v13)
        {
          break;
        }

        v34 = 0;
        v35 = 0;
        v16 = 1;
        v17 = 1;
        while (1)
        {
          v12 = 0;
          if (v35 == v34)
          {
            v11 = 1;
            if (!v17)
            {
              v11 = v16;
            }

            v12 = v11;
          }

          if (!v12)
          {
            break;
          }

          if (v17)
          {
            _collate_lookup(v28, v25, &v37, &v35, i, &v27);
            if (v35 < 0)
            {
              goto LABEL_81;
            }

            if (!v35)
            {
              v35 = 0x7FFFFFFF;
              v27 = 0;
            }

            v17 = v27 != 0;
          }

          if (v16)
          {
            _collate_lookup(v28, v24, &v36, &v34, i, &v26);
            if (v34 < 0)
            {
              goto LABEL_81;
            }

            if (!v34)
            {
              v34 = 0x7FFFFFFF;
              v26 = 0;
            }

            v16 = v26 != 0;
          }
        }

        if (v35 != v34)
        {
          v29 = v35 - v34;
          goto LABEL_96;
        }

        v25 += v37;
        v24 += v36;
      }

      if (*v25)
      {
        v29 = *v25;
        goto LABEL_96;
      }

      if (*v24)
      {
        v29 = -*v24;
        goto LABEL_96;
      }

      continue;
    }

    v15 = 0;
    v14 = 0;
    while (1)
    {
      v10 = 1;
      if (!*v25)
      {
        v10 = 1;
        if (!*v24)
        {
          v10 = 1;
          if (!v27)
          {
            v10 = v26 != 0;
          }
        }
      }

      if (!v10)
      {
        break;
      }

      v35 = 1;
      while (1)
      {
        v9 = 1;
        if (!*v25)
        {
          v9 = v27 != 0;
        }

        if (!v9)
        {
          break;
        }

        _collate_lookup(v28, v25, &v37, &v35, i, &v27);
        v25 += v37;
        if (v35 > 0)
        {
          ++v15;
          break;
        }

        if (v35 < 0)
        {
LABEL_81:
          *__error() = 22;
          goto LABEL_96;
        }

        v27 = 0;
      }

      v34 = 1;
      while (1)
      {
        v8 = 1;
        if (!*v24)
        {
          v8 = v26 != 0;
        }

        if (!v8)
        {
          break;
        }

        _collate_lookup(v28, v24, &v36, &v34, i, &v26);
        v24 += v36;
        if (v34 > 0)
        {
          ++v14;
          break;
        }

        if (v34 < 0)
        {
          goto LABEL_81;
        }

        v26 = 0;
      }

      if ((!v35 || !v34) && v15 == v14)
      {
        break;
      }

      if (v35 != v34)
      {
        v29 = v35 - v34;
        goto LABEL_96;
      }
    }

    if (v15 && !v14)
    {
      v29 = 1;
      goto LABEL_96;
    }

    if (!v15 && v14)
    {
      break;
    }
  }

  v29 = -1;
LABEL_96:
  free(v33);
  free(v32);
  return v29;
}

int wcscoll(const __int32 *a1, const __int32 *a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return wcscoll_l(a1, a2, v3);
  }

  else
  {
    return wcscoll_l(a1, a2, __global_locale);
  }
}

__int32 *__cdecl wcscpy(__int32 *result, const __int32 *a2)
{
  v4 = result;
  do
  {
    v2 = a2++;
    LODWORD(v2) = *v2;
    v3 = v4++;
    *v3 = v2;
  }

  while (v2);
  return result;
}

int wordexp(const char *a1, wordexp_t *a2, int a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  memset(&v10, 0, sizeof(v10));
  v11 = we_check(a1, a3);
  if (v11)
  {
    return v11;
  }

  v10.we_offs = v13->we_offs;
  if (v12)
  {
    if ((v12 & 2) != 0)
    {
      we_offs = v13->we_offs;
    }

    else
    {
      we_offs = 0;
    }

    v8 = v13->we_wordc + we_offs;
    __src = (v13->we_wordv - 2);
    __dst = malloc_type_malloc();
    if (!__dst)
    {
      return 4;
    }

    memcpy(__dst, __src, 8 * (v8 + 1) + 16);
    v3 = __dst[1];
    *__dst = malloc_type_malloc();
    if (!*__dst)
    {
      free(__dst);
      return 4;
    }

    memcpy(*__dst, *__src, __dst[1]);
    for (i = 0; i < v8; ++i)
    {
      if (__dst[i + 2])
      {
        __dst[i + 2] += *__dst - *__src;
      }
    }

    v10.we_wordc = v13->we_wordc;
    v10.we_wordv = __dst + 2;
  }

  else
  {
    v10.we_wordc = 0;
    v10.we_wordv = 0;
  }

  v11 = we_askshell(v14, &v10.we_wordc, v12);
  if (v11)
  {
    if (v11 == 4)
    {
      if ((v12 & 8) != 0)
      {
        wordfree(v13);
      }

      *v13 = v10;
    }

    else
    {
      wordfree(&v10);
    }

    return v11;
  }

  else
  {
    if ((v12 & 8) != 0)
    {
      wordfree(v13);
    }

    *v13 = v10;
    return 0;
  }
}

uint64_t we_check(char *a1, char a2)
{
  v21 = 0;
  v17 = 0;
  v18 = 0;
  while (1)
  {
    v2 = a1++;
    v3 = *v2;
    if (!v3)
    {
      break;
    }

    switch(v3)
    {
      case 10:
        goto LABEL_38;
      case 34:
        if (!(v18 + v17))
        {
          v21 ^= 1u;
        }

        goto LABEL_78;
      case 36:
        v7 = a1++;
        v8 = *v7;
        if (v8)
        {
          if (v18 + v17 || v8 != 40)
          {
            if (v18 + v17 || v8 != 123)
            {
              --a1;
            }

            else
            {
              v20 = 1;
              while (1)
              {
                v12 = a1++;
                v13 = *v12;
                v24 = v13;
                if (!v13)
                {
                  break;
                }

                if (v13 == 92)
                {
                  v14 = a1++;
                  LODWORD(v14) = *v14;
                  v24 = v14;
                  if (!v14)
                  {
                    break;
                  }
                }

                else if (v13 == 123)
                {
                  ++v20;
                }

                else if (v13 == 125 && !--v20)
                {
                  break;
                }
              }

              if (!v24 || v20)
              {
                return 6;
              }
            }
          }

          else
          {
            if ((a2 & 4) != 0 && *a1 != 40)
            {
              return 3;
            }

            v19 = 1;
            while (1)
            {
              v9 = a1++;
              v10 = *v9;
              v23 = v10;
              if (!v10)
              {
                break;
              }

              if (v10 == 92)
              {
                v11 = a1++;
                LODWORD(v11) = *v11;
                v23 = v11;
                if (!v11)
                {
                  break;
                }
              }

              else if (v10 == 40)
              {
                ++v19;
              }

              else if (v10 == 41 && !--v19)
              {
                break;
              }
            }

            if (!v23 || v19)
            {
              return 6;
            }
          }
        }

LABEL_78:
        v18 = 0;
        break;
      case 38:
        goto LABEL_38;
      case 39:
        if (!(v18 + v21))
        {
          v17 ^= 1u;
        }

        goto LABEL_78;
      case 41:
      case 40:
      case 60:
      case 59:
      case 62:
        goto LABEL_38;
      case 92:
        if (!v17)
        {
          v18 ^= 1u;
        }

        break;
      case 96:
        if (!(v18 + v17))
        {
          if ((a2 & 4) != 0)
          {
            return 3;
          }

          while (1)
          {
            v4 = a1++;
            v5 = *v4;
            v22 = v5;
            v16 = 0;
            if (v5)
            {
              v16 = v5 != 96;
            }

            if (!v16)
            {
              break;
            }

            if (v5 == 92)
            {
              v6 = a1++;
              LODWORD(v6) = *v6;
              v22 = v6;
              if (!v6)
              {
                break;
              }
            }
          }

          if (!v22)
          {
            return 6;
          }
        }

        goto LABEL_78;
      default:
        if ((v3 - 123) > 2)
        {
          goto LABEL_78;
        }

LABEL_38:
        if (!(v18 + v17 + v21))
        {
          return 1;
        }

        goto LABEL_78;
    }
  }

  if (v18 + v17 + v21)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t we_askshell(char *a1, unint64_t *a2, int a3)
{
  __s = a1;
  v56 = a2;
  v55 = a3;
  v54 = 0;
  __n = 0;
  i = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  j = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v45 = *__error();
  if (pipe(v66) < 0)
  {
    return 4;
  }

  if (pipe(v63) < 0)
  {
    close_NOCANCEL();
    close_NOCANCEL();
    return 4;
  }

  v59 = 20;
  v37 = 0x80000;
  sigprocmask(1, &v37, &v36);
  v40 = posix_spawnattr_init(&v38);
  if (v40)
  {
LABEL_27:
    close_NOCANCEL();
    close_NOCANCEL();
    close_NOCANCEL();
    close_NOCANCEL();
    v26 = v40;
    *__error() = v26;
    return 4;
  }

  v35 = 0;
  v40 = posix_spawnattr_setflags(&v38, 0x4000);
  if (!v40)
  {
    v35 = -1;
    v40 = posix_spawnattr_setsigdefault(&v38, &v35);
    if (!v40)
    {
      v35 = 0;
      v40 = posix_spawnattr_setsigmask(&v38, &v35);
      if (!v40)
      {
        v40 = posix_spawn_file_actions_init(&v39);
        if (!v40)
        {
          memcpy(__dst, &off_C8B10, sizeof(__dst));
          strcpy(__src, "[ $# -gt 0 ] && export IFS=$1;/usr/lib/system/wordexp-helper ");
          v31 = 1;
          if (v66[1] == 1)
          {
            v40 = posix_spawn_file_actions_addinherit_np(&v39, 1);
            if (v40)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v40 = posix_spawn_file_actions_adddup2(&v39, v66[1], 1);
            if (v40)
            {
              goto LABEL_25;
            }
          }

          if (v63[1] == 2)
          {
            v40 = posix_spawn_file_actions_addinherit_np(&v39, 2);
            if (!v40)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v40 = posix_spawn_file_actions_adddup2(&v39, v63[1], 2);
            if (!v40)
            {
LABEL_18:
              if ((v55 & 0x20) != 0)
              {
                v31 = 2;
                __dst[1] = "-u";
              }

              v3 = v31;
              v32 = v31 + 1;
              __dst[v3] = "-c";
              strlen(__s);
              __s1 = malloc_type_malloc();
              if (__s1)
              {
                strcpy(__s1, __src);
                strcat(__s1, __s);
                v4 = v32;
                v33 = v32 + 1;
                __dst[v4] = __s1;
                v29 = getenv("IFS");
                if (v29)
                {
                  v5 = v33;
                  v34 = v33 + 1;
                  __dst[v5] = "--";
                  v6 = v34;
                  v33 = v34 + 1;
                  __dst[v6] = v29;
                }

                __dst[v33] = 0;
                v7 = _NSGetEnviron();
                v40 = posix_spawn(&v49, "/bin/sh", &v39, &v38, __dst, *v7);
                free(__s1);
              }

              else
              {
                v40 = *__error();
              }
            }
          }

LABEL_25:
          posix_spawn_file_actions_destroy(&v39);
        }
      }
    }
  }

  posix_spawnattr_destroy(&v38);
  if (v40)
  {
    goto LABEL_27;
  }

  close_NOCANCEL();
  close_NOCANCEL();
  if (we_read_fully(v66[0], __str, 8) == 8 && we_read_fully(v66[0], v65, 8) == 8)
  {
    v65[8] = 0;
    __str[8] = 0;
    v54 = strtol(__str, 0, 16);
    v9 = strtol(v65, 0, 16);
    __n = v9 + v54;
    v50 = *v56;
    if ((v55 & 3) == 3)
    {
      v50 += v56[2];
    }

    *v56 += v54;
    if (v56[1])
    {
      v25 = v56[1] - 16;
    }

    v24 = *v56 + 1;
    if ((v55 & 2) != 0)
    {
      v23 = v56[2];
    }

    v41 = malloc_type_realloc();
    if (!v41)
    {
      v46 = 4;
      goto LABEL_62;
    }

    if (!v56[1])
    {
      *v41 = 0;
      v41[1] = 0;
    }

    v51 = v41[1];
    v41[1] += __n;
    v56[1] = (v41 + 2);
    v10 = *v41;
    v11 = v41[1];
    v42 = malloc_type_realloc();
    if (!v42)
    {
      v46 = 4;
      goto LABEL_62;
    }

    for (i = 0; i < v50; ++i)
    {
      if (*(v56[1] + 8 * i))
      {
        *(v56[1] + 8 * i) += v42 - *v41;
      }
    }

    *v41 = v42;
    fully = we_read_fully(v66[0], *v41 + v51, __n);
    if (fully == __n)
    {
      NOCANCEL = read_NOCANCEL();
      if (NOCANCEL <= 0)
      {
        if (NOCANCEL < 0)
        {
          v45 = *__error();
          v46 = 4;
          goto LABEL_62;
        }
      }

      else
      {
        __big[NOCANCEL] = 0;
        if ((v55 & 0x10) != 0)
        {
          fputs(__big, __stderrp);
        }
      }

      v46 = 0;
      goto LABEL_62;
    }

    if ((v55 & 0x20) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = 6;
    }
  }

  else if ((v55 & 0x20) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 6;
  }

  v46 = v8;
  v45 = *__error();
LABEL_62:
  close_NOCANCEL();
  close_NOCANCEL();
  do
  {
    v48 = waitpid_NOCANCEL(v49, &v47, 0);
    v22 = 0;
    if (v48 < 0)
    {
      v22 = *__error() == 4;
    }
  }

  while (v22);
  sigprocmask(3, &v36, 0);
  if (v46)
  {
    v21 = v45;
    *__error() = v21;
    return v46;
  }

  else if (v48 < 0 || (v47 & 0x7F) != 0 || BYTE1(v47))
  {
    if ((v55 & 0x20) != 0)
    {
      return 2;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v27 = strstr(__big, "command substitution");
    if (v27 && strstr(v27 + 20, "syntax error"))
    {
      if (strstr(__big, " unbound variable"))
      {
        return 2;
      }

      else
      {
        return 6;
      }
    }

    else
    {
      if (!v50 && (v55 & 2) != 0)
      {
        while (v50 < v56[2])
        {
          v15 = v56[1];
          v16 = v50++;
          *(v15 + 8 * v16) = 0;
        }
      }

      for (j = (*v41 + v51); v54--; j = v44 + 1)
      {
        v18 = v56[1];
        v19 = v50++;
        *(v18 + 8 * v19) = j;
        v44 = memchr(j, 0, __n);
        if (!v44)
        {
          return 4;
        }

        __n -= v44 - j + 1;
      }

      *(v56[1] + 8 * v50) = 0;
      return 0;
    }
  }
}

void wordfree(wordexp_t *a1)
{
  if (a1)
  {
    if (a1->we_wordv)
    {
      free(*(a1->we_wordv - 2));
      free(a1->we_wordv - 2);
    }

    a1->we_wordv = 0;
    a1->we_wordc = 0;
  }
}

uint64_t we_read_fully(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  do
  {
    NOCANCEL = read_NOCANCEL();
    if (NOCANCEL != -1 || *__error() != 4)
    {
      if (NOCANCEL <= 0)
      {
        return v5;
      }

      v5 += NOCANCEL;
    }
  }

  while (v5 != a3);
  return v5;
}

size_t wcscspn(const __int32 *a1, const __int32 *a2)
{
  for (i = a1; *i; ++i)
  {
    for (j = a2; *j; ++j)
    {
      if (*i == *j)
      {
        return i - a1;
      }
    }
  }

  return i - a1;
}

__int32 *__cdecl wcsdup(const __int32 *a1)
{
  v2 = wcslen(a1) + 1;
  v3 = malloc_type_malloc();
  if (v3)
  {
    return wmemcpy(v3, a1, v2);
  }

  else
  {
    return 0;
  }
}

size_t wcslcat(__int32 *a1, const __int32 *a2, size_t a3)
{
  v11 = a1;
  v10 = a2;
  v8 = a3;
  while (1)
  {
    v6 = 0;
    if (*v11)
    {
      v3 = v8--;
      v6 = v3 != 0;
    }

    if (!v6)
    {
      break;
    }

    ++v11;
  }

  v7 = v11 - a1;
  v9 = a3 - v7;
  if (a3 == v7)
  {
    return v7 + wcslen(a2);
  }

  while (*v10)
  {
    if (v9 != 1)
    {
      v4 = v11++;
      *v4 = *v10;
      --v9;
    }

    ++v10;
  }

  *v11 = 0;
  return v7 + v10 - a2;
}

size_t wcslcpy(__int32 *a1, const __int32 *a2, size_t a3)
{
  v8 = a2;
  v7 = a3;
  if (a3)
  {
    v7 = a3 - 1;
    if (a3 != 1)
    {
      do
      {
        v3 = v8++;
        LODWORD(v3) = *v3;
        v4 = a1++;
        *v4 = v3;
        if (!v3)
        {
          break;
        }

        --v7;
      }

      while (v7);
    }
  }

  if (!v7)
  {
    if (a3)
    {
      *a1 = 0;
    }

    do
    {
      v5 = v8++;
    }

    while (*v5);
  }

  return v8 - a2 - 1;
}

size_t wcslen(const __int32 *a1)
{
    ;
  }

  return i - a1;
}

int wcsncasecmp_l(const __int32 *a1, const __int32 *a2, size_t n, locale_t a4)
{
  v8 = n;
  if (!n)
  {
    return 0;
  }

  while (*a1)
  {
    v6 = towlower_l(*a1, a4);
    v5 = towlower_l(*a2, a4);
    if (v6 != v5)
    {
      return v6 - v5;
    }

    if (!--v8)
    {
      return 0;
    }

    ++a1;
    ++a2;
  }

  return -*a2;
}

int wcsncasecmp(const __int32 *a1, const __int32 *a2, size_t n)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return wcsncasecmp_l(a1, a2, n, v4);
  }

  else
  {
    return wcsncasecmp_l(a1, a2, n, __global_locale);
  }
}

__int32 *__cdecl wcsncat(__int32 *result, const __int32 *a2, size_t a3)
{
    ;
  }

  for (j = i; ; ++j)
  {
    v5 = 0;
    if (*a2)
    {
      v5 = a3 != 0;
    }

    if (!v5)
    {
      break;
    }

    v3 = a2++;
    v4 = j;
    *v4 = *v3;
    --a3;
  }

  *j = 0;
  return result;
}

int wcsncmp(const __int32 *a1, const __int32 *a2, size_t a3)
{
  v6 = a3;
  if (!a3)
  {
    return 0;
  }

  do
  {
    v3 = a2++;
    if (*a1 != *v3)
    {
      return *a1 - *(a2 - 1);
    }

    v4 = a1++;
    if (!*v4)
    {
      break;
    }

    --v6;
  }

  while (v6);
  return 0;
}

__int32 *__cdecl wcsncpy(__int32 *result, const __int32 *a2, size_t a3)
{
  v8 = a3;
  if (a3)
  {
    v7 = result;
    while (1)
    {
      v3 = a2++;
      LODWORD(v3) = *v3;
      v4 = v7++;
      *v4 = v3;
      if (!v3)
      {
        break;
      }

      if (!--v8)
      {
        return result;
      }
    }

    while (--v8)
    {
      v5 = v7++;
      *v5 = 0;
    }
  }

  return result;
}

size_t wcsnlen(const __int32 *a1, size_t a2)
{
  for (i = 0; i < a2 && *a1; ++i)
  {
    ++a1;
  }

  return i;
}

__int32 *__cdecl wcspbrk(const __int32 *a1, const __int32 *a2)
{
  while (*a1)
  {
    for (i = a2; *i; ++i)
    {
      if (*a1 == *i)
      {
        return a1;
      }
    }

    ++a1;
  }

  return 0;
}

__int32 *__cdecl wcsrchr(const __int32 *a1, __int32 a2)
{
  v3 = 0;
  while (1)
  {
    if (*a1 == a2)
    {
      v3 = a1;
    }

    if (!*a1)
    {
      break;
    }

    ++a1;
  }

  return v3;
}

size_t wcsspn(const __int32 *a1, const __int32 *a2)
{
  for (i = a1; *i; ++i)
  {
      ;
    }

    if (!*j)
    {
      break;
    }
  }

  return i - a1;
}

FILE *__cdecl fmemopen(void *__buf, size_t __size, const char *__mode)
{
  v14 = __buf;
  v13 = __size;
  v12 = __mode;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (!__size)
  {
    *__error() = 22;
    return 0;
  }

  if (!__sflags(v12, &v9) || (v9 & 2) == 0 && !v14)
  {
    *__error() = 22;
    return 0;
  }

  v11 = malloc_type_malloc();
  if (!v11)
  {
    return 0;
  }

  v11[4] = 0;
  v11[2] = v13;
  v3 = v14;
  *v11 = v14;
  *(v11 + 8) = v3 == 0;
  if (v11[1])
  {
    *v11 = malloc_type_malloc();
    if (!*v11)
    {
LABEL_11:
      free(v11);
      return 0;
    }
  }

  if ((v11[1] & 1) != 0 || *v12 == 119)
  {
    **v11 = 0;
  }

  v4 = strchr(v12, 98) != 0;
  *(v11 + 9) = v4;
  v8 = *v12;
  switch(v8)
  {
    case 'a':
      v5 = strnlen(*v11, v11[2]);
      v11[3] = v5;
      v11[4] = v5;
      break;
    case 'r':
      v11[3] = v13;
      break;
    case 'w':
      v11[3] = 0;
      break;
  }

  if (v9)
  {
    v6 = 0;
  }

  else
  {
    v6 = fmemopen_read;
  }

  v10 = funopen(v11, v6, fmemopen_write, fmemopen_seek, fmemopen_close);
  if (!v10)
  {
    if (v11[1])
    {
      free(*v11);
    }

    goto LABEL_11;
  }

  if (*v12 == 97)
  {
    v10->_flags |= 0x100u;
  }

  setvbuf(v10, 0, 2, 0);
  return v10;
}

uint64_t fmemopen_read(void *a1, void *a2, unsigned int a3)
{
  __n = a3;
  if (a3 > a1[3] - a1[4])
  {
    __n = a1[3] - a1[4];
  }

  if (__n)
  {
    memcpy(a2, (*a1 + a1[4]), __n);
    a1[4] += __n;
    return __n;
  }

  else
  {
    return 0;
  }
}

uint64_t fmemopen_write(uint64_t a1, const void *a2, unsigned int a3)
{
  __n = a3;
  if (a3 > *(a1 + 16) - *(a1 + 32))
  {
    __n = *(a1 + 16) - *(a1 + 32);
  }

  if (__n)
  {
    memcpy((*a1 + *(a1 + 32)), a2, __n);
    *(a1 + 32) += __n;
    if (*(a1 + 32) > *(a1 + 24))
    {
      *(a1 + 24) = *(a1 + 32);
    }

    if (!*(a1 + 9) && *(a1 + 32) < *(a1 + 16) && *(*a1 + *(a1 + 32) - 1))
    {
      *(*a1 + *(a1 + 32)) = 0;
    }

    return __n;
  }

  else
  {
    return 0;
  }
}

uint64_t fmemopen_seek(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2 || a2 > 0 || -a2 > a1[3])
      {
        goto LABEL_4;
      }

      a1[4] = a1[3] + a2;
      return a1[4];
    }

    if ((a1[4] + a2) <= a1[2])
    {
      a1[4] += a2;
      return a1[4];
    }
  }

  else if (a2 <= a1[2])
  {
    a1[4] = a2;
    return a1[4];
  }

LABEL_4:
  *__error() = 22;
  return -1;
}

uint64_t fmemopen_close(uint64_t a1)
{
  if (*(a1 + 8))
  {
    free(*a1);
  }

  free(a1);
  return 0;
}

__int32 *__cdecl wcsstr(const __int32 *a1, const __int32 *a2)
{
  v6 = (a2 + 1);
  v5 = *a2;
  if (*a2)
  {
    v4 = wcslen(v6);
    do
    {
      v2 = a1++;
      if (!*v2)
      {
        return 0;
      }
    }

    while (*v2 != v5 || wcsncmp(a1, v6, v4));
    --a1;
  }

  return a1;
}

__int32 *__cdecl wcstok(__int32 *a1, const __int32 *a2, __int32 **a3)
{
  v13 = a1;
  if (!a1)
  {
    v13 = *a3;
    if (!*a3)
    {
      return 0;
    }
  }

LABEL_4:
  v3 = v13++;
  v8 = *v3;
  v11 = a2;
  while (1)
  {
    v4 = v11++;
    if (!*v4)
    {
      break;
    }

    if (v8 == *v4)
    {
      goto LABEL_4;
    }
  }

  if (v8)
  {
    v10 = v13 - 1;
LABEL_11:
    v5 = v13++;
    v9 = *v5;
    v12 = a2;
    while (1)
    {
      v6 = v12++;
      if (*v6 == v9)
      {
        break;
      }

      if (!*v6)
      {
        goto LABEL_11;
      }
    }

    if (v9)
    {
      *(v13 - 1) = 0;
    }

    else
    {
      v13 = 0;
    }

    *a3 = v13;
    return v10;
  }

  else
  {
    *a3 = 0;
    return 0;
  }
}

int wcswidth_l(const __int32 *a1, size_t a2, locale_t a3)
{
  v10 = a3;
  v9 = 0;
  if (a3)
  {
    if (a3 == -1)
    {
      v10 = __global_locale;
    }
  }

  else
  {
    v10 = __c_locale;
  }

  for (i = 0; ; i += v7)
  {
    v3 = a2--;
    v6 = 0;
    if (v3)
    {
      v4 = a1++;
      v9 = *v4;
      v6 = *v4 != 0;
    }

    if (!v6)
    {
      break;
    }

    v7 = wcwidth_l(v9, v10);
    if (v7 < 0)
    {
      return -1;
    }
  }

  return i;
}

int wcswidth(const __int32 *a1, size_t a2)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    return wcswidth_l(a1, a2, v3);
  }

  else
  {
    return wcswidth_l(a1, a2, __global_locale);
  }
}

size_t wcsxfrm_l(__int32 *a1, const __int32 *a2, size_t a3, locale_t a4)
{
  v10 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v10 = __global_locale;
    }
  }

  else
  {
    v10 = __c_locale;
  }

  v6 = *(v10 + 165);
  if (*a2)
  {
    if (*(v6 + 64) || (v8 = _collate_wxfrm(v6, a2, a1, a3), v8 == -1))
    {
      v7 = *__error();
      v4 = wcslen(a2);
      v9 = v4;
      if (v4 >= a3)
      {
        if (a3)
        {
          wcsncpy(a1, a2, a3 - 1);
          a1[a3 - 1] = 0;
        }
      }

      else
      {
        wcscpy(a1, a2);
      }

      *__error() = v7;
      return v9;
    }

    else
    {
      if (a3 <= v8)
      {
        if (a3)
        {
          a1[a3 - 1] = 0;
        }
      }

      else
      {
        a1[v8] = 0;
      }

      return v8;
    }
  }

  else
  {
    if (a3)
    {
      *a1 = 0;
    }

    return 0;
  }
}

size_t wcsxfrm(__int32 *a1, const __int32 *a2, size_t a3)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return wcsxfrm_l(a1, a2, a3, v4);
  }

  else
  {
    return wcsxfrm_l(a1, a2, a3, __global_locale);
  }
}

__int32 *__cdecl wmemchr(const __int32 *a1, __int32 a2, size_t a3)
{
  for (i = 0; i < a3; ++i)
  {
    if (*a1 == a2)
    {
      return a1;
    }

    ++a1;
  }

  return 0;
}

int wmemcmp(const __int32 *a1, const __int32 *a2, size_t a3)
{
  for (i = 0; ; ++i)
  {
    if (i >= a3)
    {
      return 0;
    }

    if (*a1 != *a2)
    {
      break;
    }

    ++a1;
    ++a2;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

__int32 *__cdecl wmemset(__int32 *result, __int32 a2, size_t a3)
{
  v3 = result;
  for (i = 0; i < a3; ++i)
  {
    *v3++ = a2;
  }

  return result;
}

const char *regatoi(uint64_t a1, char *a2)
{
    ;
  }

  if (!*i)
  {
    return "0";
  }

  sprintf(a2, "%d", *i);
  return a2;
}

uint64_t _UTF2_init(uint64_t a1)
{
  *(a1 + 72) = _UTF2_mbrtowc;
  *(a1 + 96) = _UTF2_wcrtomb;
  *(a1 + 80) = _UTF2_mbsinit;
  *(a1 + 88) = _UTF2_mbsnrtowcs;
  *(a1 + 104) = _UTF2_wcsnrtombs;
  *(a1 + 64) = 3;
  *(a1 + 68) = 128;
  return 0;
}

uint64_t _UTF2_mbrtowc(int *a1, unsigned __int8 *a2, unint64_t a3, int *a4)
{
  v17 = a2;
  v12 = 0;
  if (a4[1] < 0 || a4[1] > 6)
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

  if (!a4[1])
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

  if (a4[1])
  {
    v11 = a4[1];
    v10 = a4[2];
  }

  else
  {
    v15 = *v17;
    if ((*v17 & 0x80) != 0)
    {
      if ((v15 & 0xE0) == 0xC0)
      {
        v12 = 31;
        v11 = 2;
        v10 = 128;
      }

      else
      {
        if ((v15 & 0xF0) != 0xE0)
        {
          goto LABEL_35;
        }

        v12 = 15;
        v11 = 3;
        v10 = 2048;
      }
    }

    else
    {
      v12 = 127;
      v11 = 1;
      v10 = 0;
    }
  }

  if (a4[1])
  {
    v9 = *a4;
  }

  else
  {
    v4 = v17++;
    v9 = (*v4 & v12);
  }

  for (i = a4[1] == 0; ; ++i)
  {
    v8 = v11 >= a3 ? a3 : v11;
    if (i >= v8)
    {
      break;
    }

    if ((*v17 & 0xC0) != 0x80)
    {
      goto LABEL_35;
    }

    v5 = v17++;
    v9 = (v9 << 6) | *v5 & 0x3F;
  }

  if (i < v11)
  {
    a4[1] = v11 - i;
    a4[2] = v10;
    *a4 = v9;
    return -2;
  }

  if (v9 < v10)
  {
LABEL_35:
    *__error() = 92;
    return -1;
  }

  if (a1)
  {
    *a1 = v9;
  }

  a4[1] = 0;
  if (v9)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t _UTF2_wcrtomb(_BYTE *a1, int a2, uint64_t a3)
{
  v7 = a2;
  if (*(a3 + 4))
  {
    *__error() = 22;
    return -1;
  }

  else if (a1)
  {
    if ((a2 & 0xFFFFFF80) != 0)
    {
      if ((a2 & 0xFFFFF800) != 0)
      {
        if ((a2 & 0xFFFF0000) != 0)
        {
          *__error() = 92;
          return -1;
        }

        v6 = -32;
        v4 = 3;
      }

      else
      {
        v6 = -64;
        v4 = 2;
      }

      for (i = v4 - 1; i > 0; --i)
      {
        a1[i] = v7 & 0x3F | 0x80;
        v7 >>= 6;
      }

      *a1 = v7 | v6;
      return v4;
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

BOOL _UTF2_mbsinit(uint64_t a1)
{
  v2 = 1;
  if (a1)
  {
    return *(a1 + 4) == 0;
  }

  return v2;
}

uint64_t _UTF2_mbsnrtowcs(int *a1, unsigned __int8 **a2, unint64_t a3, uint64_t a4, int *a5, uint64_t a6)
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
    if (!v17 || !v16 || v13[1] <= 0 || *v12 <= 0)
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
          v9 = _UTF2_mbrtowc(v19, v12, v17, v15);
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

  else if (!v17 || v13[1] <= 0 || *v12 <= 0)
  {
    while (1)
    {
      if (v17 && *v12 > 0)
      {
        v8 = 1;
      }

      else
      {
        v8 = _UTF2_mbrtowc(&v10, v12, v17, v15);
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

uint64_t _UTF2_wcsnrtombs(char *a1, int **a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
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
          if (v19 > 3)
          {
            __na = _UTF2_wcrtomb(v22, *v14, v18);
            if (__na == -1)
            {
              *v21 = v14;
              return -1;
            }
          }

          else
          {
            v8 = _UTF2_wcrtomb(__src, *v14, v18);
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
          __n = _UTF2_wcrtomb(__src, *v14, v18);
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

uint64_t __guard_setup(const char **a1)
{
  while (1)
  {
    v3 = 0;
    if (a1)
    {
      v3 = *a1 != 0;
    }

    if (!v3)
    {
      break;
    }

    if (strstr(*a1, "stack_guard") == *a1)
    {
      __guard_from_kernel(*a1);
      v1 = strlen(*a1);
      bzero(*a1, v1);
    }

    ++a1;
  }

  result = open_NOCANCEL();
  if (result != -1)
  {
    read_NOCANCEL();
    result = close_NOCANCEL();
  }

  LODWORD(__stack_chk_guard[0]) = -16121856;
  return result;
}

char *__guard_from_kernel(const char *a1)
{
  v6 = 0;
  v3 = 0;
  result = strchr(a1, 61);
  v7 = result;
  if (result)
  {
    ++v7;
    while (1)
    {
      v2 = 0;
      if (v7)
      {
        v2 = v3 < 8;
      }

      if (!v2)
      {
        break;
      }

      strlcpy(__dst, v7, 0x14uLL);
      v4 = strchr(__dst, 44);
      if (v4)
      {
        *v4 = 0;
      }

      v6 = strtoull(__dst, 0, 0);
      __stack_chk_guard[v3++] = v6;
      result = strchr(v7, 44);
      v7 = result;
      if (result)
      {
        ++v7;
      }
    }
  }

  return result;
}

uint64_t a64l(const char *a1)
{
  v7 = a1;
  if (a1)
  {
    v6 = 0;
    v4 = 0;
    for (i = 0; ; ++i)
    {
      v2 = 0;
      if (*v7)
      {
        v2 = i < 6;
      }

      if (!v2)
      {
        break;
      }

      if (*v7 < 46 || *v7 > 47)
      {
        if (*v7 < 48 || *v7 > 57)
        {
          if (*v7 < 65 || *v7 > 90)
          {
            if (*v7 < 97 || *v7 > 122)
            {
              goto LABEL_2;
            }

            v5 = *v7 - 59;
          }

          else
          {
            v5 = *v7 - 53;
          }
        }

        else
        {
          v5 = *v7 - 46;
        }
      }

      else
      {
        v5 = *v7 - 46;
      }

      v6 |= v5 << v4;
      v4 += 6;
      ++v7;
    }

    return v6;
  }

  else
  {
LABEL_2:
    *__error() = 22;
    return -1;
  }
}

void __atexit_init()
{
  if (*(&_os_alloc_once_table + 4) == -1)
  {
    v0 = *(&_os_alloc_once_table + 5);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  __atexit = v0;
}

int atexit(void (*a1)(void))
{
  v3 = a1;
  *&v2[0] = 1;
  *(&v2[0] + 1) = a1;
  v2[1] = 0uLL;
  return atexit_register(v2);
}

uint64_t atexit_register(_OWORD *a1)
{
  v5 = __atexit;
  if (!__atexit)
  {
    __assert_rtn("atexit_register", "atexit.c", 115, "p");
  }

  pthread_mutex_lock(&atexit_mutex);
  while (v5[2] >= 32)
  {
    v4 = __atexit;
    pthread_mutex_unlock(&atexit_mutex);
    v5 = malloc_type_malloc();
    if (!v5)
    {
      return -1;
    }

    pthread_mutex_lock(&atexit_mutex);
    if (v4 == __atexit)
    {
      v5[2] = 0;
      *v5 = __atexit;
      __atexit = v5;
    }

    else
    {
      pthread_mutex_unlock(&atexit_mutex);
      free(v5);
      pthread_mutex_lock(&atexit_mutex);
      v5 = __atexit;
    }
  }

  v1 = v5[2]++;
  v2 = &v5[8 * v1 + 4];
  *v2 = *a1;
  *(v2 + 1) = a1[1];
  __atexit_new_registration = 1;
  pthread_mutex_unlock(&atexit_mutex);
  return 0;
}

int atexit_b(void *a1)
{
  v4 = a1;
  v2 = 0u;
  v3 = 0u;
  LODWORD(v2) = 3;
  *(&v2 + 1) = _Block_copy(a1);
  v3 = 0uLL;
  return atexit_register(&v2);
}

int __cxa_atexit(void (*lpfunc)(void *), void *obj, void *lpdso_handle)
{
  v9 = lpfunc;
  v8 = obj;
  v7 = lpdso_handle;
  *&v4 = 2;
  *(&v4 + 1) = lpfunc;
  v5 = obj;
  v6 = lpdso_handle;
  return atexit_register(&v4);
}

uint64_t __cxa_finalize_ranges(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock(&atexit_mutex);
LABEL_2:
  v10 = __atexit;
LABEL_3:
  if (v10)
  {
    v8 = *(v10 + 8);
    while (1)
    {
      do
      {
        if (--v8 < 0)
        {
          v10 = *v10;
          goto LABEL_3;
        }

        v9 = v10 + 16 + 32 * v8;
      }

      while (!*v9);
      if (a2)
      {
        switch(*v9)
        {
          case 2:
            if (__cxa_in_range(a1, a2, *(v9 + 24)))
            {
              goto LABEL_20;
            }

            break;
          case 1:
            v6 = 0;
            if (*(v9 + 8))
            {
              v6 = *(v9 + 8);
            }

            if (__cxa_in_range(a1, a2, v6))
            {
              goto LABEL_20;
            }

            break;
          case 3:
            v4 = _Block_get_invoke_fn(*(v9 + 8));
            v5 = 0;
            if (v4)
            {
              v5 = v4;
            }

            if (__cxa_in_range(a1, a2, v5))
            {
              goto LABEL_20;
            }

            break;
          default:
            goto LABEL_20;
        }
      }

      else
      {
LABEL_20:
        v7 = *v9;
        *v9 = 0;
        __atexit_new_registration = 0;
        v2 = pthread_mutex_unlock(&atexit_mutex);
        switch(v7)
        {
          case 2:
            (*(v9 + 8))(*(v9 + 16));
            break;
          case 1:
            (*(v9 + 8))(v2);
            break;
          case 3:
            (*(*(v9 + 8) + 16))();
            break;
        }

        pthread_mutex_lock(&atexit_mutex);
        if (__atexit_new_registration)
        {
          goto LABEL_2;
        }
      }
    }
  }

  return pthread_mutex_unlock(&atexit_mutex);
}

uint64_t __cxa_in_range(uint64_t a1, unsigned int a2, unint64_t a3)
{
  for (i = 0; i < a2; ++i)
  {
    if (a3 >= *(a1 + 16 * i) && a3 < *(a1 + 16 * i) + *(a1 + 16 * i + 8))
    {
      v5 = 1;
      return v5 & 1;
    }
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t _Block_get_invoke_fn(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  v2 = 0;
  if (v3)
  {
    return v3;
  }

  return v2;
}

int __cxa_finalize(void *a1)
{
  v3 = a1;
  if (!a1)
  {
    return __cxa_finalize_ranges(0, 0);
  }

  v2[0] = v3;
  v2[1] = 1;
  return __cxa_finalize_ranges(v2, 1u);
}

double atof(const char *a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return strtod_l(a1, 0, v2);
  }

  else
  {
    return strtod_l(a1, 0, __global_locale);
  }
}

int atoi(const char *a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return strtol_l(a1, 0, 10, v2);
  }

  else
  {
    return strtol_l(a1, 0, 10, __global_locale);
  }
}

uint64_t atol(const char *a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return strtol_l(a1, 0, 10, v2);
  }

  else
  {
    return strtol_l(a1, 0, 10, __global_locale);
  }
}

uint64_t atoll(const char *a1)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    return strtoll_l(a1, 0, 10, v2);
  }

  else
  {
    return strtoll_l(a1, 0, 10, __global_locale);
  }
}

void *__cdecl bsearch(const void *__key, const void *__base, size_t __nel, size_t __width, int (__cdecl *__compar)(const void *, const void *))
{
  while (__nel)
  {
    v6 = (__compar)(__key, __base + (__nel >> 1) * __width);
    if (!v6)
    {
      return __base + (__nel >> 1) * __width;
    }

    if (v6 > 0)
    {
      __base = __base + (__nel-- >> 1) * __width + __width;
    }

    __nel >>= 1;
  }

  return 0;
}

void *__cdecl bsearch_b(const void *__key, const void *__base, size_t __nel, size_t __width, void *__compar)
{
  while (__nel)
  {
    v6 = (*(__compar + 2))(__compar, __key, __base + (__nel >> 1) * __width);
    if (!v6)
    {
      return __base + (__nel >> 1) * __width;
    }

    if (v6 > 0)
    {
      __base = __base + (__nel-- >> 1) * __width + __width;
    }

    __nel >>= 1;
  }

  return 0;
}

div_t div(int a1, int a2)
{
  v3.quot = a1 / a2;
  v3.rem = a1 % a2;
  if ((a1 & 0x80000000) == 0 && v3.rem < 0)
  {
    ++v3.quot;
    v3.rem -= a2;
  }

  return v3;
}

void exit(int a1)
{
  __cxa_finalize(0);
  if (__cleanup)
  {
    _cleanup();
  }

  __exit(a1);
}

_BYTE *__findenv_locked(_BYTE *a1, _DWORD *a2, char **a3)
{
  if (!a1 || !a3)
  {
    return 0;
  }

  for (i = a1; ; ++i)
  {
    v8 = 0;
    if (*i)
    {
      v8 = *i != 61;
    }

    if (!v8)
    {
      break;
    }
  }

  v15 = i - a1;
  for (j = a3; ; ++j)
  {
    v9 = *j;
    if (!*j)
    {
      break;
    }

    v13 = a1;
    for (k = v15; ; --k)
    {
      v7 = 0;
      if (k)
      {
        v7 = *v9 != 0;
      }

      if (!v7)
      {
        break;
      }

      v3 = v9++;
      v4 = v13++;
      if (*v3 != *v4)
      {
        break;
      }
    }

    if (!k)
    {
      v5 = v9;
      v10 = v9 + 1;
      if (*v5 == 61)
      {
        *a2 = j - a3;
        return v10;
      }
    }
  }

  return 0;
}

_BYTE *_getenvp(_BYTE *a1, char ***a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  environ_lock_np();
  v4 = __findenv_locked(v8, &v5, *v7);
  environ_unlock_np();
  return v4;
}

char *__cdecl getenv(const char *a1)
{
  v6 = a1;
  v5 = 0;
  environ_lock_np();
  v3 = v6;
  v1 = _NSGetEnviron();
  v4 = __findenv_locked(v3, &v5, *v1);
  environ_unlock_np();
  return v4;
}

void *getenv_copy_np(_BYTE *a1)
{
  v16 = a1;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  environ_lock_np();
  v8 = v16;
  v1 = _NSGetEnviron();
  __s = __findenv_locked(v8, &v12, *v1);
  if (__s)
  {
    v7 = strlen(__s);
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;
  environ_unlock_np();
  if (!__s)
  {
    return 0;
  }

  do
  {
    if (++v15 > 5)
    {
      *__error() = 35;
      return 0;
    }

    v13 = v9 + 1 + 16 - (v9 + 1) % 0x10;
    v2 = reallocf(v14, v13);
    v14 = v2;
    if (!v2)
    {
      return 0;
    }

    environ_lock_np();
    v6 = v16;
    v3 = _NSGetEnviron();
    __sa = __findenv_locked(v6, &v12, *v3);
    if (__sa)
    {
      v5 = strlcpy(v14, __sa, v13);
    }

    else
    {
      v5 = 0;
    }

    v9 = v5;
    environ_unlock_np();
    if (!__sa)
    {
      return 0;
    }
  }

  while (v5 >= v13);
  return v14;
}

int getopt(int a1, char *const a2[], const char *a3)
{
  if (!optreset && *getopt_place)
  {
    v5 = getopt_place++;
    optopt = *v5;
  }

  else
  {
    optreset = 0;
    getopt_place = a2[optind];
    if (optind >= a1 || (v3 = getopt_place, ++getopt_place, *v3 != 45))
    {
      getopt_place = &EMSG;
      return -1;
    }

    v4 = getopt_place++;
    optopt = *v4;
    if (optopt == 45 && !*getopt_place)
    {
      ++optind;
      getopt_place = &EMSG;
      return -1;
    }

    if (!optopt)
    {
      getopt_place = &EMSG;
      if (!strchr(a3, 45))
      {
        return -1;
      }

      optopt = 45;
    }
  }

  if (optopt == 58 || (v7 = strchr(a3, optopt)) == 0)
  {
    if (!*getopt_place)
    {
      ++optind;
    }

    if (opterr && *a3 != 58)
    {
      fprintf(__stderrp, "%s: illegal option -- %c\n", *a2, optopt);
    }

    return 63;
  }

  if (v7[1] != 58)
  {
    optarg = 0;
    if (!*getopt_place)
    {
      ++optind;
    }

    return optopt;
  }

  if (*getopt_place)
  {
    optarg = getopt_place;
LABEL_38:
    getopt_place = &EMSG;
    ++optind;
    return optopt;
  }

  if (v7[2] == 58)
  {
    optarg = 0;
    goto LABEL_38;
  }

  if (a1 > ++optind)
  {
    optarg = a2[optind];
    goto LABEL_38;
  }

  ++optind;
  optarg = 0;
  getopt_place = &EMSG;
  if (*a3 == 58)
  {
    return 58;
  }

  if (opterr)
  {
    fprintf(__stderrp, "%s: option requires an argument -- %c\n", *a2, optopt);
  }

  return 63;
}

uint64_t getopt_internal(int a1, uint64_t a2, char *a3, uint64_t a4, int *a5, char a6)
{
  v22 = a3;
  if (!a3)
  {
    return -1;
  }

  if (!optind)
  {
    optreset = 1;
    optind = 1;
  }

  if (getopt_internal_posixly_correct == -1 || optreset)
  {
    getopt_internal_posixly_correct = getenv("POSIXLY_CORRECT") != 0;
  }

  if (*v22 == 45)
  {
    a6 |= 2u;
  }

  else if (getopt_internal_posixly_correct || *v22 == 43)
  {
    a6 &= ~1u;
  }

  if (*v22 == 43 || *v22 == 45)
  {
    ++v22;
  }

  optarg = 0;
  if (optreset)
  {
    nonopt_end = -1;
    nonopt_start = -1;
  }

  while (1)
  {
    if (!optreset && *place)
    {
      goto LABEL_46;
    }

    optreset = 0;
    if (optind >= a1)
    {
      place = &EMSG_0;
      if (nonopt_end == -1)
      {
        if (nonopt_start != -1)
        {
          optind = nonopt_start;
        }
      }

      else
      {
        permute_args(nonopt_start, nonopt_end, optind, a2);
        optind -= nonopt_end - nonopt_start;
      }

      nonopt_end = -1;
      nonopt_start = -1;
      return -1;
    }

    place = *(a2 + 8 * optind);
    if (*place == 45)
    {
      if (*(&dword_0 + place + 1))
      {
        break;
      }
    }

    place = &EMSG_0;
    if ((a6 & 2) != 0)
    {
      v6 = optind++;
      optarg = *(a2 + 8 * v6);
      return 1;
    }

    if ((a6 & 1) == 0)
    {
      return -1;
    }

    if (nonopt_start == -1)
    {
      nonopt_start = optind;
    }

    else if (nonopt_end != -1)
    {
      permute_args(nonopt_start, nonopt_end, optind, a2);
      nonopt_start = optind - (nonopt_end - nonopt_start);
      nonopt_end = -1;
    }

    ++optind;
  }

  if (nonopt_start != -1 && nonopt_end == -1)
  {
    nonopt_end = optind;
  }

  if (*(&dword_0 + place + 1))
  {
    v7 = place++;
    if (*(&dword_0 + v7 + 1) == 45 && !*(&dword_0 + place + 1))
    {
      ++optind;
      place = &EMSG_0;
      if (nonopt_end != -1)
      {
        permute_args(nonopt_start, nonopt_end, optind, a2);
        optind -= nonopt_end - nonopt_start;
      }

      nonopt_end = -1;
      nonopt_start = -1;
      return -1;
    }
  }

LABEL_46:
  if (a4 && place != *(a2 + 8 * optind) && (*place == 45 || (a6 & 4) != 0))
  {
    v14 = 0;
    dash_prefix = 0;
    if (*place == 45)
    {
      if (!*++place)
      {
        if (*v22 == 58)
        {
          return 58;
        }

        else
        {
          return 63;
        }
      }

      dash_prefix = 1;
    }

    else if (*place != 58)
    {
      v14 = strchr(v22, *place) != 0;
    }

    v15 = parse_long_options(a2, v22, a4, a5, v14, a6);
    if (v15 != -1)
    {
      place = &EMSG_0;
      return v15;
    }
  }

  v9 = place++;
  v16 = *v9;
  if (v16 == 58 || v16 == 45 && *place || (v17 = strchr(v22, v16)) == 0)
  {
    if (v16 != 45 || *place)
    {
      if (!*place)
      {
        ++optind;
      }

      if (opterr && *v22 != 58)
      {
        if (getopt_internal_posixly_correct)
        {
          warnx("illegal option -- %c");
        }

        else
        {
          warnx("invalid option -- %c");
        }
      }

      optopt = v16;
      return 63;
    }

    else
    {
      return -1;
    }
  }

  if (a4 && v16 == 87 && v17[1] == 59)
  {
    if (!*place)
    {
      if (++optind >= a1)
      {
        place = &EMSG_0;
        if (opterr && *v22 != 58)
        {
          warnx("option requires an argument -- %c", 87);
        }

        optopt = 87;
        if (*v22 == 58)
        {
          return 58;
        }

        else
        {
          return 63;
        }
      }

      place = *(a2 + 8 * optind);
    }

    dash_prefix = 2;
    v11 = parse_long_options(a2, v22, a4, a5, 0, a6);
    place = &EMSG_0;
    return v11;
  }

  v18 = v17 + 1;
  if (*v18 != 58)
  {
    if (!*place)
    {
      ++optind;
    }

    return v16;
  }

  optarg = 0;
  if (*place)
  {
    optarg = place;
LABEL_106:
    place = &EMSG_0;
    ++optind;
    return v16;
  }

  if (v18[1] == 58)
  {
    goto LABEL_106;
  }

  if (++optind < a1)
  {
    optarg = *(a2 + 8 * optind);
    goto LABEL_106;
  }

  place = &EMSG_0;
  if (opterr && *v22 != 58)
  {
    warnx("option requires an argument -- %c", v16);
  }

  optopt = v16;
  if (*v22 == 58)
  {
    return 58;
  }

  else
  {
    return 63;
  }
}

uint64_t permute_args(int a1, int a2, int a3, uint64_t a4)
{
  v8 = a2 - a1;
  v7 = a3 - a2;
  result = gcd(a2 - a1, a3 - a2);
  for (i = 0; i < result; ++i)
  {
    v11 = a2 + i;
    v6 = a2 + i;
    for (j = 0; j < (a3 - a1) / result; ++j)
    {
      if (v6 < a2)
      {
        v6 += v7;
      }

      else
      {
        v6 -= v8;
      }

      v5 = *(a4 + 8 * v6);
      *(a4 + 8 * v6) = *(a4 + 8 * v11);
      *(a4 + 8 * v11) = v5;
    }
  }

  return result;
}

uint64_t parse_long_options(uint64_t a1, _BYTE *a2, uint64_t a3, int *a4, int a5, char a6)
{
  v16 = place;
  if (dash_prefix)
  {
    if (dash_prefix == 1)
    {
      v14 = "--";
    }

    else if (dash_prefix == 2)
    {
      v14 = "-W ";
    }

    else
    {
      v14 = &unk_C42B5;
    }
  }

  else
  {
    v14 = "-";
  }

  v11 = -1;
  v10 = 0;
  v9 = 0;
  ++optind;
  v15 = strchr(place, 61);
  if (v15)
  {
    __n = v15 - v16;
    ++v15;
  }

  else
  {
    __n = strlen(v16);
  }

  for (i = 0; *(a3 + 32 * i); ++i)
  {
    if (!strncmp(v16, *(a3 + 32 * i), __n))
    {
      if (strlen(*(a3 + 32 * i)) == __n)
      {
        v11 = i;
        v10 = 1;
        break;
      }

      if (!a5 || __n != 1)
      {
        if (v11 == -1)
        {
          v11 = i;
        }

        else if ((a6 & 4) != 0 || *(a3 + 32 * i + 8) != *(a3 + 32 * v11 + 8) || *(a3 + 32 * i + 16) != *(a3 + 32 * v11 + 16) || *(a3 + 32 * i + 24) != *(a3 + 32 * v11 + 24))
        {
          v9 = 1;
        }
      }
    }
  }

  if (v10 || !v9)
  {
    if (v11 == -1)
    {
      if (a5)
      {
        --optind;
        return -1;
      }

      else
      {
        if (opterr && *a2 != 58)
        {
        }

        optopt = 0;
        return 63;
      }
    }

    else if (*(a3 + 32 * v11 + 8) || !v15)
    {
      if (*(a3 + 32 * v11 + 8) == 1 || *(a3 + 32 * v11 + 8) == 2)
      {
        if (v15)
        {
          optarg = v15;
        }

        else if (*(a3 + 32 * v11 + 8) == 1)
        {
          v6 = optind++;
          optarg = *(a1 + 8 * v6);
        }
      }

      if (*(a3 + 32 * v11 + 8) != 1 || optarg)
      {
        if (a4)
        {
          *a4 = v11;
        }

        if (*(a3 + 32 * v11 + 16))
        {
          **(a3 + 32 * v11 + 16) = *(a3 + 32 * v11 + 24);
          return 0;
        }

        else
        {
          return *(a3 + 32 * v11 + 24);
        }
      }

      else
      {
        if (opterr && *a2 != 58)
        {
        }

        if (*(a3 + 32 * v11 + 16))
        {
          optopt = 0;
        }

        else
        {
          optopt = *(a3 + 32 * v11 + 24);
        }

        --optind;
        if (*a2 == 58)
        {
          return 58;
        }

        else
        {
          return 63;
        }
      }
    }

    else
    {
      if (opterr && *a2 != 58)
      {
      }

      if (*(a3 + 32 * v11 + 16))
      {
        optopt = 0;
      }

      else
      {
        optopt = *(a3 + 32 * v11 + 24);
      }

      return 63;
    }
  }

  else
  {
    if (opterr && *a2 != 58)
    {
    }

    optopt = 0;
    return 63;
  }
}

uint64_t gcd(int a1, signed int a2)
{
  v4 = a2;
  for (i = a1 % a2; i; i = v5 % i)
  {
    v5 = v4;
    v4 = i;
  }

  return v4;
}

int getsubopt(char **a1, char *const *a2, char **a3)
{
  *a3 = 0;
  suboptarg = 0;
  if (!a1 || !*a1)
  {
    return -1;
  }

  for (i = *a1; ; ++i)
  {
    v11 = 0;
    if (*i)
    {
      v10 = 1;
      if (*i != 44)
      {
        v10 = 1;
        if (*i != 32)
        {
          v10 = *i == 9;
        }
      }

      v11 = v10;
    }

    if (!v11)
    {
      break;
    }
  }

  if (*i)
  {
    suboptarg = i;
    do
    {
      ++i;
      v9 = 0;
      if (*i)
      {
        v9 = 0;
        if (*i != 44)
        {
          v9 = 0;
          if (*i != 61)
          {
            v9 = 0;
            if (*i != 32)
            {
              v9 = *i != 9;
            }
          }
        }
      }
    }

    while (v9);
    if (*i)
    {
      if (*i == 61)
      {
        *i++ = 0;
        *a3 = i;
        while (1)
        {
          v8 = 0;
          if (*i)
          {
            v8 = 0;
            if (*i != 44)
            {
              v8 = 0;
              if (*i != 32)
              {
                v8 = *i != 9;
              }
            }
          }

          if (!v8)
          {
            break;
          }

          ++i;
        }

        if (*i)
        {
          v3 = i++;
          *v3 = 0;
        }
      }

      else
      {
        v4 = i++;
        *v4 = 0;
      }

      while (1)
      {
        v7 = 0;
        if (*i)
        {
          v6 = 1;
          if (*i != 44)
          {
            v6 = 1;
            if (*i != 32)
            {
              v6 = *i == 9;
            }
          }

          v7 = v6;
        }

        if (!v7)
        {
          break;
        }

        ++i;
      }
    }

    *a1 = i;
    v13 = 0;
    while (*a2)
    {
      if (!strcmp(suboptarg, *a2))
      {
        return v13;
      }

      ++a2;
      ++v13;
    }

    return -1;
  }

  else
  {
    *a1 = i;
    return -1;
  }
}

int hcreate(size_t a1)
{
  v4 = a1;
  if (htable)
  {
    *__error() = 22;
    return 0;
  }

  else
  {
    if (a1 < 0x10)
    {
      v4 = 16;
    }

    if (v4 > 0x400000000000000)
    {
      v4 = 0x400000000000000;
    }

    if ((v4 & (v4 - 1)) != 0)
    {
      v2 = 0;
      while (v4)
      {
        v4 >>= 1;
        ++v2;
      }

      v4 = 1 << v2;
    }

    htablesize = v4;
    htable = malloc_type_malloc();
    if (htable)
    {
      for (i = 0; i < htablesize; ++i)
      {
        *(htable + 8 * i) = 0;
      }

      return 1;
    }

    else
    {
      *__error() = 12;
      return 0;
    }
  }
}

void hdestroy_0(void)
{
  if (htable)
  {
    for (i = 0; i < htablesize; ++i)
    {
      while (*(htable + 8 * i))
      {
        v1 = *(htable + 8 * i);
        *(htable + 8 * i) = *v1;
        free(v1[1]);
        free(v1);
      }
    }

    free(htable);
    htable = 0;
  }
}

ENTRY *__cdecl hsearch(ENTRY a1, ACTION a2)
{
  v2 = strlen(a1.key);
  v6 = (htable + 8 * (__default_hash(a1.key, v2) & (htablesize - 1)));
    ;
  }

  if (i)
  {
    return (i + 8);
  }

  if (a2 == FIND)
  {
    return 0;
  }

  v5 = malloc_type_malloc();
  if (!v5)
  {
    return 0;
  }

  *(v5 + 8) = a1;
  *v5 = *v6;
  *v6 = v5;
  return (v5 + 8);
}

int heapsort(void *__base, size_t __nel, size_t __width, int (__cdecl *__compar)(const void *, const void *))
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
          if (v34 < v47 && ((__compar)(v18, &v18[__width]) & 0x80000000) != 0)
          {
            v18 += __width;
            ++v34;
          }

          v17 = &v21[i * __width];
          if ((__compar)(v18, v17) <= 0)
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
          if (v35 < v47 && ((__compar)(v19, &v19[__width]) & 0x80000000) != 0)
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
          if (v36 == 1 || ((__compar)(v20, &v21[j * __width]) & 0x80000000) != 0)
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

intmax_t imaxabs(intmax_t j)
{
  if (j < 0)
  {
    return -j;
  }

  else
  {
    return j;
  }
}

imaxdiv_t imaxdiv(intmax_t __numer, intmax_t __denom)
{
  v4 = __numer / __denom;
  v5 = __numer % __denom;
  if ((__numer & 0x8000000000000000) == 0 && v5 < 0)
  {
    ++v4;
    v5 -= __denom;
  }

  v2 = v4;
  v3 = v5;
  result.rem = v3;
  result.quot = v2;
  return result;
}

void insque(void *a1, void *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      if (v3[1] != a2)
      {
        fprintf(__stderrp, "insque: Inconsistency detected: next(%p)->prev(%p) != prev(%p)\n", v3, v3[1], a2);
      }

      v3[1] = a1;
    }

    *a2 = a1;
    *(a1 + 1) = a2;
    *a1 = v3;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }
}

uint64_t labs(uint64_t a1)
{
  if (a1 < 0)
  {
    return -a1;
  }

  else
  {
    return a1;
  }
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v4 = a1 / a2;
  v5 = a1 % a2;
  if ((a1 & 0x8000000000000000) == 0 && v5 < 0)
  {
    ++v4;
    v5 -= a2;
  }

  v2 = v4;
  v3 = v5;
  result.rem = v3;
  result.quot = v2;
  return result;
}

uint64_t llabs(uint64_t a1)
{
  if (a1 < 0)
  {
    return -a1;
  }

  else
  {
    return a1;
  }
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v4 = a1 / a2;
  v5 = a1 % a2;
  if ((a1 & 0x8000000000000000) == 0 && v5 < 0)
  {
    ++v4;
    v5 -= a2;
  }

  v2 = v4;
  v3 = v5;
  result.rem = v3;
  result.quot = v2;
  return result;
}

void *lwork(const void *a1, unint64_t a2, void *a3, size_t a4, unsigned int (*a5)(const void *, unint64_t), int a6)
{
  v8 = a2;
  __dst = (a2 + a4 * *a3);
  while (v8 < __dst)
  {
    if (!a5(a1, v8))
    {
      return v8;
    }

    v8 += a4;
  }

  if (!a6)
  {
    return 0;
  }

  memcpy(__dst, a1, a4);
  ++*a3;
  return __dst;
}

int mergesort(void *__base, size_t __nel, size_t __width, int (__cdecl *__compar)(const void *, const void *))
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
        setup(__base, __dst, __nel, __width, __compar);
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

              if ((__compar)(v32, v31) > 0)
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
                    if (&v30[-__width] <= v29 || (__compar)(v26, &v30[-__width]) > v35)
                    {
                      v29 = &v30[-__width];
                    }

                    else
                    {
                      v30 -= __width;
                    }

                    while (v30 > &v29[__width])
                    {
                      if ((__compar)(v26) <= v35)
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

                  if ((__compar)(v26, &v29[i]) <= v35)
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
                  if ((__compar)(v26) <= v35)
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
                    v17 = (__compar)(v26, v29) > v35;
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

uint64_t setup(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *))
{
  v26 = 2 * a4;
  if (a3 > 5)
  {
    v27 = (a3 & 1) + 4;
    insertionsort(a1 + (a3 - v27) * a4, v27, a4, a5);
    v13 = a1 + a4 * (a3 - v27);
    *(&a2[a4 * (a3 - v27) + 7] & 0xFFFFFFFFFFFFFFF8) = &a2[a3 * a4];
    v12 = a2;
    v20 = a1;
    result = a5(a1, (a1 + a4));
    v21 = result > 0;
    while (v20 < v13)
    {
      v25 = 2;
      for (i = &v20[v26]; i < v13; i += v26)
      {
        result = a5(i, &i[a4]);
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
          result = a5(&j[-a4], j);
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
        if (j >= v13 && (result = a5(&j[-a4], j), result <= 0))
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
    result = insertionsort(a1, a3, a4, a5);
    *((a2 + 7) & 0xFFFFFFFFFFFFFFF8) = &a2[a3 * a4];
  }

  return result;
}

uint64_t insertionsort(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v15 = result;
  for (i = (result + a3); --a2; i += a3)
  {
    for (j = i; j > v15; j -= a3)
    {
      v8 = &j[-a3];
      result = a4(&j[-a3], j);
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

uint64_t _putenvp(char *a1, char ***a2, _DWORD *a3)
{
  environ_lock_np();
  if (__init__env_owned_locked(1))
  {
    environ_unlock_np();
    return -1;
  }

  else
  {
    if (a3)
    {
      v3 = __setenv_locked(a1, 0, 1, 0, a2, a3);
    }

    else
    {
      v3 = __setenv_locked(a1, 0, 1, 0, a2, __env_owned);
    }

    v5 = v3;
    environ_unlock_np();
    return v5;
  }
}

int putenv(char *a1)
{
  if (a1 && *a1 && index(a1, 61))
  {
    environ_lock_np();
    if (__init__env_owned_locked(1))
    {
      environ_unlock_np();
      return -1;
    }

    else
    {
      v1 = _NSGetEnviron();
      v3 = __setenv_locked(a1, 0, 1, 0, v1, __env_owned);
      environ_unlock_np();
      return v3;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t _qsort(unint64_t a1, size_t a2, size_t a3, int (__cdecl *a4)(const void *, const void *), unsigned int a5)
{
  v23 = 0;
  while (1)
  {
    if (a1 % 8 || a3 % 8)
    {
      v12 = 2;
    }

    else
    {
      v12 = a3 != 8;
    }

    if (a1 % 4 || a3 % 4)
    {
      v11 = 2;
    }

    else
    {
      v11 = a3 != 4;
    }

    v22 = 0;
    v5 = a5--;
    if (v5 <= 0)
    {
      return heapsort(a1, a2, a3, a4);
    }

    if (a2 <= 7)
    {
      break;
    }

    v29 = a1;
    v28 = a1 + a2 / 2 * a3;
    v26 = a1 + (a2 - 1) * a3;
    if (a2 > 0x28)
    {
      v21 = a2 / 8 * a3;
      v29 = med3(a1, a1 + v21, a1 + 2 * v21, a4);
      v28 = med3(v28 - v21, v28, v28 + v21, a4);
      v26 = med3(v26 - 2 * v21, v26 - v21, v26, a4);
    }

    result = med3(v29, v28, v26, a4);
    if (v12)
    {
      if (v11)
      {
        result = swapfunc(a1, result, a3, v12, v11);
      }

      else
      {
        v19 = *a1;
        *a1 = *result;
        *result = v19;
      }
    }

    else
    {
      v20 = *a1;
      *a1 = *result;
      *result = v20;
    }

    v32 = (a1 + a3);
    v33 = (a1 + a3);
    v30 = (a1 + (a2 - 1) * a3);
    for (i = v30; ; i -= a3)
    {
      while (1)
      {
        v10 = 0;
        if (v32 <= i)
        {
          result = (a4)(v32, a1);
          v23 = result;
          v10 = result <= 0;
        }

        if (!v10)
        {
          break;
        }

        if (!v23)
        {
          v22 = 1;
          if (v12)
          {
            if (v11)
            {
              result = swapfunc(v33, v32, a3, v12, v11);
            }

            else
            {
              v17 = *v33;
              *v33 = *v32;
              *v32 = v17;
            }
          }

          else
          {
            v18 = *v33;
            *v33 = *v32;
            *v32 = v18;
          }

          v33 += a3;
        }

        v32 += a3;
      }

      while (1)
      {
        v9 = 0;
        if (v32 <= i)
        {
          result = (a4)(i, a1);
          v23 = result;
          v9 = result >= 0;
        }

        if (!v9)
        {
          break;
        }

        if (!v23)
        {
          v22 = 1;
          if (v12)
          {
            if (v11)
            {
              result = swapfunc(i, v30, a3, v12, v11);
            }

            else
            {
              v15 = *i;
              *i = *v30;
              *v30 = v15;
            }
          }

          else
          {
            v16 = *i;
            *i = *v30;
            *v30 = v16;
          }

          v30 -= a3;
        }

        i -= a3;
      }

      if (v32 > i)
      {
        break;
      }

      if (v12)
      {
        if (v11)
        {
          result = swapfunc(v32, i, a3, v12, v11);
        }

        else
        {
          v13 = *v32;
          *v32 = *i;
          *i = v13;
        }
      }

      else
      {
        v14 = *v32;
        *v32 = *i;
        *i = v14;
      }

      v22 = 1;
      v32 += a3;
    }

    v27 = a1 + a2 * a3;
    if (&v33[-a1] < v32 - v33)
    {
      v8 = &v33[-a1];
    }

    else
    {
      v8 = v32 - v33;
    }

    if (v8)
    {
      result = swapfunc(a1, &v32[-v8], v8, v12, v11);
    }

    if (v30 - i >= v27 - v30 - a3)
    {
      v7 = v27 - v30 - a3;
    }

    else
    {
      v7 = v30 - i;
    }

    if (v7)
    {
      result = swapfunc(v32, (v27 - v7), v7, v12, v11);
    }

    if (!v22)
    {
      result = _isort(a1, a2, a3, 0, a4, (a2 / 4) + 1, v12, v11);
      if (result)
      {
        return result;
      }
    }

    v25 = v32 - v33;
    v24 = v30 - i;
    if (v32 - v33 > (v30 - i))
    {
      if (v24 > a3)
      {
        result = _qsort(v27 - v24, v24 / a3, a3, a4, a5);
      }

      if (v25 <= a3)
      {
        return result;
      }

      a2 = v25 / a3;
    }

    else
    {
      if (v25 > a3)
      {
        result = _qsort(a1, v25 / a3, a3, a4, a5);
      }

      if (v24 <= a3)
      {
        return result;
      }

      a1 = v27 - v24;
      a2 = v24 / a3;
    }
  }

  return _isort(a1, a2, a3, 0, a4, 0, v12, v11);
}

uint64_t _isort(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int (*a5)(char *, char *), int a6, int a7, int a8)
{
  v14 = 0;
  for (i = (a1 + a3); i < a1 + a2 * a3; i += a3)
  {
    for (j = i; ; j -= a3)
    {
      v9 = 0;
      if (j > a1)
      {
        v9 = a5(&j[-a3], j) > 0;
      }

      if (!v9)
      {
        break;
      }

      if (a7)
      {
        if (a8)
        {
          swapfunc(j, &j[-a3], a3, a7, a8);
        }

        else
        {
          v10 = *j;
          *j = *&j[-a3];
          *&j[-a3] = v10;
        }
      }

      else
      {
        v11 = *j;
        *j = *&j[-a3];
        *&j[-a3] = v11;
      }

      if (a6)
      {
        if (++v14 > a6)
        {
          v22 = 0;
          return v22 & 1;
        }
      }
    }
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t med3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if ((a4(a1, a2) & 0x80000000) != 0)
  {
    if ((a4(a2, a3) & 0x80000000) != 0)
    {
      return a2;
    }

    if ((a4(a1, a3) & 0x80000000) != 0)
    {
      return a3;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    if (a4(a2, a3) > 0)
    {
      return a2;
    }

    if ((a4(a1, a3) & 0x80000000) != 0)
    {
      return a1;
    }

    else
    {
      return a3;
    }
  }
}

char *swapfunc(char *result, char *a2, unint64_t a3, int a4, int a5)
{
  if (a4 > 1)
  {
    if (a5 > 1)
    {
      v14 = a3;
      v13 = result;
      v12 = a2;
      do
      {
        v11 = *v13;
        v9 = v13++;
        *v9 = *v12;
        v10 = v12++;
        *v10 = v11;
        --v14;
      }

      while (v14);
    }

    else
    {
      v18 = a3 / 4;
      v17 = result;
      v16 = a2;
      do
      {
        v15 = *v17;
        v7 = v17++;
        *v7 = *v16;
        v8 = v16++;
        *v8 = v15;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v22 = a3 / 8;
    v21 = result;
    v20 = a2;
    do
    {
      v19 = *v21;
      v5 = v21++;
      *v5 = *v20;
      v6 = v20++;
      *v6 = v19;
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t _qsort_0(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, char *), unsigned int a6)
{
  v24 = 0;
  while (1)
  {
    if (a1 % 8 || a3 % 8)
    {
      v13 = 2;
    }

    else
    {
      v13 = a3 != 8;
    }

    if (a1 % 4 || a3 % 4)
    {
      v12 = 2;
    }

    else
    {
      v12 = a3 != 4;
    }

    v23 = 0;
    v6 = a6--;
    if (v6 <= 0)
    {
      return __heapsort_r(a1, a2, a3, a4, a5);
    }

    if (a2 <= 7)
    {
      break;
    }

    v30 = a1;
    v29 = a1 + a2 / 2 * a3;
    v27 = a1 + (a2 - 1) * a3;
    if (a2 > 0x28)
    {
      v22 = a2 / 8 * a3;
      v30 = med3_0(a1, a1 + v22, a1 + 2 * v22, a5, a4);
      v29 = med3_0(v29 - v22, v29, v29 + v22, a5, a4);
      v27 = med3_0(v27 - 2 * v22, v27 - v22, v27, a5, a4);
    }

    result = med3_0(v30, v29, v27, a5, a4);
    if (v13)
    {
      if (v12)
      {
        result = swapfunc(a1, result, a3, v13, v12);
      }

      else
      {
        v20 = *a1;
        *a1 = *result;
        *result = v20;
      }
    }

    else
    {
      v21 = *a1;
      *a1 = *result;
      *result = v21;
    }

    v33 = (a1 + a3);
    v34 = (a1 + a3);
    v31 = (a1 + (a2 - 1) * a3);
    for (i = v31; ; i -= a3)
    {
      while (1)
      {
        v11 = 0;
        if (v33 <= i)
        {
          result = a5(a4, v33, a1);
          v24 = result;
          v11 = result <= 0;
        }

        if (!v11)
        {
          break;
        }

        if (!v24)
        {
          v23 = 1;
          if (v13)
          {
            if (v12)
            {
              result = swapfunc(v34, v33, a3, v13, v12);
            }

            else
            {
              v18 = *v34;
              *v34 = *v33;
              *v33 = v18;
            }
          }

          else
          {
            v19 = *v34;
            *v34 = *v33;
            *v33 = v19;
          }

          v34 += a3;
        }

        v33 += a3;
      }

      while (1)
      {
        v10 = 0;
        if (v33 <= i)
        {
          result = a5(a4, i, a1);
          v24 = result;
          v10 = result >= 0;
        }

        if (!v10)
        {
          break;
        }

        if (!v24)
        {
          v23 = 1;
          if (v13)
          {
            if (v12)
            {
              result = swapfunc(i, v31, a3, v13, v12);
            }

            else
            {
              v16 = *i;
              *i = *v31;
              *v31 = v16;
            }
          }

          else
          {
            v17 = *i;
            *i = *v31;
            *v31 = v17;
          }

          v31 -= a3;
        }

        i -= a3;
      }

      if (v33 > i)
      {
        break;
      }

      if (v13)
      {
        if (v12)
        {
          result = swapfunc(v33, i, a3, v13, v12);
        }

        else
        {
          v14 = *v33;
          *v33 = *i;
          *i = v14;
        }
      }

      else
      {
        v15 = *v33;
        *v33 = *i;
        *i = v15;
      }

      v23 = 1;
      v33 += a3;
    }

    v28 = a1 + a2 * a3;
    if (&v34[-a1] < v33 - v34)
    {
      v9 = &v34[-a1];
    }

    else
    {
      v9 = v33 - v34;
    }

    if (v9)
    {
      result = swapfunc(a1, &v33[-v9], v9, v13, v12);
    }

    if (v31 - i >= v28 - v31 - a3)
    {
      v8 = v28 - v31 - a3;
    }

    else
    {
      v8 = v31 - i;
    }

    if (v8)
    {
      result = swapfunc(v33, (v28 - v8), v8, v13, v12);
    }

    if (!v23)
    {
      result = _isort_0(a1, a2, a3, a4, a5, (a2 / 4) + 1, v13, v12);
      if (result)
      {
        return result;
      }
    }

    v26 = v33 - v34;
    v25 = v31 - i;
    if (v33 - v34 > (v31 - i))
    {
      if (v25 > a3)
      {
        result = _qsort_0(v28 - v25, v25 / a3, a3, a4, a5, a6);
      }

      if (v26 <= a3)
      {
        return result;
      }

      a2 = v26 / a3;
    }

    else
    {
      if (v26 > a3)
      {
        result = _qsort_0(a1, v26 / a3, a3, a4, a5, a6);
      }

      if (v25 <= a3)
      {
        return result;
      }

      a1 = v28 - v25;
      a2 = v25 / a3;
    }
  }

  return _isort_0(a1, a2, a3, a4, a5, 0, v13, v12);
}

uint64_t _isort_0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int (*a5)(uint64_t, char *, char *), int a6, int a7, int a8)
{
  v14 = 0;
  for (i = (a1 + a3); i < a1 + a2 * a3; i += a3)
  {
    for (j = i; ; j -= a3)
    {
      v9 = 0;
      if (j > a1)
      {
        v9 = a5(a4, &j[-a3], j) > 0;
      }

      if (!v9)
      {
        break;
      }

      if (a7)
      {
        if (a8)
        {
          swapfunc(j, &j[-a3], a3, a7, a8);
        }

        else
        {
          v10 = *j;
          *j = *&j[-a3];
          *&j[-a3] = v10;
        }
      }

      else
      {
        v11 = *j;
        *j = *&j[-a3];
        *&j[-a3] = v11;
      }

      if (a6)
      {
        if (++v14 > a6)
        {
          v23 = 0;
          return v23 & 1;
        }
      }
    }
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t med3_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if ((a4(a5, a1, a2) & 0x80000000) != 0)
  {
    if ((a4(a5, a2, a3) & 0x80000000) != 0)
    {
      return a2;
    }

    if ((a4(a5, a1, a3) & 0x80000000) != 0)
    {
      return a3;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    if (a4(a5, a2, a3) > 0)
    {
      return a2;
    }

    if ((a4(a5, a1, a3) & 0x80000000) != 0)
    {
      return a1;
    }

    else
    {
      return a3;
    }
  }
}

int radixsort(const unsigned __int8 **__base, int __nel, const unsigned __int8 *__table, unsigned int __endbyte)
{
  if (!__table)
  {
    for (i = 0; i < __endbyte; ++i)
    {
      v9[i] = i + 1;
    }

    v9[i] = 0;
    for (j = i + 1; j < 256; ++j)
    {
      v9[j] = j;
    }

    r_sort_a(__base, __nel, 0, v9, 0);
    return 0;
  }

  v7 = __table[__endbyte];
  if (!__table[__endbyte] || v7 == 255)
  {
    r_sort_a(__base, __nel, 0, __table, v7);
    return 0;
  }

  *__error() = 22;
  return -1;
}

uint64_t r_sort_a(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  bzero(v40, 0x200uLL);
  result = pthread_once(&r_sort_count_control, r_sort_count_allocate);
  if (!result)
  {
    r_sort_a_count = r_sort_a_count;
    v41 = a1;
    v42 = a2;
    v19 = &v44;
    v43 = a3;
    while (&v41 < v19)
    {
      v19 -= 2;
      v32 = *v19;
      v30 = *(v19 + 2);
      v28 = *(v19 + 3);
      if (v30 >= 20)
      {
        v13 = &v32[v30];
        if (r_sort_a_nc)
        {
          goto LABEL_52;
        }

        r_sort_a_bmin = 255;
        v21 = v32;
        while (v21 < v13)
        {
          v6 = v21++;
          v23 = *(a4 + *(*v6 + v28));
          v7 = *(r_sort_a_count + 4 * *(a4 + *(*v6 + v28))) + 1;
          *(r_sort_a_count + 4 * *(a4 + *(*v6 + v28))) = v7;
          if (v7 == 1 && v23 != a5)
          {
            if (v23 < r_sort_a_bmin)
            {
              r_sort_a_bmin = v23;
            }

            ++r_sort_a_nc;
          }
        }

        if (&v19[2 * r_sort_a_nc] <= &v45)
        {
LABEL_52:
          if (r_sort_a_nc == 1 && *(r_sort_a_count + 4 * r_sort_a_bmin) == v30)
          {
            *v19 = v32;
            *(v19 + 2) = v30;
            v8 = v19;
            v19 += 2;
            *(v8 + 3) = v28 + 1;
            *(r_sort_a_count + 4 * r_sort_a_bmin) = 0;
            r_sort_a_nc = 0;
          }

          else
          {
            v17 = v19;
            v18 = v19;
            v14 = 2;
            if (a5)
            {
              v22 = v32;
              v40[255] = &v32[v30];
            }

            else
            {
              v22 = &v32[*r_sort_a_count];
              v40[0] = v22;
            }

            v15 = (r_sort_a_count + 4 * r_sort_a_bmin);
            while (r_sort_a_nc > 0)
            {
              while (!*v15)
              {
                ++v15;
              }

              if (*v15 > 1)
              {
                if (*v15 > v14)
                {
                  v14 = *v15;
                  v17 = v19;
                }

                *v19 = v22;
                *(v19 + 2) = *v15;
                v9 = v19;
                v19 += 2;
                *(v9 + 3) = v28 + 1;
              }

              v22 += *v15;
              v40[(v15 - r_sort_a_count) / 4] = v22;
              --r_sort_a_nc;
              ++v15;
            }

            v16 = *v18;
            *v18 = *v17;
            *v17 = v16;
            v11 = v32;
            while (v11 < v13)
            {
              for (i = *v11; ; i = v12)
              {
                v24 = *(a4 + *(i + v28));
                v10 = (v40[*(a4 + *(i + v28))] - 8);
                v40[*(a4 + *(i + v28))] = v10;
                if (v11 >= v10)
                {
                  break;
                }

                v12 = *v10;
                *v10 = i;
              }

              *v11 = i;
              v11 += *(r_sort_a_count + 4 * v24);
              *(r_sort_a_count + 4 * v24) = 0;
            }
          }
        }

        else
        {
          result = r_sort_a(v32, v30, v28, a4, a5);
        }
      }

      else
      {
        v39 = *(v19 + 2);
        for (j = v32 + 1; --v39 >= 1; ++j)
        {
          for (k = j; k > v32; --k)
          {
            v34 = (*k + v28);
            for (m = (*(k - 1) + v28); ; ++m)
            {
              v38 = *(a4 + *v34);
              if (v38 == a5 || v38 != *(a4 + *m))
              {
                break;
              }

              ++v34;
            }

            if (v38 >= *(a4 + *m))
            {
              break;
            }

            v35 = *k;
            *k = *(k - 1);
            *(k - 1) = v35;
          }
        }
      }
    }
  }

  return result;
}

int sradixsort(const unsigned __int8 **__base, int __nel, const unsigned __int8 *__table, unsigned int __endbyte)
{
  if (__table)
  {
    v9 = __table[__endbyte];
    v8 = __table;
    if (__table[__endbyte] && v9 != 255)
    {
      *__error() = 22;
      return -1;
    }
  }

  else
  {
    v8 = v20;
    for (i = 0; i < __endbyte; ++i)
    {
      v20[i] = i + 1;
    }

    v20[i] = 0;
    for (j = i + 1; j < 256; ++j)
    {
      v20[j] = j;
    }

    v9 = 0;
  }

  if (__nel < 20)
  {
    v19 = __nel;
    for (k = __base + 1; --v19 >= 1; ++k)
    {
      for (m = k; m > __base; --m)
      {
        v14 = *m;
        for (n = *(m - 1); ; ++n)
        {
          v18 = v8[*v14];
          if (v18 == v9 || v18 != v8[*n])
          {
            break;
          }

          ++v14;
        }

        if (v18 >= v8[*n])
        {
          break;
        }

        v15 = *m;
        *m = *(m - 1);
        *(m - 1) = v15;
      }
    }

    return 0;
  }

  v7 = malloc_type_malloc();
  if (v7)
  {
    r_sort_b(__base, v7, __nel, 0, v8, v9);
    free(v7);
    return 0;
  }

  return -1;
}

uint64_t r_sort_b(uint64_t a1, unint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  bzero(v42, 0x200uLL);
  result = pthread_once(&r_sort_count_control, r_sort_count_allocate);
  if (!result)
  {
    r_sort_b_count = r_sort_b_count;
    v43 = a1;
    v44 = a3;
    v17 = &v46;
    v45 = a4;
    while (&v43 < v17)
    {
      v17 -= 2;
      v33 = *v17;
      v30 = *(v17 + 2);
      v28 = *(v17 + 3);
      if (v30 >= 20)
      {
        if (r_sort_b_nc)
        {
          goto LABEL_28;
        }

        r_sort_b_bmin = 255;
        v19 = (v33 + 8 * v30);
        while (--v19 >= v33)
        {
          v23 = *(a5 + *(*v19 + v28));
          v7 = *(r_sort_b_count + 4 * *(a5 + *(*v19 + v28))) + 1;
          *(r_sort_b_count + 4 * *(a5 + *(*v19 + v28))) = v7;
          if (v7 == 1 && v23 != a6)
          {
            if (v23 < r_sort_b_bmin)
            {
              r_sort_b_bmin = v23;
            }

            ++r_sort_b_nc;
          }
        }

        if (&v17[2 * r_sort_b_nc] <= &v47)
        {
LABEL_28:
          v15 = v17;
          v16 = v17;
          v12 = 2;
          if (a6)
          {
            v20 = v33;
            v42[255] = v33 + 8 * v30;
            *(r_sort_b_count + 1020) = 0;
          }

          else
          {
            v20 = v33 + 8 * *r_sort_b_count;
            v42[0] = v20;
            *r_sort_b_count = 0;
          }

          v13 = (r_sort_b_count + 4 * r_sort_b_bmin);
          while (r_sort_b_nc > 0)
          {
            while (!*v13)
            {
              ++v13;
            }

            v24 = *v13;
            if (*v13 > 1)
            {
              if (v24 > v12)
              {
                v12 = *v13;
                v15 = v17;
              }

              *v17 = v20;
              *(v17 + 2) = v24;
              v8 = v17;
              v17 += 2;
              *(v8 + 3) = v28 + 1;
            }

            v20 += 8 * v24;
            v42[(v13 - r_sort_b_count) / 4] = v20;
            *v13 = 0;
            --r_sort_b_nc;
            ++v13;
          }

          v14 = *v16;
          *v16 = *v15;
          *v15 = v14;
          v21 = (a2 + 8 * v30);
          v18 = (v33 + 8 * v30);
          while (v21 > a2)
          {
            *--v21 = *--v18;
          }

          v22 = (a2 + 8 * v30);
          while (--v22 >= a2)
          {
            v9 = *v22;
            v10 = *(a5 + *(*v22 + v28));
            v11 = v42[v10];
            v42[v10] = v11 - 8;
            *(v11 - 8) = v9;
          }
        }

        else
        {
          result = r_sort_b(v33, a2, v30, v28, a5, a6);
        }
      }

      else
      {
        v41 = *v17;
        v40 = *(v17 + 2);
        for (i = (v33 + 8); --v40 >= 1; ++i)
        {
          for (j = i; j > v33; --j)
          {
            v35 = (*j + v28);
            for (k = (*(j - 1) + v28); ; ++k)
            {
              v39 = *(a5 + *v35);
              if (v39 == a6 || v39 != *(a5 + *k))
              {
                break;
              }

              ++v35;
            }

            if (v39 >= *(a5 + *k))
            {
              break;
            }

            v36 = *j;
            *j = *(j - 1);
            *(j - 1) = v36;
          }
        }
      }
    }
  }

  return result;
}

uint64_t r_sort_count_allocate()
{
  r_sort_a_count = malloc_type_calloc();
  result = malloc_type_calloc();
  r_sort_b_count = result;
  return result;
}

int rand_r(unsigned int *a1)
{
  v3 = a1;
  v2 = *a1;
  result = do_rand(&v2);
  *v3 = v2;
  return result;
}

unint64_t do_rand(unint64_t *a1)
{
  if (!*a1)
  {
    *a1 = 123459876;
  }

  v2 = 16807 * (*a1 % 0x1F31D) - 2836 * (*a1 / 0x1F31D);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 += 0x7FFFFFFFLL;
  }

  *a1 = v2;
  return v2 % 0x80000000;
}

void sranddev(void)
{
  v2 = 0;
  v3 = open_NOCANCEL();
  if ((v3 & 0x80000000) == 0)
  {
    v2 = read_NOCANCEL() == 8;
    close_NOCANCEL();
  }

  if (!v2)
  {
    v1.tv_sec = 0;
    *&v1.tv_usec = 0;
    gettimeofday(&v1, 0);
    v0 = getpid();
    srand((v0 << 16) ^ LODWORD(v1.tv_sec) ^ v1.tv_usec);
  }
}

void srandom(unsigned int a1)
{
  *state = a1;
  if (rand_type)
  {
    for (i = 1; i < rand_deg; ++i)
    {
      state[i] = good_rand(state[i - 1]);
    }

    fptr = &state[rand_sep];
    rptr = state;
    v1 = 10 * rand_deg;
  }

  else
  {
    v1 = 50;
  }

  for (j = 0; j < v1; ++j)
  {
    random();
  }
}

uint64_t good_rand(int a1)
{
  v2 = a1;
  if (!a1)
  {
    v2 = 123459876;
  }

  v3 = 16807 * (v2 % 127773) - 2836 * (v2 / 127773);
  if ((v3 & 0x80000000) != 0)
  {
    v3 += 0x7FFFFFFF;
  }

  return v3;
}

uint64_t random(void)
{
  if (rand_type)
  {
    v3 = fptr;
    v1 = rptr;
    *fptr += *rptr;
    v5 = (*v3 >> 1) & 0x7FFFFFFF;
    v4 = v3 + 1;
    if (v4 < end_ptr)
    {
      v2 = v1 + 1;
      if (v2 >= end_ptr)
      {
        v2 = state;
      }
    }

    else
    {
      v4 = state;
      v2 = v1 + 1;
    }

    fptr = v4;
    rptr = v2;
  }

  else
  {
    v5 = good_rand(*state) & 0x7FFFFFFF;
    *state = v5;
  }

  return v5;
}

void srandomdev(void)
{
  v4 = 0;
  v3 = 0;
  v2 = 0;
  if (rand_type)
  {
    v2 = 4 * rand_deg;
  }

  else
  {
    v2 = 4;
  }

  v3 = 0;
  v4 = open_NOCANCEL();
  if ((v4 & 0x80000000) == 0)
  {
    v3 = read_NOCANCEL() == v2;
    close_NOCANCEL();
  }

  if (v3)
  {
    if (rand_type)
    {
      fptr = &state[rand_sep];
      rptr = state;
    }
  }

  else
  {
    v1.tv_sec = 0;
    *&v1.tv_usec = 0;
    gettimeofday(&v1, 0);
    v0 = getpid();
    srandom((v0 << 16) ^ LODWORD(v1.tv_sec) ^ v1.tv_usec);
  }
}

char *__cdecl initstate(unsigned int a1, char *a2, size_t a3)
{
  v5 = (state - 1);
  if (rand_type)
  {
    *(state - 1) = 5 * (rptr - state) + rand_type;
  }

  else
  {
    *(state - 1) = 0;
  }

  if (a3 >= 8)
  {
    if (a3 >= 0x20)
    {
      if (a3 >= 0x40)
      {
        if (a3 >= 0x80)
        {
          if (a3 >= 0x100)
          {
            rand_type = 4;
            rand_deg = 63;
            rand_sep = 1;
          }

          else
          {
            rand_type = 3;
            rand_deg = 31;
            rand_sep = 3;
          }
        }

        else
        {
          rand_type = 2;
          rand_deg = 15;
          rand_sep = 1;
        }
      }

      else
      {
        rand_type = 1;
        rand_deg = 7;
        rand_sep = 3;
      }
    }

    else
    {
      rand_type = 0;
      rand_deg = 0;
      rand_sep = 0;
    }

    state = (a2 + 4);
    end_ptr = &a2[4 * rand_deg + 4];
    srandom(a1);
    if (rand_type)
    {
      *a2 = 5 * (rptr - state) + rand_type;
    }

    else
    {
      *a2 = 0;
    }

    return v5;
  }

  else
  {
    fprintf(__stderrp, "random: not enough state (%ld bytes); ignored.\n", a3);
    return 0;
  }
}

char *__cdecl setstate(const char *a1)
{
  v4 = *a1 % 5u;
  v3 = *a1 / 5u;
  v2 = (state - 1);
  if (rand_type)
  {
    *(state - 1) = 5 * (rptr - state) + rand_type;
  }

  else
  {
    *(state - 1) = 0;
  }

  if (v4 > 4)
  {
    fprintf(__stderrp, "random: state info corrupted; not changed.\n");
  }

  else
  {
    rand_type = v4;
    rand_deg = degrees[v4];
    rand_sep = seps[v4];
  }

  state = (a1 + 4);
  if (rand_type)
  {
    rptr = &state[v3];
    fptr = &state[(v3 + rand_sep) % rand_deg];
  }

  end_ptr = &state[rand_deg];
  return v2;
}

char *__cdecl realpath(const char *a1, char *a2)
{
  v27 = a1;
  v26 = a2;
  bzero(v34, 0x200uLL);
  memset(&__b, 0, sizeof(__b));
  v15 = 0;
  v13 = 0;
  bzero(&v30, 0x200uLL);
  st_ino = 0;
  if (!v27)
  {
    *__error() = 22;
    return 0;
  }

  if (!*v27)
  {
    *__error() = 2;
    return 0;
  }

  if (v26)
  {
    __dst = v26;
  }

  else
  {
    __dst = malloc_type_malloc();
    if (!__dst)
    {
      return 0;
    }
  }

  if (!realpath_rootdev_inited)
  {
    realpath_rootdev_inited = 1;
    if (stat("/", &__b) < 0)
    {
      goto LABEL_12;
    }

    realpath_rootdev = __b.st_dev;
  }

  v17 = *__error();
  v18 = 0;
  if (*v27 == 47)
  {
    *__dst = 47;
    __dst[1] = 0;
    if (!v27[1])
    {
      return __dst;
    }

    v20 = 1;
    v21 = strlcpy(v33, v27 + 1, 0x400uLL);
  }

  else
  {
    if (!__private_getcwd(__dst, 1024, 0))
    {
      strlcpy(__dst, ".", 0x400uLL);
      goto LABEL_12;
    }

    v20 = strlen(__dst);
    v21 = strlcpy(v33, v27, 0x400uLL);
  }

  if (v21 < 0x400 && v20 < 0x400)
  {
    if (v20 > 1)
    {
      if ((stat(__dst, &__b) & 0x80000000) == 0)
      {
        st_dev = __b.st_dev;
        goto LABEL_30;
      }

      goto LABEL_12;
    }

    st_dev = realpath_rootdev;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            do
            {
LABEL_30:
              if (!v21)
              {
                if (v20 > 1 && __dst[v20 - 1] == 47)
                {
                  __dst[v20 - 1] = 0;
                }

                return __dst;
              }

              v24 = strchr(v33, 47);
              if (v24)
              {
                v6 = v24 - v33;
              }

              else
              {
                v6 = v21;
              }

              memcpy(v32, v33, v6);
              v32[v6] = 0;
              if (v24)
              {
                v21 -= v6 + 1;
                memmove(v33, v24 + 1, v21 + 1);
              }

              else
              {
                v33[0] = 0;
                v21 = 0;
              }

              if (__dst[v20 - 1] != 47)
              {
                if (v20 + 1 >= 0x400)
                {
                  goto LABEL_94;
                }

                v2 = v20++;
                __dst[v2] = 47;
                __dst[v20] = 0;
              }
            }

            while (!v32[0] || !strcmp(v32, "."));
            if (strcmp(v32, ".."))
            {
              break;
            }

            if (v20 > 1)
            {
              __dst[v20 - 1] = 0;
              v22 = strrchr(__dst, 47) + 1;
              *v22 = 0;
              v20 = v22 - __dst;
            }
          }

          v19 = v20;
          v20 = strlcat(__dst, v32, 0x400uLL);
          if (v20 >= 0x400)
          {
            goto LABEL_94;
          }

          if (getattrlist(__dst, &_rp_alist, v34, 0x41CuLL, 1u))
          {
            if (*__error() == 45 || *__error() == 22)
            {
              v16 = lstat(__dst, &__b);
              if (!v16)
              {
                v15 = (__b.st_mode & 0xF000) == 40960;
                v13 = __b.st_dev;
                st_ino = __b.st_ino;
              }
            }

            else
            {
              v16 = -1;
            }
          }

          else
          {
            v16 = 1;
            v15 = v35[3] == 5;
            v13 = v35[2];
            st_ino = v35[4];
          }

          if (v16 < 0)
          {
            goto LABEL_12;
          }

          if (v13 == st_dev)
          {
            break;
          }

          st_dev = v13;
          if (statfs(__dst, &v30) || lstat(v30.f_mntonname, &__b) || v13 != __b.st_dev || st_ino != __b.st_ino)
          {
            break;
          }

          v7 = 1;
          strcpy(__s, v30.f_mntonname);
          do
          {
            v8 = strrchr(__s, 47);
            if (!v8)
            {
              v7 = 0;
              goto LABEL_70;
            }

            if (v8 <= __s)
            {
              goto LABEL_70;
            }

            *v8 = 0;
          }

          while ((lstat(__s, &__b) & 0x80000000) == 0 && (__b.st_mode & 0xF000) == 0x4000);
          v7 = 0;
LABEL_70:
          if (!v7)
          {
            break;
          }

          v20 = strlcpy(__dst, v30.f_mntonname, 0x400uLL);
        }

        if (v15)
        {
          break;
        }

        if (v16)
        {
          __dst[v19] = 0;
          v20 = strlcat(__dst, v35 + v35[0], 0x400uLL);
          if (v20 >= 0x400)
          {
            goto LABEL_94;
          }
        }
      }

      v3 = v18++;
      if (v3 > 0x20)
      {
        *__error() = 62;
        goto LABEL_12;
      }

      v4 = readlink(__dst, __source, 0x400uLL);
      v14 = v4;
      if (v4 <= 0 || v4 >= 0x400)
      {
        break;
      }

      __source[v4] = 0;
      if (__source[0] == 47)
      {
        __dst[1] = 0;
        v20 = 1;
        st_dev = realpath_rootdev;
      }

      else
      {
        v23 = strrchr(__dst, 47) + 1;
        *v23 = 0;
        v20 = v23 - __dst;
      }

      if (v24)
      {
        if (__source[v14 - 1] != 47)
        {
          if ((v14 + 1) >= 0x400)
          {
            goto LABEL_94;
          }

          __source[v14] = 47;
          __source[v14 + 1] = 0;
        }

        if (strlcat(__source, v33, 0x400uLL) >= 0x400)
        {
          goto LABEL_94;
        }
      }

      v21 = strlcpy(v33, __source, 0x400uLL);
    }

    if (v4 < 0)
    {
      goto LABEL_12;
    }

    if (!v4)
    {
      *__error() = 2;
      goto LABEL_12;
    }
  }

LABEL_94:
  *__error() = 63;
LABEL_12:
  if (!v26)
  {
    v9 = *__error();
    free(__dst);
    *__error() = v9;
  }

  return 0;
}

void remque(void *a1)
{
  v4 = *(a1 + 1);
  v3 = *a1;
  if (v4)
  {
    v1 = *a1;
    v2 = *(a1 + 1);
    *v4 = v3;
  }

  if (v3)
  {
    *(v3 + 8) = v4;
  }
}

uint64_t _owned_ptr_add(uint64_t a1, unint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  result = _owned_ptr_search(a1, a2, &v5);
  if (result)
  {
    if (*(v7 + 8) >= *(v7 + 12))
    {
      v4 = 2 * *(v7 + 12);
      v3 = *v7;
      result = malloc_type_realloc();
      if (!result)
      {
        return result;
      }

      *v7 = result;
      *(v7 + 12) = v4;
    }

    result = memmove((*v7 + 8 * v5 + 16), (*v7 + 8 * v5 + 8), 8 * (*(v7 + 8) - v5 - 1));
    *(*v7 + 8 * (v5 + 1)) = v6;
    ++*(v7 + 8);
  }

  return result;
}

uint64_t _owned_ptr_search(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = 0;
  v5 = *(a1 + 8) - 1;
  if (*(*a1 + 8 * v5) >= a2)
  {
    if (*(*a1 + 8 * v5) == a2)
    {
      if (a3)
      {
        *a3 = v5;
      }

      return 0;
    }

    else
    {
      while (v5 - v6 > 1)
      {
        v4 = (v6 + v5) / 2;
        if (a2 <= *(*a1 + 8 * v4))
        {
          if (a2 >= *(*a1 + 8 * v4))
          {
            if (a3)
            {
              *a3 = v4;
            }

            return 0;
          }

          v5 = (v6 + v5) / 2;
        }

        else
        {
          v6 = (v6 + v5) / 2;
        }
      }

      if (a3)
      {
        *a3 = v6;
      }

      return -1;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = v5;
    }

    return -1;
  }
}

_DWORD *_owned_ptr_alloc()
{
  v2 = malloc_type_malloc();
  if (!v2)
  {
    return 0;
  }

  *v2 = malloc_type_malloc();
  if (*v2)
  {
    **v2 = 0;
    v2[2] = 1;
    v2[3] = 8;
    return v2;
  }

  else
  {
    v1 = *__error();
    free(v2);
    *__error() = v1;
    return 0;
  }
}

_DWORD *_owned_ptr_delete(_DWORD *result, int a2)
{
  v2 = result;
  if (a2)
  {
    if (a2 < result[2])
    {
      result = memmove((*result + 8 * a2), (*result + 8 * a2 + 8), 8 * (result[2] - a2 - 1));
      --v2[2];
    }
  }

  return result;
}

uint64_t __init__env_owned_locked(int a1)
{
  v2 = 0;
  if (__env_owned)
  {
    return 0;
  }

  else
  {
    if (!a1)
    {
      v2 = *__error();
    }

    __env_owned = _owned_ptr_alloc();
    if (__env_owned)
    {
      return 0;
    }

    else
    {
      if (!a1)
      {
        *__error() = v2;
      }

      return -1;
    }
  }
}

uint64_t __setenv_locked(char *a1, const char *a2, int a3, int a4, char ***a5, _DWORD *a6)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  i = 0;
  v27 = 0;
  v26 = 0;
  i = __findenv_locked(a1, &v27, *a5);
  if (!i)
  {
    __dst = *v30;
    v21 = 0;
    while (*__dst)
    {
      ++__dst;
      ++v21;
    }

    if (_owned_ptr_search(v29, *v30, &v26))
    {
      __dstb = malloc_type_malloc();
      if (!__dstb)
      {
        return -1;
      }

      _owned_ptr_add(v29, __dstb);
      memmove(__dstb, *v30, 8 * v21);
      *v30 = __dstb;
    }

    else
    {
      v8 = *v30;
      __dsta = malloc_type_realloc();
      if (!__dsta)
      {
        return -1;
      }

      if (*v30 != __dsta)
      {
        _owned_ptr_delete(v29, v26);
        _owned_ptr_add(v29, __dsta);
        *v30 = __dsta;
      }
    }

    *(*v30 + v21 + 1) = 0;
    v27 = v21;
    goto LABEL_28;
  }

  if (!v32)
  {
    return 0;
  }

  v25 = *(*v30 + v27);
  if (_owned_ptr_search(v29, v25, &v26))
  {
LABEL_28:
    if (v31 <= 0)
    {
      if (v31 < 0)
      {
        v17 = strlen(v34);
        i = malloc_type_malloc();
        if (!i)
        {
          return -1;
        }

        _owned_ptr_add(v29, i);
        memcpy(i, v34, v17 + 1);
        v34 = i;
      }

      *(*v30 + v27) = v34;
    }

    else
    {
      for (i = v34; ; ++i)
      {
        v16 = 0;
        if (*i)
        {
          v16 = *i != 61;
        }

        if (!v16)
        {
          break;
        }
      }

      strlen(v33);
      v9 = malloc_type_malloc();
      *(*v30 + v27) = v9;
      if (!v9)
      {
        return -1;
      }

      _owned_ptr_add(v29, *(*v30 + v27));
      for (i = *(*v30 + v27); ; ++i)
      {
        v10 = v34++;
        LODWORD(v10) = *v10;
        *i = v10;
        v15 = 0;
        if (v10)
        {
          v15 = *i != 61;
        }

        if (!v15)
        {
          break;
        }
      }

      v11 = i++;
      *v11 = 61;
      do
      {
        v12 = v33++;
        LODWORD(v12) = *v12;
        v13 = i++;
        *v13 = v12;
      }

      while (v12);
    }

    return 0;
  }

  if (v31 <= 0)
  {
    _owned_ptr_delete(v29, v26);
    free(v25);
    goto LABEL_28;
  }

  v24 = strlen(v33);
  if (strlen(i) < v24)
  {
    v22 = (i - v25);
    v23 = malloc_type_realloc();
    if (!v23)
    {
      return -1;
    }

    if (v23 != v25)
    {
      *(*v30 + v27) = v23;
      i = &v22[v23];
      _owned_ptr_delete(v29, v26);
      _owned_ptr_add(v29, v23);
    }
  }

  do
  {
    v6 = v33++;
    LODWORD(v6) = *v6;
    v7 = i++;
    *v7 = v6;
  }

  while (v6);
  return 0;
}

_BYTE *__unsetenv_locked(_BYTE *a1, char **a2, _DWORD *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  i = 0;
  v6 = 0;
  v5 = 0;
  while (1)
  {
    result = __findenv_locked(v10, &v6, v9);
    if (!result)
    {
      break;
    }

    if (!_owned_ptr_search(v8, v9[v6], &v5))
    {
      _owned_ptr_delete(v8, v5);
      free(v9[v6]);
    }

    for (i = &v9[v6]; ; ++i)
    {
      v4 = i[1];
      *i = v4;
      if (!v4)
      {
        break;
      }
    }
  }

  return result;
}

void *_copyenv(void *a1)
{
  v2 = 1;
  if (a1)
  {
    for (__dst = a1; *__dst; ++__dst)
    {
      ++v2;
    }
  }

  __dsta = malloc_type_malloc();
  if (!__dsta)
  {
    return 0;
  }

  if (a1)
  {
    memmove(__dsta, a1, 8 * v2);
  }

  else
  {
    *__dsta = 0;
  }

  return __dsta;
}

uint64_t _deallocenvstate(void **a1)
{
  if (a1 && a1 != __env_owned)
  {
    _owned_ptr_free(a1);
    return 0;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t _setenvp(char *a1, const char *a2, int a3, char ***a4, _DWORD *a5)
{
  environ_lock_np();
  if (__init__env_owned_locked(1))
  {
    environ_unlock_np();
    return -1;
  }

  else
  {
    if (a5)
    {
      v5 = __setenv_locked(a1, a2, a3, 1, a4, a5);
    }

    else
    {
      v5 = __setenv_locked(a1, a2, a3, 1, a4, __env_owned);
    }

    v7 = v5;
    environ_unlock_np();
    return v7;
  }
}

uint64_t _unsetenvp(_BYTE *a1, char ***a2, _DWORD *a3)
{
  environ_lock_np();
  if (__init__env_owned_locked(1))
  {
    environ_unlock_np();
    return -1;
  }

  else
  {
    v4 = *a2;
    if (a3)
    {
      __unsetenv_locked(a1, v4, a3);
    }

    else
    {
      __unsetenv_locked(a1, v4, __env_owned);
    }

    environ_unlock_np();
    return 0;
  }
}

int setenv(const char *__name, const char *__value, int __overwrite)
{
  if (__name && *__name && !strchr(__name, 61))
  {
    environ_lock_np();
    if (__init__env_owned_locked(1))
    {
      environ_unlock_np();
      return -1;
    }

    else
    {
      v3 = _NSGetEnviron();
      v5 = __setenv_locked(__name, __value, __overwrite, 1, v3, __env_owned);
      environ_unlock_np();
      return v5;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int unsetenv(const char *a1)
{
  if (a1 && *a1 && !strchr(a1, 61))
  {
    environ_lock_np();
    if (__init__env_owned_locked(1))
    {
      environ_unlock_np();
      return -1;
    }

    else
    {
      v1 = _NSGetEnviron();
      __unsetenv_locked(a1, *v1, __env_owned);
      environ_unlock_np();
      return 0;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

hash_table *__cdecl hash_create(int size)
{
  v3 = malloc_type_malloc();
  if (!v3 || size < 0)
  {
    return 0;
  }

  if (!size)
  {
    size = 97;
  }

  v1 = malloc_type_malloc();
  v3->buckets = v1;
  if (!v1)
  {
    return 0;
  }

  for (i = 0; i < size; ++i)
  {
    v3->buckets[i] = 0;
  }

  v3->size = size;
  return v3;
}

void hash_destroy(hash_table *table, char *key, void (__cdecl *nukefunc)(char *, void *))
{
  v5 = _hash(table->size, key);
  v4 = table->buckets[v5];
  next = 0;
  if (!v4)
  {
    return;
  }

  if (!strcmp(v4->key, key))
  {
    table->buckets[v5] = v4->next;
    next = v4;
LABEL_9:
    if (nukefunc)
    {
      (nukefunc)(next->key, next->data);
    }

    free(next);
    return;
  }

  while (v4->next)
  {
    if (!strcmp(v4->next->key, key))
    {
      next = v4->next;
      v4->next = next->next;
      break;
    }

    v4 = v4->next;
  }

  if (next)
  {
    goto LABEL_9;
  }
}

uint64_t _hash(unsigned int a1, unsigned __int8 *a2)
{
  v4 = 0;
  while (*a2)
  {
    v2 = a2++;
    v4 ^= *v2 ^ (2 * v4);
  }

  return v4 % a1;
}

void *__cdecl hash_search(hash_table *table, char *key, void *datum, void (__cdecl *replace_func)(void *))
{
  v7 = _hash(table->size, key);
  v6 = list_find(key, table->buckets[v7]);
  if (v6)
  {
    if (!replace_func)
    {
      return *(v6 + 8);
    }

    (replace_func)(*(v6 + 8));
    *(v6 + 8) = datum;
    return 0;
  }

  if (!datum)
  {
    return 0;
  }

  v5 = malloc_type_malloc();
  if (!v5 || !assign_key(key, &v5->key))
  {
    return 0;
  }

  v5->data = datum;
  v5->next = table->buckets[v7];
  table->buckets[v7] = v5;
  return v5;
}

uint64_t list_find(const char *a1, uint64_t a2)
{
  while (a2)
  {
    if (!strcmp(*a2, a1))
    {
      return a2;
    }

    a2 = *(a2 + 16);
  }

  return 0;
}

uint64_t assign_key(const char *a1, char **a2)
{
  if (a2 && a1)
  {
    strlen(a1);
    v2 = malloc_type_malloc();
    *a2 = v2;
    if (v2)
    {
      **a2 = 0;
      strcat(*a2, a1);
      return 1;
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

void hash_traverse(hash_table *table, int (__cdecl *func)(char *, void *, void *), void *arg)
{
  size = table->size;
  if (func)
  {
    for (i = 0; i < size; ++i)
    {
      for (j = table->buckets[i]; j; j = j->next)
      {
        if (!(func)(j->key, j->data, arg))
        {
          return;
        }
      }
    }
  }
}

void hash_purge(hash_table *table, void (__cdecl *purge_func)(char *, void *))
{
  size = table->size;
  for (i = 0; i < size; ++i)
  {
    v3 = table->buckets[i];
    if (v3)
    {
      do
      {
        v2 = v3;
        if (purge_func)
        {
          (purge_func)(v3->key, v3->data);
        }

        v3 = v3->next;
        free(v2);
      }

      while (v3);
      table->buckets[i] = 0;
    }
  }
}

uint64_t hash_stats(uint64_t a1, int a2)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v7 = *a1;
  v8 = malloc_type_malloc();
  if (!v8)
  {
    fprintf(__stderrp, "malloc returns 0\n");
    exit(1);
  }

  for (i = 0; i < v7; ++i)
  {
    v6 = 0;
    v5 = *(*(a1 + 8) + 8 * i);
    *(v8 + 4 * i) = 0;
    while (v5)
    {
      if (!v6)
      {
        v6 = 1;
        ++v11;
        if (a2)
        {
          printf("bucket %2d: ", i);
        }
      }

      if (a2)
      {
        printf(" %s", *v5);
      }

      ++*(v8 + 4 * i);
      v5 = *(v5 + 16);
    }

    v12 += *(v8 + 4 * i);
    if (*(v8 + 4 * i) <= v10)
    {
      if (*(v8 + 4 * i) == v10)
      {
        ++v9;
      }
    }

    else
    {
      v10 = *(v8 + 4 * i);
      v9 = 1;
    }

    if (*(v8 + 4 * i) && a2)
    {
      printf(" (%d)\n", *(v8 + 4 * i));
    }
  }

  printf("\n");
  v2 = &unk_C42B5;
  if (v12 != 1)
  {
    v2 = "s";
  }

  result = printf("%d element%s in storage.\n", v12, v2);
  if (v12)
  {
    printf("%d of %d (%.2f%%) buckets are in use\n", v11, v7, 100.0 * v11 / v7);
    printf("the maximum number of elements in a bucket is %d (%d times)\n", v10, v9);
    printf("average per bucket is %f\n", v12 / v11);
    if (v7 < v12)
    {
      v4 = v7;
    }

    else
    {
      v4 = v12;
    }

    return printf("optimal would be %f\n", v12 / v4);
  }

  return result;
}

intmax_t strtoimax_l(const char *nptr, char **endptr, int base, locale_t a4)
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

  while (isspace_l(*v4, v21));
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

  if ((!base || base == 16) && v17 == 48 && (*v20 == 120 || *v20 == 88) && (v20[1] >= 48 && v20[1] <= 57 || v20[1] >= 65 && v20[1] <= 70 || v20[1] >= 97 && v20[1] <= 102))
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
    goto LABEL_57;
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
      goto LABEL_44;
    }

    if (v17 >= 65 && v17 <= 90)
    {
      v18 = v17 - 55;
      goto LABEL_44;
    }

    if (v17 < 97 || v17 > 122)
    {
      break;
    }

    v18 = v17 - 87;
LABEL_44:
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
    goto LABEL_60;
  }

  if (!v14)
  {
LABEL_57:
    *__error() = 22;
    goto LABEL_60;
  }

  if (v15)
  {
    v19 = -v19;
  }

LABEL_60:
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

intmax_t strtoimax(const char *__nptr, char **__endptr, int __base)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return strtoimax_l(__nptr, __endptr, __base, v4);
  }

  else
  {
    return strtoimax_l(__nptr, __endptr, __base, __global_locale);
  }
}

uint64_t strtol_l(const char *a1, char **a2, int a3, locale_t a4)
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

  while (isspace_l(*v4, v21));
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

  if ((!a3 || a3 == 16) && v17 == 48 && (*v20 == 120 || *v20 == 88) && (v20[1] >= 48 && v20[1] <= 57 || v20[1] >= 65 && v20[1] <= 70 || v20[1] >= 97 && v20[1] <= 102))
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
    goto LABEL_57;
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
      goto LABEL_44;
    }

    if (v17 >= 65 && v17 <= 90)
    {
      v18 = v17 - 55;
      goto LABEL_44;
    }

    if (v17 < 97 || v17 > 122)
    {
      break;
    }

    v18 = v17 - 87;
LABEL_44:
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
    goto LABEL_60;
  }

  if (!v14)
  {
LABEL_57:
    *__error() = 22;
    goto LABEL_60;
  }

  if (v15)
  {
    v19 = -v19;
  }

LABEL_60:
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

uint64_t strtol(const char *__str, char **__endptr, int __base)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return strtol_l(__str, __endptr, __base, v4);
  }

  else
  {
    return strtol_l(__str, __endptr, __base, __global_locale);
  }
}

uint64_t strtoll_l(const char *a1, char **a2, int a3, locale_t a4)
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

  while (isspace_l(*v4, v21));
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

  if ((!a3 || a3 == 16) && v17 == 48 && (*v20 == 120 || *v20 == 88) && (v20[1] >= 48 && v20[1] <= 57 || v20[1] >= 65 && v20[1] <= 70 || v20[1] >= 97 && v20[1] <= 102))
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
    goto LABEL_57;
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
      goto LABEL_44;
    }

    if (v17 >= 65 && v17 <= 90)
    {
      v18 = v17 - 55;
      goto LABEL_44;
    }

    if (v17 < 97 || v17 > 122)
    {
      break;
    }

    v18 = v17 - 87;
LABEL_44:
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
    goto LABEL_60;
  }

  if (!v14)
  {
LABEL_57:
    *__error() = 22;
    goto LABEL_60;
  }

  if (v15)
  {
    v19 = -v19;
  }

LABEL_60:
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

uint64_t strtoll(const char *__str, char **__endptr, int __base)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return strtoll_l(__str, __endptr, __base, v4);
  }

  else
  {
    return strtoll_l(__str, __endptr, __base, __global_locale);
  }
}

uint64_t strtoq(const char *__str, char **__endptr, int __base)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return strtoll_l(__str, __endptr, __base, v4);
  }

  else
  {
    return strtoll_l(__str, __endptr, __base, __global_locale);
  }
}

unint64_t strtoul_l(const char *a1, char **a2, int a3, locale_t a4)
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

  while (isspace_l(*v4, v18));
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

  if ((!a3 || a3 == 16) && v14 == 48 && (*v17 == 120 || *v17 == 88) && (v17[1] >= 48 && v17[1] <= 57 || v17[1] >= 65 && v17[1] <= 70 || v17[1] >= 97 && v17[1] <= 102))
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
    goto LABEL_53;
  }

  v13 = 0xFFFFFFFFFFFFFFFFLL / a3;
  while (1)
  {
    if (v14 >= 48 && v14 <= 57)
    {
      v15 = v14 - 48;
      goto LABEL_42;
    }

    if (v14 >= 65 && v14 <= 90)
    {
      v15 = v14 - 55;
      goto LABEL_42;
    }

    if (v14 < 97 || v14 > 122)
    {
      break;
    }

    v15 = v14 - 87;
LABEL_42:
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
    goto LABEL_56;
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
LABEL_53:
    *__error() = 22;
  }

LABEL_56:
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

unint64_t strtoul(const char *__str, char **__endptr, int __base)
{
  v5 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v4)
  {
    return strtoul_l(__str, __endptr, __base, v4);
  }

  else
  {
    return strtoul_l(__str, __endptr, __base, __global_locale);
  }
}

unint64_t strtoull_l(const char *a1, char **a2, int a3, locale_t a4)
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

  while (isspace_l(*v4, v18));
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

  if ((!a3 || a3 == 16) && v14 == 48 && (*v17 == 120 || *v17 == 88) && (v17[1] >= 48 && v17[1] <= 57 || v17[1] >= 65 && v17[1] <= 70 || v17[1] >= 97 && v17[1] <= 102))
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
    goto LABEL_53;
  }

  v13 = 0xFFFFFFFFFFFFFFFFLL / a3;
  while (1)
  {
    if (v14 >= 48 && v14 <= 57)
    {
      v15 = v14 - 48;
      goto LABEL_42;
    }

    if (v14 >= 65 && v14 <= 90)
    {
      v15 = v14 - 55;
      goto LABEL_42;
    }

    if (v14 < 97 || v14 > 122)
    {
      break;
    }

    v15 = v14 - 87;
LABEL_42:
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
    goto LABEL_56;
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
LABEL_53:
    *__error() = 22;
  }

LABEL_56:
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

unint64_t strtoull(const char *__str, char **__endptr, int __base)
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

uintmax_t strtoumax_l(const char *nptr, char **endptr, int base, locale_t a4)
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

  while (isspace_l(*v4, v18));
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

  if ((!base || base == 16) && v14 == 48 && (*v17 == 120 || *v17 == 88) && (v17[1] >= 48 && v17[1] <= 57 || v17[1] >= 65 && v17[1] <= 70 || v17[1] >= 97 && v17[1] <= 102))
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
    goto LABEL_53;
  }

  v13 = 0xFFFFFFFFFFFFFFFFLL / base;
  while (1)
  {
    if (v14 >= 48 && v14 <= 57)
    {
      v15 = v14 - 48;
      goto LABEL_42;
    }

    if (v14 >= 65 && v14 <= 90)
    {
      v15 = v14 - 55;
      goto LABEL_42;
    }

    if (v14 < 97 || v14 > 122)
    {
      break;
    }

    v15 = v14 - 87;
LABEL_42:
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
    goto LABEL_56;
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
LABEL_53:
    *__error() = 22;
  }

LABEL_56:
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