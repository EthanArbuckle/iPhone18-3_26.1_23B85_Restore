int sigaltstack(const stack_t *a1, stack_t *a2)
{
  if (!a1 || a1->ss_size >= 0x8000)
  {
    return __sigaltstack();
  }

  *__error() = 12;
  return -1;
}

uint64_t sigvec__(int a1, const sigaction *a2, sigaction *a3, int a4)
{
  if (a2)
  {
    a2->sa_flags ^= 2u;
  }

  if (a4)
  {
    v5 = sigaction(a1, a2, a3);
  }

  else
  {
    v5 = _sigaction_nobind(a1, a2, a3);
  }

  if (!v5 && a3)
  {
    a3->sa_flags ^= 2u;
  }

  return v5;
}

int sigsetmask(int a1)
{
  v4 = a1;
  v3 = 0;
  v2 = sigprocmask(3, &v4, &v3);
  if (v2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

int sigblock(int a1)
{
  v4 = a1;
  v3 = 0;
  v2 = sigprocmask(1, &v4, &v3);
  if (v2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sigpause_NOCANCEL(int a1)
{
  v4 = a1;
  v3 = 0;
  if (!__unix_conforming)
  {
    __unix_conforming = 1;
  }

  if (v4 > 0 && v4 < 32)
  {
    if (sigprocmask(1, 0, &v3) < 0)
    {
      return -1;
    }

    else
    {
      v6 = v4;
      if (v4 <= 32)
      {
        v2 = 1 << (v6 - 1);
      }

      else
      {
        v2 = 0;
      }

      v3 &= ~v2;
      return sigsuspend_NOCANCEL();
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int sighold(int a1)
{
  v3 = a1;
  v2 = 0;
  if (a1 > 0 && v3 < 32)
  {
    v5 = v3;
    v2 = 1 << (v3 - 1);
    return sigprocmask(1, &v2, 0);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int sigrelse(int a1)
{
  v3 = a1;
  v2 = 0;
  if (a1 > 0 && v3 < 32)
  {
    v5 = v3;
    v2 = 1 << (v3 - 1);
    return sigprocmask(2, &v2, 0);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int sigignore(int a1)
{
  if (signal(a1, (&dword_0 + 1)) == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl *__cdecl sigset(int a1, void (__cdecl *a2)(int)))(int)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  v6.__sigaction_u.__sa_handler = 0;
  *&v6.sa_mask = 0;
  if (a1 > 0 && v10 < 32)
  {
    if (sigprocmask(0, 0, &v8) == -1)
    {
      return -1;
    }

    else
    {
      v12 = v10;
      if (v10 <= 32)
      {
        v4 = 1 << (v12 - 1);
      }

      else
      {
        v4 = 0;
      }

      v7 = (v8 & v4) != 0;
      if (v9 == (&dword_4 + 1))
      {
        if (v7)
        {
          return (&dword_4 + 1);
        }

        else if (sigaction(v10, 0, &v6) == -1 || sighold(v10) == -1)
        {
          return -1;
        }

        else
        {
          return v6.__sigaction_u.__sa_handler;
        }
      }

      else if (v7 && sigrelse(v10) == -1)
      {
        return -1;
      }

      else
      {
        v5 = signal(v10, v9);
        if (v5 == -1)
        {
          return -1;
        }

        else if (v7)
        {
          return (&dword_4 + 1);
        }

        else
        {
          return v5;
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

__uint64_t clock_gettime_nsec_np(clockid_t __clock_id)
{
  v8 = __clock_id;
  if (__clock_id)
  {
    if (__clock_id == _CLOCK_MONOTONIC)
    {
      v6.tv_sec = 0;
      *&v6.tv_usec = 0;
      v5 = 0;
      if (_mach_boottime_usec(&v5, &v6))
      {
        return 0;
      }

      else
      {
        v5 *= 1000;
        return 1000000000 * v6.tv_sec + 1000 * v6.tv_usec - v5;
      }
    }

    else
    {
      if (__clock_id != _CLOCK_PROCESS_CPUTIME_ID)
      {
        info = 0;
        if (mach_timebase_info(&info))
        {
          goto LABEL_15;
        }

        switch(v8)
        {
          case _CLOCK_MONOTONIC_RAW:
            v2 = mach_continuous_time();
            break;
          case _CLOCK_MONOTONIC_RAW_APPROX:
            v2 = mach_continuous_approximate_time();
            break;
          case _CLOCK_UPTIME_RAW:
            v2 = mach_absolute_time();
            break;
          case _CLOCK_UPTIME_RAW_APPROX:
            v2 = mach_approximate_time();
            break;
          case _CLOCK_THREAD_CPUTIME_ID:
            v2 = __thread_selfusage();
            break;
          default:
LABEL_15:
            *__error() = 22;
            return 0;
        }

        return v2 * info.numer / info.denom;
      }

      memset(&__b, 0, sizeof(__b));
      if (getrusage(0, &__b))
      {
        return 0;
      }

      else
      {
        return 1000000000 * __b.ru_utime.tv_sec + 1000 * __b.ru_utime.tv_usec + 1000000000 * __b.ru_stime.tv_sec + 1000 * __b.ru_stime.tv_usec;
      }
    }
  }

  else
  {
    v7.tv_sec = 0;
    *&v7.tv_usec = 0;
    if (gettimeofday(&v7, 0))
    {
      return 0;
    }

    else
    {
      return 1000000000 * v7.tv_sec + 1000 * v7.tv_usec;
    }
  }
}

uint64_t _mach_boottime_usec(uint64_t *a1, timeval *a2)
{
  do
  {
    v5 = mach_boottime_usec();
    if (!v5)
    {
      v5 = _boottime_fallback_usec();
    }

    __dmb(0xBu);
    v3 = gettimeofday(a2, 0);
    if (v3)
    {
      return v3;
    }

    __dmb(0xBu);
    v4 = mach_boottime_usec();
    if (!v4)
    {
      v4 = _boottime_fallback_usec();
    }
  }

  while (v5 != v4);
  *a1 = v5;
  return 0;
}

int clock_gettime(clockid_t __clock_id, timespec *__tp)
{
  v12 = __clock_id;
  v11 = __tp;
  switch(__clock_id)
  {
    case _CLOCK_REALTIME:
      v10.tv_sec = 0;
      *&v10.tv_usec = 0;
      v9 = gettimeofday(&v10, 0);
      v11->tv_sec = v10.tv_sec;
      v11->tv_nsec = 1000 * v10.tv_usec;
      return v9;
    case _CLOCK_MONOTONIC_RAW_APPROX:
    case _CLOCK_MONOTONIC_RAW:
      goto LABEL_17;
    case _CLOCK_MONOTONIC:
      v8.tv_sec = 0;
      *&v8.tv_usec = 0;
      v7 = 0;
      v6 = _mach_boottime_usec(&v7, &v8);
      v8.tv_sec -= v7 / 0xF4240;
      v8.tv_usec -= v7 % 0xF4240;
      if (v8.tv_usec < 0)
      {
        --v8.tv_sec;
        v8.tv_usec += 1000000;
      }

      v11->tv_sec = v8.tv_sec;
      v11->tv_nsec = 1000 * v8.tv_usec;
      return v6;
    case _CLOCK_UPTIME_RAW_APPROX:
    case _CLOCK_UPTIME_RAW:
LABEL_17:
      v3 = clock_gettime_nsec_np(v12);
      if (!v3)
      {
        return -1;
      }

      v11->tv_sec = v3 / 0x3B9ACA00;
      v11->tv_nsec = v3 % 0x3B9ACA00;
      return 0;
    case _CLOCK_PROCESS_CPUTIME_ID:
      memset(&__b, 0, sizeof(__b));
      v4 = getrusage(0, &__b);
      __b.ru_utime.tv_sec += __b.ru_stime.tv_sec;
      __b.ru_utime.tv_usec += __b.ru_stime.tv_usec;
      if (__b.ru_utime.tv_usec >= 1000000)
      {
        ++__b.ru_utime.tv_sec;
        __b.ru_utime.tv_usec -= 1000000;
      }

      v11->tv_sec = __b.ru_utime.tv_sec;
      v11->tv_nsec = 1000 * __b.ru_utime.tv_usec;
      return v4;
    case _CLOCK_THREAD_CPUTIME_ID:
      goto LABEL_17;
    default:
      *__error() = 22;
      return -1;
  }
}

int clock_getres(clockid_t __clock_id, timespec *__res)
{
  v6 = __clock_id;
  v5 = __res;
  switch(__clock_id)
  {
    case _CLOCK_REALTIME:
      goto LABEL_10;
    case _CLOCK_MONOTONIC_RAW_APPROX:
    case _CLOCK_MONOTONIC_RAW:
      goto LABEL_11;
    case _CLOCK_MONOTONIC:
      goto LABEL_10;
    case _CLOCK_UPTIME_RAW_APPROX:
    case _CLOCK_UPTIME_RAW:
      goto LABEL_11;
    case _CLOCK_PROCESS_CPUTIME_ID:
LABEL_10:
      v5->tv_nsec = 1000;
      v5->tv_sec = 0;
      return 0;
  }

  if (__clock_id != _CLOCK_THREAD_CPUTIME_ID)
  {
    *__error() = 22;
    return -1;
  }

LABEL_11:
  info = 0;
  if (mach_timebase_info(&info))
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    v2 = info.numer / info.denom;
    if (info.numer % info.denom)
    {
      ++v2;
    }

    v5->tv_nsec = v2;
    v5->tv_sec = 0;
    return 0;
  }
}

int clock_settime(clockid_t __clock_id, const timespec *__tp)
{
  v5 = __clock_id;
  v4 = __tp;
  if (__clock_id)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    v3.tv_sec = 0;
    *&v3.tv_usec = 0;
    v3.tv_sec = v4->tv_sec;
    v3.tv_usec = v4->tv_nsec / 1000;
    return settimeofday(&v3, 0);
  }
}

uint64_t _boottime_fallback_usec()
{
  v2 = 0;
  v3 = 0;
  v1 = 16;
  if (sysctlbyname("kern.boottime", &v2, &v1, 0, 0) == -1)
  {
    return 0;
  }

  else
  {
    return 1000000 * v2 + v3;
  }
}

void *__cdecl sbrk(int a1)
{
  if (!sbrk_needs_init || (sbrk_needs_init = 0, !vm_allocate(mach_task_self_, &sbrk_curbrk, sbrk_region_size, 83886081)))
  {
    if (a1 <= 0)
    {
      return sbrk_curbrk;
    }

    if (a1 <= sbrk_region_size)
    {
      sbrk_curbrk += a1;
      sbrk_region_size -= a1;
      return (sbrk_curbrk - a1);
    }
  }

  *__error() = 12;
  return -1;
}

void (__cdecl *__cdecl bsd_signal(int a1, void (__cdecl *a2)(int)))(int)
{
  v7 = a1;
  v6 = a2;
  v5.sa_mask = 0;
  v4.__sigaction_u.__sa_handler = 0;
  *&v4.sa_mask = 0;
  v5.__sigaction_u.__sa_handler = a2;
  v5.sa_flags = 2;
  v9 = a1;
  if (a1 <= 32)
  {
    v3 = 1 << (v9 - 1);
  }

  else
  {
    v3 = 0;
  }

  v5.sa_mask |= v3;
  if (sigaction(v7, &v5, &v4) == -1)
  {
    return -1;
  }

  else
  {
    return v4.__sigaction_u.__sa_handler;
  }
}

void strtoencf16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    _ffpp_strtoencf16_l(a1, a2, a3, v3);
  }

  else
  {
    _ffpp_strtoencf16_l(a1, a2, a3, __global_locale);
  }
}

void _ffpp_strtoencf16_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  memset(__b, 0, sizeof(__b));
  __b[0] = 0xFFFFFFF20000000BLL;
  __b[1] = 0x200000010;
  __b[2] = 0x5FFFFFFF9;
  LODWORD(__b[3]) = 22;
  __b[4] = v9;
  __b[5] = v8;
  __b[6] = v7;
  __b[7] = v6;
  __b[8] = 0;
  LODWORD(__b[9]) = 0;
  memset(&__b[10], 0, 17);
  if (fastParse64(__b))
  {
    v4 = fegetround();
    generalSlowpath(__b, v4, v10, 8, 0);
  }
}

void strtoencf32(float *a1, uint64_t a2, uint64_t a3)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    _ffpp_strtoencf32_l(a1, a2, a3, v3);
  }

  else
  {
    _ffpp_strtoencf32_l(a1, a2, a3, __global_locale);
  }
}

void _ffpp_strtoencf32_l(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = 0;
  v24 = 0u;
  v19[0] = 0xFFFFFF8200000018;
  v19[1] = 0x400000080;
  v19[2] = 0x28FFFFFFD2;
  v19[3] = 113;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  *&v24 = 0;
  DWORD2(v24) = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (!fastParse64(v19))
  {
    return;
  }

  if (v27 >= -10 && v27 <= 10 && SDWORD2(v24) <= 7)
  {
    if (v28)
    {
      v7 = -v24;
    }

    else
    {
      v7 = v24;
    }

    if (v27 < 0)
    {
      *v20 = v7 / _ffpp_strtoencf32_l_floatPowerOf10[-v27];
    }

    else
    {
      *v20 = v7 * _ffpp_strtoencf32_l_floatPowerOf10[v27];
    }

    return;
  }

  v18 = fegetround();
  if (SDWORD2(v24) > 19)
  {
    v17 = v27 + WORD4(v24) - 19;
    v16 = 36;
  }

  else
  {
    v17 = v27;
    v16 = 4;
  }

  v15 = __clz(v24);
  v6 = 1;
  if (v15 >= 5)
  {
    v6 = SDWORD2(v24) < 20;
  }

  if (!v6)
  {
    __assert_rtn("_ffpp_strtoencf32_l", "strtofp.c", 2901, "normalizeDigits <= 4 || info.digitCount < 20");
  }

  v12 = (*(&powersOf10_Float + v17 + 70) * (v24 << v15)) >> 64;
  v11 = __clz(v12);
  if (v11 >= 2)
  {
    __assert_rtn("_ffpp_strtoencf32_l", "strtofp.c", 2919, "normalizeProduct <= 1");
  }

  v13 = v12 << v11;
  v14 = ((55732705 * v17) >> 24) + 1 - v15 + 64 - v11;
  v10 = v13 + v16;
  switch(v18)
  {
    case 0:
LABEL_31:
      v9 = (v13 + 0x7FFFFFFFFFLL) >> 40;
      v8 = (v10 + 0x8000000000) >> 40;
      break;
    case 4194304:
      if (v28)
      {
        v9 = v13 >> 40;
        v8 = v10 >> 40;
      }

      else
      {
        v9 = (v13 + 0xFFFFFFFFFFLL) >> 40;
        v8 = (v10 + 0x10000000000) >> 40;
      }

      break;
    case 8388608:
      if (v28)
      {
        v9 = (v13 + 0xFFFFFFFFFFLL) >> 40;
        v8 = (v10 + 0x10000000000) >> 40;
      }

      else
      {
        v9 = v13 >> 40;
        v8 = (v13 + 4) >> 40;
      }

      break;
    case 12582912:
      v9 = v13 >> 40;
      v8 = v10 >> 40;
      break;
    default:
      goto LABEL_31;
  }

  if (!v9)
  {
    ++v14;
  }

  if (v14 >= 129)
  {
    overflow(v19);
    return;
  }

  if (v14 <= -126)
  {
    if (v14 <= -150)
    {
      underflow(v19);
      return;
    }

    goto LABEL_44;
  }

  if (v8 != v9)
  {
LABEL_44:
    v5 = fegetround();
    generalSlowpath(v19, v5, v33, 32, 0);
    return;
  }

  v4 = 0x80000000;
  if ((v28 & 1) == 0)
  {
    v4 = 0;
  }

  *v20 = v4 | ((v14 << 23) + 1056964608) | v9 & 0x7FFFFF;
}

float strtof(const char *a1, char **a2)
{
  v5 = a1;
  v4 = a2;
  v3 = 0.0;
  v6 = 0;
  v7 = __locale_key;
  v8 = __locale_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 8 * v8);
  if (v6)
  {
    _ffpp_strtoencf32_l(&v3, a1, a2, v6);
  }

  else
  {
    _ffpp_strtoencf32_l(&v3, a1, a2, __global_locale);
  }

  return v3;
}

float strtof_l(const char *a1, char **a2, locale_t a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v4 = 0.0;
  _ffpp_strtoencf32_l(&v4, a1, a2, a3);
  return v4;
}

void strtoencf64(double *a1, uint64_t a2, uint64_t a3)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    _ffpp_strtoencf64_l(a1, a2, a3, v3);
  }

  else
  {
    _ffpp_strtoencf64_l(a1, a2, a3, __global_locale);
  }
}

void _ffpp_strtoencf64_l(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v40 = a4;
  v39 = 0;
  v32[0] = 0xFFFFFC0200000035;
  v32[1] = 0x800000400;
  v32[2] = 0x136FFFFFEBBLL;
  v32[3] = 768;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = 0uLL;
  v38 = 0uLL;
  if (!fastParse64(v32))
  {
    return;
  }

  if (SHIDWORD(v38) >= -22 && SHIDWORD(v38) <= 18)
  {
    if ((HIDWORD(v38) & 0x80000000) != 0)
    {
      if (SDWORD2(v37) <= 15)
      {
        if (v39)
        {
          v8 = -v37;
        }

        else
        {
          v8 = v37;
        }

        *v33 = v8 / _ffpp_strtoencf64_l_doublePowerOf10[-HIDWORD(v38)];
        return;
      }
    }

    else if (HIDWORD(v38))
    {
      if (SDWORD2(v37) <= 19)
      {
        v31 = _ffpp_strtoencf64_l_doublePowerOf10[SHIDWORD(v38)];
        if (v39)
        {
          v31 = -v31;
        }

        *v33 = (v37 & 0x7FF) * v31 + (v37 & 0xFFFFFFFFFFFFF800) * v31;
        return;
      }
    }

    else if (SDWORD2(v37) <= 19)
    {
      if ((v39 & 1) == 0)
      {
        *v33 = v37;
        return;
      }

      if ((v37 & 0x8000000000000000) == 0)
      {
        *v33 = -v37;
        return;
      }
    }
  }

  v30 = fegetround();
  if (SDWORD2(v37) > 19)
  {
    v29 = WORD6(v38) + WORD4(v37) - 19;
    v28 = 80;
  }

  else
  {
    v29 = WORD6(v38);
    v28 = 12;
  }

  v27 = (585 * v29 + 256) >> 14;
  v26 = v29 - 28 * v27;
  v25 = (powersOf10_CoarseBinary64[v27 + 15] * *(powersOf10_Exact64 + v26)) >> 64;
  v23 = __clz(v37);
  v7 = 1;
  if (v23 >= 5)
  {
    v7 = SDWORD2(v37) < 20;
  }

  if (!v7)
  {
    __assert_rtn("_ffpp_strtoencf64_l", "strtofp.c", 3156, "normalizeDigits <= 4 || info.digitCount < 20");
  }

  v20 = __clz((v25 * (v37 << v23)) >> 64);
  if (v20 >= 3)
  {
    __assert_rtn("_ffpp_strtoencf64_l", "strtofp.c", 3176, "normalizeProduct <= 2");
  }

  v21 = (v25 * (v37 << v23)) >> 64 << v20;
  v24 = ((55732705 * (28 * v27)) >> 24) + ((55732705 * v26) >> 24) + 2;
  v22 = v24 - v23 + 64 - v20;
  v17 = v39 & 1;
  switch(v30)
  {
    case 0:
      goto LABEL_40;
    case 4194304:
      v17 = (v39 & 1) == 0;
      break;
    case 8388608:
      break;
    case 12582912:
      goto LABEL_39;
    default:
LABEL_40:
      v19 = 1023;
      v18 = v28 + 1024;
      goto LABEL_41;
  }

  if (!v17)
  {
LABEL_39:
    v19 = 0;
    v18 = v28;
    goto LABEL_41;
  }

  v19 = 2047;
  v18 = v28 + 2048;
LABEL_41:
  v15 = (v21 + v19) >> 11;
  v14 = v24 - v23 + 64 - v20;
  if (!v15)
  {
    v14 = v22 + 1;
  }

  if (v14 >= 1025)
  {
    overflow(v32);
    return;
  }

  if (v14 <= -1022)
  {
    if (v14 <= -1075)
    {
      underflow(v32);
      return;
    }

    v13 = -1010 - v22;
    if (-1010 - v22 >= 63 && v22 != -1073)
    {
      goto LABEL_77;
    }

    v6 = 0;
    if (v13 >= 1)
    {
      v6 = v13 < 64;
    }

    if (!v6)
    {
      __assert_rtn("_ffpp_strtoencf64_l", "strtofp.c", 3240, "0 < shift && shift < 64");
    }

    v10 = v39 & 1;
    switch(v30)
    {
      case 0:
        goto LABEL_63;
      case 4194304:
        v10 = (v39 & 1) == 0;
        break;
      case 8388608:
        break;
      case 12582912:
LABEL_62:
        v12 = 0;
        v11 = v28;
        goto LABEL_64;
      default:
LABEL_63:
        v12 = (1 << (13 - v22)) - 1;
        v11 = (1 << (13 - v22)) + v28;
LABEL_64:
        v16 = (v21 + v12) >> v13;
        if ((v21 + v11) >> v13 == v16)
        {
          if (!v16)
          {
            v16 = 1 << (v22 - 14);
          }

          v4 = 0x8000000000000000;
          if ((v39 & 1) == 0)
          {
            v4 = 0;
          }

          v9 = v4 | v16;
          if ((v4 | v16) != 0x10000000000000)
          {
            *__error() = 34;
          }

          *v33 = v9;
          return;
        }

LABEL_77:
        generalSlowpath(v32, v30, v44, 164, 0);
        return;
    }

    if (v10)
    {
      v12 = (1 << v13) - 1;
      v11 = v12 + v28;
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  if ((v21 + v18) >> 11 != v15)
  {
    goto LABEL_77;
  }

  v5 = 0x8000000000000000;
  if ((v39 & 1) == 0)
  {
    v5 = 0;
  }

  *v33 = v5 | ((v14 + 1022) << 52) | v15 & 0xFFFFFFFFFFFFFLL;
}

void strtoencf64x(double *a1, uint64_t a2, uint64_t a3)
{
  v4 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v3)
  {
    _ffpp_strtoencf64_l(a1, a2, a3, v3);
  }

  else
  {
    _ffpp_strtoencf64_l(a1, a2, a3, __global_locale);
  }
}

double strtod(const char *a1, char **a2)
{
  *&v3[2] = a1;
  *&v3[1] = a2;
  v3[0] = 0.0;
  v4 = 0;
  v5 = __locale_key;
  v6 = __locale_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 8 * v6);
  if (v4)
  {
    _ffpp_strtoencf64_l(v3, a1, a2, v4);
  }

  else
  {
    _ffpp_strtoencf64_l(v3, a1, a2, __global_locale);
  }

  return v3[0];
}

double strtod_l(const char *a1, char **a2, locale_t a3)
{
  *&v4[3] = a1;
  *&v4[2] = a2;
  *&v4[1] = a3;
  v4[0] = 0.0;
  _ffpp_strtoencf64_l(v4, a1, a2, a3);
  return v4[0];
}

long double strtold(const char *a1, char **a2)
{
  *&v3[2] = a1;
  *&v3[1] = a2;
  v3[0] = 0.0;
  v4 = 0;
  v5 = __locale_key;
  v6 = __locale_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 8 * v6);
  if (v4)
  {
    _ffpp_strtoencf64_l(v3, a1, a2, v4);
  }

  else
  {
    _ffpp_strtoencf64_l(v3, a1, a2, __global_locale);
  }

  return v3[0];
}

long double strtold_l(const char *a1, char **a2, locale_t a3)
{
  *&v4[3] = a1;
  *&v4[2] = a2;
  *&v4[1] = a3;
  v4[0] = 0.0;
  _ffpp_strtoencf64_l(v4, a1, a2, a3);
  return v4[0];
}

uint64_t fastParse64(uint64_t a1)
{
  v32 = *(a1 + 40);
  v31 = 0;
  v30 = 0;
  v29 = 0;
  *(a1 + 96) = 0;
  while (*v32 < 0x30u || *v32 > 0x39u)
  {
    if (*v32 == 45)
    {
      *(a1 + 96) = 1;
      ++v32;
      break;
    }

    if (*v32 == 43)
    {
      ++v32;
      break;
    }

    if (*v32 != 32 && !isspace(*v32))
    {
      break;
    }

    ++v32;
  }

  switch(*v32)
  {
    case '0':
      if (v32[1] == 120 || v32[1] == 88)
      {
        hexFloat(v32, a1);
        return 0;
      }

      while (*v32 == 48)
      {
        ++v32;
      }

LABEL_70:
      v24 = v32;
      v22 = *v32 - 48;
      if (v22 < 0xAu)
      {
        v31 = v22;
        for (i = *++v32 - 48; i < 0xAu; i = *v32 - 48)
        {
          v31 = 10 * v31 + i;
          ++v32;
        }

        v30 = v32 - v24;
      }

      if (*(a1 + 56))
      {
        if (*v32 != 32 && *v32 && *v32 != 101 && *v32 != 69)
        {
          v1 = localeconv_l(*(a1 + 56));
          if (!v1->decimal_point[1])
          {
            if (*v1->decimal_point == *v32)
            {
              ++v32;
            }

            goto LABEL_93;
          }

          v21 = v32;
          v20 = 1;
          for (j = v1->decimal_point; *j; ++j)
          {
            v20 = v20 & (*v32++ == *j);
          }

          if (v20)
          {
LABEL_93:
            v18 = v32;
            if (v30)
            {
              v14 = *v32 - 48;
              if (v14 < 0xA)
              {
                ++v32;
                v31 = 10 * v31 + v14;
                for (k = *v32 - 48; k < 0xA; k = *v32 - 48)
                {
                  ++v32;
                  v31 = 10 * v31 + k;
                }
              }

              v30 += v32 - v18;
            }

            else
            {
              while (*v32 == 48)
              {
                ++v32;
              }

              v24 = v32;
              v16 = *v32 - 48;
              if (v16 < 0xA)
              {
                ++v32;
                v31 = v16;
                for (m = *v32 - 48; m < 0xA; m = *v32 - 48)
                {
                  v31 = 10 * v31 + m;
                  ++v32;
                }
              }

              v30 = v32 - v24;
            }

            v29 = v18 - v32;
            goto LABEL_107;
          }

          v32 = v21;
        }
      }

      else if (*v32 == 46)
      {
        ++v32;
        goto LABEL_93;
      }

LABEL_107:
      if (*v32 == 101 || *v32 == 69)
      {
        v13 = v32;
        v34 = v32 + 1;
        v12 = 1;
        if (*v34 == 45)
        {
          v12 = -1;
          ++v34;
        }

        else if (*v34 == 43)
        {
          ++v34;
        }

        v10 = *v34 - 48;
        if (v10 >= 0xAu)
        {
          v32 = v13;
        }

        else
        {
          v9 = v10;
          v32 = v34 + 1;
          for (n = *v32 - 48; n < 0xAu; n = *v32 - 48)
          {
            ++v32;
            v9 = 10 * v9 + n;
          }

          if (v32 - v13 > 9)
          {
            v8 = v13 + 1;
            if (v13[1] == 45 || *v8 == 43)
            {
              v8 = v13 + 2;
            }

            while (*v8 == 48)
            {
              ++v8;
            }

            if (v32 - v8 > 8)
            {
              v9 = 99999999;
            }
          }

          v29 += v9 * v12;
        }
      }

      if (*(a1 + 48))
      {
        **(a1 + 48) = v32;
      }

      if (v30)
      {
        if (v29 + v30 >= *(a1 + 16))
        {
          if (v29 + v30 <= *(a1 + 20))
          {
            v7 = 0;
            if (v30 <= 19)
            {
              v25 = 0;
            }

            else
            {
              v31 = 0;
              v6 = 0;
              v5 = v24;
              while (v6 < 19)
              {
                v4 = *v5 - 48;
                if (v4 < 0xA)
                {
                  v31 = 10 * v31 + v4;
                  ++v6;
                }

                ++v5;
              }

              v25 = v5;
              v7 = v30 - 19;
            }

            *(a1 + 72) = v30;
            *(a1 + 80) = v25;
            *(a1 + 88) = v7;
            *(a1 + 64) = v31;
            *(a1 + 92) = v29;
            return 1;
          }

          else
          {
            overflow(a1);
            return 0;
          }
        }

        else
        {
          underflow(a1);
          return 0;
        }
      }

      else
      {
        bzero(*(a1 + 32), *(a1 + 12));
        if (*(a1 + 96))
        {
          v2 = 0x80;
        }

        else
        {
          v2 = 0;
        }

        *(*(a1 + 32) + *(a1 + 12) - 1) = v2;
        return 0;
      }

    case 'i':
    case 'I':
      if ((v32[1] == 110 || v32[1] == 78) && (v32[2] == 102 || v32[2] == 70))
      {
        if ((v32[3] == 105 || v32[3] == 73) && (v32[4] == 110 || v32[4] == 78) && (v32[5] == 105 || v32[5] == 73) && (v32[6] == 116 || v32[6] == 84) && (v32[7] == 121 || v32[7] == 89))
        {
          v33 = v32 + 8;
        }

        else
        {
          v33 = v32 + 3;
        }

        if (*(a1 + 48))
        {
          **(a1 + 48) = v33;
        }

        infinity(a1);
        return 0;
      }

      break;
    case 'n':
    case 'N':
      if ((v32[1] == 97 || v32[1] == 65) && (v32[2] == 110 || v32[2] == 78))
      {
        parseNan(v32, a1);
        return 0;
      }

      break;
    default:
      if (*v32 >= 0x30u && *v32 <= 0x39u)
      {
        goto LABEL_70;
      }

      if (*(a1 + 56))
      {
        decimal_point = localeconv_l(*(a1 + 56))->decimal_point;
        if (decimal_point[1])
        {
          v27 = 1;
          for (ii = decimal_point; *ii; ++ii)
          {
            v27 = v27 & (*v32++ == *ii);
          }

          if (v27 && *v32 >= 0x30u && *v32 <= 0x39u)
          {
            goto LABEL_93;
          }
        }

        else if (*decimal_point == *v32 && *++v32 >= 0x30u && *v32 <= 0x39u)
        {
          goto LABEL_93;
        }
      }

      else if (*v32 == 46 && *++v32 >= 0x30u && *v32 <= 0x39u)
      {
        goto LABEL_93;
      }

      break;
  }

  if (*(a1 + 48))
  {
    **(a1 + 48) = *(a1 + 40);
  }

  bzero(*(a1 + 32), *(a1 + 12));
  return 0;
}

void generalSlowpath(uint64_t a1, int a2, void *a3, int a4, char a5)
{
  v62 = a1;
  v61 = a2;
  v60 = a3;
  v59 = a4;
  v58 = a5;
  v57 = 0uLL;
  v56 = 0;
  v55 = 0;
  v54 = *(a1 + 72);
  if (v54 > *(a1 + 24))
  {
    v54 = *(v62 + 24) + 1;
  }

  v53 = *(v62 + 92) - v54 + *(v62 + 72);
  v52 = (1701 * v54) >> 9;
  v51 = (v52 + 31) / 32;
  if (v53 < 0)
  {
    v19 = -v53;
  }

  else
  {
    v19 = v53;
  }

  v50 = (1189 * (v19 + 1)) >> 9;
  v49 = (v50 + 31) / 32;
  if ((v53 & 0x80000000) == 0)
  {
    v48 = v51 + v49;
    v46 = 0;
    v47 = 0;
    if (v51 + v49 <= v59)
    {
      bzero(v60, 4 * v59);
      v47 = v60;
      v46 = v60;
      goto LABEL_14;
    }

    if ((v58 & 1) == 0)
    {
      __assert_rtn("generalSlowpath", "strtofp.c", 1867, "heapAllocOK");
    }

    v55 = calloc(v48, 4uLL);
    if (v55)
    {
      v47 = v55;
      v46 = v55;
LABEL_14:
      initMPFromDigits(&v46, v62);
      multiplyByFiveToTheN(&v46, v53);
      if (v47 - v46 > v48)
      {
        __assert_rtn("generalSlowpath", "strtofp.c", 1879, "(workMP.msw - workMP.lsw) <= totalWordsNeeded");
      }

      v45 = bitCountMP(v46, v47);
      v56 = v45 + v53;
      *&v44 = shiftRightMPWithRounding(v46, v47, v45 - *v62, 0, *(v62 + 96) & 1, v61);
      *(&v44 + 1) = v5;
      v57 = v44;
      v6 = bitCountMP(v44, v5);
      if (v6 > *v62)
      {
        ++v56;
        *&v43 = shiftRightMPWithTruncation(v57, *(&v57 + 1), 1);
        *(&v43 + 1) = v7;
        v57 = v43;
      }

      if (v56 > *(v62 + 8))
      {
        free(v55);
        overflow(v62);
        return;
      }

      goto LABEL_53;
    }

LABEL_12:
    bzero(*(v62 + 32), *(v62 + 12));
    return;
  }

  v42 = v52;
  if (v52 < v50 + *v62 + 2)
  {
    v42 = v50 + *v62 + 2;
  }

  v41 = (v42 + 31) / 32 + 2;
  v40 = v49;
  v39 = v41 + v49;
  v38 = 0;
  if (v41 + v49 > v59)
  {
    if ((v58 & 1) == 0)
    {
      __assert_rtn("generalSlowpath", "strtofp.c", 1925, "heapAllocOK");
    }

    v55 = calloc(v39, 4uLL);
    if (!v55)
    {
      goto LABEL_12;
    }

    v38 = v55;
  }

  else
  {
    bzero(v60, 4 * v59);
    v38 = v60;
  }

  v36 = v38;
  v37 = v38;
  v34 = &v38[v41];
  v35 = v34;
  fiveToTheN(&v34, -v53);
  if (v35 - v34 > v40)
  {
    __assert_rtn("generalSlowpath", "strtofp.c", 1940, "(denominator.msw - denominator.lsw) <= denominatorWordsNeeded");
  }

  if (!*(v35 - 1))
  {
    __assert_rtn("generalSlowpath", "strtofp.c", 1941, "denominator.msw[-1] != 0");
  }

  initMPFromDigits(&v36, v62);
  if (!*(v37 - 4))
  {
    __assert_rtn("generalSlowpath", "strtofp.c", 1946, "numerator.msw[-1] != 0");
  }

  v18 = bitCountMP(v34, v35);
  v8 = bitCountMP(v36, v37);
  v33 = v18 - v8 + *v62 + 2;
  if (v33 <= 0)
  {
    v33 = 0;
  }

  else
  {
    shiftLeftMP(&v36, v33);
    if (!*(v37 - 4))
    {
      __assert_rtn("generalSlowpath", "strtofp.c", 1950, "numerator.msw[-1] != 0");
    }

    if ((v37 - v36) / 4 >= v41)
    {
      __assert_rtn("generalSlowpath", "strtofp.c", 1951, "(numerator.msw - numerator.lsw) < numeratorWordsNeeded");
    }
  }

  v32 = 0;
  v30 = divideMPByMP(v36, v37, v34, v35, &v32);
  v31 = v9;
  v29 = bitCountMP(v30, v9);
  v56 = v29 + v53 - v33;
  if (v56 <= *(v62 + 4))
  {
    if (v56 <= *(v62 + 4) - *v62)
    {
      free(v55);
      underflow(v62);
      return;
    }

    v26 = v56 - (*(v62 + 4) - *v62 + 1);
    v56 = *(v62 + 4);
    *&v25 = shiftRightMPWithRounding(v30, v31, v29 - v26, v32, *(v62 + 96) & 1, v61);
    *(&v25 + 1) = v13;
    v57 = v25;
    v14 = bitCountMP(v25, v13);
    if (v14 < *v62)
    {
      *__error() = 34;
    }

    else
    {
      ++v56;
    }
  }

  else
  {
    *&v28 = shiftRightMPWithRounding(v30, v31, v29 - *v62, v32, *(v62 + 96) & 1, v61);
    *(&v28 + 1) = v10;
    v57 = v28;
    v11 = bitCountMP(v28, v10);
    if (v11 > *v62)
    {
      ++v56;
      *&v27 = shiftRightMPWithTruncation(v57, *(&v57 + 1), 1);
      *(&v27 + 1) = v12;
      v57 = v27;
    }

    if (v56 > *(v62 + 8))
    {
      free(v55);
      overflow(v62);
      return;
    }
  }

LABEL_53:
  v24 = (*(&v57 + 1) - v57) / 4;
  v23 = (*v62 + 31) / 32;
  if (v24 < v23)
  {
    bzero((v57 + 4 * v24), 4 * (v23 - v24));
  }

  memcpy(*(v62 + 32), v57, (*v62 + 7) / 8u);
  free(v55);
  v21 = v56 - *(v62 + 4);
  if (*(v62 + 12) <= 8)
  {
    v15 = 8 * *(v62 + 12) - *v62 + 1;
    v21 <<= 15 - (8 * *(v62 + 12) - *v62);
  }

  if (*(v62 + 96))
  {
    v16 = 0x8000;
  }

  else
  {
    v16 = 0;
  }

  v22 = v21 | v16;
  v20 = *(v62 + 32) + *(v62 + 12);
  v17 = *(v62 + 12);
  if (v17 == 2)
  {
    *(v20 - 1) = *(*(v62 + 32) + 1) & 3 | HIBYTE(v22);
  }

  else
  {
    switch(v17)
    {
      case 4:
        *(v20 - 2) = *(*(v62 + 32) + 2) & 0x7F | v22;
        break;
      case 8:
        *(v20 - 2) = *(*(v62 + 32) + 6) & 0xF | v22;
        break;
      case 10:
      case 16:
        *(v20 - 2) = v22;
        break;
    }

    *(v20 - 1) = HIBYTE(v22);
  }
}

void hexFloat(uint64_t a1, uint64_t a2)
{
  v29 = (a1 + 2);
  v28 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  while (1)
  {
    v11 = 0;
    if (hexdigit[*v29] < 0x10u)
    {
      v11 = v28 < 0x1000000000000000;
    }

    if (!v11)
    {
      break;
    }

    v28 = 16 * v28 + hexdigit[*v29++];
  }

  while (1)
  {
    v10 = 0;
    if (hexdigit[*v29] < 0x10u)
    {
      v10 = v26 < 0x800000000000000;
    }

    if (!v10)
    {
      break;
    }

    v26 = (16 * v26) | (v28 >> 60);
    v28 = 16 * v28 + hexdigit[*v29++];
  }

  while (hexdigit[*v29] < 0x10u)
  {
    v25 |= hexdigit[*v29];
    v23 += 4;
    ++v29;
  }

  v22 = v29 - (a1 + 2);
  if (*(a2 + 56))
  {
    v21 = v29;
    for (i = localeconv_l(*(a2 + 56))->decimal_point; *i; ++i)
    {
      if (*v29 != *i)
      {
        v29 = v21;
        goto LABEL_34;
      }

      ++v29;
    }
  }

  else
  {
    if (*v29 != 46)
    {
      goto LABEL_34;
    }

    ++v29;
  }

  v19 = v29;
  if (!v26)
  {
    while (1)
    {
      v9 = 0;
      if (hexdigit[*v29] < 0x10u)
      {
        v9 = v28 < 0x1000000000000000;
      }

      if (!v9)
      {
        break;
      }

      v28 = 16 * v28 + hexdigit[*v29++];
    }
  }

  while (1)
  {
    v8 = 0;
    if (hexdigit[*v29] < 0x10u)
    {
      v8 = v26 < 0x800000000000000;
    }

    if (!v8)
    {
      break;
    }

    v26 = (16 * v26) | (v28 >> 60);
    v28 = 16 * v28 + hexdigit[*v29++];
  }

  v23 -= 4 * (v29 - v19);
  while (hexdigit[*v29] < 0x10u)
  {
    v25 |= hexdigit[*v29++];
  }

  v22 += v29 - v19;
LABEL_34:
  if (*v29 == 112 || *v29 == 80)
  {
    v18 = v29++;
    v17 = 0;
    if (*v29 == 45)
    {
      v17 = 1;
      ++v29;
    }

    else if (*v29 == 43)
    {
      ++v29;
    }

    if (*v29 >= 0x30u && *v29 <= 0x39u)
    {
      v16 = 0;
      for (j = *v29 - 48; j < 0xA; j = *v29 - 48)
      {
        if (v16 <= 99999999)
        {
          v16 = 10 * v16 + j;
        }

        else
        {
          v16 = 99999999;
        }

        ++v29;
      }

      if (v17)
      {
        v16 = -v16;
      }

      v23 += v16;
    }

    else
    {
      v29 = v18;
    }
  }

  if (!v28 && !v26)
  {
    if (!v22)
    {
      v29 = (a1 + 1);
    }

    v24 = *(a2 + 4);
    goto LABEL_111;
  }

  if (!v26)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      v26 = v28 >> 1;
      v28 <<= 63;
      v23 -= 63;
    }

    else
    {
      v26 = v28;
      v28 = 0;
      v23 -= 64;
    }
  }

  v14 = __clz(v26) - 1;
  if (v14 > 0)
  {
    v26 = (v26 << v14) | (v28 >> (64 - v14));
    v28 <<= v14;
    v23 -= v14;
  }

  v24 = v23 + 127;
  if (v25)
  {
    v28 |= 1uLL;
  }

  if (v24 <= *(a2 + 8) && v24 >= *(a2 + 4) - *a2 + 1)
  {
    if (v24 <= *(a2 + 4))
    {
      v13 = 128 - (v24 - *(a2 + 4) + *a2);
      v24 = *(a2 + 4);
    }

    else
    {
      v13 = 127 - *a2;
    }

    if (v13 >= 64)
    {
      v12 = (v26 << (0x80 - v13)) | (v28 >> (v13 - 64));
      if (v28 << (0x80 - v13))
      {
        v12 |= 1uLL;
      }

      v28 = v26 >> (v13 - 64);
      v27 = 0;
    }

    else
    {
      v12 = v28 << (64 - v13);
      v28 = (v28 >> v13) | (v26 << (64 - v13));
      v27 = v26 >> v13;
    }

    v7 = fegetround();
    switch(v7)
    {
      case 0:
        goto LABEL_133;
      case 0x400000:
        if ((*(a2 + 96) & 1) == 0)
        {
          if (v12)
          {
            if (!++v28)
            {
              ++v27;
            }
          }
        }

        goto LABEL_95;
      case 0x800000:
        if (*(a2 + 96))
        {
          if (v12)
          {
            if (!++v28)
            {
              ++v27;
            }
          }
        }

        goto LABEL_95;
    }

    if (v7 != 12582912)
    {
LABEL_133:
      if (v12 > 0x8000000000000000 || v12 == 0x8000000000000000 && (v28) && !++v28)
      {
        ++v27;
      }
    }

LABEL_95:
    if (v24 == *(a2 + 4))
    {
      v6 = *a2 - 1;
    }

    else
    {
      v6 = *a2;
    }

    if (v6 > 64 && v27 >> (v6 - 64) || v6 == 64 && v27 || v6 < 64 && (v27 || v28 >> v6))
    {
      if (v24 > *(a2 + 4))
      {
        v28 = (v28 >> 1) | (v27 << 63);
      }

      ++v24;
    }

    else if (v24 == *(a2 + 4) && v12)
    {
      *__error() = 34;
    }
  }

LABEL_111:
  if (*(a2 + 48))
  {
    **(a2 + 48) = v29;
  }

  if (v24 <= *(a2 + 8))
  {
    if (v24 >= *(a2 + 4) - *a2 + 1)
    {
      v5 = *(a2 + 12);
      switch(v5)
      {
        case 2:
          if (*(a2 + 96))
          {
            v2 = 0x8000;
          }

          else
          {
            v2 = 0;
          }

          **(a2 + 32) = v2 | ((v24 - *(a2 + 4)) << 10) | v28 & 0x3FF;
          break;
        case 4:
          v3 = 0x80000000;
          if ((*(a2 + 96) & 1) == 0)
          {
            v3 = 0;
          }

          **(a2 + 32) = v3 | ((v24 - *(a2 + 4)) << 23) | v28 & 0x7FFFFF;
          break;
        case 8:
          v4 = 0x8000000000000000;
          if ((*(a2 + 96) & 1) == 0)
          {
            v4 = 0;
          }

          **(a2 + 32) = v4 | ((v24 - *(a2 + 4)) << 52) | v28 & 0xFFFFFFFFFFFFFLL;
          break;
      }
    }

    else
    {
      underflow(a2);
    }
  }

  else
  {
    overflow(a2);
  }
}

void infinity(uint64_t a1)
{
  v4 = *(a1 + 12);
  switch(v4)
  {
    case 2:
      if (*(a1 + 96))
      {
        v1 = -1024;
      }

      else
      {
        v1 = 31744;
      }

      **(a1 + 32) = v1;
      break;
    case 4:
      v2 = -8388608;
      if ((*(a1 + 96) & 1) == 0)
      {
        v2 = 2139095040;
      }

      **(a1 + 32) = v2;
      break;
    case 8:
      v3 = 0xFFF0000000000000;
      if ((*(a1 + 96) & 1) == 0)
      {
        v3 = 0x7FF0000000000000;
      }

      **(a1 + 32) = v3;
      break;
    default:
      bzero(*(a1 + 32), *(a1 + 12));
      break;
  }
}

void *parseNan(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = (a1 + 3);
  __src = 0;
  v16 = 0;
  v17 = 0;
  v11 = (a1 + 3);
  if (*(a1 + 3) == 40)
  {
    ++v12;
    v10 = 10;
    if (*v12 == 48)
    {
      if (*++v12 == 120)
      {
        v10 = 16;
        ++v12;
      }

      else
      {
        v10 = 8;
      }
    }

    *&v9 = &__src;
    *(&v9 + 1) = &v17;
    v8 = v9;
    while (hexdigit[*v12] < v10)
    {
      multiplyMPByN(&v8, v10);
      addToMP(&v8, hexdigit[*v12]);
      *(&v8 + 1) = *(&v9 + 1);
      ++v12;
    }

    if (*v12 == 41)
    {
      ++v12;
    }

    else
    {
      __src = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v7 = 0;
        if (*v12)
        {
          v7 = *v12 != 41;
        }

        if (!v7)
        {
          break;
        }

        ++v12;
      }

      if (*v12 == 41)
      {
        ++v12;
      }

      else
      {
        v12 = v11;
      }
    }
  }

  result = memcpy(*(v13 + 32), &__src, *(v13 + 12));
  v6 = *(v13 + 12);
  switch(v6)
  {
    case 2:
      if (*(v13 + 96))
      {
        v3 = -2;
      }

      else
      {
        v3 = 126;
      }

      *(*(v13 + 32) + 1) |= v3;
      break;
    case 4:
      *(*(v13 + 32) + 2) |= 0xC0u;
      if (*(v13 + 96))
      {
        v4 = -1;
      }

      else
      {
        v4 = 127;
      }

      *(*(v13 + 32) + 3) = v4;
      break;
    case 8:
      *(*(v13 + 32) + 6) |= 0xF8u;
      if (*(v13 + 96))
      {
        v5 = -1;
      }

      else
      {
        v5 = 127;
      }

      *(*(v13 + 32) + 7) = v5;
      break;
  }

  if (*(v13 + 48))
  {
    **(v13 + 48) = v12;
  }

  return result;
}

uint64_t underflow(uint64_t a1)
{
  *__error() = 34;
  v6 = 0;
  result = fegetround();
  if (result == 0x800000 && (*(a1 + 96) & 1) != 0 || result == 0x400000 && (*(a1 + 96) & 1) == 0)
  {
    v6 = 1;
  }

  v5 = *(a1 + 12);
  switch(v5)
  {
    case 2:
      if (*(a1 + 96))
      {
        v2 = 0x8000;
      }

      else
      {
        v2 = 0;
      }

      **(a1 + 32) = v2 | v6;
      break;
    case 4:
      v3 = 0x80000000;
      if ((*(a1 + 96) & 1) == 0)
      {
        v3 = 0;
      }

      **(a1 + 32) = v3 | v6;
      break;
    case 8:
      v4 = 0x8000000000000000;
      if ((*(a1 + 96) & 1) == 0)
      {
        v4 = 0;
      }

      **(a1 + 32) = v4 | v6;
      break;
  }

  return result;
}

void overflow(uint64_t a1)
{
  *__error() = 34;
  v2 = fegetround();
  v1 = *(a1 + 96) & 1;
  if (v2 == 12582912 || v2 == 0x800000 && (*(a1 + 96) & 1) == 0 || v2 == 0x400000 && (*(a1 + 96) & 1) != 0)
  {
    max_value(a1);
  }

  else
  {
    infinity(a1);
  }
}

uint64_t multiplyMPByN(uint64_t result, unsigned int a2)
{
  v3 = 0;
  for (i = *result; i < *(result + 8); ++i)
  {
    v4 = v3 + *i * a2;
    *i = v4;
    v3 = HIDWORD(v4);
  }

  while (v3)
  {
    **(result + 8) = v3;
    v3 >>= 32;
    *(result + 8) += 4;
  }

  return result;
}

uint64_t addToMP(uint64_t result, unint64_t a2)
{
  for (i = *result; ; ++i)
  {
    v2 = 0;
    if (a2)
    {
      v2 = i < *(result + 8);
    }

    if (!v2)
    {
      break;
    }

    v5 = a2 + *i;
    *i = v5;
    a2 = HIDWORD(v5);
  }

  while (a2)
  {
    *i = a2;
    a2 >>= 32;
    ++i;
  }

  if (i > *(result + 8))
  {
    *(result + 8) = i;
  }

  return result;
}

int *max_value(int *result)
{
  v4 = result[3];
  switch(v4)
  {
    case 2:
      if (result[24])
      {
        v1 = -1025;
      }

      else
      {
        v1 = 31743;
      }

      **(result + 4) = v1;
      break;
    case 4:
      v2 = -8388609;
      if ((result[24] & 1) == 0)
      {
        v2 = 2139095039;
      }

      **(result + 4) = v2;
      break;
    case 8:
      v3 = 0xFFEFFFFFFFFFFFFFLL;
      if ((result[24] & 1) == 0)
      {
        v3 = 0x7FEFFFFFFFFFFFFFLL;
      }

      **(result + 4) = v3;
      break;
    default:
      return memset(*(result + 4), -1, result[3]);
  }

  return result;
}

uint64_t initMPFromDigits(uint64_t result, uint64_t a2)
{
  v11 = result;
  v10 = *result;
  for (i = *(a2 + 64); i; i >>= 32)
  {
    *v10++ = i;
  }

  *(result + 8) = v10;
  v8 = *(a2 + 88);
  v7 = 0;
  if (*(a2 + 72) > *(a2 + 24))
  {
    LODWORD(v8) = *(a2 + 24) - (*(a2 + 72) - *(a2 + 88));
    v7 = *(a2 + 88) - v8;
  }

  v6 = *(a2 + 80);
  while (v8 > 0)
  {
    if (v8 <= 9)
    {
      v2 = v8;
    }

    else
    {
      v2 = 9;
    }

    v5 = 0;
    for (j = 0; j < v2; ++j)
    {
      for (k = *v6 - 48; k > 9; k = *v6 - 48)
      {
        ++v6;
      }

      v5 = 10 * v5 + k;
      ++v6;
    }

    multiplyMPByN(v11, initMPFromDigits_powersOfTen[v2]);
    result = addToMP(v11, v5);
    LODWORD(v8) = v8 - v2;
  }

  if (v7 > 0)
  {
    result = multiplyMPByN(v11, 0xAu);
    while (v7 > 0)
    {
      if (*v6 == 48)
      {
        --v7;
      }

      else if (*v6 >= 0x31u && *v6 <= 0x39u)
      {
        return addToMP(v11, 1uLL);
      }

      ++v6;
    }
  }

  return result;
}

unsigned int **multiplyByFiveToTheN(unsigned int **result, int a2)
{
  while (a2 > 40)
  {
    v21 = 0u;
    v20 = *result;
    while (v20 < result[1])
    {
      v2 = v21 - 1413876383 * *v20;
      v3 = __CFADD__(v21, 0xC35CA4BFABB9F561 * *v20);
      *&v4 = v21 - 0x3CA35B4054460A9FLL * *v20;
      *(&v4 + 1) = ((__PAIR128__(493038065, 0xC35CA4BFABB9F561) * *v20) >> 64) + v3 + *(&v21 + 1);
      v5 = v20++;
      *v5 = v2;
      *&v4 = v4 >> 32;
      *(&v4 + 1) >>= 32;
      v21 = v4;
    }

    while (1)
    {
      v6 = v21 == 0;
      if (*(&v21 + 1))
      {
        v6 = 0;
      }

      if (v6)
      {
        break;
      }

      v7 = v20++;
      *v7 = v21;
      v21 >>= 32;
    }

    result[1] = v20;
    a2 -= 40;
  }

  while (a2 > 0)
  {
    v19 = 0u;
    if (a2 <= 27)
    {
      v16 = a2;
    }

    else
    {
      v16 = 27;
    }

    v18 = powersOfFive[v16];
    v17 = *result;
    while (v17 < result[1])
    {
      v8 = *v17 * v18;
      v9 = __CFADD__(v19, v8);
      v10 = v19 + v8;
      v11 = v9;
      *&v12 = v10;
      *(&v12 + 1) = ((v18 * *v17) >> 64) + (v11 != 0) + *(&v19 + 1);
      v13 = v17++;
      *v13 = v10;
      *&v12 = v12 >> 32;
      *(&v12 + 1) >>= 32;
      v19 = v12;
    }

    while (1)
    {
      v14 = v19 == 0;
      if (*(&v19 + 1))
      {
        v14 = 0;
      }

      if (v14)
      {
        break;
      }

      v15 = v17++;
      *v15 = v19;
      v19 >>= 32;
    }

    result[1] = v17;
    a2 -= 27;
  }

  return result;
}

uint64_t bitCountMP(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 0;
  }

  else
  {
    if (!*(a2 - 4))
    {
      __assert_rtn("bitCountMP", "strtofp.c", 1056, "work.msw[-1] != 0");
    }

    return (32 - __clz(*(a2 - 4)) + 32 * ((a2 - a1) / 4 - 1));
  }
}

uint64_t shiftRightMPWithRounding(uint64_t a1, uint64_t a2, int a3, int a4, char a5, int a6)
{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v19 = a4;
  v18 = a5;
  if (!a3)
  {
    return v21;
  }

  if (a3 < 0)
  {
    shiftLeftMP(&v21, -a3);
    return v21;
  }

  v22 = v21;
  v17 = a3 / 32;
  v16 = a3 % 32;
  if (a3 % 32)
  {
    *&v22 = v22 + 4 * v17;
    v13 = *v22 & ((1 << v16) - 1);
    v12 = (v22 + 4);
    v10 = (*v22 >> v16);
    while (v12 < *(&v22 + 1))
    {
      v11 = v10 | (*v12 << (32 - v16));
      *(v12 - 1) = v11;
      v10 = HIDWORD(v11);
      ++v12;
    }

    if (v10)
    {
      *(v12 - 1) = v10;
    }

    else
    {
      *(&v22 + 1) -= 4;
    }

    if (!a6)
    {
      goto LABEL_49;
    }

    if (a6 != 0x400000)
    {
      if (a6 != 0x800000)
      {
        if (a6 == 12582912)
        {
          return v22;
        }

LABEL_49:
        v8 = 1 << (v16 - 1);
        if (v13 >= v8)
        {
          if (v13 > v8)
          {
            goto LABEL_59;
          }

          for (i = v21; i < v22; ++i)
          {
            v19 |= *i;
          }

          if (v19 || *(&v22 + 1) > v22 && (*v22 & 1) != 0)
          {
            goto LABEL_59;
          }
        }

        return v22;
      }

      v18 = (a5 ^ 1) & 1;
    }

    v20 = a4 | v13;
    for (j = v21; j < v22; ++j)
    {
      v20 |= *j;
    }

    if ((v18 & 1) == 0 && v20)
    {
      goto LABEL_59;
    }

    return v22;
  }

  *&v22 = v22 + 4 * v17;
  switch(a6)
  {
    case 0:
      break;
    case 4194304:
LABEL_12:
      for (k = v21; k < v22; ++k)
      {
        v19 |= *k;
      }

      if ((v18 & 1) == 0 && v19)
      {
        goto LABEL_59;
      }

      return v22;
    case 8388608:
      v18 = (a5 ^ 1) & 1;
      goto LABEL_12;
    case 12582912:
      return v22;
  }

  if (*(v22 - 4) >= 0x80000000)
  {
    if (*(v22 - 4) > 0x80000000)
    {
      goto LABEL_59;
    }

    for (m = v21; m < v22 - 4; ++m)
    {
      v19 |= *m;
    }

    if (v19 || *(&v22 + 1) > v22 && (*v22 & 1) != 0)
    {
LABEL_59:
      addToMP(&v22, 1uLL);
    }
  }

  return v22;
}

unsigned int **fiveToTheN(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    v4 = a2;
  }

  else
  {
    v4 = 27;
  }

  v6 = powersOfFive[v4];
  v5 = *a1;
  while (v6)
  {
    v2 = v5++;
    *v2 = v6;
    v6 >>= 32;
  }

  *(a1 + 8) = v5;
  return multiplyByFiveToTheN(a1, a2 - v4);
}

