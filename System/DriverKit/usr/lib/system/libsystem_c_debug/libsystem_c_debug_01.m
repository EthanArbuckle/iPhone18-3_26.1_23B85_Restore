int settimeofday(const timeval *a1, const timezone *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = __settimeofday();
  v5 = 0;
  if (v6)
  {
    v5 = *__error();
  }

  if (v8)
  {
    v4 = 0;
    asprintf(&v4, "settimeofday({%#lx,%#x}) == %d", v8->tv_sec, v8->tv_usec, v6);
    _simple_asl_log();
    free(v4);
  }

  v3 = v5;
  *__error() = v3;
  return v6;
}

char *__cdecl stpcpy(char *__dst, const char *__src)
{
  v3 = strlen(__src);
  memcpy(__dst, __src, v3 + 1);
  return &__dst[v3];
}

char *__cdecl stpncpy(char *__dst, const char *__src, size_t __n)
{
  v4 = strnlen(__src, __n);
  if (v4 >= __n)
  {
    memcpy(__dst, __src, __n);
    return &__dst[__n];
  }

  else
  {
    memcpy(__dst, __src, v4);
    bzero(&__dst[v4], __n - v4);
    return &__dst[v4];
  }
}

char *__cdecl strcat(char *__s1, const char *__s2)
{
  v4 = strlen(__s1);
  v3 = strlen(__s2);
  memcpy(&__s1[v4], __s2, v3 + 1);
  return __s1;
}

char *__cdecl strncat(char *__s1, const char *__s2, size_t __n)
{
  v6 = strlen(__s1);
  v5 = strnlen(__s2, __n);
  if (v5 >= __n)
  {
    v4 = __n;
  }

  else
  {
    v4 = v5;
  }

  memcpy(&__s1[v6], __s2, v4);
  __s1[v6 + v4] = 0;
  return __s1;
}

int sync_volume_np(const char *a1, int a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  if (a2)
  {
    v5 |= 1u;
  }

  if ((v6 & 2) != 0)
  {
    v5 |= 2u;
  }

  v4 = *__error();
  if (fsctl(v7, 0x80044101uLL, &v5, 0) == -1)
  {
    v3 = *__error();
  }

  else
  {
    v3 = 0;
  }

  *__error() = v4;
  return v3;
}

int fsync_volume_np(int a1, int a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  if (a2)
  {
    v5 |= 1u;
  }

  if ((v6 & 2) != 0)
  {
    v5 |= 2u;
  }

  v4 = *__error();
  if (ffsctl(v7, 0x80004101uLL, &v5, 0) == -1)
  {
    v3 = *__error();
  }

  else
  {
    v3 = 0;
  }

  *__error() = v4;
  return v3;
}

void *libc_set_introspection_hooks(void *result, void *a2, unint64_t a3)
{
  v5 = result;
  if (a3 < 8)
  {
    __assert_rtn("libc_set_introspection_hooks", "libc_hooks.c", 33, "size >= sizeof(libc_hooks_version)");
  }

  if (a2)
  {
    if (a3 < 0x28)
    {
      __assert_rtn("libc_set_introspection_hooks", "libc_hooks.c", 37, "size >= sizeof(libc_hooks)");
    }

    if (a3 > 0x28)
    {
      bzero(a2 + 200, a3 - 40);
    }

    result = __copy_assignment_8_8_t0w8_pa0_28660_8_pa0_36689_16_pa0_31171_24_pa0_29245_32(a2, &libc_hooks);
  }

  if (v5)
  {
    if (!*v5)
    {
      __assert_rtn("libc_set_introspection_hooks", "libc_hooks.c", 50, "new_hooks->version >= libc_hooks_version");
    }

    if (a3 < 0x28)
    {
      __assert_rtn("libc_set_introspection_hooks", "libc_hooks.c", 54, "size >= sizeof(libc_hooks)");
    }

    result = __copy_assignment_8_8_t0w8_pa0_28660_8_pa0_36689_16_pa0_31171_24_pa0_29245_32(&libc_hooks, v5);
    libc_hooks = 1;
  }

  return result;
}

void *__copy_assignment_8_8_t0w8_pa0_28660_8_pa0_36689_16_pa0_31171_24_pa0_29245_32(void *result, void *a2)
{
  *result = *a2;
  v5 = 0;
  if (a2[1])
  {
    v5 = a2[1];
  }

  result[1] = v5;
  v4 = 0;
  if (a2[2])
  {
    v4 = a2[2];
  }

  result[2] = v4;
  v3 = 0;
  if (a2[3])
  {
    v3 = a2[3];
  }

  result[3] = v3;
  v2 = 0;
  if (a2[4])
  {
    v2 = a2[4];
  }

  result[4] = v2;
  return result;
}

int dirfd(DIR *dirp)
{
  if (dirp && (dirp->__dd_fd & 0x80000000) == 0)
  {
    return dirp->__dd_fd;
  }

  *__error() = 22;
  return -1;
}

uint64_t _os_log_redirect(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  log_redirect_func = _os_find_log_redirect_func();
  if (log_redirect_func)
  {
    v4 = log_redirect_func(a2);
  }

  return v4 & 1;
}

BOOL _os_abort_on_assumes()
{
  if (getpid() == 1)
  {
    return getenv("OS_ASSUMES_FATAL_PID1") != 0;
  }

  else
  {
    return getenv("OS_ASSUMES_FATAL") != 0;
  }
}

size_t _os_get_build(char *a1, size_t a2)
{
  __dst = a1;
  v4 = a2;
  *v6 = 0x4100000001;
  result = sysctl(v6, 2u, a1, &v4, 0, 0);
  if (!result && v4 == 1)
  {
    return strlcpy(__dst, "99Z999", a2);
  }

  return result;
}

uint64_t gethostid(void)
{
  v1 = 0;
  v4[0] = 1;
  v4[1] = 11;
  v2 = 4;
  if (sysctl(v4, 2u, &v1, &v2, 0, 0) == -1)
  {
    return -1;
  }

  else
  {
    return v1;
  }
}

char *__cdecl getwd(char *a1)
{
  v3 = getcwd(a1, 0x400uLL);
  if (v3)
  {
    return v3;
  }

  v1 = __error();
  strerror_r(*v1, a1, 0x400uLL);
  return 0;
}

int killpg(pid_t a1, int a2)
{
  if (a1 != 1)
  {
    return __kill();
  }

  *__error() = 1;
  return -1;
}

void sethostid(uint64_t a1)
{
  v1 = a1;
  v2[0] = 1;
  v2[1] = 11;
  sysctl(v2, 2u, 0, 0, &v1, 8uLL);
}

pid_t setpgrp(void)
{
  v2 = getpgrp();
  v1 = getpid();
  if (v2 != v1)
  {
    setpgid(v1, v1);
  }

  return v1;
}

