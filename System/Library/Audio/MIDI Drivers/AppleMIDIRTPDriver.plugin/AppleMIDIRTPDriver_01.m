_OWORD *sub_10B50(unint64_t a1, _OWORD *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1;
  do
  {
    v7 = v6;
    v8 = *(v6 + 16);
    v6 += 16;
  }

  while ((CFStringCompare(v8, v4, 0) & 0x80000000) != 0);
  if (v7 == a1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v10 = *(a2-- - 2);
    }

    while ((CFStringCompare(v10, v4, 0) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v9 = *(a2-- - 2);
    }

    while ((CFStringCompare(v9, v4, 0) & 0x80000000) == 0);
  }

  v11 = v6;
  if (v6 < a2)
  {
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11 + 16);
        v11 += 16;
      }

      while ((CFStringCompare(v14, v4, 0) & 0x80000000) != 0);
      do
      {
        v15 = *(v12-- - 2);
      }

      while ((CFStringCompare(v15, v4, 0) & 0x80000000) == 0);
    }

    while (v11 < v12);
  }

  result = (v11 - 16);
  if (v11 - 16 != a1)
  {
    *a1 = *result;
  }

  *(v11 - 16) = v4;
  *(v11 - 8) = v5;
  return result;
}

BOOL sub_10C64(CFStringRef *a1, __int128 *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_107D4(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        sub_107D4(a1, a1 + 2, a1 + 4);
        v17 = *(a2 - 2);
        v16 = a2 - 1;
        if ((CFStringCompare(v17, a1[4], 0) & 0x80000000) != 0)
        {
          v18 = *(a1 + 2);
          *(a1 + 2) = *v16;
          *v16 = v18;
          if ((CFStringCompare(a1[4], a1[2], 0) & 0x80000000) != 0)
          {
            v19 = *(a1 + 1);
            *(a1 + 1) = *(a1 + 2);
            *(a1 + 2) = v19;
            if ((CFStringCompare(a1[2], *a1, 0) & 0x80000000) != 0)
            {
              v20 = *a1;
              *a1 = *(a1 + 1);
              *(a1 + 1) = v20;
            }
          }
        }

        return 1;
      case 5:
        sub_108E8(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 1;
    if ((CFStringCompare(*(a2 - 2), *a1, 0) & 0x80000000) != 0)
    {
      v6 = *a1;
      *a1 = *v5;
      *v5 = v6;
    }

    return 1;
  }

LABEL_11:
  v7 = a1 + 4;
  sub_107D4(a1, a1 + 2, a1 + 4);
  v8 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while ((CFStringCompare(*v8, *v7, 0) & 0x80000000) == 0)
  {
LABEL_20:
    v7 = v8;
    v9 += 16;
    if (++v8 == a2)
    {
      return 1;
    }
  }

  v11 = *v8;
  v12 = *(v8 + 1);
  v13 = v9;
  do
  {
    v14 = a1 + v13;
    *(a1 + v13 + 48) = *(a1 + v13 + 32);
    if (v13 == -32)
    {
      *a1 = v11;
      a1[1] = v12;
      if (++v10 != 8)
      {
        goto LABEL_20;
      }

      return v8 + 1 == a2;
    }

    v13 -= 16;
  }

  while ((CFStringCompare(v11, *(v14 + 16), 0) & 0x80000000) != 0);
  v15 = a1 + v13;
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  if (++v10 != 8)
  {
    goto LABEL_20;
  }

  return v8 + 1 == a2;
}

CFComparisonResult sub_10E7C(CFComparisonResult result, uint64_t a2, uint64_t a3, CFStringRef *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = a4 - result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = v6 >> 3;
      v10 = (v6 >> 3) + 1;
      v11 = result;
      v12 = result + 2 * v6;
      v13 = (v12 + 16);
      v14 = v9 + 2;
      if (v9 + 2 < a3 && (CFStringCompare(*v13, *(v12 + 32), 0) & 0x80000000) != 0)
      {
        v13 += 2;
        v10 = v14;
      }

      result = CFStringCompare(*v13, *v5, 0);
      if ((result & 0x80000000) == 0)
      {
        v15 = v11;
        v16 = *v5;
        v17 = v5[1];
        v18 = v15 + 16;
        do
        {
          v19 = v5;
          v5 = v13;
          *v19 = *v13;
          if (v7 < v10)
          {
            break;
          }

          v20 = (2 * v10) | 1;
          v13 = (v18 + 32 * v10);
          v21 = 2 * v10 + 2;
          if (v21 < a3 && (CFStringCompare(*v13, v13[2], 0) & 0x80000000) != 0)
          {
            v13 += 2;
            v20 = v21;
          }

          result = CFStringCompare(*v13, v16, 0);
          v10 = v20;
        }

        while ((result & 0x80000000) == 0);
        *v5 = v16;
        v5[1] = v17;
      }
    }
  }

  return result;
}

__n128 sub_10FB4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = 0;
    v26 = *a1;
    v8 = (a4 - 2) >> 1;
    v9 = a1;
    do
    {
      while (1)
      {
        v13 = &v9[v7];
        v12 = (v13 + 1);
        v14 = (2 * v7) | 1;
        v15 = 2 * v7 + 2;
        if (v15 < a4)
        {
          break;
        }

        v7 = (2 * v7) | 1;
        *v9 = *v12;
        v9 = v13 + 1;
        if (v14 > v8)
        {
          goto LABEL_9;
        }
      }

      v11 = *(v13 + 4);
      v10 = (v13 + 2);
      if ((CFStringCompare(*(v10 - 2), v11, 0) & 0x80000000) != 0)
      {
        v12 = v10;
        v7 = v15;
      }

      else
      {
        v7 = v14;
      }

      *v9 = *v12;
      v9 = v12;
    }

    while (v7 <= v8);
LABEL_9:
    v16 = (a2 - 16);
    if (v12 == (a2 - 16))
    {
      result = v26;
      *v12 = v26;
    }

    else
    {
      *v12 = *v16;
      result = v26;
      *v16 = v26;
      v18 = (v12 - a1 + 16) >> 4;
      v19 = v18 < 2;
      v20 = v18 - 2;
      if (!v19)
      {
        v21 = v20 >> 1;
        v22 = &a1[v20 >> 1];
        if ((CFStringCompare(*v22, *v12, 0) & 0x80000000) != 0)
        {
          v23 = *v12;
          v24 = v12[1];
          do
          {
            v25 = v12;
            v12 = v22;
            result = *v22;
            *v25 = *v22;
            if (!v21)
            {
              break;
            }

            v21 = (v21 - 1) >> 1;
            v22 = &a1[v21];
          }

          while ((CFStringCompare(*v22, v23, 0) & 0x80000000) != 0);
          *v12 = v23;
          v12[1] = v24;
        }
      }
    }
  }

  return result;
}

const void **sub_11124(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_11158(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1118C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_111C0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_11208(uint64_t a1, uint64_t a2)
{
  v2 = *(**a1 + 80);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = **(*a1 + 8);
  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(v5, v4);
  if (ValueAtIndex && (Value = CFDictionaryGetValue(ValueAtIndex, @"latency")) != 0)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v8 = valuePtr;
  }

  else
  {
    v8 = 0;
  }

  sub_5008(v2, v3, v8);
}

void sub_1129C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v25 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v26 = v25;
    sub_33CC(v25);
    v27 = v26[66];
    __cxa_end_catch();
    if (v27 == -3)
    {
      goto LABEL_8;
    }

    if (!v27)
    {
      JUMPOUT(0x11284);
    }
  }

  else
  {
    __cxa_end_catch();
  }

  v28 = CFStringCreateWithFormat(0, 0, qword_20080, *v21);
  sub_D554(*(v23 + 8), v28);
  if (v28)
  {
    CFRelease(v28);
  }

LABEL_8:
  sub_11390(*(v22 + 16), v20);
}

void sub_11390(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_9D30();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_26F4();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *sub_114A8(void *a1)
{
  *a1 = off_1C9E8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_114F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(**a1 + 80);
  v4 = **(*a1 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(v4, v6);
  if (ValueAtIndex && (Value = CFDictionaryGetValue(ValueAtIndex, @"latency")) != 0)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v9 = valuePtr;
  }

  else
  {
    v9 = 0;
  }

  return sub_5898(v3, v5, v9);
}

const void *sub_11574(const __CFArray *a1, unint64_t a2)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (result = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_11608(exception);
  }

  return result;
}

uint64_t sub_11624(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_11BE4(v2, a1);
    *(a1 + 8) = 0;
  }

  result = *(a1 + 16);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(a1 + 16) = -1;
  }

  *(a1 + 20) = 0;
  return result;
}