void shiftLeftMP(uint64_t a1, int a2)
{
  v6 = a2 / 32;
  v5 = a2 % 32;
  if (a2 / 32 > 0)
  {
    memmove((*a1 + 4 * v6), *a1, 4 * ((*(a1 + 8) - *a1) / 4));
    bzero(*a1, 4 * v6);
    *(a1 + 8) += 4 * v6;
  }

  if (v5 > 0)
  {
    v3 = 0;
    for (i = *a1; i < *(a1 + 8); ++i)
    {
      v4 = v3 | (*i << v5);
      *i = v4;
      v3 = HIDWORD(v4);
    }

    if (v3)
    {
      *i = v3;
      *(a1 + 8) = i + 1;
    }
  }
}

uint64_t divideMPByMP(unint64_t a1, unint64_t a2, unsigned int *a3, unint64_t a4, _DWORD *a5)
{
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v31 = a3;
  v32 = a4;
  if (a2 <= a1)
  {
    __assert_rtn("divideMPByMP", "strtofp.c", 1343, "numerator.msw > numerator.lsw");
  }

  if (v32 <= v31)
  {
    __assert_rtn("divideMPByMP", "strtofp.c", 1344, "denominator.msw > denominator.lsw");
  }

  if (!*(*(&v33 + 1) - 4))
  {
    __assert_rtn("divideMPByMP", "strtofp.c", 1345, "numerator.msw[-1] != 0");
  }

  if (!*(v32 - 4))
  {
    __assert_rtn("divideMPByMP", "strtofp.c", 1346, "denominator.msw[-1] != 0");
  }

  if ((v32 - v31) / 4 == 1)
  {
    v29 = *v31;
    v27 = 0;
    v26 = *(&v33 + 1);
    while (v26 > v33)
    {
      v28 = (v27 << 32) + *--v26;
      v25 = v28 / v29;
      *v26 = v25;
      v27 = v28 - v25 * v29;
    }

    *a5 = v27 != 0;
    while (!*(*(&v33 + 1) - 4))
    {
      *(&v33 + 1) -= 4;
    }

    return v33;
  }

  else
  {
    v24 = __clz(*(v32 - 4));
    shiftLeftMP(&v31, v24);
    shiftLeftMP(&v33, v24);
    if (*(*(&v33 + 1) - 4) >= *(v32 - 4))
    {
      **(&v33 + 1) = 0;
      *(&v33 + 1) += 4;
    }

    v9 = 1;
    if (*(&v33 + 1) >= v31)
    {
      v9 = v32 < v33;
    }

    if (!v9)
    {
      __assert_rtn("divideMPByMP", "strtofp.c", 1390, "(numerator.msw < denominator.lsw) || (denominator.msw < numerator.lsw)");
    }

    *&v34 = *(&v33 + 1) + 4;
    *(&v34 + 1) = *(&v33 + 1) + 4;
    v23 = (*(&v33 + 1) - v33) / 4 - (v32 - v31) / 4;
    for (i = 0; i < v23; ++i)
    {
      v20 = *(*(&v33 + 1) - 8) + (*(*(&v33 + 1) - 4) << 32);
      if (*(*(&v33 + 1) - 4) == *(v32 - 4))
      {
        v21 = -1;
      }

      else
      {
        v21 = v20 / *(v32 - 4);
      }

      while (1)
      {
        v19 = v20 - v21 * *(v32 - 4);
        if (v19 > 0xFFFFFFFF)
        {
          break;
        }

        v5 = v20 - v21 * *(v32 - 4);
        if (*(v32 - 8) * v21 <= *(*(&v33 + 1) - 12) + (v19 << 32))
        {
          break;
        }

        --v21;
      }

      v16 = 0;
      v15 = v31;
      v14 = (*(&v33 + 1) + 4 * ((v32 - v31) / -4) - 4);
      while (v15 < v32)
      {
        v6 = v16 + v21 * *v15;
        v7 = *v14 < v6;
        *v14 -= v6;
        v16 = HIDWORD(v6) + v7;
        ++v14;
        ++v15;
      }

      if (*(*(&v33 + 1) - 4) < v16)
      {
        --v21;
        v17 = 0;
        v13 = v31;
        v12 = (*(&v33 + 1) + 4 * ((v32 - v31) / -4) - 4);
        while (v13 < v32)
        {
          v18 = v17 + *v12 + *v13;
          *v12 = v18;
          v17 = HIDWORD(v18);
          ++v12;
          ++v13;
        }
      }

      *&v34 = v34 - 4;
      *v34 = v21;
      *(&v33 + 1) -= 4;
    }

    v11 = 0;
    for (j = v33; j < *(&v33 + 1); ++j)
    {
      v11 |= *j;
    }

    *a5 = v11 != 0;
    while (!*(*(&v34 + 1) - 4))
    {
      *(&v34 + 1) -= 4;
    }
  }

  return v34;
}

