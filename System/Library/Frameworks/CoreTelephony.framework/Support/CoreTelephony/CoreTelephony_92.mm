void sub_1005F2E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    if (*(v25 + 63) < 0)
    {
      operator delete(*(v25 + 40));
    }

    v27 = *(v25 + 16);
    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F2F08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005F2F54(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = *(a2 + 24);
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = *(a2 + 88);
  sub_10002D728((a1 + 96), (a2 + 96));
  sub_1002030F8((a1 + 104), (a2 + 104));
  v7 = *(a2 + 112);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 112) = v7;
  return a1;
}

void sub_1005F3024(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005F3054(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        v17 = 0;
        v16 = 0u;
        memset(v15, 0, sizeof(v15));
        sub_100A34C5C(v15);
        sub_100A3625C(v15);
        sub_10039EF40(*(&v16 + 1));
        PB::Data::assign(*(*(&v16 + 1) + 8), (v1 + 24), (v1 + 40));
        v6 = *(v1 + 128);
        if (v6 != *(v1 + 136))
        {
          v13 = 0u;
          memset(v14, 0, 24);
          memset(__p, 0, sizeof(__p));
          *buf = 0u;
          sub_100633230(buf);
          sub_10039F83C(v6, buf);
          sub_1005B70B8();
        }

        v7 = *(v3 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [UpdateSubscriptionInfoRsp]", buf, 2u);
        }

        if (*(v1 + 63) < 0)
        {
          sub_100005F2C(buf, *(v1 + 40), *(v1 + 48));
        }

        else
        {
          *buf = *(v1 + 40);
          __p[0] = *(v1 + 56);
        }

        if (*(v1 + 87) < 0)
        {
          sub_100005F2C(&__p[1], *(v1 + 64), *(v1 + 72));
        }

        else
        {
          *&__p[1] = *(v1 + 64);
          __p[3] = *(v1 + 80);
        }

        LOWORD(v13) = *(v1 + 88);
        sub_10002D728(&v13 + 1, (v1 + 96));
        sub_1002030F8(v14, (v1 + 104));
        *(&v14[0] + 1) = *(v1 + 112);
        *(v14 + 14) = *(v1 + 118);
        sub_1005E31C8(v3, buf, v15);
        sub_1002030AC(v14);
        sub_10002D760(&v13 + 1);
        if (SHIBYTE(__p[3]) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(*buf);
        }

        sub_100A34FF0(v15);
      }

      sub_100004A34(v5);
    }
  }

  sub_1005F32D0(&v10);
  return sub_1000049E0(&v9);
}