ssize_t sub_11670(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v12 = *(a1 + 8);
  if (v12)
  {
    sub_11BE4(v12, a1);
    *(a1 + 8) = 0;
  }

  v13 = *(a1 + 16);
  if ((v13 & 0x80000000) == 0)
  {
    close(v13);
    *(a1 + 16) = -1;
  }

  *(a1 + 20) = 0;
  *(a1 + 8) = a2;
  *(a1 + 28) = a3;
  result = socket(a3, a4, a5);
  *(a1 + 16) = result;
  if ((result & 0x80000000) != 0)
  {
    v15 = *__error();
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      sub_11B0(v17, v15);
      *buf = 136315906;
      v19 = "Socket.cpp";
      v20 = 1024;
      v21 = 42;
      v22 = 2080;
      v23 = v17;
      v24 = 2080;
      v25 = "couldn't create socket";
      _os_log_impl(&dword_0, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    sub_EBC(exception, "couldn't create socket", v15);
  }

  *(a1 + 24) = a6;
  if (a2)
  {

    return sub_1186C(a2, a1);
  }

  return result;
}

ssize_t sub_1186C(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 152;
  v4 = *(a1 + 152);
  __buf = a1 + 152;
  v6 = (*(v4 + 16))(a1 + 152);
  v19 = v6;
  v15 = a2;
  v16 = 0;
  v17 = 0;
  v8 = *(a1 + 248);
  v7 = *(a1 + 256);
  if (v7 != v8)
  {
    v9 = (v7 - v8) >> 4;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[16 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 16;
      v9 += ~(v9 >> 1);
      if (*(v13 + 16) < *(a2 + 16))
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    v7 = v8;
  }

  sub_11998(a1 + 248, v7, &v15);
  ++*(a1 + 272);
  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  LOBYTE(__buf) = 88;
  return write(*(a1 + 244), &__buf, 1uLL);
}

void sub_11984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4C78(va);
  _Unwind_Resume(a1);
}

char *sub_11998(uint64_t a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      *(a1 + 8) = v6 + 16;
      return v4;
    }

    v8 = __src + 16;
    if (v6 < 0x10)
    {
      v9 = *(a1 + 8);
      *(a1 + 8) = v6;
      if (v6 == v8)
      {
LABEL_21:
        v17 = v9 <= a3 || v4 > a3;
        v18 = 16;
        if (v17)
        {
          v18 = 0;
        }

        *v4 = *&a3[v18];
        return v4;
      }
    }

    else
    {
      v9 = v6 + 16;
      *v6 = *(v6 - 1);
      *(a1 + 8) = v6 + 16;
      if (v6 == v8)
      {
        goto LABEL_21;
      }
    }

    memmove(__src + 16, __src, v6 - v8);
    v9 = *(a1 + 8);
    goto LABEL_21;
  }

  v10 = *a1;
  v11 = (&v6[-*a1] >> 4) + 1;
  if (v11 >> 60)
  {
    sub_9D30();
  }

  v12 = v7 - v10;
  if (v12 >> 3 > v11)
  {
    v11 = v12 >> 3;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF0)
  {
    v13 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (!(v13 >> 60))
    {
      operator new();
    }

    sub_26F4();
  }

  v14 = __src - v10;
  v15 = (__src - v10) >> 4;
  v16 = (16 * v15);
  if (!v15)
  {
    if (v14 < 1)
    {
      v19 = v14 >> 3;
      if (v10 == __src)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      if (!(v20 >> 60))
      {
        operator new();
      }

      sub_26F4();
    }

    v16 = (v16 - (((v14 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
  }

  *v16 = *a3;
  memcpy(v16 + 1, __src, *(a1 + 8) - __src);
  v21 = *a1;
  v22 = v16 + *(a1 + 8) - v4 + 16;
  *(a1 + 8) = v4;
  v23 = v4 - v21;
  v24 = v16 - (v4 - v21);
  memcpy(v24, v21, v23);
  v25 = *a1;
  *a1 = v24;
  *(a1 + 8) = v22;
  *(a1 + 16) = 0;
  if (v25)
  {
    operator delete(v25);
  }

  return v16;
}

void sub_11BCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

ssize_t sub_11BE4(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 152);
  v5 = (*(*(a1 + 152) + 16))(a1 + 152);
  v7 = v4[12];
  v6 = v4[13];
  if (v7 == v6)
  {
LABEL_4:
    ++*(a1 + 272);
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  while (*v7 != a2)
  {
    v7 += 16;
    if (v7 == v6)
    {
      goto LABEL_4;
    }
  }

  v8 = v6 - (v7 + 16);
  if (v6 != v7 + 16)
  {
    v9 = v5;
    memmove(v7, v7 + 16, v6 - (v7 + 16));
    v5 = v9;
  }

  *(a1 + 256) = &v7[v8];
  ++*(a1 + 272);
  if (v5)
  {
LABEL_9:
    (*(*v4 + 24))(v4);
  }

LABEL_10:
  __buf = 88;
  return write(*(a1 + 244), &__buf, 1uLL);
}

void sub_11D00(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *a3;
  if ((a2 & 1) == 0 && (v6[25] & 0x80) != 0)
  {
    *(a3 + 12) |= a4;
    v7 = *(a1 + 280);
    Current = CFAbsoluteTimeGetCurrent();

    CFRunLoopTimerSetNextFireDate(v7, Current);
  }

  else
  {
    sub_305C(a1 + 152);
    (*(*v6 + 16))(v6, a4);

    sub_2F18(a1 + 152);
  }
}

BOOL sub_11DBC(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_11E10(v4[66]);
  }

  __cxa_end_catch();

  return sub_2F18(v2 + 152);
}

void sub_11E10(unsigned int a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_11B0(&v2, a1);
    strlcpy(__dst, &v2, 0x100uLL);
    v2 = 136315650;
    v3 = "SocketServer.cpp";
    v4 = 1024;
    v5 = 75;
    v6 = 2080;
    v7 = __dst;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d %s\n", &v2, 0x1Cu);
  }
}

void sub_11EF4(uint64_t a1)
{
  v2 = *(a1 + 240);
  sub_2F18(a1 + 152);
  if (*(a1 + 136))
  {
    goto LABEL_2;
  }

  v28 = 1 << v2;
  v27 = v2 >> 5;
  while (1)
  {
    memset(&v30, 0, sizeof(v30));
    memset(&v29, 0, sizeof(v29));
    if (__darwin_check_fd_set_overflow(v2, &v30, 0))
    {
      v30.fds_bits[v27] |= v28;
    }

    v4 = *(a1 + 248);
    v3 = *(a1 + 256);
    v5 = v2;
    while (v4 != v3)
    {
      if (!*(v4 + 12))
      {
        v6 = *(*v4 + 24);
        v7 = *(*v4 + 16);
        if ((v6 & 3) != 0)
        {
          if (__darwin_check_fd_set_overflow(*(*v4 + 16), &v30, 0))
          {
            *(v30.fds_bits + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
          }

          if (v7 > v5)
          {
            v5 = v7;
          }
        }

        if ((v6 & 4) != 0 && (*(v4 + 8) & 1) == 0)
        {
          if (__darwin_check_fd_set_overflow(v7, &v29, 0))
          {
            *(v29.fds_bits + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
          }

          if (v7 > v5)
          {
            v5 = v7;
          }
        }
      }

      v4 += 16;
      v3 = *(a1 + 256);
    }

    sub_305C(a1 + 152);
    v8 = select(v5 + 1, &v30, &v29, 0, 0);
    sub_2F18(a1 + 152);
    if (v8 != -1)
    {
      v9 = *(a1 + 248);
      if (v9 != *(a1 + 256))
      {
        v10 = *(a1 + 272);
        do
        {
          while (1)
          {
            v11 = *(*v9 + 24);
            v12 = *(*v9 + 16);
            if (__darwin_check_fd_set_overflow(v12, &v30, 0) && ((*(v30.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v12) & 1) != 0)
            {
              if (v11)
              {
                v13 = 1;
              }

              else
              {
                v13 = 2;
              }

              v14 = *v9;
              if ((*(*v9 + 25) & 0x80) != 0)
              {
                *(v9 + 3) |= v13;
                v15 = *(a1 + 280);
                Current = CFAbsoluteTimeGetCurrent();
                CFRunLoopTimerSetNextFireDate(v15, Current);
              }

              else
              {
                sub_305C(a1 + 152);
                (*(*v14 + 16))(v14, v13);
                sub_2F18(a1 + 152);
              }
            }

            if (__darwin_check_fd_set_overflow(v12, &v29, 0) && ((*(v29.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v12) & 1) != 0)
            {
              v9[8] = 1;
              v17 = *v9;
              if ((*(*v9 + 25) & 0x80) != 0)
              {
                *(v9 + 3) |= 4u;
                v18 = *(a1 + 280);
                v19 = CFAbsoluteTimeGetCurrent();
                CFRunLoopTimerSetNextFireDate(v18, v19);
              }

              else
              {
                sub_305C(a1 + 152);
                (*(*v17 + 16))(v17, 4);
                sub_2F18(a1 + 152);
              }
            }

            if (*(a1 + 272) != v10)
            {
              break;
            }

            v9 += 16;
            if (v9 == *(a1 + 256))
            {
              goto LABEL_47;
            }
          }

          v9 = *(a1 + 248);
          v20 = *(a1 + 256);
          if (v20 == v9)
          {
            break;
          }

          v21 = (v20 - v9) >> 4;
          do
          {
            v22 = v21 >> 1;
            v23 = &v9[16 * (v21 >> 1)];
            v25 = *v23;
            v24 = (v23 + 2);
            v21 += ~(v21 >> 1);
            if (*(v25 + 16) <= v12)
            {
              v9 = v24;
            }

            else
            {
              v21 = v22;
            }
          }

          while (v21);
          v10 = *(a1 + 272);
        }

        while (v9 != v20);
      }

LABEL_47:
      if (__darwin_check_fd_set_overflow(v2, &v30, 0) && (v30.fds_bits[v27] & v28) != 0)
      {
        read(v2, buf, 0x20uLL);
      }

      goto LABEL_4;
    }

    if (*__error() != 9)
    {
      break;
    }

LABEL_4:
    if (*(a1 + 136) == 1)
    {
      goto LABEL_2;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v26 = *__error();
    *buf = 136315650;
    v32 = "SocketServer.cpp";
    v33 = 1024;
    v34 = 153;
    v35 = 1024;
    v36 = v26;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d select failed: %d\n", buf, 0x18u);
  }

LABEL_2:
  sub_305C(a1 + 152);
}

void sub_123CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x123D0);
  }

  _Unwind_Resume(a1);
}

void sub_123D8(uint64_t a1)
{
  sub_2F18(a1 + 152);
  v3 = *(a1 + 248);
  v2 = *(a1 + 256);
  if (v3 == v2)
  {
    goto LABEL_24;
  }

  v4 = 0;
  v5 = *(a1 + 272);
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(v3 + 3);
        if (v6)
        {
          break;
        }

        v3 += 16;
        if (v3 == v2)
        {
          goto LABEL_22;
        }
      }

      v7 = *(*v3 + 16);
      *(v3 + 3) = 0;
      if ((v6 & 1) == 0)
      {
        break;
      }

      sub_11D00(a1, 1, v3, 1);
      if ((v6 & 4) != 0)
      {
        goto LABEL_14;
      }

LABEL_8:
      v8 = *(a1 + 272);
      if (v8 != v5)
      {
        goto LABEL_15;
      }

LABEL_9:
      v3 += 16;
      v2 = *(a1 + 256);
      v4 = 1;
      if (v3 == v2)
      {
        goto LABEL_22;
      }
    }

    if ((v6 & 2) != 0)
    {
      sub_11D00(a1, 1, v3, 2);
      if ((v6 & 4) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    sub_11D00(a1, 1, v3, 4);
    v8 = *(a1 + 272);
    if (v8 == v5)
    {
      goto LABEL_9;
    }

LABEL_15:
    v3 = *(a1 + 248);
    v2 = *(a1 + 256);
    if (v2 == v3)
    {
      goto LABEL_23;
    }

    v9 = (v2 - v3) >> 4;
    do
    {
      v10 = v9 >> 1;
      v11 = &v3[16 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 16;
      v9 += ~(v9 >> 1);
      if (*(v13 + 16) <= v7)
      {
        v3 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    v4 = 1;
    v5 = v8;
  }

  while (v3 != v2);
LABEL_22:
  if ((v4 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_23:
  __buf = 88;
  write(*(a1 + 244), &__buf, 1uLL);
LABEL_24:
  sub_305C(a1 + 152);
}

uint64_t sub_12540(uint64_t result, int a2, uint64_t a3, char *a4)
{
  v5 = *a4;
  if (*a4 <= -17)
  {
    v6 = v5 & 0xF;
    if (v5 <= 0x9F)
    {
      if (v5 >= 0x90)
      {
        v7 = a4[2] == 0;
        v9 = result + 8;
        v8 = *(result + 8);
        v10 = v6 | (a4[1] << 16);
        if (!v8)
        {
LABEL_36:
          if (v7)
          {
            v27 = v10 | 0x400;
            if (!v8)
            {
LABEL_45:
              operator new();
            }
          }

          else
          {
            v28 = a4[2];
            v27 = v10 | 0x400;
            if (!v8)
            {
              goto LABEL_45;
            }
          }

          v29 = bswap32(v27);
          while (1)
          {
            while (1)
            {
              v30 = v8;
              v31 = bswap32(*(v8 + 28));
              if (v29 >= v31)
              {
                break;
              }

              v8 = *v30;
              if (!*v30)
              {
                goto LABEL_45;
              }
            }

            if (v31 >= v29)
            {
              return result;
            }

            v8 = v30[1];
            if (!v8)
            {
              goto LABEL_45;
            }
          }
        }
      }

      else
      {
        v7 = 1;
        v9 = result + 8;
        v8 = *(result + 8);
        v10 = v6 | (a4[1] << 16);
        if (!v8)
        {
          goto LABEL_36;
        }
      }

      v21 = bswap32(v10 | 0x400);
      v22 = v9;
      v23 = v8;
      do
      {
        v24 = bswap32(*(v23 + 28));
        v25 = v24 >= v21;
        v26 = v24 < v21;
        if (v25)
        {
          v22 = v23;
        }

        v23 = *(v23 + 8 * v26);
      }

      while (v23);
      if (v22 != v9 && v21 >= bswap32(*(v22 + 28)))
      {
        if (v7)
        {
          *(v22 + 40) = a2;
        }

        else
        {
          *(v22 + 32) = a4[2];
          *(v22 + 36) = a2;
          *(v22 + 40) = 0;
        }

        return result;
      }

      goto LABEL_36;
    }

    v14 = v5 >> 4;
    if (v5 >> 4 > 0xB)
    {
      v15 = (a4 + 1);
      if (v14 == 12)
      {
        v16 = *v15;
        v18 = result + 8;
        v17 = *(result + 8);
        v19 = v6;
        if (!v17)
        {
          goto LABEL_72;
        }
      }

      else if (v14 == 13)
      {
        v16 = *v15;
        v18 = result + 8;
        v17 = *(result + 8);
        v19 = v6 | 0x600;
        if (!v17)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v4 = a4[2];
        v16 = *v15;
        v18 = result + 8;
        v17 = *(result + 8);
        v19 = v6 | 0x300;
        if (!v17)
        {
          goto LABEL_72;
        }
      }

LABEL_58:
      v37 = bswap32(v19);
      v38 = v18;
      v39 = v17;
      do
      {
        v40 = bswap32(*(v39 + 28));
        v25 = v40 >= v37;
        v41 = v40 < v37;
        if (v25)
        {
          v38 = v39;
        }

        v39 = *(v39 + 8 * v41);
      }

      while (v39);
      if (v38 == v18 || v37 < bswap32(*(v38 + 28)))
      {
        while (1)
        {
          while (1)
          {
            v42 = v17;
            v43 = bswap32(*(v17 + 28));
            if (v37 >= v43)
            {
              break;
            }

            v17 = *v42;
            if (!*v42)
            {
              goto LABEL_72;
            }
          }

          if (v43 >= v37)
          {
            break;
          }

          v17 = v42[1];
          if (!v17)
          {
            goto LABEL_72;
          }
        }
      }

      else
      {
        *(v38 + 32) = v16;
        *(v38 + 33) = v4;
        *(v38 + 36) = a2;
        *(v38 + 40) = a2;
      }

      return result;
    }

    if (v14 == 10)
    {
      v16 = a4[2];
      v18 = result + 8;
      v17 = *(result + 8);
      v19 = v6 | (a4[1] << 16) | 0x700;
      if (v17)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v16 = a4[2];
      v18 = result + 8;
      v17 = *(result + 8);
      v19 = v6 | (a4[1] << 16) | 0x100;
      if (v17)
      {
        goto LABEL_58;
      }
    }

LABEL_72:
    operator new();
  }

  if (*a4 > 0xF9u)
  {
    switch(v5)
    {
      case 0xFAu:
        *(result + 28) = 0;
        *(result + 32) = a2;
        *(result + 25) = 1;
        break;
      case 0xFBu:
        *(result + 32) = a2;
        break;
      case 0xFCu:
        *(result + 32) = a2;
        v20 = *(result + 24) & 0xBF;
LABEL_56:
        *(result + 24) = v20;
        return result;
      default:
        return result;
    }

    v20 = *(result + 24) | 0x40;
    goto LABEL_56;
  }

  switch(v5)
  {
    case 0xF1u:
      v32 = *(result + 56);
      v33 = a4[1];
      v34 = v33 >> 4;
      if (v33 >> 4 == ((v32 + 1) & 7))
      {
        v35 = ((v33 & 0xF) << (4 * v34)) | *(result + 64);
        if (v33 > 0x6F)
        {
          *(result + 60) = v35;
          v36 = v32 & 0x98 | 0x47;
          v35 = 0;
          goto LABEL_80;
        }
      }

      else
      {
        v32 = 7;
        *(result + 56) = 7;
        *(result + 60) = 0;
        *(result + 76) = 0;
        *(result + 68) = 0;
        *(result + 84) = 0;
        if (v33 > 0xF)
        {
          return result;
        }

        v35 = (a4[1] & 0xF) << (4 * v34);
      }

      v36 = v34 | v32 & 0xF8 | 0x20;
LABEL_80:
      *(result + 56) = v36;
      *(result + 64) = v35;
      *(result + 68) = a2;
      v44 = *(result + 72);
      if (v44)
      {
        v45 = (a3 - v44);
        v46 = v45 * 0.0000000416666667;
        if (v45 * 0.0000000416666667 > 0.0420833333 || v46 < 0.002)
        {
          *(result + 80) = 0;
        }

        else
        {
          v47 = *(result + 80);
          if (v47 <= 0.0)
          {
            *(result + 80) = v46;
          }

          else
          {
            *(result + 80) = v45 * 0.00000000416666667 + v47 * 0.9;
          }
        }
      }

      *(result + 72) = a3;
      return result;
    case 0xF2u:
      *(result + 32) = a2;
      *(result + 28) = a4[1] | (a4[2] << 7);
      *(result + 25) = 1;
      return result;
    case 0xF8u:
      if ((*(result + 24) & 0x40) != 0)
      {
        ++*(result + 28);
        *(result + 32) = a2;
        *(result + 25) = 1;
      }

      v11 = *(result + 40);
      if (v11)
      {
        v12 = (a3 - v11);
        if (60000000.0 / v12 >= 40.0 && 60000000.0 / v12 <= 500.0)
        {
          v48 = *(result + 48);
          if (v48 <= 0.0)
          {
            v49 = v12 * 0.0000000416666667;
          }

          else
          {
            v49 = v12 * 0.00000000416666667 + v48 * 0.9;
          }

          *(result + 48) = v49;
          *(result + 40) = a3;
          return result;
        }

        *(result + 48) = 0;
      }

      *(result + 40) = a3;
      break;
  }

  return result;
}

uint64_t sub_12BBC(uint64_t a1, unsigned int a2, int a3, char *a4, int a5)
{
  *a4 = 0x80;
  *(a4 + 1) = bswap32(a2) >> 16;
  v114 = a3 - 1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 68);
  v10 = v9 >= a2;
  if (v9 >= a2)
  {
    v11 = (16 * (v8 >= a2)) | 8;
  }

  else
  {
    v11 = 16 * (v8 >= a2);
  }

  v12 = v10 || v8 >= a2;
  v13 = a4 + 3;
  if (!v12)
  {
    goto LABEL_29;
  }

  v14 = *a4 | 0x40;
  *a4 = v14;
  v13 = a4 + 5;
  v15 = v11 | 0x80;
  if (v8 < a2)
  {
LABEL_18:
    if ((v15 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (*(a1 + 32) == v114)
  {
    v14 &= ~0x80u;
    *a4 = v14;
    v15 = v11;
    v16 = *(a1 + 24);
    v17 = *(a1 + 28);
    if ((v17 & 0x70000) == 0)
    {
LABEL_14:
      if (*(a1 + 25) != 1)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v16 = *(a1 + 24) | 0x80;
    v17 = *(a1 + 28);
    if ((v17 & 0x70000) == 0)
    {
      goto LABEL_14;
    }
  }

  v16 |= HIWORD(v17) & 7 | 0x10;
LABEL_16:
  a4[5] = v16;
  if ((v16 & 0x10) == 0)
  {
    v13 = a4 + 6;
    goto LABEL_18;
  }

  v13 = a4 + 8;
  *(a4 + 3) = bswap32(v17) >> 16;
  if ((v15 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  if (*(a1 + 68) == v114)
  {
    v15 &= ~0x80u;
    *a4 = v14 & 0x7F;
    v18 = *(a1 + 56);
    *v13 = v18;
    v19 = v13 + 1;
    if ((v18 & 0x40) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v18 = *(a1 + 56) | 0x80;
    *v13 = v18;
    v19 = v13 + 1;
    if ((v18 & 0x40) != 0)
    {
LABEL_21:
      *(v13 + 1) = bswap32(*(a1 + 60));
      v13 += 5;
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  v13 = v19;
  if ((v18 & 0x20) != 0)
  {
LABEL_27:
    v20 = *(a1 + 64);
    v21 = vdupq_n_s32(v20);
    v22 = vshlq_u32(v21, xmmword_17690);
    v22.i32[3] = vshlq_u32(v21, xmmword_176A0).i32[3];
    v23 = vandq_s8(v22, xmmword_176B0);
    *v23.i8 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    *v13 = bswap32(v23.i32[0] | (v20 >> 12) & 0xF00 | v23.i32[1] | (v20 >> 20) & 0xF0 | (v20 >> 28) | (v20 << 28));
    v13 += 4;
  }

LABEL_28:
  v24 = v13 - (a4 + 3);
  a4[3] = HIBYTE(v24) & 3 | v15;
  a4[4] = v24;
LABEL_29:
  v26 = (a1 + 8);
  v25 = *a1;
  if (*a1 == a1 + 8)
  {
    return (v13 - a4);
  }

  v27 = 0;
  v112 = -1;
  v113 = &a4[a5];
  do
  {
    v28 = v25;
    while (1)
    {
      v30 = *(v28 + 10);
      v31 = v30 >= a2 || v30 == 0;
      if (v31)
      {
        break;
      }

      v32 = v28[1];
      v33 = v32;
      v34 = v28;
      if (v32)
      {
        do
        {
          v35 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v35 = v34[2];
          v31 = *v35 == v34;
          v34 = v35;
        }

        while (!v31);
      }

      v36 = v28;
      if (v32)
      {
        do
        {
          v37 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v37 = v36[2];
          v31 = *v37 == v36;
          v36 = v37;
        }

        while (!v31);
      }

      if (*a1 == v28)
      {
        *a1 = v37;
      }

      v29 = *(a1 + 8);
      --*(a1 + 16);
      sub_14A50(v29, v28);
      operator delete(v28);
      v28 = v35;
      if (v35 == v26)
      {
        goto LABEL_231;
      }
    }

    v38 = v28 + 28;
    v39 = *(v28 + 28);
    if (v39 != v112)
    {
      if ((v13 + 3) >= v113)
      {
        goto LABEL_231;
      }

      if ((*a4 & 0x20) != 0)
      {
        v41 = bswap32((*v27 << 8) & 0xFC00 | (v13 - v27)) >> 16;
        *v27 = v41;
        if ((v41 & 0x80) != 0)
        {
          v42 = *a4;
        }

        else
        {
          v42 = *a4 & 0x7F;
        }

        v40 = v42 + 1;
      }

      else
      {
        v40 = *a4 | 0x20;
      }

      *a4 = v40;
      *v13 = (8 * v39) | 0x80;
      *(v13 + 1) = 0;
      v112 = v39;
      v27 = v13;
      v13 += 3;
    }

    v43 = *(v28 + 9);
    if (v43 == v114)
    {
      v44 = 0;
    }

    else
    {
      v44 = 0x80;
    }

    v45 = *(v28 + 29);
    if (v45 <= 3)
    {
      if (*(v28 + 29))
      {
        if (v45 == 1)
        {
          if ((v13 + 3) < v113)
          {
            v111 = v39;
            v27[2] |= 0x40u;
            *v13 = v44;
            v80 = v13 + 1;
            if (v43 == v114)
            {
              *v27 &= ~0x80u;
            }

            while (1)
            {
              *v80 = *(v28 + 30) | v44;
              v80[1] = *(v28 + 32);
              v81 = v28[1];
              v82 = v28;
              if (v81)
              {
                do
                {
                  v28 = v81;
                  v81 = *v81;
                }

                while (v81);
              }

              else
              {
                do
                {
                  v28 = v82[2];
                  v31 = *v28 == v82;
                  v82 = v28;
                }

                while (!v31);
              }

              v46 = v80 + 2;
              if (v28 == v26)
              {
                goto LABEL_232;
              }

              while (1)
              {
                v84 = *(v28 + 10);
                if (v84 >= a2 || v84 == 0)
                {
                  break;
                }

                v86 = v28[1];
                v87 = v86;
                v88 = v28;
                if (v86)
                {
                  do
                  {
                    v89 = v87;
                    v87 = *v87;
                  }

                  while (v87);
                }

                else
                {
                  do
                  {
                    v89 = v88[2];
                    v31 = *v89 == v88;
                    v88 = v89;
                  }

                  while (!v31);
                }

                v90 = v28;
                if (v86)
                {
                  do
                  {
                    v91 = v86;
                    v86 = *v86;
                  }

                  while (v86);
                }

                else
                {
                  do
                  {
                    v91 = v90[2];
                    v31 = *v91 == v90;
                    v90 = v91;
                  }

                  while (!v31);
                }

                if (*a1 == v28)
                {
                  *a1 = v91;
                }

                v83 = *(a1 + 8);
                --*(a1 + 16);
                sub_14A50(v83, v28);
                operator delete(v28);
                v28 = v89;
                if (v89 == v26)
                {
                  goto LABEL_232;
                }
              }

              if (*(v28 + 28) != v111 || *(v28 + 29) != 1)
              {
                goto LABEL_228;
              }

              if ((v80 + 5) >= v113)
              {
                goto LABEL_232;
              }

              v93 = *v13;
              if (*(v28 + 9) == v114)
              {
                v44 = 0;
                *v13 = (v93 & 0x7F) + 1;
                *v27 &= ~0x80u;
              }

              else
              {
                *v13 = v93 + 1;
                v44 = 0x80;
              }

              v80 += 2;
            }
          }

          goto LABEL_231;
        }

        if (v45 == 3)
        {
          v46 = v13 + 2;
          if ((v13 + 2) < v113)
          {
            v27[2] |= 0x10u;
            *v13 = *(v28 + 32) | v44;
            v13[1] = *(v28 + 33);
            v47 = v28[1];
            if (v47)
            {
              do
              {
                v25 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v25 = v28[2];
                v31 = *v25 == v28;
                v28 = v25;
              }

              while (!v31);
            }

            goto LABEL_210;
          }

LABEL_231:
          LODWORD(v46) = v13;
          break;
        }

        goto LABEL_166;
      }

      v46 = v13 + 3;
      if ((v13 + 3) >= v113)
      {
        goto LABEL_231;
      }

      v27[2] |= 0x80u;
      *v13 = *(v28 + 32) | v44;
      *(v13 + 1) = 0;
      v62 = v28[1];
      if (v62)
      {
        do
        {
          v25 = v62;
          v62 = *v62;
        }

        while (v62);
      }

      else
      {
        do
        {
          v25 = v28[2];
          v31 = *v25 == v28;
          v28 = v25;
        }

        while (!v31);
      }

      goto LABEL_210;
    }

    if (v45 != 4)
    {
      if (v45 != 6)
      {
        if (v45 == 7)
        {
          if ((v13 + 3) < v113)
          {
            v109 = v39;
            v27[2] |= 1u;
            *v13 = v44;
            v48 = v13 + 1;
            if (v43 == v114)
            {
              *v27 &= ~0x80u;
            }

            while (1)
            {
              *v48 = *(v28 + 30) | v44;
              v48[1] = *(v28 + 32);
              v49 = v28[1];
              v50 = v28;
              if (v49)
              {
                do
                {
                  v28 = v49;
                  v49 = *v49;
                }

                while (v49);
              }

              else
              {
                do
                {
                  v28 = v50[2];
                  v31 = *v28 == v50;
                  v50 = v28;
                }

                while (!v31);
              }

              v46 = v48 + 2;
              if (v28 == v26)
              {
                goto LABEL_232;
              }

              while (1)
              {
                v52 = *(v28 + 10);
                if (v52 >= a2 || v52 == 0)
                {
                  break;
                }

                v54 = v28[1];
                v55 = v54;
                v56 = v28;
                if (v54)
                {
                  do
                  {
                    v57 = v55;
                    v55 = *v55;
                  }

                  while (v55);
                }

                else
                {
                  do
                  {
                    v57 = v56[2];
                    v31 = *v57 == v56;
                    v56 = v57;
                  }

                  while (!v31);
                }

                v58 = v28;
                if (v54)
                {
                  do
                  {
                    v59 = v54;
                    v54 = *v54;
                  }

                  while (v54);
                }

                else
                {
                  do
                  {
                    v59 = v58[2];
                    v31 = *v59 == v58;
                    v58 = v59;
                  }

                  while (!v31);
                }

                if (*a1 == v28)
                {
                  *a1 = v59;
                }

                v51 = *(a1 + 8);
                --*(a1 + 16);
                sub_14A50(v51, v28);
                operator delete(v28);
                v28 = v57;
                if (v57 == v26)
                {
                  goto LABEL_232;
                }
              }

              if (*(v28 + 28) != v109 || *(v28 + 29) != 7)
              {
LABEL_228:
                v25 = v28;
                goto LABEL_229;
              }

              if ((v48 + 5) >= v113)
              {
                goto LABEL_232;
              }

              v61 = *v13;
              if (*(v28 + 9) == v114)
              {
                v44 = 0;
                *v13 = (v61 & 0x7F) + 1;
                *v27 &= ~0x80u;
              }

              else
              {
                *v13 = v61 + 1;
                v44 = 0x80;
              }

              v48 += 2;
            }
          }

          goto LABEL_231;
        }

LABEL_166:
        v25 = v28;
        v46 = v13;
        goto LABEL_229;
      }

      v46 = v13 + 1;
      if ((v13 + 1) >= v113)
      {
        goto LABEL_231;
      }

      *v13 = *(v28 + 32) | v44;
      v94 = v28[1];
      if (v94)
      {
        do
        {
          v25 = v94;
          v94 = *v94;
        }

        while (v94);
      }

      else
      {
        do
        {
          v25 = v28[2];
          v31 = *v25 == v28;
          v28 = v25;
        }

        while (!v31);
      }

LABEL_210:
      if (v43 == v114)
      {
        *v27 &= ~0x80u;
      }

      goto LABEL_229;
    }

    v63 = v13 + 2;
    if ((v13 + 2) >= v113)
    {
      goto LABEL_231;
    }

    v64 = v28 + 4;
    v115[0] = 0;
    v115[1] = 0;
    v65 = *(v28 + 10);
    v27[2] |= 8u;
    *v13 = -3712;
    v66 = 1;
    v67 = 15;
    if (!*(v28 + 32))
    {
      goto LABEL_125;
    }

LABEL_121:
    if (*(v64 + 2) < *(v64 + 1))
    {
      ++*v13;
      if ((v63 + 2) >= v113)
      {
LABEL_237:
        LODWORD(v46) = v63;
        if (!v27)
        {
          goto LABEL_235;
        }

LABEL_233:
        v105 = bswap32((*v27 << 8) & 0xFC00 | (v46 - v27)) >> 16;
        *v27 = v105;
        LODWORD(v13) = v46;
        if ((v105 & 0x80) == 0)
        {
          *a4 &= ~0x80u;
          goto LABEL_235;
        }

        return (v13 - a4);
      }

      v107 = v66;
      v108 = v67;
      *v63 = v38[2] | v44;
      v63[1] = *(v28 + 32);
      v110 = v63 + 2;
      if (v44)
      {
        goto LABEL_132;
      }

LABEL_131:
      *v27 &= ~0x80u;
      goto LABEL_132;
    }

    while (1)
    {
LABEL_125:
      v68 = v38[2];
      *(v115 + (v68 >> 3)) |= 0x80u >> (v68 & 7);
      if ((v68 >> 3) < v67)
      {
        v67 = v68 >> 3;
      }

      if (v66 <= (v68 >> 3))
      {
        v66 = v68 >> 3;
      }

      v110 = v63;
      v107 = v66;
      v108 = v67;
      if (v65 == v114)
      {
        *v13 &= ~0x80u;
        goto LABEL_131;
      }

LABEL_132:
      v69 = v39;
      v70 = v28[1];
      if (v70)
      {
        do
        {
          v71 = v70;
          v70 = *v70;
        }

        while (v70);
      }

      else
      {
        do
        {
          v71 = v28[2];
          v31 = *v71 == v28;
          v28 = v71;
        }

        while (!v31);
      }

      if (v71 == v26)
      {
        break;
      }

      while (1)
      {
        v65 = *(v71 + 10);
        if (v65 >= a2 || v65 == 0)
        {
          break;
        }

        v74 = v71[1];
        v75 = v74;
        v76 = v71;
        if (v74)
        {
          do
          {
            v25 = v75;
            v75 = *v75;
          }

          while (v75);
        }

        else
        {
          do
          {
            v25 = v76[2];
            v31 = *v25 == v76;
            v76 = v25;
          }

          while (!v31);
        }

        v77 = v71;
        if (v74)
        {
          do
          {
            v78 = v74;
            v74 = *v74;
          }

          while (v74);
        }

        else
        {
          do
          {
            v78 = v77[2];
            v31 = *v78 == v77;
            v77 = v78;
          }

          while (!v31);
        }

        if (*a1 == v71)
        {
          *a1 = v78;
        }

        v72 = *(a1 + 8);
        --*(a1 + 16);
        sub_14A50(v72, v71);
        operator delete(v71);
        v71 = v25;
        if (v25 == v26)
        {
          goto LABEL_213;
        }
      }

      v38 = v71 + 28;
      if (*(v71 + 28) != v69 || *(v71 + 29) != 4)
      {
        break;
      }

      v39 = v69;
      v64 = v71 + 4;
      if (*(v71 + 9) == v114)
      {
        v44 = 0;
      }

      else
      {
        v44 = 0x80;
      }

      v28 = v71;
      v63 = v110;
      v66 = v107;
      v67 = v108;
      if (*(v71 + 32))
      {
        goto LABEL_121;
      }
    }

    v25 = v71;
LABEL_213:
    v95 = v107 - v108;
    if (v107 < v108)
    {
      v46 = v110;
      goto LABEL_229;
    }

    LODWORD(v63) = v110;
    if (&v110[v95 + 1] >= v113)
    {
      goto LABEL_237;
    }

    v13[1] = v107 | (16 * v108);
    if ((v95 & 0x80000000) != 0)
    {
      v46 = v110;
    }

    else
    {
      v96 = v95 + 1;
      v97 = v115 + v108;
      if (v95 < 0x1F || (v110 - v97) < 0x20)
      {
        v98 = v95 + 1;
        v46 = v110;
        goto LABEL_220;
      }

      v97 += v96 & 0x7FFFFFE0;
      v98 = v96 - (v96 & 0x7FFFFFE0);
      v46 = &v110[v96 & 0x7FFFFFE0];
      v101 = v110 + 16;
      v102 = (&v115[2] + v108);
      v103 = v96 & 0x7FFFFFE0;
      do
      {
        v104 = *v102;
        *(v101 - 1) = *(v102 - 1);
        *v101 = v104;
        v101 += 2;
        v102 += 2;
        v103 -= 32;
      }

      while (v103);
      if ((v96 & 0x7FFFFFE0) != v96)
      {
LABEL_220:
        v99 = v98 + 1;
        do
        {
          v100 = *v97++;
          *v46++ = v100;
          --v99;
        }

        while (v99 > 1);
      }
    }

LABEL_229:
    v13 = v46;
  }

  while (v25 != v26);
LABEL_232:
  if (v27)
  {
    goto LABEL_233;
  }

LABEL_235:
  LODWORD(v13) = v46;
  return (v13 - a4);
}

uint64_t sub_137C4(uint64_t a1, unsigned __int16 *a2, int a3, MIDITimeStamp time, uint64_t a5)
{
  v9 = *a2;
  v11 = (a2 + 1);
  v10 = *a2;
  if ((*a2 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v12 = *v11;
  if ((v12 & 0x10) != 0)
  {
    v13 = (__PAIR64__(v12, bswap32(*(a2 + 3))) >> 16) & 0x7FFFF;
    v11 = a2 + 5;
    v14 = *(a1 + 24);
    if ((v12 & 0x40) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    v15 = a2;
    v16 = -4;
    goto LABEL_16;
  }

  LODWORD(v13) = 0;
  v11 = a2 + 3;
  v14 = *(a1 + 24);
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v14 & 0x40) == 0)
  {
    v15 = a2;
    if (v13)
    {
      data = -14;
      v46 = v13 & 0x7F;
      v47 = (v13 >> 7) & 0x7F;
      sub_22E0(a5, time, 3, &data);
      sub_12540(a1, a3, time, &data);
      v16 = -5;
    }

    else
    {
      v16 = -6;
    }

LABEL_16:
    data = v16;
    sub_22E0(a5, time, 1, &data);
    sub_12540(a1, a3, time, &data);
    a2 = v15;
    goto LABEL_17;
  }

  v17 = (v13 - *(a1 + 28));
  if (v17 >= 1)
  {
    v18 = *(a1 + 48);
    if (v18 > 0.0)
    {
      v42 = a2;
      data = -8;
      v19 = (v18 * 24000000.0);
      v20 = time - v19 * v17;
      v21 = v17 + 1;
      do
      {
        sub_22E0(a5, v20, 1, &data);
        sub_12540(a1, a3, v20, &data);
        v20 += v19;
        --v21;
      }

      while (v21 > 1);
      a2 = v42;
    }
  }

LABEL_17:
  if ((v9 & 8) == 0)
  {
    return a2 + (bswap32(v10 & 0xFFFFFF03) >> 16);
  }

  v22 = (v11 + 1);
  v23 = *v11;
  if ((*v11 & 0x40) == 0)
  {
    v24 = 0;
    if ((*v11 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v24 = bswap32(*(v11 + 1));
  v22 = (v11 + 5);
  if ((*v11 & 0x20) != 0)
  {
LABEL_22:
    v25 = *v22;
  }

LABEL_23:
  if ((*v11 & 0x40) == 0 || (*(a1 + 56) & 0x40) == 0 || *(a1 + 80) <= 0.0)
  {
    return a2 + (bswap32(v10 & 0xFFFFFF03) >> 16);
  }

  v43 = a2;
  sub_2478(v44, (v24 >> 29) & 3);
  v26 = *(a1 + 80);
  v27 = (v23 + 1) & 7;
  v41 = v27;
  if ((v23 & 0x40) != 0)
  {
    v28 = v27 + 4 * sub_25F4(v44, v24);
    v32 = *(a1 + 56);
    v30 = (v32 + 1) & 7;
    if ((v32 & 0x40) != 0)
    {
      goto LABEL_28;
    }

LABEL_30:
    v31 = v30 | 0xFFFFFFF8;
    goto LABEL_31;
  }

  v28 = v27 | 0xFFFFFFF8;
  v29 = *(a1 + 56);
  v30 = (v29 + 1) & 7;
  if ((v29 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_28:
  v31 = v30 + 4 * sub_25F4(v44, *(a1 + 60));
LABEL_31:
  v33 = (v28 - v31);
  if ((v33 - 1) <= 0x30)
  {
    v40 = *(a1 + 56);
    v34 = sub_24D0(v44, *(a1 + 60), 2);
    if (v28 > v31)
    {
      v35 = v34;
      v36 = (v26 * 24000000.0);
      LOBYTE(v37) = (v40 + 1) & 7;
      v38 = time - v33 * v36;
      do
      {
        data = -15;
        v46 = (v35 >> (4 * v37)) & 0xF | (16 * v37);
        sub_22E0(a5, v38, 2, &data);
        sub_12540(a1, a3, v38, &data);
        v37 = (v37 + 1) & 7;
        if (!v37)
        {
          v35 = sub_24D0(v44, v35, 2);
        }

        v38 += v36;
        LODWORD(v33) = v33 - 1;
      }

      while (v33);
    }

    if ((*(a1 + 60) != v24 || ((*(a1 + 56) + 1) & 7) != v41) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v49 = "RecoveryJournal.cpp";
      v50 = 1024;
      v51 = 640;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d MTC recovery error\n", buf, 0x12u);
    }
  }

  a2 = v43;
  return a2 + (bswap32(v10 & 0xFFFFFF03) >> 16);
}

unsigned __int8 *sub_13BD4(unsigned __int8 *result, unsigned __int8 *a2, int a3, int a4, int a5, MIDITimeStamp time, uint64_t a7)
{
  v7 = a7;
  v10 = result;
  v11 = a2 + 3;
  v121 = a5 - 1;
  v12 = *a2;
  v120 = result;
  if (a5 - a4 != 1 || *a2 < 0)
  {
    if ((v12 & 0x40) != 0)
    {
      result = sub_137C4(result, (a2 + 3), v121, time, a7);
      v11 = result;
      LOBYTE(v12) = *a2;
    }

    if ((v12 & 0x20) == 0)
    {
      return result;
    }

    v48 = 0;
    v109 = (v12 & 0xF) + 1;
    v49 = (v10 + 8);
    while (1)
    {
      v111 = v48;
      v50 = v11 + 3;
      v115 = *v11;
      v51 = (v115 >> 3) & 0xF;
      v52 = v11[2];
      v53 = v121;
      if ((v52 & 0x80000000) == 0)
      {
        break;
      }

      v54 = *v49;
      if (!*v49)
      {
        goto LABEL_83;
      }

      v55 = v51 << 24;
      v56 = v49;
      do
      {
        v57 = bswap32(*(v54 + 28));
        v33 = v57 >= v55;
        v58 = v57 < v55;
        if (v33)
        {
          v56 = v54;
        }

        v54 = *(v54 + 8 * v58);
      }

      while (v54);
      if (v56 == v49 || v55 < bswap32(*(v56 + 7)) || *(v56 + 32) != (*v50 & 0x7F))
      {
LABEL_83:
        data = v51 | 0xC0;
        v123 = *v50 & 0x7F;
        sub_22E0(v7, time, 2, &data);
        result = sub_12540(v10, v121, time, &data);
      }

      v50 = v11 + 6;
      v113 = v52;
      if ((v52 & 0x40) != 0)
      {
        goto LABEL_90;
      }

LABEL_85:
      v59 = v113;
      if ((v113 & 0x10) != 0)
      {
        v68 = *v49;
        if (!*v49)
        {
          goto LABEL_113;
        }

        v69 = bswap32(v51 | 0x300);
        v70 = v49;
        do
        {
          v71 = bswap32(*(v68 + 28));
          v33 = v71 >= v69;
          v72 = v71 < v69;
          if (v33)
          {
            v70 = v68;
          }

          v68 = *(v68 + 8 * v72);
        }

        while (v68);
        if (v70 == v49 || v69 < bswap32(*(v70 + 7)) || *(v70 + 32) != (*v50 & 0x7F) || *(v70 + 33) != v50[1])
        {
LABEL_113:
          data = v51 | 0xE0;
          v123 = *v50 & 0x7F;
          v124 = v50[1];
          sub_22E0(v7, time, 3, &data);
          result = sub_12540(v10, v121, time, &data);
        }

        v50 += 2;
        if ((v113 & 8) != 0)
        {
LABEL_115:
          v117 = v11;
          v107 = v50[1];
          v73 = v50 + 2;
          v74 = *v50 & 0x7F;
          if ((*v50 & 0x7F) == 0)
          {
LABEL_132:
            v82 = v107 >> 4;
            v83 = v107 & 0xF;
            if (v83 >= v107 >> 4)
            {
              v108 = v83 - v82;
              v84 = 8 * v82;
              v85 = v73;
              do
              {
                v87 = *v85++;
                v86 = v87;
                if (v87)
                {
                  v88 = 128;
                  do
                  {
                    if ((v88 & v86) != 0)
                    {
                      v89 = *v49;
                      if (*v49)
                      {
                        v90 = bswap32((v115 >> 3) & 0xF | ((v84 & 0x7F) << 16) | 0x400);
                        v91 = v49;
                        do
                        {
                          v92 = bswap32(*(v89 + 28));
                          v33 = v92 >= v90;
                          v93 = v92 < v90;
                          if (v33)
                          {
                            v91 = v89;
                          }

                          v89 = *(v89 + 8 * v93);
                        }

                        while (v89);
                        if (v91 != v49 && v90 >= bswap32(*(v91 + 7)) && *(v91 + 32) && *(v91 + 10) < *(v91 + 9))
                        {
                          data = (v115 >> 3) | 0x90;
                          v123 = v84;
                          v124 = 0;
                          sub_22E0(a7, time, 3, &data);
                          result = sub_12540(v120, v121, time, &data);
                        }
                      }
                    }

                    ++v84;
                    v33 = v88 >= 2;
                    v88 >>= 1;
                  }

                  while (v33);
                }

                else
                {
                  v84 += 8;
                }

                v29 = v82++ == v83;
              }

              while (!v29);
              v50 = &v73[v108 + 1];
              v11 = v117;
              v7 = a7;
              v10 = v120;
              v53 = v121;
              v59 = v113;
              if ((v113 & 2) == 0)
              {
                goto LABEL_88;
              }
            }

            else
            {
              v50 = v73;
              v10 = v120;
              v11 = v117;
              if ((v113 & 2) == 0)
              {
                goto LABEL_88;
              }
            }

LABEL_155:
            v94 = *v49;
            if (!*v49)
            {
              goto LABEL_164;
            }

            v95 = bswap32(v51 | 0x600);
            v96 = v49;
            do
            {
              v97 = bswap32(*(v94 + 28));
              v33 = v97 >= v95;
              v98 = v97 < v95;
              if (v33)
              {
                v96 = v94;
              }

              v94 = *(v94 + 8 * v98);
            }

            while (v94);
            if (v96 == v49 || v95 < bswap32(*(v96 + 7)) || *(v96 + 32) != (*v50 & 0x7F))
            {
LABEL_164:
              data = (v115 >> 3) | 0xD0;
              v123 = *v50 & 0x7F;
              sub_22E0(v7, time, 2, &data);
              result = sub_12540(v10, v53, time, &data);
            }

            ++v50;
            if ((v59 & 1) == 0)
            {
              goto LABEL_70;
            }

LABEL_166:
            v100 = *v50;
            v99 = v50 + 1;
            v101 = v100 & 0x7F;
            do
            {
              v102 = *v49;
              if (!*v49)
              {
                goto LABEL_167;
              }

              v103 = bswap32((v115 >> 3) & 0xF | ((*v99 & 0x7F) << 16) | 0x700);
              v104 = v49;
              do
              {
                v105 = bswap32(*(v102 + 28));
                v33 = v105 >= v103;
                v106 = v105 < v103;
                if (v33)
                {
                  v104 = v102;
                }

                v102 = *(v102 + 8 * v106);
              }

              while (v102);
              if (v104 == v49 || v103 < bswap32(*(v104 + 7)) || *(v104 + 32) != (v99[1] & 0x7F))
              {
LABEL_167:
                data = v51 | 0xA0;
                v123 = *v99 & 0x7F;
                v124 = v99[1];
                sub_22E0(v7, time, 3, &data);
                result = sub_12540(v10, v53, time, &data);
              }

              v99 += 2;
              v62 = v101-- <= 0;
            }

            while (!v62);
            goto LABEL_70;
          }

          while (2)
          {
            v75 = v73;
            v76 = v50[2] & 0x7F;
            v77 = *v49;
            if (!*v49)
            {
              goto LABEL_128;
            }

            v78 = bswap32(v51 | (v76 << 16) | 0x400);
            v79 = v49;
            do
            {
              v80 = bswap32(*(v77 + 28));
              v33 = v80 >= v78;
              v81 = v80 < v78;
              if (v33)
              {
                v79 = v77;
              }

              v77 = *(v77 + 8 * v81);
            }

            while (v77);
            if (v79 != v49 && v78 >= bswap32(*(v79 + 7)) && *(v79 + 32) && *(v79 + 10) < *(v79 + 9))
            {
              if (*(v79 + 32) != v50[3])
              {
                data = (v115 >> 3) | 0x90;
                v123 = v76;
                v124 = 0;
                sub_22E0(v7, time, 3, &data);
                goto LABEL_129;
              }
            }

            else
            {
LABEL_128:
              data = (v115 >> 3) | 0x90;
              v123 = v76;
LABEL_129:
              v124 = v50[3];
              sub_22E0(v7, time, 3, &data);
              result = sub_12540(v120, v121, time, &data);
            }

            v73 += 2;
            v50 = v75;
            v62 = v74-- <= 1;
            if (v62)
            {
              goto LABEL_132;
            }

            continue;
          }
        }
      }

      else if ((v113 & 8) != 0)
      {
        goto LABEL_115;
      }

      if ((v113 & 2) != 0)
      {
        goto LABEL_155;
      }

LABEL_88:
      if (v59)
      {
        goto LABEL_166;
      }

LABEL_70:
      v11 += bswap32(*v11 & 0xFF03) >> 16;
      v48 = v111 + 1;
      if (v111 + 1 == v109)
      {
        return result;
      }
    }

    v113 = v11[2];
    if ((v52 & 0x40) == 0)
    {
      goto LABEL_85;
    }

LABEL_90:
    v60 = *v50++;
    v61 = v60 & 0x7F;
    do
    {
      v63 = *v49;
      if (!*v49)
      {
        goto LABEL_91;
      }

      v64 = bswap32((v115 >> 3) & 0xF | ((*v50 & 0x7F) << 16) | 0x100);
      v65 = v49;
      do
      {
        v66 = bswap32(*(v63 + 28));
        v33 = v66 >= v64;
        v67 = v66 < v64;
        if (v33)
        {
          v65 = v63;
        }

        v63 = *(v63 + 8 * v67);
      }

      while (v63);
      if (v65 == v49 || v64 < bswap32(*(v65 + 7)) || *(v65 + 32) != (v50[1] & 0x7F))
      {
LABEL_91:
        data = (v115 >> 3) | 0xB0;
        v123 = *v50 & 0x7F;
        v124 = v50[1];
        sub_22E0(v7, time, 3, &data);
        result = sub_12540(v10, v121, time, &data);
      }

      v50 += 2;
      v62 = v61-- <= 0;
    }

    while (!v62);
    goto LABEL_85;
  }

  if (v12 >= 0x40)
  {
    result = sub_137C4(result, (a2 + 3), v121, time, a7);
    v11 = result;
    LOBYTE(v12) = *a2;
  }

  if ((v12 & 0x20) != 0)
  {
    v13 = 0;
    v110 = (v12 & 0xF) + 1;
    v14 = (v10 + 8);
    while (1)
    {
      v116 = v11;
      v15 = v11 + 3;
      v16 = *v11;
      if (v16 < 0)
      {
        goto LABEL_7;
      }

      v17 = v116[2];
      if (v17 < 0)
      {
        break;
      }

      v18 = a7;
      v119 = v116[2];
      if ((v17 & 0x40) != 0)
      {
        goto LABEL_15;
      }

LABEL_21:
      v112 = v13;
      if ((v119 & 0x10) != 0)
      {
        if ((*v15 & 0x80000000) == 0)
        {
          data = (v16 >> 3) | 0xE0;
          v123 = *v15 & 0x7F;
          v124 = v15[1];
          sub_22E0(v18, time, 3, &data);
          result = sub_12540(v10, v121, time, &data);
        }

        v15 += 2;
      }

      v114 = v16;
      if ((v119 & 8) != 0)
      {
        v23 = *v15 & 0x7F;
        v24 = v15[1];
        v25 = v24 >> 4;
        v26 = v24 & 0xF;
        if ((*v15 & 0x80) != 0)
        {
          if ((*v15 & 0x7F) != 0)
          {
            v39 = v23 + 1;
            v40 = v15;
            do
            {
              v42 = v40[2];
              v40 += 2;
              v41 = v42;
              if ((v42 & 0x80000000) == 0)
              {
                data = (v16 >> 3) | 0x90;
                v123 = v41;
                v124 = v15[3];
                sub_22E0(a7, time, 3, &data);
                result = sub_12540(v10, v121, time, &data);
              }

              --v39;
              v15 = v40;
            }

            while (v39 > 1);
          }

          else
          {
            v40 = v15;
          }

          v15 = &v40[v26 - v25 + 3];
        }

        else
        {
          v15 += 2 * v23 + 2;
          if (v25 <= v26)
          {
            v27 = v16 >> 3;
            v28 = 8 * v25;
            do
            {
              v31 = *v15++;
              v30 = v31;
              if (v31)
              {
                v32 = 128;
                do
                {
                  if ((v32 & v30) != 0)
                  {
                    v34 = *v14;
                    if (*v14)
                    {
                      v35 = bswap32(v27 & 0xFF80FFFF | ((v28 & 0x7F) << 16) | 0x400);
                      v36 = v14;
                      do
                      {
                        v37 = bswap32(*(v34 + 28));
                        v33 = v37 >= v35;
                        v38 = v37 < v35;
                        if (v33)
                        {
                          v36 = v34;
                        }

                        v34 = *(v34 + 8 * v38);
                      }

                      while (v34);
                      if (v36 != v14 && v35 >= bswap32(*(v36 + 7)) && *(v36 + 32) && *(v36 + 10) < *(v36 + 9))
                      {
                        data = (v114 >> 3) | 0x90;
                        v123 = v28;
                        v124 = 0;
                        sub_22E0(a7, time, 3, &data);
                        result = sub_12540(v120, v121, time, &data);
                      }
                    }
                  }

                  ++v28;
                  v33 = v32 >= 2;
                  v32 >>= 1;
                }

                while (v33);
              }

              else
              {
                v28 += 8;
              }

              v29 = v25++ == v26;
            }

            while (!v29);
          }
        }
      }

      if ((v119 & 2) != 0)
      {
        v10 = v120;
        v13 = v112;
        v43 = v114;
        if ((*v15 & 0x80000000) == 0)
        {
          data = (v114 >> 3) | 0xD0;
          v123 = *v15 & 0x7F;
          sub_22E0(a7, time, 2, &data);
          result = sub_12540(v120, v121, time, &data);
        }

        ++v15;
        if ((v119 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_60:
        v44 = *v15;
        if ((v44 & 0x80000000) == 0)
        {
          v45 = v15 + 1;
          v46 = (v43 >> 3) | 0xFFFFFFA0;
          v47 = v44 + 1;
          do
          {
            if ((*v45 & 0x80000000) == 0)
            {
              data = v46;
              v123 = *v45 & 0x7F;
              v124 = v45[1];
              sub_22E0(a7, time, 3, &data);
              result = sub_12540(v10, v121, time, &data);
            }

            v45 += 2;
            v22 = __OFSUB__(v47--, 1);
          }

          while (!((v47 < 0) ^ v22 | (v47 == 0)));
        }

        goto LABEL_7;
      }

      v10 = v120;
      v13 = v112;
      v43 = v114;
      if (v119)
      {
        goto LABEL_60;
      }

LABEL_7:
      v11 = &v116[bswap32(*v116 & 0xFF03) >> 16];
      if (++v13 == v110)
      {
        return result;
      }
    }

    v19 = *v15;
    v18 = a7;
    if ((v19 & 0x80000000) == 0)
    {
      data = (v16 >> 3) | 0xC0;
      v123 = v19;
      sub_22E0(a7, time, 2, &data);
      result = sub_12540(v10, v121, time, &data);
    }

    v15 = v116 + 6;
    v119 = v17;
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    v20 = *v15 & 0x7F;
    if ((*v15 & 0x80) != 0)
    {
      v15 += 2 * (v20 + 1) + 1;
    }

    else
    {
      ++v15;
      v21 = v20 + 1;
      do
      {
        if ((*v15 & 0x80000000) == 0)
        {
          data = (v16 >> 3) | 0xB0;
          v123 = *v15 & 0x7F;
          v124 = v15[1];
          sub_22E0(v18, time, 3, &data);
          result = sub_12540(v10, v121, time, &data);
        }

        v15 += 2;
        v22 = __OFSUB__(v21--, 1);
      }

      while (!((v21 < 0) ^ v22 | (v21 == 0)));
    }

    goto LABEL_21;
  }

  return result;
}

void sub_14774(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 88) != a2)
  {
    v5 = (a1 + 8);
    v4 = *a1;
    if (*a1 != a1 + 8)
    {
      do
      {
        v7 = *(v4 + 10);
        v8 = v4[1];
        v9 = v7 >= a2 || v7 == 0;
        if (v9)
        {
          if (v8)
          {
            do
            {
              v10 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v10 = v4[2];
              v9 = *v10 == v4;
              v4 = v10;
            }

            while (!v9);
          }
        }

        else
        {
          v11 = v4[1];
          v12 = v4;
          if (v8)
          {
            do
            {
              v10 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v10 = v12[2];
              v9 = *v10 == v12;
              v12 = v10;
            }

            while (!v9);
          }

          v13 = v4;
          if (v8)
          {
            do
            {
              v14 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v14 = v13[2];
              v9 = *v14 == v13;
              v13 = v14;
            }

            while (!v9);
          }

          if (*a1 == v4)
          {
            *a1 = v14;
          }

          v6 = *(a1 + 8);
          --*(a1 + 16);
          sub_14A50(v6, v4);
          operator delete(v4);
        }

        v4 = v10;
      }

      while (v10 != v5);
    }

    *(a1 + 88) = a2;
  }
}

uint64_t *sub_148A4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t **sub_14A50(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (!v21)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v21 + 24) == 1)
      {
LABEL_62:
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      else
      {
        v20 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
  }

  else
  {
    *(v26 + 24) = 1;
    *(v7 + 24) = 0;
    v27 = *v26;
    v7[1] = *v26;
    if (v27)
    {
      *(v27 + 16) = v7;
    }

    v28 = v7[2];
    v26[2] = v28;
    v28[*v28 != v7] = v26;
    *v26 = v7;
    v7[2] = v26;
    v25 = v7;
  }

  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void sub_14E4C()
{
  if (__cxa_guard_acquire(&qword_200C0))
  {
    v0 = os_log_create("com.apple.coremidi", "rtpdrv");
    v1 = sub_11618(v0, &qword_200B8);

    __cxa_guard_release(v1);
  }
}

void sub_14EA8()
{
  if (__cxa_guard_acquire(&qword_200C0))
  {
    v0 = os_log_create("com.apple.coremidi", "rtpdrv");
    v1 = sub_11618(v0, &qword_200B8);
    __cxa_guard_release(v1);
  }
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}