int lchflags(const char *a1, __uint32_t a2)
{
  v6 = a1;
  v5 = a2;
  v3 = xmmword_C2018;
  v4 = 0;
  return setattrlist(a1, &v3, &v5, 4uLL, 1u);
}

int lchmod(const char *a1, mode_t a2)
{
  v6 = a1;
  v5 = a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = 0x2000000000005;
  v3 = a2;
  return setattrlist(a1, v4, &v3, 4uLL, 1u);
}

int lutimes(const char *a1, const timeval *a2)
{
  v11 = a1;
  v10 = a2;
  memset(&__b, 0, sizeof(__b));
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v4 = 0u;
  v5 = 0u;
  if (lstat(v11, &__b) < 0)
  {
    return -1;
  }

  if ((__b.st_mode & 0xF000) == 0xA000)
  {
    v7 = 0;
    v8 = 0;
    v6 = 0x140000000005;
    if (v10)
    {
      *&v5 = v10->tv_sec;
      *(&v5 + 1) = 1000 * v10->tv_usec;
      *&v4 = v10[1].tv_sec;
      *(&v4 + 1) = 1000 * v10[1].tv_usec;
    }

    else
    {
      v3.tv_sec = 0;
      *&v3.tv_usec = 0;
      if (gettimeofday(&v3, 0) < 0)
      {
        return -1;
      }

      *&v5 = v3.tv_sec;
      *(&v5 + 1) = 1000 * v3.tv_usec;
      v4 = __PAIR128__(*(&v5 + 1), v3.tv_sec);
    }

    return setattrlist(v11, &v6, &v4, 0x20uLL, 1u);
  }

  return utimes(v11, v10);
}

int fstatvfs(int a1, statvfs *a2)
{
  bzero(&v6, 0x200uLL);
  v3 = fstatfs(a1, &v6);
  if (!v3)
  {
    cvt_statfs_to_statvfs(&v6.f_bsize, a2);
  }

  return v3;
}

unsigned int *cvt_statfs_to_statvfs(unsigned int *result, uint64_t a2)
{
  *a2 = result[1];
  *(a2 + 8) = *result;
  *(a2 + 16) = *(result + 1);
  *(a2 + 20) = *(result + 2);
  *(a2 + 24) = *(result + 3);
  *(a2 + 28) = *(result + 4);
  *(a2 + 32) = *(result + 5);
  *(a2 + 36) = *(result + 5);
  *(a2 + 40) = result[12];
  *(a2 + 56) = 255;
  *(a2 + 48) = 0;
  if (result[16])
  {
    *(a2 + 48) |= 1uLL;
  }

  if ((result[16] & 8) != 0)
  {
    *(a2 + 48) |= 2uLL;
  }

  return result;
}

int statvfs(const char *a1, statvfs *a2)
{
  bzero(&v6, 0x200uLL);
  v3 = statfs(a1, &v6);
  if (!v3)
  {
    cvt_statfs_to_statvfs(&v6.f_bsize, a2);
  }

  return v3;
}

uint64_t (*backtrace_set_pcs_func(uint64_t (*result)(uint64_t a1, unsigned int a2, _DWORD *a3, int a4, unint64_t a5)))(uint64_t a1, unsigned int a2, _DWORD *a3, int a4, unint64_t a5)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = _thread_stack_pcs;
  }

  backtrace_get_pcs_func = v1;
  return result;
}

int backtrace(void **a1, int a2)
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = 0;
  backtrace_get_pcs_func(a1, a2, v4, 1, 0);
  while (1)
  {
    v3 = 0;
    if (v4[0])
    {
      v3 = v5[v4[0] - 1] == 0;
    }

    if (!v3)
    {
      break;
    }

    --v4[0];
  }

  return v4[0];
}

uint64_t backtrace_async(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = _thread_stack_async_pcs(a1, a2, &v6, 1, 0);
  while (1)
  {
    v4 = 0;
    if (v6)
    {
      v4 = *(v9 + 8 * (v6 - 1)) == 0;
    }

    if (!v4)
    {
      break;
    }

    --v6;
  }

  if (v7)
  {
    *v7 = v5;
  }

  return v6;
}

int backtrace_from_fp(void *startfp, void **array, int size)
{
  v7 = startfp;
  v6 = array;
  v5[1] = size;
  v5[0] = 0;
  _thread_stack_pcs(array, size, v5, 1, startfp);
  while (1)
  {
    v4 = 0;
    if (v5[0])
    {
      v4 = v6[v5[0] - 1] == 0;
    }

    if (!v4)
    {
      break;
    }

    --v5[0];
  }

  return v5[0];
}

void backtrace_image_offsets(void *const *array, image_offset *image_offsets, int size)
{
  v11 = array;
  v10 = image_offsets;
  v9 = size;
  v8 = &v3;
  v5 = &(&v3)[-4 * size];
  v7 = size;
  _dyld_images_for_addresses();
  for (i = 0; i < v9; ++i)
  {
    v4 = 20;
    uuid_copy(v10[i].uuid, &v5[4 * i]);
    *&v10->uuid[i * v4 + 16] = v5[4 * i + 2];
  }

  v3 = v8;
}