void sub_1005F326C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a26);
  sub_100004A34(v26);
  sub_1005F32D0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005F32D0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = (v1 + 128);
    sub_10016BF8C(&v3);
    sub_1002030AC((v1 + 104));
    sub_10002D760((v1 + 96));
    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1005F336C(uint64_t a1)
{
  *a1 = off_101E69EE8;
  sub_1002030AC((a1 + 96));
  sub_10002D760((a1 + 88));
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1005F33E4(uint64_t a1)
{
  *a1 = off_101E69EE8;
  sub_1002030AC((a1 + 96));
  sub_10002D760((a1 + 88));
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1005F3520(uint64_t a1)
{
  sub_1002030AC((a1 + 96));
  sub_10002D760((a1 + 88));
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1005F3594(uint64_t a1)
{
  sub_1002030AC((a1 + 96));
  sub_10002D760((a1 + 88));
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_1005F3604(uint64_t a1, unsigned __int8 *a2)
{
  v17 = 0;
  *v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  *v14 = 0u;
  *v11 = 0u;
  *v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  *v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  sub_10052D458(&v5, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v18[4] = *(a1 + 8);
  v18[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v18[6] = v4;
  if (*(a1 + 55) < 0)
  {
    sub_100005F2C(v19, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *v19 = *(a1 + 32);
    v19[2] = *(a1 + 48);
  }

  if (*(a1 + 79) < 0)
  {
    sub_100005F2C(v20, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    *v20 = *(a1 + 56);
    v20[2] = *(a1 + 72);
  }

  v21 = *(a1 + 80);
  sub_10002D728(&v22, (a1 + 88));
  sub_1002030F8(&v23, (a1 + 96));
  v24[0] = *(a1 + 104);
  *(v24 + 6) = *(a1 + 110);
  v25 = *(a1 + 120);
  sub_1005F3FE8(v26, &v5);
  v18[0] = 0;
  v18[1] = 0;
  sub_100004AA0(v18, (v4 + 8));
  operator new();
}

void sub_1005F39F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a2)
  {
    if (*(v47 + 47) < 0)
    {
      operator delete(*(v47 + 24));
    }

    v49 = *(v47 + 8);
    if (v49)
    {
      std::__shared_weak_count::__release_weak(v49);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F3A9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005F3AE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  *(a1 + 72) = *(a2 + 72);
  sub_10002D728((a1 + 80), (a2 + 80));
  sub_1002030F8((a1 + 88), (a2 + 88));
  v7 = *(a2 + 96);
  *(a1 + 102) = *(a2 + 102);
  *(a1 + 96) = v7;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void sub_1005F3BB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005F3BE8(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*v1)
      {
LABEL_22:
        sub_100004A34(v5);
        goto LABEL_23;
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      memset(v27, 0, sizeof(v27));
      sub_100A34C5C(v27);
      sub_100A362EC(v27);
      sub_10039EF40(*(&v28 + 1));
      PB::Data::assign(*(*(&v28 + 1) + 8), (v1 + 112), (v1 + 128));
      v6 = *(v1 + 128);
      v7 = *(&v28 + 1);
      *(*(&v28 + 1) + 32) |= 2u;
      if (v6 == 2)
      {
        *(v7 + 28) = 0;
        v8 = *(v1 + 128);
        if (v8 == 2)
        {
          v9 = *(&v28 + 1);
          v10 = *(v1 + 136);
          *(*(&v28 + 1) + 32) |= 1u;
          *(v9 + 24) = v10;
LABEL_9:
          v12 = *(v3 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [FetchSubscriptionInfoRsp]", buf, 2u);
          }

          if (*(v1 + 47) < 0)
          {
            sub_100005F2C(buf, *(v1 + 24), *(v1 + 32));
          }

          else
          {
            *buf = *(v1 + 24);
            v20 = *(v1 + 40);
          }

          if (*(v1 + 71) < 0)
          {
            sub_100005F2C(&__p, *(v1 + 48), *(v1 + 56));
          }

          else
          {
            __p = *(v1 + 48);
            v22 = *(v1 + 64);
          }

          v23 = *(v1 + 72);
          sub_10002D728(&v24, (v1 + 80));
          sub_1002030F8(&v25, (v1 + 88));
          v26[0] = *(v1 + 96);
          *(v26 + 6) = *(v1 + 102);
          sub_1005E31C8(v3, buf, v27);
          sub_1002030AC(&v25);
          sub_10002D760(&v24);
          if (SHIBYTE(v22) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v20) < 0)
          {
            operator delete(*buf);
          }

          sub_100A34FF0(v27);
          goto LABEL_22;
        }

        if (v8 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v15 = &ctu::ResultIsNotError::~ResultIsNotError;
          ctu::ResultIsNotError::ResultIsNotError(exception);
          goto LABEL_29;
        }
      }

      else
      {
        *(v7 + 28) = 1;
        sub_1006CCEE0(*(&v28 + 1));
        v11 = *(v1 + 128);
        if (v11 == 1)
        {
          sub_10039F83C((v1 + 136), *(*(&v28 + 1) + 16));
          goto LABEL_9;
        }

        if (v11 == 2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v15 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(exception);
          goto LABEL_29;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      v15 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_29:
      __cxa_throw(exception, v16, v15);
    }
  }

LABEL_23:
  sub_1005F3F4C(&v18);
  return sub_1000049E0(&v17);
}

void sub_1005F3EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);
  sub_100A34FF0(&a26);
  sub_100004A34(v26);
  sub_1005F3F4C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005F3F4C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 128) == 1)
    {
      sub_10011289C(v1 + 136);
    }

    *(v1 + 128) = 0;
    sub_1002030AC((v1 + 88));
    sub_10002D760((v1 + 80));
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1005F3FE8(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_1005F4054(a1, a2);
  return a1;
}

void sub_1005F4030(_Unwind_Exception *exception_object)
{
  if (*v1 == 1)
  {
    sub_10011289C((v1 + 8));
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_1005F4054(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 2)
  {
    sub_10052D590(a1, a2 + 8);
  }

  else if (v3 == 1)
  {
    sub_100330430(a1, (a2 + 8));
  }

  return a1;
}

uint64_t sub_1005F40A8(uint64_t a1)
{
  *a1 = off_101E69F68;
  sub_1002030AC((a1 + 112));
  sub_10002D760((a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1005F4120(uint64_t a1)
{
  *a1 = off_101E69F68;
  sub_1002030AC((a1 + 112));
  sub_10002D760((a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1005F425C(uint64_t a1)
{
  sub_1002030AC((a1 + 112));
  sub_10002D760((a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1005F42D0(uint64_t a1)
{
  sub_1002030AC((a1 + 112));
  sub_10002D760((a1 + 104));
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_1005F4340(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v9 = v4;
  sub_100004AA0(&v7, (v4 + 8));
  v5 = v8;
  v10 = v7;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v5);
  }

  v12 = *(a1 + 32);
  if (*(a1 + 71) < 0)
  {
    sub_100005F2C(v13, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *v13 = *(a1 + 48);
    v13[2] = *(a1 + 64);
  }

  if (*(a1 + 95) < 0)
  {
    sub_100005F2C(__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__p = *(a1 + 72);
    __p[2] = *(a1 + 88);
  }

  v15 = *(a1 + 96);
  sub_10002D728(&v16, (a1 + 104));
  sub_1002030F8(&v17, (a1 + 112));
  v6 = *(a1 + 126);
  v18[0] = *(a1 + 120);
  *(v18 + 6) = v6;
  memset(v19, 0, sizeof(v19));
  sub_1000E2C30(v19, *a2, a2[1], 0x6F96F96F96F96F97 * ((a2[1] - *a2) >> 3));
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (v4 + 8));
  operator new();
}

void sub_1005F4660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    if (*(v23 + 63) < 0)
    {
      operator delete(*(v23 + 40));
    }

    v25 = *(v23 + 16);
    if (v25)
    {
      std::__shared_weak_count::__release_weak(v25);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F4708(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005F4754(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = *(a2 + 24);
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = *(a2 + 88);
  sub_10002D728((a1 + 96), (a2 + 96));
  sub_1002030F8((a1 + 104), (a2 + 104));
  v7 = *(a2 + 112);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 112) = v7;
  return a1;
}

void sub_1005F4824(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005F4854(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [PendingProfilesRsp]", buf, 2u);
        }

        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        *buf = 0u;
        v20 = 0u;
        sub_100A34C5C(buf);
        sub_100A3637C(buf);
        sub_10039EF40(*(&v23 + 1));
        PB::Data::assign(*(*(&v23 + 1) + 8), (v1 + 24), (v1 + 40));
        v7 = *(v1 + 128);
        if (v7 != *(v1 + 136))
        {
          *__dst = 0u;
          memset(__p, 0, sizeof(__p));
          sub_1001DAF78(__dst);
          sub_10039F6D4(v7, __dst);
          sub_1005F0BF0();
        }

        v8 = *(&v23 + 1);
        *(*(&v23 + 1) + 48) |= 2u;
        *(v8 + 44) = 1;
        if (*(v1 + 63) < 0)
        {
          sub_100005F2C(__dst, *(v1 + 40), *(v1 + 48));
        }

        else
        {
          *__dst = *(v1 + 40);
          __p[0] = *(v1 + 56);
        }

        if (*(v1 + 87) < 0)
        {
          sub_100005F2C(&__p[1], *(v1 + 64), *(v1 + 72));
        }

        else
        {
          *&__p[1] = *(v1 + 64);
          v14 = *(v1 + 80);
        }

        v15 = *(v1 + 88);
        sub_10002D728(&v16, (v1 + 96));
        sub_1002030F8(&v17, (v1 + 104));
        v18[0] = *(v1 + 112);
        *(v18 + 6) = *(v1 + 118);
        sub_1005E31C8(v3, __dst, buf);
        sub_1002030AC(&v17);
        sub_10002D760(&v16);
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(__dst[0]);
        }

        sub_100A34FF0(buf);
      }

      sub_100004A34(v5);
    }
  }

  sub_1005F4AE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1005F4A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a26);
  sub_100004A34(v26);
  sub_1005F4AE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005F4AE0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = (v1 + 128);
    sub_1000DC8D4(&v3);
    sub_1002030AC((v1 + 104));
    sub_10002D760((v1 + 96));
    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1005F4B7C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  sub_100A34C5C(v15);
  sub_100A3640C(v15);
  if (((*(**(v1 + 8) + 136))(*(v1 + 8), v1 + 24) & 1) == 0)
  {
    v3 = v16;
    *(v16 + 12) |= 1u;
    *(v3 + 8) = 5;
  }

  if (*(v1 + 239) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 216), *(v1 + 224));
  }

  else
  {
    *__dst = *(v1 + 216);
    v8 = *(v1 + 232);
  }

  if (*(v1 + 263) < 0)
  {
    sub_100005F2C(&__p, *(v1 + 240), *(v1 + 248));
  }

  else
  {
    __p = *(v1 + 240);
    v10 = *(v1 + 256);
  }

  v11 = *(v1 + 264);
  sub_10002D728(&v12, (v1 + 272));
  sub_1002030F8(&v13, (v1 + 280));
  v14[0] = *(v1 + 288);
  *(v14 + 6) = *(v1 + 294);
  sub_1005E31C8(v2, __dst, v15);
  sub_1002030AC(&v13);
  sub_10002D760(&v12);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_100A34FF0(v15);
  sub_1005F4D58(&v6);
  return sub_1000049E0(&v5);
}

void sub_1005F4D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a26);
  sub_1005F4D58(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005F4D58(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1002030AC((v1 + 280));
    sub_10002D760((v1 + 272));
    if (*(v1 + 263) < 0)
    {
      operator delete(*(v1 + 240));
    }

    if (*(v1 + 239) < 0)
    {
      operator delete(*(v1 + 216));
    }

    sub_1005F16B8(v1 + 24);
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void *sub_1005F4DE4()
{
  if ((atomic_load_explicit(&qword_101FBA800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA800))
  {
    ctu::OsLogLogger::OsLogLogger(&unk_101FBA7F8, kCtLoggingSystemName, "clm.fsm");
    __cxa_guard_release(&qword_101FBA800);
  }

  return &unk_101FBA7F8;
}

void sub_1005F4E70(uint64_t a1)
{
  sub_1000BFCFC(a1);

  operator delete();
}

void sub_1005F4EA8(uint64_t a1, int a2)
{
  *(a1 + 144) = a2;
  v5 = 0;
  v6 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v4 = v7;
  v3 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
    v5 = v4;
    v6 = v3;
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    v5 = v7;
    v6 = 0;
  }

  sub_1005F8240(*(a1 + 104), &v5, 1);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1005F4F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F4F74(uint64_t a1, int a2)
{
  if (*(a1 + 576) != a2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BA648(a1);
      if (v9 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v6 = asString();
      v7 = asString();
      *buf = 136315650;
      v11 = p_p;
      v12 = 2080;
      v13 = v6;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Call %s updating internal CmdDriver from %s to %s", buf, 0x20u);
      if (v9 < 0)
      {
        operator delete(__p);
      }
    }

    *(a1 + 576) = a2;
  }
}

void sub_1005F50F4(uint64_t a1)
{
  CSIPhoneNumber::CSIPhoneNumber();
  sub_1000BA4F8(a1, &v2);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  if (v4 < 0)
  {
    operator delete(v3);
  }
}

BOOL sub_1005F519C(uint64_t a1)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  CSIPhoneNumber::getFullNumber(&v16, (a1 + 584));
  v1 = kWPSPrefixString;
  v2 = SHIBYTE(v18);
  v3 = v16;
  if (v18 >= 0)
  {
    v4 = &v16;
  }

  else
  {
    v4 = v16;
  }

  if (v18 >= 0)
  {
    v5 = HIBYTE(v18);
  }

  else
  {
    v5 = v17;
  }

  v6 = strlen(kWPSPrefixString);
  if (!v6)
  {
    v11 = 1;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return v11;
    }

    goto LABEL_17;
  }

  v7 = v6;
  v8 = (v4 + v5);
  if (v5 >= v6)
  {
    v13 = *kWPSPrefixString;
    v14 = v4;
    do
    {
      if (v5 - v7 == -1)
      {
        break;
      }

      v15 = memchr(v14, v13, v5 - v7 + 1);
      if (!v15)
      {
        break;
      }

      v9 = v15;
      if (!memcmp(v15, v1, v7))
      {
        goto LABEL_10;
      }

      v14 = (v9 + 1);
      v5 = v8 - (v9 + 1);
    }

    while (v5 >= v7);
  }

  v9 = v8;
LABEL_10:
  v11 = v9 != v8 && v9 == v4;
  if (v2 < 0)
  {
LABEL_17:
    operator delete(v3);
  }

  return v11;
}

uint64_t sub_1005F5370(_DWORD *a1)
{
  result = CSISystemTimeSecs();
  v3 = result - a1[196];
  a1[91] = v3;
  a1[89] = v3;
  return result;
}

uint64_t sub_1005F53AC(uint64_t result, int a2)
{
  if (!*(result + 364))
  {
    *(result + 364) = a2;
  }

  return result;
}

uint64_t sub_1005F53D8(uint64_t result)
{
  if (*(result + 356))
  {
    v1 = result;
    result = CSISystemTimeSecs();
    *(v1 + 360) = result;
  }

  return result;
}

char *sub_1005F544C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[391] < 0)
  {
    return sub_100005F2C(a2, *(result + 46), *(result + 47));
  }

  *a2 = *(result + 23);
  *(a2 + 16) = *(result + 48);
  return result;
}

uint64_t sub_1005F547C(uint64_t result, char a2, int a3)
{
  *(result + 392) = a2;
  *(result + 396) = a3;
  return result;
}

uint64_t sub_1005F5490(uint64_t result, int a2, int a3)
{
  *(result + 448) = a2;
  *(result + 452) = a3;
  return result;
}

void sub_1005F54AC(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CSIBOOLAsString(a2);
    sub_1000BA648(a1);
    if (v8 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    v10 = v5;
    v11 = 2080;
    v12 = p_p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting voice and TTY capability to %s for this call %s", buf, 0x16u);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  *(a1 + 460) = a2;
}

uint64_t sub_1005F55A8(uint64_t result, int a2)
{
  *(result + 464) = a2;
  *(result + 468) = 1;
  return result;
}

void sub_1005F55DC(uint64_t a1, __int128 *a2)
{
  v2 = (a1 + 792);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 800);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1005F561C(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2)
  {
    sub_1000C004C(*(a1 + 120));
  }

  *(a1 + 476) = v2;
}

BOOL sub_1005F5670(unsigned __int8 *a1)
{
  if (a1[484] != 1)
  {
    return 0;
  }

  if (CallInfo::isEmergencyCallEmergencySetup((a1 + 136)))
  {
    return 0;
  }

  return a1[188] == 8;
}

uint64_t sub_1005F56D0(uint64_t result, int a2)
{
  *(result + 492) = a2;
  *(result + 496) = 1;
  return result;
}

uint64_t sub_1005F5710(uint64_t result, int a2)
{
  if ((*(result + 572) & 1) == 0)
  {
    *(result + 568) = 0;
    *(result + 572) = 1;
  }

  *(result + 560) = a2;
  *(result + 564) = 1;
  return result;
}

uint64_t sub_1005F5734(uint64_t result, __int16 a2)
{
  if (*(result + 572) == 1)
  {
    *(result + 568) = a2 | 0x100;
  }

  else
  {
    *(result + 560) = 0;
    *(result + 564) = 0;
    *(result + 568) = a2;
    *(result + 569) = 1;
    *(result + 572) = 1;
  }

  return result;
}

uint64_t sub_1005F5788@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  *__src = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  sub_10000C320(&v23);
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  CallInfo::toString(v21, (a1 + 136));
  sub_10000C030(&v24);
  v4 = sub_10000C030(&v24);
  v5 = asString();
  strlen(v5);
  v6 = sub_10000C030(v4);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&__p, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_10000C030(&v24);
  v9 = asString();
  strlen(v9);
  v10 = sub_10000C030(v8);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&__p, &std::ctype<char>::id);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  sub_100369530(*(a1 + 120), &__p);
  sub_10000C030(&v24);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  sub_10000C030(&v24);
  v12 = std::ostream::operator<<();
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&__p, &std::ctype<char>::id);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  if ((BYTE8(v30) & 0x10) != 0)
  {
    v15 = v30;
    if (v30 < __src[1])
    {
      *&v30 = __src[1];
      v15 = __src[1];
    }

    v16 = __src[0];
  }

  else
  {
    if ((BYTE8(v30) & 8) == 0)
    {
      v14 = 0;
      a2[23] = 0;
      goto LABEL_16;
    }

    v16 = *(&v25 + 1);
    v15 = *(&v26 + 1);
  }

  v14 = v15 - v16;
  if ((v15 - v16) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a2[23] = v14;
  if (v14)
  {
    memmove(a2, v16, v14);
  }

LABEL_16:
  a2[v14] = 0;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  *&v24 = v17;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  std::locale::~locale(&v25);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1005F5C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1005F5D00(uint64_t a1, uint64_t a2, NSObject **a3)
{
  sub_100004AA0(&v20, (a1 + 8));
  v7 = v20;
  v6 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  Registry::getTimerService(&v20, *(a1 + 56));
  v8 = v20;
  sub_10000501C(__p, "CallWaiting");
  v9 = *a3;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_1005F5F4C;
  aBlock[3] = &unk_101E6A008;
  aBlock[4] = a1;
  aBlock[5] = v7;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = _Block_copy(aBlock);
  sub_100D23364(v8, __p, 1, 1000 * a2, &object, &v15);
  v10 = v19;
  v19 = 0;
  v11 = *(a1 + 112);
  *(a1 + 112) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v19;
    v19 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1005F5EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 56);
  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F5F4C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000BA648(v3);
          v7 = v12 >= 0 ? &__p : __p;
          *buf = 136315138;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Timer: CallWaitingEndTimer expired. Will attempt to end call waiting call (if call is still Waiting), %s.", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(__p);
          }
        }

        *buf = 0uLL;
        sub_100004AA0(&__p, (v3 + 8));
        v9 = __p;
        v8 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v8);
          *buf = v9;
          *&buf[8] = v8;
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_weak(v8);
        }

        else
        {
          *buf = __p;
        }

        sub_1005F8EBC(*(v3 + 104), buf, 1);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_weak(*&buf[8]);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1005F60DC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1005F60F8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1005F6108(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v5 = *(a1 + 120);
  sub_10036ABF4(v9, a2);
  sub_100368914(v5, v9);
  sub_1000C022C(v9);
  sub_100368A04(*(a1 + 120), a1 + 136);
  v6 = *(a1 + 120);
  v7 = *a3;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  sub_100369D68(v6, &object);
  if (object)
  {
    dispatch_release(object);
  }

  sub_100368B5C(*(a1 + 120));
}

void sub_1005F61CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, char a10)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F61FC(uint64_t a1, uint64_t a2)
{
  if (sub_100369034(*(a1 + 120)))
  {
    sub_100369144(*(a1 + 120), 0);
    v4 = *(a1 + 120);
    sub_10036ABF4(v7, a2);
    sub_100368914(v4, v7);
    sub_1000C022C(v7);
    v6 = *(a1 + 120);
    v5 = (a1 + 120);
    sub_100368A04(v6, (v5 + 2));
    sub_100368FC0(*v5);
  }
}

void sub_1005F62AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000C022C(va);
  _Unwind_Resume(a1);
}