uint64_t __bt_close(void *a1)
{
  v4 = a1[7];
  if (*(v4 + 4))
  {
    mpool_put(*v4, *(v4 + 4), 0);
    *(v4 + 4) = 0;
  }

  if (__bt_sync(a1, 0) == -1)
  {
    return -1;
  }

  else if (mpool_close(*v4) == -1)
  {
    return -1;
  }

  else
  {
    if (*(v4 + 6))
    {
      free(*(v4 + 6));
      *(v4 + 7) = 0;
      *(v4 + 6) = 0;
    }

    if (*(v4 + 60))
    {
      free(*(v4 + 60));
      *(v4 + 61) = 0;
      *(v4 + 60) = 0;
    }

    if (*(v4 + 62))
    {
      free(*(v4 + 62));
      *(v4 + 63) = 0;
      *(v4 + 62) = 0;
    }

    v3 = *(v4 + 128);
    free(v4);
    free(a1);
    if (close_NOCANCEL())
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __bt_sync(uint64_t a1, int a2)
{
  v4 = *(a1 + 56);
  if (*(v4 + 32))
  {
    mpool_put(*v4, *(v4 + 32), 0);
    *(v4 + 32) = 0;
  }

  if (a2)
  {
    *__error() = 22;
    return -1;
  }

  else if ((*(v4 + 636) & 0x11) == 0 && (*(v4 + 636) & 4) != 0)
  {
    if ((*(v4 + 636) & 2) != 0 && bt_meta(v4) == -1)
    {
      return -1;
    }

    else
    {
      v3 = mpool_sync(*v4);
      if (!v3)
      {
        *(v4 + 636) &= ~4u;
      }

      return v3;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t bt_meta(uint64_t a1)
{
  v2 = mpool_get(*a1, 0, 0);
  if (v2)
  {
    *&v3 = 0x300053162;
    DWORD2(v3) = *(a1 + 520);
    HIDWORD(v3) = *(a1 + 516);
    LODWORD(v4) = *(a1 + 616);
    HIDWORD(v4) = *(a1 + 636) & 0xA0;
    *v2 = v3;
    v2[2] = v4;
    mpool_put(*a1, v2, 1u);
    return 0;
  }

  else
  {
    return -1;
  }
}

unsigned int *__bt_pgin(unsigned int *result, int a2, uint64_t a3)
{
  if ((result[159] & 8) != 0)
  {
    if (a2)
    {
      v20 = *a3;
      *a3 = HIBYTE(*a3);
      *(a3 + 1) = BYTE2(v20);
      *(a3 + 2) = BYTE1(v20);
      *(a3 + 3) = v20;
      v19 = *(a3 + 4);
      *(a3 + 4) = HIBYTE(v19);
      *(a3 + 5) = BYTE2(v19);
      *(a3 + 6) = BYTE1(v19);
      *(a3 + 7) = v19;
      v18 = *(a3 + 8);
      *(a3 + 8) = HIBYTE(v18);
      *(a3 + 9) = BYTE2(v18);
      *(a3 + 10) = BYTE1(v18);
      *(a3 + 11) = v18;
      v17 = *(a3 + 12);
      *(a3 + 12) = HIBYTE(v17);
      *(a3 + 13) = BYTE2(v17);
      *(a3 + 14) = BYTE1(v17);
      *(a3 + 15) = v17;
      v16 = *(a3 + 16);
      *(a3 + 16) = HIBYTE(v16);
      *(a3 + 17) = v16;
      v15 = *(a3 + 18);
      *(a3 + 18) = HIBYTE(v15);
      *(a3 + 19) = v15;
      v29 = (*(a3 + 16) - 20) / 2;
      if ((*(a3 + 12) & 0x1F) == 1)
      {
        for (i = 0; i < v29; ++i)
        {
          v14 = *(a3 + 20 + 2 * i);
          *(a3 + 20 + 2 * i) = HIBYTE(v14);
          *(a3 + 20 + 2 * i + 1) = v14;
          v21 = (a3 + *(a3 + 20 + 2 * i));
          v13 = *v21;
          *v21 = HIBYTE(*v21);
          *(v21 + 1) = BYTE2(v13);
          *(v21 + 2) = BYTE1(v13);
          *(v21++ + 3) = v13;
          v12 = *v21;
          *v21 = HIBYTE(*v21);
          *(v21 + 1) = BYTE2(v12);
          *(v21 + 2) = BYTE1(v12);
          *(v21 + 3) = v12;
          v22 = v21 + 1;
          if ((*v22 & 2) != 0)
          {
            v23 = v22 + 1;
            v11 = *v23;
            *v23 = HIBYTE(*v23);
            v23[1] = BYTE2(v11);
            v23[2] = BYTE1(v11);
            v23[3] = v11;
            v23 += 4;
            v10 = *v23;
            *v23 = HIBYTE(*v23);
            v23[1] = BYTE2(v10);
            v23[2] = BYTE1(v10);
            v23[3] = v10;
          }
        }
      }

      else if ((*(a3 + 12) & 0x1F) == 2)
      {
        for (j = 0; j < v29; ++j)
        {
          v9 = *(a3 + 20 + 2 * j);
          *(a3 + 20 + 2 * j) = HIBYTE(v9);
          *(a3 + 20 + 2 * j + 1) = v9;
          v24 = (a3 + *(a3 + 20 + 2 * j));
          v8 = *v24;
          *v24 = HIBYTE(*v24);
          *(v24 + 1) = BYTE2(v8);
          *(v24 + 2) = BYTE1(v8);
          *(v24++ + 3) = v8;
          v7 = *v24;
          *v24 = HIBYTE(*v24);
          *(v24 + 1) = BYTE2(v7);
          *(v24 + 2) = BYTE1(v7);
          *(v24 + 3) = v7;
          v25 = (v24 + 1);
          v28 = *v25;
          if ((*v25 & 3) != 0)
          {
            v26 = v25 + 1;
            if ((v28 & 2) != 0)
            {
              v6 = *v26;
              *v26 = HIBYTE(*v26);
              v26[1] = BYTE2(v6);
              v26[2] = BYTE1(v6);
              v26[3] = v6;
              v26 += 4;
              v5 = *v26;
              *v26 = HIBYTE(*v26);
              v26[1] = BYTE2(v5);
              v26[2] = BYTE1(v5);
              v26[3] = v5;
            }

            if (v28)
            {
              v27 = v26 + 4;
              v4 = *v27;
              *v27 = HIBYTE(*v27);
              v27[1] = BYTE2(v4);
              v27[2] = BYTE1(v4);
              v27[3] = v4;
              v27 += 4;
              v3 = *v27;
              *v27 = HIBYTE(*v27);
              v27[1] = BYTE2(v3);
              v27[2] = BYTE1(v3);
              v27[3] = v3;
            }
          }
        }
      }
    }

    else
    {
      return mswap(a3);
    }
  }

  return result;
}

unsigned int *mswap(unsigned int *result)
{
  v6 = *result;
  *result = HIBYTE(*result);
  *(result + 1) = BYTE2(v6);
  *(result + 2) = BYTE1(v6);
  *(result + 3) = v6;
  v5 = result[1];
  *(result + 4) = HIBYTE(v5);
  *(result + 5) = BYTE2(v5);
  *(result + 6) = BYTE1(v5);
  *(result + 7) = v5;
  v4 = result[2];
  *(result + 8) = HIBYTE(v4);
  *(result + 9) = BYTE2(v4);
  *(result + 10) = BYTE1(v4);
  *(result + 11) = v4;
  v3 = result[3];
  *(result + 12) = HIBYTE(v3);
  *(result + 13) = BYTE2(v3);
  *(result + 14) = BYTE1(v3);
  *(result + 15) = v3;
  v2 = result[4];
  *(result + 16) = HIBYTE(v2);
  *(result + 17) = BYTE2(v2);
  *(result + 18) = BYTE1(v2);
  *(result + 19) = v2;
  v1 = result[5];
  *(result + 20) = HIBYTE(v1);
  *(result + 21) = BYTE2(v1);
  *(result + 22) = BYTE1(v1);
  *(result + 23) = v1;
  return result;
}

unsigned int *__bt_pgout(unsigned int *result, int a2, uint64_t a3)
{
  if ((result[159] & 8) != 0)
  {
    if (a2)
    {
      v29 = (*(a3 + 16) - 20) / 2;
      if ((*(a3 + 12) & 0x1F) == 1)
      {
        for (i = 0; i < v29; ++i)
        {
          v21 = (a3 + *(a3 + 20 + 2 * i));
          v20 = *v21;
          *v21 = HIBYTE(*v21);
          *(v21 + 1) = BYTE2(v20);
          *(v21 + 2) = BYTE1(v20);
          *(v21++ + 3) = v20;
          v19 = *v21;
          *v21 = HIBYTE(*v21);
          *(v21 + 1) = BYTE2(v19);
          *(v21 + 2) = BYTE1(v19);
          *(v21 + 3) = v19;
          v22 = v21 + 1;
          if ((*v22 & 2) != 0)
          {
            v23 = v22 + 1;
            v18 = *v23;
            *v23 = HIBYTE(*v23);
            v23[1] = BYTE2(v18);
            v23[2] = BYTE1(v18);
            v23[3] = v18;
            v23 += 4;
            v17 = *v23;
            *v23 = HIBYTE(*v23);
            v23[1] = BYTE2(v17);
            v23[2] = BYTE1(v17);
            v23[3] = v17;
          }

          v16 = *(a3 + 20 + 2 * i);
          *(a3 + 20 + 2 * i) = HIBYTE(v16);
          *(a3 + 20 + 2 * i + 1) = v16;
        }
      }

      else if ((*(a3 + 12) & 0x1F) == 2)
      {
        for (j = 0; j < v29; ++j)
        {
          v24 = (a3 + *(a3 + 20 + 2 * j));
          v15 = *v24;
          *v24 = HIBYTE(*v24);
          *(v24 + 1) = BYTE2(v15);
          *(v24 + 2) = BYTE1(v15);
          *(v24++ + 3) = v15;
          v14 = *v24;
          *v24 = HIBYTE(*v24);
          *(v24 + 1) = BYTE2(v14);
          *(v24 + 2) = BYTE1(v14);
          *(v24 + 3) = v14;
          v25 = (v24 + 1);
          v28 = *v25;
          if ((*v25 & 3) != 0)
          {
            v26 = v25 + 1;
            if ((v28 & 2) != 0)
            {
              v13 = *v26;
              *v26 = HIBYTE(*v26);
              v26[1] = BYTE2(v13);
              v26[2] = BYTE1(v13);
              v26[3] = v13;
              v26 += 4;
              v12 = *v26;
              *v26 = HIBYTE(*v26);
              v26[1] = BYTE2(v12);
              v26[2] = BYTE1(v12);
              v26[3] = v12;
            }

            if (v28)
            {
              v27 = v26 + 4;
              v11 = *v27;
              *v27 = HIBYTE(*v27);
              v27[1] = BYTE2(v11);
              v27[2] = BYTE1(v11);
              v27[3] = v11;
              v27 += 4;
              v10 = *v27;
              *v27 = HIBYTE(*v27);
              v27[1] = BYTE2(v10);
              v27[2] = BYTE1(v10);
              v27[3] = v10;
            }
          }

          v9 = *(a3 + 20 + 2 * j);
          *(a3 + 20 + 2 * j) = HIBYTE(v9);
          *(a3 + 20 + 2 * j + 1) = v9;
        }
      }

      v8 = *a3;
      *a3 = HIBYTE(*a3);
      *(a3 + 1) = BYTE2(v8);
      *(a3 + 2) = BYTE1(v8);
      *(a3 + 3) = v8;
      v7 = *(a3 + 4);
      *(a3 + 4) = HIBYTE(v7);
      *(a3 + 5) = BYTE2(v7);
      *(a3 + 6) = BYTE1(v7);
      *(a3 + 7) = v7;
      v6 = *(a3 + 8);
      *(a3 + 8) = HIBYTE(v6);
      *(a3 + 9) = BYTE2(v6);
      *(a3 + 10) = BYTE1(v6);
      *(a3 + 11) = v6;
      v5 = *(a3 + 12);
      *(a3 + 12) = HIBYTE(v5);
      *(a3 + 13) = BYTE2(v5);
      *(a3 + 14) = BYTE1(v5);
      *(a3 + 15) = v5;
      v4 = *(a3 + 16);
      *(a3 + 16) = HIBYTE(v4);
      *(a3 + 17) = v4;
      v3 = *(a3 + 18);
      *(a3 + 18) = HIBYTE(v3);
      *(a3 + 19) = v3;
    }

    else
    {
      return mswap(a3);
    }
  }

  return result;
}

void *__bt_dump(uint64_t a1)
{
  v6 = *(a1 + 56);
  if (*(v6 + 636))
  {
    v1 = "memory";
  }

  else
  {
    v1 = "disk";
  }

  fprintf(__stderrp, "%s: pgsz %u", v1, *(v6 + 520));
  if ((*(v6 + 636) & 0x80) != 0)
  {
    fprintf(__stderrp, " keys %u", *(v6 + 616));
  }

  if (*(v6 + 636))
  {
    v3 = " flags (";
    if ((*(v6 + 636) & 0x200) != 0)
    {
      fprintf(__stderrp, "%s%s", " flags (", "FIXLEN");
      v3 = ", ";
    }

    if (*(v6 + 636))
    {
      fprintf(__stderrp, "%s%s", v3, "INMEM");
      v3 = ", ";
    }

    if ((*(v6 + 636) & 0x20) != 0)
    {
      fprintf(__stderrp, "%s%s", v3, "NODUPS");
      v3 = ", ";
    }

    if ((*(v6 + 636) & 0x10) != 0)
    {
      fprintf(__stderrp, "%s%s", v3, "RDONLY");
      v3 = ", ";
    }

    if ((*(v6 + 636) & 0x80) != 0)
    {
      fprintf(__stderrp, "%s%s", v3, "RECNO");
      v3 = ", ";
    }

    if ((*(v6 + 636) & 2) != 0)
    {
      fprintf(__stderrp, "%s%s", v3, "METADIRTY");
    }

    fprintf(__stderrp, ")\n");
  }

  for (i = 1; ; ++i)
  {
    result = mpool_get(*v6, i, 0);
    v5 = result;
    if (!result)
    {
      break;
    }

    __bt_dpage(result);
    mpool_put(*v6, v5, 0);
  }

  return result;
}

uint64_t __bt_dpage(uint64_t a1)
{
  fprintf(__stderrp, "    page %u: (", *a1);
  v3 = &unk_C42B5;
  if (*(a1 + 12))
  {
    fprintf(__stderrp, "%s%s", &unk_C42B5, "BINTERNAL");
    v3 = ", ";
  }

  if ((*(a1 + 12) & 2) != 0)
  {
    fprintf(__stderrp, "%s%s", v3, "BLEAF");
    v3 = ", ";
  }

  if ((*(a1 + 12) & 8) != 0)
  {
    fprintf(__stderrp, "%s%s", v3, "RINTERNAL");
    v3 = ", ";
  }

  if ((*(a1 + 12) & 0x10) != 0)
  {
    fprintf(__stderrp, "%s%s", v3, "RLEAF");
    v3 = ", ";
  }

  if ((*(a1 + 12) & 4) != 0)
  {
    fprintf(__stderrp, "%s%s", v3, "OVERFLOW");
    v3 = ", ";
  }

  if ((*(a1 + 12) & 0x20) != 0)
  {
    fprintf(__stderrp, "%s%s", v3, "PRESERVE");
  }

  fprintf(__stderrp, ")\n");
  result = fprintf(__stderrp, "\tprev %2u next %2u", *(a1 + 4), *(a1 + 8));
  if ((*(a1 + 12) & 4) == 0)
  {
    v4 = (*(a1 + 16) - 20) / 2;
    result = fprintf(__stderrp, " lower %3d upper %3d nextind %d\n", *(a1 + 16), *(a1 + 18), v4);
    for (i = 0; i < v4; ++i)
    {
      fprintf(__stderrp, "\t[%03d] %4d ", i, *(a1 + 20 + 2 * i));
      v2 = *(a1 + 12) & 0x1F;
      switch(v2)
      {
        case 1:
          v9 = (a1 + *(a1 + 20 + 2 * i));
          fprintf(__stderrp, "size %03d pgno %03d", *v9, *(v9 + 1));
          if ((v9[8] & 2) != 0)
          {
            fprintf(__stderrp, " (indirect)");
          }

          else if (*v9)
          {
            fprintf(__stderrp, " {%.*s}", *v9, v9 + 9);
          }

          break;
        case 2:
          v8 = (a1 + *(a1 + 20 + 2 * i));
          if ((v8[2] & 2) != 0)
          {
            fprintf(__stderrp, "big key page %u size %u/", *(v8 + 9), *(v8 + 13));
          }

          else if (*v8)
          {
            fprintf(__stderrp, "%.*s/", *v8, v8 + 9);
          }

          if (v8[2])
          {
            fprintf(__stderrp, "big data page %u size %u", *(v8 + *v8 + 9), *(v8 + *v8 + 13));
          }

          else if (v8[1])
          {
            fprintf(__stderrp, "%.*s", v8[1], v8 + *v8 + 9);
          }

          break;
        case 8:
          v7 = (a1 + *(a1 + 20 + 2 * i));
          fprintf(__stderrp, "entries %03d pgno %03d", *v7, v7[1]);
          break;
        case 16:
          v6 = a1 + *(a1 + 20 + 2 * i);
          if (*(v6 + 4))
          {
            fprintf(__stderrp, "big data page %u size %u", *(v6 + 5), *(v6 + 9));
          }

          else if (*v6)
          {
            fprintf(__stderrp, "%.*s", *v6, (v6 + 5));
          }

          break;
      }

      result = fprintf(__stderrp, "\n");
    }
  }

  return result;
}

uint64_t __bt_dmpage(_DWORD *a1)
{
  fprintf(__stderrp, "magic %x\n", *a1);
  fprintf(__stderrp, "version %u\n", a1[1]);
  fprintf(__stderrp, "psize %u\n", a1[2]);
  fprintf(__stderrp, "free %u\n", a1[3]);
  fprintf(__stderrp, "nrecs %u\n", a1[4]);
  result = fprintf(__stderrp, "flags %u", a1[5]);
  if (a1[5])
  {
    v2 = " (";
    if ((a1[5] & 0x20) != 0)
    {
      fprintf(__stderrp, "%s%s", " (", "NODUPS");
      v2 = ", ";
    }

    if ((a1[5] & 0x80) != 0)
    {
      fprintf(__stderrp, "%s%s", v2, "RECNO");
    }

    return fprintf(__stderrp, ")");
  }

  return result;
}

void *__bt_dnpage(uint64_t a1, pgno_t a2)
{
  v4 = *(a1 + 56);
  result = mpool_get(*v4, a2, 0);
  v3 = result;
  if (result)
  {
    __bt_dpage(result);
    return mpool_put(*v4, v3, 0);
  }

  return result;
}

uint64_t __bt_delete(uint64_t a1, uint64_t a2, int a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v7 = *(a1 + 56);
  if (v7[4])
  {
    mpool_put(*v7, v7[4], 0);
    v7[4] = 0;
  }

  if ((*(v7 + 159) & 0x10) != 0)
  {
    *__error() = 1;
    return -1;
  }

  else
  {
    if (v8)
    {
      if (v8 != 1 || (v6 = v7 + 5, (*(v7 + 68) & 8) == 0))
      {
        *__error() = 22;
        return -1;
      }

      if ((*(v6 + 28) & 7) != 0)
      {
        return 1;
      }

      v5 = mpool_get(*v7, *v6, 0);
      if (!v5)
      {
        return -1;
      }

      if ((*(v5 + 8) - 20) / 2 == 1 && __bt_stkacq(v7, &v5, v7 + 10))
      {
        return -1;
      }

      v4 = __bt_dleaf(v7, 0, v5, *(v6 + 2));
      if ((*(v5 + 8) - 20) / 2 || v4)
      {
        mpool_put(*v7, v5, v4 == 0);
      }

      else if (__bt_pdelete(v7, v5))
      {
        return -1;
      }
    }

    else
    {
      v4 = __bt_bdelete(v7, v9);
    }

    if (!v4)
    {
      *(v7 + 159) |= 4u;
    }

    return v4;
  }
}

uint64_t __bt_bdelete(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v7 = 0;
  v8 = 0;
  while (2)
  {
    v10 = __bt_search(v12, v11, &v7);
    if (v10)
    {
      if (v7)
      {
        v6 = 0;
        v9 = *v10;
        do
        {
          if (__bt_dleaf(v12, v11, v9, *(v10 + 4)))
          {
LABEL_11:
            mpool_put(*v12, v9, 0);
            return -1;
          }

          if ((*(v12 + 636) & 0x20) != 0)
          {
            if ((*(v9 + 8) - 20) / 2)
            {
              mpool_put(*v12, v9, 1u);
            }

            else if (__bt_pdelete(v12, v9))
            {
              return -1;
            }

            return 0;
          }

          v8 = 1;
          v5 = 0;
          if (*(v10 + 4) < (*(v9 + 8) - 20) / 2)
          {
            v5 = __bt_cmp(v12, v11, v10) == 0;
          }
        }

        while (v5);
        if (*(v10 + 4) == (*(v9 + 8) - 20) / 2)
        {
          v6 = 1;
        }

        while (1)
        {
          v3 = *(v10 + 4);
          *(v10 + 4) = v3 - 1;
          if (v3 <= 0 || __bt_cmp(v12, v11, v10))
          {
            break;
          }

          if (__bt_dleaf(v12, v11, v9, *(v10 + 4)) == -1)
          {
            goto LABEL_11;
          }

          if (!*(v10 + 4))
          {
            v6 = 1;
          }
        }

        if ((*(v9 + 8) - 20) / 2)
        {
          mpool_put(*v12, v9, 1u);
          if (v6)
          {
            continue;
          }

          return 0;
        }

        else
        {
          if (!__bt_pdelete(v12, v9))
          {
            continue;
          }

          return -1;
        }
      }

      else
      {
        mpool_put(*v12, *v10, 0);
        return v8 == 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }
}

BOOL __bt_stkacq(MPOOL **a1, pgno_t **a2, pgno_t *a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v18 = *a2;
  mpool_put(*a1, v18, 0);
  v20 = __bt_search(v24, (v22 + 2), &v13);
  if (v20)
  {
    v18 = *v20;
    if (*v18 != *v22)
    {
      while (*v18 != *v22)
      {
        v15 = v18[2];
        if (!v15)
        {
          break;
        }

        mpool_put(*v24, v18, 0);
        for (i = 0; ; ++i)
        {
          if (v24[59] == (v24 + 9))
          {
            v10 = 0;
          }

          else
          {
            p_pgcookie = &v24[59][-1].pgcookie;
            v24[59] = p_pgcookie;
            v10 = p_pgcookie;
          }

          v19 = v10;
          if (!v10)
          {
            break;
          }

          v18 = mpool_get(*v24, *v19, 0);
          if (!v18)
          {
            return 1;
          }

          if (*(v19 + 4) != (*(v18 + 8) - 20) / 2 - 1)
          {
            v17 = *(v19 + 4) + 1;
            LODWORD(v24[59]->lqh.tqh_first) = *v18;
            WORD2(v24[59]->lqh.tqh_first) = v17;
            v24[59] = (v24[59] + 8);
            break;
          }

          mpool_put(*v24, v18, 0);
        }

        while (i--)
        {
          v21 = v18 + *(v18 + v17 + 10);
          v16 = *(v21 + 1);
          LODWORD(v24[59]->lqh.tqh_first) = v16;
          WORD2(v24[59]->lqh.tqh_first) = 0;
          v24[59] = (v24[59] + 8);
          mpool_put(*v24, v18, 0);
          v18 = mpool_get(*v24, v16, 0);
          if (!v18)
          {
            return 1;
          }

          v17 = 0;
        }

        mpool_put(*v24, v18, 0);
        v18 = mpool_get(*v24, v15, 0);
        if (!v18)
        {
          return 1;
        }
      }

      if (*v18 != *v22)
      {
        mpool_put(*v24, v18, 0);
        v20 = __bt_search(v24, (v22 + 2), &v13);
        if (!v20)
        {
          return 1;
        }

        v18 = *v20;
        while (*v18 != *v22)
        {
          v14 = v18[1];
          if (!v14)
          {
            break;
          }

          mpool_put(*v24, v18, 0);
          for (j = 0; ; ++j)
          {
            if (v24[59] == (v24 + 9))
            {
              v9 = 0;
            }

            else
            {
              v5 = &v24[59][-1].pgcookie;
              v24[59] = v5;
              v9 = v5;
            }

            v19 = v9;
            if (!v9)
            {
              break;
            }

            v18 = mpool_get(*v24, *v19, 0);
            if (!v18)
            {
              return 1;
            }

            if (*(v19 + 4))
            {
              v17 = *(v19 + 4) - 1;
              LODWORD(v24[59]->lqh.tqh_first) = *v18;
              WORD2(v24[59]->lqh.tqh_first) = v17;
              v24[59] = (v24[59] + 8);
              break;
            }

            mpool_put(*v24, v18, 0);
          }

          while (j--)
          {
            v21 = v18 + *(v18 + v17 + 10);
            v16 = *(v21 + 1);
            mpool_put(*v24, v18, 0);
            v18 = mpool_get(*v24, v16, 0);
            if (!v18)
            {
              return 1;
            }

            v17 = (*(v18 + 8) - 20) / 2 - 1;
            LODWORD(v24[59]->lqh.tqh_first) = v16;
            WORD2(v24[59]->lqh.tqh_first) = v17;
            v24[59] = (v24[59] + 8);
          }

          mpool_put(*v24, v18, 0);
          v18 = mpool_get(*v24, v14, 0);
          if (!v18)
          {
            return 1;
          }
        }
      }
    }

    mpool_put(*v24, v18, 0);
    v7 = mpool_get(*v24, *v22, 0);
    *v23 = v7;
    return v7 == 0;
  }

  return 1;
}

uint64_t __bt_dleaf(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  if ((*(a1 + 68) & 8) != 0 && (*(a1 + 68) & 1) == 0 && *(a1 + 40) == *a3 && *(a1 + 44) == a4 && __bt_curdel(a1, a2, a3, a4))
  {
    return -1;
  }

  else
  {
    v12 = (a3 + a3[a4 + 10]);
    if ((v12[2] & 2) != 0 && __ovfl_delete(a1, (v12 + 9)) == -1)
    {
      return -1;
    }

    else if ((v12[2] & 1) != 0 && __ovfl_delete(a1, (v12 + *v12 + 9)) == -1)
    {
      return -1;
    }

    else
    {
      v7 = (*v12 + 9 + v12[1] + 3) & 0xFFFFFFFC;
      memmove(a3 + a3[9] + v7, a3 + a3[9], v12 - (a3 + a3[9]));
      a3[9] += v7;
      v8 = a3[a4 + 10];
      v10 = a4;
      for (i = a3 + 10; v10--; ++i)
      {
        if (*i < v8)
        {
          *i += v7;
        }
      }

      v11 = (a3[8] - 20) / 2 - a4;
      while (--v11)
      {
        if (i[1] < v8)
        {
          v6 = i[1] + v7;
        }

        else
        {
          v6 = i[1];
        }

        *i++ = v6;
      }

      a3[8] -= 2;
      if ((*(a1 + 68) & 8) != 0 && (*(a1 + 68) & 1) == 0 && *(a1 + 40) == *a3 && *(a1 + 44) > a4)
      {
        --*(a1 + 44);
      }

      return 0;
    }
  }
}

uint64_t __bt_pdelete(uint64_t a1, _DWORD *a2)
{
  while (1)
  {
    if (*(a1 + 472) == a1 + 72)
    {
      v7 = 0;
    }

    else
    {
      v2 = *(a1 + 472) - 8;
      *(a1 + 472) = v2;
      v7 = v2;
    }

    if (!v7)
    {
      break;
    }

    v14 = mpool_get(*a1, *v7, 0);
    if (!v14)
    {
      return -1;
    }

    v11 = *(v7 + 4);
    v15 = v14 + v14[v11 + 10];
    if ((v15[8] & 2) != 0 && __ovfl_delete(a1, (v15 + 9)) == -1)
    {
      mpool_put(*a1, v14, 0);
      return -1;
    }

    if ((v14[8] - 20) / 2 != 1)
    {
      v8 = (*v15 + 12) & 0xFFFFFFFC;
      memmove(v14 + v14[9] + v8, v14 + v14[9], v15 - (v14 + v14[9]));
      v14[9] += v8;
      v9 = v14[v11 + 10];
      v12 = v11;
      for (i = v14 + 10; v12--; ++i)
      {
        if (*i < v9)
        {
          *i += v8;
        }
      }

      v13 = (v14[8] - 20) / 2 - v11;
      while (--v13)
      {
        if (i[1] < v9)
        {
          v6 = i[1] + v8;
        }

        else
        {
          v6 = i[1];
        }

        *i++ = v6;
      }

      v14[8] -= 2;
      goto LABEL_29;
    }

    if (*v14 == 1)
    {
      v14[8] = 20;
      v14[9] = *(a1 + 520);
      *(v14 + 3) = 2;
LABEL_29:
      mpool_put(*a1, v14, 1u);
      break;
    }

    if (__bt_relink(a1, v14) || __bt_free(a1, v14))
    {
      return -1;
    }
  }

  if (*a2 == 1)
  {
    mpool_put(*a1, a2, 1u);
    return 0;
  }

  else
  {
    v5 = 1;
    if (!__bt_relink(a1, a2))
    {
      return __bt_free(a1, a2) != 0;
    }

    return v5;
  }
}

uint64_t __bt_curdel(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v9 = 0;
  v10 = 0;
  v11 = a1 + 40;
  *(a1 + 68) &= 0xF8u;
  v7 = 0;
  if ((*(v15 + 636) & 0x20) == 0)
  {
    if (!v14)
    {
      v9 = v13;
      LOWORD(v10) = v12;
      v5 = __bt_ret(v15, &v9, (v11 + 8), v11 + 8, 0, 0, 1);
      if (v5)
      {
        return v5;
      }

      v7 = 1;
      v14 = v11 + 8;
    }

    if (v12)
    {
      v9 = v13;
      LOWORD(v10) = v12 - 1;
      if (!__bt_cmp(v15, v14, &v9))
      {
        *(v11 + 28) |= 4u;
LABEL_26:
        *v11 = *v9;
        *(v11 + 4) = v10;
        return 0;
      }
    }

    if (v12 < (v13[8] - 20) / 2 - 1)
    {
      v9 = v13;
      LOWORD(v10) = v12 + 1;
      if (!__bt_cmp(v15, v14, &v9))
      {
        *(v11 + 28) |= 2u;
        goto LABEL_26;
      }
    }

    if (!v12 && *(v13 + 1))
    {
      v8 = mpool_get(*v15, *(v13 + 1), 0);
      if (!v8)
      {
        return -1;
      }

      v9 = v8;
      LOWORD(v10) = (v8[8] - 20) / 2 - 1;
      if (!__bt_cmp(v15, v14, &v9))
      {
        *(v11 + 28) |= 4u;
LABEL_25:
        mpool_put(*v15, v8, 0);
        goto LABEL_26;
      }

      mpool_put(*v15, v8, 0);
    }

    if (v12 == (v13[8] - 20) / 2 - 1 && *(v13 + 2))
    {
      v8 = mpool_get(*v15, *(v13 + 2), 0);
      if (!v8)
      {
        return -1;
      }

      v9 = v8;
      LOWORD(v10) = 0;
      if (!__bt_cmp(v15, v14, &v9))
      {
        *(v11 + 28) |= 2u;
        goto LABEL_25;
      }

      mpool_put(*v15, v8, 0);
    }
  }

  v9 = v13;
  LOWORD(v10) = v12;
  if (!v7 && (v6 = __bt_ret(v15, &v9, (v11 + 8), v11 + 8, 0, 0, 1)) != 0)
  {
    return v6;
  }

  else
  {
    *(v11 + 28) |= 1u;
    return 0;
  }
}

uint64_t __bt_relink(MPOOL **a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
LABEL_5:
    if (*(a2 + 4))
    {
      v4 = mpool_get(*a1, *(a2 + 4), 0);
      if (!v4)
      {
        return -1;
      }

      v4[2] = *(a2 + 8);
      mpool_put(*a1, v4, 1u);
    }

    return 0;
  }

  v3 = mpool_get(*a1, *(a2 + 8), 0);
  if (v3)
  {
    v3[1] = *(a2 + 4);
    mpool_put(*a1, v3, 1u);
    goto LABEL_5;
  }

  return -1;
}

uint64_t __bt_get(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v8 = *(a1 + 56);
  if (*(v8 + 32))
  {
    mpool_put(*v8, *(v8 + 32), 0);
    *(v8 + 32) = 0;
  }

  if (v9)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    v7 = __bt_search(v8, v11, &v6);
    if (v7)
    {
      if (v6)
      {
        v5 = __bt_ret(v8, v7, 0, 0, v10, v8 + 496, 0);
        if ((*(v8 + 636) & 0x4000) != 0)
        {
          mpool_put(*v8, *v7, 0);
        }

        else
        {
          *(v8 + 32) = *v7;
        }

        return v5;
      }

      else
      {
        mpool_put(*v8, *v7, 0);
        return 1;
      }
    }

    else
    {
      return -1;
    }
  }
}

uint64_t __bt_open(uint64_t a1, int a2, int a3, const void *a4, int a5)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  memset(&__b, 0, sizeof(__b));
  v25 = 0;
  v26 = 0;
  v27 = 0;
  memset(__dst, 0, sizeof(__dst));
  v24 = 0;
  v19 = byteorder();
  if (v30)
  {
    memcpy(__dst, v30, sizeof(__dst));
    if ((__dst[0] & 0xFFFFFFFFFFFFFFFELL) != 0 || HIDWORD(__dst[2]) && (HIDWORD(__dst[2]) < 0x200 || HIDWORD(__dst[2]) > 0x10000 || (__dst[2] & 0x100000000) != 0))
    {
      goto LABEL_76;
    }

    if (LODWORD(__dst[2]))
    {
      if (SLODWORD(__dst[2]) < 2)
      {
        goto LABEL_76;
      }
    }

    else
    {
      LODWORD(__dst[2]) = 2;
    }

    if (!__dst[3])
    {
      __dst[3] = __bt_defcmp;
      if (!__dst[4])
      {
        __dst[4] = __bt_defpfx;
      }
    }

    if (!LODWORD(__dst[5]))
    {
      LODWORD(__dst[5]) = v19;
    }
  }

  else
  {
    __dst[3] = __bt_defcmp;
    LODWORD(__dst[1]) = 0;
    __dst[0] = 0;
    LODWORD(__dst[5]) = v19;
    __dst[2] = 2;
    __dst[4] = __bt_defpfx;
  }

  if (LODWORD(__dst[5]) != 4321 && LODWORD(__dst[5]) != 1234)
  {
    goto LABEL_76;
  }

  v24 = malloc_type_calloc();
  if (!v24)
  {
    goto LABEL_78;
  }

  *(v24 + 128) = -1;
  *(v24 + 132) = __dst[5];
  *(v24 + 133) = 0;
  *(v24 + 68) = __dst[3];
  *(v24 + 69) = __dst[4];
  *(v24 + 144) = -1;
  v22 = malloc_type_calloc();
  *(v24 + 1) = v22;
  if (!v22)
  {
    goto LABEL_78;
  }

  if (*(v24 + 132) != v19)
  {
    *(v24 + 159) |= 8u;
  }

  *v22 = 0;
  *(v22 + 56) = v24;
  *(v22 + 8) = __bt_close;
  *(v22 + 16) = __bt_delete;
  *(v22 + 64) = __bt_fd;
  *(v22 + 24) = __bt_get;
  *(v22 + 32) = __bt_put;
  *(v22 + 40) = __bt_seq;
  *(v22 + 48) = __bt_sync;
  if (!v33)
  {
    if ((v32 & 3) == 2)
    {
      v6 = tmp();
      *(v24 + 128) = v6;
      if (v6 == -1)
      {
        goto LABEL_78;
      }

      *(v24 + 159) |= 1u;
      goto LABEL_35;
    }

LABEL_76:
    *__error() = 22;
    goto LABEL_78;
  }

  if ((v32 & 3) != 0)
  {
    if ((v32 & 3) != 2)
    {
      goto LABEL_76;
    }
  }

  else
  {
    *(v24 + 159) |= 0x10u;
  }

  v5 = open_NOCANCEL();
  *(v24 + 128) = v5;
  if (v5 < 0)
  {
    goto LABEL_78;
  }

LABEL_35:
  v7 = *(v24 + 128);
  if (fcntl_NOCANCEL() == -1 || fstat(*(v24 + 128), &__b))
  {
    goto LABEL_78;
  }

  if (!__b.st_size)
  {
    if (!HIDWORD(__dst[2]))
    {
      HIDWORD(__dst[2]) = __b.st_blksize;
      if (__b.st_blksize < 0x200u)
      {
        HIDWORD(__dst[2]) = 512;
      }

      if (HIDWORD(__dst[2]) > 0x10000)
      {
        HIDWORD(__dst[2]) = 0x10000;
      }
    }

    if ((__dst[0] & 1) == 0)
    {
      *(v24 + 159) |= 0x20u;
    }

    *(v24 + 129) = 0;
    *(v24 + 154) = 0;
    *(v24 + 159) |= 2u;
    goto LABEL_58;
  }

  v8 = *(v24 + 128);
  NOCANCEL = read_NOCANCEL();
  if (NOCANCEL < 0)
  {
LABEL_78:
    v18 = *__error();
    if (v24)
    {
      if (*(v24 + 1))
      {
        free(*(v24 + 1));
      }

      if (*(v24 + 128) != -1)
      {
        v10 = *(v24 + 128);
        close_NOCANCEL();
      }

      free(v24);
    }

    *__error() = v18;
    return 0;
  }

  if (NOCANCEL != 24)
  {
    goto LABEL_77;
  }

  if (v25 == 340322)
  {
    *(v24 + 159) &= ~8u;
  }

  else
  {
    *(v24 + 159) |= 8u;
    v17 = v25;
    LOBYTE(v25) = BYTE3(v25);
    BYTE1(v25) = BYTE2(v17);
    BYTE2(v25) = BYTE1(v17);
    BYTE3(v25) = v17;
    v16 = HIDWORD(v25);
    BYTE4(v25) = HIBYTE(v25);
    BYTE5(v25) = BYTE2(v16);
    BYTE6(v25) = BYTE1(v16);
    HIBYTE(v25) = v16;
    v15 = v26;
    LOBYTE(v26) = BYTE3(v26);
    BYTE1(v26) = BYTE2(v15);
    BYTE2(v26) = BYTE1(v15);
    BYTE3(v26) = v15;
    v14 = HIDWORD(v26);
    BYTE4(v26) = HIBYTE(v26);
    BYTE5(v26) = BYTE2(v14);
    BYTE6(v26) = BYTE1(v14);
    HIBYTE(v26) = v14;
    v13 = v27;
    LOBYTE(v27) = BYTE3(v27);
    BYTE1(v27) = BYTE2(v13);
    BYTE2(v27) = BYTE1(v13);
    BYTE3(v27) = v13;
    v12 = HIDWORD(v27);
    BYTE4(v27) = HIBYTE(v27);
    BYTE5(v27) = BYTE2(v12);
    BYTE6(v27) = BYTE1(v12);
    HIBYTE(v27) = v12;
  }

  if (v25 != 0x300053162 || v26 < 0x200 || v26 > 0x10000 || (v26 & 1) != 0 || (v27 & 0xFFFFFF5F00000000) != 0)
  {
LABEL_77:
    *__error() = 79;
    goto LABEL_78;
  }

  HIDWORD(__dst[2]) = v26;
  *(v24 + 159) |= HIDWORD(v27);
  *(v24 + 129) = HIDWORD(v26);
  *(v24 + 154) = v27;
LABEL_58:
  *(v24 + 130) = HIDWORD(__dst[2]);
  if (LODWORD(__dst[1]) && (__dst[1] & (HIDWORD(__dst[2]) - 1)) != 0)
  {
    LODWORD(__dst[1]) += ((HIDWORD(__dst[2]) - 1) & ~LODWORD(__dst[1])) + 1;
  }

  if (LODWORD(__dst[1]) < 5 * HIDWORD(__dst[2]))
  {
    LODWORD(__dst[1]) = 5 * HIDWORD(__dst[2]);
  }

  v21 = (LODWORD(__dst[1]) + *(v24 + 130) - 1) / *(v24 + 130);
  *(v24 + 262) = (*(v24 + 130) - 20) / SLODWORD(__dst[2]) - 14;
  if (*(v24 + 262) < 0x1EuLL)
  {
    *(v24 + 262) = 30;
  }

  v9 = mpool_open(0, *(v24 + 128), *(v24 + 130), v21);
  *v24 = v9;
  if (!v9)
  {
    goto LABEL_78;
  }

  if ((*(v24 + 159) & 1) == 0)
  {
    mpool_filter(*v24, __bt_pgin, __bt_pgout, v24);
  }

  if (nroot(v24) == -1)
  {
    goto LABEL_78;
  }

  if ((v29 & 0x20000000) != 0)
  {
    *(v24 + 159) |= 0x4000u;
  }

  if ((v29 & 0x40000000) != 0)
  {
    *(v24 + 159) |= 0x8000u;
  }

  if (v29 < 0)
  {
    *(v24 + 159) |= 0x10000u;
  }

  return v22;
}

uint64_t __bt_fd(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 32))
  {
    mpool_put(*v2, *(v2 + 32), 0);
    *(v2 + 32) = 0;
  }

  if (*(v2 + 636))
  {
    *__error() = 2;
    return -1;
  }

  else
  {
    return *(v2 + 512);
  }
}

uint64_t tmp()
{
  v5 = 0;
  v4 = 0;
  v2 = 0;
  if (!issetugid())
  {
    v2 = getenv("TMPDIR");
  }

  if (v2)
  {
    v0 = snprintf(__str, 0x400uLL, "%s/bt.XXXXXXXXXX", v2);
  }

  else
  {
    v0 = snprintf(__str, 0x400uLL, "%s/bt.XXXXXXXXXX", "/tmp");
  }

  if (v0 < 0 || v0 >= 1024)
  {
    *__error() = 63;
    return -1;
  }

  else
  {
    v5 = -1;
    sigprocmask(1, &v5, &v4);
    v3 = mkstemp(__str);
    if (v3 != -1)
    {
      unlink(__str);
    }

    sigprocmask(3, &v4, 0);
    return v3;
  }
}

uint64_t nroot(MPOOL **a1)
{
  v5 = a1;
  v4 = 0;
  v3 = 0;
  v2 = 0;
  v4 = mpool_get(*a1, 0, 0);
  if (v4)
  {
    mpool_put(*v5, v4, 0);
    return 0;
  }

  else if (*__error() == 22)
  {
    *__error() = 0;
    v4 = mpool_new(*v5, &v2);
    if (v4)
    {
      v3 = mpool_new(*v5, &v2);
      if (v3)
      {
        if (v2 == 1)
        {
          *v3 = 1;
          *(v3 + 2) = 0;
          *(v3 + 1) = 0;
          *(v3 + 8) = 20;
          *(v3 + 9) = *(v5 + 130);
          *(v3 + 3) = 2;
          bzero(v4, *(v5 + 130));
          mpool_put(*v5, v4, 1u);
          mpool_put(*v5, v3, 1u);
          return 0;
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
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t __ovfl_get(uint64_t a1, pgno_t *a2, void *a3, void **a4, void *a5)
{
  v10 = *a2;
  __size = a2[1];
  *a3 = __size;
  if (*a5 < __size)
  {
    *a4 = reallocf(*a4, __size);
    if (!*a4)
    {
      return -1;
    }

    *a5 = __size;
  }

  __size_4 = *(a1 + 520) - 20;
  v14 = *a4;
  for (i = mpool_get(*a1, v10, 0); ; i = mpool_get(*a1, v11[2], 0))
  {
    v11 = i;
    if (!i)
    {
      return -1;
    }

    v7 = __size >= __size_4 ? __size_4 : __size;
    memmove(v14, i + 5, v7);
    mpool_put(*a1, v11, 0);
    __size -= v7;
    if (!__size)
    {
      break;
    }

    v14 += v7;
  }

  return 0;
}

uint64_t __ovfl_put(MPOOL **a1, uint64_t a2, _DWORD *a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v9 = 0;
  __src = 0;
  v7 = 0;
  v6 = *(a1 + 130) - 20;
  v9 = 0;
  __src = *a2;
  v5 = *(a2 + 8);
  while (1)
  {
    v10 = __bt_new(v13, &v7);
    if (!v10)
    {
      return -1;
    }

    *v10 = v7;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 4;
    *(v10 + 9) = 0;
    *(v10 + 8) = 0;
    v4 = v5 >= v6 ? v6 : v5;
    memmove(v10 + 5, __src, v4);
    if (v9)
    {
      *(v9 + 2) = *v10;
      mpool_put(*v13, v9, 1u);
    }

    else
    {
      *v11 = *v10;
    }

    v5 -= v4;
    if (!v5)
    {
      break;
    }

    __src = __src + v6;
    v9 = v10;
  }

  mpool_put(*v13, v10, 1u);
  return 0;
}

uint64_t __ovfl_delete(uint64_t a1, pgno_t *a2)
{
  v3 = a2[1];
  v6 = mpool_get(*a1, *a2, 0);
  if (v6)
  {
    if ((v6[3] & 0x20) != 0)
    {
      mpool_put(*a1, v6, 0);
      return 0;
    }

    else
    {
      for (i = *(a1 + 520) - 20; ; v3 -= i)
      {
        v5 = v6[2];
        __bt_free(a1, v6);
        if (v3 <= i)
        {
          return 0;
        }

        v6 = mpool_get(*a1, v5, 0);
        if (!v6)
        {
          break;
        }
      }

      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t __bt_free(uint64_t a1, _DWORD *a2)
{
  a2[1] = 0;
  a2[2] = *(a1 + 516);
  *(a1 + 516) = *a2;
  *(a1 + 636) |= 2u;
  return mpool_put(*a1, a2, 1u);
}

_DWORD *__bt_new(uint64_t a1, pgno_t *a2)
{
  if (!*(a1 + 516))
  {
    return mpool_new(*a1, a2);
  }

  v3 = mpool_get(*a1, *(a1 + 516), 0);
  if (!v3)
  {
    return mpool_new(*a1, a2);
  }

  *a2 = *(a1 + 516);
  *(a1 + 516) = v3[2];
  *(a1 + 636) |= 2u;
  return v3;
}

uint64_t __bt_put(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v22 = *(a1 + 56);
  if (v22[4])
  {
    mpool_put(*v22, v22[4], 0);
    v22[4] = 0;
  }

  if ((*(v22 + 159) & 0x10) != 0)
  {
    *__error() = 1;
    return -1;
  }

  if (v23)
  {
    if (v23 != 1)
    {
      if (v23 == 8)
      {
        goto LABEL_12;
      }

LABEL_11:
      *__error() = 22;
      return -1;
    }

    if ((*(v22 + 68) & 8) == 0 || (*(v22 + 68) & 7) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v10 = 0;
  if (v24[1] + v25[1] > *(v22 + 262))
  {
    if (v25[1] <= *(v22 + 262))
    {
      goto LABEL_17;
    }

    do
    {
      if (__ovfl_put(v22, v25, &v13) == -1)
      {
        return -1;
      }

      v20 = v28;
      v21 = 8;
      v28[0] = v13;
      v11 = v25[1];
      v28[1] = v11;
      v10 |= 2u;
      v25 = &v20;
LABEL_17:
      if (v24[1] + v25[1] > *(v22 + 262))
      {
        if (__ovfl_put(v22, v24, &v13) == -1)
        {
          return -1;
        }

        v18 = v29;
        v19 = 8;
        v29[0] = v13;
        v11 = v24[1];
        v29[1] = v11;
        v10 |= 1u;
        v24 = &v18;
      }
    }

    while (v24[1] + v25[1] > *(v22 + 262));
  }

  if (v23 == 1)
  {
    v16 = mpool_get(*v22, *(v22 + 10), 0);
    if (!v16)
    {
      return -1;
    }

    v15 = *(v22 + 22);
LABEL_36:
    if (__bt_dleaf(v22, v25, v16, v15) == -1)
    {
      mpool_put(*v22, v16, 0);
      return -1;
    }

    goto LABEL_38;
  }

  if (!*(v22 + 133) || (v17 = bt_fast(v22, v25, v24, &v9)) == 0)
  {
    v17 = __bt_search(v22, v25, &v9);
    if (!v17)
    {
      return -1;
    }
  }

  v16 = *v17;
  v15 = *(v17 + 8);
  if (v23 == 8)
  {
    if (v9)
    {
      mpool_put(*v22, v16, 0);
      return 1;
    }

    goto LABEL_38;
  }

  if (v9 && (*(v22 + 159) & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_38:
  v12 = (v25[1] + 9 + v24[1] + 3) & 0xFFFFFFFC;
  if (*(v16 + 9) - *(v16 + 8) >= v12 + 2)
  {
    v4 = (*(v16 + 8) - 20) / 2;
    v14 = v4;
    if (v15 < v4)
    {
      memmove(v16 + 2 * v15 + 22, v16 + 2 * v15 + 20, 2 * (v14 - v15));
    }

    *(v16 + 8) += 2;
    v5 = *(v16 + 9) - v12;
    *(v16 + 9) = v5;
    *(v16 + v15 + 10) = v5;
    __dst = v16 + *(v16 + 9);
    *__dst = v25[1];
    __dst += 4;
    *__dst = v24[1];
    __dst[4] = v10;
    __dst += 5;
    memmove(__dst, *v25, v25[1]);
    memmove(v25[1] + __dst, *v24, v24[1]);
    if ((*(v22 + 68) & 8) != 0 && (*(v22 + 68) & 1) == 0 && *(v22 + 10) == *v16 && *(v22 + 22) >= v15)
    {
      ++*(v22 + 22);
    }

    if (!*(v22 + 133))
    {
      if (*(v16 + 2))
      {
        if (!*(v16 + 1) && !v15)
        {
          *(v22 + 133) = 1;
          *(v22 + 270) = 0;
          *(v22 + 134) = *v16;
        }
      }

      else if (v15 == (*(v16 + 8) - 20) / 2 - 1)
      {
        *(v22 + 133) = 2;
        *(v22 + 270) = v15;
        *(v22 + 134) = *v16;
      }
    }

    mpool_put(*v22, v16, 1u);
  }

  else
  {
    v8 = __bt_split(v22, v16, v25, v24, v10, v12, v15);
    if (v8)
    {
      return v8;
    }
  }

  if (v23 == 10)
  {
    __bt_setcur(v22, **v17, *(v17 + 8));
  }

  *(v22 + 159) |= 4u;
  return 0;
}

uint64_t bt_fast(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = mpool_get(*a1, *(a1 + 536), 0);
  if (v8)
  {
    *(a1 + 16) = v8;
    *(a1 + 24) = *(a1 + 540);
    if (v8[9] - v8[8] >= ((*(a2 + 8) + 9 + *(a3 + 8) + 3) & 0xFFFFFFFC) + 2)
    {
      if (*(a1 + 532) == 2)
      {
        if (!*(*(a1 + 16) + 8) && *(a1 + 24) == (v8[8] - 20) / 2 - 1)
        {
          v7 = __bt_cmp(a1, a2, (a1 + 16));
          if ((v7 & 0x80000000) == 0)
          {
            if (v7)
            {
              v4 = *(a1 + 24) + 1;
              *(a1 + 24) = v4;
              v6 = v4;
            }

            else
            {
              v6 = *(a1 + 24);
            }

            *(a1 + 540) = v6;
            goto LABEL_16;
          }
        }
      }

      else if (!*(*(a1 + 16) + 4) && !*(a1 + 24))
      {
        v7 = __bt_cmp(a1, a2, (a1 + 16));
        if (v7 <= 0)
        {
          *(a1 + 540) = 0;
LABEL_16:
          *a4 = v7 == 0;
          return a1 + 16;
        }
      }
    }

    *(a1 + 532) = 0;
    mpool_put(*a1, v8, 0);
    return 0;
  }

  *(a1 + 532) = 0;
  return 0;
}

uint64_t __bt_search(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *(a1 + 472) = a1 + 72;
  v6 = 1;
  while (2)
  {
    v10 = mpool_get(*a1, v6, 0);
    if (!v10)
    {
      return 0;
    }

    *(a1 + 16) = v10;
    v9 = 0;
    for (i = (*(v10 + 8) - 20) / 2; i; i = i >> 1)
    {
      v8 = v9 + (i >> 1);
      *(a1 + 24) = v8;
      v5 = __bt_cmp(a1, a2, (a1 + 16));
      if (!v5)
      {
        if ((v10[3] & 2) != 0)
        {
          *a3 = 1;
          return a1 + 16;
        }

        goto LABEL_28;
      }

      if (v5 > 0)
      {
        v9 = v8 + 1;
        --i;
      }
    }

    if ((v10[3] & 2) == 0)
    {
      if (v9)
      {
        v4 = v9 - 1;
      }

      else
      {
        v4 = 0;
      }

      v8 = v4;
LABEL_28:
      **(a1 + 472) = *v10;
      *(*(a1 + 472) + 4) = v8;
      *(a1 + 472) += 8;
      v6 = *(v10 + *(v10 + v8 + 10) + 4);
      mpool_put(*a1, v10, 0);
      continue;
    }

    break;
  }

  if ((*(a1 + 636) & 0x20) != 0)
  {
    goto LABEL_23;
  }

  if (!v9 && v10[1] && __bt_sprev(a1, v10, a2, a3))
  {
    return a1 + 16;
  }

  if (v9 == (*(v10 + 8) - 20) / 2 && v10[2] && __bt_snext(a1, v10, a2, a3))
  {
    return a1 + 16;
  }

LABEL_23:
  *a3 = 0;
  *(a1 + 24) = v9;
  return a1 + 16;
}

uint64_t __bt_sprev(MPOOL **a1, pgno_t *a2, uint64_t a3, _DWORD *a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5[0] = 0;
  v5[1] = 0;
  v5[0] = mpool_get(*a1, a2[1], 0);
  if (v5[0])
  {
    LOWORD(v5[1]) = (*(v5[0] + 8) - 20) / 2 - 1;
    if (__bt_cmp(v9, v7, v5))
    {
      mpool_put(*v9, v5[0], 0);
      return 0;
    }

    else
    {
      mpool_put(*v9, v8, 0);
      *(v9 + 1) = *v5;
      *v6 = 1;
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t __bt_snext(MPOOL **a1, pgno_t *a2, uint64_t a3, _DWORD *a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5[0] = 0;
  v5[1] = 0;
  v5[0] = mpool_get(*a1, a2[2], 0);
  if (v5[0])
  {
    LOWORD(v5[1]) = 0;
    if (__bt_cmp(v9, v7, v5))
    {
      mpool_put(*v9, v5[0], 0);
      return 0;
    }

    else
    {
      mpool_put(*v9, v8, 0);
      *(v9 + 1) = *v5;
      *v6 = 1;
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t __bt_seq(uint64_t a1, void *a2, void *a3, int a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6 = 0uLL;
  v7 = *(a1 + 56);
  if (v7[4])
  {
    mpool_put(*v7, v7[4], 0);
    v7[4] = 0;
  }

  if (v8 == 1 || v8 == 3 || v8 == 6)
  {
    goto LABEL_10;
  }

  if (v8 != 7 && v8 != 9)
  {
    *__error() = 22;
    return -1;
  }

  if ((*(v7 + 68) & 8) == 0)
  {
LABEL_10:
    v5 = __bt_seqset(v7, &v6, v10, v8);
  }

  else
  {
    v5 = __bt_seqadv(v7, &v6, v8);
  }

  if (!v5)
  {
    __bt_setcur(v7, *v6, SWORD4(v6));
    v5 = __bt_ret(v7, &v6, v10, (v7 + 60), v9, (v7 + 62), 0);
    if ((*(v7 + 159) & 0x4000) != 0)
    {
      mpool_put(*v7, v6, 0);
    }

    else
    {
      v7[4] = v6;
    }
  }

  return v5;
}

uint64_t __bt_seqadv(MPOOL **a1, _OWORD *a2, int a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v8 = a1 + 5;
  if ((*(a1 + 68) & 1) == 0)
  {
    v7 = mpool_get(*v11, *v8, 0);
    if (!v7)
    {
      return -1;
    }

    if (v9 == 7)
    {
      if ((*(v8 + 28) & 2) != 0)
      {
        goto LABEL_17;
      }

      v6 = *(v8 + 2) + 1;
      if ((*(v7 + 8) - 20) / 2 == v6)
      {
        v5 = *(v7 + 2);
        mpool_put(*v11, v7, 0);
        if (!v5)
        {
          return 1;
        }

        v7 = mpool_get(*v11, v5, 0);
        if (!v7)
        {
          return -1;
        }

        v6 = 0;
      }
    }

    else
    {
      if (v9 != 9)
      {
        goto LABEL_25;
      }

      if ((*(v8 + 28) & 4) != 0)
      {
LABEL_17:
        *(v8 + 28) &= 0xF9u;
        *v10 = v7;
        *(v10 + 4) = *(v8 + 2);
        return 0;
      }

      v6 = *(v8 + 2);
      if (v6)
      {
        --v6;
      }

      else
      {
        v5 = *(v7 + 1);
        mpool_put(*v11, v7, 0);
        if (!v5)
        {
          return 1;
        }

        v7 = mpool_get(*v11, v5, 0);
        if (!v7)
        {
          return -1;
        }

        v6 = (*(v7 + 8) - 20) / 2 - 1;
      }
    }

LABEL_25:
    *v10 = v7;
    *(v10 + 4) = v6;
    return 0;
  }

  return __bt_first(v11, (v8 + 1), v10, &v4);
}

uint64_t __bt_seqset(MPOOL **a1, _OWORD *a2, void *a3, int a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (a4 != 1)
  {
    if (a4 != 3)
    {
      if (a4 == 6)
      {
        goto LABEL_19;
      }

      if (a4 != 7)
      {
        if (a4 != 9)
        {
          return 0;
        }

LABEL_19:
        v6 = 1;
        while (1)
        {
          v7 = mpool_get(*v11, v6, 0);
          if (!v7)
          {
            return -1;
          }

          if (!((*(v7 + 8) - 20) / 2))
          {
            goto LABEL_15;
          }

          if ((*(v7 + 3) & 0x12) != 0)
          {
            break;
          }

          v6 = *(v7 + *(v7 + (*(v7 + 8) - 20) / 2 + 9) + 4);
          mpool_put(*v11, v7, 0);
        }

        *v10 = v7;
        *(v10 + 4) = (*(v7 + 8) - 20) / 2 - 1;
        return 0;
      }
    }

    v6 = 1;
    while (1)
    {
      v7 = mpool_get(*v11, v6, 0);
      if (!v7)
      {
        return -1;
      }

      if (!((*(v7 + 8) - 20) / 2))
      {
LABEL_15:
        mpool_put(*v11, v7, 0);
        return 1;
      }

      if ((*(v7 + 3) & 0x12) != 0)
      {
        break;
      }

      v6 = *(v7 + *(v7 + 10) + 4);
      mpool_put(*v11, v7, 0);
    }

    *v10 = v7;
    *(v10 + 4) = 0;
    return 0;
  }

  if (*v9 && v9[1])
  {
    return __bt_first(v11, v9, v10, &v5);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

void __bt_setcur(uint64_t a1, int a2, __int16 a3)
{
  if (*(a1 + 48))
  {
    free(*(a1 + 48));
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 68) &= 0xF8u;
  *(a1 + 40) = a2;
  *(a1 + 44) = a3;
  *(a1 + 68) |= 8u;
}

uint64_t __bt_first(uint64_t a1, uint64_t a2, _OWORD *a3, _DWORD *a4)
{
  v8 = __bt_search(a1, a2, a4);
  if (v8)
  {
    if (!*a4)
    {
      if (*(v8 + 8) == (*(*v8 + 16) - 20) / 2)
      {
        v6 = *(*v8 + 8);
        mpool_put(*a1, *v8, 0);
        if (!v6)
        {
          return 1;
        }

        v10 = mpool_get(*a1, v6, 0);
        if (!v10)
        {
          return -1;
        }

        *(v8 + 8) = 0;
        *v8 = v10;
      }

      *a3 = *v8;
      return 0;
    }

    if ((*(a1 + 636) & 0x20) != 0)
    {
      *a3 = *v8;
      return 0;
    }

    else
    {
      *v7 = *v8;
      v9 = *v8;
      do
      {
        if (*v7[0] == **v8)
        {
          LOWORD(v7[1]) = *(v8 + 8);
        }

        else
        {
          mpool_put(*a1, v7[0], 0);
          *v7 = *v8;
        }

        if (!*(v8 + 8))
        {
          if (!v9[1])
          {
            break;
          }

          if (*v9 != *v7[0])
          {
            mpool_put(*a1, v9, 0);
          }

          v5 = mpool_get(*a1, v9[1], 0);
          if (!v5)
          {
            if (*v9 == *v7[0])
            {
              mpool_put(*a1, v7[0], 0);
            }

            return -1;
          }

          v9 = v5;
          *v8 = v5;
          *(v8 + 8) = (*(v5 + 8) - 20) / 2;
        }

        --*(v8 + 8);
      }

      while (!__bt_cmp(a1, a2, v8));
      if (*v9 != *v7[0])
      {
        mpool_put(*a1, v9, 0);
      }

      *a3 = *v7;
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t __bt_split(MPOOL **a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v59 = a1;
  v58 = a2;
  v57 = a3;
  v56 = a4;
  v55 = a5;
  v54 = a6;
  v53 = a7;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v36 = 0;
  v38 = a7;
  if (*a2 == 1)
  {
    v25 = bt_root(v59, v58, &v43, &v42, &v38, v54);
  }

  else
  {
    v25 = bt_page(v59, v58, &v43, &v42, &v38, v54);
  }

  v44 = v25;
  if (v25)
  {
    v7 = v44[9] - v54;
    v44[9] = v7;
    v44[v38 + 10] = v7;
    __dst = v44 + v44[9];
    if ((*(v59 + 159) & 0x80) != 0)
    {
      *__dst = *(v56 + 8);
      __dst[4] = v55;
      memmove(__dst + 5, *v56, *(v56 + 8));
    }

    else
    {
      *__dst = *(v57 + 8);
      __dste = __dst + 4;
      *__dste = *(v56 + 8);
      __dste[4] = v55;
      __dste += 5;
      memmove(__dste, *v57, *(v57 + 8));
      memmove(&__dste[*(v57 + 8)], *v56, *(v56 + 8));
    }

    if (*v58 != 1 || ((*(v59 + 159) & 0x80) == 0 ? (v24 = bt_broot(v59, v58, v43, v42)) : (v24 = bt_rroot(v59, v58, v43, v42)), v24 != -1))
    {
      while (1)
      {
        if (v59[59] == (v59 + 9))
        {
          v23 = 0;
        }

        else
        {
          v8 = (v59[59] - 8);
          v59[59] = v8;
          v23 = v8;
        }

        v45 = v23;
        if (!v23)
        {
          goto LABEL_74;
        }

        v41 = v43;
        v40 = v42;
        v44 = mpool_get(*v59, v45->lqh.tqh_first, 0);
        if (!v44)
        {
          break;
        }

        v38 = WORD2(v45->lqh.tqh_first) + 1;
        v22 = *(v40 + 3) & 0x1F;
        switch(v22)
        {
          case 1:
            v52 = v40 + *(v40 + 10);
            __len = (*v52 + 12) & 0xFFFFFFFC;
            break;
          case 2:
            v51 = (v40 + *(v40 + 10));
            __len = (*v51 + 12) & 0xFFFFFFFC;
            if (v59[69] && (v51[2] & 2) == 0 && (*(v44 + 1) || v38 > 1u))
            {
              v50 = (v41 + *(v41 + (*(v41 + 8) - 20) / 2 + 9));
              v49 = *v50;
              v48 = v50 + 9;
              v47 = *v51;
              v46 = v51 + 9;
              v36 = (v59[69])(&v48, &v46);
              if (((v36 + 12) & 0xFFFFFFFC) >= __len)
              {
                v36 = 0;
              }

              else
              {
                __len = (v36 + 12) & 0xFFFFFFFC;
              }
            }

            else
            {
              v36 = 0;
            }

            break;
          case 8:
          case 16:
            __len = 8;
            break;
          default:
            v15 = *(v40 + 3) & 0x1F;
            abort_report_np("%s:%s:%u: illegal rchild->flags & P_TYPE (0x%x)");
        }

        if (v44[9] - v44[8] >= __len + 2)
        {
          v9 = (v44[8] - 20) / 2;
          v39 = v9;
          if (v38 < v9)
          {
            memmove(&v44[v38 + 11], &v44[v38 + 10], 2 * (v39 - v38));
          }

          v44[8] += 2;
          v35 = 0;
        }

        else
        {
          v58 = v44;
          if (*v44 == 1)
          {
            v21 = bt_root(v59, v44, &v43, &v42, &v38, __len);
          }

          else
          {
            v21 = bt_page(v59, v44, &v43, &v42, &v38, __len);
          }

          v44 = v21;
          if (!v21)
          {
LABEL_75:
            mpool_put(*v59, v41, 1u);
            mpool_put(*v59, v40, 1u);
            break;
          }

          v35 = 1;
        }

        v20 = *(v40 + 3) & 0x1F;
        switch(v20)
        {
          case 1:
            v10 = v44[9] - __len;
            v44[9] = v10;
            v44[v38 + 10] = v10;
            __dstf = (v44 + v44[v38 + 10]);
            memmove(__dstf, v52, __len);
            __dstf[1] = *v40;
            break;
          case 2:
            v11 = v44[9] - __len;
            v44[9] = v11;
            v44[v38 + 10] = v11;
            __dsta = (v44 + v44[v38 + 10]);
            if (v36)
            {
              v19 = v36;
            }

            else
            {
              v19 = *v51;
            }

            *__dsta = v19;
            __dstb = (__dsta + 1);
            *__dstb = *v40;
            __dstb[4] = v51[2] & 2;
            if (v36)
            {
              v18 = v36;
            }

            else
            {
              v18 = *v51;
            }

            memmove(__dstb + 5, v51 + 9, v18);
            if ((v51[2] & 2) != 0 && bt_preserve(v59, *(v51 + 9)) == -1)
            {
              goto LABEL_75;
            }

            break;
          case 8:
            if (v38)
            {
              __dstc = v44 + v44[v38 + 9];
            }

            else
            {
              __dstc = v43 + *(v43 + (*(v43 + 8) - 20) / 2 + 9);
            }

            *__dstc = rec_total(v41);
            *(__dstc + 1) = *v41;
            v12 = v44[9] - __len;
            v44[9] = v12;
            v44[v38 + 10] = v12;
            __dstg = (v44 + v44[v38 + 10]);
            *__dstg = rec_total(v40);
            __dstg[1] = *v40;
            break;
          case 16:
            if (v38)
            {
              __dstd = v44 + v44[v38 + 9];
            }

            else
            {
              __dstd = v43 + *(v43 + (*(v43 + 8) - 20) / 2 + 9);
            }

            *__dstd = (*(v41 + 8) - 20) / 2;
            *(__dstd + 1) = *v41;
            v13 = v44[9] - __len;
            v44[9] = v13;
            v44[v38 + 10] = v13;
            __dsth = (v44 + v44[v38 + 10]);
            *__dsth = (*(v40 + 8) - 20) / 2;
            __dsth[1] = *v40;
            break;
          default:
            v16 = *(v40 + 3) & 0x1F;
            abort_report_np("%s:%s:%u: illegal rchild->flags & P_TYPE (0x%x)");
        }

        if (!v35)
        {
          mpool_put(*v59, v44, 1u);
LABEL_74:
          mpool_put(*v59, v43, 1u);
          mpool_put(*v59, v42, 1u);
          return 0;
        }

        if (*v58 == 1)
        {
          v17 = (*(v59 + 159) & 0x80) != 0 ? bt_rroot(v59, v58, v43, v42) : bt_broot(v59, v58, v43, v42);
          if (v17 == -1)
          {
            goto LABEL_75;
          }
        }

        mpool_put(*v59, v41, 1u);
        mpool_put(*v59, v40, 1u);
      }
    }

    mpool_put(*v59, v43, 0);
    mpool_put(*v59, v42, 0);
    __dbpanic(v59[1]);
    return -1;
  }

  else
  {
    return -1;
  }
}

uint64_t bt_root(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned __int16 *a5, uint64_t a6)
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
  v10 = 0;
  v9 = 0;
  v13 = __bt_new(a1, &v10);
  if (!v13)
  {
    return 0;
  }

  v12 = __bt_new(v19, &v9);
  if (!v12)
  {
    return 0;
  }

  *v13 = v10;
  *v12 = v9;
  v13[2] = *v12;
  v12[1] = *v13;
  v12[2] = 0;
  v13[1] = 0;
  *(v12 + 8) = 20;
  *(v13 + 8) = 20;
  v6 = *(v19 + 520);
  *(v12 + 9) = v6;
  *(v13 + 9) = v6;
  v7 = *(v18 + 12) & 0x1F;
  v12[3] = v7;
  v13[3] = v7;
  v11 = bt_psplit(v19, v18, v13, v12, v15, v14);
  *v17 = v13;
  *v16 = v12;
  return v11;
}

void *bt_page(uint64_t a1, _DWORD *a2, void *a3, void **a4, unsigned __int16 *a5, uint64_t a6)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  __src = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = __bt_new(a1, &v8);
  if (!v10)
  {
    return 0;
  }

  *v10 = v8;
  *(v10 + 8) = 20;
  *(v10 + 9) = *(v17 + 520);
  *(v10 + 2) = v16[2];
  *(v10 + 1) = *v16;
  *(v10 + 3) = v16[3] & 0x1F;
  if (v16[2] || *v13 != (*(v16 + 8) - 20) / 2)
  {
    v6 = *(v17 + 520);
    __src = malloc_type_calloc();
    if (__src)
    {
      *__src = *v16;
      *(__src + 2) = *v10;
      *(__src + 1) = v16[1];
      *(__src + 8) = 20;
      *(__src + 9) = *(v17 + 520);
      *(__src + 3) = v16[3] & 0x1F;
      if (v16[2])
      {
        v9 = mpool_get(*v17, v16[2], 0);
        if (!v9)
        {
          free(__src);
          return 0;
        }

        *(v9 + 1) = *v10;
        mpool_put(*v17, v9, 1u);
      }

      v9 = bt_psplit(v17, v16, __src, v10, v13, v12);
      memmove(v16, __src, *(v17 + 520));
      if (v9 == __src)
      {
        v9 = v16;
      }

      free(__src);
      *v15 = v16;
      *v14 = v10;
      return v9;
    }

    else
    {
      mpool_put(*v17, v10, 0);
      return 0;
    }
  }

  else
  {
    v16[2] = *v10;
    *(v10 + 8) = 22;
    *v13 = 0;
    *v15 = v16;
    *v14 = v10;
    return v10;
  }
}

uint64_t bt_rroot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 520) - 8;
  *(a2 + 18) = v4;
  *(a2 + 20) = v4;
  v9 = (a2 + *(a2 + 18));
  if ((*(a3 + 12) & 0x10) != 0)
  {
    v8 = (*(a3 + 16) - 20) / 2;
  }

  else
  {
    LODWORD(v8) = rec_total(a3);
  }

  *v9 = v8;
  v9[1] = *a3;
  v5 = *(a2 + 18) - 8;
  *(a2 + 18) = v5;
  *(a2 + 22) = v5;
  v10 = (a2 + *(a2 + 18));
  if ((*(a4 + 12) & 0x10) != 0)
  {
    v7 = (*(a4 + 16) - 20) / 2;
  }

  else
  {
    LODWORD(v7) = rec_total(a4);
  }

  *v10 = v7;
  v10[1] = *a4;
  *(a2 + 16) = 24;
  *(a2 + 12) &= 0xFFFFFFE0;
  *(a2 + 12) |= 8u;
  mpool_put(*a1, a2, 1u);
  return 0;
}

uint64_t bt_broot(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = *(a1 + 520) - 12;
  *(a2 + 18) = v4;
  *(a2 + 20) = v4;
  __dst = (a2 + *(a2 + 18));
  *__dst = 0;
  __dst[1] = *a3;
  *(__dst + 8) = 0;
  v9 = *(a2 + 12) & 0x1F;
  if (v9 == 1)
  {
    v15 = (a4 + *(a4 + 20));
    __len = (*v15 + 12) & 0xFFFFFFFC;
    v6 = *(a2 + 18) - __len;
    *(a2 + 18) = v6;
    *(a2 + 22) = v6;
    __dstb = (a2 + *(a2 + 18));
    memmove(__dstb, v15, __len);
    __dstb[1] = *a4;
LABEL_9:
    *(a2 + 16) = 24;
    *(a2 + 12) &= 0xFFFFFFE0;
    *(a2 + 12) |= 1u;
    mpool_put(*a1, a2, 1u);
    return 0;
  }

  if (v9 != 2)
  {
    v8 = *(a2 + 12) & 0x1F;
    abort_report_np("%s:%s:%u: illegal h->flags & P_TYPE (0x%x)");
  }

  __len_4 = (a4 + *(a4 + 20));
  v5 = *(a2 + 18) - ((*__len_4 + 12) & 0xFFFC);
  *(a2 + 18) = v5;
  *(a2 + 22) = v5;
  __dsta = (a2 + *(a2 + 18));
  *__dsta = *__len_4;
  __dsta[1] = *a4;
  __dsta += 2;
  *__dsta = 0;
  memmove(__dsta + 1, __len_4 + 9, *__len_4);
  if ((__len_4[2] & 2) == 0 || bt_preserve(a1, *(__len_4 + 9)) != -1)
  {
    goto LABEL_9;
  }

  return -1;
}

uint64_t bt_preserve(MPOOL **a1, pgno_t a2)
{
  v3 = mpool_get(*a1, a2, 0);
  if (v3)
  {
    v3[3] |= 0x20u;
    mpool_put(*a1, v3, 1u);
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t rec_total(uint64_t a1)
{
  v3 = 0;
  for (i = 0; i < ((*(a1 + 16) - 20) / 2); ++i)
  {
    v3 += *(a1 + *(a1 + 20 + 2 * i));
  }

  return v3;
}

uint64_t bt_psplit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned int a6)
{
  *&v23[8] = 0;
  v14 = 0;
  v19 = *a5;
  *v23 = (*(a1 + 520) - 20);
  __len_6 = 0;
  v20 = 0;
  v22 = 0;
  v18 = (*(a2 + 16) - 20) / 2;
  while (v22 < v18)
  {
    if (v19 == v20)
    {
      __len = a6;
      v13 = 0;
    }

    else
    {
      v12 = *(a2 + 12) & 0x1F;
      switch(v12)
      {
        case 1:
          *&v23[2] = a2 + *(a2 + 20 + 2 * v22);
          __len = (**&v23[2] + 12) & 0xFFFFFFFC;
          v13 = *(*&v23[2] + 8) & 2;
          break;
        case 2:
          *&v23[2] = a2 + *(a2 + 20 + 2 * v22);
          __len = (**&v23[2] + 9 + *(*&v23[2] + 4) + 3) & 0xFFFFFFFC;
          v13 = *(*&v23[2] + 8) & 2;
          break;
        case 8:
          *&v23[2] = a2 + *(a2 + 20 + 2 * v22);
          __len = 8;
          v13 = 0;
          break;
        case 16:
          *&v23[2] = a2 + *(a2 + 20 + 2 * v22);
          __len = (**&v23[2] + 8) & 0xFFFFFFFC;
          v13 = 0;
          break;
        default:
          v9 = *(a2 + 12) & 0x1F;
          abort_report_np("%s:%s:%u: illegal h->flags & P_TYPE (0x%x)");
      }
    }

    if (v19 <= v20 && (__len_6 + __len) + 2 >= *v23 || v22 == v18 - 1)
    {
      --v20;
      break;
    }

    if (v19 != v20)
    {
      ++v22;
      v6 = *(a3 + 18) - __len;
      *(a3 + 18) = v6;
      *(a3 + 20 + 2 * v20) = v6;
      memmove((a3 + *(a3 + 18)), *&v23[2], __len);
    }

    __len_6 += __len + 2;
    if (__len_6 >= *v23 / 2)
    {
      if (!v13 || v14 == 3)
      {
        break;
      }

      ++v14;
    }

    ++v20;
  }

  *(a3 + 16) += 2 * (v20 + 1);
  v26 = (a1 + 40);
  if ((*(a1 + 68) & 8) != 0 && *v26 == *a2)
  {
    if (*(a1 + 44) >= v19)
    {
      ++*(a1 + 44);
    }

    if (*(a1 + 44) < v22)
    {
      *v26 = *a3;
    }

    else
    {
      *v26 = *a4;
      *(a1 + 44) -= v22;
    }
  }

  if (v19 > v20)
  {
    v25 = a4;
    *a5 -= v22;
  }

  else
  {
    v19 = -1;
    v25 = a3;
  }

  v21 = 0;
  while (v22 < v18)
  {
    if (v19 == v22)
    {
      ++v21;
      v19 = -1;
    }

    v11 = *(a2 + 12) & 0x1F;
    switch(v11)
    {
      case 1:
        __src = (a2 + *(a2 + 20 + 2 * v22));
        __lena = (*__src + 12) & 0xFFFFFFFC;
        break;
      case 2:
        __src = (a2 + *(a2 + 20 + 2 * v22));
        __lena = (*__src + 9 + __src[1] + 3) & 0xFFFFFFFC;
        break;
      case 8:
        __src = (a2 + *(a2 + 20 + 2 * v22));
        __lena = 8;
        break;
      case 16:
        __src = (a2 + *(a2 + 20 + 2 * v22));
        __lena = (*__src + 8) & 0xFFFFFFFC;
        break;
      default:
        v10 = *(a2 + 12) & 0x1F;
        abort_report_np("%s:%s:%u: illegal h->flags & P_TYPE (0x%x)");
    }

    ++v22;
    v7 = *(a4 + 18) - __lena;
    *(a4 + 18) = v7;
    *(a4 + 20 + 2 * v21) = v7;
    memmove((a4 + *(a4 + 18)), __src, __lena);
    ++v21;
  }

  *(a4 + 16) += 2 * v21;
  if (v19 == v18)
  {
    *(a4 + 16) += 2;
  }

  return v25;
}

uint64_t __bt_ret(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v14 = (*a2 + *(*a2 + 20 + 2 * *(a2 + 8)));
  if (a3)
  {
    if ((v14[2] & 2) != 0)
    {
      if (__ovfl_get(a1, (v14 + 9), a3 + 1, a4, (a4 + 8)))
      {
        return -1;
      }

      *a3 = *a4;
    }

    else if (a7 || (*(a1 + 636) & 0x4000) != 0)
    {
      if (*v14 > *(a4 + 8))
      {
        v7 = *a4;
        v8 = *v14;
        v12 = malloc_type_realloc();
        if (!v12)
        {
          return -1;
        }

        *a4 = v12;
        *(a4 + 8) = *v14;
      }

      memmove(*a4, v14 + 9, *v14);
      a3[1] = *v14;
      *a3 = *a4;
    }

    else
    {
      a3[1] = *v14;
      *a3 = v14 + 9;
    }
  }

  if (a5)
  {
    if (v14[2])
    {
      if (__ovfl_get(a1, (v14 + *v14 + 9), a5 + 1, a6, (a6 + 8)))
      {
        return -1;
      }

      *a5 = *a6;
    }

    else if (a7 || (*(a1 + 636) & 0x4000) != 0)
    {
      if ((v14[1] + 1) > *(a6 + 8))
      {
        v9 = *a6;
        v10 = v14[1] + 1;
        v13 = malloc_type_realloc();
        if (!v13)
        {
          return -1;
        }

        *a6 = v13;
        *(a6 + 8) = v14[1] + 1;
      }

      memmove(*a6, v14 + *v14 + 9, v14[1]);
      a5[1] = v14[1];
      *a5 = *a6;
    }

    else
    {
      a5[1] = v14[1];
      *a5 = v14 + *v14 + 9;
    }

    return 0;
  }

  return 0;
}

uint64_t __bt_cmp(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  v8 = 0;
  v6 = 0;
  v7 = 0;
  v5 = *a3;
  if (*(a3 + 4) || *(v5 + 4) || (*(v5 + 12) & 2) != 0)
  {
    v4 = 0;
    if ((*(v5 + 12) & 2) != 0)
    {
      v8 = (v5 + *(v5 + 20 + 2 * *(v10 + 4)));
      if ((v8[2] & 2) != 0)
      {
        v4 = (v8 + 9);
      }

      else
      {
        v6 = v8 + 9;
        v7 = *v8;
      }
    }

    else
    {
      v9 = (v5 + *(v5 + 20 + 2 * *(v10 + 4)));
      if ((v9[2] & 2) != 0)
      {
        v4 = (v9 + 9);
      }

      else
      {
        v6 = v9 + 9;
        v7 = *v9;
      }
    }

    if (v4)
    {
      if (__ovfl_get(v12, v4, &v7, (v12 + 496), (v12 + 504)))
      {
        return -1;
      }

      v6 = *(v12 + 496);
    }

    return (*(v12 + 544))(v11, &v6);
  }

  return 1;
}

uint64_t __bt_defcmp(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (a1[1] >= a2[1])
  {
    v4 = a2[1];
  }

  else
  {
    v4 = a1[1];
  }

  v7 = v4;
  v6 = *a1;
  for (i = *a2; v7--; ++i)
  {
    if (*v6 != *i)
    {
      return (*v6 - *i);
    }

    ++v6;
  }

  return a1[1] - a2[1];
}

uint64_t __bt_defpfx(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v7 = 1;
  if (a1[1] >= a2[1])
  {
    v5 = a2[1];
  }

  else
  {
    v5 = a1[1];
  }

  v6 = v5;
  v9 = *a1;
  for (i = *a2; v6--; ++i)
  {
    if (*v9 != *i)
    {
      return v7;
    }

    ++v9;
    ++v7;
  }

  if (a1[1] >= a2[1])
  {
    return a1[1];
  }

  else
  {
    return (a1[1] + 1);
  }
}

DB *__cdecl dbopen(const char *a1, int a2, int a3, DBTYPE a4, const void *a5)
{
  if ((a2 & 0x1FFFF1C9) != 0)
  {
    goto LABEL_9;
  }

  if (a4 == DB_BTREE)
  {
    return __bt_open(a1, a2 & 0xE36, a3, a5, a2 & 0xE0000000);
  }

  if (a4 == DB_HASH)
  {
    return __hash_open(a1, a2 & 0xE36, a3, a5, a2 & 0xE0000000);
  }

  if (a4 != DB_RECNO)
  {
LABEL_9:
    *__error() = 22;
    return 0;
  }

  return __rec_open(a1, a2 & 0xE36, a3, a5, a2 & 0xE0000000);
}

void *__dbpanic(void *result)
{
  result[2] = __dberr;
  result[8] = __dberr;
  result[3] = __dberr;
  result[4] = __dberr;
  result[5] = __dberr;
  result[6] = __dberr;
  return result;
}

uint64_t __hash_open(const char *a1, unsigned int a2, int a3, uint64_t a4, int a5)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  inited = 0;
  memset(&__b, 0, sizeof(__b));
  if ((v25 & 3) == 1)
  {
    ++v25;
  }

  inited = malloc_type_calloc();
  if (!inited)
  {
    return 0;
  }

  inited[71] = -1;
  inited[70] = v25;
  if (v26)
  {
    v5 = open_NOCANCEL();
    inited[71] = v5;
    if (v5 == -1)
    {
      v14 = *__error();
LABEL_47:
      free(inited);
      *__error() = v14;
      return 0;
    }

    v6 = inited[71];
    v10 = 1;
    fcntl_NOCANCEL();
    v13 = 0;
    if (!fstat(inited[71], &__b))
    {
      v13 = 0;
      if (!__b.st_size)
      {
        v12 = 1;
        if ((v25 & 3) == 0)
        {
          v12 = (v25 & 0x200) != 0;
        }

        v13 = v12;
      }
    }

    v16 = v13;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (v23 && *(v23 + 16))
    {
      *(inited + 34) = *(v23 + 16);
    }

    else
    {
      *(inited + 34) = __default_hash;
    }

    v7 = inited[71];
    NOCANCEL = read_NOCANCEL();
    swap_header(inited);
    if (NOCANCEL == -1)
    {
      goto LABEL_17;
    }

    if (NOCANCEL == 260)
    {
      if (*inited == 398689)
      {
        if (inited[1] == 2 || inited[1] == 1)
        {
          if ((*(inited + 34))("%$sniglet^&", 12, v10) == inited[16])
          {
            if (alloc_segs(inited, (inited[10] + inited[6]) / inited[6]))
            {
              return 0;
            }

            v18 = (inited[inited[8] + 17] + 8 * inited[3] - 1) >> (inited[4] + 3);
            inited[148] = v18;
            bzero(inited + 84, 8 * v18);
            goto LABEL_36;
          }

          v14 = 79;
        }

        else
        {
          v14 = 79;
        }
      }

      else
      {
        v14 = 79;
      }
    }

    else
    {
      v14 = 79;
    }

LABEL_45:
    if (inited)
    {
      v8 = inited[71];
      close_NOCANCEL();
    }

    goto LABEL_47;
  }

  inited = init_hash(inited, v26, v23);
  if (!inited)
  {
LABEL_17:
    v14 = *__error();
    goto LABEL_45;
  }

LABEL_36:
  if (v23 && *(v23 + 12))
  {
    __buf_init(inited, *(v23 + 12));
  }

  else
  {
    __buf_init(inited, 0x10000);
  }

  inited[81] = v16;
  v11 = 0;
  if (v26)
  {
    v11 = (inited[70] & 2) != 0;
  }

  inited[82] = v11;
  inited[78] = -1;
  v19 = malloc_type_malloc();
  if (v19)
  {
    *(v19 + 56) = inited;
    *(v19 + 8) = hash_close;
    *(v19 + 16) = hash_delete;
    *(v19 + 64) = hash_fd;
    *(v19 + 24) = hash_get;
    *(v19 + 32) = hash_put;
    *(v19 + 40) = hash_seq;
    *(v19 + 48) = hash_sync;
    *v19 = 1;
    return v19;
  }

  else
  {
    v15 = *__error();
    hdestroy();
    *__error() = v15;
    return 0;
  }
}

_DWORD *init_hash(_DWORD *a1, const char *a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  memset(&__b, 0, sizeof(__b));
  v4 = 1;
  v8[14] = 0;
  v8[2] = 1234;
  v8[3] = 4096;
  v8[4] = 12;
  v8[6] = 256;
  v8[7] = 8;
  v8[5] = 256;
  v8[13] = 0x10000;
  *(v8 + 34) = __default_hash;
  memset(v8 + 17, 0, 0x80uLL);
  memset(v8 + 49, 0, 0x40uLL);
  if (v7)
  {
    if (stat(v7, &__b))
    {
      return 0;
    }

    v8[3] = __b.st_blksize;
    v8[4] = __log2(v8[3]);
  }

  if (v6)
  {
    if (*v6)
    {
      v8[4] = __log2(*v6);
      v8[3] = 1 << v8[4];
      if (v8[3] > 0x10000)
      {
        goto LABEL_8;
      }
    }

    if (*(v6 + 4))
    {
      v8[13] = *(v6 + 4);
    }

    if (*(v6 + 16))
    {
      *(v8 + 34) = *(v6 + 16);
    }

    if (*(v6 + 8))
    {
      v4 = *(v6 + 8);
    }

    if (*(v6 + 24))
    {
      if (*(v6 + 24) != 4321 && *(v6 + 24) != 1234)
      {
LABEL_8:
        *__error() = 22;
        return 0;
      }

      v8[2] = *(v6 + 24);
    }
  }

  if (init_htab(v8, v4))
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

unsigned int *swap_header(unsigned int *result)
{
  v19 = *result;
  *result = HIBYTE(*result);
  *(result + 1) = BYTE2(v19);
  *(result + 2) = BYTE1(v19);
  *(result + 3) = v19;
  v18 = result[1];
  *(result + 4) = HIBYTE(v18);
  *(result + 5) = BYTE2(v18);
  *(result + 6) = BYTE1(v18);
  *(result + 7) = v18;
  v17 = result[2];
  *(result + 8) = HIBYTE(v17);
  *(result + 9) = BYTE2(v17);
  *(result + 10) = BYTE1(v17);
  *(result + 11) = v17;
  v16 = result[3];
  *(result + 12) = HIBYTE(v16);
  *(result + 13) = BYTE2(v16);
  *(result + 14) = BYTE1(v16);
  *(result + 15) = v16;
  v15 = result[4];
  *(result + 16) = HIBYTE(v15);
  *(result + 17) = BYTE2(v15);
  *(result + 18) = BYTE1(v15);
  *(result + 19) = v15;
  v14 = result[5];
  *(result + 20) = HIBYTE(v14);
  *(result + 21) = BYTE2(v14);
  *(result + 22) = BYTE1(v14);
  *(result + 23) = v14;
  v13 = result[6];
  *(result + 24) = HIBYTE(v13);
  *(result + 25) = BYTE2(v13);
  *(result + 26) = BYTE1(v13);
  *(result + 27) = v13;
  v12 = result[7];
  *(result + 28) = HIBYTE(v12);
  *(result + 29) = BYTE2(v12);
  *(result + 30) = BYTE1(v12);
  *(result + 31) = v12;
  v11 = result[8];
  *(result + 32) = HIBYTE(v11);
  *(result + 33) = BYTE2(v11);
  *(result + 34) = BYTE1(v11);
  *(result + 35) = v11;
  v10 = result[9];
  *(result + 36) = HIBYTE(v10);
  *(result + 37) = BYTE2(v10);
  *(result + 38) = BYTE1(v10);
  *(result + 39) = v10;
  v9 = result[10];
  *(result + 40) = HIBYTE(v9);
  *(result + 41) = BYTE2(v9);
  *(result + 42) = BYTE1(v9);
  *(result + 43) = v9;
  v8 = result[11];
  *(result + 44) = HIBYTE(v8);
  *(result + 45) = BYTE2(v8);
  *(result + 46) = BYTE1(v8);
  *(result + 47) = v8;
  v7 = result[12];
  *(result + 48) = HIBYTE(v7);
  *(result + 49) = BYTE2(v7);
  *(result + 50) = BYTE1(v7);
  *(result + 51) = v7;
  v6 = result[13];
  *(result + 52) = HIBYTE(v6);
  *(result + 53) = BYTE2(v6);
  *(result + 54) = BYTE1(v6);
  *(result + 55) = v6;
  v5 = result[14];
  *(result + 56) = HIBYTE(v5);
  *(result + 57) = BYTE2(v5);
  *(result + 58) = BYTE1(v5);
  *(result + 59) = v5;
  v4 = result[15];
  *(result + 60) = HIBYTE(v4);
  *(result + 61) = BYTE2(v4);
  *(result + 62) = BYTE1(v4);
  *(result + 63) = v4;
  v3 = result[16];
  *(result + 64) = HIBYTE(v3);
  *(result + 65) = BYTE2(v3);
  *(result + 66) = BYTE1(v3);
  *(result + 67) = v3;
  for (i = 0; i < 32; ++i)
  {
    v2 = result[i + 17];
    LOBYTE(result[i + 17]) = HIBYTE(v2);
    BYTE1(result[i + 17]) = BYTE2(v2);
    BYTE2(result[i + 17]) = BYTE1(v2);
    HIBYTE(result[i + 17]) = v2;
    v1 = *(result + i + 98);
    *(result + 2 * i + 196) = HIBYTE(v1);
    *(result + 2 * i + 197) = v1;
  }

  return result;
}

uint64_t alloc_segs(uint64_t a1, int a2)
{
  v2 = *(a1 + 20);
  v3 = malloc_type_calloc();
  *(a1 + 648) = v3;
  if (v3)
  {
    *(a1 + 260) = a2;
    if (a2)
    {
      v4 = (a2 << *(a1 + 28));
      v8 = malloc_type_calloc();
      if (v8)
      {
        for (i = 0; i < a2; ++i)
        {
          *(*(a1 + 648) + 8 * i) = v8 + 8 * (i << *(a1 + 28));
        }

        return 0;
      }

      else
      {
        v7 = *__error();
        hdestroy();
        *__error() = v7;
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
    v6 = *__error();
    hdestroy();
    *__error() = v6;
    return -1;
  }
}

void hdestroy(void)
{
  v7 = v0;
  v5 = 0;
  if (__buf_free(v0, 1, *(v0 + 328)))
  {
    v5 = *__error();
  }

  if (*(v7 + 81))
  {
    free(**(v7 + 81));
    while (1)
    {
      v1 = v7[66];
      v7[66] = v1 - 1;
      if (!v1)
      {
        break;
      }

      v2 = *(v7 + 81);
      v3 = v7[65] - 1;
      v7[65] = v3;
      free(*(v2 + 8 * v3));
    }

    free(*(v7 + 81));
  }

  if (flush_meta(v7) && !v5)
  {
    v5 = *__error();
  }

  for (i = 0; i < v7[148]; ++i)
  {
    if (*&v7[2 * i + 84])
    {
      free(*&v7[2 * i + 84]);
    }
  }

  if (*(v7 + 37))
  {
    free(*(v7 + 37));
  }

  if (*(v7 + 36))
  {
    free(*(v7 + 36));
  }

  if (v7[71] != -1)
  {
    v4 = v7[71];
    close_NOCANCEL();
  }

  free(v7);
  if (v5)
  {
    *__error() = v5;
  }
}

uint64_t hash_close(void *a1)
{
  if (a1)
  {
    v4 = a1[7];
    hdestroy();
    v3 = v1;
    free(a1);
    return v3;
  }

  else
  {
    return -1;
  }
}

uint64_t hash_delete(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v4 = *(a1 + 56);
  if (a3 < 2)
  {
    if ((v4[70] & 3) != 0)
    {
      return hash_access(v4, 3, a2, 0);
    }

    else
    {
      *__error() = 1;
      v4[80] = 1;
      return -1;
    }
  }

  else
  {
    *__error() = 22;
    v4[80] = 22;
    return -1;
  }
}

uint64_t hash_fd(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (*(v2 + 284) == -1)
    {
      *__error() = 2;
      return -1;
    }

    else
    {
      return *(v2 + 284);
    }
  }

  else
  {
    return -1;
  }
}

uint64_t hash_get(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v5 = *(a1 + 56);
  if (a4)
  {
    *__error() = 22;
    v5[80] = 22;
    return -1;
  }

  else
  {
    return hash_access(v5, 0, a2, a3);
  }
}

uint64_t hash_put(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v6 = *(a1 + 56);
  if (!a4 || a4 == 8)
  {
    if ((v6[70] & 3) != 0)
    {
      if (a4 == 8)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      return hash_access(v6, v4, a2, a3);
    }

    else
    {
      *__error() = 1;
      v6[80] = 1;
      return -1;
    }
  }

  else
  {
    *__error() = 22;
    v6[80] = 22;
    return -1;
  }
}

uint64_t hash_seq(uint64_t a1, void *a2, void *a3, int a4)
{
  buf = 0;
  v10 = *(a1 + 56);
  if (!a4 || a4 == 3 || a4 == 7)
  {
    if ((*(v10 + 312) & 0x80000000) != 0 || a4 == 3)
    {
      *(v10 + 312) = 0;
      *(v10 + 316) = 1;
      *(v10 + 304) = 0;
    }

LABEL_8:
    v9 = 0;
    while (1)
    {
      v7 = 1;
      if (v9)
      {
        v7 = *v9 == 0;
      }

      if (!v7)
      {
        break;
      }

      buf = *(v10 + 304);
      if (!buf)
      {
        for (i = *(v10 + 312); i <= *(v10 + 40); ++i)
        {
          buf = __get_buf(v10, i, 0, 0);
          if (!buf)
          {
            return -1;
          }

          *(v10 + 304) = buf;
          v9 = *(buf + 32);
          if (*v9)
          {
            break;
          }

          *(v10 + 316) = 1;
        }

        *(v10 + 312) = i;
        if (*(v10 + 312) <= *(v10 + 40))
        {
          goto LABEL_24;
        }

        *(v10 + 312) = -1;
        return 1;
      }

      v9 = *(*(v10 + 304) + 32);
      if (a4 == 7)
      {
        *(v10 + 316) += 2;
        if (*(v10 + 316) > *v9)
        {
          *(v10 + 304) = 0;
          ++*(v10 + 312);
          *(v10 + 316) = 1;
          goto LABEL_8;
        }
      }

LABEL_24:
      while (!v9[*(v10 + 316) + 1])
      {
        v4 = __get_buf(v10, v9[*(v10 + 316)], buf, 0);
        *(v10 + 304) = v4;
        buf = v4;
        if (!v4)
        {
          return -1;
        }

        v9 = *(v4 + 32);
        *(v10 + 316) = 1;
      }

      if (!*v9)
      {
        *(v10 + 304) = 0;
        ++*(v10 + 312);
      }
    }

    v8 = *(v10 + 316);
    if (v9[v8 + 1] >= 4u)
    {
      if (!*(v10 + 304))
      {
        return -1;
      }

      *a2 = *(*(v10 + 304) + 32) + v9[v8];
      if (v8 <= 1u)
      {
        v6 = *(v10 + 12);
      }

      else
      {
        v6 = v9[v8 - 1];
      }

      a2[1] = v6 - v9[v8];
      *a3 = *(*(v10 + 304) + 32) + v9[v8 + 1];
      a3[1] = v9[v8] - v9[v8 + 1];
    }

    else if (__big_keydata(v10, buf, a2, a3, 1u))
    {
      return -1;
    }

    return 0;
  }

  else
  {
    *__error() = 22;
    *(v10 + 320) = 22;
    return -1;
  }
}

uint64_t hash_sync(uint64_t a1, int a2)
{
  if (a2)
  {
    *__error() = 22;
    return -1;
  }

  else if (a1)
  {
    v3 = *(a1 + 56);
    if (*(v3 + 328))
    {
      if (__buf_free(v3, 0, 1) || flush_meta(v3))
      {
        return -1;
      }

      else
      {
        *(v3 + 324) = 0;
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
    return -1;
  }
}

uint64_t __expand_table(uint64_t a1)
{
  v1 = *(a1 + 40) + 1;
  *(a1 + 40) = v1;
  v8 = v1;
  v9 = *(a1 + 40) & *(a1 + 48);
  v6 = v1 >> *(a1 + 28);
  if (v6 >= *(a1 + 260))
  {
    if (v6 >= *(a1 + 20))
    {
      v7 = 8 * *(a1 + 20);
      if (!hash_realloc((a1 + 648), v7, 16 * *(a1 + 20)))
      {
        return -1;
      }

      *(a1 + 20) = 2 * v7;
    }

    v2 = *(a1 + 24);
    v3 = malloc_type_calloc();
    *(*(a1 + 648) + 8 * v6) = v3;
    if (!v3)
    {
      return -1;
    }

    ++*(a1 + 264);
    ++*(a1 + 260);
  }

  v5 = __log2(*(a1 + 40) + 1);
  if (v5 > *(a1 + 32))
  {
    *(a1 + 68 + 4 * v5) = *(a1 + 68 + 4 * *(a1 + 32));
    *(a1 + 32) = v5;
  }

  if (v8 > *(a1 + 44))
  {
    *(a1 + 48) = *(a1 + 44);
    *(a1 + 44) = v8 | *(a1 + 48);
  }

  return __split_page(a1, v9, v8);
}

char *hash_realloc(const void **a1, int a2, int a3)
{
  __dst = malloc_type_malloc();
  if (__dst)
  {
    memmove(__dst, *a1, a2);
    bzero(&__dst[a2], a3 - a2);
    free(*a1);
    *a1 = __dst;
  }

  return __dst;
}

uint64_t __call_hash(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (*(a1 + 272))(a2, a3) & *(a1 + 44);
  if (v4 > *(a1 + 40))
  {
    v4 &= *(a1 + 48);
  }

  return v4;
}

uint64_t init_htab(_DWORD *a1, int a2)
{
  v6 = (a2 - 1) / a1[13] + 1;
  if (v6 <= 2)
  {
    v2 = __log2(2u);
  }

  else
  {
    v2 = __log2(v6);
  }

  v5 = 1 << v2;
  a1[v2 + 17] = v2 + 1;
  a1[v2 + 18] = v2 + 1;
  a1[8] = v2;
  a1[9] = 2;
  if (__ibitmap(a1, (v2 << 11) + 1, v2 + 1, 0))
  {
    return -1;
  }

  else
  {
    a1[12] = v5 - 1;
    a1[10] = v5 - 1;
    a1[11] = 2 * v5 - 1;
    a1[15] = (0x1FFuLL >> a1[4]) + 1;
    v4 = 1 << __log2((v5 - 1) / a1[6] + 1);
    if (v4 > a1[5])
    {
      a1[5] = v4;
    }

    return alloc_segs(a1, v4);
  }
}

uint64_t flush_meta(_BYTE *a1)
{
  v8 = a1;
  v7 = 0;
  bzero(v6, 0x104uLL);
  if (*(v8 + 82))
  {
    *v8 = 398689;
    *(v8 + 1) = 2;
    v1 = (*(v8 + 34))("%$sniglet^&", 12);
    *(v8 + 16) = v1;
    v5 = *(v8 + 71);
    v7 = v6;
    swap_header_copy(v8, v6);
    v3 = pwrite_NOCANCEL();
    if (v3 == -1)
    {
      return -1;
    }

    else if (v3 == 260)
    {
      for (i = 0; i < 32; ++i)
      {
        if (*&v8[8 * i + 336] && __put_page(v8, *&v8[8 * i + 336], *&v8[2 * i + 196], 0, 1))
        {
          return -1;
        }
      }

      return 0;
    }

    else
    {
      *__error() = 79;
      *(v8 + 80) = *__error();
      return -1;
    }
  }

  else
  {
    return 0;
  }
}

_BYTE *swap_header_copy(_BYTE *result, _BYTE *a2)
{
  *a2 = result[3];
  a2[1] = result[2];
  a2[2] = result[1];
  a2[3] = *result;
  a2[4] = result[7];
  a2[5] = result[6];
  a2[6] = result[5];
  a2[7] = result[4];
  a2[8] = result[11];
  a2[9] = result[10];
  a2[10] = result[9];
  a2[11] = result[8];
  a2[12] = result[15];
  a2[13] = result[14];
  a2[14] = result[13];
  a2[15] = result[12];
  a2[16] = result[19];
  a2[17] = result[18];
  a2[18] = result[17];
  a2[19] = result[16];
  a2[20] = result[23];
  a2[21] = result[22];
  a2[22] = result[21];
  a2[23] = result[20];
  a2[24] = result[27];
  a2[25] = result[26];
  a2[26] = result[25];
  a2[27] = result[24];
  a2[28] = result[31];
  a2[29] = result[30];
  a2[30] = result[29];
  a2[31] = result[28];
  a2[32] = result[35];
  a2[33] = result[34];
  a2[34] = result[33];
  a2[35] = result[32];
  a2[36] = result[39];
  a2[37] = result[38];
  a2[38] = result[37];
  a2[39] = result[36];
  a2[40] = result[43];
  a2[41] = result[42];
  a2[42] = result[41];
  a2[43] = result[40];
  a2[44] = result[47];
  a2[45] = result[46];
  a2[46] = result[45];
  a2[47] = result[44];
  a2[48] = result[51];
  a2[49] = result[50];
  a2[50] = result[49];
  a2[51] = result[48];
  a2[52] = result[55];
  a2[53] = result[54];
  a2[54] = result[53];
  a2[55] = result[52];
  a2[56] = result[59];
  a2[57] = result[58];
  a2[58] = result[57];
  a2[59] = result[56];
  a2[60] = result[63];
  a2[61] = result[62];
  a2[62] = result[61];
  a2[63] = result[60];
  a2[64] = result[67];
  a2[65] = result[66];
  a2[66] = result[65];
  a2[67] = result[64];
  for (i = 0; i < 32; ++i)
  {
    a2[4 * i + 68] = result[4 * i + 71];
    a2[4 * i + 69] = result[4 * i + 70];
    a2[4 * i + 70] = result[4 * i + 69];
    a2[4 * i + 71] = result[4 * i + 68];
    a2[2 * i + 196] = result[2 * i + 197];
    a2[2 * i + 197] = result[2 * i + 196];
  }

  return result;
}

uint64_t hash_access(_DWORD *a1, int a2, uint64_t *a3, void *a4)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  buf = 0;
  v20 = 0;
  __n_4 = a1[3];
  __n = a3[1];
  __s1 = *a3;
  v4 = __call_hash(a1, *a3, __n);
  buf = __get_buf(a1, v4, 0, 0);
  if (buf)
  {
    v19 = buf;
    *(buf + 40) |= 8u;
    v5 = *(buf + 32);
    v17 = v5 + 1;
    v16 = *v5;
    for (i = 1; ; i += 2)
    {
      while (1)
      {
        if (i >= v16)
        {
          goto LABEL_22;
        }

        if (v17[1] >= 4u)
        {
          break;
        }

        if (v17[1])
        {
          if (v17[1] < 4u)
          {
            i = __find_bigpair(v25, buf, i, __s1, __n);
            if (i > 0)
            {
              goto LABEL_30;
            }

            if (i != -2)
            {
              *(v19 + 40) &= ~8u;
              return -1;
            }

            v20 = buf;
            last_page = __find_last_page(v25, &v20);
            if (!last_page)
            {
              buf = v20;
LABEL_22:
              if (!v24 || v24 != 2 && v24 != 1)
              {
                *(v19 + 40) &= ~8u;
                return 1;
              }

              else
              {
                v9 = __addel(v25, buf, v23, v22);
                *(v19 + 40) &= ~8u;
                if (v9)
                {
                  return -1;
                }

                else
                {
                  return 0;
                }
              }
            }

            buf = __get_buf(v25, last_page, v20, 0);
            if (!buf)
            {
              *(v19 + 40) &= ~8u;
              return -1;
            }

            v8 = *(buf + 32);
            v17 = v8 + 1;
            v16 = *v8;
            i = 1;
            __n_4 = v25[3];
          }
        }

        else
        {
          buf = __get_buf(v25, *v17, buf, 0);
          if (!buf)
          {
            *(v19 + 40) &= ~8u;
            return -1;
          }

          v6 = *(buf + 32);
          v17 = v6 + 1;
          v16 = *v6;
          i = 1;
          __n_4 = v25[3];
        }
      }

      if (__n == __n_4 - *v17 && !memcmp(__s1, (*(buf + 32) + *v17), __n))
      {
        break;
      }

      __n_4 = v17[1];
      v17 += 2;
    }

LABEL_30:
    if (v24)
    {
      switch(v24)
      {
        case 1:
          if (__delpair(v25, buf, i) || __addel(v25, buf, v23, v22))
          {
            *(v19 + 40) &= ~8u;
            return -1;
          }

          break;
        case 2:
          *(v19 + 40) &= ~8u;
          return 1;
        case 3:
          if (__delpair(v25, buf, i))
          {
            return -1;
          }

          break;
        default:
          abort_report_np("%s:%s:%u: illegal action (%d)");
      }
    }

    else
    {
      v18 = *(buf + 32);
      if (*(v18 + 2 * (i + 1)) < 4u)
      {
        if (__big_return(v25, buf, i, v22, 0))
        {
          return -1;
        }
      }

      else
      {
        *v22 = *(buf + 32) + *(v18 + 2 * (i + 1));
        v22[1] = *(v18 + 2 * i) - *(v18 + 2 * (i + 1));
      }
    }

    *(v19 + 40) &= ~8u;
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t __big_insert(_DWORD *a1, uint64_t a2, char **a3, char **a4)
{
  v26 = a2;
  v10 = *(a2 + 32);
  v24 = v10;
  __src = *a3;
  v23 = a3[1];
  v8 = *a4;
  __len_4 = a4[1];
  __len_2 = v10[*v10 + 1] - 8;
  while (v23)
  {
    if (__len_2 >= v23)
    {
      v7 = v23;
    }

    else
    {
      v7 = __len_2;
    }

    v11 = v24[*v24 + 2] - v7;
    memmove(v10 + v11, __src, v7);
    v23 -= v7;
    __src += v7;
    v19 = *v24 + 1;
    v24[v19++] = v11;
    *v24 = v19;
    v24[*v24 + 1] = v11 - 2 * (v19 + 3);
    v24[*v24 + 2] = v11;
    v24[v19] = 1;
    v26 = __add_ovflpage(a1, v26);
    if (!v26)
    {
      return -1;
    }

    v20 = *v24;
    if (!v23)
    {
      __len_2a = v24[*v24 + 1];
      if (!__len_2a || (__len_2a >= __len_4 ? (v6 = __len_4) : (v6 = v24[*v24 + 1]), __len_2a == __len_4 && __len_4 == a4[1]))
      {
        v24[v20 - 2] = 2;
      }

      else
      {
        v12 = v24[*v24 + 2] - v6;
        memmove(v10 + v12, v8, v6);
        v8 += v6;
        __len_4 -= v6;
        v24[v20] = v12;
        v24[v20 - 2] = 3;
        v24[*v24 + 1] -= v6;
        v24[*v24 + 2] = v12;
      }
    }

    v24 = *(v26 + 32);
    v10 = v24;
    *(v26 + 40) |= 1u;
    __len_2 = v24[*v24 + 1] - 8;
  }

  __len_2b = v24[*v24 + 1] - 8;
  while (__len_4)
  {
    if (__len_2b >= __len_4)
    {
      v5 = __len_4;
    }

    else
    {
      v5 = __len_2b;
    }

    __len = v5;
    if (__len_2b == __len_4 && __len_4 == a4[1])
    {
      __len = v5 - 1;
    }

    v13 = v24[*v24 + 2] - __len;
    memmove(v10 + v13, v8, __len);
    __len_4 -= __len;
    v8 += __len;
    v21 = *v24 + 1;
    v24[v21] = v13;
    v22 = v21 + 1;
    *v24 = v22;
    v24[*v24 + 1] = v13 - 2 * (v22 + 3);
    v24[*v24 + 2] = v13;
    if (__len_4)
    {
      v24[v22] = 2;
      v26 = __add_ovflpage(a1, v26);
      if (!v26)
      {
        return -1;
      }

      v10 = *(v26 + 32);
      v24 = v10;
    }

    else
    {
      v24[v22] = 3;
    }

    *(v26 + 40) |= 1u;
    __len_2b = v24[*v24 + 1] - 8;
  }

  return 0;
}

uint64_t __big_delete(_DWORD *a1, unint64_t a2)
{
  buf = a2;
  v12 = 0;
  v9 = *(a2 + 32);
  v6 = 0;
  while (1)
  {
    v3 = 1;
    if (v6)
    {
      v3 = v9[2] != 3;
    }

    if (!v3)
    {
      break;
    }

    if (v9[2] == 2 || v9[2] == 3)
    {
      v6 = 1;
    }

    if (v9[2] == 3 && v9[*v9 + 1])
    {
      break;
    }

    v7 = v9[*v9 - 1];
    *(buf + 40) |= 1u;
    buf = __get_buf(a1, v7, buf, 0);
    if (v12)
    {
      __free_ovflpage(a1, v12);
    }

    v12 = buf;
    if (!buf)
    {
      return -1;
    }

    v9 = *(buf + 32);
  }

  v4 = *v9;
  v8 = v9[v4 - 1];
  v10 = *(a2 + 32);
  if (v4 <= 2)
  {
    *(a2 + 16) = 0;
  }

  else
  {
    v10[1] = v8;
    v10[2] = 0;
    *(a2 + 16) = *(buf + 16);
  }

  v5 = v4 - 2;
  *v10 = v5;
  v10[*v10 + 1] = a1[3] - 2 * (v5 + 3);
  v10[*v10 + 2] = a1[3];
  *(a2 + 40) |= 1u;
  if (buf)
  {
    __free_ovflpage(a1, buf);
  }

  if (v12 && v12 != buf)
  {
    __free_ovflpage(a1, v12);
  }

  --a1[14];
  return 0;
}

uint64_t __find_bigpair(uint64_t a1, unint64_t a2, unsigned int a3, char *a4, int a5)
{
  buf = a2;
  v13 = a3;
  v11 = *(a2 + 32);
  __n_6 = v11;
  __n_2 = a5;
  for (__n = *(a1 + 12) - *(v11 + 2 * a3); ; __n = *(a1 + 12) - *(__n_6 + 2))
  {
    v6 = 0;
    if (__n <= a5)
    {
      v6 = *(v11 + 2 * (v13 + 1)) == 1;
    }

    if (!v6)
    {
      break;
    }

    if (memcmp((__n_6 + *(v11 + 2 * v13)), a4, __n))
    {
      return -2;
    }

    a4 += __n;
    __n_2 -= __n;
    buf = __get_buf(a1, *(v11 + 2 * (v13 + 2)), buf, 0);
    if (!buf)
    {
      return -3;
    }

    __n_6 = *(buf + 32);
    v11 = __n_6;
    v13 = 1;
  }

  if (__n == __n_2 && !memcmp((__n_6 + *(v11 + 2 * v13)), a4, __n))
  {
    return v13;
  }

  else
  {
    return -2;
  }
}

uint64_t __find_last_page(uint64_t a1, unint64_t *a2)
{
  buf = *a2;
  for (i = *(*a2 + 32); ; i = *(buf + 32))
  {
    v3 = *i;
    if (i[2] == 3 && (v3 == 2 || !i[*i] || i[*i + 1]))
    {
      break;
    }

    buf = __get_buf(a1, i[v3 - 1], buf, 0);
    if (!buf)
    {
      return 0;
    }
  }

  *a2 = buf;
  if (*i <= 2u)
  {
    return 0;
  }

  else
  {
    return i[3];
  }
}

uint64_t __big_return(uint64_t a1, unint64_t a2, int a3, void *a4, unsigned int a5)
{
  buf = a2;
  __len_2 = *(a2 + 32);
  while (__len_2[a3 + 1] == 1)
  {
    buf = __get_buf(a1, __len_2[*__len_2 - 1], buf, 0);
    if (!buf)
    {
      return -1;
    }

    __len_2 = *(buf + 32);
    a3 = 1;
  }

  if (__len_2[a3 + 1] == 2)
  {
    v17 = __get_buf(a1, __len_2[*__len_2 - 1], buf, 0);
    if (!v17)
    {
      return -1;
    }

    v12 = v17;
    v6 = *(v17 + 24);
    v7 = *(*(v17 + 32) + 2);
    __len = 0;
  }

  else
  {
    if (__len_2[*__len_2 + 1])
    {
      v8 = __len_2[*__len_2];
      *a4 = __len_2 + v8;
      a4[1] = __len_2[1] - v8;
      if (a5)
      {
        if (*__len_2 == 2)
        {
          *(a1 + 304) = 0;
          ++*(a1 + 312);
          *(a1 + 316) = 1;
        }

        else
        {
          *(a1 + 304) = __get_buf(a1, __len_2[*__len_2 - 1], buf, 0);
          if (!*(a1 + 304))
          {
            return -1;
          }

          *(a1 + 316) = 1;
          if (!**(*(a1 + 304) + 32))
          {
            ++*(a1 + 312);
            *(a1 + 304) = 0;
          }
        }
      }

      return 0;
    }

    v7 = __len_2[*__len_2];
    __len = __len_2[1] - v7;
    v12 = buf;
    v6 = *(buf + 24);
    v17 = __get_buf(a1, __len_2[*__len_2 - 1], buf, 0);
    if (!v17)
    {
      return -1;
    }

    __len_2a = *(v17 + 32);
  }

  a4[1] = collect_data(a1, v17, __len, a5);
  if (a4[1] == -1)
  {
    return -1;
  }

  else if (*(v12 + 24) == v6)
  {
    memmove(*(a1 + 288), (*(v12 + 32) + v7), __len);
    *a4 = *(a1 + 288);
    return 0;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t collect_data(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v10 = *(a2 + 32);
  __len = *(a1 + 12) - v10[1];
  __len_6 = *(a2 + 24);
  if (v10[2] == 3)
  {
    v6 = a3 + __len;
    if (*(a1 + 288))
    {
      free(*(a1 + 288));
    }

    v4 = malloc_type_malloc();
    *(a1 + 288) = v4;
    if (!v4)
    {
      return -1;
    }

    if (a4)
    {
      *(a1 + 316) = 1;
      if (*v10 == 2)
      {
        *(a1 + 304) = 0;
        ++*(a1 + 312);
      }

      else
      {
        *(a1 + 304) = __get_buf(a1, v10[*v10 - 1], a2, 0);
        if (!*(a1 + 304))
        {
          return -1;
        }

        if (!**(*(a1 + 304) + 32))
        {
          ++*(a1 + 312);
          *(a1 + 304) = 0;
        }
      }
    }
  }

  else
  {
    buf = __get_buf(a1, v10[*v10 - 1], a2, 0);
    if (!buf)
    {
      return -1;
    }

    v6 = collect_data(a1, buf, (a3 + __len), a4);
    if (v6 < 1)
    {
      return -1;
    }
  }

  if (*(a2 + 24) == __len_6)
  {
    memmove((*(a1 + 288) + a3), (*(a2 + 32) + v10[1]), __len);
    return v6;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t __big_keydata(uint64_t a1, unint64_t a2, void *a3, void *a4, unsigned int a5)
{
  a3[1] = collect_key(a1, a2, 0, a4, a5);
  if (a3[1] == -1)
  {
    return -1;
  }

  else
  {
    *a3 = *(a1 + 296);
    return 0;
  }
}

uint64_t collect_key(uint64_t a1, unint64_t a2, int a3, void *a4, unsigned int a5)
{
  v8 = *(a2 + 32);
  __len = *(a1 + 12) - v8[1];
  v7 = *(a2 + 24);
  v9 = a3 + __len;
  if (v8[2] == 2 || v8[2] == 3)
  {
    if (*(a1 + 296))
    {
      free(*(a1 + 296));
    }

    v5 = malloc_type_malloc();
    *(a1 + 296) = v5;
    if (!v5)
    {
      return -1;
    }

    if (__big_return(a1, a2, 1, a4, a5))
    {
      return -1;
    }
  }

  else
  {
    buf = __get_buf(a1, v8[*v8 - 1], a2, 0);
    if (!buf)
    {
      return -1;
    }

    v9 = collect_key(a1, buf, v9, a4, a5);
    if (v9 < 1)
    {
      return -1;
    }
  }

  if (*(a2 + 24) == v7)
  {
    memmove((*(a1 + 296) + a3), (*(a2 + 32) + v8[1]), __len);
    return v9;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t __big_split(_DWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, uint64_t a7)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v24 = a4;
  if (__big_keydata(a1, a4, &v21, v20, 0))
  {
    return -1;
  }

  else
  {
    v7 = __call_hash(v31, v21, v22);
    v19 = v7 != v26;
    last_page = __find_last_page(v31, &v28);
    *(v25 + 24) = last_page;
    if (last_page)
    {
      buf = __get_buf(v31, *(v25 + 24), v28, 0);
      *(v25 + 16) = buf;
      if (!buf)
      {
        return -1;
      }
    }

    else
    {
      *(v25 + 16) = 0;
    }

    if (v19)
    {
      v23 = v29;
    }

    else
    {
      v23 = v30;
    }

    *(v23 + 40) |= 1u;
    *(v23 + 16) = v24;
    v11 = *(v23 + 32);
    v13 = v11[*v11 + 2];
    v17 = v11[*v11 + 1];
    v15 = *v11 + 1;
    v11[v15] = v27;
    v11[(v15 + 1)] = 0;
    *v11 = v15 + 1;
    v11[*v11 + 2] = v13;
    v11[*v11 + 1] = v17 - 4;
    *v25 = v29;
    *(v25 + 8) = v30;
    v12 = *(v28 + 32);
    *(v28 + 40) |= 1u;
    if (*v12 <= 2u)
    {
      v23 = v28;
    }

    else
    {
      v16 = v12[4];
      v18 = v12[*v12 + 1];
      v14 = v12[*v12 + 2];
      *v12 -= 2;
      v12[*v12 + 1] = v18 + 4;
      v12[*v12 + 2] = v14;
      v23 = __add_ovflpage(v31, v28);
      if (!v23)
      {
        return -1;
      }

      v12[4] = v16;
    }

    if (v19)
    {
      *v25 = v23;
    }

    else
    {
      *(v25 + 8) = v23;
    }

    return 0;
  }
}

unint64_t __get_buf(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 0;
  if (a3)
  {
    v10 = *(a3 + 16);
    if (!v10 || *(v10 + 24) != a2)
    {
      v10 = 0;
    }

    if (!a4)
    {
      v8 = 2;
    }
  }

  else
  {
    v7 = a2 & (*(a1 + 24) - 1);
    v6 = *(*(a1 + 648) + 8 * (a2 >> *(a1 + 28)));
    v10 = *(v6 + 8 * v7) & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *(v6 + 8 * v7) & 2;
    v5 = 1;
    if (!v9)
    {
      v5 = *(a1 + 324) == 0;
    }

    v8 = v5;
  }

  if (v10)
  {
    *(*v10 + 8) = *(v10 + 8);
    **(v10 + 8) = *v10;
    *(v10 + 8) = *(a1 + 608);
    *v10 = a1 + 600;
    *(a1 + 608) = v10;
    **(v10 + 8) = v10;
    return v10;
  }

  v10 = newbuf(a1, a2, a3);
  if (v10 && !__get_page(a1, *(v10 + 32), a2, a3 == 0, v8, 0))
  {
    if (!a3)
    {
      *(v6 + 8 * v7) = v10 | v9;
    }

    return v10;
  }

  return 0;
}

unsigned int *newbuf(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = 0;
  v14 = *(a1 + 600);
  if (v14 == *(a1 + 304))
  {
    *(*v14 + 8) = *(v14 + 1);
    **(v14 + 1) = *v14;
    *(v14 + 1) = *(a1 + 608);
    *v14 = a1 + 600;
    *(a1 + 608) = v14;
    **(v14 + 1) = v14;
    v14 = *(a1 + 600);
  }

  if (!*(a1 + 596) && a3 && *(v14 + 2))
  {
    for (i = *(v14 + 2); i; i = *(i + 16))
    {
      if (i == a3)
      {
        ++*(a1 + 596);
        break;
      }
    }
  }

  if (*(a1 + 596) || (v14[10] & 8) != 0 || v14 == *(a1 + 304))
  {
    v14 = malloc_type_calloc();
    if (!v14)
    {
      return 0;
    }

    v3 = *(a1 + 12);
    v4 = malloc_type_calloc();
    *(v14 + 4) = v4;
    if (!v4)
    {
      free(v14);
      return 0;
    }

    if (*(a1 + 596))
    {
      --*(a1 + 596);
    }
  }

  else
  {
    *(*v14 + 8) = *(v14 + 1);
    **(v14 + 1) = *v14;
    if (v14[6] || (v14[10] & 4) != 0)
    {
      v7 = *(v14 + 4);
      if (*v7)
      {
        v9 = v7[*v7 - 1];
      }

      if ((v14[10] & 1) != 0 && __put_page(a1, *(v14 + 4), v14[6], v14[10] & 4, 0))
      {
        return 0;
      }

      if ((v14[10] & 4) != 0)
      {
        v10 = v14[6] & (*(a1 + 24) - 1);
        v11 = *(*(a1 + 648) + 8 * (v14[6] >> *(a1 + 28)));
        if (*(a1 + 324) && ((v14[10] & 1) != 0 || (*(v11 + 8 * v10) & 2) != 0))
        {
          *(v11 + 8 * v10) = 2;
        }

        else
        {
          *(v11 + 8 * v10) = 0;
        }
      }

      v13 = v14;
      while (*(v13 + 2))
      {
        v12 = *(v13 + 2);
        *(v13 + 2) = 0;
        v13 = v12;
        if ((*(v12 + 40) & 4) != 0 || v9 != *(v12 + 24))
        {
          break;
        }

        v8 = *(v12 + 32);
        if (*v8)
        {
          v9 = v8[*v8 - 1];
        }

        if ((*(v12 + 40) & 1) != 0 && __put_page(a1, *(v12 + 32), *(v12 + 24), 0, 0))
        {
          return 0;
        }

        *(v12 + 24) = 0;
        *(v12 + 40) = 0;
        *(*v12 + 8) = *(v12 + 8);
        **(v12 + 8) = *v12;
        *(v12 + 8) = *(*(a1 + 600) + 8);
        *v12 = *(a1 + 600);
        *(*(a1 + 600) + 8) = v12;
        **(v12 + 8) = v12;
      }
    }
  }

  v14[6] = a2;
  *(v14 + 2) = 0;
  if (a3)
  {
    *(a3 + 16) = v14;
    *(v14 + 40) = 0;
  }

  else
  {
    *(v14 + 40) = 4;
  }

  *(v14 + 1) = *(a1 + 608);
  *v14 = a1 + 600;
  *(a1 + 608) = v14;
  **(v14 + 1) = v14;
  return v14;
}

uint64_t __buf_init(uint64_t result, int a2)
{
  if ((a2 + *(result + 12) - 1) >> *(result + 16) <= 6)
  {
    v2 = 6;
  }

  else
  {
    v2 = (a2 + *(result + 12) - 1) >> *(result + 16);
  }

  *(result + 596) = v2;
  *(result + 608) = result + 600;
  *(result + 600) = result + 600;
  return result;
}

uint64_t __buf_free(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 600))
  {
    v4 = *(a1 + 600);
    while (v4 != (a1 + 600))
    {
      if ((*(v4 + 6) || (*(v4 + 40) & 4) != 0) && a3 && (*(v4 + 40) & 1) != 0 && __put_page(a1, *(v4 + 4), *(v4 + 6), *(v4 + 40) & 4, 0))
      {
        return -1;
      }

      if (a2)
      {
        if (*(v4 + 4))
        {
          bzero(*(v4 + 4), *(a1 + 12));
          free(*(v4 + 4));
        }

        *(*v4 + 8) = *(v4 + 1);
        **(v4 + 1) = *v4;
        free(v4);
        v4 = *(a1 + 600);
      }

      else
      {
        v4 = *v4;
      }
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t __reclaim_buf(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  *(*a2 + 8) = *(a2 + 8);
  **(a2 + 8) = *a2;
  *(a2 + 8) = *(*(result + 600) + 8);
  *a2 = *(result + 600);
  *(*(result + 600) + 8) = a2;
  **(a2 + 8) = a2;
  return result;
}

uint64_t hash4(unsigned __int8 *a1, uint64_t a2)
{
  v12 = 0;
  if (a2)
  {
    v13 = (a2 + 7) >> 3;
    v11 = a2 & 7;
    if ((a2 & 7) == 0)
    {
      goto LABEL_11;
    }

    switch(v11)
    {
      case 1:
        goto LABEL_18;
      case 2:
        goto LABEL_17;
      case 3:
        goto LABEL_16;
      case 4:
        goto LABEL_15;
      case 5:
        goto LABEL_14;
      case 6:
        goto LABEL_13;
      case 7:
        while (1)
        {
          v3 = a1++;
          v12 = 33 * v12 + *v3;
LABEL_13:
          v4 = a1++;
          v12 = 33 * v12 + *v4;
LABEL_14:
          v5 = a1++;
          v12 = 33 * v12 + *v5;
LABEL_15:
          v6 = a1++;
          v12 = 33 * v12 + *v6;
LABEL_16:
          v7 = a1++;
          v12 = 33 * v12 + *v7;
LABEL_17:
          v8 = a1++;
          v12 = 33 * v12 + *v8;
LABEL_18:
          v9 = a1++;
          v12 = 33 * v12 + *v9;
          if (!--v13)
          {
            break;
          }

LABEL_11:
          v2 = a1++;
          v12 = 33 * v12 + *v2;
        }

        break;
    }
  }

  return v12;
}

uint64_t __log2(unsigned int a1)
{
  v2 = 1;
  v3 = 0;
  while (v2 < a1)
  {
    v2 *= 2;
    ++v3;
  }

  return v3;
}

uint64_t __delpair(_DWORD *a1, unint64_t a2, int a3)
{
  v8 = *(a2 + 32);
  v5 = *v8;
  if (v8[a3 + 1] >= 4u)
  {
    if (a3 == 1)
    {
      v7 = a1[3];
    }

    else
    {
      v7 = v8[a3 - 1];
    }

    v6 = v7 - v8[a3 + 1];
    if (a3 != v5 - 1)
    {
      memmove((*(a2 + 32) + v8[*v8 + 2] + v6), (*(a2 + 32) + v8[*v8 + 2]), v8[a3 + 1] - v8[*v8 + 2]);
      for (i = a3 + 2; i <= v5; i += 2)
      {
        if (v8[i + 1])
        {
          v8[i - 2] = v8[i] + v6;
          v8[i - 1] = v8[i + 1] + v6;
        }

        else
        {
          v8[i - 2] = v8[i];
          v8[i - 1] = v8[i + 1];
        }
      }

      if (a3 == a1[79])
      {
        a1[79] -= 2;
      }
    }

    v8[v5] = v8[*v8 + 2] + v6;
    v8[v5 - 1] = v8[v5 + 1] + v6 + 4;
    *v8 = v5 - 2;
    --a1[14];
    *(a2 + 40) |= 1u;
    return 0;
  }

  else
  {
    return __big_delete(a1, a2);
  }
}

uint64_t __split_page(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = 0;
  buf = 0;
  v18 = 0;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v10 = a1[3];
  v9 = v10;
  buf = __get_buf(a1, a2, 0, 0);
  if (buf)
  {
    v20 = __get_buf(v23, v21, 0, 0);
    if (v20)
    {
      *(buf + 40) |= 9u;
      *(v20 + 40) |= 9u;
      v7 = *(buf + 32);
      v18 = v7;
      v17 = *(v20 + 32);
      v8 = 0;
      v12 = 1;
      v11 = 1;
      while (v12 < *v18)
      {
        if (v18[v12 + 1] < 4u)
        {
          v3 = ugly_split(v23, v22, buf, v20, v10, v8);
          *(buf + 40) &= ~8u;
          *(v20 + 40) &= ~8u;
          return v3;
        }

        v15 = v7 + v18[v12];
        v4 = v9 - v18[v12];
        v16 = v4;
        v5 = __call_hash(v23, v15, v4);
        if (v5 == v22)
        {
          if (v10 == v9)
          {
            v10 = v18[v12 + 1];
          }

          else
          {
            v10 = v18[v12 + 1] + v10 - v9;
            memmove(v7 + v10, v7 + v18[v12 + 1], v9 - v18[v12 + 1]);
            v18[v11] = v10 + v18[v12] - v18[v12 + 1];
            v18[v11 + 1] = v10;
          }

          v11 += 2;
        }

        else
        {
          v13 = v7 + v18[v12 + 1];
          v14 = v18[v12] - v18[v12 + 1];
          putpair(v17, &v15, &v13);
          v8 += 2;
        }

        v9 = v18[v12 + 1];
        v12 += 2;
      }

      *v18 -= v8;
      v18[*v18 + 1] = v10 - 2 * (*v18 + 3);
      v18[*v18 + 2] = v10;
      *(buf + 40) &= ~8u;
      *(v20 + 40) &= ~8u;
      return 0;
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

uint64_t ugly_split(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0u;
  v14 = 0u;
  buf = a3;
  v22 = *(a3 + 32);
  v21 = *(a4 + 32);
  v20 = *(a3 + 32);
  v19 = 0;
  v9 = a5;
  i = *v22 - 1;
  while (i < *v22)
  {
    if (v22[2] < 4u && v22[2])
    {
      if (__big_split(v29, v27, v26, buf, *(buf + 24), v28, &v13))
      {
        return -1;
      }

      v27 = *(&v13 + 1);
      if (!*(&v13 + 1))
      {
        return -1;
      }

      v20 = *(v27 + 32);
      v26 = v13;
      if (!v13)
      {
        return -1;
      }

      v21 = *(v26 + 32);
      buf = v14;
      if (!v14)
      {
        return 0;
      }

      v22 = *(buf + 32);
      v19 = v14;
    }

    else if (!v22[i + 1])
    {
      v10 = v22[i];
      *v22 -= v24 + 2;
      v22[*v22 + 1] = v9 - 2 * (*v22 + 3);
      v22[*v22 + 2] = v9;
      buf = __get_buf(v29, v10, buf, 0);
      if (!buf)
      {
        return -1;
      }

      v22 = *(buf + 32);
      v9 = v29[3];
      v24 = 0;
      if (v19)
      {
        __free_ovflpage(v29, v19);
      }

      v19 = buf;
    }

    v11 = v29[3];
    for (i = 1; ; i += 2)
    {
      v8 = 0;
      if (i < *v22)
      {
        v8 = v22[i + 1] >= 4u;
      }

      if (!v8)
      {
        break;
      }

      v17 = v22 + v22[i];
      v18 = v11 - v22[i];
      v15 = v22 + v22[i + 1];
      v16 = v22[i] - v22[i + 1];
      v11 = v22[i + 1];
      v6 = __call_hash(v29, v17, v18);
      if (v6 == v28)
      {
        if (v20[2] < 4u || v18 + 4 + v16 + 4 > v20[*v20 + 1])
        {
          v27 = __add_ovflpage(v29, v27);
          if (!v27)
          {
            return -1;
          }

          v20 = *(v27 + 32);
          putpair(v20, &v17, &v15);
        }

        else
        {
          putpair(v20, &v17, &v15);
        }

        *(v27 + 40) |= 1u;
      }

      else
      {
        if (v21[2] < 4u || v18 + 4 + v16 + 4 > v21[*v21 + 1])
        {
          v26 = __add_ovflpage(v29, v26);
          if (!v26)
          {
            return -1;
          }

          v21 = *(v26 + 32);
          putpair(v21, &v17, &v15);
        }

        else
        {
          putpair(v21, &v17, &v15);
        }

        *(v26 + 40) |= 1u;
      }
    }
  }

  if (v19)
  {
    __free_ovflpage(v29, v19);
  }

  return 0;
}

uint64_t putpair(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = a1[*a1 + 2] - *(a2 + 8);
  memmove(a1 + v5, *a2, *(a2 + 8));
  a1[++v7] = v5;
  v6 = v5 - *(a3 + 8);
  memmove(a1 + v6, *a3, *(a3 + 8));
  v3 = v7++ + 1;
  result = v3;
  a1[v3] = v6;
  *a1 = v7;
  a1[v7 + 1] = v6 - 2 * (v7 + 3);
  a1[v7 + 2] = v6;
  return result;
}

uint64_t __addel(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  buf = a2;
  v9 = *(a2 + 32);
  v7 = 0;
  while (1)
  {
    v6 = 0;
    if (*v9)
    {
      v5 = 1;
      if (v9[2] >= 4u)
      {
        v5 = v9[*v9] < 4u;
      }

      v6 = v5;
    }

    if (!v6 || v9[2] == 3 && *v9 == 2)
    {
      break;
    }

    if (v9[2] < 4u && v9[*v9])
    {
      buf = __get_buf(a1, v9[*v9 - 1], buf, 0);
      if (!buf)
      {
        return -1;
      }

      v9 = *(buf + 32);
    }

    else
    {
      if (v9[*v9])
      {
        break;
      }

      if (v9[2] >= 4u && v9[*v9 + 1] >= (*(a3 + 8) + 4 + *(a4 + 8)))
      {
        squeeze_key(v9, a3, a4);
        goto LABEL_31;
      }

      buf = __get_buf(a1, v9[*v9 - 1], buf, 0);
      if (!buf)
      {
        return -1;
      }

      v9 = *(buf + 32);
    }
  }

  if (v9[2] < 4u || *(a3 + 8) + 4 + *(a4 + 8) + 4 > v9[*v9 + 1])
  {
    v7 = 1;
    buf = __add_ovflpage(a1, buf);
    if (!buf)
    {
      return -1;
    }

    v8 = *(buf + 32);
    if (v8[2] < 4u || *(a3 + 8) + 4 + *(a4 + 8) + 4 > v8[*v8 + 1])
    {
      if (__big_insert(a1, buf, a3, a4))
      {
        return -1;
      }
    }

    else
    {
      putpair(v8, a3, a4);
    }
  }

  else
  {
    putpair(*(buf + 32), a3, a4);
  }

LABEL_31:
  *(buf + 40) |= 1u;
  ++a1[14];
  if (v7 || a1[14] / (a1[10] + 1) > a1[13])
  {
    return __expand_table(a1);
  }

  else
  {
    return 0;
  }
}

void *squeeze_key(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = a1[*a1 + 1];
  v4 = a1[*a1 - 1];
  v5 = a1[*a1 + 2] - *(a2 + 8);
  a1[*a1 - 1] = v5;
  memmove(a1 + v5, *a2, *(a2 + 8));
  v6 = v5 - *(a3 + 8);
  a1[v7] = v6;
  result = memmove(a1 + v6, *a3, *(a3 + 8));
  *a1 = v7 + 2;
  a1[v7 + 1] = v4;
  a1[v7 + 2] = 0;
  a1[*a1 + 1] = v8 - (*(a2 + 8) + 4 + *(a3 + 8));
  a1[*a1 + 2] = v6;
  return result;
}

uint64_t __add_ovflpage(_DWORD *a1, uint64_t a2)
{
  v6 = *(a2 + 32);
  if (a1[13] == 0x10000)
  {
    a1[13] = *v6 >> 1;
    if (a1[13] < 4u)
    {
      a1[13] = 4;
    }
  }

  *(a2 + 40) |= 1u;
  v4 = overflow_page(a1);
  if (!v4)
  {
    return 0;
  }

  buf = __get_buf(a1, v4, a2, 1);
  *(a2 + 16) = buf;
  if (!buf)
  {
    return 0;
  }

  *(*(a2 + 16) + 40) |= 1u;
  v5 = *v6;
  v6[v5 + 4] = v6[*v6 + 2];
  v6[v5 + 3] = v6[*v6 + 1] - 4;
  v6[v5 + 1] = v4;
  v6[v5 + 2] = 0;
  *v6 = v5 + 2;
  return *(a2 + 16);
}

uint64_t overflow_page(_DWORD *a1)
{
  *&v22[8] = 0;
  v20 = a1[8];
  *v22 = a1[v20 + 17];
  v13 = (*v22 - 1) >> (a1[4] + 3);
  v15 = (*v22 - 1) & (8 * a1[3] - 1);
  v1 = (a1[4] + 3);
  v16 = a1[9] >> (*(a1 + 16) + 3);
  v11 = v16;
LABEL_2:
  if (v11 > v13)
  {
    a1[9] = a1[v20 + 17]++;
    v8 = a1[v20 + 17];
    if (v20)
    {
      v7 = a1[v20 + 16];
    }

    else
    {
      v7 = 0;
    }

    v21 = v8 - v7;
    if (v8 - v7 > 2047)
    {
      if (++v20 >= 32)
      {
        goto LABEL_45;
      }

      a1[8] = v20;
      a1[v20 + 17] = a1[v20 + 16]--;
      v21 = 1;
    }

    if (v15 == 8 * a1[3] - 1)
    {
      v14 = v13 + 1;
      if (v14 >= 32)
      {
        goto LABEL_45;
      }

      if (__ibitmap(a1, v21 + (v20 << 11), 1, v14))
      {
        return 0;
      }

      ++a1[v20 + 17];
      if (++v21 > 2047)
      {
        if (++v20 >= 32)
        {
LABEL_45:
          write_NOCANCEL();
          *__error() = 27;
          return 0;
        }

        a1[8] = v20;
        a1[v20 + 17] = a1[v20 + 16]--;
        LOWORD(v21) = 0;
      }
    }

    else
    {
      *(*&v22[4] + 4 * ((v15 + 1) / 32)) |= 1 << ((v15 + 1) % 32);
    }

    return (v21 + (v20 << 11));
  }

  *&v22[4] = *&a1[2 * v11 + 84];
  if (*&v22[4] || (*&v22[4] = fetch_bitmap(a1, v11)) != 0)
  {
    if (v11 == v13)
    {
      v10 = v15;
    }

    else
    {
      v10 = 8 * a1[3] - 1;
    }

    if (v11 == v16)
    {
      v17 = a1[9] & (8 * a1[3] - 1);
      v9 = v17 / 32;
      v18 = v17 & 0xFFFFFFE0;
    }

    else
    {
      v18 = 0;
      v9 = 0;
    }

    while (1)
    {
      if (v18 > v10)
      {
        ++v11;
        goto LABEL_2;
      }

      if (*(*&v22[4] + 4 * v9) != -1)
      {
        break;
      }

      ++v9;
      v18 += 32;
    }

    v6 = v18;
    free = first_free(*(*&v22[4] + 4 * v9));
    *(*&v22[4] + 4 * ((v18 + free) / 32)) |= 1 << ((v18 + free) % 32);
    v19 = v18 + free + 1 + v11 * 8 * a1[3];
    if (v6 + free + 1 + v11 * 8 * a1[3] >= a1[9])
    {
      a1[9] = v19 - 1;
    }

    for (i = 0; ; ++i)
    {
      v5 = 0;
      if (i < v20)
      {
        v5 = v19 > a1[i + 17];
      }

      if (!v5)
      {
        break;
      }
    }

    if (i)
    {
      v4 = v19 - a1[i + 16];
    }

    else
    {
      v4 = v19;
    }

    if (v4 < 2047)
    {
      return (v4 + (i << 11));
    }

    goto LABEL_45;
  }

  return 0;
}

uint64_t __get_page(_DWORD *a1, unsigned __int16 *a2, unsigned int a3, int a4, int a5, int a6)
{
  v20 = a1[3];
  if (a1[71] != -1 && a5)
  {
    if (a4)
    {
      v11 = a3 + a1[15];
      if (a3)
      {
        v10 = a1[__log2(a3 + 1) + 16];
      }
    }

    else
    {
      v9 = (1 << (a3 >> 11)) - 1 + a1[15];
      if (1 << (a3 >> 11) != 1)
      {
        v8 = a1[__log2(1 << (a3 >> 11)) + 16];
      }
    }

    v6 = a1[4];
    v19 = pread_NOCANCEL();
    if (v19 == -1)
    {
      return -1;
    }

    else
    {
      if (v19)
      {
        if (v19 != v20)
        {
          *__error() = 79;
          return -1;
        }
      }

      else
      {
        *a2 = 0;
      }

      if (a6 || *a2)
      {
        if (a1[2] != 1234)
        {
          if (a6)
          {
            v15 = a1[3] >> 2;
            for (i = 0; i < v15; ++i)
            {
              v14 = *&a2[2 * i];
              LOBYTE(a2[2 * i]) = HIBYTE(v14);
              HIBYTE(a2[2 * i]) = BYTE2(v14);
              LOBYTE(a2[2 * i + 1]) = BYTE1(v14);
              HIBYTE(a2[2 * i + 1]) = v14;
            }
          }

          else
          {
            v13 = *a2;
            *a2 = HIBYTE(*a2);
            *(a2 + 1) = v13;
            v16 = *a2 + 2;
            for (j = 1; j <= v16; ++j)
            {
              v12 = a2[j];
              LOBYTE(a2[j]) = HIBYTE(v12);
              HIBYTE(a2[j]) = v12;
            }
          }
        }
      }

      else
      {
        *a2 = 0;
        a2[1] = a1[3] - 6;
        a2[2] = a1[3];
      }

      return 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = a1[3] - 6;
    a2[2] = a1[3];
    return 0;
  }
}

uint64_t __put_page(_DWORD *a1, unsigned __int16 *a2, unsigned int a3, int a4, int a5)
{
  v19 = 0;
  v21 = a1[3];
  if (a1[71] == -1 && open_temp(a1))
  {
    return -1;
  }

  else
  {
    v22 = a1[71];
    if (a1[2] != 1234)
    {
      if (a5)
      {
        v19 = a1[3] >> 2;
        for (i = 0; i < v19; ++i)
        {
          v16 = *&a2[2 * i];
          LOBYTE(a2[2 * i]) = HIBYTE(v16);
          HIBYTE(a2[2 * i]) = BYTE2(v16);
          LOBYTE(a2[2 * i + 1]) = BYTE1(v16);
          HIBYTE(a2[2 * i + 1]) = v16;
        }
      }

      else
      {
        v19 = *a2 + 2;
        for (j = 0; j <= v19; ++j)
        {
          v15 = a2[j];
          LOBYTE(a2[j]) = HIBYTE(v15);
          HIBYTE(a2[j]) = v15;
        }
      }
    }

    if (a4)
    {
      v10 = a3 + a1[15];
      if (a3)
      {
        v9 = a1[__log2(a3 + 1) + 16];
      }
    }

    else
    {
      v8 = (1 << (a3 >> 11)) - 1 + a1[15];
      if (1 << (a3 >> 11) != 1)
      {
        v7 = a1[__log2(1 << (a3 >> 11)) + 16];
      }
    }

    v5 = a1[4];
    v20 = pwrite_NOCANCEL();
    if (v20 == -1)
    {
      return -1;
    }

    else if (v20 == v21)
    {
      if (a1[2] != 1234)
      {
        if (a5)
        {
          for (k = 0; k < v19; ++k)
          {
            v12 = *&a2[2 * k];
            LOBYTE(a2[2 * k]) = HIBYTE(v12);
            HIBYTE(a2[2 * k]) = BYTE2(v12);
            LOBYTE(a2[2 * k + 1]) = BYTE1(v12);
            HIBYTE(a2[2 * k + 1]) = v12;
          }
        }

        else
        {
          for (m = 0; m <= v19; ++m)
          {
            v11 = a2[m];
            LOBYTE(a2[m]) = HIBYTE(v11);
            HIBYTE(a2[m]) = v11;
          }
        }
      }

      return 0;
    }

    else
    {
      *__error() = 79;
      return -1;
    }
  }
}

uint64_t open_temp(uint64_t a1)
{
  v9 = a1;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (!issetugid())
  {
    v6 = getenv("TMPDIR");
  }

  if (v6)
  {
    v1 = snprintf(__str, 0x400uLL, "%s/_hash.XXXXXX", v6);
  }

  else
  {
    v1 = snprintf(__str, 0x400uLL, "%s/_hash.XXXXXX", "/tmp");
  }

  if (v1 < 0 || v1 >= 0x400)
  {
    *__error() = 63;
    return -1;
  }

  else
  {
    v8 = -1;
    sigprocmask(1, &v8, &v7);
    v2 = mkstemp(__str);
    *(v9 + 284) = v2;
    if (v2 != -1)
    {
      unlink(__str);
      v3 = *(v9 + 284);
      fcntl_NOCANCEL();
    }

    sigprocmask(3, &v7, 0);
    if (*(v9 + 284) == -1)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __ibitmap(uint64_t a1, __int16 a2, int a3, int a4)
{
  v4 = *(a1 + 12);
  v7 = malloc_type_malloc();
  if (v7)
  {
    ++*(a1 + 592);
    v6 = ((a3 - 1) >> 5) + 1;
    bzero(v7, 4 * v6);
    memset(&v7[v6], -1, *(a1 + 12) - 4 * v6);
    v7[v6 - 1] = -1 << (a3 & 0x1F);
    *v7 |= 1u;
    *(a1 + 196 + 2 * a4) = a2;
    *(a1 + 336 + 8 * a4) = v7;
    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t __free_ovflpage(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 24) >> 11;
  if (v4)
  {
    v3 = a1[v4 + 16];
  }

  else
  {
    v3 = 0;
  }

  v7 = v3 + (*(a2 + 24) & 0x7FF) - 1;
  if (v7 < a1[9])
  {
    a1[9] = v7;
  }

  v6 = v7 >> (a1[4] + 3);
  v5 = v7 & (8 * a1[3] - 1);
  bitmap = *&a1[2 * v6 + 84];
  if (!bitmap)
  {
    bitmap = fetch_bitmap(a1, v6);
  }

  *(bitmap + 4 * (v5 / 32)) &= ~(1 << (v5 % 32));
  return __reclaim_buf(a1, a2);
}

uint64_t fetch_bitmap(_DWORD *a1, int a2)
{
  if (a2 >= a1[148])
  {
    return 0;
  }

  v2 = a1[3];
  v3 = malloc_type_malloc();
  *&a1[2 * a2 + 84] = v3;
  if (!v3)
  {
    return 0;
  }

  if (!__get_page(a1, *&a1[2 * a2 + 84], *(a1 + a2 + 98), 0, 1, 1))
  {
    return *&a1[2 * a2 + 84];
  }

  free(*&a1[2 * a2 + 84]);
  return 0;
}

uint64_t first_free(int a1)
{
  v2 = 1;
  for (i = 0; i < 0x20; ++i)
  {
    if ((v2 & a1) == 0)
    {
      return i;
    }

    v2 *= 2;
  }

  return i;
}

DBM *__cdecl dbm_open(const char *a1, int a2, mode_t a3)
{
  __s = a1;
  v7 = a2;
  v6 = a3;
  v4[0] = 0x2800001000;
  v4[1] = 1;
  v5 = 0uLL;
  if (strlen(a1) < 0x3FD)
  {
    strcpy(__dst, __s);
    strcat(__dst, ".db");
    return __hash_open(__dst, v7, v6, v4, 0);
  }

  else
  {
    *__error() = 63;
    return 0;
  }
}

datum dbm_fetch(DBM *a1, datum a2)
{
  v9 = a2;
  v8 = a1;
  v10 = 0;
  v11 = 0;
  v7 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a2;
  v7 = (*&a1->__opaque[24])(a1, &v6, &v4, 0);
  if (v7)
  {
    v4 = 0;
    v5 = 0;
  }

  v2 = v4;
  v3 = v5;
  result.dsize = v3;
  result.dptr = v2;
  return result;
}

datum dbm_firstkey(DBM *a1)
{
  v8 = a1;
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v5 = 0;
  v6 = 0;
  v4[0] = 0;
  v4[1] = 0;
  v3 = *&a1->__opaque[56];
  v7 = (*&a1->__opaque[40])(a1, &v5, v4, 3);
  if (v7)
  {
    v5 = 0;
    *(v3 + 656) = *(v3 + 656) & 0xFE | 1;
  }

  else
  {
    *(v3 + 656) &= ~1u;
  }

  v1 = v5;
  v2 = v6;
  result.dsize = v2;
  result.dptr = v1;
  return result;
}

datum dbm_nextkey(DBM *a1)
{
  v8 = a1;
  v7 = 1;
  v9 = 0;
  v10 = 0;
  v5 = 0;
  v6 = 0;
  v4[0] = 0;
  v4[1] = 0;
  v3 = *&a1->__opaque[56];
  if (*(v3 + 656))
  {
    v5 = 0;
  }

  else
  {
    v7 = (*&v8->__opaque[40])(v8, &v5, v4, 7);
    if (v7)
    {
      v5 = 0;
      *(v3 + 656) = *(v3 + 656) & 0xFE | 1;
    }
  }

  v1 = v5;
  v2 = v6;
  result.dsize = v2;
  result.dptr = v1;
  return result;
}

int dbm_delete(DBM *a1, datum a2)
{
  v6 = a2;
  v5 = a1;
  v4 = 0;
  v3 = a2;
  v4 = (*&a1->__opaque[16])(a1, &v3, 0);
  if (v4)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int dbm_store(DBM *a1, datum a2, datum a3, int a4)
{
  v11 = a2;
  v10 = a3;
  v9 = a1;
  v8 = a4;
  v7 = a2;
  v6 = a3;
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 8;
  }

  return (*&a1->__opaque[32])(a1, &v7, &v6, v4);
}

int dbm_clearerr(DBM *a1)
{
  v1 = *&a1->__opaque[56];
  result = 0;
  *(v1 + 320) = 0;
  return result;
}

MPOOL *__cdecl mpool_open(void *a1, int a2, pgno_t a3, pgno_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  memset(&__b, 0, sizeof(__b));
  if (fstat(v10, &__b))
  {
    return 0;
  }

  if ((__b.st_mode & 0xF000) == 0x8000)
  {
    v6 = malloc_type_calloc();
    if (v6)
    {
      v6->lqh.tqh_first = 0;
      v6->lqh.tqh_last = &v6->lqh.tqh_first;
      for (i = 0; i < 128; ++i)
      {
        v6->hqh[i].tqh_first = 0;
        v6->hqh[i].tqh_last = &v6->hqh[i].tqh_first;
      }

      v6->maxcache = v8;
      v6->npages = __b.st_size / v9;
      v6->pagesize = v9;
      v6->fd = v10;
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *__error() = 29;
    return 0;
  }
}

void mpool_filter(MPOOL *a1, void (__cdecl *a2)(void *, pgno_t, void *), void (__cdecl *a3)(void *, pgno_t, void *), void *a4)
{
  a1->pgin = a2;
  a1->pgout = a3;
  a1->pgcookie = a4;
}

void *__cdecl mpool_new(MPOOL *a1, pgno_t *a2)
{
  if (a1->npages == -1)
  {
    fprintf(__stderrp, "mpool_new: page allocation overflow.\n");
    abort_report_np("%s:%s:%u: page allocation overflow");
  }

  v5 = mpool_bkt(a1);
  if (!v5)
  {
    return 0;
  }

  npages = a1->npages;
  a1->npages = npages + 1;
  v5->pgno = npages;
  *a2 = npages;
  v5->flags = 2;
  v6 = &a1->hqh[(v5->pgno - 1) % 0x80];
  tqh_first = v6->tqh_first;
  v5->hq.tqe_next = v6->tqh_first;
  if (tqh_first)
  {
    v6->tqh_first->hq.tqe_prev = &v5->hq.tqe_next;
  }

  else
  {
    v6->tqh_last = &v5->hq.tqe_next;
  }

  v6->tqh_first = v5;
  v5->hq.tqe_prev = &v6->tqh_first;
  v5->q.tqe_next = 0;
  v5->q.tqe_prev = a1->lqh.tqh_last;
  *a1->lqh.tqh_last = v5;
  a1->lqh.tqh_last = &v5->q.tqe_next;
  return v5->page;
}

uint64_t mpool_bkt(uint64_t a1)
{
  if (*(a1 + 2064) >= *(a1 + 2068))
  {
    for (i = *a1; i; i = *(i + 16))
    {
      if ((*(i + 44) & 2) == 0)
      {
        if ((*(i + 44) & 1) != 0 && mpool_write(a1, i) == -1)
        {
          return 0;
        }

        if (*i)
        {
          *(*i + 8) = *(i + 8);
        }

        else
        {
          *(a1 + 16 + 16 * ((*(i + 40) - 1) % 0x80u) + 8) = *(i + 8);
        }

        **(i + 8) = *i;
        if (*(i + 16))
        {
          *(*(i + 16) + 24) = *(i + 24);
        }

        else
        {
          *(a1 + 8) = *(i + 24);
        }

        **(i + 24) = *(i + 16);
        return i;
      }
    }
  }

  v1 = *(a1 + 2080);
  v4 = malloc_type_calloc();
  if (!v4)
  {
    return 0;
  }

  *(v4 + 32) = v4 + 48;
  ++*(a1 + 2064);
  return v4;
}

void *__cdecl mpool_get(MPOOL *a1, pgno_t a2, unsigned int a3)
{
  if (a2 < a1->npages)
  {
    v11 = mpool_look(a1, a2);
    if (v11)
    {
      v13 = &a1->hqh[(v11->pgno - 1) % 0x80];
      if (v11->hq.tqe_next)
      {
        v11->hq.tqe_next->hq.tqe_prev = v11->hq.tqe_prev;
      }

      else
      {
        v13->tqh_last = v11->hq.tqe_prev;
      }

      *v11->hq.tqe_prev = v11->hq.tqe_next;
      tqh_first = v13->tqh_first;
      v11->hq.tqe_next = v13->tqh_first;
      if (tqh_first)
      {
        v13->tqh_first->hq.tqe_prev = &v11->hq.tqe_next;
      }

      else
      {
        v13->tqh_last = &v11->hq.tqe_next;
      }

      v13->tqh_first = v11;
      v11->hq.tqe_prev = &v13->tqh_first;
      if (v11->q.tqe_next)
      {
        v11->q.tqe_next->q.tqe_prev = v11->q.tqe_prev;
      }

      else
      {
        a1->lqh.tqh_last = v11->q.tqe_prev;
      }

      *v11->q.tqe_prev = v11->q.tqe_next;
      v11->q.tqe_next = 0;
      v11->q.tqe_prev = a1->lqh.tqh_last;
      *a1->lqh.tqh_last = v11;
      a1->lqh.tqh_last = &v11->q.tqe_next;
      v11->flags |= 2u;
      return v11->page;
    }

    else
    {
      v12 = mpool_bkt(a1);
      if (v12)
      {
        v10 = a1->pagesize * a2;
        fd = a1->fd;
        page = v12->page;
        pagesize = a1->pagesize;
        v9 = pread_NOCANCEL();
        if (v9 == a1->pagesize)
        {
          v12->pgno = a2;
          v12->flags = 2;
          v14 = &a1->hqh[(v12->pgno - 1) % 0x80];
          v7 = v14->tqh_first;
          v12->hq.tqe_next = v14->tqh_first;
          if (v7)
          {
            v14->tqh_first->hq.tqe_prev = &v12->hq.tqe_next;
          }

          else
          {
            v14->tqh_last = &v12->hq.tqe_next;
          }

          v14->tqh_first = v12;
          v12->hq.tqe_prev = &v14->tqh_first;
          v12->q.tqe_next = 0;
          v12->q.tqe_prev = a1->lqh.tqh_last;
          *a1->lqh.tqh_last = v12;
          a1->lqh.tqh_last = &v12->q.tqe_next;
          if (a1->pgin)
          {
            (a1->pgin)(a1->pgcookie, v12->pgno, v12->page);
          }

          return v12->page;
        }

        else
        {
          if ((v9 & 0x80000000) == 0)
          {
            *__error() = 79;
          }

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
    *__error() = 22;
    return 0;
  }
}

uint64_t *mpool_look(uint64_t a1, int a2)
{
  for (i = *(a1 + 16 + 16 * ((a2 - 1) % 0x80u)); i; i = *i)
  {
    if (*(i + 10) == a2)
    {
      return i;
    }
  }

  return 0;
}

int mpool_put(MPOOL *a1, void *a2, unsigned int a3)
{
  *(a2 - 4) &= ~2u;
  *(a2 - 4) |= a3 & 1;
  return 0;
}

int mpool_close(MPOOL *a1)
{
  while (a1->lqh.tqh_first)
  {
    tqh_first = a1->lqh.tqh_first;
    if (a1->lqh.tqh_first->q.tqe_next)
    {
      tqh_first->q.tqe_next->q.tqe_prev = tqh_first->q.tqe_prev;
    }

    else
    {
      a1->lqh.tqh_last = tqh_first->q.tqe_prev;
    }

    *tqh_first->q.tqe_prev = tqh_first->q.tqe_next;
    free(tqh_first);
  }

  free(a1);
  return 0;
}

int mpool_sync(MPOOL *a1)
{
  for (i = a1->lqh.tqh_first; i; i = i->q.tqe_next)
  {
    if (i->flags)
    {
      if (mpool_write(a1, i) == -1)
      {
        return -1;
      }

      if (a1->pgin)
      {
        (a1->pgin)(a1->pgcookie, i->pgno, i->page);
      }
    }
  }

  fd = a1->fd;
  if (fsync_NOCANCEL())
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t mpool_write(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2104))
  {
    (*(a1 + 2104))(*(a1 + 2112), *(a2 + 40), *(a2 + 32));
  }

  v6 = *(a1 + 2080) * *(a2 + 40);
  v2 = *(a1 + 2088);
  v3 = *(a2 + 32);
  v4 = *(a1 + 2080);
  if (pwrite_NOCANCEL() == v4)
  {
    *(a2 + 44) &= ~1u;
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t __rec_close(void *a1)
{
  v4 = a1[7];
  if (*(v4 + 32))
  {
    mpool_put(*v4, *(v4 + 32), 0);
    *(v4 + 32) = 0;
  }

  if (__rec_sync(a1, 0) == -1)
  {
    return -1;
  }

  else
  {
    v3 = 0;
    if ((*(v4 + 636) & 0x400) != 0 && munmap(*(v4 + 592), *(v4 + 608)))
    {
      v3 = -1;
    }

    if ((*(v4 + 636) & 0x800) == 0)
    {
      if ((*(v4 + 636) & 0x40) != 0)
      {
        if (fclose(*(v4 + 568)))
        {
          v3 = -1;
        }
      }

      else
      {
        v1 = *(v4 + 576);
        if (close_NOCANCEL())
        {
          v3 = -1;
        }
      }
    }

    if (__bt_close(a1) == -1)
    {
      return -1;
    }

    return v3;
  }
}

uint64_t __rec_sync(uint64_t a1, int a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v13 = *(a1 + 56);
  if (*(v13 + 32))
  {
    mpool_put(*v13, *(v13 + 32), 0);
    *(v13 + 32) = 0;
  }

  if (v14 == 11)
  {
    return __bt_sync(v15, 0);
  }

  else if ((*(v13 + 636) & 0x2800) == 0 && (*(v13 + 636) & 0x1000) != 0)
  {
    if ((*(v13 + 636) & 0x100) != 0 || (*(v13 + 560))(v13, 0xFFFFFFFFLL) != -1)
    {
      if (lseek(*(v13 + 576), 0, 0))
      {
        return -1;
      }

      else
      {
        v7 = *(v13 + 64);
        v10 = 4;
        v9 = &v6;
        if ((*(v13 + 636) & 0x200) != 0)
        {
          for (i = (*(v15 + 40))(v15, &v9, &v11, 3); !i; i = (*(v15 + 40))(v15, &v9, &v11, 7))
          {
            v2 = *(v13 + 576);
            if (write_NOCANCEL() != v12)
            {
              return -1;
            }
          }
        }

        else
        {
          v19 = v13 + 632;
          v20 = 1;
          for (i = (*(v15 + 40))(v15, &v9, &v11, 3); !i; i = (*(v15 + 40))(v15, &v9, &v11, 7))
          {
            v17 = v11;
            v18 = v12;
            v3 = *(v13 + 576);
            if (writev_NOCANCEL() != v12 + 1)
            {
              return -1;
            }
          }
        }

        *(v13 + 64) = v7;
        if (i == -1)
        {
          return -1;
        }

        else
        {
          v8 = lseek(*(v13 + 576), 0, 1);
          if (v8 == -1)
          {
            return -1;
          }

          else if (ftruncate(*(v13 + 576), v8))
          {
            return -1;
          }

          else
          {
            *(v13 + 636) &= ~0x1000u;
            return 0;
          }
        }
      }
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

uint64_t __rec_delete(uint64_t a1, unsigned int **a2, int a3)
{
  v6 = *(a1 + 56);
  if (*(v6 + 32))
  {
    mpool_put(*v6, *(v6 + 32), 0);
    *(v6 + 32) = 0;
  }

  if (a3)
  {
    if (a3 == 1 && (*(v6 + 68) & 8) != 0)
    {
      if (!*(v6 + 616))
      {
        return 1;
      }

      v4 = rec_rdelete(v6, *(v6 + 64) - 1);
      if (!v4)
      {
        --*(v6 + 64);
      }

      goto LABEL_17;
    }

LABEL_16:
    *__error() = 22;
    return -1;
  }

  v5 = **a2;
  if (!v5)
  {
    goto LABEL_16;
  }

  if (v5 > *(v6 + 616))
  {
    return 1;
  }

  v4 = rec_rdelete(v6, v5 - 1);
LABEL_17:
  if (!v4)
  {
    *(v6 + 636) |= 0x1004u;
  }

  return v4;
}

uint64_t rec_rdelete(MPOOL **a1, unsigned int a2)
{
  v5 = __rec_search(a1, a2, 0);
  if (v5)
  {
    v4 = *v5;
    v3 = __rec_dleaf(a1, *v5, *(v5 + 8));
    if (v3)
    {
      mpool_put(*a1, v4, 0);
      return v3;
    }

    else
    {
      mpool_put(*a1, v4, 1u);
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t __rec_dleaf(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  v11 = a2 + a2[a3 + 10];
  if ((v11[4] & 1) != 0 && __ovfl_delete(a1, (v11 + 5)) == -1)
  {
    return -1;
  }

  else
  {
    v6 = (*v11 + 8) & 0xFFFFFFFC;
    memmove(a2 + a2[9] + v6, a2 + a2[9], v11 - (a2 + a2[9]));
    a2[9] += v6;
    v7 = a2[a3 + 10];
    v10 = a2 + 10;
    v8 = 2 * a3 / 2;
    while (v8--)
    {
      if (*v10 < v7)
      {
        *v10 += v6;
      }

      ++v10;
    }

    v9 = &a2[(a2[8] - 20) / 2 + 10] - v10;
    while (--v9)
    {
      if (v10[1] < v7)
      {
        v5 = v10[1] + v6;
      }

      else
      {
        v5 = v10[1];
      }

      *v10++ = v5;
    }

    a2[8] -= 2;
    --*(a1 + 616);
    return 0;
  }
}

uint64_t __rec_get(uint64_t a1, unsigned int **a2, void *a3, int a4)
{
  v9 = *(a1 + 56);
  if (*(v9 + 32))
  {
    mpool_put(*v9, *(v9 + 32), 0);
    *(v9 + 32) = 0;
  }

  if (!a4 && (v7 = **a2) != 0)
  {
    if (v7 > *(v9 + 616))
    {
      if ((*(v9 + 636) & 0x900) != 0)
      {
        return 1;
      }

      v5 = (*(v9 + 560))(v9, v7);
      if (v5)
      {
        return v5;
      }
    }

    v8 = __rec_search(v9, v7 - 1, 2);
    if (v8)
    {
      v6 = __rec_ret(v9, v8, 0, 0, a3);
      if ((*(v9 + 636) & 0x4000) != 0)
      {
        mpool_put(*v9, *v8, 0);
      }

      else
      {
        *(v9 + 32) = *v8;
      }

      return v6;
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

uint64_t __rec_fpipe(uint64_t a1, unsigned int a2)
{
  v11 = a1;
  v10 = a2;
  v8 = 0;
  v9 = 0;
  if (*(a1 + 504) < *(a1 + 624))
  {
    *(v11 + 496) = reallocf(*(v11 + 496), *(v11 + 624));
    if (!*(v11 + 496))
    {
      return -1;
    }

    *(v11 + 504) = *(v11 + 624);
  }

  v8 = *(v11 + 496);
  v9 = *(v11 + 624);
  v7 = *(v11 + 616);
  do
  {
    if (v7 >= v10)
    {
      break;
    }

    __len = *(v11 + 624);
    for (__b = *(v11 + 496); ; ++__b)
    {
      v5 = getc(*(v11 + 568));
      if (v5 == -1)
      {
        break;
      }

      if (!--__len)
      {
        break;
      }

      v2 = __b;
      *v2 = v5;
    }

    if (v5 != -1)
    {
      *__b = v5;
    }

    if (__len)
    {
      memset(__b, *(v11 + 632), __len);
    }

    if (__rec_iput(v11, v7, &v8, 0))
    {
      return -1;
    }

    ++v7;
  }

  while (v5 != -1);
  if (v7 >= v10)
  {
    return 0;
  }

  else
  {
    *(v11 + 636) |= 0x100u;
    return 1;
  }
}

uint64_t __rec_vpipe(uint64_t a1, unsigned int a2)
{
  v14 = a1;
  v13 = a2;
  v11 = 0;
  v12 = 0;
  v7 = *(a1 + 632);
  for (i = *(a1 + 616); i < v13; ++i)
  {
    v5 = *(v14 + 496);
    for (j = *(v14 + 504); ; --j)
    {
      v6 = getc(*(v14 + 568));
      if (v6 == -1 || v6 == v7)
      {
        break;
      }

      if (!j)
      {
        v9 = &v5[-*(v14 + 496)];
        j = 256;
        *(v14 + 504) += 256;
        v2 = reallocf(*(v14 + 496), *(v14 + 504));
        *(v14 + 496) = v2;
        if (!*(v14 + 496))
        {
          return -1;
        }

        v5 = &v9[*(v14 + 496)];
      }

      v3 = v5++;
      *v3 = v6;
    }

    v11 = *(v14 + 496);
    v12 = &v5[-*(v14 + 496)];
    if ((v6 != -1 || v12) && __rec_iput(v14, i, &v11, 0))
    {
      return -1;
    }

    if (v6 == -1)
    {
      break;
    }
  }

  if (i >= v13)
  {
    return 0;
  }

  else
  {
    *(v14 + 636) |= 0x100u;
    return 1;
  }
}

uint64_t __rec_fmap(uint64_t a1, unsigned int a2)
{
  v14 = a1;
  v13 = a2;
  v11 = 0;
  v12 = 0;
  if (*(a1 + 504) < *(a1 + 624))
  {
    *(v14 + 496) = reallocf(*(v14 + 496), *(v14 + 624));
    if (!*(v14 + 496))
    {
      return -1;
    }

    *(v14 + 504) = *(v14 + 624);
  }

  v11 = *(v14 + 496);
  v12 = *(v14 + 624);
  v9 = *(v14 + 584);
  v8 = *(v14 + 600);
  for (i = *(v14 + 616); i < v13; ++i)
  {
    if (v9 >= v8)
    {
      *(v14 + 636) |= 0x100u;
      return 1;
    }

    __len = *(v14 + 624);
    for (__b = *(v14 + 496); ; ++__b)
    {
      v5 = 0;
      if (v9 < v8)
      {
        v5 = __len != 0;
      }

      if (!v5)
      {
        break;
      }

      v2 = v9++;
      v3 = __b;
      *v3 = *v2;
      --__len;
    }

    if (__len)
    {
      memset(__b, *(v14 + 632), __len);
    }

    if (__rec_iput(v14, i, &v11, 0))
    {
      return -1;
    }
  }

  *(v14 + 584) = v9;
  return 0;
}

uint64_t __rec_vmap(uint64_t a1, unsigned int a2)
{
  v11 = a1;
  v10 = a2;
  v8 = 0;
  v9 = 0;
  v7 = *(a1 + 584);
  v6 = *(a1 + 600);
  v4 = *(a1 + 632);
  for (i = *(a1 + 616); i < v10; ++i)
  {
    if (v7 >= v6)
    {
      *(v11 + 636) |= 0x100u;
      return 1;
    }

    v8 = v7;
    while (1)
    {
      v3 = 0;
      if (v7 < v6)
      {
        v3 = *v7 != v4;
      }

      if (!v3)
      {
        break;
      }

      ++v7;
    }

    v9 = (v7 - v8);
    if (__rec_iput(v11, i, &v8, 0))
    {
      return -1;
    }

    ++v7;
  }

  *(v11 + 584) = v7;
  return 0;
}

void *__rec_open(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = 0;
  memset(__b, 0, sizeof(__b));
  v12 = 0;
  v11 = 0;
  memset(&v10, 0, sizeof(v10));
  v9 = 0;
  if (v19)
  {
    v9 = open_NOCANCEL();
    if (v9 < 0)
    {
      return 0;
    }
  }

  v12 = 0;
  if (v16)
  {
    if ((*v16 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      goto LABEL_44;
    }

    __b[0] = 0;
    __b[1] = *(v16 + 8);
    LODWORD(__b[2]) = 0;
    HIDWORD(__b[2]) = *(v16 + 12);
    __b[3] = 0;
    __b[4] = 0;
    LODWORD(__b[5]) = *(v16 + 16);
    v12 = __bt_open(*(v16 + 40), 2, 384, __b, v15);
  }

  else
  {
    v12 = __bt_open(0, 2, 384, 0, v15);
  }

  if (!v12)
  {
    goto LABEL_45;
  }

  v14 = v12[7];
  if (v16)
  {
    if (*v16)
    {
      *(v14 + 636) |= 0x200u;
      *(v14 + 624) = *(v16 + 24);
      if (!*(v14 + 624))
      {
        goto LABEL_44;
      }
    }

    *(v14 + 632) = *(v16 + 32);
  }

  else
  {
    *(v14 + 632) = 10;
  }

  *(v14 + 636) |= 0x80u;
  if (v19)
  {
    *(v14 + 576) = v9;
  }

  else
  {
    *(v14 + 636) |= 0x900u;
  }

  if (!v19)
  {
    goto LABEL_35;
  }

  *__error() = 0;
  if (lseek(v9, 0, 1) != -1 || *__error() != 29)
  {
    if ((v18 & 3) != 0)
    {
      if ((v18 & 3) != 2)
      {
        goto LABEL_44;
      }
    }

    else
    {
      *(v14 + 636) |= 0x2000u;
    }

    if (fstat(v9, &v10))
    {
      goto LABEL_45;
    }

    if (!v10.st_size)
    {
      *(v14 + 636) |= 0x100u;
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  if ((v18 & 3) != 0)
  {
LABEL_44:
    *__error() = 22;
    goto LABEL_45;
  }

  *(v14 + 636) |= 0x2000u;
LABEL_23:
  v5 = fdopen_DARWIN_EXTSN(v9, "r");
  *(v14 + 568) = v5;
  if (v5)
  {
    v6 = __rec_fpipe;
    *(v14 + 636) |= 0x40u;
    if ((*(v14 + 636) & 0x200) == 0)
    {
      v6 = __rec_vpipe;
    }

    *(v14 + 560) = v6;
LABEL_35:
    v12[1] = __rec_close;
    v12[2] = __rec_delete;
    v12[8] = __rec_fd;
    v12[3] = __rec_get;
    v12[4] = __rec_put;
    v12[5] = __rec_seq;
    v12[6] = __rec_sync;
    v11 = mpool_get(*v14, 1u, 0);
    if (v11)
    {
      if ((v11[3] & 0x1F) == 2)
      {
        v11[3] &= 0xFFFFFFE0;
        v11[3] |= 0x10u;
        mpool_put(*v14, v11, 1u);
      }

      else
      {
        mpool_put(*v14, v11, 0);
      }

      if (!v16 || (*v16 & 4) == 0 || (*(v14 + 636) & 0x900) != 0 || (*(v14 + 560))(v14, 0xFFFFFFFFLL) != -1)
      {
        return v12;
      }
    }
  }

LABEL_45:
  v8 = *__error();
  if (v12)
  {
    __bt_close(v12);
  }

  if (v19)
  {
    close_NOCANCEL();
  }

  *__error() = v8;
  return 0;
}

uint64_t __rec_fd(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 32))
  {
    mpool_put(*v2, *(v2 + 32), 0);
    *(v2 + 32) = 0;
  }

  if ((*(v2 + 636) & 0x800) != 0)
  {
    *__error() = 2;
    return -1;
  }

  else
  {
    return *(v2 + 576);
  }
}

uint64_t __rec_put(uint64_t a1, unsigned int **a2, uint64_t a3, int a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  __b = 0;
  __len = 0;
  v12 = *(a1 + 56);
  if (*(v12 + 32))
  {
    mpool_put(*v12, *(v12 + 32), 0);
    *(v12 + 32) = 0;
  }

  if ((*(v12 + 636) & 0x200) == 0 || *(v14 + 8) == *(v12 + 624))
  {
    v10 = *v14;
    v11 = *(v14 + 8);
  }

  else
  {
    if (*(v14 + 8) > *(v12 + 624))
    {
      goto LABEL_32;
    }

    if (*(v12 + 504) < *(v12 + 624))
    {
      *(v12 + 496) = reallocf(*(v12 + 496), *(v12 + 624));
      if (!*(v12 + 496))
      {
        return -1;
      }

      *(v12 + 504) = *(v12 + 624);
    }

    memmove(*(v12 + 496), *v14, *(v14 + 8));
    memset((*(v12 + 496) + *(v14 + 8)), *(v12 + 632), *(v12 + 624) - *(v14 + 8));
    v10 = *(v12 + 496);
    v11 = *(v12 + 624);
  }

  switch(v13)
  {
    case 0:
      goto LABEL_26;
    case 1:
      if ((*(v12 + 68) & 8) == 0)
      {
        goto LABEL_32;
      }

      v7 = *(v12 + 64);
      goto LABEL_33;
    case 4:
      v7 = **v15;
      if (!v7)
      {
        v7 = 1;
        v13 = 5;
      }

      goto LABEL_33;
    case 5:
LABEL_26:
      v7 = **v15;
      if (!v7)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
  }

  if (v13 != 8)
  {
    if (v13 == 10)
    {
      v7 = **v15;
      if (v7)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    *__error() = 22;
    return -1;
  }

  v7 = **v15;
  if (!v7)
  {
    goto LABEL_32;
  }

  if (v7 <= *(v12 + 616))
  {
    return 1;
  }

LABEL_33:
  if (v7 <= *(v12 + 616))
  {
    goto LABEL_49;
  }

  if ((*(v12 + 636) & 0x900) == 0 && (*(v12 + 560))(v12, v7) == -1)
  {
    return -1;
  }

  if (v7 <= *(v12 + 616) + 1)
  {
    goto LABEL_49;
  }

  if ((*(v12 + 636) & 0x200) == 0)
  {
    __b = 0;
    __len = 0;
LABEL_43:
    while (v7 > *(v12 + 616) + 1)
    {
      if (__rec_iput(v12, *(v12 + 616), &__b, 0))
      {
        return -1;
      }
    }

    if ((*(v12 + 636) & 0x200) != 0)
    {
      free(__b);
    }

LABEL_49:
    v6 = __rec_iput(v12, v7 - 1, &v10, v13);
    if (v6)
    {
      return v6;
    }

    else
    {
      if (v13 == 4)
      {
        ++v7;
      }

      else if (v13 == 10)
      {
        *(v12 + 64) = v7;
      }

      *(v12 + 636) |= 0x1000u;
      return __rec_ret(v12, 0, v7, v15, 0);
    }
  }

  v4 = *(v12 + 624);
  __b = malloc_type_malloc();
  if (__b)
  {
    __len = *(v12 + 624);
    memset(__b, *(v12 + 632), __len);
    goto LABEL_43;
  }

  return -1;
}

uint64_t __rec_iput(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  if (*(a3 + 8) > *(a1 + 524))
  {
    if (__ovfl_put(v23, v21, &v13) == -1)
    {
      return -1;
    }

    v18 = v25;
    v19 = 8;
    v25[0] = v13;
    v25[1] = v21[1];
    v11 = 1;
    v21 = &v18;
  }

  else
  {
    v11 = 0;
  }

  v8 = 1;
  if (v22 <= *(v23 + 154))
  {
    v8 = 1;
    if (v20 != 4)
    {
      v8 = v20 == 5;
    }
  }

  if (v8)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v17 = __rec_search(v23, v22, v4);
  if (v17)
  {
    v16 = *v17;
    v15 = *(v17 + 8);
    if (v20 == 4)
    {
      ++v15;
    }

    else if (v20 != 5 && v22 < *(v23 + 154) && __rec_dleaf(v23, v16, v15) == -1)
    {
      mpool_put(*v23, v16, 0);
      return -1;
    }

    v12 = (v21[1] + 8) & 0xFFFFFFFC;
    if (*(v16 + 9) - *(v16 + 8) >= v12 + 2)
    {
      v5 = (*(v16 + 8) - 20) / 2;
      v14 = v5;
      if (v15 < v5)
      {
        memmove(v16 + 2 * v15 + 22, v16 + 2 * v15 + 20, 2 * (v14 - v15));
      }

      *(v16 + 8) += 2;
      v6 = *(v16 + 9) - v12;
      *(v16 + 9) = v6;
      *(v16 + v15 + 10) = v6;
      __dst = v16 + *(v16 + 9);
      *__dst = v21[1];
      __dst[4] = v11;
      memmove(__dst + 5, *v21, v21[1]);
      ++*(v23 + 154);
      *(v23 + 159) |= 4u;
      mpool_put(*v23, v16, 1u);
      return 0;
    }

    else
    {
      v10 = __bt_split(v23, v16, 0, v21, v11, v12, v15);
      if (!v10)
      {
        ++*(v23 + 154);
      }

      return v10;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t __rec_search(uint64_t a1, unsigned int a2, int a3)
{
  *(a1 + 472) = a1 + 72;
  v9 = 1;
  v8 = 0;
  while (1)
  {
    v11 = mpool_get(*a1, v9, 0);
    if (!v11)
    {
      break;
    }

    if ((v11[3] & 0x10) != 0)
    {
      *(a1 + 16) = v11;
      *(a1 + 24) = a2 - v8;
      return a1 + 16;
    }

    v13 = 0;
    while (1)
    {
      v10 = (v11 + *(v11 + v13 + 10));
      if (((*(v11 + 8) - 20) / 2) == ++v13 || v8 + *v10 > a2)
      {
        break;
      }

      v8 += *v10;
    }

    **(a1 + 472) = v9;
    *(*(a1 + 472) + 4) = v13 - 1;
    *(a1 + 472) += 8;
    v9 = v10[1];
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = *(v11 + v13 + 9);
        ++*(v11 + v3);
        mpool_put(*a1, v11, 1u);
      }

      else if (a3 == 2)
      {
        mpool_put(*a1, v11, 0);
      }
    }

    else
    {
      --*(v11 + *(v11 + v13 + 9));
      mpool_put(*a1, v11, 1u);
    }
  }

  v7 = *__error();
  if (a3 != 2)
  {
    while (1)
    {
      if (*(a1 + 472) == a1 + 72)
      {
        v6 = 0;
      }

      else
      {
        v4 = *(a1 + 472) - 8;
        *(a1 + 472) = v4;
        v6 = v4;
      }

      if (!v6)
      {
        break;
      }

      v12 = mpool_get(*a1, *v6, 0);
      if (!v12)
      {
        break;
      }

      if (a3 == 1)
      {
        --*&v12[*&v12[2 * *(v6 + 4) + 20]];
      }

      else
      {
        ++*&v12[*&v12[2 * *(v6 + 4) + 20]];
      }

      mpool_put(*a1, v12, 1u);
    }
  }

  *__error() = v7;
  return 0;
}

uint64_t __rec_seq(uint64_t a1, unsigned int **a2, void *a3, int a4)
{
  v9 = *(a1 + 56);
  if (*(v9 + 32))
  {
    mpool_put(*v9, *(v9 + 32), 0);
    *(v9 + 32) = 0;
  }

  switch(a4)
  {
    case 1:
      v7 = **a2;
      if (!v7)
      {
LABEL_22:
        *__error() = 22;
        return -1;
      }

      goto LABEL_23;
    case 3:
LABEL_13:
      v7 = 1;
      goto LABEL_23;
    case 6:
LABEL_18:
      if ((*(v9 + 636) & 0x900) == 0 && (*(v9 + 560))(v9, 0xFFFFFFFFLL) == -1)
      {
        return -1;
      }

      v7 = *(v9 + 616);
      goto LABEL_23;
    case 7:
      if ((*(v9 + 68) & 8) != 0)
      {
        v7 = *(v9 + 64) + 1;
        goto LABEL_23;
      }

      goto LABEL_13;
  }

  if (a4 != 9)
  {
    goto LABEL_22;
  }

  if ((*(v9 + 68) & 8) == 0)
  {
    goto LABEL_18;
  }

  v7 = *(v9 + 64) - 1;
  if (*(v9 + 64) == 1)
  {
    return 1;
  }

LABEL_23:
  if (!*(v9 + 616) || v7 > *(v9 + 616))
  {
    if ((*(v9 + 636) & 0x900) == 0)
    {
      v5 = (*(v9 + 560))(v9, v7);
      if (v5)
      {
        return v5;
      }
    }

    if (!*(v9 + 616) || v7 > *(v9 + 616))
    {
      return 1;
    }
  }

  v8 = __rec_search(v9, v7 - 1, 2);
  if (v8)
  {
    *(v9 + 68) |= 8u;
    *(v9 + 64) = v7;
    v6 = __rec_ret(v9, v8, v7, a2, a3);
    if ((*(v9 + 636) & 0x4000) != 0)
    {
      mpool_put(*v9, *v8, 0);
    }

    else
    {
      *(v9 + 32) = *v8;
    }

    return v6;
  }

  else
  {
    return -1;
  }
}

uint64_t __rec_ret(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a4)
  {
    if (*(a1 + 488) < 4uLL)
    {
      v5 = *(a1 + 480);
      v9 = malloc_type_realloc();
      if (!v9)
      {
        return -1;
      }

      *(a1 + 480) = v9;
      *(a1 + 488) = 4;
    }

    **(a1 + 480) = a3;
    a4[1] = 4;
    *a4 = *(a1 + 480);
  }

  if (a5)
  {
    v11 = (*a2 + *(*a2 + 20 + 2 * *(a2 + 8)));
    if (v11[1])
    {
      if (__ovfl_get(a1, (v11 + 5), a5 + 1, (a1 + 496), (a1 + 504)))
      {
        return -1;
      }

      *a5 = *(a1 + 496);
    }

    else if ((*(a1 + 636) & 0x4000) != 0)
    {
      if ((*v11 + 1) > *(a1 + 504))
      {
        v6 = *(a1 + 496);
        v7 = *v11 + 1;
        v10 = malloc_type_realloc();
        if (!v10)
        {
          return -1;
        }

        *(a1 + 496) = v10;
        *(a1 + 504) = *v11 + 1;
      }

      memmove(*(a1 + 496), v11 + 5, *v11);
      a5[1] = *v11;
      *a5 = *(a1 + 496);
    }

    else
    {
      a5[1] = *v11;
      *a5 = v11 + 5;
    }

    return 0;
  }

  return 0;
}

int timingsafe_bcmp(const void *__b1, const void *__b2, size_t __len)
{
    ;
  }

  return (i + 255) >> 8;
}

_DWORD *__hdtoa(uint64_t a1, int j, _DWORD *a3, _DWORD *a4, void *a5, double a6)
{
  v14 = a6;
  *a4 = *&a6 >> 63;
  v9 = __fpclassifyd(a6);
  switch(v9)
  {
    case 1:
      *a3 = 0x7FFFFFFF;
      return __nrv_alloc_D2A("NaN", a5, 3);
    case 2:
      *a3 = 0x7FFFFFFF;
      return __nrv_alloc_D2A("Infinity", a5, 8);
    case 3:
      goto LABEL_8;
  }

  if (v9 != 4)
  {
    if (v9 != 5)
    {
      abort_report_np("%s:%s:%u: fpclassify returned %d");
    }

    if (v14 != 0.0)
    {
      v14 = v14 * 5.36312317e154;
      *a3 = ((*&v14 >> 52) & 0x7FF) - 1536;
      goto LABEL_13;
    }

LABEL_8:
    *a3 = 1;
    return __nrv_alloc_D2A("0", a5, 1);
  }

  *a3 = ((*&v14 >> 52) & 0x7FF) - 1022;
LABEL_13:
  if (!j)
  {
    j = 1;
  }

  if (j >= 14)
  {
    v8 = j;
  }

  else
  {
    v8 = 14;
  }

  v10 = __rv_alloc_D2A(v8);
  for (i = &v10[v8 - 1]; i > v10 + 13; --i)
  {
    *i = 0;
  }

  while (1)
  {
    v7 = 0;
    if (i > v10 + 5)
    {
      v7 = i > v10;
    }

    if (!v7)
    {
      break;
    }

    *i = LOBYTE(v14) & 0xF;
    *&v14 = *&v14 & 0xFFFFFFFF00000000 | (LODWORD(v14) >> 4);
    --i;
  }

  while (i > v10)
  {
    *i = BYTE4(v14) & 0xF;
    *&v14 = *&v14 & 0xFFF00000FFFFFFFFLL | ((((HIDWORD(v14) & 0xFFFFF) >> 4) & 0xFFFFF) << 32);
    --i;
  }

  *i = BYTE4(v14) | 1;
  if (j < 0)
  {
      ;
    }
  }

  if (j < 14 && v10[j])
  {
    dorounding(v10, j, *&v14 >> 63, a3);
  }

  v12 = &v10[j];
  if (a5)
  {
    *a5 = v12;
  }

  v13 = v12 - 1;
  v10[j] = 0;
  while (v13 >= v10)
  {
    *v13 = *(a1 + *v13);
    --v13;
  }

  return v10;
}

_BYTE *dorounding(_BYTE *result, int a2, int a3, _DWORD *a4)
{
  v5 = 0;
  v4 = ((_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0)) + 0x400000) >> 22) & 3;
  if (v4)
  {
    if (v4 == 1)
    {
      if (result[a2] > 8 || result[a2] == 8 && (result[a2 + 1] & 1) != 0)
      {
        result = roundup(result, a2);
        v5 = result;
      }
    }

    else if (v4 == 2)
    {
      if (!a3)
      {
        result = roundup(result, a2);
        v5 = result;
      }
    }

    else if (a3)
    {
      result = roundup(result, a2);
      v5 = result;
    }
  }

  if (v5)
  {
    *a4 += 4;
  }

  return result;
}

uint64_t roundup(_BYTE *a1, int a2)
{
  for (i = &a1[a2 - 1]; *i == 15; --i)
  {
    if (i == a1)
    {
      *i = 1;
      return 1;
    }

    *i = 0;
  }

  ++*i;
  return 0;
}

_DWORD *__rv_alloc_D2A(int a1)
{
  v4 = 4;
  v3 = 0;
  while (v4 + 24 <= a1)
  {
    ++v3;
    v4 *= 2;
  }

  v1 = __Balloc_D2A(v3);
  *v1 = v3;
  return v1 + 1;
}

_DWORD *__nrv_alloc_D2A(char *a1, void *a2, int a3)
{
  v6 = __rv_alloc_D2A(a3);
  for (i = v6; ; ++i)
  {
    v3 = a1++;
    LODWORD(v3) = *v3;
    *i = v3;
    if (!v3)
    {
      break;
    }
  }

  if (a2)
  {
    *a2 = i;
  }

  return v6;
}

void __freedtoa(uint64_t a1)
{
  v1 = *(a1 - 4);
  *(a1 + 4) = v1;
  *(a1 + 8) = 1 << v1;
  __Bfree_D2A((a1 - 4));
}

uint64_t __quorem_D2A(uint64_t a1, uint64_t a2)
{
  v25 = *(a2 + 20);
  if (*(a1 + 20) > v25)
  {
    fprintf(__stderrp, "%s\n", "oversize b in quorem");
    exit(1);
  }

  if (*(a1 + 20) >= v25)
  {
    v18 = (a2 + 24);
    v26 = v25 - 1;
    v17 = (a2 + 24 + 4 * v26);
    v23 = (a1 + 24);
    v21 = (a1 + 24 + 4 * v26);
    v20 = *v21 / (*v17 + 1);
    if (v20 > 9)
    {
      fprintf(__stderrp, "%s\n", "oversized quotient in quorem");
      exit(1);
    }

    if (v20)
    {
      v15 = 0;
      v13 = 0;
      do
      {
        v2 = v18++;
        v9 = *v2 * v20 + v13;
        v13 = HIDWORD(v9);
        v11 = *v23 - v9 - v15;
        v15 = HIDWORD(v11) & 1;
        v3 = v23++;
        *v3 = v11;
      }

      while (v18 <= v17);
      if (!*v21)
      {
        while (1)
        {
          --v21;
          v8 = 0;
          if (v21 > a1 + 24)
          {
            v8 = *v21 == 0;
          }

          if (!v8)
          {
            break;
          }

          --v26;
        }

        *(a1 + 20) = v26;
      }
    }

    if ((__cmp_D2A(a1, a2) & 0x80000000) == 0)
    {
      ++v20;
      v16 = 0;
      v14 = 0;
      v24 = (a1 + 24);
      v19 = (a2 + 24);
      do
      {
        v4 = v19++;
        v10 = *v4 + v14;
        v14 = HIDWORD(v10);
        v12 = *v24 - v10 - v16;
        v16 = HIDWORD(v12) & 1;
        v5 = v24++;
        *v5 = v12;
      }

      while (v19 <= v17);
      v22 = (a1 + 24 + 4 * v26);
      if (!*v22)
      {
        while (1)
        {
          --v22;
          v7 = 0;
          if (v22 > a1 + 24)
          {
            v7 = *v22 == 0;
          }

          if (!v7)
          {
            break;
          }

          --v26;
        }

        *(a1 + 20) = v26;
      }
    }

    return v20;
  }

  else
  {
    return 0;
  }
}

_DWORD *__dtoa(int a1, int a2, _DWORD *a3, _DWORD *a4, void *a5, double a6)
{
  v100 = a6;
  v99 = a1;
  v98 = a2;
  v97 = a3;
  v96 = a4;
  v95 = a5;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v50 = 0;
  v30 = ((_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0)) + 0x400000) >> 22) & 3;
  v41 = a6;
  if ((HIBYTE(a6) & 0x80) != 0)
  {
    *v96 = 1;
    HIDWORD(v41) = HIDWORD(a6) & 0x7FFFFFFF;
  }

  else
  {
    *v96 = 0;
  }

  if ((~HIDWORD(v41) & 0x7FF00000) == 0)
  {
    *v97 = 9999;
    if (LODWORD(a6) || (HIDWORD(v41) & 0xFFFFF) != 0)
    {
      return __nrv_alloc_D2A("NaN", v95, 3);
    }

    else
    {
      return __nrv_alloc_D2A("Infinity", v95, 8);
    }
  }

  if (v41 == 0.0)
  {
    *v97 = 1;
    return __nrv_alloc_D2A("0", v95, 1);
  }

  if (v30 >= 2)
  {
    if (*v96)
    {
      v30 = 2 * (v30 != 2);
    }

    else if (v30 != 2)
    {
      v30 = 0;
    }
  }

  v53 = __d2b_D2A(&v91, &v94, v41);
  v78 = (HIDWORD(v41) >> 20) & 0x7FF;
  if (v78)
  {
    LODWORD(v39) = LODWORD(v41);
    HIDWORD(v39) = HIDWORD(v41) & 0xFFFFF | 0x3FF00000;
    v79 = v78 - 1023;
    v54 = 0;
  }

  else
  {
    v80 = v94 + v91 + 50;
    if (v94 + v91 + 1074 < 33)
    {
      v29 = LODWORD(v41) << -v80;
    }

    else
    {
      v29 = (HIDWORD(v41) << -v80) | (LODWORD(v41) >> v80);
    }

    LODWORD(v6) = v29;
    v7 = v6;
    LODWORD(v39) = LODWORD(v7);
    HIDWORD(v39) = HIDWORD(v7) - 32505856;
    v79 = v94 + v91 - 1;
    v54 = 1;
  }

  v33 = (v39 + -1.5) * 0.289529655 + 0.176091259 + v79 * 0.301029996;
  v67 = v33;
  if (v33 < 0.0 && v33 != v67)
  {
    --v67;
  }

  v65 = 1;
  if ((v67 & 0x80000000) == 0 && v67 <= 22)
  {
    if (v41 < __tens_D2A[v67])
    {
      --v67;
    }

    v65 = 0;
  }

  v70 = ~v79 + v94;
  if (v70 < 0)
  {
    v93 = -v70;
    v61 = 0;
  }

  else
  {
    v93 = 0;
    v61 = ~v79 + v94;
  }

  if (v67 < 0)
  {
    v93 -= v67;
    v92 = -v67;
    v60 = 0;
  }

  else
  {
    v92 = 0;
    v60 = v67;
    v61 += v67;
  }

  if (v99 < 0 || v99 >= 10)
  {
    v99 = 0;
  }

  v58 = v30 == 1;
  if (v99 >= 6)
  {
    v99 -= 4;
    v58 = 0;
  }

  v64 = 1;
  v74 = -1;
  v76 = -1;
  if (v99 < 2)
  {
    v98 = 0;
    v8 = __rv_alloc_D2A(18);
  }

  else
  {
    switch(v99)
    {
      case 2:
        v64 = 0;
        break;
      case 3:
        v64 = 0;
        goto LABEL_53;
      case 4:
        break;
      case 5:
LABEL_53:
        v79 = v98 + v67 + 1;
        v76 = v79;
        v74 = v98 + v67;
        if (v79 <= 0)
        {
          v79 = 1;
        }

        goto LABEL_55;
      default:
LABEL_55:
        v8 = __rv_alloc_D2A(v79);
        goto LABEL_56;
    }

    if (v98 <= 0)
    {
      v98 = 1;
    }

    v74 = v98;
    v76 = v98;
    v8 = __rv_alloc_D2A(v98);
  }

LABEL_56:
  v31 = v8;
  v32 = v8;
  if (v99 >= 2 && v30 != 1)
  {
    v64 = 0;
  }

  if (v76 < 0 || v76 > 14 || !v58)
  {
LABEL_102:
    if (v91 < 0 || v67 > 14)
    {
      v63 = v93;
      v62 = v92;
      v50 = 0;
      v48 = 0;
      if (v64)
      {
        if (v54)
        {
          v28 = v91 + 1075;
        }

        else
        {
          v28 = 54 - v94;
        }

        v93 += v28;
        v61 += v28;
        v48 = __i2b_D2A(1);
      }

      if (v63 >= 1 && v61 >= 1)
      {
        if (v63 < v61)
        {
          v27 = v63;
        }

        else
        {
          v27 = v61;
        }

        v93 -= v27;
        v63 -= v27;
        v61 -= v27;
      }

      if (v92 >= 1)
      {
        if (v64)
        {
          if (v62 >= 1)
          {
            v48 = __pow5mult_D2A(v48, v62);
            v52 = __mult_D2A(v48, v53);
            __Bfree_D2A(v53);
            v53 = v52;
          }

          if (v92 != v62)
          {
            v53 = __pow5mult_D2A(v53, v92 - v62);
          }
        }

        else
        {
          v53 = __pow5mult_D2A(v53, v92);
        }
      }

      v47 = __i2b_D2A(1);
      if (v60 >= 1)
      {
        v47 = __pow5mult_D2A(v47, v60);
      }

      v59 = 0;
      if ((v99 < 2 || v64) && v30 == 1 && !LODWORD(v41) && (HIDWORD(v41) & 0xFFFFF) == 0 && (HIWORD(v41) & 0x7FE0) != 0)
      {
        ++v93;
        ++v61;
        v59 = 1;
      }

      if (v60)
      {
        v26 = 32 - __hi0bits_D2A(v47[v47[5] + 5]);
      }

      else
      {
        LOBYTE(v26) = 1;
      }

      v85 = (v26 + v61) & 0x1F;
      if (((v26 + v61) & 0x1F) != 0)
      {
        v85 = 32 - v85;
      }

      if (v85 < 5)
      {
        if (v85 <= 3)
        {
          v87 = v85 + 28;
          v93 += v87;
          v63 += v87;
          v61 += v87;
        }
      }

      else
      {
        v86 = v85 - 4;
        v93 += v86;
        v63 += v86;
        v61 += v86;
      }

      if (v93 >= 1)
      {
        v53 = __lshift_D2A(v53, v93);
      }

      if (v61 >= 1)
      {
        v47 = __lshift_D2A(v47, v61);
      }

      if (v65 && (__cmp_D2A(v53, v47) & 0x80000000) != 0)
      {
        --v67;
        v53 = __multadd_D2A(v53, 10, 0);
        if (v64)
        {
          v48 = __multadd_D2A(v48, 10, 0);
        }

        v76 = v74;
      }

      if (v76 > 0 || v99 != 3 && v99 != 5)
      {
        if (v64)
        {
          if (v63 >= 1)
          {
            v48 = __lshift_D2A(v48, v63);
          }

          v50 = v48;
          if (v59)
          {
            v49 = __Balloc_D2A(v48[2]);
            memcpy(v49 + 4, v50 + 4, 4 * v50[5] + 8);
            v48 = __lshift_D2A(v49, 1);
          }

          for (i = 1; ; ++i)
          {
            v90 = __quorem_D2A(v53, v47) + 48;
            v73 = __cmp_D2A(v53, v50);
            v51 = __diff_D2A(v47, v48);
            v25 = v51[4] ? 1 : __cmp_D2A(v53, v51);
            __Bfree_D2A(v51);
            if (!v25 && v99 != 1 && (LOBYTE(v41) & 1) == 0 && v30 >= 1)
            {
              break;
            }

            if (v73 & 0x80000000) == 0 && (v73 || v99 == 1 || (LOBYTE(v41)))
            {
              if (v25 >= 1)
              {
                if (!v30)
                {
                  goto LABEL_218;
                }

                if (v90 != 57)
                {
                  v18 = v32++;
                  *v18 = v90 + 1;
                  goto LABEL_249;
                }

                goto LABEL_222;
              }
            }

            else
            {
              if (!v53[6] && v53[5] <= 1)
              {
                goto LABEL_218;
              }

              if (v99 < 2)
              {
                goto LABEL_213;
              }

              if (!v30)
              {
                goto LABEL_218;
              }

              if (v30 != 2)
              {
LABEL_213:
                if (v25 < 1 || (v53 = __lshift_D2A(v53, 1), v69 = __cmp_D2A(v53, v47), v69 <= 0) && (v69 || (v90 & 1) == 0) || (v15 = v90, LOBYTE(v90) = v90 + 1, v15 != 57))
                {
LABEL_218:
                  v16 = v32++;
                  *v16 = v90;
                  goto LABEL_249;
                }

LABEL_222:
                v17 = v32++;
                *v17 = 57;
                goto LABEL_242;
              }
            }

            v19 = v32++;
            *v19 = v90;
            if (i == v76)
            {
              goto LABEL_234;
            }

            v53 = __multadd_D2A(v53, 10, 0);
            if (v50 == v48)
            {
              v48 = __multadd_D2A(v48, 10, 0);
              v50 = v48;
            }

            else
            {
              v50 = __multadd_D2A(v50, 10, 0);
              v48 = __multadd_D2A(v48, 10, 0);
            }
          }

          if (v90 == 57)
          {
            goto LABEL_222;
          }

          if (v73 >= 1)
          {
            LOBYTE(v90) = v90 + 1;
          }

          v14 = v32++;
          *v14 = v90;
        }

        else
        {
          for (j = 1; ; ++j)
          {
            LOBYTE(v90) = __quorem_D2A(v53, v47) + 48;
            v20 = v32++;
            *v20 = v90;
            if (!v53[6] && v53[5] <= 1)
            {
              goto LABEL_249;
            }

            if (j >= v76)
            {
              break;
            }

            v53 = __multadd_D2A(v53, 10, 0);
          }

LABEL_234:
          if (v30 && (v30 == 2 || (v53 = __lshift_D2A(v53, 1), v21 = __cmp_D2A(v53, v47), v21 > 0 || !v21 && (v90 & 1) != 0)))
          {
LABEL_242:
            while (*--v32 == 57)
            {
              if (v32 == v31)
              {
                ++v67;
                v22 = v32++;
                *v22 = 49;
                goto LABEL_249;
              }
            }

            v23 = v32++;
            ++*v23;
          }

          else
          {
            do
            {
              --v32;
            }

            while (*v32 == 48);
            ++v32;
          }
        }

        goto LABEL_249;
      }

      if (v76 < 0)
      {
        goto LABEL_182;
      }

      v47 = __multadd_D2A(v47, 5, 0);
      if (__cmp_D2A(v53, v47) <= 0)
      {
        goto LABEL_182;
      }
    }

    else
    {
      v35 = __tens_D2A[v67];
      if ((v98 & 0x80000000) == 0 || v76 > 0)
      {
        for (k = 1; ; ++k)
        {
          v57 = (v41 / v35);
          v45 = v41 - v57 * v35;
          if (v45 < 0.0)
          {
            LOBYTE(v57) = v57 - 1;
            v45 = v45 + v35;
          }

          v11 = v32++;
          *v11 = v57 + 48;
          if (v45 == 0.0)
          {
            break;
          }

          if (k == v76)
          {
            if (v99 >= 2)
            {
              if (!v30)
              {
                goto LABEL_254;
              }

              if (v30 == 2)
              {
                goto LABEL_124;
              }
            }

            v46 = v45 + v45;
            if (v46 > v35 || v46 == v35 && (v57 & 1) != 0)
            {
              goto LABEL_124;
            }

            goto LABEL_254;
          }

          v41 = v45 * 10.0;
        }

        goto LABEL_254;
      }

      v48 = 0;
      v47 = 0;
      if (v76 < 0 || v41 <= v35 * 5.0)
      {
        goto LABEL_182;
      }
    }

LABEL_183:
    v13 = v32++;
    *v13 = 49;
    ++v67;
LABEL_249:
    __Bfree_D2A(v47);
    if (v48)
    {
      if (v50 && v50 != v48)
      {
        __Bfree_D2A(v50);
      }

      __Bfree_D2A(v48);
    }

    goto LABEL_254;
  }

  v81 = 0;
  v40 = v41;
  v66 = v67;
  v75 = v76;
  v77 = 2;
  if (v67 < 1)
  {
    v68 = -v67;
    if (v67)
    {
      v41 = v41 * __tens_D2A[v68 & 0xF];
      for (m = v68 >> 4; m; m >>= 1)
      {
        if (m)
        {
          ++v77;
          v41 = v41 * __bigtens_D2A[v81];
        }

        ++v81;
      }
    }
  }

  else
  {
    v34 = __tens_D2A[v67 & 0xF];
    v71 = v67 >> 4;
    if (((v67 >> 4) & 0x10) != 0)
    {
      v71 = (v67 >> 4) & 0xF;
      v41 = v41 / 1.0e256;
      v77 = 3;
    }

    while (v71)
    {
      if (v71)
      {
        ++v77;
        v34 = v34 * __bigtens_D2A[v81];
      }

      v71 >>= 1;
      ++v81;
    }

    v41 = v41 / v34;
  }

  if (v65 && v41 < 1.0 && v76 >= 1)
  {
    if (v74 <= 0)
    {
      goto LABEL_101;
    }

    v76 = v74;
    --v67;
    v41 = v41 * 10.0;
    ++v77;
  }

  v36 = v77 * v41 + 7.0;
  HIDWORD(v36) -= 54525952;
  if (!v76)
  {
    v48 = 0;
    v47 = 0;
    v42 = v41 + -5.0;
    if (v42 > v36)
    {
      goto LABEL_183;
    }

    if (v42 < -v36)
    {
LABEL_182:
      v67 = ~v98;
      goto LABEL_249;
    }

    goto LABEL_101;
  }

  if (v64)
  {
    v37 = 0.5 / __tens_D2A[v76 - 1] - v36;
    v82 = 0;
    while (1)
    {
      v55 = v41;
      v43 = v41 - v41;
      v9 = v32++;
      *v9 = v55 + 48;
      if (v43 < v37)
      {
        goto LABEL_254;
      }

      if (1.0 - v43 < v37)
      {
        goto LABEL_124;
      }

      if (++v82 >= v76)
      {
        goto LABEL_101;
      }

      v37 = v37 * 10.0;
      v41 = v43 * 10.0;
    }
  }

  v38 = v36 * __tens_D2A[v76 - 1];
  for (n = 1; ; ++n)
  {
    v56 = v41;
    v44 = v41 - v41;
    if (v44 == 0.0)
    {
      v76 = n;
    }

    v10 = v32++;
    *v10 = v56 + 48;
    if (n == v76)
    {
      break;
    }

    v41 = v44 * 10.0;
  }

  if (v44 > v38 + 0.5)
  {
LABEL_124:
    while (*--v32 == 57)
    {
      if (v32 == v8)
      {
        ++v67;
        *v32 = 48;
        break;
      }
    }

    v12 = v32++;
    ++*v12;
    goto LABEL_254;
  }

  if (v44 >= 0.5 - v38)
  {
LABEL_101:
    v32 = v8;
    v41 = v40;
    v67 = v66;
    v76 = v75;
    goto LABEL_102;
  }

  do
  {
    --v32;
  }

  while (*v32 == 48);
  ++v32;
LABEL_254:
  __Bfree_D2A(v53);
  *v32 = 0;
  *v97 = v67 + 1;
  if (v95)
  {
    *v95 = v32;
  }

  return v31;
}