uint64_t __dirhelper(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (__dirhelper_func)
  {
    return __dirhelper_func(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

size_t confstr(int a1, char *a2, size_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v8 = a1;
  if (a1 == 1)
  {
    v17[0] = 8;
    v17[1] = 1;
    if (sysctl(v17, 2u, 0, &v12, 0, 0) != -1)
    {
      if (v13 && v14)
      {
        v10 = malloc_type_malloc();
        if (!v10)
        {
          return 0;
        }

        if (sysctl(v17, 2u, v10, &v12, 0, 0) == -1)
        {
          v11 = *__error();
          free(v10);
          *__error() = v11;
          return 0;
        }

        strncpy(v14, v10, v13 - 1);
        v14[v13 - 1] = 0;
        free(v10);
      }

      return v12;
    }

    return 0;
  }

  else
  {
    if ((v8 - 2) <= 2)
    {
      goto LABEL_40;
    }

    switch(v8)
    {
      case 6:
      case 5:
LABEL_41:
        v10 = "-W 32";
        goto LABEL_44;
      case 7:
        goto LABEL_40;
      case 9:
      case 8:
LABEL_42:
        v10 = "-W 64";
        goto LABEL_44;
      case 10:
        goto LABEL_40;
      case 12:
      case 11:
        goto LABEL_42;
      case 13:
LABEL_40:
        v10 = &unk_C42B5;
        goto LABEL_44;
      case 14:
        v10 = "_POSIX_V6_LP64_OFF64";
        goto LABEL_44;
    }

    if ((v8 - 20) <= 3)
    {
      goto LABEL_40;
    }

    switch(v8)
    {
      case 25:
      case 24:
        goto LABEL_41;
      case 27:
      case 26:
        goto LABEL_40;
      case 29:
      case 28:
        goto LABEL_42;
      case 31:
      case 30:
        goto LABEL_40;
      case 33:
      case 32:
        goto LABEL_42;
      case 35:
      case 34:
        goto LABEL_40;
    }

    if (v8 != 0x10000)
    {
      if (v8 == 65537)
      {
        v6 = v4;
        bzero(v4, 0x400uLL);
        v10 = v6;
        if (v6)
        {
          if (!__dirhelper(1u, v10, 1024))
          {
            v9 = *__error();
            v10 = getenv("TMPDIR");
            if (!v10 || access(v10, 2))
            {
              v10 = "/var/tmp/";
              if (access("/var/tmp/", 2))
              {
                if (v9 == 12)
                {
                  *__error() = 12;
                }

                else
                {
                  *__error() = 5;
                }

                return 0;
              }
            }
          }

          goto LABEL_44;
        }

LABEL_66:
        *__error() = 12;
        return 0;
      }

      if (v8 != 65538)
      {
        *__error() = 22;
        return 0;
      }

      v5 = v4;
      bzero(v4, 0x400uLL);
      v10 = v5;
      if (!v5)
      {
        goto LABEL_66;
      }

      if (!__dirhelper(2u, v10, 1024))
      {
        if (*__error() != 12)
        {
          *__error() = 5;
        }

        return 0;
      }

LABEL_44:
      if (v13 && v14)
      {
        strlcpy(v14, v10, v13);
      }

      return strlen(v10) + 1;
    }

    v7 = v4;
    bzero(v4, 0x400uLL);
    v10 = v7;
    if (!v7)
    {
      goto LABEL_66;
    }

    if (__dirhelper(0, v10, 1024))
    {
      goto LABEL_44;
    }

    if (*__error() != 12)
    {
      *__error() = 5;
    }

    return 0;
  }
}

char *__cdecl devname_r(dev_t a1, mode_t a2, char *buf, int len)
{
  v11 = a1;
  v10 = a2;
  v9 = buf;
  v8 = len;
  v7 = 0;
  v6 = 0;
  memset(&__b, 0, sizeof(__b));
  strcpy(__dst, "/dev/");
  v7 = opendir("/dev/");
  if (!v7)
  {
    return 0;
  }

  while (1)
  {
    v6 = readdir(v7);
    if (!v6)
    {
      break;
    }

    memmove(&__dst[5], v6->d_name, v6->d_namlen + 1);
    if (!lstat(__dst, &__b) && v11 == __b.st_rdev && v10 == (__b.st_mode & 0xF000))
    {
      if (v6->d_namlen + 1 <= v8)
      {
        strcpy(v9, v6->d_name);
        closedir(v7);
        return v9;
      }

      break;
    }
  }

  closedir(v7);
  return 0;
}

char *__cdecl devname(dev_t a1, mode_t a2)
{
  if (devname_buf)
  {
    return devname_r(a1, a2, devname_buf, 255);
  }

  devname_buf = malloc_type_malloc();
  if (devname_buf)
  {
    return devname_r(a1, a2, devname_buf, 255);
  }

  else
  {
    return 0;
  }
}

uint64_t getdiskbyname(const char *a1)
{
  v48 = a1;
  v47 = 0;
  v46 = 0;
  *v50 = off_C8020;
  i = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v36 = 0;
  if (cgetent(&v46, v50, a1) < 0)
  {
    return 0;
  }

  if (!getdiskbyname_dp)
  {
    getdiskbyname_dp = malloc_type_malloc();
    if (!getdiskbyname_dp)
    {
      return 0;
    }
  }

  bzero(getdiskbyname_dp, 0x118uLL);
  v44 = (getdiskbyname_dp + 8);
  for (i = v46; ; ++i)
  {
    v19 = 0;
    if (v44 < getdiskbyname_dp + 23)
    {
      v1 = *i;
      *v44 = *i;
      v19 = 0;
      if (v1)
      {
        v19 = 0;
        if (*v44 != 124)
        {
          v19 = *v44 != 58;
        }
      }
    }

    if (!v19)
    {
      break;
    }

    ++v44;
  }

  *v44 = 0;
  cgetstr(v46, "b0", (getdiskbyname_dp + 24));
  cgetstr(v46, "b1", (getdiskbyname_dp + 32));
  if (cgetstr(v46, "ty", &v44) > 0 && !strcmp(v44, "removable"))
  {
    *(getdiskbyname_dp + 88) |= 1u;
  }

  else if (v44 && !strcmp(v44, "simulated"))
  {
    *(getdiskbyname_dp + 88) |= 8u;
  }

  if (cgetcap(v46, "sf", 58))
  {
    *(getdiskbyname_dp + 88) |= 4u;
  }

  v35 = 0;
  if (cgetnum(v46, "se", &v35) == -1)
  {
    v18 = 512;
  }

  else
  {
    v18 = v35;
  }

  *(getdiskbyname_dp + 40) = v18;
  cgetnum(v46, "nt", (getdiskbyname_dp + 48));
  cgetnum(v46, "ns", (getdiskbyname_dp + 44));
  cgetnum(v46, "nc", (getdiskbyname_dp + 52));
  if (cgetstr(v46, "dt", &v44) <= 0)
  {
    v34 = 0;
    if (cgetnum(v46, "dt", &v34) == -1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v34;
    }

    *(getdiskbyname_dp + 4) = v17;
  }

  else
  {
    *(getdiskbyname_dp + 4) = gettype(v44, dktypenames);
  }

  v33 = 0;
  if (cgetnum(v46, "sc", &v33) == -1)
  {
    v16 = *(getdiskbyname_dp + 44) * *(getdiskbyname_dp + 48);
  }

  else
  {
    v16 = v33;
  }

  *(getdiskbyname_dp + 56) = v16;
  v32 = 0;
  if (cgetnum(v46, "su", &v32) == -1)
  {
    v15 = *(getdiskbyname_dp + 56) * *(getdiskbyname_dp + 52);
  }

  else
  {
    v15 = v32;
  }

  *(getdiskbyname_dp + 60) = v15;
  v31 = 0;
  if (cgetnum(v46, "rm", &v31) == -1)
  {
    v14 = 3600;
  }

  else
  {
    v14 = v31;
  }

  *(getdiskbyname_dp + 72) = v14;
  v30 = 0;
  if (cgetnum(v46, "il", &v30) == -1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v30;
  }

  *(getdiskbyname_dp + 74) = v13;
  v29 = 0;
  if (cgetnum(v46, "sk", &v29) == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v29;
  }

  *(getdiskbyname_dp + 76) = v12;
  v28 = 0;
  if (cgetnum(v46, "cs", &v28) == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v28;
  }

  *(getdiskbyname_dp + 78) = v11;
  v27 = 0;
  if (cgetnum(v46, "hs", &v27) == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v27;
  }

  *(getdiskbyname_dp + 80) = v10;
  v26 = 0;
  if (cgetnum(v46, "ts", &v26) == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v26;
  }

  *(getdiskbyname_dp + 84) = v9;
  v25 = 0;
  if (cgetnum(v46, "bs", &v25) == -1)
  {
    v8 = 0x2000;
  }

  else
  {
    v8 = v25;
  }

  *(getdiskbyname_dp + 140) = v8;
  v24 = 0;
  if (cgetnum(v46, "sb", &v24) == -1)
  {
    v7 = 0x2000;
  }

  else
  {
    v7 = v24;
  }

  *(getdiskbyname_dp + 144) = v7;
  strcpy(__dst, "px");
  strcpy(v40, "bx");
  strcpy(v39, "fx");
  strcpy(v38, "ox");
  strcpy(v37, "tx");
  v42 = 96;
  v47 = (getdiskbyname_dp + 148);
  v43 = 97;
  while (v43 < 105)
  {
    v37[1] = v43;
    v38[1] = v43;
    v39[1] = v43;
    v40[1] = v43;
    __dst[1] = v43;
    if (cgetnum(v46, __dst, v47) == -1)
    {
      *v47 = 0;
    }

    else
    {
      cgetnum(v46, v38, (v47 + 4));
      v23 = 0;
      if (cgetnum(v46, v39, &v23) == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = v23;
      }

      *(v47 + 2) = v6;
      if (*(v47 + 2))
      {
        v22 = 0;
        if (cgetnum(v46, v40, &v22))
        {
          *(v47 + 13) = 8;
        }

        else
        {
          *(v47 + 13) = v22 / *(v47 + 2);
        }
      }

      v21 = 0;
      if (cgetnum(v46, v37, &v21) == -1)
      {
        v5 = 0;
      }

      else
      {
        v5 = v21;
      }

      *(v47 + 12) = v5;
      if (!*(v47 + 12) && cgetstr(v46, v37, &v44) > 0)
      {
        v2 = gettype(v44, fstypenames);
        *(v47 + 12) = v2;
      }

      v42 = v43;
    }

    ++v43;
    v47 += 2;
  }

  *(getdiskbyname_dp + 138) = v42 - 96;
  strcpy(__dst, "dx");
  v36 = (getdiskbyname_dp + 92);
  v43 = 48;
  while (v43 < 53)
  {
    __dst[1] = v43;
    v20 = 0;
    if (cgetnum(v46, __dst, &v20) == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = v20;
    }

    *v36 = v4;
    ++v43;
    ++v36;
  }

  *getdiskbyname_dp = -2108275369;
  *(getdiskbyname_dp + 132) = -2108275369;
  free(v46);
  return getdiskbyname_dp;
}

uint64_t gettype(const char *a1, const char **a2)
{
  for (i = a2; *i; ++i)
  {
    if (!strcasecmp(a1, *i))
    {
      return (i - a2);
    }
  }

  if (isdigit(*a1))
  {
    return atoi(a1);
  }

  else
  {
    return 0;
  }
}

FTS *__cdecl fts_open(char *const *a1, int a2, int (__cdecl *a3)(const FTSENT **, const FTSENT **))
{
  v6 = a2;
  if ((a2 & 0xFFFFF300) != 0)
  {
    *__error() = 22;
    return 0;
  }

  else
  {
    if ((a2 & 0x800) != 0)
    {
      v6 = a2 | 8;
    }

    v4 = malloc_type_calloc();
    if (v4)
    {
      *(v4 + 56) = a3;
      *(v4 + 64) = v6;
      return __fts_open(a1, v4);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __fts_open(const char **a1, uint64_t a2)
{
  v15 = a1;
  v9 = 0;
  if ((*(a2 + 64) & 2) != 0)
  {
    *(a2 + 64) |= 4u;
  }

  if (fts_maxarglen(a1) <= 0x400)
  {
    v2 = fts_palloc(a2, 1024);
  }

  else
  {
    v7 = fts_maxarglen(v15);
    v2 = fts_palloc(a2, v7);
  }

  if (v2)
  {
    goto LABEL_38;
  }

  v10 = fts_alloc(a2, &unk_C42B5, 0);
  if (!v10)
  {
LABEL_37:
    free(*(a2 + 32));
LABEL_38:
    free(a2);
    return 0;
  }

  *(v10 + 86) = -1;
  v12 = 0;
  v11 = 0;
  while (*v15)
  {
    v8 = strlen(*v15);
    v13 = fts_alloc(a2, *v15, v8);
    if (!v13)
    {
      goto LABEL_36;
    }

    *(v13 + 86) = 0;
    *(v13 + 8) = v10;
    *(v13 + 40) = v13 + 104;
    if ((*(a2 + 64) & 0x400) != 0)
    {
      v3 = fts_stat(a2, v13, -1, -1);
    }

    else
    {
      v3 = fts_stat(a2, v13, *(a2 + 64) & 1, -1);
    }

    *(v13 + 88) = v3;
    if (*(v13 + 88) == 5)
    {
      *(v13 + 88) = 1;
    }

    if (*(a2 + 56))
    {
      *(v13 + 16) = v12;
      v12 = v13;
    }

    else
    {
      *(v13 + 16) = 0;
      if (v12)
      {
        *(v9 + 16) = v13;
      }

      else
      {
        v12 = v13;
      }

      v9 = v13;
    }

    ++v15;
    ++v11;
  }

  if (*(a2 + 56) && v11 > 1)
  {
    v12 = fts_sort(a2, v12, v11);
  }

  v4 = fts_alloc(a2, &unk_C42B5, 0);
  *a2 = v4;
  if (!v4)
  {
LABEL_36:
    fts_lfree(v12);
    fts_free(v10);
    goto LABEL_37;
  }

  *(*a2 + 16) = v12;
  *(*a2 + 88) = 9;
  if ((*(a2 + 64) & 4) == 0)
  {
    v5 = open_NOCANCEL();
    *(a2 + 40) = v5;
    if (v5 < 0)
    {
      *(a2 + 64) |= 4u;
    }
  }

  if ((*(a2 + 64) & 4) == 0 && getenv("FTS_USE_THREAD_FCHDIR"))
  {
    *(a2 + 64) |= 0x400u;
  }

  if (!v11)
  {
    fts_free(v10);
  }

  return a2;
}

FTS *__cdecl fts_open_b(char *const *a1, int a2, void *a3)
{
  v6 = a2;
  if ((a2 & 0xFFFFF300) != 0)
  {
    *__error() = 22;
    return 0;
  }

  else
  {
    if ((a2 & 0x800) != 0)
    {
      v6 = a2 | 8;
    }

    v4 = malloc_type_calloc();
    if (v4)
    {
      *(v4 + 56) = _Block_copy(a3);
      *(v4 + 64) = v6 | 0x80000000;
      return __fts_open(a1, v4);
    }

    else
    {
      return 0;
    }
  }
}

int fts_close(FTS *a1)
{
  v5 = 0;
  if (a1->fts_cur)
  {
    fts_cur = a1->fts_cur;
    while ((fts_cur->fts_level & 0x80000000) == 0)
    {
      v7 = fts_cur;
      if (fts_cur->fts_link)
      {
        fts_link = fts_cur->fts_link;
      }

      else
      {
        fts_link = fts_cur->fts_parent;
      }

      fts_cur = fts_link;
      fts_free(v7);
    }

    fts_free(fts_cur);
  }

  if ((a1->fts_options & 4) != 0)
  {
    fts_rfd = -1;
  }

  else
  {
    fts_rfd = a1->fts_rfd;
  }

  if (a1->fts_child)
  {
    fts_lfree(a1->fts_child);
  }

  free(a1->fts_array);
  a1->fts_array = 0;
  free(a1->fts_path);
  a1->fts_path = 0;
  if (a1->fts_options < 0 && a1->fts_compar)
  {
    _Block_release(a1->fts_compar);
  }

  if (fts_rfd != -1)
  {
    v4 = *__error();
    if (fts_fchdir(a1, fts_rfd))
    {
      v5 = -1;
      v4 = *__error();
    }

    if (close_NOCANCEL())
    {
      v5 = -1;
      v4 = *__error();
    }

    *__error() = v4;
  }

  free(a1);
  return v5;
}

void fts_free(unsigned int *a1)
{
  if ((a1[15] & 0x80000000) == 0)
  {
    v2 = *__error();
    v1 = a1[15];
    close_NOCANCEL();
    *__error() = v2;
  }

  free(a1);
}

void fts_lfree(uint64_t a1)
{
  while (1)
  {
    v1 = a1;
    if (!a1)
    {
      break;
    }

    a1 = *(a1 + 16);
    fts_free(v1);
  }
}

uint64_t fts_fchdir(uint64_t a1, int a2)
{
  if ((*(a1 + 64) & 0x400) != 0)
  {
    return pthread_fchdir_np();
  }

  else
  {
    return fchdir(a2);
  }
}

FTSENT *__cdecl fts_read(FTS *a1)
{
  if (!a1->fts_cur || (a1->fts_options & 0x200) != 0)
  {
    return 0;
  }

  fts_cur = a1->fts_cur;
  fts_instr = a1->fts_cur->fts_instr;
  a1->fts_cur->fts_instr = 3;
  if (fts_instr == 1)
  {
    fts_cur->fts_info = fts_stat(a1, fts_cur, 0, -1);
    return fts_cur;
  }

  if (fts_instr == 2 && (fts_cur->fts_info == 12 || fts_cur->fts_info == 13))
  {
    fts_cur->fts_info = fts_stat(a1, fts_cur, 1, -1);
    if (fts_cur->fts_info == 1 && (a1->fts_options & 4) == 0)
    {
      v1 = open_NOCANCEL();
      fts_cur->fts_symfd = v1;
      if (v1 < 0)
      {
        fts_cur->fts_errno = *__error();
        fts_cur->fts_info = 7;
      }

      else
      {
        fts_cur->fts_flags |= 2u;
      }
    }

    return fts_cur;
  }

  else if (fts_cur->fts_info == 1)
  {
    if (fts_instr == 4 || (a1->fts_options & 0x40) != 0 && fts_cur->fts_dev != a1->fts_dev)
    {
      if ((fts_cur->fts_flags & 2) != 0)
      {
        fts_symfd = fts_cur->fts_symfd;
        close_NOCANCEL();
        fts_cur->fts_symfd = -1;
      }

      if (a1->fts_child)
      {
        fts_lfree(a1->fts_child);
        a1->fts_child = 0;
      }

      fts_cur->fts_info = 6;
      return fts_cur;
    }

    else
    {
      if (a1->fts_child && (a1->fts_options & 0x100) != 0)
      {
        a1->fts_options &= ~0x100u;
        fts_lfree(a1->fts_child);
        a1->fts_child = 0;
      }

      if (a1->fts_child)
      {
        if (fts_safe_changedir(a1, fts_cur, -1, fts_cur->fts_accpath))
        {
          fts_cur->fts_errno = *__error();
          fts_cur->fts_flags |= 1u;
          for (i = a1->fts_child; i; i = i->fts_link)
          {
            i->fts_accpath = i->fts_parent->fts_accpath;
          }
        }
      }

      else
      {
        v3 = fts_build(a1, 3);
        a1->fts_child = v3;
        if (!v3)
        {
          if ((a1->fts_options & 0x200) != 0)
          {
            return 0;
          }

          else
          {
            return fts_cur;
          }
        }
      }

      fts_cur = a1->fts_child;
      a1->fts_child = 0;
LABEL_52:
      if (fts_cur->fts_parent->fts_path[fts_cur->fts_parent->fts_pathlen - 1] == 47)
      {
        fts_pathlen = fts_cur->fts_parent->fts_pathlen - 1;
      }

      else
      {
        fts_pathlen = fts_cur->fts_parent->fts_pathlen;
      }

      v5 = &a1->fts_path[fts_pathlen];
      *v5 = 47;
      memmove(v5 + 1, fts_cur->fts_name, fts_cur->fts_namelen + 1);
      a1->fts_cur = fts_cur;
      return fts_cur;
    }
  }

  else
  {
    while (1)
    {
      v13 = fts_cur;
      fts_cur = fts_cur->fts_link;
      if (!fts_cur)
      {
        break;
      }

      fts_free(v13);
      if (!fts_cur->fts_level)
      {
        a1->fts_cur = fts_cur;
        if ((a1->fts_options & 4) != 0 || !fts_fchdir(a1, a1->fts_rfd))
        {
          fts_load(a1, fts_cur);
          return a1->fts_cur;
        }

        else
        {
          a1->fts_options |= 0x200u;
          return 0;
        }
      }

      if (fts_cur->fts_instr != 4)
      {
        if (fts_cur->fts_instr == 2)
        {
          fts_cur->fts_info = fts_stat(a1, fts_cur, 1, -1);
          if (fts_cur->fts_info == 1 && (a1->fts_options & 4) == 0)
          {
            v4 = open_NOCANCEL();
            fts_cur->fts_symfd = v4;
            if (v4 < 0)
            {
              fts_cur->fts_errno = *__error();
              fts_cur->fts_info = 7;
            }

            else
            {
              fts_cur->fts_flags |= 2u;
            }
          }

          fts_cur->fts_instr = 3;
        }

        goto LABEL_52;
      }
    }

    fts_parent = v13->fts_parent;
    fts_free(v13);
    if (fts_parent->fts_level == -1)
    {
      fts_free(fts_parent);
      *__error() = 0;
      a1->fts_cur = 0;
      return 0;
    }

    a1->fts_path[fts_parent->fts_pathlen] = 0;
    if (fts_parent->fts_level)
    {
      if ((fts_parent->fts_flags & 2) != 0)
      {
        if ((a1->fts_options & 4) == 0 && fts_fchdir(a1, fts_parent->fts_symfd))
        {
          v11 = *__error();
          v6 = fts_parent->fts_symfd;
          close_NOCANCEL();
          fts_parent->fts_symfd = -1;
          *__error() = v11;
          a1->fts_options |= 0x200u;
          a1->fts_cur = fts_parent;
          return 0;
        }

        v7 = fts_parent->fts_symfd;
        close_NOCANCEL();
        fts_parent->fts_symfd = -1;
      }

      else if ((fts_parent->fts_flags & 1) == 0 && fts_safe_changedir(a1, fts_parent, -1, ".."))
      {
        a1->fts_options |= 0x200u;
        a1->fts_cur = fts_parent;
        return 0;
      }
    }

    else if ((a1->fts_options & 4) == 0 && fts_fchdir(a1, a1->fts_rfd))
    {
      a1->fts_options |= 0x200u;
      a1->fts_cur = fts_parent;
      return 0;
    }

    if (fts_parent->fts_errno)
    {
      v8 = 7;
    }

    else
    {
      v8 = 6;
    }

    fts_parent->fts_info = v8;
    a1->fts_cur = fts_parent;
    return fts_parent;
  }
}

uint64_t fts_safe_changedir(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v11 = 0;
  memset(&__b, 0, sizeof(__b));
  v10 = v14;
  if ((*(v16 + 64) & 4) != 0)
  {
    return 0;
  }

  if (v14 < 0)
  {
    v10 = open_NOCANCEL();
    if (v10 < 0)
    {
      return -1;
    }
  }

  if (!fstat(v10, &__b))
  {
    if (v14 == -1)
    {
      if (!strcmp(v13, "..") && (*(v15 + 90) & 8) != 0)
      {
        close_NOCANCEL();
        v10 = *(v15 + 60);
        *(v15 + 60) = -1;
        *(v15 + 90) &= ~8u;
      }
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
      v7 = open_NOCANCEL();
      if (v7 < 0)
      {
        v12 = -1;
        goto LABEL_20;
      }

      if (fstat(v7, &v8))
      {
        v11 = *__error();
        close_NOCANCEL();
        v6 = v11;
        *__error() = v6;
        v12 = -1;
        goto LABEL_20;
      }

      if (__b.st_dev == v8.st_dev)
      {
        close_NOCANCEL();
      }

      else
      {
        *(v15 + 60) = v7;
        *(v15 + 90) |= 8u;
      }
    }

    v12 = fts_fchdir(v16, v10);
    goto LABEL_20;
  }

  v12 = -1;
LABEL_20:
  v11 = *__error();
  if (v14 < 0)
  {
    close_NOCANCEL();
  }

  v5 = v11;
  *__error() = v5;
  return v12;
}

unsigned int *fts_build(uint64_t a1, int a2)
{
  v35 = a1;
  v34 = a2;
  memset(__b, 0, 0xA8uLL);
  v32 = __b;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  __dst = 0;
  v28 = *v35;
  if (!open_directory(v35, v26, *(v28 + 40)))
  {
    if (v34 == 3)
    {
      *(v28 + 88) = 4;
      *(v28 + 56) = *__error();
    }

    return 0;
  }

  if (v34 == 2)
  {
    v19 = 0;
  }

  else if ((*(v35 + 64) & 0x800) != 0)
  {
    if ((*(v35 + 64) & 0x10) != 0)
    {
      v2 = 64;
    }

    else
    {
      v2 = 80;
    }

    v19 = v2;
  }

  else if ((*(v35 + 64) & 8) != 0)
  {
    if ((*(v35 + 64) & 0x10) != 0)
    {
      v3 = 48;
    }

    else
    {
      v3 = 16;
    }

    v19 = v3;
  }

  else
  {
    v19 = 32;
  }

  v22 = 0;
  if (v19 || v34 == 3)
  {
    v15 = v35;
    v14 = v28;
    v4 = dir_fd(v26);
    if (fts_safe_changedir(v15, v14, v4, 0))
    {
      if (v19 && v34 == 3)
      {
        *(v28 + 56) = *__error();
      }

      *(v28 + 90) |= 1u;
      v21 = 0;
      v22 = *__error();
      close_directory(v26);
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (*(*(v28 + 48) + *(v28 + 64) - 1) == 47)
  {
    v13 = *(v28 + 64) - 1;
  }

  else
  {
    v13 = *(v28 + 64);
  }

  if ((*(v35 + 64) & 4) != 0)
  {
    v5 = (*(v35 + 32) + v13);
    __dst = v5 + 1;
    *v5 = 47;
  }

  v24 = v13 + 1;
  v23 = *(v35 + 44) - (v13 + 1);
  v20 = *(v28 + 86) + 1;
  v18 = 0;
  v27 = 0;
  v30 = 0;
  v29 = 0;
  while ((read_dirent(v26, v32) & 1) != 0)
  {
    if ((*(v35 + 64) & 0x20) != 0 || **v32 != 46 || *(*v32 + 1) && (*(*v32 + 1) != 46 || *(*v32 + 2)))
    {
      v31 = fts_alloc(v35, *v32, *(v32 + 1));
      if (!v31)
      {
        goto LABEL_43;
      }

      if (*(v32 + 1) >= v23)
      {
        v25 = *(v35 + 32);
        if (fts_palloc(v35, *(v32 + 2) + v24 + 1))
        {
LABEL_43:
          v17 = *__error();
          fts_free(v31);
          fts_lfree(v30);
          close_directory(v26);
          *(v28 + 88) = 7;
          *(v35 + 64) |= 0x200u;
          *__error() = v17;
          return 0;
        }

        if (v25 != *(v35 + 32))
        {
          v18 = 1;
          if ((*(v35 + 64) & 4) != 0)
          {
            __dst = (*(v35 + 32) + v24);
          }
        }

        v23 = *(v35 + 44) - v24;
      }

      if ((v24 + *(v32 + 1)) >= 0xFFFF)
      {
        fts_free(v31);
        fts_lfree(v30);
        close_directory(v26);
        *(v28 + 88) = 7;
        *(v35 + 64) |= 0x200u;
        *__error() = 63;
        return 0;
      }

      *(v31 + 43) = v20;
      *(v31 + 1) = *v35;
      *(v31 + 32) = v24 + *(v32 + 1);
      if (v22)
      {
        if (v19)
        {
          *(v31 + 44) = 10;
          v31[14] = v22;
        }

        else
        {
          *(v31 + 44) = 11;
        }

        *(v31 + 5) = *(v28 + 40);
      }

      else
      {
        switch(v19 | *(v32 + 40))
        {
          case 0x10:
          case 0x14:
          case 0x1A:
          case 0x20:
          case 0x21:
          case 0x22:
          case 0x24:
          case 0x26:
          case 0x28:
          case 0x2A:
          case 0x2C:
          case 0x2E:
          case 0x30:
          case 0x34:
          case 0x40:
          case 0x44:
          case 0x50:
          case 0x54:
          case 0x5A:
            if ((*(v35 + 64) & 4) != 0)
            {
              *(v31 + 5) = *(v31 + 6);
              memmove(__dst, v31 + 26, *(v31 + 33) + 1);
              v10 = v35;
              v11 = v31;
              v12 = dir_fd(v26);
              if (v32[164])
              {
                v6 = fts_stat2(v10, v11, 0, v12, v32 + 8);
              }

              else
              {
                v6 = fts_stat2(v10, v11, 0, v12, 0);
              }

              *(v31 + 44) = v6;
            }

            else
            {
              *(v31 + 5) = v31 + 26;
              if (v32[164])
              {
                v7 = fts_stat2(v35, v31, 0, -1, v32 + 8);
              }

              else
              {
                v7 = fts_stat2(v35, v31, 0, -1, 0);
              }

              *(v31 + 44) = v7;
            }

            break;
          case 0x41:
          case 0x42:
          case 0x46:
          case 0x4C:
          case 0x51:
          case 0x52:
          case 0x56:
          case 0x5C:
            *(v31 + 44) = 3;
            goto LABEL_70;
          case 0x48:
          case 0x58:
            *(v31 + 44) = 8;
            goto LABEL_70;
          case 0x4A:
            *(v31 + 44) = 12;
            goto LABEL_70;
          case 0x4E:
          case 0x5E:
            *(v31 + 44) = 14;
            goto LABEL_70;
          default:
            *(v31 + 44) = 11;
LABEL_70:
            if ((*(v35 + 64) & 4) != 0)
            {
              v9 = *(v31 + 6);
            }

            else
            {
              v9 = v31 + 26;
            }

            *(v31 + 5) = v9;
            break;
        }
      }

      *(v31 + 2) = 0;
      if (v30)
      {
        *(v27 + 2) = v31;
        v27 = v31;
      }

      else
      {
        v27 = v31;
        v30 = v31;
      }

      ++v29;
    }
  }

  close_directory(v26);
  if (v18)
  {
    fts_padjust(v35, v30);
  }

  if ((*(v35 + 64) & 4) != 0)
  {
    *(*(v35 + 32) + *(v28 + 64)) = 0;
  }

  if (v21 && (v34 == 1 || !v29))
  {
    if (*(v28 + 86))
    {
      if (!fts_safe_changedir(v35, v28, -1, ".."))
      {
        goto LABEL_91;
      }
    }

    else if ((*(v35 + 64) & 4) != 0 || !fts_fchdir(v35, *(v35 + 40)))
    {
      goto LABEL_91;
    }

    *(v28 + 88) = 7;
    *(v35 + 64) |= 0x200u;
    return 0;
  }

LABEL_91:
  if (v29)
  {
    if (*(v35 + 56) && v29 > 1)
    {
      return fts_sort(v35, v30, v29);
    }

    return v30;
  }

  else
  {
    if (v34 == 3)
    {
      *(v28 + 88) = 6;
    }

    return 0;
  }
}

const char *fts_load(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 66);
  *(a2 + 64) = *(a2 + 66);
  memmove(*(a1 + 32), (a2 + 104), v2 + 1);
  result = strrchr((a2 + 104), 47);
  if (result && (result != (a2 + 104) || result[1]))
  {
    __src = (result + 1);
    v6 = strlen(result + 1);
    result = memmove((a2 + 104), __src, v6 + 1);
    *(a2 + 66) = v6;
  }

  v4 = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 40) = v4;
  *(a1 + 24) = *(a2 + 80);
  return result;
}

int fts_set(FTS *a1, FTSENT *a2, int a3)
{
  if (a3 <= 4)
  {
    a2->fts_instr = a3;
    return 0;
  }

  else
  {
    *__error() = 22;
    return 1;
  }
}

FTSENT *__cdecl fts_children(FTS *a1, int a2)
{
  if (!a2 || a2 == 256)
  {
    fts_cur = a1->fts_cur;
    *__error() = 0;
    if ((a1->fts_options & 0x200) != 0)
    {
      return 0;
    }

    else if (fts_cur->fts_info == 9)
    {
      return fts_cur->fts_link;
    }

    else if (fts_cur->fts_info == 1)
    {
      if (a1->fts_child)
      {
        fts_lfree(a1->fts_child);
      }

      if (a2 == 256)
      {
        a1->fts_options |= 0x100u;
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      if (fts_cur->fts_level || *fts_cur->fts_accpath == 47 || (a1->fts_options & 4) != 0)
      {
        a1->fts_child = fts_build(a1, v6);
        if (*__error())
        {
          fts_cur->fts_errno = *__error();
        }

        return a1->fts_child;
      }

      else
      {
        v3 = open_NOCANCEL();
        if (v3 < 0)
        {
          return 0;
        }

        else
        {
          a1->fts_child = fts_build(a1, v6);
          if (*__error())
          {
            fts_cur->fts_errno = *__error();
          }

          if (fts_fchdir(a1, v3))
          {
            close_NOCANCEL();
            return 0;
          }

          else
          {
            close_NOCANCEL();
            return a1->fts_child;
          }
        }
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

uint64_t fts_palloc(uint64_t a1, int a2)
{
  *(a1 + 44) += a2 + 256;
  if ((*(a1 + 44) & 0x80000000) != 0 || *(a1 + 44) >= 0xFFFF)
  {
    free(*(a1 + 32));
    *(a1 + 32) = 0;
    *__error() = 63;
    return 1;
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 44);
    v5 = malloc_type_realloc();
    if (v5)
    {
      *(a1 + 32) = v5;
      return 0;
    }

    else
    {
      free(*(a1 + 32));
      *(a1 + 32) = 0;
      return 1;
    }
  }
}

size_t fts_maxarglen(const char **a1)
{
  v2 = 0;
  while (*a1)
  {
    v3 = strlen(*a1);
    if (v3 > v2)
    {
      v2 = v3;
    }

    ++a1;
  }

  return v2 + 1;
}

uint64_t fts_alloc(uint64_t a1, const void *a2, size_t a3)
{
  *(a1 + 64);
  v4 = malloc_type_calloc();
  if (!v4)
  {
    return 0;
  }

  *(v4 + 60) = -1;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 66) = a3;
  *(v4 + 92) = 3;
  if ((*(a1 + 64) & 8) == 0)
  {
    *(v4 + 96) = (v4 + 104 + a3 + 9) & 0xFFFFFFFFFFFFFFF8;
  }

  memcpy((v4 + 104), a2, a3);
  return v4;
}

uint64_t fts_sort(uint64_t a1, uint64_t a2, int a3)
{
  v12 = a3;
  if (a3 > *(a1 + 48))
  {
    *(a1 + 48) = a3 + 40;
    v3 = *(a1 + 16);
    v4 = *(a1 + 48);
    v8 = reallocarray_DARWIN_EXTSN();
    if (!v8)
    {
      free(*(a1 + 16));
      *(a1 + 16) = 0;
      *(a1 + 48) = 0;
      return a2;
    }

    *(a1 + 16) = v8;
  }

  v10 = *(a1 + 16);
  for (i = a2; i; i = *(i + 16))
  {
    v5 = v10++;
    *v5 = i;
  }

  if ((*(a1 + 64) & 0x80000000) != 0)
  {
    qsort_b(*(a1 + 16), v12, 8uLL, *(a1 + 56));
  }

  else
  {
    __compar = 0;
    if (*(a1 + 56))
    {
      __compar = *(a1 + 56);
    }

    qsort(*(a1 + 16), v12, 8uLL, __compar);
  }

  v11 = *(a1 + 16);
  v14 = *v11;
  while (--v12)
  {
    *(*v11 + 16) = v11[1];
    ++v11;
  }

  *(*v11 + 16) = 0;
  return v14;
}

BOOL open_directory(uint64_t a1, DIR **a2, const char *a3)
{
  memset(a2, 0, 0x40uLL);
  *(a2 + 53) = (*(a1 + 64) & 8) != 0;
  v3 = (*(a1 + 64) & 0x20) != 0;
  *(a2 + 55) = v3;
  *(a2 + 54) = v3;
  *(a2 + 12) = open_NOCANCEL();
  if (*(a2 + 12) != -1 && (a2[4] = malloc_type_malloc()) != 0 && ((*(a2 + 4) = 5, (*(a2 + 53) & 1) != 0) ? (*(a2 + 3) = -2113929205, *(a2 + 6) = 1) : (*(a2 + 3) = -2113430005, *(a2 + 6) = 557), (advance_directory(a2) & 1) != 0))
  {
    return 1;
  }

  else
  {
    if (*(a2 + 12) != -1)
    {
      v4 = *(a2 + 12);
      close_NOCANCEL();
    }

    *(a2 + 12) = -1;
    free(a2[4]);
    a2[4] = 0;
    *a2 = opendir(a3);
    return *a2 != 0;
  }
}

uint64_t dir_fd(uint64_t a1)
{
  if (*a1)
  {
    return dirfd(*a1);
  }

  else
  {
    return *(a1 + 48);
  }
}

void close_directory(uint64_t a1)
{
  if (*a1)
  {
    closedir(*a1);
    *a1 = 0;
  }

  if (*(a1 + 48) != -1)
  {
    v1 = *(a1 + 48);
    close_NOCANCEL();
    *(a1 + 48) = -1;
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
}

uint64_t read_dirent(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v22 = readdir(*a1);
    if (v22)
    {
      *a2 = v22->d_name;
      *(a2 + 8) = v22->d_namlen;
      *(a2 + 160) = v22->d_type;
      *(a2 + 164) = 0;
      v25 = 1;
    }

    else
    {
      v25 = 0;
    }
  }

  else if (*(a1 + 48) == -1)
  {
    v25 = 0;
  }

  else if (*(a1 + 54))
  {
    *(a1 + 54) = 0;
    *a2 = ".";
    *(a2 + 8) = 1;
    *(a2 + 160) = 4;
    *(a2 + 164) = 0;
    v25 = 1;
  }

  else if (*(a1 + 55))
  {
    *(a1 + 55) = 0;
    *a2 = "..";
    *(a2 + 8) = 2;
    *(a2 + 160) = 4;
    *(a2 + 164) = 0;
    v25 = 1;
  }

  else
  {
    if (*(a1 + 60) == *(a1 + 56))
    {
      if (*(a1 + 52))
      {
        v25 = 0;
        return v25 & 1;
      }

      if ((advance_directory(a1) & 1) == 0)
      {
        v25 = 0;
        return v25 & 1;
      }

      if (*(a1 + 52))
      {
        v25 = 0;
        return v25 & 1;
      }
    }

    memset(a2, 0, 0xA8uLL);
    v21 = 0;
    v20 = 0;
    if (*(a1 + 53))
    {
      v20 = *(a1 + 40);
      ++*(a1 + 60);
      *(a1 + 40) = v20 + *v20;
      v9 = 1;
      if (*(a1 + 60) != *(a1 + 56))
      {
        v9 = *(a1 + 40) + **(a1 + 40) <= *(a1 + 32) + 0x8000;
      }

      if (!v9)
      {
        v4 = *(a1 + 60);
        v5 = *(a1 + 56);
        v16 = _os_assert_log(v9);
        _os_crash(v16);
        __break(1u);
      }

      if (!v20[7])
      {
        v15 = _os_assert_log(v20[7] != 0);
        _os_crash(v15);
        __break(1u);
      }

      *a2 = v20 + v20[6] + 24;
      *(a2 + 8) = (v20[7] - 1);
      if (*a2 + v20[7] > *(a1 + 32) + 0x8000)
      {
        v14 = _os_assert_log(0);
        _os_crash(v14);
        __break(1u);
      }
    }

    else
    {
      v21 = *(a1 + 40);
      ++*(a1 + 60);
      *(a1 + 40) = v21 + *v21;
      v10 = 1;
      if (*(a1 + 60) != *(a1 + 56))
      {
        v10 = *(a1 + 40) + **(a1 + 40) <= *(a1 + 32) + 0x8000;
      }

      if (!v10)
      {
        v2 = *(a1 + 60);
        v3 = *(a1 + 56);
        v19 = _os_assert_log(0);
        _os_crash(v19);
        __break(1u);
      }

      if (!v21[7])
      {
        v18 = _os_assert_log(0);
        _os_crash(v18);
        __break(1u);
      }

      *a2 = v21 + v21[6] + 24;
      *(a2 + 8) = v21[7] - 1;
      if (*a2 + v21[7] > *(a1 + 32) + 0x8000)
      {
        v17 = _os_assert_log(0);
        _os_crash(v17);
        __break(1u);
      }
    }

    v13 = 0;
    if (*(a1 + 53))
    {
      v8 = v20[9];
    }

    else
    {
      v8 = v21[9];
    }

    switch(v8)
    {
      case 1:
        *(a2 + 160) = 8;
        v13 = 0x8000;
        break;
      case 2:
        *(a2 + 160) = 4;
        break;
      case 3:
        *(a2 + 160) = 6;
        v13 = 24576;
        break;
      case 4:
        *(a2 + 160) = 2;
        v13 = 0x2000;
        break;
      case 5:
        *(a2 + 160) = 10;
        v13 = 40960;
        break;
      case 6:
        *(a2 + 160) = 12;
        v13 = 49152;
        break;
      case 7:
        *(a2 + 160) = 1;
        v13 = 4096;
        break;
      default:
        *(a2 + 160) = 0;
        break;
    }

    if ((*(a1 + 53) & 1) != 0 || !v13)
    {
      *(a2 + 164) = 0;
    }

    else
    {
      *(a2 + 164) = 1;
      v12 = *(a1 + 12);
      v11 = *(a1 + 24);
      if (*(a2 + 160) != 6 && *(a2 + 160) != 2)
      {
        v21[36] = 0;
        v11 &= ~0x20u;
      }

      if ((v21[1] & 0x200) == 0)
      {
        *(v21 + 6) = 0;
        *(v21 + 5) = 0;
        v12 &= ~0x200u;
      }

      if ((v21[1] & v12) != v12 || (v21[4] & v11) != v11)
      {
        *(a2 + 164) = 0;
      }
    }

    if (*(a2 + 164))
    {
      *(a2 + 16) = v21[8];
      *(a2 + 22) = v21[32];
      *(a2 + 24) = *(v21 + 15);
      *(a2 + 32) = v21[26];
      *(a2 + 36) = v21[27];
      *(a2 + 40) = v21[36];
      *(a2 + 48) = *(v21 + 22);
      *(a2 + 64) = *(v21 + 14);
      *(a2 + 80) = *(v21 + 18);
      *(a2 + 96) = *(v21 + 10);
      *(a2 + 112) = *(v21 + 37);
      *(a2 + 128) = v21[35];
      *(a2 + 132) = v21[29];
      *(a2 + 20) = v21[28] & 0xFFF | v13;
      if (*(v21 + 33) % 512)
      {
        v7 = *(v21 + 33) / 512 + 1;
      }

      else
      {
        v7 = *(v21 + 33) / 512;
      }

      *(a2 + 120) = v7;
    }

    v25 = 1;
  }

  return v25 & 1;
}

uint64_t fts_stat2(uint64_t a1, uint64_t a2, int a3, int a4, _WORD *a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  i = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  memset(__b, 0, sizeof(__b));
  if (v17 == -1)
  {
    v9 = *(v19 + 40);
    v17 = -2;
  }

  else
  {
    v9 = (v19 + 104);
  }

  if ((*(v20 + 64) & 8) != 0)
  {
    v8 = __b;
  }

  else
  {
    v8 = *(v19 + 96);
  }

  v12 = v8;
  if (v18)
  {
    v16 = 0;
  }

  else if (v16 && (*(v20 + 64) & 2) != 0 && (v16[2] & 0xA000) == 0xA000)
  {
    v16 = 0;
  }

  if (v16)
  {
    memcpy(v12, v16, sizeof(stat));
    goto LABEL_30;
  }

  if ((*(v20 + 64) & 2) == 0 && !v18)
  {
    if (!fstatat(v17, v9, v12, 32))
    {
      goto LABEL_30;
    }

LABEL_28:
    *(v19 + 56) = *__error();
    goto LABEL_29;
  }

  if (fstatat(v17, v9, v12, 0))
  {
    v10 = *__error();
    if (!fstatat(v17, v9, v12, 32))
    {
      if (v10 == 62)
      {
        *(v19 + 56) = 62;
      }

      *__error() = 0;
      return 13;
    }

    *(v19 + 56) = v10;
LABEL_29:
    memset(v12, 0, sizeof(stat));
    return 10;
  }

  if (v18 == -1 && (v12->st_mode & 0xF000) != 0x4000 && fstatat(v17, v9, v12, 32))
  {
    goto LABEL_28;
  }

LABEL_30:
  switch(v12->st_mode & 0xF000)
  {
    case 16384:
      st_dev = v12->st_dev;
      *(v19 + 80) = v12->st_dev;
      v14 = st_dev;
      st_ino = v12->st_ino;
      *(v19 + 72) = st_ino;
      v13 = st_ino;
      *(v19 + 84) = v12->st_nlink;
      if (*(v19 + 104) != 46 || *(v19 + 105) && (*(v19 + 105) != 46 || *(v19 + 106)))
      {
        for (i = *(v19 + 8); (*(i + 86) & 0x80000000) == 0; i = *(i + 8))
        {
          if (v13 == *(i + 72) && v14 == *(i + 80))
          {
            *v19 = i;
            return 2;
          }
        }

        return 1;
      }

      else
      {
        return 5;
      }

    case 40960:
      return 12;
    case 32768:
      return 8;
    default:
      return 3;
  }
}

uint64_t fts_padjust(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  for (i = *(result + 8); i; i = i[2])
  {
    if (i[5] != (i + 13))
    {
      i[5] = v3 + i[5] - i[6];
    }

    i[6] = v3;
  }

  while ((*(a2 + 86) & 0x80000000) == 0)
  {
    if (*(a2 + 40) != a2 + 104)
    {
      *(a2 + 40) = v3 + *(a2 + 40) - *(a2 + 48);
    }

    *(a2 + 48) = v3;
    if (*(a2 + 16))
    {
      v2 = *(a2 + 16);
    }

    else
    {
      v2 = *(a2 + 8);
    }

    a2 = v2;
  }

  return result;
}

uint64_t advance_directory(uint64_t a1)
{
  if (*(a1 + 52))
  {
    v6 = 1;
  }

  else
  {
    if (*(a1 + 48) == -1)
    {
      v4 = _os_assert_log(*(a1 + 48) != -1);
      _os_crash(v4);
      __break(1u);
    }

    *(a1 + 56) = getattrlistbulk(*(a1 + 48), (a1 + 8), *(a1 + 32), 0x8000uLL, 8uLL);
    if (*(a1 + 56) == -1)
    {
      v3 = *__error();
      v1 = *(a1 + 48);
      close_NOCANCEL();
      *(a1 + 48) = -1;
      *__error() = v3;
      v6 = 0;
    }

    else
    {
      if (!*(a1 + 56))
      {
        *(a1 + 52) = 1;
      }

      *(a1 + 60) = 0;
      *(a1 + 40) = *(a1 + 32);
      v6 = 1;
    }
  }

  return v6 & 1;
}

BOOL compat_mode(const char *function, const char *mode)
{
  if ((parsed & 1) == 0 && (bootstrapping & 1) == 0)
  {
    pthread_once(&threadsafe, check_env_var);
    parsed = 1;
  }

  if (!strcasecmp("unix2003", mode))
  {
    return unix2003_mode & 1;
  }

  if (!strcasecmp("legacy", mode))
  {
    return (unix2003_mode ^ 1) & 1;
  }

  if (!strcasecmp("bootstrap", mode))
  {
    return bootstrapping & 1;
  }

  if (!strcasecmp("error", mode))
  {
    return parse_error & 1;
  }

  v9 = strpbrk(mode, "!^&|");
  if (!v9)
  {
LABEL_27:
    fprintf(__stderrp, "invalid mode %s (while checking for %s)\n", mode, function);
    return 0;
  }

  if (*v9 == 33)
  {
    if (v9 == mode)
    {
      return !compat_mode(function, mode + 1);
    }

    goto LABEL_27;
  }

  __dst = malloc_type_malloc();
  strlcpy(__dst, mode, v9 - mode + 1);
  v7 = compat_mode(function, __dst);
  free(__dst);
  v6 = compat_mode(function, v9 + 1);
  v5 = *v9;
  switch(v5)
  {
    case '&':
      v4 = 0;
      if (v7)
      {
        return v6;
      }

      return v4;
    case '^':
      return v7 != v6;
    case '|':
      v3 = 1;
      if (!v7)
      {
        v3 = v6;
      }

      return v3 & 1;
    default:
      goto LABEL_27;
  }
}

char *check_env_var()
{
  result = getenv("COMMAND_MODE");
  v1 = result;
  if (result)
  {
    result = strcasecmp(result, "legacy");
    if (result)
    {
      result = strcasecmp(v1, "unix2003");
      if (result)
      {
        parse_error = 1;
      }

      unix2003_mode = 1;
    }

    else
    {
      unix2003_mode = 0;
    }
  }

  return result;
}

int getloadavg(double a1[], int a2)
{
  v10 = a1;
  v9 = a2;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  i = 0;
  v12[0] = 2;
  v12[1] = 2;
  v5 = 24;
  if (sysctl(v12, 2u, v7, &v5, 0, 0) < 0)
  {
    return -1;
  }

  if (v9 >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v9;
  }

  v9 = v4;
  for (i = 0; i < v9; ++i)
  {
    LODWORD(v2) = *(v7 + i);
    v2 = *&v2 / v8;
    v10[i] = v2;
  }

  return v9;
}

ttyent *__cdecl getttynam(const char *a1)
{
  setttyent();
  do
  {
    v2 = getttyent();
  }

  while (v2 && strcmp(a1, v2->ty_name));
  endttyent();
  return v2;
}

int setttyent(void)
{
  if (!seq)
  {
    if (regcomp(&brapreg, brapat[0], 1))
    {
      return 0;
    }

    if (regcomp(&decpreg, decpat[0], 1))
    {
      regfree(&brapreg);
      return 0;
    }

    if (regcomp(&hexpreg, hexpat[0], 3))
    {
      regfree(&decpreg);
      regfree(&brapreg);
      return 0;
    }

    seq = malloc_type_malloc();
    if (!seq)
    {
      regfree(&hexpreg);
      regfree(&decpreg);
      regfree(&brapreg);
      return 0;
    }
  }

  *(seq + 4) = 0;
  *seq = 0;
  slot = 1;
  if (tf)
  {
    rewind(tf);
    return 1;
  }

  else
  {
    tf = fopen("/etc/ttys", "r");
    return tf != 0;
  }
}

ttyent *getttyent(void)
{
  v23 = __locale_key;
  v22 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v23);
  if (v22)
  {
    v8 = v22;
  }

  else
  {
    v8 = __global_locale;
  }

  if (getttyent_line || (getttyent_line = malloc_type_malloc()) != 0)
  {
    if (!tf && !setttyent())
    {
      return 0;
    }

    while (1)
    {
      while (1)
      {
        if (slot < *seq)
        {
          ++slot;
          return &getttyent_nonexistent;
        }

        if (*(seq + 4) > 0)
        {
          v0 = getttyent_tty;
          v1 = (seq + 12);
          v2 = (*(seq + 8))++;
          sprintf(v0, v1, v2);
          ++slot;
          --*(seq + 4);
          return &getttyent_tty;
        }

        if (slot == *seq)
        {
          ++slot;
          return &getttyent_tty;
        }

        do
        {
          while (1)
          {
            v16 = getttyent_line;
            if (!fgets(getttyent_line, 1024, tf))
            {
              return 0;
            }

            if (index(v16, 10))
            {
              break;
            }

            do
            {
              v19 = getc(tf);
              v7 = 0;
              if (v19 != 10)
              {
                v7 = v19 != -1;
              }
            }

            while (v7);
          }

          while (isspace_l(*v16, v8))
          {
            ++v16;
          }
        }

        while (!*v16 || *v16 == 35);
        zapchar = 0;
        getttyent_tty = v16;
        v3 = skip(v16);
        v17 = v3;
        qword_D6690 = v3;
        if (*v3)
        {
          v17 = skip(v3);
          qword_D6698 = v17;
          if (*v17)
          {
            v17 = skip(v17);
          }

          else
          {
            qword_D6698 = 0;
          }
        }

        else
        {
          qword_D6698 = 0;
          qword_D6690 = 0;
        }

        dword_D66A0 = 0;
        qword_D66A8 = 0;
        qword_D66B0 = 0;
        qword_D66B8 = 0;
        v15 = -1;
        while (*v17)
        {
          if (!strncmp(v17, "off", 3uLL) && isspace_l(v17[3], v8))
          {
            dword_D66A0 &= ~1u;
          }

          else if (!strncmp(v17, "on", 2uLL) && isspace_l(v17[2], v8))
          {
            dword_D66A0 |= 1u;
          }

          else if (!strncmp(v17, "secure", 6uLL) && isspace_l(v17[6], v8))
          {
            dword_D66A0 |= 2u;
          }

          else if (!strncmp(v17, "window", 6uLL) && v17[6] == 61)
          {
            qword_D66A8 = value(v17);
          }

          else if (!strncmp(v17, "onerror", 7uLL) && v17[7] == 61)
          {
            qword_D66B0 = value(v17);
          }

          else if (!strncmp(v17, "onoption", 8uLL) && v17[8] == 61)
          {
            qword_D66B8 = value(v17);
          }

          else
          {
            if (strncmp(v17, "slot", 4uLL) || v17[4] != 61)
            {
              break;
            }

            v9 = value(v17);
            if (v9)
            {
              v15 = atoi(v9);
            }
          }

          v17 = skip(v17);
        }

        if (zapchar == 35 || *v17 == 35)
        {
          do
          {
            v20 = *++v17;
            v6 = 1;
            if (v20 != 32)
            {
              v6 = v20 == 9;
            }
          }

          while (v6);
        }

        qword_D66C0 = v17;
        if (!*v17)
        {
          qword_D66C0 = 0;
        }

        v18 = index(v17, 10);
        if (v18)
        {
          *v18 = 0;
        }

        if (regexec(&brapreg, getttyent_tty, 3uLL, &__pmatch, 0))
        {
          goto LABEL_81;
        }

        v10 = __pmatch;
        v11 = v25;
        __pmatch = v25;
        if (regexec(&decpreg, getttyent_tty, 3uLL, &__pmatch, 4))
        {
          break;
        }

        v13 = strtol((getttyent_tty + v25.rm_so), 0, 10);
        v12 = strtol((getttyent_tty + v26), 0, 10);
        v14 = 0;
LABEL_76:
        if (v13 <= v12)
        {
          *(seq + 4) = v12 - v13 + 1;
          *(seq + 8) = v13;
          if (v14)
          {
            v4 = 120;
          }

          else
          {
            v4 = 100;
          }

          sprintf((seq + 12), "%.*s%%0%d%c%s", SLODWORD(v10.rm_so), getttyent_tty, LODWORD(v25.rm_eo) - LODWORD(v25.rm_so), v4, (getttyent_tty + v10.rm_eo));
          goto LABEL_81;
        }
      }

      __pmatch = v11;
      if (!regexec(&hexpreg, getttyent_tty, 3uLL, &__pmatch, 4))
      {
        v13 = strtol((getttyent_tty + v25.rm_so), 0, 16);
        v12 = strtol((getttyent_tty + v26), 0, 16);
        v14 = 1;
        goto LABEL_76;
      }

LABEL_81:
      if (v15 <= slot)
      {
        if (*(seq + 4) <= 0)
        {
          ++slot;
          return &getttyent_tty;
        }
      }

      else
      {
        *seq = v15;
      }
    }
  }

  return 0;
}

int endttyent(void)
{
  if (!tf)
  {
    return 1;
  }

  v0 = fclose(tf);
  tf = 0;
  return v0 != -1;
}

char *skip(char *a1)
{
  v9 = a1;
  v5 = 0;
  v8 = a1;
  while (1)
  {
    v6 = *v9;
    if (!*v9)
    {
      break;
    }

    if (v6 == 34)
    {
      v5 ^= 1u;
    }

    else
    {
      if (v5 == 1 && *v9 == 92 && v9[1] == 34)
      {
        ++v9;
      }

      v1 = v8++;
      *v1 = *v9;
      if (v5 != 1)
      {
        if (v6 == 35)
        {
          zapchar = 35;
          *v9 = 0;
          break;
        }

        if (v6 == 9 || v6 == 32 || v6 == 10)
        {
          zapchar = v6;
          v2 = v9++;
          *v2 = 0;
          while (1)
          {
            v7 = *v9;
            v4 = 1;
            if (v7 != 9)
            {
              v4 = 1;
              if (v7 != 32)
              {
                v4 = v7 == 10;
              }
            }

            if (!v4)
            {
              break;
            }

            ++v9;
          }

          break;
        }
      }
    }

    ++v9;
  }

  *(v8 - 1) = 0;
  return v9;
}

char *value(const char *a1)
{
  v3 = index(a1, 61);
  if (v3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

char *getusershell(void)
{
  if (!curshell)
  {
    curshell = initshells();
  }

  v1 = *curshell;
  if (*curshell)
  {
    curshell += 8;
  }

  return v1;
}

char **initshells()
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  memset(&__b, 0, sizeof(__b));
  v12 = 0;
  v13 = __locale_key;
  v14 = __locale_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = *(StatusReg + 8 * v14);
  if (v12)
  {
    v6 = v12;
  }

  else
  {
    v6 = __global_locale;
  }

  if (shells)
  {
    free(shells);
  }

  shells = 0;
  if (strings)
  {
    free(strings);
  }

  strings = 0;
  v8 = fopen("/etc/shells", "r");
  if (!v8)
  {
    return okshells;
  }

  v0 = fileno(v8);
  if (fstat(v0, &__b) == -1 || (strings = malloc_type_malloc()) == 0)
  {
    fclose(v8);
    return okshells;
  }

  else
  {
    shells = malloc_type_calloc();
    if (shells)
    {
      v10 = shells;
      v9 = strings;
      while (fgets(v9, 1025, v8))
      {
        while (1)
        {
          v5 = 0;
          if (*v9 != 35)
          {
            v5 = 0;
            if (*v9 != 47)
            {
              v5 = *v9 != 0;
            }
          }

          if (!v5)
          {
            break;
          }

          ++v9;
        }

        if (*v9 != 35 && *v9)
        {
          v1 = v10++;
          *v1 = v9;
          while (1)
          {
            v4 = 0;
            if (!isspace_l(*v9, v6))
            {
              v4 = 0;
              if (*v9 != 35)
              {
                v4 = *v9 != 0;
              }
            }

            if (!v4)
            {
              break;
            }

            ++v9;
          }

          v2 = v9++;
          *v2 = 0;
        }
      }

      *v10 = 0;
      fclose(v8);
      return shells;
    }

    else
    {
      fclose(v8);
      free(strings);
      strings = 0;
      return okshells;
    }
  }
}

void endusershell(void)
{
  if (shells)
  {
    free(shells);
  }

  shells = 0;
  if (strings)
  {
    free(strings);
  }

  strings = 0;
  curshell = 0;
}

int getvfsbyname(const char *a1, vfsconf *a2)
{
  __s1 = a1;
  v6 = a2;
  v5 = 0;
  i = 0;
  v9 = 3;
  v10 = 1;
  v3 = 4;
  if (sysctl(&v9, 3u, &v5, &v3, 0, 0) < 0)
  {
    return -1;
  }

  v10 = 2;
  v3 = 40;
  for (i = 0; i < v5; ++i)
  {
    v11 = i;
    if (sysctl(&v9, 4u, v6, &v3, 0, 0) < 0)
    {
      if (*__error() != 45)
      {
        return -1;
      }
    }

    else if (!strcmp(__s1, v6 + 4))
    {
      return 0;
    }
  }

  *__error() = 2;
  return -1;
}

uint64_t _init_clock_port()
{
  host = mach_host_self();
  if (host_get_clock_service(host, 0, &clock_port))
  {
    abort();
  }

  if (semaphore_create(mach_task_self_, &clock_sem, 0, 0))
  {
    abort();
  }

  return mach_port_deallocate(mach_task_self_, host);
}

uint64_t nanosleep_NOCANCEL(void *a1, void *a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  time = 0;
  v14 = 0;
  cur_time = 0;
  if (!__unix_conforming)
  {
    __unix_conforming = 1;
  }

  if (v18 && (*v18 & 0x8000000000000000) == 0 && v18[1] < 0x3B9ACA00uLL)
  {
    if (!v17 || (v16 = clock_get_time(clock_port, &cur_time)) == 0)
    {
      v3 = *v18;
      v4 = v18[1];
      time = __semwait_signal_nocancel();
      if (time < 0)
      {
        if (*__error() == 60)
        {
          return 0;
        }

        if (*__error() == 4)
        {
          if (v17)
          {
            time = clock_get_time(clock_port, &v14);
            if (time)
            {
              v11 = __stderrp;
              v5 = mach_error_string(time);
              fprintf(v11, "clock_get_time() failed: %s\n", v5);
              return -1;
            }

            v6 = cur_time.tv_nsec + v18[1];
            cur_time.tv_nsec += *(v18 + 2);
            if (v6 >= 1000000000)
            {
              cur_time.tv_nsec -= 1000000000;
              ++cur_time.tv_sec;
            }

            cur_time.tv_sec += *v18;
            if (cur_time.tv_sec <= v14.tv_sec)
            {
              if (cur_time.tv_sec >= v14.tv_sec)
              {
                v9 = cur_time.tv_nsec - v14.tv_nsec;
              }

              else
              {
                v9 = -1000000000;
              }

              v10 = v9;
            }

            else
            {
              v10 = 1000000000;
            }

            if (v10 <= 0)
            {
              v7 = v17;
              *v17 = 0;
              v7[1] = 0;
            }

            else
            {
              cur_time.tv_nsec -= v14.tv_nsec;
              if (cur_time.tv_nsec < 0)
              {
                cur_time.tv_nsec += 1000000000;
                --cur_time.tv_sec;
              }

              cur_time.tv_sec -= v14.tv_sec;
              *v17 = cur_time.tv_sec;
              v17[1] = cur_time.tv_nsec;
            }
          }
        }

        else
        {
          *__error() = 22;
        }
      }

      return -1;
    }

    v12 = __stderrp;
    v2 = mach_error_string(v16);
    fprintf(v12, "clock_get_time() failed: %s\n", v2);
    *__error() = 22;
    return -1;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t both_ftw(const char *a1, uint64_t (*a2)(char *, stat *, void), uint64_t (*a3)(char *, stat *, void, uint64_t *), int a4, int a5)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v29 = 0;
  v30 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = -1;
  if (a4 < 1 || v25 > 10240)
  {
    *__error() = 22;
    v18 = -1;
    goto LABEL_86;
  }

  v20 = 1;
  if ((v24 & 8) == 0)
  {
    v20 |= 4u;
  }

  if ((v24 & 2) != 0)
  {
    v20 |= 0x40u;
  }

  if (v24)
  {
    v20 |= 0x10u;
  }

  else
  {
    v20 |= 2u;
  }

  v17 = (v24 & 4) != 0;
  if ((v24 & 8) != 0)
  {
    v15 = open_NOCANCEL();
    if (v15 < 0)
    {
      v18 = -1;
      goto LABEL_86;
    }

    v20 |= 4u;
  }

  memset(&__b, 0, sizeof(__b));
  v13 = stat(v28, &__b);
  if (v13 < 0 && (*__error() == 62 || *__error() == 63 || *__error() == 2 || *__error() == 20 || *__error() == 13))
  {
    v18 = -1;
    goto LABEL_86;
  }

  if ((v13 & 0x80000000) == 0 && v26 && (__b.st_mode & 0xF000) != 0x4000)
  {
    *__error() = 20;
    v18 = -1;
    goto LABEL_86;
  }

  v29 = v28;
  v30 = 0;
  v21 = fts_open(&v29, v20, 0);
  if (v21)
  {
    v18 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v22 = fts_read(v21);
            if (!v22)
            {
              goto LABEL_86;
            }

            fts_info = v22->fts_info;
            if (fts_info != 1)
            {
              break;
            }

            if (!v17 && ((v24 & 2) == 0 || v22->fts_statp->st_dev == __b.st_dev) && !access(v22->fts_path, 4))
            {
              v19 = 1;
              goto LABEL_68;
            }
          }

          if (fts_info != 2)
          {
            break;
          }

          if (!v26 || (v24 & 1) != 0)
          {
            *__error() = 62;
LABEL_67:
            v18 = -1;
            goto LABEL_86;
          }

          if (!v17)
          {
            v19 = 1;
            goto LABEL_68;
          }
        }

        if (fts_info != 3)
        {
          break;
        }

LABEL_51:
        if ((v24 & 2) == 0 || v22->fts_statp->st_dev == __b.st_dev)
        {
          v19 = 0;
          goto LABEL_68;
        }
      }

      switch(fts_info)
      {
        case 4:
          v19 = 2;
          goto LABEL_68;
        case 6:
          if (v17 && ((v24 & 2) == 0 || v22->fts_statp->st_dev == __b.st_dev))
          {
            v19 = 3;
            goto LABEL_68;
          }

          break;
        case 8:
          goto LABEL_51;
        default:
          if (fts_info != 11 && fts_info != 10)
          {
            if (fts_info == 12)
            {
              v19 = 5;
            }

            else
            {
              if (fts_info != 13)
              {
                goto LABEL_67;
              }

              if (v26)
              {
                v5 = 6;
              }

              else
              {
                v5 = 5;
              }

              v19 = v5;
              memset(&v12, 0, sizeof(v12));
              if (stat(v22->fts_path, &v12) < 0 && *__error() == 62)
              {
                v18 = -1;
                goto LABEL_86;
              }
            }
          }

          else
          {
            v19 = 4;
          }

LABEL_68:
          if ((v15 & 0x80000000) == 0)
          {
            v11 = 0;
            if (v19 == 1)
            {
              v6 = chdir(v22->fts_path);
            }

            else
            {
              v11 = strdup(v22->fts_path);
              v11[v22->fts_pathlen - v22->fts_namelen] = 0;
              v6 = chdir(v11);
            }

            v10 = v6;
            if (v11)
            {
              free(v11);
            }

            if (v10 < 0)
            {
              if (v22->fts_pathlen == v22->fts_namelen && v19 == 2)
              {
                *__error() = 24;
              }

              v18 = -1;
              goto LABEL_86;
            }
          }

          if (v26)
          {
            LODWORD(v23) = v22->fts_pathlen - v22->fts_namelen;
            HIDWORD(v23) = v22->fts_level;
            v18 = v26(v22->fts_path, v22->fts_statp, v19, &v23);
          }

          else
          {
            v18 = v27(v22->fts_path, v22->fts_statp, v19);
          }

          if ((v15 & 0x80000000) == 0 && fchdir(v15) < 0)
          {
            v18 = -1;
            goto LABEL_86;
          }

          if (v18)
          {
            goto LABEL_86;
          }

          break;
      }
    }
  }

  v18 = -1;
LABEL_86:
  v16 = *__error();
  if (v21)
  {
    fts_close(v21);
  }

  if ((v15 & 0x80000000) == 0)
  {
    close_NOCANCEL();
  }

  v8 = v16;
  *__error() = v8;
  return v18;
}

int sigemptyset(sigset_t *a1)
{
  result = 0;
  *a1 = 0;
  return result;
}

int sigaddset(sigset_t *a1, int a2)
{
  if (a2 < 0 || a2 > 32)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    if (a2)
    {
      *a1 |= 1 << (a2 - 1);
    }

    return 0;
  }
}

int sigdelset(sigset_t *a1, int a2)
{
  if (a2 < 0 || a2 > 32)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    if (a2)
    {
      *a1 &= ~(1 << (a2 - 1));
    }

    return 0;
  }
}

int sigismember(const sigset_t *a1, int a2)
{
  if (a2 < 0 || a2 > 32)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    return a2 && (*a1 & (1 << (a2 - 1))) != 0;
  }
}

char *__cdecl fflagstostr(unint64_t a1)
{
  v10 = malloc_type_malloc();
  if (!v10)
  {
    return 0;
  }

  v7 = a1;
  v8 = v10;
  for (i = 0; i < 0x15; ++i)
  {
    if ((v7 & (&mapping)[3 * i + 1]) != 0)
    {
      if (v8 > v10)
      {
        v1 = v8++;
        *v1 = 44;
      }

      if (LODWORD((&mapping)[3 * i + 2]))
      {
        v5 = (&mapping)[3 * i];
      }

      else
      {
        v5 = (&mapping)[3 * i] + 2;
      }

      v9 = v5;
      while (*v9)
      {
        v2 = v9++;
        v3 = v8++;
        *v3 = *v2;
      }

      v7 &= ~(&mapping)[3 * i + 1];
    }
  }

  *v8 = 0;
  return v10;
}

int strtofflags(char **a1, unint64_t *a2, unint64_t *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  __stringp = 0;
  if (a2)
  {
    *v8 = 0;
  }

  if (v7)
  {
    *v7 = 0;
  }

  __stringp = *v9;
  while (1)
  {
    __s1 = strsep(&__stringp, "\t ,");
    if (!__s1)
    {
      return 0;
    }

    *v9 = __s1;
    if (*__s1)
    {
      for (i = 0; i < 0x15; ++i)
      {
        if (!strcmp(__s1, (&mapping)[3 * i] + 2))
        {
          if (LODWORD((&mapping)[3 * i + 2]))
          {
            if (v7)
            {
              *v7 |= (&mapping)[3 * i + 1];
            }
          }

          else if (v8)
          {
            *v8 |= (&mapping)[3 * i + 1];
          }

          break;
        }

        if (!strcmp(__s1, (&mapping)[3 * i]))
        {
          if (LODWORD((&mapping)[3 * i + 2]))
          {
            if (v8)
            {
              *v8 |= (&mapping)[3 * i + 1];
            }
          }

          else if (v7)
          {
            *v7 |= (&mapping)[3 * i + 1];
          }

          break;
        }
      }

      if (i == 21)
      {
        return 1;
      }
    }
  }
}

uint64_t __thread_stack_pcs(uint64_t a1, unsigned int a2, _DWORD *a3, int a4, unint64_t a5, char a6)
{
  v22 = pthread_self();
  stackaddr_np = pthread_get_stackaddr_np(v22);
  v19 = &stackaddr_np[-pthread_get_stacksize_np(v22)];
  v18 = 0;
  *a3 = 0;
  v25 = &vars0;
  v23 = pthread_stack_frame_decode_np();
  _dyld_stack_range();
  if (&vars0)
  {
    return 0;
  }

  else
  {
    if (&vars0 < v19 || &vars0 > stackaddr_np)
    {
      if (a5 || (a6 & 1) != 0)
      {
        return 0;
      }

      while (a4)
      {
        --a4;
        v17 = v23 - v25;
        if ((v23 & 1) != 0 || (v23 < v19 || v23 > stackaddr_np) && (v17 <= 0 || v17 >= 0x100000))
        {
          return 0;
        }

        v25 = v23;
        v23 = pthread_stack_frame_decode_np();
        if (v25 >= v19 && v25 <= stackaddr_np)
        {
          goto LABEL_32;
        }
      }

      while (a2--)
      {
        if (__is_async_frame(v25))
        {
          v18 = 1;
        }

        v23 = pthread_stack_frame_decode_np();
        *(a1 + 8 * (*a3)++) = 0;
        v16 = v23 - v25;
        if ((v23 & 1) != 0 || (v23 < v19 || v23 > stackaddr_np) && (v16 <= 0 || v16 >= 0x100000))
        {
          return v18;
        }

        v25 = v23;
        if (v23 >= v19 && v23 <= stackaddr_np)
        {
          break;
        }
      }

      if (a2 == -1)
      {
        return v18;
      }
    }

LABEL_32:
    v21 = &stackaddr_np[-(v23 - v25)];
    while (1)
    {
      v14 = 1;
      if (!a5)
      {
        v7 = a4--;
        v14 = v7 != 0;
      }

      if (!v14 || a5 && a5 < v23)
      {
        break;
      }

      if (v23 < v19 || v23 > v21 || (v23 & 1) != 0 || v23 <= v25)
      {
        return 0;
      }

      v25 = v23;
      v23 = pthread_stack_frame_decode_np();
    }

    while (a2--)
    {
      *&v15[8] = 0;
      *v15 = __is_async_frame(v25);
      if (*v15)
      {
        if (a6)
        {
          __thread_stack_async_pcs(a1, a2, a3, v25);
          return *v15;
        }

        v18 = 1;
      }

      v24 = pthread_stack_frame_decode_np();
      *(a1 + 8 * (*a3)++) = *&v15[4];
      if (v24 < v19 || v24 > v21 || (v24 & 1) != 0)
      {
        return v18;
      }

      if (v24 <= v25)
      {
        v13 = 0;
        if (v24 >= v19)
        {
          v13 = v24 <= v21;
        }

        if (v13)
        {
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }

        v12 = 0;
        if (v25 >= v19)
        {
          v12 = v25 <= v21;
        }

        v10 = v12 ? 1 : 2;
        if (v9 == v10)
        {
          return v18;
        }
      }

      v25 = v24;
    }

    return v18;
  }
}

uint64_t __is_async_frame(void *a1)
{
  if (*a1 >> 60 == 1)
  {
    v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 824);
    if (v2)
    {
      return *(v2 + 36);
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

int uname(utsname *a1)
{
  v6 = a1;
  v5 = 0;
  v7 = 1;
  v8 = 1;
  v4 = 256;
  if (sysctl(&v7, 2u, a1, &v4, 0, 0) == -1)
  {
    v5 = -1;
  }

  v7 = 1;
  v8 = 10;
  v4 = 256;
  if (sysctl(&v7, 2u, v6->nodename, &v4, 0, 0) == -1)
  {
    v5 = -1;
  }

  v7 = 1;
  v8 = 2;
  v4 = 256;
  if (sysctl(&v7, 2u, v6->release, &v4, 0, 0) == -1)
  {
    v5 = -1;
  }

  v7 = 1;
  v8 = 4;
  v4 = 256;
  if (sysctl(&v7, 2u, v6->version, &v4, 0, 0) == -1)
  {
    v5 = -1;
  }

  else
  {
    for (i = v6->version; v4--; ++i)
    {
      if (*i == 10 || *i == 9)
      {
        if (v4 <= 1)
        {
          *i = 0;
        }

        else
        {
          *i = 32;
        }
      }
    }
  }

  v7 = 6;
  v8 = 1;
  v4 = 256;
  if (sysctl(&v7, 2u, v6->machine, &v4, 0, 0) == -1)
  {
    return -1;
  }

  return v5;
}

locale_t duplocale(locale_t a1)
{
  if (a1)
  {
    v3 = 1;
    if (a1 != -1)
    {
      v3 = *(a1 + 163) == 0x786C6F63616C6530;
    }

    if (v3)
    {
      v1 = 0;
    }

    else
    {
      v1 = -1;
    }

    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 0x80000000) == 0)
  {
    return _duplocale(a1);
  }

  *__error() = 22;
  return 0;
}

char *_duplocale(os_unfair_lock_s *a1)
{
  __dst = malloc_type_malloc();
  if (!__dst)
  {
    return 0;
  }

  *__dst = 1;
  *(__dst + 1) = destruct_locale;
  *(__dst + 324) = 0;
  if (a1)
  {
    if (a1 == -1)
    {
      a1 = __global_locale;
    }

    else if (a1 == &__c_locale)
    {
      memcpy(__dst, &__c_locale, 0x5C0uLL);
      *__dst = 1;
      *(__dst + 1) = destruct_locale;
      *(__dst + 324) = 0;
      return __dst;
    }
  }

  else
  {
    v8 = __locale_key;
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v8);
    if (v7)
    {
      v2 = v7;
    }

    else
    {
      v2 = __global_locale;
    }

    a1 = v2;
  }

  os_unfair_lock_lock(a1 + 324);
  memcpy(__dst + 1304, &a1[326], 0xA8uLL);
  os_unfair_lock_unlock(a1 + 324);
  bzero(__dst + 16, 0x508uLL);
  for (i = 0; i < 6; ++i)
  {
    xlocale_retain(*&__dst[8 * i + 1320]);
  }

  xlocale_retain(*(__dst + 171));
  return __dst;
}

int freelocale(locale_t a1)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  v3 = 1;
  if (a1 != -1)
  {
    v3 = *(a1 + 163) == 0x786C6F63616C6530;
  }

  v1 = v3 ? 0 : -1;
  if (v1 < 0 || a1 == __global_locale || a1 == -1 || a1 == &__c_locale)
  {
LABEL_11:
    *__error() = 22;
    return -1;
  }

  else
  {
    xlocale_release(a1);
    return 0;
  }
}

uint64_t xlocale_release(uint64_t result)
{
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    if (*(result + 8))
    {
      return (*(result + 8))(result);
    }
  }

  return result;
}

locale_t newlocale(int a1, const char *a2, locale_t a3)
{
  v10 = a1 & 0x3F;
  v9 = 0;
  if (a2)
  {
    v8 = 1;
    if (strlen(a2) <= 0x1F)
    {
      if (*a2 != 46 || (v8 = 1, a2[1]) && (a2[1] != 46 || (v8 = 1, a2[2])))
      {
        v8 = strchr(a2, 47) != 0;
      }
    }

    v9 = v8;
  }

  if (v9)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_13;
  }

  if (v10 == 63)
  {
    v4 = _duplocale(&__c_locale);
  }

  else
  {
    if (a3)
    {
      v7 = 1;
      if (a3 != -1)
      {
        v7 = *(a3 + 163) == 0x786C6F63616C6530;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -1;
      }

      v15 = v5;
    }

    else
    {
      v15 = 0;
    }

    if (v15 < 0)
    {
LABEL_13:
      *__error() = 22;
      return 0;
    }

    v4 = _duplocale(a3);
  }

  v11 = v4;
  if (!v4)
  {
    return 0;
  }

  if (!v10 || v10 == 63 && !a2)
  {
    return v4;
  }

  if ((_modifylocale(v4, v10, a2) & 0x80000000) == 0)
  {
    return v11;
  }

  freelocale(v11);
  return 0;
}