void sub_1005F62C8(uint64_t *a1)
{
  sub_10036914C(a1[15]);
  v2 = a1[99];
  if (v2)
  {
    v3 = a1[100];
    a1[99] = 0;
    a1[100] = 0;
    *v2 = 1;
    if (v3)
    {

      sub_100004A34(v3);
    }
  }
}

void sub_1005F634C(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_1005F981C(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F63E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F63FC(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_1005FA860(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F6494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F64AC(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_1005FB1E8(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F6544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F655C(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_1005FBB68(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F65F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F660C(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_1005FC4BC(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F66A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F66BC(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CallInfo::isEmergencyCall((a1 + 136));
    v6 = asString();
    sub_1000BA648(a1);
    v7 = asString();
    p_p = &__p;
    if (v22 < 0)
    {
      p_p = __p;
    }

    v9 = "Non-emergency";
    *buf = 136315906;
    if (v5)
    {
      v9 = "Emergency";
    }

    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    v24 = 2080;
    v25 = p_p;
    v26 = 2080;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N ### CallRedialing: %s %s call %s due to %s", buf, 0x2Au);
    if (v22 < 0)
    {
      operator delete(__p);
    }
  }

  *(a1 + 480) = a2;
  __p = 0;
  v21 = 0;
  sub_100004AA0(buf, (a1 + 8));
  v11 = *buf;
  v10 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
    __p = v11;
    v21 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    __p = *buf;
    v21 = 0;
  }

  sub_1005FCE18(*(a1 + 104), &__p, 1);
  v19 = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v13 = xpc_null_create();
    v19 = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v13) == &_xpc_type_dictionary)
  {
    xpc_retain(v13);
    goto LABEL_19;
  }

  v14 = xpc_null_create();
LABEL_18:
  v19 = v14;
LABEL_19:
  xpc_release(v13);
  v17 = xpc_BOOL_create(1);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  *buf = &v19;
  *&buf[8] = "has_redialed";
  sub_10000F688(buf, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v16 = v19;
  v17 = 0;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v16 = xpc_null_create();
  }

  ims::addCallEndInfo(&v16, v15);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v19);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }
}

void sub_1005F6954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, void *__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1005F69EC(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_1005FD978(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F6A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F6A9C(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_1005FE2CC(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F6B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F6B4C(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_1005FEC28(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F6BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F6BFC(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_1005FFC74(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F6C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F6CAC(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_100601044(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F6D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F6D5C(uint64_t a1, __int128 *a2)
{
  v9 = 0;
  *v7 = 0u;
  *__p = 0u;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = v11;
  v5 = v10;
  v6 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  sub_1005F8048(v7, &v5, a2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  sub_100601DFC(*(a1 + 104), v7, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7[1])
  {
    std::__shared_weak_count::__release_weak(v7[1]);
  }
}

uint64_t sub_1005F6E2C(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1005F6E6C(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_100602E10(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F6F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F6F1C(uint64_t a1, int a2)
{
  *(a1 + 492) = a2;
  *(a1 + 496) = 1;
  sub_1005F6E6C(a1);
}

void sub_1005F6F2C(uint64_t a1, int a2)
{
  if ((*(a1 + 496) & 1) == 0)
  {
    *(a1 + 492) = a2;
    *(a1 + 496) = 1;
  }

  sub_1005F6E6C(a1);
}

void sub_1005F6F44(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_10060450C(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F6FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F7024(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_100605FD4(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F70BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F70D4(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v5 = v9;
  v4 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
    v6 = v5;
    v7 = v4;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    LODWORD(v8) = a2;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v6 = v9;
    v7 = 0;
    LODWORD(v8) = a2;
  }

  sub_100606D70(*(a1 + 104), &v6, 1);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1005F717C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F7194(uint64_t a1)
{
  sub_1000C004C(*(a1 + 120));
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_100607AE8(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F7234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F724C(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_100608654(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F72E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F72FC(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_100608FB0(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F7394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F73AC(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_10060996C(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F7444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F745C(uint64_t a1, __int128 *a2)
{
  v9 = 0;
  *v7 = 0u;
  *__p = 0u;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = v11;
  v5 = v10;
  v6 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  sub_1005F80C4(v7, &v5, a2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  sub_10060A2C4(*(a1 + 104), v7, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7[1])
  {
    std::__shared_weak_count::__release_weak(v7[1]);
  }
}

void sub_1005F752C(uint64_t a1, __int128 *a2)
{
  v9 = 0;
  *v7 = 0u;
  *__p = 0u;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = v11;
  v5 = v10;
  v6 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  sub_1005F8140(v7, &v5, a2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  sub_10060B3A0(*(a1 + 104), v7, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7[1])
  {
    std::__shared_weak_count::__release_weak(v7[1]);
  }
}

void sub_1005F75FC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  sub_100004AA0(&v12, (a1 + 8));
  v6 = v13;
  v7 = v12;
  v8 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_1005F81BC(v9, &v7, a2, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  sub_10060C47C(*(a1 + 104), v9, 1);
  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (v9[1])
  {
    std::__shared_weak_count::__release_weak(v9[1]);
  }
}

void sub_1005F76DC(uint64_t a1, char a2)
{
  if (sub_10036902C(*(a1 + 120)))
  {
    sub_1000C004C(*(a1 + 120));
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v5 = v9;
  v4 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
    v6 = v5;
    v7 = v4;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    LOBYTE(v8) = a2;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    v6 = v9;
    v7 = 0;
    LOBYTE(v8) = a2;
  }

  sub_10060D8C8(*(a1 + 104), &v6, 1);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1005F7798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F77B0(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    v4 = v3;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v4 = v6;
    v5 = 0;
  }

  sub_10060E638(*(a1 + 104), &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1005F7848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F78E4(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, const void **a9)
{
  v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a3;
    if (*(a3 + 23) < 0)
    {
      v14 = *a3;
    }

    *buf = 136315394;
    *&buf[4] = v14;
    buf_12 = 2080;
    buf_14 = CSIBOOLAsString(a5);
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N Init Call with number: %s, screen locked: %s", buf, 0x16u);
  }

  *(a1 + 152) = a2;
  if (*a9)
  {
    sub_1000BA468(buf, a9);
  }

  else
  {
    *buf = CFUUIDCreate(kCFAllocatorDefault);
  }

  sub_1000BA4A0((a1 + 136), buf);
  sub_1000475BC(buf);
  sub_1000A6894(&v15);
}

void sub_1005F7F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_100014DA8((v45 - 192));
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005F8048(uint64_t a1, void *a2, __int128 *a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v5;
  }

  return a1;
}

void sub_1005F80AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F80C4(uint64_t a1, void *a2, __int128 *a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v5;
  }

  return a1;
}

void sub_1005F8128(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F8140(uint64_t a1, void *a2, __int128 *a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v5;
  }

  return a1;
}

void sub_1005F81A4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F81BC(uint64_t a1, void *a2, __int128 *a3, uint64_t a4)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v7;
  }

  *(a1 + 40) = a4;
  return a1;
}

void sub_1005F8228(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F8240(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005F82C4(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005F83C4(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005F82C4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005F8240, 0, a1, v5, 5, v6);
    sub_1005F8518(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005F8388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005F83C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005F89B0(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005F8474(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *a4;
  v11 = a4[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v11);
    std::__shared_weak_count::__release_weak(v11);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v12;
  *(a6 + 32) = v11;
  *(a6 + 40) = a5;
}

void sub_1005F8518(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F85A8(a1, &v4);
}

void sub_1005F8590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F85A8(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F8638(a1, &v4);
}

void sub_1005F8620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F8638(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F8738(off_101E6A0F0, &v4);
}

void sub_1005F86CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F86E4(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005F87C0(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005F8704(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005F8738(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F88E4(a1, &v4);
}

void sub_1005F87A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F87C0(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK9GotCallIdhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK9GotCallIdhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005F88E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005F8998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F89B0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2538 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005F8A30(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005F8A30(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "GotCallId";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1005F8B30(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 4;
      v2 = 1701602377;
      goto LABEL_17;
    case 1:
      *(a2 + 23) = 7;
      *a2 = 1735289170;
      v4 = 26983;
      goto LABEL_19;
    case 2:
      *(a2 + 23) = 13;
      qmemcpy(a2, "WaitingToDial", 13);
      return;
    case 3:
      *(a2 + 23) = 17;
      *(a2 + 16) = 97;
      v3 = "InitializingMedia";
      goto LABEL_13;
    case 4:
      *(a2 + 23) = 7;
      *a2 = 1818323268;
      v4 = 26988;
      goto LABEL_19;
    case 5:
      *(a2 + 23) = 16;
      v3 = "DialingCallEnded";
      goto LABEL_13;
    case 6:
      *(a2 + 23) = 8;
      v6 = 0x676E697472656C41;
      goto LABEL_15;
    case 7:
      *(a2 + 23) = 6;
      *a2 = 1769235265;
      *(a2 + 4) = 25974;
      return;
    case 8:
      *(a2 + 23) = 7;
      *a2 = 1953063255;
      v4 = 26996;
LABEL_19:
      *(a2 + 3) = v4 | 0x676E0000;
      return;
    case 9:
      *(a2 + 23) = 12;
      *(a2 + 8) = 1684370021;
      v5 = "UserAnswered";
      goto LABEL_7;
    case 10:
      *(a2 + 23) = 4;
      v2 = 1684825416;
LABEL_17:
      *a2 = v2;
      return;
    case 11:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1952671086;
      v3 = "WaitingToDisconnect";
LABEL_13:
      *a2 = *v3;
      return;
    case 12:
      *(a2 + 23) = 12;
      *(a2 + 8) = 1684370531;
      v5 = "Disconnected";
LABEL_7:
      v6 = *v5;
LABEL_15:
      *a2 = v6;
      break;
    default:
      return;
  }
}

int64x2_t *sub_1005F8CEC(int64x2_t *result)
{
  if (result[4].i64[1])
  {
    v1 = result;
    do
    {
      memset(v5, 0, sizeof(v5));
      v2 = *(v1[2].i64[1] + ((v1[4].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v1[4].i64[0] & 0x7F);
      v3 = *v2;
      if (*v2)
      {
        *&v5[0] = *v2;
        if (v3)
        {
          v4 = *(v2 + 8);
          *(&v5[1] + 1) = *(v2 + 24);
          *(v5 + 8) = v4;
        }

        else
        {
          (*v3)(v2 + 8, v5 + 8, 0);
        }
      }

      sub_1003AC4F4(v1 + 2);
      sub_1003AC560(v5);
      result = sub_1003ABCAC(v5);
    }

    while (v1[4].i64[1]);
  }

  return result;
}

uint64_t sub_1005F8DB8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 5;
  sub_1005F8E20(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_1005F8E20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 80))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005F8EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F8EBC(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005F8F40(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005F9040(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005F8F40(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005F8EBC, 0, a1, v5, 5, v6);
    sub_1005F90F0(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005F9004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005F9040(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005F9588(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005F90F0(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F9180(a1, &v4);
}

void sub_1005F9168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F9180(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F9210(a1, &v4);
}

void sub_1005F91F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F9210(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F9310(off_101E6A110, &v4);
}

void sub_1005F92A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F92BC(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005F9398(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005F92DC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005F9310(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F94BC(a1, &v4);
}

void sub_1005F9380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F9398(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK23CallWaitingTimerExpiredhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK23CallWaitingTimerExpiredhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005F94BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005F9570(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F9588(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB25B0 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005F9608(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005F9608(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "CallWaitingTimerExpired";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1005F9710(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_1005F9778(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_1005F9778(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 1, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005F9804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F981C(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005F98A0(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005F99A0(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005F98A0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005F981C, 0, a1, v5, 5, v6);
    sub_1005F9A50(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005F9964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005F99A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005F9EE8(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005F9A50(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F9AE0(a1, &v4);
}

void sub_1005F9AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F9AE0(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F9B70(a1, &v4);
}

void sub_1005F9B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F9B70(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F9C70(off_101E6A130, &v4);
}

void sub_1005F9C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F9C1C(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005F9CF8(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005F9C3C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005F9C70(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005F9E1C(a1, &v4);
}

void sub_1005F9CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F9CF8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK8OkToDialhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK8OkToDialhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005F9E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005F9ED0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005F9EE8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2628 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005F9F68(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005F9F68(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "OkToDial";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1005FA070(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 2)
  {
    sub_10176E950();
  }

  v7 = 2;
  if (sub_1005FA100(&v10, a4, a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 2;
    sub_1005FA1F8(&v11, a4, a1);
    *(v8 + 24) = 2;
    return 1;
  }

  return v7;
}

uint64_t sub_1005FA100(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 240))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Requires reselecting rat before dialing out this call", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_1005FA1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FA1F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 232))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FA27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FA294(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 2)
  {
    sub_10176E950();
  }

  v7 = sub_1005FA328(&v10, a4, a1);
  result = 2;
  if (v7)
  {
    v9 = a1 + 4 * a2;
    *(v9 + 24) = 2;
    sub_1005FA420(&v11, a4, a1);
    *(v9 + 24) = 12;
    return 1;
  }

  return result;
}

BOOL sub_1005FA328(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = a2[1];
  v6 = 1;
  if (v3)
  {
    v10 = std::__shared_weak_count::lock(v3);
    if (v10)
    {
      v9 = *a2;
      if (v9)
      {
        if ((*(**(a3 + 8) + 24))(*(a3 + 8), &v9))
        {
          v6 = 0;
        }
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v6)
  {
    v7 = *sub_1005F4DE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call should NOT be dialed out the command driver!", &v9, 2u);
    }
  }

  return v6;
}

void sub_1005FA408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FA420(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 1, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FA4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FA4E8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v8 = sub_1005FA070(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1005FA570(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1005FA570(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v8 = sub_1005FA294(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1005FA608(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1005FA608(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 2)
  {
    sub_10176E950();
  }

  v7 = sub_1005FA69C(&v10, a4, a1);
  result = 2;
  if (v7)
  {
    v9 = a1 + 4 * a2;
    *(v9 + 24) = 2;
    sub_1005FA794(&v11, a4, a1);
    *(v9 + 24) = 3;
    return 1;
  }

  return result;
}

uint64_t sub_1005FA69C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 24))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call can be dialed out to the command driver", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_1005FA778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FA794(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 32))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 3), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FA848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FA860(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FA8E4(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FA9E4(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FA8E4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005FA860, 0, a1, v5, 5, v6);
    sub_1005FAA94(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FA9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005FA9E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005FAF2C(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FAA94(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FAB24(a1, &v4);
}

void sub_1005FAB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FAB24(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FABB4(a1, &v4);
}

void sub_1005FAB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FABB4(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FACB4(off_101E6A150, &v4);
}

void sub_1005FAC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FAC60(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FAD3C(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005FAC80(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005FACB4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FAE60(a1, &v4);
}

void sub_1005FAD24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FAD3C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK11RatSelectedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK11RatSelectedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FAE60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FAF14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FAF2C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB26A0 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FAFAC(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FAFAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "RatSelected";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1005FB0B4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 2;
  sub_1005FB11C(&v6, a4, a1);
  *(v4 + 24) = 3;
  return 1;
}

void sub_1005FB11C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 32))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 3), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FB1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FB1E8(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FB26C(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FB36C(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FB26C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005FB1E8, 0, a1, v5, 5, v6);
    sub_1005FB41C(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FB330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005FB36C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005FB8B4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FB41C(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FB4AC(a1, &v4);
}

void sub_1005FB494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FB4AC(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FB53C(a1, &v4);
}

void sub_1005FB524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FB53C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FB63C(off_101E6A170, &v4);
}

void sub_1005FB5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FB5E8(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FB6C4(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005FB608(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005FB63C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FB7E8(a1, &v4);
}

void sub_1005FB6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FB6C4(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK10UserDialedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK10UserDialedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FB7E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FB89C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FB8B4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2718 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FB934(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FB934(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "UserDialed";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1005FBA3C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 0;
  sub_1005FBA9C(&v6, a4, a1);
  *(v4 + 24) = 2;
  return 1;
}

void sub_1005FBA9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 2), (*(**(a3 + 8) + 16))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FBB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FBB68(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FBBEC(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FBCEC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FBBEC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005FBB68, 0, a1, v5, 5, v6);
    sub_1005FBD9C(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FBCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005FBCEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005FC234(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FBD9C(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FBE2C(a1, &v4);
}

void sub_1005FBE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FBE2C(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FBEBC(a1, &v4);
}

void sub_1005FBEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FBEBC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FBFBC(off_101E6A190, &v4);
}

void sub_1005FBF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FBF68(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FC044(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005FBF88(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005FBFBC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FC168(a1, &v4);
}

void sub_1005FC02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FC044(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK25InitializePendedEmergencyhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK25InitializePendedEmergencyhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FC168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FC21C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FC234(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2790 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FC2B4(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FC2B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "InitializePendedEmergency";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1005FC3BC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 0;
  sub_1005FC41C(&v6, a4, a1);
  *(v4 + 24) = 2;
  return 1;
}

void sub_1005FC41C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FC4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FC4BC(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FC540(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FC640(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FC540(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005FC4BC, 0, a1, v5, 5, v6);
    sub_1005FC6F0(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FC604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005FC640(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005FCB88(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FC6F0(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FC780(a1, &v4);
}

void sub_1005FC768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FC780(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FC810(a1, &v4);
}

void sub_1005FC7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FC810(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FC910(off_101E6A1B0, &v4);
}

void sub_1005FC8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FC8BC(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FC998(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005FC8DC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005FC910(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FCABC(a1, &v4);
}

void sub_1005FC980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FC998(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK16MediaInitializedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK16MediaInitializedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FCABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FCB70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FCB88(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2808 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FCC08(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FCC08(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "MediaInitialized";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1005FCD10(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 3;
  sub_1005FCD78(&v6, a4, a1);
  *(v4 + 24) = 4;
  return 1;
}

void sub_1005FCD78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 4), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FCE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FCE18(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FCE9C(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FCF9C(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FCE9C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005FCE18, 0, a1, v5, 5, v6);
    sub_1005FD04C(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FCF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005FCF9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005FD4E4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FD04C(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FD0DC(a1, &v4);
}

void sub_1005FD0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FD0DC(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FD16C(a1, &v4);
}

void sub_1005FD154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FD16C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FD26C(off_101E6A1D0, &v4);
}

void sub_1005FD200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD218(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FD2F4(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005FD238(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005FD26C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FD418(a1, &v4);
}

void sub_1005FD2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD2F4(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK6RedialhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK6RedialhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FD418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FD4CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD4E4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2880 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FD564(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FD564(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "Redial";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1005FD66C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_1005FD6D4(&v6, a4, a1);
  *(v4 + 24) = 2;
  return 1;
}

void sub_1005FD6D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 16))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FD758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD770(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_1005FD7D8(&v6, a4, a1);
  *(v4 + 24) = 2;
  return 1;
}

void sub_1005FD7D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 16))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FD85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD874(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 3;
  sub_1005FD8DC(&v6, a4, a1);
  *(v4 + 24) = 2;
  return 1;
}

void sub_1005FD8DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 16))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FD960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD978(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FD9FC(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FDAFC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FD9FC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005FD978, 0, a1, v5, 5, v6);
    sub_1005FDBAC(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FDAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005FDAFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005FE044(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FDBAC(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FDC3C(a1, &v4);
}

void sub_1005FDC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FDC3C(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FDCCC(a1, &v4);
}

void sub_1005FDCB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FDCCC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FDDCC(off_101E6A1F0, &v4);
}

void sub_1005FDD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FDD78(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FDE54(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005FDD98(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005FDDCC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FDF78(a1, &v4);
}

void sub_1005FDE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FDE54(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK14STKCallDialinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK14STKCallDialinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FDF78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FE02C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FE044(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB28F8 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FE0C4(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FE0C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "STKCallDialing";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1005FE1CC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 0;
  sub_1005FE22C(&v6, a4, a1);
  *(v4 + 24) = 4;
  return 1;
}

void sub_1005FE22C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 4), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FE2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FE2CC(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FE350(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FE450(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FE350(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005FE2CC, 0, a1, v5, 5, v6);
    sub_1005FE500(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FE414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005FE450(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005FE998(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FE500(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FE590(a1, &v4);
}

void sub_1005FE578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FE590(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FE620(a1, &v4);
}

void sub_1005FE608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FE620(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FE720(off_101E6A210, &v4);
}

void sub_1005FE6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FE6CC(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FE7A8(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005FE6EC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005FE720(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FE8CC(a1, &v4);
}

void sub_1005FE790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FE7A8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallAlertinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallAlertinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FE8CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FE980(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FE998(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2970 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FEA18(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FEA18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "CallAlerting";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1005FEB20(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_1005FEB88(&v6, a4, a1);
  *(v4 + 24) = 6;
  return 1;
}

void sub_1005FEB88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FEC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FEC28(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FECAC(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FEDAC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FECAC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005FEC28, 0, a1, v5, 5, v6);
    sub_1005FEE5C(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FED70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005FEDAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1005FF2F4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FEE5C(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FEEEC(a1, &v4);
}

void sub_1005FEED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FEEEC(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FEF7C(a1, &v4);
}

void sub_1005FEF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FEF7C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FF07C(off_101E6A230, &v4);
}

void sub_1005FF010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF028(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FF104(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1005FF048(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1005FF07C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FF228(a1, &v4);
}

void sub_1005FF0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF104(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK10CallActivehEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK10CallActivehEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FF228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FF2DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF2F4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB29E8 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FF374(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FF374(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "CallActive";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1005FF47C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  sub_1005FF4E4(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1005FF4E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FF56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF584(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 9)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  sub_1005FF5EC(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1005FF5EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 112))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (*(**(a3 + 8) + 152))(*(a3 + 8), &v7), (*(**(a3 + 8) + 192))(*(a3 + 8), &v7, 1), (*(**(a3 + 8) + 200))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FF728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF740(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_1005FF7A8(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1005FF7A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 112))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (*(**(a3 + 8) + 152))(*(a3 + 8), &v7), (*(**(a3 + 8) + 192))(*(a3 + 8), &v7, 1), (*(**(a3 + 8) + 200))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FF8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF8FC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_1005FF964(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1005FF964(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 112))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (*(**(a3 + 8) + 152))(*(a3 + 8), &v7), (*(**(a3 + 8) + 192))(*(a3 + 8), &v7, 1), (*(**(a3 + 8) + 200))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FFAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FFAB8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_1005FFB20(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1005FFB20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 112))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (*(**(a3 + 8) + 152))(*(a3 + 8), &v7), (*(**(a3 + 8) + 192))(*(a3 + 8), &v7, 1), (*(**(a3 + 8) + 200))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FFC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FFC74(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FFCF8(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FFDF8(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FFCF8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_1005FFC74, 0, a1, v5, 5, v6);
    sub_1005FFEA8(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FFDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005FFDF8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_100600340(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FFEA8(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FFF38(a1, &v4);
}

void sub_1005FFF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FFF38(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1005FFFC8(a1, &v4);
}

void sub_1005FFFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FFFC8(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_1006000C8(off_101E6A250, &v4);
}

void sub_10060005C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100600074(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100600150(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_100600094(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1006000C8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_100600274(a1, &v4);
}

void sub_100600138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100600150(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallIncominghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallIncominghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100600274(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100600328(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100600340(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2A60 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1006003C0(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1006003C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "CallIncoming";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1006004C8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_100600530(&v6, a4, a1);
  *(v4 + 24) = 1;
  return 1;
}

void sub_100600530(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 5), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006005B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006005D0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100600660(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100600758(&v10, a4, a1);
  *(v7 + 24) = 11;
  return 1;
}

BOOL sub_100600660(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = a2[1];
  v6 = 1;
  if (v3)
  {
    v10 = std::__shared_weak_count::lock(v3);
    if (v10)
    {
      v9 = *a2;
      if (v9)
      {
        if ((*(**(a3 + 8) + 136))(*(a3 + 8), &v9))
        {
          v6 = 0;
        }
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v6)
  {
    v7 = *sub_1005F4DE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are NOT allowed to go out to UI!", &v9, 2u);
    }
  }

  return v6;
}

void sub_100600740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100600758(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006007E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060081C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v8 = sub_1006005D0(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1006008B4(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1006008B4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100600940(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100600A38(&v10, a4, a1);
  result = 1;
  *(v7 + 24) = 1;
  return result;
}

uint64_t sub_100600940(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 136))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are allowed to go out to UI", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_100600A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100600A38(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 5), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100600AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100600AE0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100600B70(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100600C68(&v10, a4, a1);
  *(v7 + 24) = 11;
  return 1;
}

BOOL sub_100600B70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = a2[1];
  v6 = 1;
  if (v3)
  {
    v10 = std::__shared_weak_count::lock(v3);
    if (v10)
    {
      v9 = *a2;
      if (v9)
      {
        if ((*(**(a3 + 8) + 136))(*(a3 + 8), &v9))
        {
          v6 = 0;
        }
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v6)
  {
    v7 = *sub_1005F4DE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are NOT allowed to go out to UI!", &v9, 2u);
    }
  }

  return v6;
}

void sub_100600C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100600C68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100600CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100600D2C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v8 = sub_100600AE0(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_100600DC4(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_100600DC4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100600E50(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100600F48(&v10, a4, a1);
  result = 1;
  *(v7 + 24) = 1;
  return result;
}

uint64_t sub_100600E50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 136))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are allowed to go out to UI", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_100600F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100600F48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v11 = v6;
    if (v6)
    {
      v7 = v6;
      v10 = *a2;
      if (!v10)
      {
        goto LABEL_7;
      }

      v8 = *sub_1005F4DE4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I CallIncomingWithAltCall event. Sending Waiting status event", v9, 2u);
      }

      (*(**(a3 + 8) + 40))(*(a3 + 8), &v10, 8);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

void sub_100601020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601044(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1006010C8(a1, a2))
  {
    return 1;
  }

  v6 = sub_1006011C8(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1006010C8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_100601044, 0, a1, v5, 5, v6);
    sub_100601278(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_10060118C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006011C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_100601710(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100601278(void *a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_100601308(a1, &v4);
}

void sub_1006012F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100601308(void *a1, __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_100601398(a1, &v4);
}

void sub_100601380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100601398(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = v2;
  v3 = *(a2 + 32);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_100601498(off_101E6A270, &v4);
}

void sub_10060142C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601444(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100601520(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_100601464(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_100601498(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_100601644(a1, &v4);
}

void sub_100601508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601520(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK11CallWaitinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK11CallWaitinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100601644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1006016F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601710(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2B50 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100601790(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100601790(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "CallWaiting";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_100601898(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100601928(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100601A20(&v10, a4, a1);
  *(v7 + 24) = 11;
  return 1;
}

BOOL sub_100601928(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = a2[1];
  v6 = 1;
  if (v3)
  {
    v10 = std::__shared_weak_count::lock(v3);
    if (v10)
    {
      v9 = *a2;
      if (v9)
      {
        if ((*(**(a3 + 8) + 136))(*(a3 + 8), &v9))
        {
          v6 = 0;
        }
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v6)
  {
    v7 = *sub_1005F4DE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are NOT allowed to go out to UI!", &v9, 2u);
    }
  }

  return v6;
}

void sub_100601A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100601A20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100601AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601AE4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v8 = sub_100601898(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_100601B7C(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_100601B7C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100601C0C(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100601D04(&v10, a4, a1);
  *(v7 + 24) = 8;
  return 1;
}

uint64_t sub_100601C0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 136))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are allowed to go out to UI", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_100601CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100601D04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 176))(*(a3 + 8), 1), (*(**(a3 + 8) + 208))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 8), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100601DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601DFC(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_100601E80(a1, a2))
  {
    return 1;
  }

  v6 = sub_100601FDC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100601E80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    v4 = *(a2 + 8);
    v6[0] = *a2;
    v6[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 39) < 0)
    {
      sub_100005F2C(v7, *(a2 + 16), *(a2 + 24));
    }

    else
    {
      *v7 = *(a2 + 16);
      v8 = *(a2 + 32);
    }

    sub_10060208C(sub_100601DFC, 0, a1, v6, 5, v9);
    sub_100602438(v10, v9);
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_100601F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601FDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_100602B80(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060208C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = a4[1];
  v15 = *a4;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 39) < 0)
  {
    sub_100005F2C(v17, a4[2], a4[3]);
  }

  else
  {
    *v17 = *(a4 + 1);
    v18 = a4[4];
  }

  sub_100602248(v19, a3, &v15, a5);
  *a6 = a1;
  *(a6 + 8) = a2;
  v12 = v19[1];
  *(a6 + 16) = v19[0];
  *(a6 + 24) = v12;
  v13 = v20;
  *(a6 + 32) = v20;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C((a6 + 40), __p, *(&__p + 1));
    v14 = SHIBYTE(v22);
    *(a6 + 64) = v23;
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a6 + 40) = __p;
    *(a6 + 56) = v22;
    *(a6 + 64) = v23;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

void sub_1006021C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 + 32);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_100260030(&a14);
  sub_1005F6E2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100602208(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100602248(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a3 + 8);
  v9 = *a3;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(&__p, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    __p = *(a3 + 16);
    v12 = *(a3 + 32);
  }

  sub_100602320(a1, a2, &v9, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

void sub_1006022F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100602320(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v8 = *a3;
  v7 = a3[1];
  v10 = *a3;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(&__p, a3[2], a3[3]);
    v8 = v10;
    v7 = v11;
  }

  else
  {
    __p = *(a3 + 1);
    v13 = a3[4];
  }

  *a1 = a2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C((a1 + 24), __p, *(&__p + 1));
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a1 + 24) = __p;
    *(a1 + 40) = v13;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(a1 + 48) = a4;
  return a1;
}

void sub_100602404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  v13 = *(v11 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  sub_1005F6E2C(&a10);
  _Unwind_Resume(a1);
}

void sub_100602438(void *a1, uint64_t a2)
{
  v6 = *a2;
  v4 = *(a2 + 24);
  v7 = *(a2 + 16);
  v8 = v4;
  v5 = *(a2 + 32);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *__p = *(a2 + 40);
    v11 = *(a2 + 56);
  }

  v12 = *(a2 + 64);
  sub_100602518(a1, &v6);
}

void sub_1006024F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100602518(void *a1, __int128 *a2)
{
  *a1 = 0;
  v6 = *a2;
  v4 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v4;
  v5 = *(a2 + 4);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    *__p = *(a2 + 40);
    v11 = *(a2 + 7);
  }

  v12 = *(a2 + 64);
  sub_1006025F8(a1, &v6);
}

void sub_1006025D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006025F8(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v3 = *(a2 + 24);
  v6 = *(a2 + 16);
  v7 = v3;
  v4 = *(a2 + 32);
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *__p = *(a2 + 40);
    v10 = *(a2 + 56);
  }

  v11 = *(a2 + 64);
  sub_100602748(off_101E6A290, &v5);
}

void sub_1006026CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006026F4(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100602838(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_100602714(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[64];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_100602748(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v4 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v4;
  v5 = *(a2 + 4);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    *__p = *(a2 + 40);
    v11 = *(a2 + 7);
  }

  v12 = *(a2 + 64);
  sub_1006029C8(a1, &v6);
}

void sub_100602810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100602838(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (*(v5 + 63) < 0)
      {
        operator delete(*(v5 + 40));
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallAnsweredhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallAnsweredhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}