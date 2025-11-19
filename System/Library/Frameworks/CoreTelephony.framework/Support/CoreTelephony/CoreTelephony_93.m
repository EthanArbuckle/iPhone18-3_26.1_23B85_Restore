void sub_1006029A4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1006029C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *__p = *(a2 + 40);
    v5 = *(a2 + 56);
  }

  v6 = *(a2 + 64);
  sub_100602AB4();
}

void sub_100602A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100602B5C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100602B80(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2BC8 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100602C00(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100602C00(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallAnswered";
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

uint64_t sub_100602D08(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_100602D70(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_100602D70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 64))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100602DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100602E10(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100602E94(a1, a2))
  {
    return 1;
  }

  v6 = sub_100602F94(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100602E94(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100602E10, 0, a1, v5, 5, v6);
    sub_100603044(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_100602F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100602F94(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1006034DC(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100603044(void *a1, uint64_t a2)
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
  sub_1006030D4(a1, &v4);
}

void sub_1006030BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006030D4(void *a1, __int128 *a2)
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
  sub_100603164(a1, &v4);
}

void sub_10060314C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100603164(uint64_t a1, uint64_t a2)
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
  sub_100603264(off_101E6A2B0, &v4);
}

void sub_1006031F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100603210(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1006032EC(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_100603230(unsigned __int8 **a1)
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

void sub_100603264(uint64_t a1, __int128 *a2)
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
  sub_100603410(a1, &v4);
}

void sub_1006032D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006032EC(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK9CallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK9CallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100603410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1006034C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006034DC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2C40 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060355C(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060355C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallEnded";
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

uint64_t sub_100603664(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 11)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 11;
  sub_1006036CC(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_1006036CC(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100603758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100603770(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  sub_1006037D8(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_1006037D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 104))(*(a3 + 8), &v7), (*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100603890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006038A8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 9)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  sub_100603910(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603910(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 104))(*(a3 + 8), &v7), (*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006039C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006039E0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_100603A48(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603A48(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100603AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100603AEC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_100603B54(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603B54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 104))(*(a3 + 8), &v7), (*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100603C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100603C24(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_100603C8C(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603C8C(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I CallEnded occured while in Alerting state. Going to process the disconnect", v9, 2u);
      }

      (*(**(a3 + 8) + 104))(*(a3 + 8), &v10);
      (*(**(a3 + 8) + 72))(*(a3 + 8), &v10, 0, 0);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

uint64_t sub_100603DB8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 5;
  sub_100603E20(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603E20(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100603EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100603EC4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_100603F2C(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603F2C(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I CallEnded occured while in Dialing state. Going to process the disconnect", v9, 2u);
      }

      (*(**(a3 + 8) + 104))(*(a3 + 8), &v10);
      (*(**(a3 + 8) + 72))(*(a3 + 8), &v10, 0, 0);
      (*(**(a3 + 8) + 192))(*(a3 + 8), &v10, 0);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

uint64_t sub_100604088(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 3;
  sub_1006040F0(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_1006040F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060417C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100604194(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 2;
  sub_1006041FC(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_1006041FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100604288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006042A0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_100604308(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100604308(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I CallEnded occured while in Ringing state. Going to process the disconnect", v9, 2u);
      }

      (*(**(a3 + 8) + 72))(*(a3 + 8), &v10, 0, 0);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

void sub_1006043E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100604408(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 0;
  sub_100604468(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100604468(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006044F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060450C(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100604590(a1, a2))
  {
    return 1;
  }

  v6 = sub_100604690(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100604590(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_10060450C, 0, a1, v5, 5, v6);
    sub_100604740(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_100604654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100604690(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_100604BD8(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100604740(void *a1, uint64_t a2)
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
  sub_1006047D0(a1, &v4);
}

void sub_1006047B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006047D0(void *a1, __int128 *a2)
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
  sub_100604860(a1, &v4);
}

void sub_100604848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100604860(uint64_t a1, uint64_t a2)
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
  sub_100604960(off_101E6A2D0, &v4);
}

void sub_1006048F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060490C(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1006049E8(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_10060492C(unsigned __int8 **a1)
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

void sub_100604960(uint64_t a1, __int128 *a2)
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
  sub_100604B0C(a1, &v4);
}

void sub_1006049D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006049E8(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK10EndPressedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK10EndPressedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100604B0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100604BC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100604BD8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2CB8 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100604C58(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100604C58(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "EndPressed";
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

uint64_t sub_100604D60(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  sub_100604DC8(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100604DC8(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100604E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100604E64(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 9)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  sub_100604ECC(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100604ECC(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100604F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100604F68(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_100604FD0(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100604FD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100605058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100605070(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_1006050D8(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_1006050D8(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_10060515C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100605174(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_1006051DC(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_1006051DC(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100605260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100605278(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_1006052E0(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_1006052E0(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100605364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060537C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E950();
  }

  if (!sub_100605414(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 3;
  sub_10060550C(&v10, a4, a1);
  *(v7 + 24) = 11;
  return 1;
}

uint64_t sub_100605414(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 128))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call has a valid call id", v9, 2u);
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

void sub_1006054F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060550C(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100605590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006055CC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v8 = sub_10060537C(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_100605664(a1, a2, a3, a4);
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

uint64_t sub_100605664(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E97C();
  }

  if (!sub_1006056D4(&v7, a4, a1))
  {
    return 2;
  }

  *(a1 + 4 * a2 + 24) = 5;
  return 1;
}

BOOL sub_1006056D4(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        if ((*(**(a3 + 8) + 128))(*(a3 + 8), &v9))
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call does NOT have a valid call id!", &v9, 2u);
    }
  }

  return v6;
}

void sub_1006057B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006057CC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 2;
  sub_100605834(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100605834(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006058C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006058D8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_100605940(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100605940(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006059C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006059E0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 0;
  sub_100605A40(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100605A40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100605ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100605AE4(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_100605B68(a1))
  {
    return 1;
  }

  v6 = sub_100605C18(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100605B68(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_100605C18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_100605DF4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

uint64_t sub_100605CC8(uint64_t result, _WORD *a2, int a3)
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

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK19ExpectDisconnectionhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK19ExpectDisconnectionhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_100605DC0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_100605DF4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2D30 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100605E74(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100605E74(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "ExpectDisconnection";
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

uint64_t sub_100605F7C(uint64_t a1, int a2, int a3)
{
  if (a3 != 10)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_100605FA8(uint64_t a1, int a2, int a3)
{
  if (a3 != 7)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_100605FD4(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100606058(a1, a2))
  {
    return 1;
  }

  v6 = sub_100606158(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100606058(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100605FD4, 0, a1, v5, 5, v6);
    sub_100606208(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_10060611C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100606158(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1006066A0(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100606208(void *a1, uint64_t a2)
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
  sub_100606298(a1, &v4);
}

void sub_100606280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100606298(void *a1, __int128 *a2)
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
  sub_100606328(a1, &v4);
}

void sub_100606310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100606328(uint64_t a1, uint64_t a2)
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
  sub_100606428(off_101E6A310, &v4);
}

void sub_1006063BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006063D4(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1006064B0(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1006063F4(unsigned __int8 **a1)
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

void sub_100606428(uint64_t a1, __int128 *a2)
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
  sub_1006065D4(a1, &v4);
}

void sub_100606498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006064B0(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13EndAllPressedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13EndAllPressedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1006065D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100606688(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006066A0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2DA8 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100606720(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100606720(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "EndAllPressed";
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

uint64_t sub_100606828(uint64_t a1, int a2, int a3)
{
  if (a3 != 10)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_100606854(uint64_t a1, int a2, int a3)
{
  if (a3 != 7)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_100606880(uint64_t a1, int a2, int a3)
{
  if (a3 != 6)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_1006068AC(uint64_t a1, int a2, int a3)
{
  if (a3 != 4)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_1006068D8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E97C();
  }

  if (!sub_100606948(&v7, a4, a1))
  {
    return 2;
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_100606948(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 128))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call has a valid call id", v9, 2u);
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

void sub_100606A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100606A64(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v8 = sub_1006068D8(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_100606AFC(a1, a2, a3, a4);
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

uint64_t sub_100606AFC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E97C();
  }

  if (!sub_100606B6C(&v7, a4, a1))
  {
    return 2;
  }

  *(a1 + 4 * a2 + 24) = 5;
  return 1;
}

BOOL sub_100606B6C(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        if ((*(**(a3 + 8) + 128))(*(a3 + 8), &v9))
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call does NOT have a valid call id!", &v9, 2u);
    }
  }

  return v6;
}

void sub_100606C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100606C64(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 2;
  sub_100606CCC(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100606CCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100606D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100606D70(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_100606DF4(a1, a2))
  {
    return 1;
  }

  v6 = sub_100606EFC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100606DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = *(a2 + 8);
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 16);
    sub_100606FAC(sub_100606D70, 0, a1, v5, 5, v7);
    sub_100607180(v8, v7);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_100606EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_1003ABCAC((v16 - 48));
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100606EFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_10060764C(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100606FAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a4[1];
  v13 = *a4;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a4 + 4);
  sub_100607094(v16, a3, &v13, a5);
  *a6 = a1;
  *(a6 + 8) = a2;
  v10 = v16[1];
  *(a6 + 16) = v16[0];
  *(a6 + 24) = v10;
  v11 = v17;
  *(a6 + 32) = v17;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v12 = v17;
    *(a6 + 40) = v18;
    *(a6 + 48) = v19;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  else
  {
    *(a6 + 40) = v18;
    *(a6 + 48) = v19;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void sub_10060707C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607094(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a3 + 8);
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 16);
  sub_100607114(a1, a2, &v7, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void sub_1006070FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607114(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a3 + 4);
    *a1 = a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = v8;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v9 = *(a3 + 4);
    *a1 = a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    *(a1 + 24) = v9;
  }

  *(a1 + 32) = a4;
  return a1;
}

void sub_100607180(void *a1, uint64_t a2)
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
  v9 = *(a2 + 48);
  sub_100607218(a1, &v4);
}

void sub_100607200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100607218(void *a1, __int128 *a2)
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

  v8 = *(a2 + 10);
  v9 = *(a2 + 48);
  sub_1006072B0(a1, &v4);
}

void sub_100607298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006072B0(uint64_t a1, uint64_t a2)
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
  v9 = *(a2 + 48);
  sub_1006073B8(off_101E6A330, &v4);
}

void sub_10060734C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607364(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100607448(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_100607384(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[48];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_1006073B8(uint64_t a1, __int128 *a2)
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

  v8 = *(a2 + 10);
  v9 = *(a2 + 48);
  sub_100607574(a1, &v4);
}

void sub_100607430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607448(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK11CallIgnoredhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK11CallIgnoredhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100607574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100607634(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060764C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2E20 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1006076CC(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1006076CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallIgnored";
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

uint64_t sub_1006077D4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 9)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  sub_10060783C(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_10060783C(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_1006078C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006078D8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_100607940(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100607940(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, *(a2 + 4)), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006079C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006079E0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_100607A48(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100607A48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, *(a2 + 4)), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100607AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607AE8(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100607B6C(a1, a2))
  {
    return 1;
  }

  v6 = sub_100607C6C(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100607B6C(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100607AE8, 0, a1, v5, 5, v6);
    sub_100607D1C(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_100607C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100607C6C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_1006081B4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100607D1C(void *a1, uint64_t a2)
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
  sub_100607DAC(a1, &v4);
}

void sub_100607D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100607DAC(void *a1, __int128 *a2)
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
  sub_100607E3C(a1, &v4);
}

void sub_100607E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100607E3C(uint64_t a1, uint64_t a2)
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
  sub_100607F3C(off_101E6A350, &v4);
}

void sub_100607ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607EE8(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100607FC4(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_100607F08(unsigned __int8 **a1)
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

void sub_100607F3C(uint64_t a1, __int128 *a2)
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
  sub_1006080E8(a1, &v4);
}

void sub_100607FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607FC4(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK8CallHeldhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK8CallHeldhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1006080E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10060819C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006081B4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2E98 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100608234(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100608234(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallHeld";
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

uint64_t sub_10060833C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_1006083A4(&v6, a4, a1);
  *(v4 + 24) = 10;
  return 1;
}

void sub_1006083A4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060842C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060844C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  sub_1006084B0(&v6, a4, a1);
  *(v4 + 24) = 10;
  return 1;
}

void sub_1006084B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100608538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608550(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_1006085B4(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1006085B4(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_10060863C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608654(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1006086D8(a1, a2))
  {
    return 1;
  }

  v6 = sub_1006087D8(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1006086D8(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100608654, 0, a1, v5, 5, v6);
    sub_100608888(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_10060879C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_1006087D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_100608D20(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100608888(void *a1, uint64_t a2)
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
  sub_100608918(a1, &v4);
}

void sub_100608900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100608918(void *a1, __int128 *a2)
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
  sub_1006089A8(a1, &v4);
}

void sub_100608990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006089A8(uint64_t a1, uint64_t a2)
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
  sub_100608AA8(off_101E6A370, &v4);
}

void sub_100608A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608A54(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100608B30(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_100608A74(unsigned __int8 **a1)
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

void sub_100608AA8(uint64_t a1, __int128 *a2)
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
  sub_100608C54(a1, &v4);
}

void sub_100608B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608B30(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK17CallAnswerFailurehEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK17CallAnswerFailurehEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100608C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100608D08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608D20(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2F88 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100608DA0(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100608DA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallAnswerFailure";
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

uint64_t sub_100608EA8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 9)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  sub_100608F10(&v6, a4, a1);
  *(v4 + 24) = 1;
  return 1;
}

void sub_100608F10(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100608F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608FB0(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100609034(a1, a2))
  {
    return 1;
  }

  v6 = sub_100609134(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100609034(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100608FB0, 0, a1, v5, 5, v6);
    sub_1006091E4(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1006090F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100609134(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_10060967C(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1006091E4(void *a1, uint64_t a2)
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
  sub_100609274(a1, &v4);
}

void sub_10060925C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100609274(void *a1, __int128 *a2)
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
  sub_100609304(a1, &v4);
}

void sub_1006092EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100609304(uint64_t a1, uint64_t a2)
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
  sub_100609404(off_101E6A390, &v4);
}

void sub_100609398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006093B0(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060948C(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_1006093D0(unsigned __int8 **a1)
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

void sub_100609404(uint64_t a1, __int128 *a2)
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
  sub_1006095B0(a1, &v4);
}

void sub_100609474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060948C(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK15ActiveCallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK15ActiveCallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1006095B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100609664(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060967C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB3000 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1006096FC(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1006096FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "ActiveCallEnded";
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

uint64_t sub_100609804(uint64_t a1, int a2, int a3)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 10;
  (*(**(a1 + 8) + 144))(*(a1 + 8));
  *(v3 + 24) = 10;
  return 1;
}

uint64_t sub_100609868(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_1006098D0(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_1006098D0(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100609954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060996C(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1006099F0(a1, a2))
  {
    return 1;
  }

  v6 = sub_100609AF0(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1006099F0(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_10060996C, 0, a1, v5, 5, v6);
    sub_100609BA0(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_100609AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100609AF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_10060A038(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100609BA0(void *a1, uint64_t a2)
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
  sub_100609C30(a1, &v4);
}

void sub_100609C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100609C30(void *a1, __int128 *a2)
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
  sub_100609CC0(a1, &v4);
}

void sub_100609CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100609CC0(uint64_t a1, uint64_t a2)
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
  sub_100609DC0(off_101E6A3B0, &v4);
}

void sub_100609D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100609D6C(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100609E48(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_100609D8C(unsigned __int8 **a1)
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

void sub_100609DC0(uint64_t a1, __int128 *a2)
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
  sub_100609F6C(a1, &v4);
}

void sub_100609E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100609E48(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK32WaitingCallAnsweredHeldCallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK32WaitingCallAnsweredHeldCallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100609F6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10060A020(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060A038(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB3078 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060A0B8(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060A0B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "WaitingCallAnsweredHeldCallEnded";
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

uint64_t sub_10060A1C0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  sub_10060A228(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_10060A228(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 88))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060A2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060A2C4(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_10060A348(a1, a2))
  {
    return 1;
  }

  v6 = sub_10060A4A4(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_10060A348(uint64_t a1, uint64_t a2)
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

    sub_10060A554(sub_10060A2C4, 0, a1, v6, 5, v9);
    sub_10060A8C0(v10, v9);
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_10060A45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060A4A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_10060B008(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060A554(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
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

  sub_10060A6D0(v19, a3, &v15, a5);
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

void sub_10060A68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
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

uint64_t sub_10060A6D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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

  sub_10060A7A8(a1, a2, &v9, a4);
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

void sub_10060A780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060A7A8(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
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

void sub_10060A88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  v13 = *(v11 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  sub_1005F6E2C(&a10);
  _Unwind_Resume(a1);
}

void sub_10060A8C0(void *a1, uint64_t a2)
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
  sub_10060A9A0(a1, &v6);
}

void sub_10060A978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060A9A0(void *a1, __int128 *a2)
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
  sub_10060AA80(a1, &v6);
}

void sub_10060AA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060AA80(uint64_t a1, uint64_t a2)
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
  sub_10060ABD0(off_101E6A3D0, &v5);
}

void sub_10060AB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060AB7C(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060ACC0(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_10060AB9C(unsigned __int8 **a1)
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

void sub_10060ABD0(uint64_t a1, __int128 *a2)
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
  sub_10060AE50(a1, &v6);
}

void sub_10060AC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060ACC0(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK33ActiveCallHeldWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK33ActiveCallHeldWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10060AE2C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10060AE50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *__p = *(a2 + 40);
    v5 = *(a2 + 56);
  }

  v6 = *(a2 + 64);
  sub_10060AF3C();
}

void sub_10060AF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060AFE4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10060B008(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB30F0 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060B088(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060B088(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "ActiveCallHeldWaitingCallAccepted";
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

uint64_t sub_10060B190(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_10060B1F8(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_10060B1F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 48))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060B280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060B298(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_10060B300(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_10060B300(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 48))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060B388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060B3A0(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_10060B424(a1, a2))
  {
    return 1;
  }

  v6 = sub_10060B580(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_10060B424(uint64_t a1, uint64_t a2)
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

    sub_10060B630(sub_10060B3A0, 0, a1, v6, 5, v9);
    sub_10060B99C(v10, v9);
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_10060B538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060B580(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_10060C0E4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060B630(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
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

  sub_10060B7AC(v19, a3, &v15, a5);
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

void sub_10060B768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
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

uint64_t sub_10060B7AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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

  sub_10060B884(a1, a2, &v9, a4);
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

void sub_10060B85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060B884(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
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

void sub_10060B968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  v13 = *(v11 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  sub_1005F6E2C(&a10);
  _Unwind_Resume(a1);
}

void sub_10060B99C(void *a1, uint64_t a2)
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
  sub_10060BA7C(a1, &v6);
}

void sub_10060BA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060BA7C(void *a1, __int128 *a2)
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
  sub_10060BB5C(a1, &v6);
}

void sub_10060BB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060BB5C(uint64_t a1, uint64_t a2)
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
  sub_10060BCAC(off_101E6A3F0, &v5);
}

void sub_10060BC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060BC58(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060BD9C(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_10060BC78(unsigned __int8 **a1)
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

void sub_10060BCAC(uint64_t a1, __int128 *a2)
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
  sub_10060BF2C(a1, &v6);
}

void sub_10060BD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060BD9C(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK44HoldEndActiveCallRquestedWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK44HoldEndActiveCallRquestedWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10060BF08()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10060BF2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *__p = *(a2 + 40);
    v5 = *(a2 + 56);
  }

  v6 = *(a2 + 64);
  sub_10060C018();
}

void sub_10060BFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060C0C0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10060C0E4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB3168 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060C164(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060C164(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "HoldEndActiveCallRquestedWaitingCallAccepted";
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

uint64_t sub_10060C26C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_10060C2D4(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_10060C2D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 64))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060C35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060C374(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_10060C3DC(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_10060C3DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 64))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060C464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060C47C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_10060C500(a1, a2))
  {
    return 1;
  }

  v6 = sub_10060C66C(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_10060C500(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    v5 = *(a2 + 8);
    v7[0] = *a2;
    v7[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 39) < 0)
    {
      sub_100005F2C(v8, *(a2 + 16), *(a2 + 24));
    }

    else
    {
      *v8 = *(a2 + 16);
      v9 = *(a2 + 32);
    }

    v10 = *(a2 + 40);
    sub_10060C71C(sub_10060C47C, 0, a1, v7, 5, v11);
    sub_10060CACC(v12, v11);
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_10060C624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060C66C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_10060D24C(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060C71C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a4[1];
  v17 = *a4;
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 39) < 0)
  {
    sub_100005F2C(v19, a4[2], a4[3]);
  }

  else
  {
    *v19 = *(a4 + 1);
    v20 = a4[4];
  }

  v21 = a4[5];
  sub_10060C8B0(v22, a3, &v17, a5);
  *a6 = a1;
  *(a6 + 8) = a2;
  v13 = v22[1];
  *(a6 + 16) = v22[0];
  *(a6 + 24) = v13;
  v14 = v23;
  *(a6 + 32) = v23;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v25) < 0)
  {
    sub_100005F2C((a6 + 40), __p, *(&__p + 1));
    v16 = SHIBYTE(v25);
    *(a6 + 64) = v26;
    *(a6 + 72) = v27;
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a6 + 40) = __p;
    v15 = v26;
    *(a6 + 56) = v25;
    *(a6 + 64) = v15;
    *(a6 + 72) = v27;
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }
}

void sub_10060C86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *(v15 + 32);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  sub_100260030(&a15);
  sub_1005F6E2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10060C8B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a3 + 8);
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(__p, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    *__p = *(a3 + 16);
    v13 = *(a3 + 32);
  }

  v14 = *(a3 + 40);
  sub_10060C994(a1, a2, &v10, a4);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  return a1;
}

void sub_10060C96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060C994(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v9 = *a3;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(__p, a3[2], a3[3]);
    v9 = v13;
    v8 = v14;
  }

  else
  {
    *__p = *(a3 + 1);
    v16 = a3[4];
  }

  v17 = a3[5];
  *a1 = a2;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C((a1 + 24), __p[0], __p[1]);
    v11 = SHIBYTE(v16);
    *(a1 + 48) = v17;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 24) = *__p;
    v10 = v17;
    *(a1 + 40) = v16;
    *(a1 + 48) = v10;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  *(a1 + 56) = a4;
  return a1;
}

void sub_10060CA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v12 = *(v10 + 16);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  sub_1005F6E2C(&a9);
  _Unwind_Resume(a1);
}

void sub_10060CACC(void *a1, uint64_t a2)
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
  v13 = *(a2 + 72);
  sub_10060CBB4(a1, &v6);
}

void sub_10060CB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060CBB4(void *a1, __int128 *a2)
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

  v12 = *(a2 + 8);
  v13 = *(a2 + 72);
  sub_10060CC9C(a1, &v6);
}

void sub_10060CC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060CC9C(uint64_t a1, uint64_t a2)
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
  v12 = *(a2 + 72);
  sub_10060CDF4(off_101E6A410, &v5);
}

void sub_10060CD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060CDA0(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060CEEC(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_10060CDC0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[72];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_10060CDF4(uint64_t a1, __int128 *a2)
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

  v12 = *(a2 + 8);
  v13 = *(a2 + 72);
  sub_10060D084(a1, &v6);
}

void sub_10060CEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060CEEC(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK34ActiveCallEndedWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK34ActiveCallEndedWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10060D060()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10060D084(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *__p = *(a2 + 40);
    v5 = *(a2 + 56);
  }

  v6 = *(a2 + 64);
  v7 = *(a2 + 72);
  sub_10060D178();
}

void sub_10060D150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060D228()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10060D24C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB31E0 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060D2CC(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060D2CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "ActiveCallEndedWaitingCallAccepted";
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

uint64_t sub_10060D3D4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_10060D43C(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_10060D43C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 120))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060D4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060D4DC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_10060D544(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_10060D544(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 56))(*(a3 + 8), &v7, a2 + 2, a2[5]), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060D5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060D5E8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_10060D650(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_10060D650(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Ending a specific call when there are multiple calls going on", v9, 2u);
      }

      ++*a2[5];
      (*(**(a3 + 8) + 80))(*(a3 + 8), &v10);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

void sub_10060D734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060D758(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_10060D7C0(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_10060D7C0(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Ending a specific call when there are multiple calls going on", v9, 2u);
      }

      ++*a2[5];
      (*(**(a3 + 8) + 80))(*(a3 + 8), &v10);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

void sub_10060D8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060D8C8(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_10060D94C(a1, a2))
  {
    return 1;
  }

  v6 = sub_10060DA54(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_10060D94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = *(a2 + 8);
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 16);
    sub_10060DB04(sub_10060D8C8, 0, a1, v5, 5, v7);
    sub_10060DCD8(v8, v7);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_10060DA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_1003ABCAC((v16 - 48));
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10060DA54(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_10060E1A4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060DB04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a4[1];
  v13 = *a4;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a4 + 16);
  sub_10060DBEC(v16, a3, &v13, a5);
  *a6 = a1;
  *(a6 + 8) = a2;
  v10 = v16[1];
  *(a6 + 16) = v16[0];
  *(a6 + 24) = v10;
  v11 = v17;
  *(a6 + 32) = v17;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v12 = v17;
    *(a6 + 40) = v18;
    *(a6 + 48) = v19;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  else
  {
    *(a6 + 40) = v18;
    *(a6 + 48) = v19;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void sub_10060DBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060DBEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a3 + 8);
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 16);
  sub_10060DC6C(a1, a2, &v7, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void sub_10060DC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060DC6C(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a3 + 16);
    *a1 = a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = v8;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v9 = *(a3 + 16);
    *a1 = a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    *(a1 + 24) = v9;
  }

  *(a1 + 32) = a4;
  return a1;
}

void sub_10060DCD8(void *a1, uint64_t a2)
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
  v9 = *(a2 + 48);
  sub_10060DD70(a1, &v4);
}

void sub_10060DD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060DD70(void *a1, __int128 *a2)
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
  v9 = *(a2 + 48);
  sub_10060DE08(a1, &v4);
}

void sub_10060DDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060DE08(uint64_t a1, uint64_t a2)
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
  v9 = *(a2 + 48);
  sub_10060DF10(off_101E6A430, &v4);
}

void sub_10060DEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060DEBC(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060DFA0(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_10060DEDC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[48];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_10060DF10(uint64_t a1, __int128 *a2)
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
  v9 = *(a2 + 48);
  sub_10060E0CC(a1, &v4);
}

void sub_10060DF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060DFA0(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13SendDTMFDigithEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13SendDTMFDigithEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10060E0CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10060E18C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060E1A4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB3258 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060E224(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060E224(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "SendDTMFDigit";
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

uint64_t sub_10060E32C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_10060E390(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_10060E390(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 160))(*(a3 + 8), &v7, *(a2 + 16)), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060E418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060E430(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_10060E494(&v6, a4, a1);
  *(v4 + 24) = 6;
  return 1;
}

void sub_10060E494(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 160))(*(a3 + 8), &v7, *(a2 + 16)), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060E51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060E534(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_10060E598(&v6, a4, a1);
  *(v4 + 24) = 4;
  return 1;
}

void sub_10060E598(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 160))(*(a3 + 8), &v7, *(a2 + 16)), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060E620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060E638(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_10060E6BC(a1, a2))
  {
    return 1;
  }

  v6 = sub_10060E7BC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_10060E6BC(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_10060E638, 0, a1, v5, 5, v6);
    sub_10060E86C(v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_10060E780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_10060E7BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_10060ED04(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060E86C(void *a1, uint64_t a2)
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
  sub_10060E8FC(a1, &v4);
}

void sub_10060E8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060E8FC(void *a1, __int128 *a2)
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
  sub_10060E98C(a1, &v4);
}

void sub_10060E974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060E98C(uint64_t a1, uint64_t a2)
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
  sub_10060EA8C(off_101E6A450, &v4);
}

void sub_10060EA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060EA38(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060EB14(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_10060EA58(unsigned __int8 **a1)
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

void sub_10060EA8C(uint64_t a1, __int128 *a2)
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
  sub_10060EC38(a1, &v4);
}

void sub_10060EAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060EB14(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13StopDTMFDigithEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13StopDTMFDigithEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10060EC38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10060ECEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060ED04(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB32D0 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060ED84(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060ED84(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "StopDTMFDigit";
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

uint64_t sub_10060EE8C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_10060EEF0(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_10060EEF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 168))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060EF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060EF8C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_10060EFF0(&v6, a4, a1);
  *(v4 + 24) = 6;
  return 1;
}

void sub_10060EFF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 168))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060F074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060F08C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_10060F0F0(&v6, a4, a1);
  *(v4 + 24) = 4;
  return 1;
}

void sub_10060F0F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 168))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060F174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060F238(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "CallEvent", "", v5, 2u);
    }
  }
}

uint64_t sub_10060F2B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10060F2FC()
{
  if ((byte_101FB25A8 & 1) == 0)
  {
    byte_101FB25A8 = 1;
    qword_101FB2598 = sub_1005F8DB0;
    unk_101FB25A0 = sub_1005F8DB0;
    qword_101FB2588 = sub_1005F8DB0;
    unk_101FB2590 = sub_1005F8DB0;
    qword_101FB2578 = sub_1005F8DB0;
    unk_101FB2580 = sub_1005F8DB0;
    qword_101FB2570 = sub_1005F8DB0;
    qword_101FB2558 = sub_1005F8DB0;
    unk_101FB2560 = sub_1005F8DB0;
    qword_101FB2548 = sub_1005F8DB0;
    unk_101FB2550 = sub_1005F8DB0;
    qword_101FB2540 = sub_1005F8DB0;
    qword_101FB2568 = sub_1005F8DB8;
  }
}

void sub_10060F354()
{
  if ((byte_101FB2620 & 1) == 0)
  {
    byte_101FB2620 = 1;
    qword_101FB2610 = sub_1005F9708;
    unk_101FB2618 = sub_1005F9708;
    qword_101FB2600 = sub_1005F9708;
    unk_101FB2608 = sub_1005F9708;
    qword_101FB25E8 = sub_1005F9708;
    unk_101FB25F0 = sub_1005F9708;
    qword_101FB25D8 = sub_1005F9708;
    unk_101FB25E0 = sub_1005F9708;
    qword_101FB25C8 = sub_1005F9708;
    unk_101FB25D0 = sub_1005F9708;
    qword_101FB25B8 = sub_1005F9708;
    unk_101FB25C0 = sub_1005F9708;
    qword_101FB25F8 = sub_1005F9710;
  }
}

void sub_10060F3A8()
{
  if ((byte_101FB2698 & 1) == 0)
  {
    byte_101FB2698 = 1;
    qword_101FB2688 = sub_1005FA068;
    unk_101FB2690 = sub_1005FA068;
    qword_101FB2678 = sub_1005FA068;
    unk_101FB2680 = sub_1005FA068;
    qword_101FB2668 = sub_1005FA068;
    unk_101FB2670 = sub_1005FA068;
    qword_101FB2658 = sub_1005FA068;
    unk_101FB2660 = sub_1005FA068;
    qword_101FB2648 = sub_1005FA068;
    unk_101FB2650 = sub_1005FA068;
    qword_101FB2630 = sub_1005FA068;
    *algn_101FB2638 = sub_1005FA068;
    qword_101FB2640 = sub_1005FA4C4;
  }
}

void sub_10060F3FC()
{
  if ((byte_101FB2710 & 1) == 0)
  {
    byte_101FB2710 = 1;
    qword_101FB2700 = sub_1005FB0AC;
    unk_101FB2708 = sub_1005FB0AC;
    qword_101FB26F0 = sub_1005FB0AC;
    unk_101FB26F8 = sub_1005FB0AC;
    qword_101FB26E0 = sub_1005FB0AC;
    unk_101FB26E8 = sub_1005FB0AC;
    qword_101FB26D0 = sub_1005FB0AC;
    unk_101FB26D8 = sub_1005FB0AC;
    qword_101FB26C0 = sub_1005FB0AC;
    unk_101FB26C8 = sub_1005FB0AC;
    qword_101FB26A8 = sub_1005FB0AC;
    unk_101FB26B0 = sub_1005FB0AC;
    qword_101FB26B8 = sub_1005FB0B4;
  }
}

void sub_10060F450()
{
  if ((byte_101FB2788 & 1) == 0)
  {
    byte_101FB2788 = 1;
    qword_101FB2778 = sub_1005FBA34;
    unk_101FB2780 = sub_1005FBA34;
    qword_101FB2768 = sub_1005FBA34;
    unk_101FB2770 = sub_1005FBA34;
    qword_101FB2758 = sub_1005FBA34;
    unk_101FB2760 = sub_1005FBA34;
    qword_101FB2748 = sub_1005FBA34;
    unk_101FB2750 = sub_1005FBA34;
    qword_101FB2738 = sub_1005FBA34;
    unk_101FB2740 = sub_1005FBA34;
    qword_101FB2728 = sub_1005FBA34;
    unk_101FB2730 = sub_1005FBA34;
    qword_101FB2720 = sub_1005FBA3C;
  }
}

void sub_10060F4A4()
{
  if ((byte_101FB2800 & 1) == 0)
  {
    byte_101FB2800 = 1;
    qword_101FB27F0 = sub_1005FC3B4;
    unk_101FB27F8 = sub_1005FC3B4;
    qword_101FB27E0 = sub_1005FC3B4;
    unk_101FB27E8 = sub_1005FC3B4;
    qword_101FB27D0 = sub_1005FC3B4;
    unk_101FB27D8 = sub_1005FC3B4;
    qword_101FB27C0 = sub_1005FC3B4;
    unk_101FB27C8 = sub_1005FC3B4;
    qword_101FB27B0 = sub_1005FC3B4;
    unk_101FB27B8 = sub_1005FC3B4;
    qword_101FB27A0 = sub_1005FC3B4;
    unk_101FB27A8 = sub_1005FC3B4;
    qword_101FB2798 = sub_1005FC3BC;
  }
}

void sub_10060F4F8()
{
  if ((byte_101FB2878 & 1) == 0)
  {
    byte_101FB2878 = 1;
    qword_101FB2868 = sub_1005FCD08;
    unk_101FB2870 = sub_1005FCD08;
    qword_101FB2858 = sub_1005FCD08;
    unk_101FB2860 = sub_1005FCD08;
    qword_101FB2848 = sub_1005FCD08;
    unk_101FB2850 = sub_1005FCD08;
    qword_101FB2838 = sub_1005FCD08;
    unk_101FB2840 = sub_1005FCD08;
    qword_101FB2830 = sub_1005FCD08;
    qword_101FB2818 = sub_1005FCD08;
    unk_101FB2820 = sub_1005FCD08;
    qword_101FB2810 = sub_1005FCD08;
    qword_101FB2828 = sub_1005FCD10;
  }
}

void sub_10060F550()
{
  if ((byte_101FB28F0 & 1) == 0)
  {
    byte_101FB28F0 = 1;
    qword_101FB28E0 = sub_1005FD664;
    unk_101FB28E8 = sub_1005FD664;
    qword_101FB28D0 = sub_1005FD664;
    unk_101FB28D8 = sub_1005FD664;
    qword_101FB28C0 = sub_1005FD664;
    unk_101FB28C8 = sub_1005FD664;
    qword_101FB28B0 = sub_1005FD664;
    qword_101FB2890 = sub_1005FD664;
    unk_101FB2898 = sub_1005FD664;
    qword_101FB2888 = sub_1005FD664;
    qword_101FB28B8 = sub_1005FD66C;
    qword_101FB28A8 = sub_1005FD770;
    qword_101FB28A0 = sub_1005FD874;
  }
}

void sub_10060F5C4()
{
  if ((byte_101FB2968 & 1) == 0)
  {
    byte_101FB2968 = 1;
    qword_101FB2958 = sub_1005FE1C4;
    unk_101FB2960 = sub_1005FE1C4;
    qword_101FB2948 = sub_1005FE1C4;
    unk_101FB2950 = sub_1005FE1C4;
    qword_101FB2938 = sub_1005FE1C4;
    unk_101FB2940 = sub_1005FE1C4;
    qword_101FB2928 = sub_1005FE1C4;
    unk_101FB2930 = sub_1005FE1C4;
    qword_101FB2918 = sub_1005FE1C4;
    unk_101FB2920 = sub_1005FE1C4;
    qword_101FB2908 = sub_1005FE1C4;
    unk_101FB2910 = sub_1005FE1C4;
    qword_101FB2900 = sub_1005FE1CC;
  }
}

void sub_10060F618()
{
  if ((byte_101FB29E0 & 1) == 0)
  {
    byte_101FB29E0 = 1;
    qword_101FB29D0 = sub_1005FEB18;
    unk_101FB29D8 = sub_1005FEB18;
    qword_101FB29C0 = sub_1005FEB18;
    unk_101FB29C8 = sub_1005FEB18;
    qword_101FB29B0 = sub_1005FEB18;
    unk_101FB29B8 = sub_1005FEB18;
    qword_101FB29A0 = sub_1005FEB18;
    unk_101FB29A8 = sub_1005FEB18;
    qword_101FB2988 = sub_1005FEB18;
    unk_101FB2990 = sub_1005FEB18;
    qword_101FB2978 = sub_1005FEB18;
    unk_101FB2980 = sub_1005FEB18;
    qword_101FB2998 = sub_1005FEB20;
  }
}

void sub_10060F66C()
{
  if ((byte_101FB2A58 & 1) == 0)
  {
    byte_101FB2A58 = 1;
    qword_101FB2A48 = sub_1005FF474;
    unk_101FB2A50 = sub_1005FF474;
    qword_101FB2A28 = sub_1005FF474;
    unk_101FB2A30 = sub_1005FF474;
    qword_101FB2A18 = sub_1005FF474;
    qword_101FB2A00 = sub_1005FF474;
    unk_101FB2A08 = sub_1005FF474;
    qword_101FB29F0 = sub_1005FF474;
    qword_101FB2A40 = sub_1005FF47C;
    qword_101FB2A38 = sub_1005FF584;
    qword_101FB2A20 = sub_1005FF740;
    qword_101FB2A10 = sub_1005FF8FC;
    qword_101FB29F8 = sub_1005FFAB8;
  }
}

void sub_10060F6FC()
{
  if ((byte_101FB2AD0 & 1) == 0)
  {
    byte_101FB2AD0 = 1;
    qword_101FB2AC0 = sub_1006004C0;
    unk_101FB2AC8 = sub_1006004C0;
    qword_101FB2AB0 = sub_1006004C0;
    unk_101FB2AB8 = sub_1006004C0;
    qword_101FB2A98 = sub_1006004C0;
    unk_101FB2AA0 = sub_1006004C0;
    qword_101FB2A88 = sub_1006004C0;
    unk_101FB2A90 = sub_1006004C0;
    qword_101FB2A78 = sub_1006004C0;
    unk_101FB2A80 = sub_1006004C0;
    qword_101FB2A70 = sub_1006004C0;
    qword_101FB2AA8 = sub_1006004C8;
    qword_101FB2A68 = sub_1006007F8;
  }
}

void sub_10060F760()
{
  if ((byte_101FB2B48 & 1) == 0)
  {
    byte_101FB2B48 = 1;
    qword_101FB2B38 = sub_100600AD8;
    unk_101FB2B40 = sub_100600AD8;
    qword_101FB2B28 = sub_100600AD8;
    unk_101FB2B30 = sub_100600AD8;
    qword_101FB2B18 = sub_100600AD8;
    unk_101FB2B20 = sub_100600AD8;
    qword_101FB2B08 = sub_100600AD8;
    unk_101FB2B10 = sub_100600AD8;
    qword_101FB2AF8 = sub_100600AD8;
    unk_101FB2B00 = sub_100600AD8;
    qword_101FB2AE8 = sub_100600AD8;
    unk_101FB2AF0 = sub_100600AD8;
    qword_101FB2AE0 = sub_100600D08;
  }
}

void sub_10060F7B4()
{
  if ((byte_101FB2BC0 & 1) == 0)
  {
    byte_101FB2BC0 = 1;
    qword_101FB2BB0 = sub_100601890;
    unk_101FB2BB8 = sub_100601890;
    qword_101FB2BA0 = sub_100601890;
    unk_101FB2BA8 = sub_100601890;
    qword_101FB2B90 = sub_100601890;
    unk_101FB2B98 = sub_100601890;
    qword_101FB2B80 = sub_100601890;
    unk_101FB2B88 = sub_100601890;
    qword_101FB2B70 = sub_100601890;
    unk_101FB2B78 = sub_100601890;
    qword_101FB2B60 = sub_100601890;
    unk_101FB2B68 = sub_100601890;
    qword_101FB2B58 = sub_100601AC0;
  }
}

void sub_10060F808()
{
  if ((byte_101FB2C38 & 1) == 0)
  {
    byte_101FB2C38 = 1;
    qword_101FB2C28 = sub_100602D00;
    unk_101FB2C30 = sub_100602D00;
    qword_101FB2C18 = sub_100602D00;
    unk_101FB2C20 = sub_100602D00;
    qword_101FB2C08 = sub_100602D00;
    unk_101FB2C10 = sub_100602D00;
    qword_101FB2BF8 = sub_100602D00;
    unk_101FB2C00 = sub_100602D00;
    qword_101FB2BE8 = sub_100602D00;
    unk_101FB2BF0 = sub_100602D00;
    qword_101FB2BE0 = sub_100602D00;
    qword_101FB2BD0 = sub_100602D00;
    qword_101FB2BD8 = sub_100602D08;
  }
}

void sub_10060F860()
{
  if ((byte_101FB2CB0 & 1) == 0)
  {
    byte_101FB2CB0 = 1;
    qword_101FB2CA8 = sub_10060365C;
    qword_101FB2CA0 = sub_100603664;
    qword_101FB2C98 = sub_100603770;
    qword_101FB2C90 = sub_1006038A8;
    qword_101FB2C88 = sub_1006039E0;
    qword_101FB2C80 = sub_100603AEC;
    qword_101FB2C78 = sub_100603C24;
    qword_101FB2C70 = sub_100603DB8;
    qword_101FB2C68 = sub_100603EC4;
    qword_101FB2C60 = sub_100604088;
    qword_101FB2C58 = sub_100604194;
    qword_101FB2C50 = sub_1006042A0;
    qword_101FB2C48 = sub_100604408;
  }
}

void sub_10060F950()
{
  if ((byte_101FB2D28 & 1) == 0)
  {
    byte_101FB2D28 = 1;
    qword_101FB2D18 = sub_100604D58;
    unk_101FB2D20 = sub_100604D58;
    qword_101FB2CE8 = sub_100604D58;
    qword_101FB2D10 = sub_100604D60;
    qword_101FB2D08 = sub_100604E64;
    qword_101FB2D00 = sub_100604F68;
    qword_101FB2CF8 = sub_100605070;
    qword_101FB2CF0 = sub_100605174;
    qword_101FB2CE0 = sub_100605278;
    qword_101FB2CD8 = sub_1006055A8;
    qword_101FB2CD0 = sub_1006057CC;
    qword_101FB2CC8 = sub_1006058D8;
    qword_101FB2CC0 = sub_1006059E0;
  }
}

void sub_10060FA24()
{
  if ((byte_101FB2DA0 & 1) == 0)
  {
    byte_101FB2DA0 = 1;
    qword_101FB2D90 = sub_100605F74;
    unk_101FB2D98 = sub_100605F74;
    qword_101FB2D78 = sub_100605F74;
    unk_101FB2D80 = sub_100605F74;
    qword_101FB2D60 = sub_100605F74;
    unk_101FB2D68 = sub_100605F74;
    qword_101FB2D50 = sub_100605F74;
    unk_101FB2D58 = sub_100605F74;
    qword_101FB2D40 = sub_100605F74;
    unk_101FB2D48 = sub_100605F74;
    qword_101FB2D38 = sub_100605F74;
    qword_101FB2D88 = sub_100605F7C;
    qword_101FB2D70 = sub_100605FA8;
  }
}

void sub_10060FA88()
{
  if ((byte_101FB2E18 & 1) == 0)
  {
    byte_101FB2E18 = 1;
    qword_101FB2E08 = sub_100606820;
    unk_101FB2E10 = sub_100606820;
    qword_101FB2DF0 = sub_100606820;
    unk_101FB2DF8 = sub_100606820;
    qword_101FB2DD8 = sub_100606820;
    qword_101FB2DB0 = sub_100606820;
    *algn_101FB2DB8 = sub_100606820;
    qword_101FB2E00 = sub_100606828;
    qword_101FB2DE8 = sub_100606854;
    qword_101FB2DE0 = sub_100606880;
    qword_101FB2DD0 = sub_1006068AC;
    qword_101FB2DC8 = sub_100606A40;
    qword_101FB2DC0 = sub_100606C64;
  }
}

void sub_10060FB24()
{
  if ((byte_101FB2E90 & 1) == 0)
  {
    byte_101FB2E90 = 1;
    qword_101FB2E80 = sub_1006077CC;
    unk_101FB2E88 = sub_1006077CC;
    qword_101FB2E78 = sub_1006077CC;
    qword_101FB2E58 = sub_1006077CC;
    unk_101FB2E60 = sub_1006077CC;
    qword_101FB2E48 = sub_1006077CC;
    unk_101FB2E50 = sub_1006077CC;
    qword_101FB2E38 = sub_1006077CC;
    unk_101FB2E40 = sub_1006077CC;
    qword_101FB2E28 = sub_1006077CC;
    qword_101FB2E70 = sub_1006077D4;
    qword_101FB2E68 = sub_1006078D8;
    qword_101FB2E30 = sub_1006079E0;
  }
}

void sub_10060FB98()
{
  if ((byte_101FB2F08 & 1) == 0)
  {
    byte_101FB2F08 = 1;
    qword_101FB2EF8 = sub_100608334;
    unk_101FB2F00 = sub_100608334;
    qword_101FB2EE8 = sub_100608334;
    unk_101FB2EF0 = sub_100608334;
    qword_101FB2EE0 = sub_100608334;
    qword_101FB2EC8 = sub_100608334;
    unk_101FB2ED0 = sub_100608334;
    qword_101FB2EB8 = sub_100608334;
    unk_101FB2EC0 = sub_100608334;
    qword_101FB2EA8 = sub_100608334;
    unk_101FB2EB0 = sub_100608334;
    qword_101FB2EA0 = sub_100608334;
    qword_101FB2ED8 = sub_10060833C;
  }
}

void sub_10060FBF0()
{
  if ((byte_101FB2F80 & 1) == 0)
  {
    byte_101FB2F80 = 1;
    qword_101FB2F70 = sub_100608444;
    unk_101FB2F78 = sub_100608444;
    qword_101FB2F58 = sub_100608444;
    unk_101FB2F60 = sub_100608444;
    qword_101FB2F40 = sub_100608444;
    unk_101FB2F48 = sub_100608444;
    qword_101FB2F30 = sub_100608444;
    unk_101FB2F38 = sub_100608444;
    qword_101FB2F20 = sub_100608444;
    unk_101FB2F28 = sub_100608444;
    qword_101FB2F18 = sub_100608444;
    qword_101FB2F68 = sub_10060844C;
    qword_101FB2F50 = sub_100608550;
  }
}

void sub_10060FC54()
{
  if ((byte_101FB2FF8 & 1) == 0)
  {
    byte_101FB2FF8 = 1;
    qword_101FB2FE8 = sub_100608EA0;
    unk_101FB2FF0 = sub_100608EA0;
    qword_101FB2FE0 = sub_100608EA0;
    qword_101FB2FC8 = sub_100608EA0;
    unk_101FB2FD0 = sub_100608EA0;
    qword_101FB2FB8 = sub_100608EA0;
    unk_101FB2FC0 = sub_100608EA0;
    qword_101FB2FA8 = sub_100608EA0;
    unk_101FB2FB0 = sub_100608EA0;
    qword_101FB2F98 = sub_100608EA0;
    unk_101FB2FA0 = sub_100608EA0;
    qword_101FB2F90 = sub_100608EA0;
    qword_101FB2FD8 = sub_100608EA8;
  }
}

void sub_10060FCAC()
{
  if ((byte_101FB3070 & 1) == 0)
  {
    byte_101FB3070 = 1;
    qword_101FB3060 = sub_1006097FC;
    unk_101FB3068 = sub_1006097FC;
    qword_101FB3048 = sub_1006097FC;
    unk_101FB3050 = sub_1006097FC;
    qword_101FB3030 = sub_1006097FC;
    unk_101FB3038 = sub_1006097FC;
    qword_101FB3020 = sub_1006097FC;
    unk_101FB3028 = sub_1006097FC;
    qword_101FB3010 = sub_1006097FC;
    unk_101FB3018 = sub_1006097FC;
    qword_101FB3008 = sub_1006097FC;
    qword_101FB3058 = sub_100609804;
    qword_101FB3040 = sub_100609868;
  }
}

void sub_10060FD10()
{
  if ((byte_101FB30E8 & 1) == 0)
  {
    byte_101FB30E8 = 1;
    qword_101FB30D8 = sub_10060A1B8;
    unk_101FB30E0 = sub_10060A1B8;
    qword_101FB30C0 = sub_10060A1B8;
    unk_101FB30C8 = sub_10060A1B8;
    qword_101FB30B0 = sub_10060A1B8;
    unk_101FB30B8 = sub_10060A1B8;
    qword_101FB30A0 = sub_10060A1B8;
    unk_101FB30A8 = sub_10060A1B8;
    qword_101FB3090 = sub_10060A1B8;
    unk_101FB3098 = sub_10060A1B8;
    qword_101FB3080 = sub_10060A1B8;
    *algn_101FB3088 = sub_10060A1B8;
    qword_101FB30D0 = sub_10060A1C0;
  }
}

void sub_10060FD64()
{
  if ((byte_101FB3160 & 1) == 0)
  {
    byte_101FB3160 = 1;
    qword_101FB3150 = sub_10060B188;
    unk_101FB3158 = sub_10060B188;
    qword_101FB3140 = sub_10060B188;
    unk_101FB3148 = sub_10060B188;
    qword_101FB3128 = sub_10060B188;
    unk_101FB3130 = sub_10060B188;
    qword_101FB3118 = sub_10060B188;
    unk_101FB3120 = sub_10060B188;
    qword_101FB3108 = sub_10060B188;
    unk_101FB3110 = sub_10060B188;
    qword_101FB30F8 = sub_10060B188;
    qword_101FB3138 = sub_10060B190;
    qword_101FB3100 = sub_10060B298;
  }
}

void sub_10060FDC8()
{
  if ((byte_101FB31D8 & 1) == 0)
  {
    byte_101FB31D8 = 1;
    qword_101FB31C8 = sub_10060C264;
    unk_101FB31D0 = sub_10060C264;
    qword_101FB31B8 = sub_10060C264;
    unk_101FB31C0 = sub_10060C264;
    qword_101FB31A0 = sub_10060C264;
    unk_101FB31A8 = sub_10060C264;
    qword_101FB3190 = sub_10060C264;
    unk_101FB3198 = sub_10060C264;
    qword_101FB3180 = sub_10060C264;
    unk_101FB3188 = sub_10060C264;
    qword_101FB3170 = sub_10060C264;
    qword_101FB31B0 = sub_10060C26C;
    qword_101FB3178 = sub_10060C374;
  }
}

void sub_10060FE2C()
{
  if ((byte_101FB3250 & 1) == 0)
  {
    byte_101FB3250 = 1;
    qword_101FB3240 = sub_10060D3CC;
    unk_101FB3248 = sub_10060D3CC;
    qword_101FB3230 = sub_10060D3CC;
    unk_101FB3238 = sub_10060D3CC;
    qword_101FB3210 = sub_10060D3CC;
    qword_101FB31F8 = sub_10060D3CC;
    unk_101FB3200 = sub_10060D3CC;
    qword_101FB31E8 = sub_10060D3CC;
    unk_101FB31F0 = sub_10060D3CC;
    qword_101FB3228 = sub_10060D3D4;
    qword_101FB3220 = sub_10060D4DC;
    qword_101FB3218 = sub_10060D5E8;
    qword_101FB3208 = sub_10060D758;
  }
}

void sub_10060FEAC()
{
  if ((byte_101FB32C8 & 1) == 0)
  {
    byte_101FB32C8 = 1;
    qword_101FB32B8 = sub_10060E324;
    unk_101FB32C0 = sub_10060E324;
    qword_101FB32A8 = sub_10060E324;
    unk_101FB32B0 = sub_10060E324;
    qword_101FB32A0 = sub_10060E324;
    qword_101FB3288 = sub_10060E324;
    qword_101FB3270 = sub_10060E324;
    unk_101FB3278 = sub_10060E324;
    qword_101FB3260 = sub_10060E324;
    *algn_101FB3268 = sub_10060E324;
    qword_101FB3298 = sub_10060E32C;
    qword_101FB3290 = sub_10060E430;
    qword_101FB3280 = sub_10060E534;
  }
}

void sub_10060FF20()
{
  if ((byte_101FB3340 & 1) == 0)
  {
    byte_101FB3340 = 1;
    qword_101FB3330 = sub_10060EE84;
    unk_101FB3338 = sub_10060EE84;
    qword_101FB3320 = sub_10060EE84;
    unk_101FB3328 = sub_10060EE84;
    qword_101FB3318 = sub_10060EE84;
    qword_101FB3300 = sub_10060EE84;
    qword_101FB32E8 = sub_10060EE84;
    unk_101FB32F0 = sub_10060EE84;
    qword_101FB32D8 = sub_10060EE84;
    unk_101FB32E0 = sub_10060EE84;
    qword_101FB3310 = sub_10060EE8C;
    qword_101FB3308 = sub_10060EF8C;
    qword_101FB32F8 = sub_10060F08C;
  }
}

const char *sub_10060FF94(int a1)
{
  v1 = "";
  if (a1 == 1)
  {
    v1 = "Active";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Disabled";
  }
}

const char *sub_10060FFC0(unsigned int a1)
{
  if (a1 > 2)
  {
    return "";
  }

  else
  {
    return off_101E6A5B0[a1];
  }
}

const char *sub_10060FFE4(int a1)
{
  v1 = "Good";
  if (a1 == -1)
  {
    v1 = "Incomplete";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Pending";
  }
}

const char *sub_100610010(unsigned int a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_101E6A5C8[a1];
  }
}

const void **sub_100610034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v32 = Mutable;
  if (*(a1 + 56) == 1)
  {
    v5 = Mutable;
    if (*(a1 + 55) < 0)
    {
      sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
    }

    else
    {
      *__p = *(a1 + 32);
      v30 = *(a1 + 48);
    }

    if (SHIBYTE(v30) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v35 = v30;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v33;
      v33 = v38;
      v39 = v6;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v5, @"organization", v31);
    sub_100005978(&v31);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v7 = v32;
    if (*(a1 + 87) < 0)
    {
      sub_100005F2C(v27, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      *v27 = *(a1 + 64);
      v28 = *(a1 + 80);
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(&__dst, v27[0], v27[1]);
    }

    else
    {
      __dst = *v27;
      v35 = v28;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v33;
      v33 = v38;
      v39 = v8;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v7, @"department", v31);
    sub_100005978(&v31);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

  if (*(a1 + 120) == 1)
  {
    v9 = v32;
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(v25, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      *v25 = *(a1 + 96);
      v26 = *(a1 + 112);
    }

    if (SHIBYTE(v26) < 0)
    {
      sub_100005F2C(&__dst, v25[0], v25[1]);
    }

    else
    {
      __dst = *v25;
      v35 = v26;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v33;
      v33 = v38;
      v39 = v10;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v9, @"city", v31);
    sub_100005978(&v31);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (*(a1 + 152) == 1)
  {
    v11 = v32;
    if (*(a1 + 151) < 0)
    {
      sub_100005F2C(v23, *(a1 + 128), *(a1 + 136));
    }

    else
    {
      *v23 = *(a1 + 128);
      v24 = *(a1 + 144);
    }

    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&__dst, v23[0], v23[1]);
    }

    else
    {
      __dst = *v23;
      v35 = v24;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v12 = v33;
      v33 = v38;
      v39 = v12;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v11, @"state", v31);
    sub_100005978(&v31);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }
  }

  if (*(a1 + 184) == 1)
  {
    v13 = v32;
    if (*(a1 + 183) < 0)
    {
      sub_100005F2C(v21, *(a1 + 160), *(a1 + 168));
    }

    else
    {
      *v21 = *(a1 + 160);
      v22 = *(a1 + 176);
    }

    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&__dst, v21[0], v21[1]);
    }

    else
    {
      __dst = *v21;
      v35 = v22;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v14 = v33;
      v33 = v38;
      v39 = v14;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v13, @"country", v31);
    sub_100005978(&v31);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (*(a1 + 216) == 1)
  {
    v15 = v32;
    if (*(a1 + 215) < 0)
    {
      sub_100005F2C(v19, *(a1 + 192), *(a1 + 200));
    }

    else
    {
      *v19 = *(a1 + 192);
      v20 = *(a1 + 208);
    }

    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(&__dst, v19[0], v19[1]);
    }

    else
    {
      __dst = *v19;
      v35 = v20;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v16 = v33;
      v33 = v38;
      v39 = v16;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v17 = v33;
    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v15, @"email", v17);
    sub_100005978(&v31);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  sub_100010180(a2, &v32);
  return sub_1000296E0(&v32);
}

void sub_1006107A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_100005978((v49 - 120));
  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v49 - 128));
  _Unwind_Resume(a1);
}

void sub_1006109FC(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"organization");
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 56))
      {
        if (*(a1 + 55) < 0)
        {
          operator delete(*(a1 + 32));
        }

        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 47) = 0;
        *(a1 + 55) = 0;
      }

      else
      {
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 47) = 0;
        *(a1 + 55) = 0;
        *(a1 + 56) = 1;
      }
    }
  }

  v6 = CFDictionaryGetValue(theDict, @"department");
  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 88))
      {
        if (*(a1 + 87) < 0)
        {
          operator delete(*(a1 + 64));
        }

        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 79) = 0;
        *(a1 + 87) = 0;
      }

      else
      {
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 79) = 0;
        *(a1 + 87) = 0;
        *(a1 + 88) = 1;
      }
    }
  }

  v8 = CFDictionaryGetValue(theDict, @"city");
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 120))
      {
        if (*(a1 + 119) < 0)
        {
          operator delete(*(a1 + 96));
        }

        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 111) = 0;
        *(a1 + 119) = 0;
      }

      else
      {
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 111) = 0;
        *(a1 + 119) = 0;
        *(a1 + 120) = 1;
      }
    }
  }

  v10 = CFDictionaryGetValue(theDict, @"state");
  if (v10)
  {
    v11 = CFGetTypeID(v10);
    if (v11 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 152))
      {
        if (*(a1 + 151) < 0)
        {
          operator delete(*(a1 + 128));
        }

        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        *(a1 + 143) = 0;
        *(a1 + 151) = 0;
      }

      else
      {
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        *(a1 + 143) = 0;
        *(a1 + 151) = 0;
        *(a1 + 152) = 1;
      }
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"country");
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    if (v13 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 184))
      {
        if (*(a1 + 183) < 0)
        {
          operator delete(*(a1 + 160));
        }

        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        *(a1 + 175) = 0;
        *(a1 + 183) = 0;
      }

      else
      {
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        *(a1 + 175) = 0;
        *(a1 + 183) = 0;
        *(a1 + 184) = 1;
      }
    }
  }

  v14 = CFDictionaryGetValue(theDict, @"email");
  if (v14)
  {
    v15 = CFGetTypeID(v14);
    if (v15 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 216))
      {
        if (*(a1 + 215) < 0)
        {
          operator delete(*(a1 + 192));
        }

        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        *(a1 + 207) = 0;
        *(a1 + 215) = 0;
      }

      else
      {
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        *(a1 + 207) = 0;
        *(a1 + 215) = 0;
        *(a1 + 216) = 1;
      }
    }
  }
}

void sub_100610E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100610E6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = v22;
    v22 = Mutable;
    *&v26 = v5;
    sub_1000296E0(&v26);
  }

  if (*(a1 + 120) == 1)
  {
    v6 = v22;
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(__dst, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      *__dst = *(a1 + 96);
      v20 = *(a1 + 112);
    }

    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v25 = v20;
    }

    v23 = 0;
    if (SHIBYTE(v25) < 0)
    {
      sub_100005F2C(&v26, __p[0], __p[1]);
    }

    else
    {
      v26 = *__p;
      v27 = v25;
    }

    v28 = 0;
    if (ctu::cf::convert_copy())
    {
      v7 = v23;
      v23 = v28;
      v29 = v7;
      sub_100005978(&v29);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    value = v23;
    v23 = 0;
    sub_100005978(&v23);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionaryAddValue(v6, @"connectivity-auth-type", value);
    sub_100005978(&value);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (*(a1 + 448) == 1)
  {
    v8 = v22;
    sub_100610034(a1 + 224, &v26);
    CFDictionaryAddValue(v8, @"certificate-info", v26);
    sub_10001021C(&v26);
  }

  if (*(a1 + 184) == 1)
  {
    v9 = v22;
    if (*(a1 + 183) < 0)
    {
      sub_100005F2C(v17, *(a1 + 160), *(a1 + 168));
    }

    else
    {
      *v17 = *(a1 + 160);
      v18 = *(a1 + 176);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__p, v17[0], v17[1]);
    }

    else
    {
      *__p = *v17;
      v25 = v18;
    }

    v23 = 0;
    if (SHIBYTE(v25) < 0)
    {
      sub_100005F2C(&v26, __p[0], __p[1]);
    }

    else
    {
      v26 = *__p;
      v27 = v25;
    }

    v28 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v23;
      v23 = v28;
      v29 = v10;
      sub_100005978(&v29);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    value = v23;
    v23 = 0;
    sub_100005978(&v23);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionaryAddValue(v9, @"gateway-address", value);
    sub_100005978(&value);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }
  }

  if (*(a1 + 216) == 1)
  {
    v11 = v22;
    if (*(a1 + 215) < 0)
    {
      sub_100005F2C(v15, *(a1 + 192), *(a1 + 200));
    }

    else
    {
      *v15 = *(a1 + 192);
      v16 = *(a1 + 208);
    }

    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(__p, v15[0], v15[1]);
    }

    else
    {
      *__p = *v15;
      v25 = v16;
    }

    v23 = 0;
    if (SHIBYTE(v25) < 0)
    {
      sub_100005F2C(&v26, __p[0], __p[1]);
    }

    else
    {
      v26 = *__p;
      v27 = v25;
    }

    v28 = 0;
    if (ctu::cf::convert_copy())
    {
      v12 = v23;
      v23 = v28;
      v29 = v12;
      sub_100005978(&v29);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    v13 = v23;
    value = v23;
    v23 = 0;
    sub_100005978(&v23);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionaryAddValue(v11, @"entitlement-server-address", v13);
    sub_100005978(&value);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }
  }

  sub_100010180(a2, &v22);
  return sub_1000296E0(&v22);
}

void sub_10061129C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, int a30, const void *a31, const void *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a32);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a31);
  _Unwind_Resume(a1);
}

void sub_1006113E8(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"connectivity-auth-type");
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      memset(v23, 0, 24);
      ctu::cf::assign();
      v36[0] = 0;
      *(v36 + 7) = 0;
      if (*(a1 + 120))
      {
        if (*(a1 + 119) < 0)
        {
          operator delete(*(a1 + 96));
        }

        v6 = v36[0];
        *(a1 + 96) = 0;
        *(a1 + 104) = v6;
        *(a1 + 111) = *(v36 + 7);
        *(a1 + 119) = 0;
      }

      else
      {
        v7 = v36[0];
        *(a1 + 96) = 0;
        *(a1 + 104) = v7;
        *(a1 + 111) = *(v36 + 7);
        *(a1 + 119) = 0;
        *(a1 + 120) = 1;
      }
    }
  }

  v8 = CFDictionaryGetValue(theDict, @"certificate-info");
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFDictionaryGetTypeID())
    {
      *__p = 0u;
      v35 = 0u;
      *v32 = 0u;
      v33 = 0u;
      *v30 = 0u;
      v31 = 0u;
      *v28 = 0u;
      v29 = 0u;
      *v26 = 0u;
      v27 = 0u;
      *v24 = 0u;
      v25 = 0u;
      memset(v23, 0, sizeof(v23));
      sub_10055DF64(a1 + 224, v23);
      if (BYTE8(v35) == 1 && SBYTE7(v35) < 0)
      {
        operator delete(__p[0]);
      }

      if (BYTE8(v33) == 1 && SBYTE7(v33) < 0)
      {
        operator delete(v32[0]);
      }

      if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
      {
        operator delete(v30[0]);
      }

      if (BYTE8(v29) == 1 && SBYTE7(v29) < 0)
      {
        operator delete(v28[0]);
      }

      if (BYTE8(v27) == 1 && SBYTE7(v27) < 0)
      {
        operator delete(v26[0]);
      }

      if (BYTE8(v25) == 1 && SBYTE7(v25) < 0)
      {
        operator delete(v24[0]);
      }

      if (v23[1].n128_u8[8] == 1 && v23[1].n128_i8[7] < 0)
      {
        operator delete(v23[0].n128_u64[0]);
      }

      sub_1006109FC(a1 + 224, v9);
    }
  }

  v11 = CFDictionaryGetValue(theDict, @"gateway-address");
  if (v11)
  {
    v12 = CFGetTypeID(v11);
    if (v12 == CFStringGetTypeID())
    {
      memset(v23, 0, 24);
      ctu::cf::assign();
      v36[0] = v23[0].n128_u64[1];
      v13 = v23[0].n128_u64[0];
      *(v36 + 7) = *(&v23[0].n128_u64[1] + 7);
      v14 = v23[1].n128_u8[7];
      if (*(a1 + 184))
      {
        if (*(a1 + 183) < 0)
        {
          operator delete(*(a1 + 160));
        }

        v15 = v36[0];
        *(a1 + 160) = v13;
        *(a1 + 168) = v15;
        *(a1 + 175) = *(v36 + 7);
        *(a1 + 183) = v14;
      }

      else
      {
        v16 = v36[0];
        *(a1 + 160) = v23[0].n128_u64[0];
        *(a1 + 168) = v16;
        *(a1 + 175) = *(v36 + 7);
        *(a1 + 183) = v14;
        *(a1 + 184) = 1;
      }
    }
  }

  v17 = CFDictionaryGetValue(theDict, @"entitlement-server-address");
  if (v17)
  {
    v18 = CFGetTypeID(v17);
    if (v18 == CFStringGetTypeID())
    {
      memset(v23, 0, 24);
      ctu::cf::assign();
      v36[0] = v23[0].n128_u64[1];
      v19 = v23[0].n128_u64[0];
      *(v36 + 7) = *(&v23[0].n128_u64[1] + 7);
      v20 = v23[1].n128_u8[7];
      if (*(a1 + 216))
      {
        if (*(a1 + 215) < 0)
        {
          operator delete(*(a1 + 192));
        }

        v21 = v36[0];
        *(a1 + 192) = v19;
        *(a1 + 200) = v21;
        *(a1 + 207) = *(v36 + 7);
        *(a1 + 215) = v20;
      }

      else
      {
        v22 = v36[0];
        *(a1 + 192) = v23[0].n128_u64[0];
        *(a1 + 200) = v22;
        *(a1 + 207) = *(v36 + 7);
        *(a1 + 215) = v20;
        *(a1 + 216) = 1;
      }
    }
  }
}

void sub_100611768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1006117A4@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v40 = Mutable;
  if (*(a1 + 24) == 1)
  {
    v5 = Mutable;
    if (*(a1 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a1, *(a1 + 1));
    }

    else
    {
      __dst = *a1;
      v38 = *(a1 + 2);
    }

    if (SHIBYTE(v38) < 0)
    {
      sub_100005F2C(&v42, __dst, *(&__dst + 1));
    }

    else
    {
      v42 = __dst;
      v43 = v38;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v41;
      v41 = v46;
      v47 = v6;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v5, @"csr", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__dst);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v7 = v40;
    if (*(a1 + 55) < 0)
    {
      sub_100005F2C(__p, *(a1 + 4), *(a1 + 5));
    }

    else
    {
      *__p = a1[2];
      v36 = *(a1 + 6);
    }

    if (SHIBYTE(v36) < 0)
    {
      sub_100005F2C(&v42, __p[0], __p[1]);
    }

    else
    {
      v42 = *__p;
      v43 = v36;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v41;
      v41 = v46;
      v47 = v8;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v7, @"sip-uri", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v9 = v40;
    if (*(a1 + 87) < 0)
    {
      sub_100005F2C(v33, *(a1 + 8), *(a1 + 9));
    }

    else
    {
      *v33 = a1[4];
      v34 = *(a1 + 10);
    }

    if (SHIBYTE(v34) < 0)
    {
      sub_100005F2C(&v42, v33[0], v33[1]);
    }

    else
    {
      v42 = *v33;
      v43 = v34;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v41;
      v41 = v46;
      v47 = v10;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v9, @"apn", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }
  }

  if (*(a1 + 120) == 1)
  {
    v11 = v40;
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(v31, *(a1 + 12), *(a1 + 13));
    }

    else
    {
      *v31 = a1[6];
      v32 = *(a1 + 14);
    }

    if (SHIBYTE(v32) < 0)
    {
      sub_100005F2C(&v42, v31[0], v31[1]);
    }

    else
    {
      v42 = *v31;
      v43 = v32;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v12 = v41;
      v41 = v46;
      v47 = v12;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v11, @"username", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  if (*(a1 + 152) == 1)
  {
    v13 = v40;
    if (*(a1 + 151) < 0)
    {
      sub_100005F2C(v29, *(a1 + 16), *(a1 + 17));
    }

    else
    {
      *v29 = a1[8];
      v30 = *(a1 + 18);
    }

    if (SHIBYTE(v30) < 0)
    {
      sub_100005F2C(&v42, v29[0], v29[1]);
    }

    else
    {
      v42 = *v29;
      v43 = v30;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v14 = v41;
      v41 = v46;
      v47 = v14;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v13, @"password", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }
  }

  if (*(a1 + 184) == 1)
  {
    v15 = v40;
    if (*(a1 + 183) < 0)
    {
      sub_100005F2C(v27, *(a1 + 20), *(a1 + 21));
    }

    else
    {
      *v27 = a1[10];
      v28 = *(a1 + 22);
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(&v42, v27[0], v27[1]);
    }

    else
    {
      v42 = *v27;
      v43 = v28;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v16 = v41;
      v41 = v46;
      v47 = v16;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v15, @"imsi", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

  if (*(a1 + 216) == 1)
  {
    v17 = v40;
    if (*(a1 + 215) < 0)
    {
      sub_100005F2C(v25, *(a1 + 24), *(a1 + 25));
    }

    else
    {
      *v25 = a1[12];
      v26 = *(a1 + 26);
    }

    if (SHIBYTE(v26) < 0)
    {
      sub_100005F2C(&v42, v25[0], v25[1]);
    }

    else
    {
      v42 = *v25;
      v43 = v26;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v18 = v41;
      v41 = v46;
      v47 = v18;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v17, @"impu", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (*(a1 + 248) == 1)
  {
    v19 = v40;
    if (*(a1 + 247) < 0)
    {
      sub_100005F2C(v23, *(a1 + 28), *(a1 + 29));
    }

    else
    {
      *v23 = a1[14];
      v24 = *(a1 + 30);
    }

    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&v42, v23[0], v23[1]);
    }

    else
    {
      v42 = *v23;
      v43 = v24;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v20 = v41;
      v41 = v46;
      v47 = v20;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v21 = v41;
    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v19, @"pcscf-address", v21);
    sub_100005978(&v39);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }
  }

  sub_100010180(a2, &v40);
  return sub_1000296E0(&v40);
}