uint64_t _modifylocale(uint64_t a1, int a2, char *a3)
{
  v30 = a3;
  locale_env = 0;
  if (!a3)
  {
    v30 = &C;
  }

  v28 = __detect_path_locale();
  if (!v28)
  {
    if (*v30)
    {
      locale_env = v30;
    }

    for (i = 1; ; i *= 2)
    {
      if (i > 32)
      {
        return 0;
      }

      if ((i & a2) != 0)
      {
        switch(i)
        {
          case 1:
            if (!*v30)
            {
              locale_env = __get_locale_env(1);
              v26 = 0;
              if (locale_env)
              {
                v25 = 1;
                if (strlen(locale_env) <= 0x1F)
                {
                  if (*locale_env != 46 || (v25 = 1, locale_env[1]) && (locale_env[1] != 46 || (v25 = 1, locale_env[2])))
                  {
                    v25 = strchr(locale_env, 47) != 0;
                  }
                }

                v26 = v25;
              }

              v3 = v26 ? -1 : 0;
              if (v3 < 0)
              {
LABEL_132:
                *__error() = 22;
                return -1;
              }
            }

            if (*(*(a1 + 1320) + 64))
            {
              v24 = &C;
            }

            else
            {
              v24 = (*(a1 + 1320) + 16);
            }

            if (strcmp(locale_env, v24) && __collate_load_tables(locale_env, a1) == -1)
            {
              return -1;
            }

            xlocale_fill_name(*(a1 + 1320), locale_env);
            break;
          case 2:
            if (!*v30)
            {
              locale_env = __get_locale_env(2);
              v23 = 0;
              if (locale_env)
              {
                v22 = 1;
                if (strlen(locale_env) <= 0x1F)
                {
                  if (*locale_env != 46 || (v22 = 1, locale_env[1]) && (locale_env[1] != 46 || (v22 = 1, locale_env[2])))
                  {
                    v22 = strchr(locale_env, 47) != 0;
                  }
                }

                v23 = v22;
              }

              v4 = v23 ? -1 : 0;
              if (v4 < 0)
              {
                goto LABEL_132;
              }
            }

            if (strcmp(locale_env, (*(a1 + 1328) + 16)))
            {
              v28 = __setrunelocale(locale_env, a1);
              if (v28)
              {
                goto LABEL_4;
              }

              xlocale_fill_name(*(a1 + 1328), locale_env);
              if (*(a1 + 1318) == 1)
              {
                *(a1 + 1318) = 0;
              }
            }

            break;
          case 4:
            if (!*v30)
            {
              locale_env = __get_locale_env(6);
              v21 = 0;
              if (locale_env)
              {
                v20 = 1;
                if (strlen(locale_env) <= 0x1F)
                {
                  if (*locale_env != 46 || (v20 = 1, locale_env[1]) && (locale_env[1] != 46 || (v20 = 1, locale_env[2])))
                  {
                    v20 = strchr(locale_env, 47) != 0;
                  }
                }

                v21 = v20;
              }

              v5 = v21 ? -1 : 0;
              if (v5 < 0)
              {
                goto LABEL_132;
              }
            }

            if (*(a1 + 1312))
            {
              v19 = *(*(a1 + 1360) + 64);
            }

            else
            {
              v19 = &C;
            }

            if (strcmp(locale_env, v19) && __messages_load_locale(locale_env, a1) == -1)
            {
              return -1;
            }

            xlocale_fill_name(*(a1 + 1360), locale_env);
            break;
          case 8:
            if (!*v30)
            {
              locale_env = __get_locale_env(3);
              v18 = 0;
              if (locale_env)
              {
                v17 = 1;
                if (strlen(locale_env) <= 0x1F)
                {
                  if (*locale_env != 46 || (v17 = 1, locale_env[1]) && (locale_env[1] != 46 || (v17 = 1, locale_env[2])))
                  {
                    v17 = strchr(locale_env, 47) != 0;
                  }
                }

                v18 = v17;
              }

              v6 = v18 ? -1 : 0;
              if (v6 < 0)
              {
                goto LABEL_132;
              }
            }

            if (*(a1 + 1313))
            {
              v16 = *(*(a1 + 1336) + 64);
            }

            else
            {
              v16 = &C;
            }

            if (strcmp(locale_env, v16) && __monetary_load_locale(locale_env, a1) == -1)
            {
              return -1;
            }

            xlocale_fill_name(*(a1 + 1336), locale_env);
            break;
          case 16:
            if (!*v30)
            {
              locale_env = __get_locale_env(4);
              v15 = 0;
              if (locale_env)
              {
                v14 = 1;
                if (strlen(locale_env) <= 0x1F)
                {
                  if (*locale_env != 46 || (v14 = 1, locale_env[1]) && (locale_env[1] != 46 || (v14 = 1, locale_env[2])))
                  {
                    v14 = strchr(locale_env, 47) != 0;
                  }
                }

                v15 = v14;
              }

              v7 = v15 ? -1 : 0;
              if (v7 < 0)
              {
                goto LABEL_132;
              }
            }

            if (*(a1 + 1314))
            {
              v13 = *(*(a1 + 1344) + 64);
            }

            else
            {
              v13 = &C;
            }

            if (strcmp(locale_env, v13))
            {
              if (__numeric_load_locale(locale_env, a1) == -1)
              {
                return -1;
              }

              xlocale_fill_name(*(a1 + 1344), locale_env);
              *(a1 + 1318) = 0;
              xlocale_release(*(a1 + 1368));
              *(a1 + 1368) = 0;
            }

            break;
          case 32:
            if (!*v30)
            {
              locale_env = __get_locale_env(5);
              v12 = 0;
              if (locale_env)
              {
                v11 = 1;
                if (strlen(locale_env) <= 0x1F)
                {
                  if (*locale_env != 46 || (v11 = 1, locale_env[1]) && (locale_env[1] != 46 || (v11 = 1, locale_env[2])))
                  {
                    v11 = strchr(locale_env, 47) != 0;
                  }
                }

                v12 = v11;
              }

              v8 = v12 ? -1 : 0;
              if (v8 < 0)
              {
                goto LABEL_132;
              }
            }

            if (*(a1 + 1315))
            {
              v10 = *(*(a1 + 1352) + 64);
            }

            else
            {
              v10 = &C;
            }

            if (strcmp(locale_env, v10) && __time_load_locale(locale_env, a1) == -1)
            {
              return -1;
            }

            xlocale_fill_name(*(a1 + 1352), locale_env);
            break;
        }
      }
    }
  }

LABEL_4:
  *__error() = v28;
  return -1;
}

uint64_t __numeric_ctype(uint64_t a1)
{
  v3 = *(a1 + 1318);
  if (*(a1 + 1318))
  {
    if (v3 == 1)
    {
      return a1;
    }

    else if (v3 == 2)
    {
      return *(a1 + 1368);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    if (*(a1 + 1314))
    {
      v2 = *(*(a1 + 1344) + 64);
    }

    else
    {
      v2 = &C;
    }

    if (!strcmp((*(a1 + 1328) + 16), v2))
    {
      *(a1 + 1318) = 1;
      return a1;
    }

    else
    {
      *(a1 + 1368) = newlocale(2, v2, &__c_locale);
      if (*(a1 + 1368))
      {
        *(a1 + 1318) = 2;
        return *(a1 + 1368);
      }

      else
      {
        *(a1 + 1318) = 1;
        return a1;
      }
    }
  }
}

const char *__cdecl querylocale(int a1, locale_t a2)
{
  v9 = a2;
  if (a2)
  {
    v5 = 1;
    if (a2 != -1)
    {
      v5 = *(a2 + 163) == 0x786C6F63616C6530;
    }

    if (v5)
    {
      v2 = 0;
    }

    else
    {
      v2 = -1;
    }

    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0 || (a1 & 0x3F) == 0)
  {
    goto LABEL_11;
  }

  if (a2)
  {
    if (a2 == -1)
    {
      v9 = __global_locale;
    }
  }

  else
  {
    v13 = __locale_key;
    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v13);
    v4 = (v12 ? v12 : __global_locale);
    v9 = v4;
  }

  v7 = ffs(a1) - 1;
  if (v7 >= 6)
  {
LABEL_11:
    *__error() = 22;
    return 0;
  }

  else
  {
    v8 = querylocale_mapping[v7];
    if (v8 >= 6)
    {
      __assert_rtn("querylocale", "xlocale.c", 437, "type < XLC_LAST");
    }

    os_unfair_lock_lock(v9 + 324);
    if (*(v9 + v8 + 165))
    {
      v6 = (*(v9 + v8 + 165) + 16);
    }

    else
    {
      v6 = &C;
    }

    os_unfair_lock_unlock(v9 + 324);
    return v6;
  }
}

locale_t uselocale(locale_t a1)
{
  v6 = a1;
  if (a1)
  {
    v4 = 1;
    if (a1 != -1)
    {
      v4 = *(a1 + 163) == 0x786C6F63616C6530;
    }

    if (v4)
    {
      v1 = 0;
    }

    else
    {
      v1 = -1;
    }

    if (v1 < 0)
    {
      *__error() = 22;
      return 0;
    }

    if (a1 == -1 || a1 == __global_locale)
    {
      v6 = 0;
    }

    xlocale_retain(v6);
    v5 = pthread_getspecific(__locale_key);
    pthread_setspecific(__locale_key, v6);
    xlocale_release(v5);
  }

  else
  {
    v5 = pthread_getspecific(__locale_key);
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

atomic_uint *xlocale_retain(atomic_uint *a1)
{
  if (!a1)
  {
    return 0;
  }

  atomic_fetch_add(a1, 1u);
  return a1;
}

int ___mb_cur_max(void)
{
  v3 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v2)
  {
    v1 = v2;
  }

  else
  {
    v1 = __global_locale;
  }

  return *(v1[166] + 64);
}

int ___mb_cur_max_l(locale_t a1)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == -1)
    {
      v2 = &__global_locale;
    }
  }

  else
  {
    v2 = &__c_locale;
  }

  return *(*(v2 + 166) + 64);
}

uint64_t __xlocale_init()
{
  if (__locale_key == -1)
  {
    __locale_key = 10;
    return pthread_key_init_np();
  }

  return result;
}

void destruct_locale(uint64_t *a1)
{
  for (i = 0; i < 6; ++i)
  {
    xlocale_release(a1[i + 165]);
  }

  xlocale_release(a1[171]);
  free(a1);
}

size_t xlocale_fill_name(size_t result, const char *a2)
{
  if (result)
  {
    return strlcpy((result + 16), a2, 0x20uLL);
  }

  return result;
}

const char *_subsystem_init()
{
  result = _simple_getenv();
  if (result)
  {
    subsystem_root_path = result;
    result = strnlen(result, 0x400uLL);
    subsystem_root_path_len = result;
  }

  return result;
}

uint64_t open_with_subsystem(const char *a1, __int16 a2)
{
  if ((a2 & 0x200) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    v5 = open_NOCANCEL();
    if ((v5 & 0x80000000) != 0 && *__error() == 2 && subsystem_root_path)
    {
      next_subsystem_root_path = subsystem_root_path;
      while (1)
      {
        next_subsystem_root_path = extract_next_subsystem_root_path(v8, 1024, next_subsystem_root_path);
        if (!append_path_to_subsystem_root(v8, 0x400uLL, a1))
        {
          break;
        }

        v5 = open_NOCANCEL();
        if ((v5 & 0x80000000) != 0)
        {
          v2 = __OFSUB__(*__error(), 2);
          if (next_subsystem_root_path)
          {
            continue;
          }
        }

        return v5;
      }

      *__error() = 63;
    }

    return v5;
  }
}

const char *extract_next_subsystem_root_path(void *a1, uint64_t a2, const char *a3)
{
  v6 = 0;
  __n = strlen(a3);
  if (!a2)
  {
    return a3;
  }

  v4 = memchr(a3, 58, __n);
  if (v4)
  {
    __n = v4 - a3;
    v6 = 1;
  }

  if (__n > a2 - 1)
  {
    return 0;
  }

  memcpy(a1, a3, __n);
  *(a1 + __n) = 0;
  if (v6)
  {
    return v4 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t stat_with_subsystem(const char *a1, stat *a2)
{
  v5 = stat(a1, a2);
  if ((v5 & 0x80000000) != 0 && *__error() == 2 && subsystem_root_path)
  {
    next_subsystem_root_path = subsystem_root_path;
    while (1)
    {
      next_subsystem_root_path = extract_next_subsystem_root_path(v8, 1024, next_subsystem_root_path);
      if (!append_path_to_subsystem_root(v8, 0x400uLL, a1))
      {
        break;
      }

      v5 = stat(v8, a2);
      if ((v5 & 0x80000000) != 0)
      {
        v2 = __OFSUB__(*__error(), 2);
        if (next_subsystem_root_path)
        {
          continue;
        }
      }

      return v5;
    }

    *__error() = 63;
  }

  return v5;
}

tm *__cdecl getdate(const char *a1)
{
  v22 = a1;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  i = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  memset(&__b, 0, sizeof(__b));
  __filename = getenv("DATEMSK");
  if (!__filename || !*__filename)
  {
    getdate_err = 1;
    return 0;
  }

  v12 = *__error();
  v18 = fopen(__filename, "r");
  if (!v18)
  {
    getdate_err = 2;
    v4 = v12;
    *__error() = v4;
    return 0;
  }

  v1 = fileno(v18);
  if (fstat(v1, &__b) < 0)
  {
    getdate_err = 3;
    goto LABEL_97;
  }

  if ((__b.st_mode & 0xF000) != 0x8000)
  {
    getdate_err = 4;
    goto LABEL_97;
  }

  v17 = 1024;
  v9 = malloc_type_malloc();
  if (!v9)
  {
    getdate_err = 6;
    goto LABEL_97;
  }

  for (i = 0; ; i = 0)
  {
    while (fgets(&v9[i], v17 - i, v18))
    {
      v15 = strlen(v9);
      if (v15 != v17 - 1 || v9[v15 - 1] == 10)
      {
        goto LABEL_24;
      }

      v17 += 1024;
      v6 = malloc_type_realloc();
      if (!v6)
      {
        getdate_err = 6;
        goto LABEL_96;
      }

      v9 = v6;
      i = v15;
    }

    if (ferror(v18))
    {
      getdate_err = 5;
      goto LABEL_96;
    }

    if (!i)
    {
      getdate_err = 7;
      goto LABEL_96;
    }

    v15 = strlen(v9);
LABEL_24:
    if (v9[v15 - 1] == 10)
    {
      v9[v15 - 1] = 0;
    }

    memcpy(&getdate_tm, &tmundef, 0x38uLL);
    if (strptime(v22, v9, &getdate_tm))
    {
      break;
    }
  }

  time(&v19);
  v21 = localtime(&v19);
  v13 = 0;
  v14 = 0;
  if (getdate_tm != -1)
  {
    v13 |= 1u;
  }

  if (dword_D677C != -1)
  {
    v13 |= 2u;
  }

  if (dword_D6780 != -1)
  {
    v13 |= 4u;
  }

  if (dword_D6784 != -1)
  {
    v14 |= 1u;
  }

  if (dword_D6788 != -1)
  {
    v14 |= 2u;
  }

  if (dword_D678C != -1)
  {
    v14 |= 4u;
  }

  v11 = dword_D6790;
  if (v13)
  {
    switch(v13)
    {
      case 1:
        dword_D6780 = v21->tm_hour;
        dword_D677C = v21->tm_min;
        if (getdate_tm < v21->tm_sec)
        {
          ++dword_D677C;
        }

        break;
      case 2:
        dword_D6780 = v21->tm_hour;
        if (dword_D677C < v21->tm_min)
        {
          ++dword_D6780;
        }

        getdate_tm = 0;
        break;
      case 3:
        dword_D6780 = v21->tm_hour;
        if (60 * dword_D677C + getdate_tm < 60 * v21->tm_min + v21->tm_sec)
        {
          ++dword_D6780;
        }

        break;
      case 4:
        dword_D677C = 0;
        getdate_tm = 0;
        break;
      case 5:
        dword_D677C = 0;
        break;
      case 6:
        getdate_tm = 0;
        break;
    }
  }

  else
  {
    getdate_tm = v21->tm_sec;
    dword_D677C = v21->tm_min;
    dword_D6780 = v21->tm_hour;
  }

  if (!v14)
  {
    dword_D6784 = v21->tm_mday;
    if (dword_D6780 < v21->tm_hour)
    {
      ++dword_D6784;
    }

    dword_D6788 = v21->tm_mon;
    dword_D678C = v21->tm_year;
    goto LABEL_84;
  }

  if (v14 == 1)
  {
    dword_D678C = v21->tm_year;
    dword_D6788 = v21->tm_mon;
    if (dword_D6784 < v21->tm_mday)
    {
      ++dword_D6788;
    }

    goto LABEL_84;
  }

  if (v14 != 3 && v14 != 2)
  {
    switch(v14)
    {
      case 4:
        goto LABEL_79;
      case 5:
        dword_D6788 = v21->tm_mon;
        if (dword_D6784 < v21->tm_mday)
        {
          ++dword_D6788;
        }

        break;
      case 6:
LABEL_79:
        if ((v14 & 2) == 0)
        {
          dword_D6788 = 0;
        }

        dword_D6784 = 1;
        break;
    }
  }

  else
  {
    dword_D678C = v21->tm_year;
    if (dword_D6788 < v21->tm_mon)
    {
      ++dword_D678C;
    }

    if ((v14 & 1) == 0)
    {
      dword_D6784 = 1;
    }
  }

LABEL_84:
  dword_D6790 = v21->tm_wday;
  qword_D67A0 = v21->tm_gmtoff;
  dword_D6798 = -1;
  v10 = dword_D6788;
  if (mktime(&getdate_tm) == -1)
  {
    getdate_err = 8;
  }

  else if ((v14 & 2) == 0 || dword_D6788 == v10)
  {
    if (v11 == -1 || v14 == 7)
    {
      goto LABEL_95;
    }

    v5 = v11 - dword_D6790;
    if (v11 - dword_D6790 < 0)
    {
      v5 += 7;
    }

    dword_D6784 += v5;
    if (mktime(&getdate_tm) != -1)
    {
LABEL_95:
      v20 = &getdate_tm;
    }

    else
    {
      getdate_err = 8;
    }
  }

  else
  {
    getdate_err = 8;
  }

LABEL_96:
  free(v9);
LABEL_97:
  fclose(v18);
  v3 = v12;
  *__error() = v3;
  return v20;
}

void free_printf_comp(printf_comp_t __pc)
{
  if (__pc)
  {
    xlocale_release(*(__pc + 10));
    free(*(__pc + 11));
    free(*(__pc + 13));
    free(*(__pc + 14));
    pthread_mutex_destroy(__pc);
    free(__pc);
  }
}

printf_comp_t new_printf_comp(printf_domain_t __domain, locale_t __loc, const char *__fmt)
{
  if (__domain)
  {
    strlen(__fmt);
    __b = malloc_type_malloc();
    if (__b)
    {
      memset(__b, 0, 0x80uLL);
      memset(v14, 0, sizeof(v14));
      v14[0] = 850045863;
      memcpy(__b, v14, 0x40uLL);
      *(__b + 8) = __b + 128;
      strcpy(*(__b + 8), __fmt);
      if (__loc)
      {
        if (__loc == -1)
        {
          __loc = __global_locale;
        }

        xlocale_retain(__loc);
      }

      else
      {
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

        __loc = v4;
        xlocale_retain(v4);
      }

      *(__b + 10) = __loc;
      pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
      pthread_rwlock_rdlock(__domain);
      v7 = __printf_comp(__b, __domain);
      v6 = *__error();
      pthread_rwlock_unlock(__domain);
      if (v7 < 0)
      {
        xlocale_release(__loc);
        pthread_mutex_destroy(__b);
        free(__b);
        *__error() = v6;
        return 0;
      }

      else
      {
        return __b;
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

void *__xprintf_domain_init()
{
  xprintf_domain_default = malloc_type_calloc();
  if (!xprintf_domain_default)
  {
    abort_report_np("%s:%s:%u: No memory");
  }

  memset(__b, 0, sizeof(__b));
  __b[0] = 766030772;
  result = memcpy(xprintf_domain_default, __b, 0xC8uLL);
  for (i = "#$'*+,-.0123456789:;L_hjlqtvz"; *i; ++i)
  {
    *(xprintf_domain_default + 200 + *i - 33) = 3;
  }

  v12 = &_printf_tbl_defaults_fbsd;
  for (j = 6; j > 0; --j)
  {
    for (k = *v12; *k; ++k)
    {
      *(xprintf_domain_default + 200 + *k - 33) = 2;
      v3 = xprintf_domain_default + 296 + 24 * (*k - 33);
      v4 = 0;
      if (v12[2])
      {
        v4 = v12[2];
      }

      *(&v9 + 1) = v4;
      *&v9 = v12[1];
      *v3 = v9;
      *(v3 + 16) = 0;
    }

    v12 += 3;
  }

  v8 = &_printf_tbl_defaults_glibc;
  for (m = 1; m > 0; --m)
  {
    for (n = *v8; *n; ++n)
    {
      *(xprintf_domain_default + 200 + *n - 33) = 1;
      v1 = xprintf_domain_default + 296 + 24 * (*n - 33);
      v2 = 0;
      if (v8[2])
      {
        v2 = v8[2];
      }

      *(&v5 + 1) = v2;
      *&v5 = v8[1];
      *v1 = v5;
      *(v1 + 16) = 0;
    }

    v8 += 3;
  }

  return result;
}

printf_domain_t copy_printf_domain(printf_domain_t __domain)
{
  if (__domain)
  {
    __dst = malloc_type_malloc();
    if (__dst)
    {
      pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
      pthread_rwlock_rdlock(__domain);
      memcpy(__dst, __domain, 0x9F8uLL);
      pthread_rwlock_unlock(__domain);
      memset(__b, 0, sizeof(__b));
      __b[0] = 766030772;
      memcpy(__dst, __b, 0xC8uLL);
      return __dst;
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

void free_printf_domain(printf_domain_t __domain)
{
  if (__domain)
  {
    pthread_rwlock_destroy(__domain);
    free(__domain);
  }
}

printf_domain_t new_printf_domain(void)
{
  pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
  __dst = malloc_type_malloc();
  if (!__dst)
  {
    return 0;
  }

  memcpy(__dst, xprintf_domain_default, 0x9F8uLL);
  return __dst;
}

int register_printf_domain_function(printf_domain_t __domain, int __spec, printf_function *__render, printf_arginfo_function *__arginfo, void *__context)
{
  *(&v8 + 1) = __render;
  *&v8 = __arginfo;
  pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
  if (__domain && __spec >= 33 && __spec <= 126 && (pthread_once(&__xprintf_domain_once, __xprintf_domain_init), *(__domain + __spec + 167) != 3))
  {
    pthread_rwlock_wrlock(__domain);
    if (*(&v8 + 1) && v8)
    {
      *(__domain + __spec + 167) = 1;
      v6 = __domain + 24 * __spec - 496;
      *v6 = v8;
      *(v6 + 2) = __context;
    }

    else
    {
      *(__domain + __spec + 167) = 0;
    }

    pthread_rwlock_unlock(__domain);
    return 0;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t register_printf_domain_render(pthread_rwlock_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  *(&v6 + 1) = a3;
  *&v6 = a4;
  pthread_once(&__xprintf_domain_once, __xprintf_domain_init);
  if (a1 && a2 >= 33 && a2 <= 126 && (pthread_once(&__xprintf_domain_once, __xprintf_domain_init), a1->__opaque[a2 + 159] != 3))
  {
    pthread_rwlock_wrlock(a1);
    if (*(&v6 + 1) && v6)
    {
      a1->__opaque[a2 + 159] = 2;
      v5 = &a1[-2] + 24 * a2 - 96;
      *v5 = v6;
      *(v5 + 16) = 0;
    }

    else
    {
      a1->__opaque[a2 + 159] = 0;
    }

    pthread_rwlock_unlock(a1);
    return 0;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int register_printf_domain_render_std(printf_domain_t __domain, const char *__specs)
{
  while (*__specs)
  {
    v3 = *__specs;
    switch(v3)
    {
      case 'H':
        v4 = register_printf_domain_render(__domain, *__specs, __printf_render_hexdump, __printf_arginfo_hexdump);
        break;
      case 'M':
        v4 = register_printf_domain_render(__domain, *__specs, __printf_render_errno, __printf_arginfo_errno);
        break;
      case 'Q':
        v4 = register_printf_domain_render(__domain, *__specs, __printf_render_quote, __printf_arginfo_quote);
        break;
      case 'T':
        v4 = register_printf_domain_render(__domain, *__specs, __printf_render_time, __printf_arginfo_time);
        break;
      case 'V':
        v4 = register_printf_domain_render(__domain, *__specs, __printf_render_vis, __printf_arginfo_vis);
        break;
      default:
        *__error() = 22;
        return -1;
    }

    if (v4 < 0)
    {
      return v4;
    }

    ++__specs;
  }

  return 0;
}

int asxprintf_exec(char **__ret, printf_comp_t __pc, ...)
{
  va_start(va, __pc);
  if (__pc)
  {
    return _vasprintf(__pc, 0, __ret, 0, 0, va);
  }

  *__error() = 22;
  return -1;
}

int dxprintf_exec(int __fd, printf_comp_t __pc, ...)
{
  va_start(va, __pc);
  if (__pc)
  {
    return _vdprintf(__pc, 0, __fd, 0, 0, va);
  }

  *__error() = 22;
  return -1;
}

int fxprintf_exec(FILE *__stream, printf_comp_t __pc, ...)
{
  va_start(va, __pc);
  if (__pc)
  {
    return __xvprintf(__pc, 0, __stream, 0, 0, va);
  }

  *__error() = 22;
  return -1;
}

int sxprintf_exec(char *__str, size_t __size, printf_comp_t __pc, ...)
{
  va_start(va, __pc);
  if (__pc)
  {
    return _vsnprintf(__pc, 0, __str, __size, 0, 0, va);
  }

  *__error() = 22;
  return -1;
}

int xprintf_exec(printf_comp_t __pc, ...)
{
  va_start(va, __pc);
  if (__pc)
  {
    return __xvprintf(__pc, 0, __stdoutp, 0, 0, va);
  }

  *__error() = 22;
  return -1;
}

int vasxprintf_exec(char **__ret, printf_comp_t __pc, va_list __ap)
{
  if (__pc)
  {
    return _vasprintf(__pc, 0, __ret, 0, 0, __ap);
  }

  *__error() = 22;
  return -1;
}

int vdxprintf_exec(int __fd, printf_comp_t __pc, va_list __ap)
{
  if (__pc)
  {
    return _vdprintf(__pc, 0, __fd, 0, 0, __ap);
  }

  *__error() = 22;
  return -1;
}

int vfxprintf_exec(FILE *__stream, printf_comp_t __pc, va_list __ap)
{
  if (__pc)
  {
    return __xvprintf(__pc, 0, __stream, 0, 0, __ap);
  }

  *__error() = 22;
  return -1;
}

int vsxprintf_exec(char *__str, size_t __size, printf_comp_t __pc, va_list __ap)
{
  if (__pc)
  {
    return _vsnprintf(__pc, 0, __str, __size, 0, 0, __ap);
  }

  *__error() = 22;
  return -1;
}

int vxprintf_exec(printf_comp_t __pc, va_list __ap)
{
  if (__pc)
  {
    return __xvprintf(__pc, 0, __stdoutp, 0, 0, __ap);
  }

  *__error() = 22;
  return -1;
}

int login_tty(int a1)
{
  v2 = a1;
  setsid();
  if (ioctl(v2, 0x20007461uLL, 0) == -1)
  {
    return -1;
  }

  dup2(v2, 0);
  dup2(v2, 1);
  dup2(v2, 2);
  if (v2 > 2)
  {
    close_NOCANCEL();
  }

  return 0;
}

uint64_t _mkpath(int a1, const char *a2, mode_t a3, char **a4)
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
  v14 = *__error();
  memset(&__b, 0, sizeof(__b));
  if (mkdirat(v26, v25, v24))
  {
    v11 = *__error();
    switch(v11)
    {
      case 2:
        v5 = strdup(v25);
        v22 = v5;
        if (v5)
        {
          v20 = &v22[strlen(v22) - 1];
          v18 = v20;
          do
          {
            v19 = v20;
            if (v20 - 1 > v22 && *v20 == 46 && *(v20 - 1) == 47)
            {
              v20 -= 2;
            }

            if (v20 > v22 && *v20 == 47)
            {
              --v20;
            }
          }

          while (v20 < v19);
          if (v20 >= v18 || (v20[1] = 0, v21 = strdup(v22), (v25 = v21) != 0))
          {
            if (mkdirat(v26, v25, v24))
            {
              while (1)
              {
                v20 = strrchr(v22, 47);
                if (!v20)
                {
                  v15 = 2;
                  goto LABEL_67;
                }

                *v20 = 0;
                ++v17;
                if (!mkdirat(v26, v22, 0x1FFu))
                {
                  memset(&v12, 0, sizeof(v12));
                  if (fstatat(v26, v22, &v12, 0) == -1)
                  {
                    v15 = 2;
                  }

                  else
                  {
                    if ((v12.st_mode & 0xC0) == 0xC0 || (v16 = v12.st_mode | 0xC0, fchmodat(v26, v22, v12.st_mode | 0xC0, 0) != -1))
                    {
                      if (v23)
                      {
                        v7 = strdup(v22);
                        *v23 = v7;
                      }

                      goto LABEL_54;
                    }

                    v15 = 2;
                  }

                  goto LABEL_67;
                }

                if (*__error() == 17)
                {
                  break;
                }

                if (*__error() != 2)
                {
                  goto LABEL_8;
                }
              }

              if (fstatat(v26, v22, &__b, 0) || (__b.st_mode & 0xF000) != 0x4000)
              {
                v15 = 20;
              }

              else
              {
                if (v23)
                {
                  v8 = strdup(v22);
                  *v23 = v8;
                }

LABEL_54:
                while (v17 > 1)
                {
                  v20 = strrchr(v22, 0);
                  *v20 = 47;
                  --v17;
                  if (mkdirat(v26, v22, 0x1FFu) == -1)
                  {
                    if (*__error() != 17)
                    {
                      v15 = *__error();
                      goto LABEL_67;
                    }
                  }

                  else if (v16 && fchmodat(v26, v22, v16, 0) == -1)
                  {
                    v15 = 2;
                    goto LABEL_67;
                  }
                }

                if (mkdirat(v26, v25, v24) == -1)
                {
                  v15 = *__error();
                  if (*__error() == 17 && !fstatat(v26, v25, &__b, 0) && (__b.st_mode & 0xF000) != 0x4000)
                  {
                    v15 = 20;
                  }
                }
              }
            }

            else if (v23)
            {
              v6 = strdup(v25);
              *v23 = v6;
            }
          }

          else
          {
            v15 = 12;
          }
        }

        else
        {
          v15 = 12;
        }

        break;
      case 17:
        if (fstatat(v26, v25, &__b, 0))
        {
          v15 = 5;
        }

        else if ((__b.st_mode & 0xF000) == 0x4000)
        {
          v15 = 17;
        }

        else
        {
          v15 = 20;
        }

        break;
      case 21:
        v15 = 17;
        break;
      default:
LABEL_8:
        v15 = *__error();
        break;
    }
  }

  else if (v23)
  {
    v4 = strdup(v25);
    *v23 = v4;
  }

LABEL_67:
  free(v22);
  free(v21);
  v10 = v14;
  *__error() = v10;
  return v15;
}

int raise(int a1)
{
  v1 = pthread_self();
  v4 = pthread_kill(v1, a1);
  if (!v4)
  {
    return 0;
  }

  if (v4 == 45)
  {
    v2 = getpid();
    return kill(v2, a1);
  }

  else
  {
    *__error() = v4;
    return -1;
  }
}

int uuid_compare(const uuid_t uu1, const uuid_t uu2)
{
  v12 = uu1;
  v11 = uu2;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  uuid_unpack(uu1, &v9);
  uuid_unpack(v11, &v7);
  if (v9 == v7)
  {
    if (WORD2(v9) == WORD2(v7))
    {
      if (HIWORD(v9) == HIWORD(v7))
      {
        if (v10 == v8)
        {
          return memcmp(&v10 + 2, &v8 + 2, 6uLL);
        }

        else if (v10 < v8)
        {
          return -1;
        }

        else
        {
          return 1;
        }
      }

      else if (HIWORD(v9) < HIWORD(v7))
      {
        return -1;
      }

      else
      {
        return 1;
      }
    }

    else if (WORD2(v9) < WORD2(v7))
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else if (v9 < v7)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void uuid_copy(uuid_t dst, const uuid_t src)
{
  for (i = 0; i < 16; ++i)
  {
    v2 = src++;
    v3 = dst++;
    *v3 = *v2;
  }
}

void uuid_generate_time(uuid_t out)
{
  v4 = out;
  v2 = 0;
  v3 = 0;
  v1 = 0;
  if (!uuid_generate_time_has_init)
  {
    if (get_node_id(&uuid_generate_time_node_id) <= 0)
    {
      arc4random_buf(&uuid_generate_time_node_id, 6uLL);
      LOBYTE(uuid_generate_time_node_id) = uuid_generate_time_node_id | 1;
    }

    uuid_generate_time_has_init = 1;
  }

  get_clock(&v1, &v2, &v3);
  LOWORD(v3) = v3 | 0x8000;
  WORD2(v2) = v1;
  HIWORD(v2) = HIWORD(v1) & 0xFFF | 0x1000;
  *(&v3 + 2) = uuid_generate_time_node_id;
  HIWORD(v3) = word_D67BC;
  uuid_pack(&v2, v4);
}

uint64_t get_node_id(_DWORD *a1)
{
  v10 = a1;
  memset(__dst, 0, sizeof(__dst));
  __src = 0;
  memset(v7, 0, 12);
  v9 = socket(2, 2, 0);
  if (v9 < 0)
  {
    return -1;
  }

  else
  {
    bzero(v12, 0x400uLL);
    LODWORD(v7[0]) = 1024;
    *(v7 + 4) = v12;
    if (ioctl(v9, 0xC00C6924uLL, v7) < 0)
    {
      close_NOCANCEL();
      return -1;
    }

    else
    {
      v6 = v7[0];
      for (i = 0; i < v6; i += v3)
      {
        __src = (*(v7 + 4) + i);
        strncpy(__dst, __src, 0x10uLL);
        if (__src[17] == 18 && __src[22] == 6)
        {
          if ((v4 = &__src[__src[21] + 24], *v4) && *v4 != 2 || v4[1] || v4[2] || v4[3] || v4[4] || v4[5])
          {
            if (v10)
            {
              v1 = v10;
              *v10 = *v4;
              *(v1 + 2) = *(v4 + 2);
              close_NOCANCEL();
              return 1;
            }
          }
        }

        if (__src[16] + 16 >= 0x20)
        {
          v3 = __src[16] + 16;
        }

        else
        {
          v3 = 32;
        }
      }

      close_NOCANCEL();
      return 0;
    }
  }
}

uint64_t get_clock(_DWORD *a1, int *a2, _WORD *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5.tv_sec = 0;
  *&v5.tv_usec = 0;
  while (1)
  {
    gettimeofday(&v5, 0);
    if (!get_clock_last && !DWORD2(get_clock_last))
    {
      arc4random_buf(&get_clock_clock_seq, 2uLL);
      get_clock_clock_seq &= 0x3FFFu;
      get_clock_last = v5;
      *&get_clock_last = v5.tv_sec - 1;
    }

    if (v5.tv_sec < get_clock_last || v5.tv_sec == get_clock_last && v5.tv_usec < SDWORD2(get_clock_last))
    {
      get_clock_clock_seq = (get_clock_clock_seq + 1) & 0x3FFF;
      get_clock_adjustment = 0;
      get_clock_last = v5;
      goto LABEL_14;
    }

    if (v5.tv_sec != get_clock_last || v5.tv_usec != DWORD2(get_clock_last))
    {
      break;
    }

    if (get_clock_adjustment < 10)
    {
      ++get_clock_adjustment;
      goto LABEL_14;
    }
  }

  get_clock_adjustment = 0;
  get_clock_last = v5;
LABEL_14:
  v4 = 10 * v5.tv_usec + get_clock_adjustment + 10000000 * LODWORD(v5.tv_sec) + 327237632;
  *v8 = (10 * v5.tv_usec + get_clock_adjustment + 10000000 * v5.tv_sec + 122192928000000000) >> 32;
  *v7 = v4;
  *v6 = get_clock_clock_seq;
  return 0;
}

void uuid_generate_random(uuid_t out)
{
  v3 = out;
  __buf[0] = 0;
  __buf[1] = 0;
  v1 = 0;
  v2 = 0;
  arc4random_buf(__buf, 0x10uLL);
  uuid_unpack(__buf, &v1);
  LOWORD(v2) = v2 & 0x3FFF | 0x8000;
  HIWORD(v1) = HIWORD(v1) & 0xFFF | 0x4000;
  uuid_pack(&v1, v3);
}

int uuid_is_null(const uuid_t uu)
{
  for (i = 0; i < 16; ++i)
  {
    v1 = uu++;
    if (*v1)
    {
      return 0;
    }
  }

  return 1;
}

int *uuid_pack(int *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 3) = *result;
  v2 >>= 8;
  *(a2 + 2) = v2;
  v2 >>= 8;
  *(a2 + 1) = v2;
  *a2 = BYTE1(v2);
  LOWORD(v2) = *(result + 2);
  *(a2 + 5) = v2;
  *(a2 + 4) = BYTE1(v2);
  LOWORD(v2) = *(result + 3);
  *(a2 + 7) = v2;
  *(a2 + 6) = BYTE1(v2);
  LOWORD(v2) = *(result + 4);
  *(a2 + 9) = v2;
  *(a2 + 8) = BYTE1(v2);
  *(a2 + 10) = *(result + 10);
  *(a2 + 14) = *(result + 7);
  return result;
}

int uuid_parse(const uuid_string_t in, uuid_t uu)
{
  v12 = in;
  v11 = uu;
  v9 = 0;
  v10 = 0;
  i = 0;
  v7 = 0;
  if (strlen(in) != 36)
  {
    return -1;
  }

  i = 0;
  v7 = v12;
  while (i <= 36)
  {
    if (i == 8 || i == 13 || i == 18 || i == 23)
    {
      if (*v7 != 45)
      {
        return -1;
      }
    }

    else if ((i != 36 || *v7) && !isxdigit(*v7))
    {
      return -1;
    }

    ++i;
    ++v7;
  }

  LODWORD(v9) = strtoul(v12, 0, 16);
  WORD2(v9) = strtoul(v12 + 9, 0, 16);
  HIWORD(v9) = strtoul(v12 + 14, 0, 16);
  LOWORD(v10) = strtoul(v12 + 19, 0, 16);
  v7 = v12 + 24;
  __str[2] = 0;
  for (i = 0; i < 6; ++i)
  {
    v2 = v7++;
    __str[0] = *v2;
    v3 = v7++;
    __str[1] = *v3;
    v4 = strtoul(__str, 0, 16);
    *(&v10 + i + 2) = v4;
  }

  uuid_pack(&v9, v11);
  return 0;
}

unsigned __int8 *uuid_unpack(unsigned __int8 *result, uint64_t a2)
{
  *a2 = result[3] | ((result[2] | ((result[1] | (*result << 8)) << 8)) << 8);
  *(a2 + 4) = _byteswap_ushort(*(result + 2));
  *(a2 + 6) = _byteswap_ushort(*(result + 3));
  *(a2 + 8) = _byteswap_ushort(*(result + 4));
  *(a2 + 10) = *(result + 10);
  *(a2 + 14) = *(result + 7);
  return result;
}

unsigned __int8 *uuid_unparse_x(unsigned __int8 *result, _BYTE *a2, uint64_t a3)
{
  v8 = result;
  for (i = 0; i < 0x10; ++i)
  {
    if (i == 4 || i == 6 || i == 8 || i == 10)
    {
      v3 = a2++;
      *v3 = 45;
    }

    *a2 = *(a3 + (*v8 >> 4));
    v4 = v8++;
    v5 = *(a3 + (*v4 & 0xF));
    v6 = a2 + 1;
    a2 += 2;
    *v6 = v5;
  }

  *a2 = 0;
  return result;
}

pid_t tcgetsid(int a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (ioctl(a1, 0x40047463uLL, v2) < 0)
  {
    return -1;
  }

  else
  {
    return v2[0];
  }
}

uint64_t _libc_initializer(void *a1, uint64_t a2, const char **a3, uint64_t *a4)
{
  _program_vars_init(a4);
  _libc_fork_init(a1);
  __confstr_init(a1);
  __atexit_init();
  inited = _init_clock_port();
  _arc4_fork_child(inited);
  __xlocale_init();
  __guard_setup(a3);
  v5 = _subsystem_init();
  return _arc4_fork_child(v5);
}

uint64_t __libc_init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  __b[11] = a2;
  __b[10] = a3;
  __b[9] = a4;
  __b[0] = 1;
  __b[1] = a2;
  __b[2] = a3;
  __b[3] = a4;
  memset(&__b[4], 0, 32);
  return _libc_initializer(__b, 0, a5, a1);
}

void _libc_fork_child(uint64_t a1)
{
  qword_D4008 = "crashed on child side of fork pre-exec";
  _arc4_fork_child(a1);
  _init_clock_port();
  __environ_lock_fork_child();
  _locale_lock_fork_child();
}

uint64_t *_program_vars_init(uint64_t *result)
{
  NXArgv_pointer = result[2];
  NXArgc_pointer = result[1];
  environ_pointer = result[3];
  __progname_pointer = result[4];
  _mh_execute_header_pointer = *result;
  return result;
}

void *_libc_fork_init(void *result)
{
  if (*result < 2uLL)
  {
    _libSystem_atfork_prepare = result[1];
    _libSystem_atfork_parent = result[2];
    _libSystem_atfork_child = result[3];
  }

  else
  {
    _libSystem_atfork_prepare_v2 = result[5];
    _libSystem_atfork_parent_v2 = result[6];
    _libSystem_atfork_child_v2 = result[7];
  }

  return result;
}

pid_t fork(void)
{
  if (_libSystem_atfork_prepare_v2)
  {
    _libSystem_atfork_prepare_v2(0);
  }

  else
  {
    _libSystem_atfork_prepare();
  }

  v1 = __fork();
  if (v1 == -1)
  {
    if (_libSystem_atfork_parent_v2)
    {
      _libSystem_atfork_parent_v2(0);
    }

    else
    {
      _libSystem_atfork_parent();
    }

    return -1;
  }

  else if (v1)
  {
    if (_libSystem_atfork_parent_v2)
    {
      _libSystem_atfork_parent_v2(0);
    }

    else
    {
      _libSystem_atfork_parent();
    }

    return v1;
  }

  else
  {
    if (_libSystem_atfork_child_v2)
    {
      _libSystem_atfork_child_v2(0);
    }

    else
    {
      _libSystem_atfork_child();
    }

    return 0;
  }
}

pid_t vfork(void)
{
  if (_libSystem_atfork_prepare_v2)
  {
    _libSystem_atfork_prepare_v2(1);
  }

  else
  {
    (_libSystem_atfork_prepare)();
  }

  v1 = __fork();
  if (v1 == -1)
  {
    if (_libSystem_atfork_parent_v2)
    {
      _libSystem_atfork_parent_v2(1);
    }

    else
    {
      _libSystem_atfork_parent();
    }

    return -1;
  }

  else if (v1)
  {
    if (_libSystem_atfork_parent_v2)
    {
      _libSystem_atfork_parent_v2(1);
    }

    else
    {
      _libSystem_atfork_parent();
    }

    return v1;
  }

  else
  {
    if (_libSystem_atfork_child_v2)
    {
      _libSystem_atfork_child_v2(1);
    }

    else
    {
      _libSystem_atfork_child();
    }

    return 0;
  }
}

int gettimeofday(timeval *a1, void *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = a2;
  v4[0] = 0;
  v4[1] = 0;
  if (!a1)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = v4;
  }

  if (__commpage_gettimeofday() && (__gettimeofday() & 0x80000000) != 0)
  {
    return -1;
  }

  if (v5)
  {
    if (!gettimeofday_validtz)
    {
      v3 = localtime(&v7->tv_sec);
      dword_D6840 = v3->tm_isdst;
      gettimeofday_cached_tz = -v3->tm_gmtoff / 60 + 60 * v3->tm_isdst;
      gettimeofday_validtz = 1;
    }

    v5[1] = dword_D6840;
    *v5 = gettimeofday_cached_tz;
  }

  return 0;
}

int posix_spawnp(pid_t *a1, const char *a2, const posix_spawn_file_actions_t *a3, const posix_spawnattr_t *a4, char *const __argv[], char *const __envp[])
{
  v29 = a1;
  __s = a2;
  v27 = a3;
  v26 = a4;
  v25 = __argv;
  v24 = __envp;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  i = 0;
  v14 = 0;
  v13 = 0;
  memset(&v12, 0, sizeof(v12));
  if (!strchr(__s, 47))
  {
    v23 = getenv("PATH");
    if (!v23)
    {
      v23 = "/usr/bin:/bin";
    }

    v22 = v31;
    if (*__s)
    {
      v20 = v23;
      v17 = strlen(__s);
      goto LABEL_8;
    }

    return 2;
  }

  v22 = __s;
  v20 = 0;
  v23 = 0;
  while (1)
  {
    v14 = posix_spawn(v29, v22, v27, v26, v25, v24);
    v10 = v14;
    if (v14 == 2)
    {
      goto LABEL_8;
    }

    if (v10 == 7)
    {
      return v14;
    }

    if (v10 == 8)
    {
      break;
    }

    if (v10 == 12)
    {
      return v14;
    }

    if (v10 != 20)
    {
      if (v10 == 26)
      {
        return v14;
      }

      if (v10 != 63 && v10 != 62 && !stat(v22, &v12))
      {
        if (v14 != 13)
        {
          return v14;
        }

        v13 = 1;
      }
    }

LABEL_8:
    if (!v20)
    {
      if (v13)
      {
        return 13;
      }

      if (v23)
      {
        return 2;
      }

      return v14;
    }

    v21 = strchrnul(v20, 0x3Au);
    if (v21 == v20)
    {
      v19 = ".";
      v16 = 1;
    }

    else
    {
      v19 = v20;
      v16 = v21 - v20;
    }

    if (*v21)
    {
      v20 = (v21 + 1);
    }

    else
    {
      v20 = 0;
    }

    if (v16 + v17 + 2 > 0x400)
    {
      return 63;
    }

    v11 = v31;
    memmove(v31, v19, v16);
    v31[v16] = 47;
    memmove(&v31[v16 + 1], __s, v17);
    v11[v16 + 1 + v17] = 0;
  }

    ;
  }

  if (i + 2 >= 3)
  {
    v9 = i + 2;
  }

  else
  {
    v9 = 3;
  }

  v8 = &v7 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, 8 * v9);
  v18 = v8;
  if (v8)
  {
    if (i <= 0)
    {
      *v18 = "sh";
      v18[1] = v22;
      v18[2] = 0;
    }

    else
    {
      *v18 = *v25;
      v18[1] = v22;
      memmove(v18 + 2, v25 + 1, 8 * i);
    }

    return posix_spawn(v29, "/bin/sh", v27, v26, v18, v24);
  }

  return v14;
}