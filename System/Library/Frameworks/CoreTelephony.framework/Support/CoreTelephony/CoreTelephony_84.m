void *sub_10056FEE8(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58148;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056FF64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100570038(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58148;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100570094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8990(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_1005701B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005701D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x1005701D0);
  }

  JUMPOUT(0x1005701CCLL);
}

void *sub_10057027C(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58198;
  sub_100570A78(a1 + 3, a2, *a3, a4);
  a1[9] = @"token-scopes";
  a1[10] = @"status";
  a1[11] = @"scope";
  a1[12] = @"tokens";
  a1[13] = @"mp-tokens";
  a1[14] = @"token";
  a1[15] = @"devices";
  a1[3] = off_101E581E8;
  return a1;
}

void sub_10057034C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005703CC(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100570404(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10054F1F8();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100570AE8();
}

void sub_100570594(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100570C38();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100570814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100570838(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100570D08(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100570A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100570A78(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E58240;
  return result;
}

void *sub_100570B5C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58280;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100570BD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100570CAC(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58280;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100570D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8B64(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100570E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100570E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100570E44);
  }

  JUMPOUT(0x100570E40);
}

void sub_100570E8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E582D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100570F0C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100570F44(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10057162C();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005681A8();
}

void sub_1005710D8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005682F8();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100571358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057137C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100571728(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100571580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_1005715BC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E583A8;
  return result;
}

void sub_100571700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000296E0(va);
  sub_100004A34(v3);
  _Unwind_Resume(a1);
}

void sub_100571728(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = a4[1];
    v15[0] = *a4;
    v15[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v14, a5);
    sub_100060E84(&v13, a6);
    sub_100440DF0(a1, a2, a3, v15, &v14, &v13);
  }

  if (!v10)
  {
    v11 = a4[1];
    v17[1] = *a4;
    v18 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v17, a5);
    sub_100060E84(&v16, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v16);
    sub_10001021C(v17);
    if (v18)
    {
      sub_100004A34(v18);
    }
  }
}

void sub_100571844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10057186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100571864);
  }

  JUMPOUT(0x100571860);
}

void sub_1005718AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E583E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10057192C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100571964(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10057204C();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005681A8();
}

void sub_100571AF8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005682F8();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100571D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100571D9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100572148(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100571FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100571FDC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E584C0;
  return result;
}

void sub_100572120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000296E0(va);
  sub_100004A34(v3);
  _Unwind_Resume(a1);
}

void sub_100572148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = a4[1];
    v15[0] = *a4;
    v15[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v14, a5);
    sub_100060E84(&v13, a6);
    sub_100440F9C(a1, a2, a3, v15, &v14, &v13);
  }

  if (!v10)
  {
    v11 = a4[1];
    v17[1] = *a4;
    v18 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v17, a5);
    sub_100060E84(&v16, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v16);
    sub_10001021C(v17);
    if (v18)
    {
      sub_100004A34(v18);
    }
  }
}

void sub_100572264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10057228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100572284);
  }

  JUMPOUT(0x100572280);
}

void *sub_100572330(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58500;
  sub_100572B34(a1 + 3, a2, *a3, a4);
  a1[9] = @"configuration-profiles";
  a1[10] = @"profile-name";
  a1[11] = @"version";
  a1[12] = @"geofences";
  a1[13] = @"geofence-id";
  a1[14] = @"latitude";
  a1[15] = @"longitude";
  a1[16] = @"radius";
  a1[3] = off_101E58550;
  return a1;
}

void sub_100572408(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100572488(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_1005724C0(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100550D18();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100572BA4();
}

void sub_100572650(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100572CF4();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005728D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005728F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100572DC4(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100572AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100572B34(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E585A8;
  return result;
}

void *sub_100572C18(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E585E8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100572C94(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E585E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100572D68(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E585E8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100572DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8D38(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100572EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100572F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100572F00);
  }

  JUMPOUT(0x100572EFCLL);
}

void sub_100573010(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100573090(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_1005730C8(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100551690();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005737AC();
}

void sub_100573258(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005738FC();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005734D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005734FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_1005739CC(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100573700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_10057373C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E586E0;
  return result;
}

void *sub_100573820(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58720;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10057389C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58720;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100573970(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58720;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005739CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E8F0C(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100573AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100573B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100573B08);
  }

  JUMPOUT(0x100573B04);
}

void sub_100573C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100573CAC(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100573CE4(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100551B80();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005743C8();
}

void sub_100573E74(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100574518();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005740F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100574118(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_1005745E8(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_10057431C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100574358(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E58818;
  return result;
}

void *sub_10057443C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58858;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005744B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10057458C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58858;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005745E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E90E0(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100574704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10057472C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100574724);
  }

  JUMPOUT(0x100574720);
}

void sub_100574820(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E588A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005748A0(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_1005748D8(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_10055252C();
  }

  v3 = **(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 24));
    v5 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v7 = 2080;
    v8 = v5;
    v9 = 2080;
    v10 = ", ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100574FBC();
}

void sub_100574A68(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    v11 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = ", ";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v18 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v18)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10057510C();
  }

  v13 = *(v18 + 24);
  v12 = *(v18 + 32);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v13;
    *&buf[8] = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v18 + 24);
  }

  v14 = *(v18 + 32);
  *(v18 + 24) = v13;
  *(v18 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v15 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v18 + 16);
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  *a4 = v18;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100574CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100574D0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_1005751DC(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100574F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100574F4C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E58950;
  return result;
}

void *sub_100575030(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58990;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005750AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100575180(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58990;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005751DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E92B4(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_1005752F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100575320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100575318);
  }

  JUMPOUT(0x100575314);
}

void sub_100575360(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x34u);
}

uint64_t sub_100575380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 40) = a2;
  v4 = **(a1 + 24);

  return PersonalityInfo::logPrefix(v4);
}

id sub_10057539C()
{

  return [v0 UTF8String];
}

void sub_10057578C(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[8].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    sub_100004A34(shared_weak_owners);
  }

  sub_10001021C(v4 + 1);
  sub_10001021C(v4);
  v7 = v1[7].__vftable;
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = v1[6].__vftable;
  if (v8)
  {
    sub_100004A34(v8);
  }

  std::mutex::~mutex(v3);
  ctu::OsLogLogger::~OsLogLogger(&v1[2].__shared_weak_owners_);
  sub_1000C0544(&v1[1].__shared_owners_);
  if (v2)
  {
    sub_100004A34(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void *sub_100575868(void *a1)
{
  *a1 = off_101E58B70;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 3));

  return sub_1002A493C(a1);
}

void sub_1005758D0(void *a1)
{
  sub_100575868(a1);

  operator delete();
}

const char *sub_100575958(uint64_t a1)
{
  v1 = sub_1002A4990(a1);
  v2 = "ipcu-apn.?";
  if (v1 == 2)
  {
    v2 = "ipcu-apn.2";
  }

  if (v1 == 1)
  {
    return "ipcu-apn.1";
  }

  else
  {
    return v2;
  }
}

BOOL sub_100575998(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1002A4990(a1);
  std::mutex::lock((v1 + 48));
  v3 = *(v1 + 128) == v2 && (*(v1 + 168) & 1) == 0 && *(v1 + 152) != 0;
  std::mutex::unlock((v1 + 48));
  return v3;
}

void sub_1005759FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1002A4990(a1);
  std::mutex::lock((v2 + 48));
  if (*(v2 + 128) == v3 && (*(v2 + 168) & 1) == 0)
  {
    v4 = *(v2 + 136);
    v5 = *(v2 + 144);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  std::mutex::unlock((v2 + 48));
  v8 = *(a1 + 24);
  v6 = (a1 + 24);
  v7 = v8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DATA:: IPCU_APN_Storage:", v9, 2u);
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v4 != 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t%d APN(s) found", v9, 8u);
  }

  if (v4)
  {
    sub_1002A24E4(v4, v6);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_100575B50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100575B68(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = sub_1002A4990(a1);

  sub_100575DDC(v3, v4, a2);
}

void sub_100575BAC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = *(a1 + 32);
  v8 = sub_1002A4990(a1);

  sub_100575E50(v7, v8, a2, a3, a4);
}

void sub_100575C28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100575CA4(uint64_t a1)
{
  *a1 = off_101E58C90;
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001021C((a1 + 160));
  sub_10001021C((a1 + 152));
  v3 = *(a1 + 144);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    sub_100004A34(v4);
  }

  std::mutex::~mutex((a1 + 48));
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_100575D30(uint64_t a1)
{
  *a1 = off_101E58C90;
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001021C((a1 + 160));
  sub_10001021C((a1 + 152));
  v3 = *(a1 + 144);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    sub_100004A34(v4);
  }

  std::mutex::~mutex((a1 + 48));
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  operator delete();
}

void sub_100575DDC(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  std::mutex::lock((a1 + 48));
  if (*(a1 + 128) == a2 && (*(a1 + 168) & 1) == 0)
  {
    sub_100010024(a3, (a1 + 160));
  }

  else
  {
    *a3 = 0;
  }

  std::mutex::unlock((a1 + 48));
}

void sub_100575E50(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v31 = (a1 + 48);
  v32 = 1;
  std::mutex::lock((a1 + 48));
  if (*(a1 + 128) != a2)
  {
    goto LABEL_43;
  }

  if (*(a1 + 168))
  {
    goto LABEL_43;
  }

  v10 = *(a1 + 136);
  if (!v10)
  {
    goto LABEL_43;
  }

  if ((*(v10 + 228) & a4) != 0)
  {
    goto LABEL_39;
  }

  v11 = *(a1 + 112);
  *(v10 + 152) = *(a1 + 172);
  *(v10 + 228) = 236;
  *(v10 + 232) = 1;
  ServiceMap = Registry::getServiceMap(v11);
  v13 = ServiceMap;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(ServiceMap);
  v29 = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, &v29);
  if (!v18)
  {
    std::mutex::unlock(v13);
    goto LABEL_13;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    std::mutex::unlock(v13);
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_13:
    v21 = 0;
    v22 = 0;
    goto LABEL_22;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  if (!v20)
  {
    v21 = 0;
    v22 = 0;
LABEL_21:
    sub_100004A34(v19);
    goto LABEL_22;
  }

LABEL_15:
  v29 = 0;
  v30 = 0;
  sub_1004196C0(v20, &v29);
  if (v29)
  {
    sub_1005768D0(&v31);
    (*(*v29 + 72))(v28);
    v22 = v28[0];
    v21 = v28[1];
    sub_100576914(&v31);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  if (v19)
  {
    goto LABEL_21;
  }

LABEL_22:
  v23 = CIPFamily::operator!();
  if (v23)
  {
    if (!v22)
    {
      DataUtils::defaultIPFamily(v23);
    }

    CIPFamily::operator=();
  }

  v24 = CIPFamily::operator!();
  if (v24)
  {
    if (!v22)
    {
      DataUtils::defaultIPFamily(v24);
    }

    CIPFamily::operator=();
  }

  v25 = *(a1 + 136);
  if ((*(v25 + 216) & 1) == 0)
  {
    if (!v22)
    {
      goto LABEL_37;
    }

    if (*(v22 + 216) == 1)
    {
      sub_1002ABB94((v25 + 200), (v22 + 200));
      v25 = *(a1 + 136);
    }

    goto LABEL_36;
  }

  if (v22)
  {
LABEL_36:
    *(v25 + 228) = *(v22 + 228);
  }

LABEL_37:
  sub_1002A6298(v25, (a1 + 112), *(a1 + 128));
  if (v21)
  {
    sub_100004A34(v21);
  }

LABEL_39:
  v26 = *(a1 + 136);
  if (!v26 || (*(v26 + 152) & a3) == 0)
  {
LABEL_43:
    *a5 = 0;
    a5[1] = 0;
    goto LABEL_44;
  }

  v27 = *(a1 + 144);
  *a5 = v26;
  a5[1] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_44:
  if (v32 == 1)
  {
    std::mutex::unlock(v31);
  }
}

void sub_10057613C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::mutex *a13, char a14)
{
  if (a12)
  {
    sub_100004A34(a12);
    if (!v14)
    {
LABEL_6:
      if (a14 == 1)
      {
        std::mutex::unlock(a13);
      }

      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_6;
  }

  sub_100004A34(v14);
  goto LABEL_6;
}

void sub_1005761C0(uint64_t a1@<X0>, const void **a2@<X8>)
{
  std::mutex::lock((a1 + 48));
  if (*(a1 + 168) == 1)
  {
    sub_100010024(a2, (a1 + 152));
  }

  else
  {
    *a2 = 0;
  }

  std::mutex::unlock((a1 + 48));
}

void sub_100576220(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I refresh", buf, 2u);
  }

  std::mutex::lock((a1 + 48));
  v3 = *(a1 + 128);
  v5 = 0;
  sub_100010024(&v5, (a1 + 160));
  v4 = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100576974(a1, v3, v5);
  sub_10001021C(&v5);
  std::mutex::unlock((a1 + 48));
}

void sub_1005762D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  std::mutex::unlock((v2 + 48));
  _Unwind_Resume(a1);
}

void sub_1005762EC(uint64_t a1)
{
  std::mutex::lock((a1 + 48));
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I  | IPCU_CellProfile:", v11, 2u);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = subscriber::asString();
    *v11 = 136315138;
    *&v11[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I  | IPCU profile assigned to: %s", v11, 0xCu);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asStringBool(*(a1 + 168));
    *v11 = 136315138;
    *&v11[4] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I  | NAI mode: %s", v11, 0xCu);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315394;
    *&v11[4] = "";
    *&v11[12] = 2080;
    *&v11[14] = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s | APN dict:", v11, 0x16u);
  }

  *v11 = off_101E58DA0;
  *&v11[8] = a1;
  v12 = v11;
  logger::CFTypeRefLogger();
  sub_100007E44(v11);
  v6 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315394;
    *&v11[4] = "";
    *&v11[12] = 2080;
    *&v11[14] = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s | AttachAPN:", v11, 0x16u);
  }

  *v11 = off_101E58E20;
  *&v11[8] = a1;
  v12 = v11;
  logger::CFTypeRefLogger();
  sub_100007E44(v11);
  v7 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 172);
    *v11 = 67109120;
    *&v11[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I  | fIPCUApnTypemask: 0x%X", v11, 8u);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    sub_1002A24E4(v9, (a1 + 40));
  }

  else
  {
    v10 = *v2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I  | APN: not present", v11, 2u);
    }
  }

  std::mutex::unlock((a1 + 48));
}

void sub_10057662C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 48));
  sub_100578290(a1);
  (*(**(a1 + 176) + 16))(*(a1 + 176), @"profile", a2, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_100577D44(a1);
}

void sub_100576728(uint64_t a1)
{
  std::mutex::lock((a1 + 48));
  sub_100578290(a1);
  sub_100577D44(a1);
}

void sub_1005767CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 48));
  *a2 = 0;
  (*(**(a1 + 176) + 40))(&v4);
  sub_100010180(a2, &v4);
  sub_10000A1EC(&v4);
  std::mutex::unlock((a1 + 48));
}

void sub_100576874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  std::mutex::unlock((v2 + 48));
  _Unwind_Resume(a1);
}

uint64_t sub_100576898(uint64_t a1)
{
  std::mutex::lock((a1 + 48));
  v2 = *(a1 + 128);
  std::mutex::unlock((a1 + 48));
  return v2;
}

void sub_1005768D0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    sub_100576914();
  }
}

void sub_100576914(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  sub_100576974(v3, v4, v5);
}

void sub_100576974(uint64_t a1, int a2, const void *a3)
{
  v6 = *(a1 + 40);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I reactOnRefresh", buf, 2u);
  }

  if (*(a1 + 152) || *(a1 + 160))
  {
    v8 = capabilities::ct::supportsGemini(v7);
    if (!v8 || !*(a1 + 128))
    {
LABEL_79:
      if (*(a1 + 128))
      {
        goto LABEL_158;
      }

      if ((capabilities::ct::supportsGemini(v8) & 1) == 0)
      {
        __TUAssertTrigger();
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 112));
      v40 = ServiceMap;
      if (v41 < 0)
      {
        v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
        v43 = 5381;
        do
        {
          v41 = v43;
          v44 = *v42++;
          v43 = (33 * v43) ^ v44;
        }

        while (v44);
      }

      std::mutex::lock(ServiceMap);
      *buf = v41;
      v45 = sub_100009510(&v40[1].__m_.__sig, buf);
      if (v45)
      {
        v47 = v45[3];
        v46 = v45[4];
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v40);
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          v116 = v46;
          sub_100004A34(v46);
          v48 = 0;
LABEL_90:
          v124 = 0;
          p_p = 0;
          (*(*v47 + 8))(&v124, v47, 1);
          v122 = 0;
          v123 = 0;
          v117 = v48;
          (*(*v47 + 8))(&v122, v47, 2);
          if (v124 && isReal() && (v124[2].__r_.__value_.__s.__data_[14] & 1) == 0)
          {
            v49 = v124[2].__r_.__value_.__s.__data_[15] ^ 1;
          }

          else
          {
            v49 = 0;
          }

          if (v122 && isReal() && (*(v122 + 62) & 1) == 0)
          {
            v50 = *(v122 + 63) ^ 1;
          }

          else
          {
            v50 = 0;
          }

          v51 = Registry::getServiceMap(*(a1 + 112));
          v52 = v51;
          if (v53 < 0)
          {
            v54 = (v53 & 0x7FFFFFFFFFFFFFFFLL);
            v55 = 5381;
            do
            {
              v53 = v55;
              v56 = *v54++;
              v55 = (33 * v55) ^ v56;
            }

            while (v56);
          }

          std::mutex::lock(v51);
          *buf = v53;
          v57 = sub_100009510(&v52[1].__m_.__sig, buf);
          if (v57)
          {
            v59 = v57[3];
            v58 = v57[4];
            if (v58)
            {
              atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v52);
              atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v58);
              v60 = 0;
              if (!v59)
              {
                goto LABEL_104;
              }

              goto LABEL_108;
            }
          }

          else
          {
            v59 = 0;
          }

          std::mutex::unlock(v52);
          v58 = 0;
          v60 = 1;
          if (!v59)
          {
LABEL_104:
            v61 = *(a1 + 40);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I findSlotAssignment, DataService is missing", buf, 2u);
            }

LABEL_150:
            if ((v60 & 1) == 0)
            {
              sub_100004A34(v58);
            }

            if (v123)
            {
              sub_100004A34(v123);
            }

            if (p_p)
            {
              sub_100004A34(p_p);
            }

            if ((v117 & 1) == 0)
            {
              sub_100004A34(v116);
            }

            goto LABEL_158;
          }

LABEL_108:
          v62 = (*(*v59 + 792))(v59);
          memset(&__p, 0, sizeof(__p));
          v63 = *(a1 + 40);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v114 = a2;
            v115 = v60;
            v113 = a3;
            v64 = asStringBool(v49 & 1);
            v65 = asStringBool(v50 & 1);
            if (v124)
            {
              data = &v124[1];
              size = HIBYTE(v124[1].__r_.__value_.__r.__words[2]);
              v68 = size;
              if ((size & 0x80u) != 0)
              {
                size = v124[1].__r_.__value_.__l.__size_;
              }

              if (v68 < 0)
              {
                data = v124[1].__r_.__value_.__l.__data_;
              }

              if (size)
              {
                v69 = data;
              }

              else
              {
                v69 = "<invalid>";
              }
            }

            else
            {
              v69 = "-";
            }

            if (v122)
            {
              v70 = (v122 + 24);
              v71 = *(v122 + 47);
              v72 = v71;
              if ((v71 & 0x80u) != 0)
              {
                v71 = *(v122 + 32);
              }

              if (v72 < 0)
              {
                v70 = *(v122 + 24);
              }

              if (v71)
              {
                v73 = v70;
              }

              else
              {
                v73 = "<invalid>";
              }
            }

            else
            {
              v73 = "-";
            }

            v74 = subscriber::asString();
            *buf = 136316162;
            *&buf[4] = v64;
            *&buf[12] = 2080;
            *&buf[14] = v65;
            *&buf[22] = 2080;
            v127 = v69;
            v128 = 2080;
            v129 = v73;
            v130 = 2080;
            v131 = v74;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I findSlotAssignment, sim1:%s, sim2:%s, persona1:%s, persona2:%s, data preferred:%s", buf, 0x34u);
            a2 = v114;
            v60 = v115;
            a3 = v113;
          }

          if (v49 & v50)
          {
            if ((v62 - 1) > 1)
            {
              v77 = *(a1 + 40);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I cannot find preferred slot for IPCU profile while in Dual Sim mode", buf, 2u);
              }

              goto LABEL_142;
            }

            *(a1 + 128) = v62;
            v75 = &v122;
            if (v62 == 1)
            {
              v75 = &v124;
            }

            v76 = *v75;
          }

          else if (v49)
          {
            *(a1 + 128) = 1;
            v76 = v124;
          }

          else
          {
            if ((v50 & 1) == 0)
            {
LABEL_142:
              v78 = *(a1 + 128);
              v79 = *(a1 + 40);
              v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
              if (v78)
              {
                if (v80)
                {
                  v81 = subscriber::asString();
                  *buf = 136315138;
                  *&buf[4] = v81;
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I assigned IPCU profile on slot %s", buf, 0xCu);
                  v78 = *(a1 + 128);
                }

                sub_100577A88(a1, v78, &__p);
                sub_100577D44(a1);
              }

              if (v80)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I slot for IPCU profile not yet defined", buf, 2u);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_150;
            }

            *(a1 + 128) = 2;
            v76 = v122;
          }

          std::string::operator=(&__p, v76 + 1);
          goto LABEL_142;
        }
      }

      else
      {
        v47 = 0;
      }

      std::mutex::unlock(v40);
      v116 = 0;
      v48 = 1;
      goto LABEL_90;
    }

    v120 = 0;
    (*(**(a1 + 176) + 40))(buf);
    sub_100060DE8(&v120, buf);
    sub_10000A1EC(buf);
    if (!v120)
    {
LABEL_78:
      v8 = sub_100005978(&v120);
      goto LABEL_79;
    }

    memset(&__p, 0, sizeof(__p));
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v9 = *buf;
    LODWORD(v124) = *&buf[16];
    *(&v124 + 3) = *&buf[19];
    if (buf[23] < 0)
    {
      sub_100005F2C(&__p, *buf, *&buf[8]);
      operator delete(v9);
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *buf;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v124;
      *(&__p.__r_.__value_.__r.__words[2] + 3) = *(&v124 + 3);
      *(&__p.__r_.__value_.__s + 23) = buf[23];
    }

    v124 = a1;
    p_p = &__p;
    v10 = Registry::getServiceMap(*(a1 + 112));
    v11 = v10;
    if (v12 < 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(v10);
    *buf = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, buf);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
LABEL_19:
    v122 = 0;
    v123 = 0;
    (*(*v18 + 8))(&v122, v18, 1);
    v118 = 0;
    v119 = 0;
    (*(*v18 + 8))(&v118, v18, 2);
    if (*(a1 + 128) == 1)
    {
      if ((!v122 || !sub_100071DF8((v122 + 24), &__p)) && v118 && sub_100071DF8((v118 + 24), &__p))
      {
        v20 = *(a1 + 40);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = subscriber::asString();
          v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = __p.__r_.__value_.__l.__size_;
          }

          v23 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v23 = __p.__r_.__value_.__r.__words[0];
          }

          if (v22)
          {
            v24 = v23;
          }

          else
          {
            v24 = "<invalid>";
          }

          *buf = 136315394;
          *&buf[4] = v21;
          *&buf[12] = 2080;
          *&buf[14] = v24;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I re-assigned IPCU profile on slot %s since initial SIM %s was moved there", buf, 0x16u);
        }

        v25 = 2;
        goto LABEL_48;
      }
    }

    else if ((!v118 || !sub_100071DF8((v118 + 24), &__p)) && v122 && sub_100071DF8((v122 + 24), &__p))
    {
      v26 = *(a1 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = subscriber::asString();
        v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = __p.__r_.__value_.__l.__size_;
        }

        v29 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = __p.__r_.__value_.__r.__words[0];
        }

        if (v28)
        {
          v30 = v29;
        }

        else
        {
          v30 = "<invalid>";
        }

        *buf = 136315394;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = v30;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I re-assigned IPCU profile on slot %s since initial SIM %s was moved there", buf, 0x16u);
      }

      v25 = 1;
LABEL_48:
      p_data = &v124->__r_.__value_.__l.__data_;
      v31 = p_p;
      LODWORD(v124[5].__r_.__value_.__r.__words[1]) = v25;
      sub_100577A88(p_data, v25, v31);
      sub_100577D44(p_data);
    }

    v33 = *(a1 + 128);
    if (v33 == 1)
    {
      if (!v122)
      {
LABEL_70:
        if (v119)
        {
          sub_100004A34(v119);
        }

        if (v123)
        {
          sub_100004A34(v123);
        }

        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_78;
      }

      if (sub_100071DF8((v122 + 24), &__p) && *(v122 + 62) == 1 && (*(v122 + 63) & 1) != 0)
      {
LABEL_60:
        v34 = *(a1 + 40);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = subscriber::asString();
          v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v36 = __p.__r_.__value_.__l.__size_;
          }

          v37 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v37 = __p.__r_.__value_.__r.__words[0];
          }

          if (v36)
          {
            v38 = v37;
          }

          else
          {
            v38 = "<invalid>";
          }

          *buf = 136315394;
          *&buf[4] = v35;
          *&buf[12] = 2080;
          *&buf[14] = v38;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I unassigned IPCU profile from slot %s since initial SIM %s happens to be irrelevant", buf, 0x16u);
        }

        sub_100577A48(&v124, 0);
      }

      v33 = *(a1 + 128);
    }

    if (v33 == 2 && v118 && sub_100071DF8((v118 + 24), &__p) && *(v118 + 62) == 1 && *(v118 + 63) == 1)
    {
      goto LABEL_60;
    }

    goto LABEL_70;
  }

LABEL_158:
  if (*(a1 + 152))
  {
    v82 = *(a1 + 128);
    if (v82)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      v83 = Registry::getServiceMap(*(a1 + 112));
      v84 = v83;
      if (v85 < 0)
      {
        v86 = (v85 & 0x7FFFFFFFFFFFFFFFLL);
        v87 = 5381;
        do
        {
          v85 = v87;
          v88 = *v86++;
          v87 = (33 * v87) ^ v88;
        }

        while (v88);
      }

      std::mutex::lock(v83);
      *buf = v85;
      v89 = sub_100009510(&v84[1].__m_.__sig, buf);
      if (v89)
      {
        v91 = v89[3];
        v90 = v89[4];
        if (v90)
        {
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v84);
          atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v90);
          v92 = 0;
          goto LABEL_168;
        }
      }

      else
      {
        v91 = 0;
      }

      std::mutex::unlock(v84);
      v90 = 0;
      v92 = 1;
LABEL_168:
      (*(*v91 + 96))(&v124, v91, v82, 1, @"IPCUApnTypemask", 0, 0);
      sub_10010B240(&__p, &v124);
      sub_10000A1EC(&v124);
      if ((v92 & 1) == 0)
      {
        sub_100004A34(v90);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        *buf = 0;
        ctu::cf::assign(buf, __p.__r_.__value_.__l.__data_, v93);
        v94 = *buf;
      }

      else
      {
        v94 = 1;
      }

      *(a1 + 172) = v94;
      sub_100029A48(&__p.__r_.__value_.__l.__data_);
      sub_1002A938C(buf);
    }
  }

  v95 = *(a1 + 160);
  if ((a3 != 0) == (v95 == 0) || v95 && (!CFEqual(v95, a3) || *(a1 + 160) && *(a1 + 128) != a2))
  {
    v96 = *(a1 + 128);
    if (v96)
    {
      v97 = *(a1 + 40);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        v98 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v98;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "#I trigger data::refreshAttachApn for slot %s", buf, 0xCu);
        v96 = *(a1 + 128);
      }

      sub_1002A945C(&event::data::refreshAttachApn, v96, "ipcu-attachapn-added");
    }

    else if (a2)
    {
      v99 = *(a1 + 40);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v100;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I trigger data::refreshAttachApn for prev slot %s", buf, 0xCu);
      }

      sub_1002A945C(&event::data::refreshAttachApn, a2, "ipcu-attachapn-revoked");
    }
  }

  if (!*(a1 + 152) || !*(a1 + 128))
  {
    goto LABEL_197;
  }

  v101 = Registry::getServiceMap(*(a1 + 112));
  v102 = v101;
  if (v103 < 0)
  {
    v104 = (v103 & 0x7FFFFFFFFFFFFFFFLL);
    v105 = 5381;
    do
    {
      v103 = v105;
      v106 = *v104++;
      v105 = (33 * v105) ^ v106;
    }

    while (v106);
  }

  std::mutex::lock(v101);
  *buf = v103;
  v107 = sub_100009510(&v102[1].__m_.__sig, buf);
  if (!v107)
  {
    std::mutex::unlock(v102);
LABEL_197:
    v110 = 0;
    LODWORD(v109) = 0;
    goto LABEL_198;
  }

  v109 = v107[3];
  v108 = v107[4];
  if (v108)
  {
    atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v102);
    atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v108);
    if (!v109)
    {
      v110 = 0;
LABEL_211:
      sub_100004A34(v108);
      goto LABEL_198;
    }
  }

  else
  {
    std::mutex::unlock(v102);
    if (!v109)
    {
      v110 = 0;
      goto LABEL_198;
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  (*(*v109 + 16))(buf, v109, *(a1 + 128));
  LODWORD(v109) = *buf != 0;
  if (*buf)
  {
    v110 = (*(**buf + 88))();
  }

  else
  {
    v110 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v108)
  {
    goto LABEL_211;
  }

LABEL_198:
  v111 = *(a1 + 40);
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    if (v109)
    {
      v112 = asStringBool(v110);
    }

    else
    {
      v112 = "no NAI selector, assuming false";
    }

    *buf = 136315138;
    *&buf[4] = v112;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I NAI mode: %s", buf, 0xCu);
  }

  *(a1 + 168) = v109 & v110;
}

void sub_1005778A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13, int a14, uint64_t a15, std::__shared_weak_count *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a17);
  _Unwind_Resume(a1);
}

void sub_100577A48(uint64_t *a1, int a2)
{
  v3 = *a1;
  v2 = a1[1];
  *(v3 + 128) = a2;
  sub_100577A88(v3, a2, v2);

  sub_100577D44(v3);
}

const void **sub_100577A88(const void **result, int a2, uint64_t a3)
{
  v3 = result;
  if ((a2 - 1) < 2)
  {
    v6 = result[22];
    v15 = 0;
    LOBYTE(valuePtr) = a2;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
    if (v7)
    {
      v15 = v7;
      valuePtr = 0;
      sub_100029A48(&valuePtr);
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    v14 = v8;
    v15 = 0;
    sub_100029A48(&v15);
    (*(*v6 + 16))(v6, @"assignedSlot", v8, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    sub_100029A48(&v14);
    v10 = v3[22];
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v14 = 0;
    v15 = 0;
    if (ctu::cf::convert_copy(&v15, v11, 0x8000100, kCFAllocatorDefault, v9))
    {
      v14 = v15;
      valuePtr = 0;
      sub_100005978(&valuePtr);
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = 0;
    sub_100005978(&v14);
    (*(*v10 + 16))(v10, @"initiatedIccid", v12, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    return sub_100005978(&v13);
  }

  else if (!a2 || a2 == 3)
  {
    (*(*result[22] + 16))(result[22], @"assignedSlot", 0, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    v4 = *(*v3[22] + 16);

    return v4();
  }

  return result;
}

void sub_100577D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_100577E24(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  if (((*(**(v1 + 176) + 48))(*(v1 + 176), @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost) & 1) == 0)
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Failed to synchronize preferences", buf, 2u);
    }
  }

  operator delete();
}

uint64_t sub_100577F98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E58DA0;
  a2[1] = v2;
  return result;
}

void sub_100577FC4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_100578090(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10057814C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E58E20;
  a2[1] = v2;
  return result;
}

void sub_100578178(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_100578244(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100578290(uint64_t a1)
{
  (*(**(a1 + 176) + 16))(*(a1 + 176), @"profile", 0, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  (*(**(a1 + 176) + 16))(*(a1 + 176), @"assignedSlot", 0, @"com.apple.commcenter.cellular_profile", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v2 = *(**(a1 + 176) + 16);

  return v2();
}

void sub_1005783A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I reload", buf, 2u);
  }

  std::mutex::lock((a1 + 48));
  v3 = *(a1 + 128);
  v39 = 0;
  v4 = (a1 + 160);
  sub_100010024(&v39, (a1 + 160));
  *(a1 + 128) = 0;
  v5 = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 160);
  *(a1 + 160) = 0;
  *buf = v6;
  sub_10001021C(buf);
  v8 = (a1 + 152);
  v7 = *(a1 + 152);
  *(a1 + 152) = 0;
  *buf = v7;
  sub_10001021C(buf);
  theDict = 0;
  (*(**(a1 + 176) + 40))(buf);
  sub_100010180(&theDict, buf);
  v9 = sub_10000A1EC(buf);
  if (theDict)
  {
    if (capabilities::ct::supportsGemini(v9))
    {
      *buf = 0;
      (*(**(a1 + 176) + 40))(__p);
      sub_10010B240(buf, __p);
      sub_10000A1EC(__p);
      if (!*buf || (LOBYTE(__p[0]) = 0, ctu::cf::assign(__p, *buf, v10), v11 = LOBYTE(__p[0]), LOBYTE(__p[0]) - 1 >= 2))
      {
        sub_100029A48(buf);
        goto LABEL_18;
      }

      sub_100029A48(buf);
    }

    else
    {
      v11 = 1;
    }

    *(a1 + 128) = v11;
LABEL_18:
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I IPCU associated slot: %s", buf, 0xCu);
    }

    v37 = 0;
    Value = CFDictionaryGetValue(theDict, @"APNs");
    v17 = Value;
    if (!Value || (v18 = CFGetTypeID(Value), v18 != CFArrayGetTypeID()) || CFArrayGetCount(v17) < 1 || (__p[0] = CFArrayGetValueAtIndex(v17, 0), *buf = 0, sub_100010180(buf, __p), v19 = *buf, v37 = *buf, *buf = 0, sub_10001021C(buf), !v19))
    {
      v20 = *(a1 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I No APN in IPCU profile", buf, 2u);
        v20 = *(a1 + 40);
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Reading old APN from Managed preferences", buf, 2u);
        v20 = *(a1 + 40);
      }

      v40 = 0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Pulling APN settings for %d from profile or carrier settings", buf, 8u);
      }

      if (access(off_101FB24C8, 0))
      {
        v21 = *(a1 + 40);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I IPCU file DOES NOT exist - old style profile reading skipped", buf, 2u);
        }
      }

      else
      {
        __p[0] = &off_101EA1020;
        *v44 = 0;
        sub_10000501C(buf, off_101FB24C8);
        sub_1009C8D34(__p, buf);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (*v44)
        {
          v42 = 0;
          theArray = 0;
          ValueAtIndex = CFDictionaryGetValue(*v44, @"apns");
          *buf = 0;
          sub_1001FA5E0(buf, &ValueAtIndex);
          v22 = theArray;
          theArray = *buf;
          *buf = v22;
          sub_100010250(buf);
          v23 = theArray;
          if (theArray)
          {
            v24 = *(a1 + 40);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Found a list of APN settings in the managed profile", buf, 2u);
              v23 = theArray;
            }

            if (CFArrayGetCount(v23) >= 1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
              *buf = 0;
              sub_100010180(buf, &ValueAtIndex);
              v40 = *buf;
              *buf = 0;
              sub_10001021C(buf);
            }
          }

          else
          {
            ValueAtIndex = CFDictionaryGetValue(*v44, @"apns");
            *buf = 0;
            sub_100010180(buf, &ValueAtIndex);
            v26 = v42;
            v42 = *buf;
            *buf = v26;
            sub_10001021C(buf);
            v27 = v42;
            v28 = *(a1 + 40);
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            if (v27)
            {
              if (v29)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Found a dictionary of APN settings in the managed profile", buf, 2u);
              }

              sub_1000676D4(&v40, &v42);
            }

            else if (v29)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Found garbage for the APN settings in the managed profile", buf, 2u);
            }
          }

          sub_10001021C(&v42);
          sub_100010250(&theArray);
        }

        else
        {
          v25 = *(a1 + 40);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I IPCU old style file is of incompatible format - skipped", buf, 2u);
          }
        }

        sub_10001021C(v44);
        FileSystemInterface::~FileSystemInterface(__p);
      }

      v30 = *(a1 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if (v40)
        {
          v31 = "";
        }

        else
        {
          v31 = "not ";
        }

        *buf = 136315138;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I IPCU APN %sfound (old style)", buf, 0xCu);
      }

      *buf = v37;
      v37 = v40;
      v40 = 0;
      sub_10001021C(buf);
      sub_10001021C(&v40);
    }

    if (v8 != &v37)
    {
      *buf = *v8;
      *v8 = v37;
      v37 = 0;
      sub_10001021C(buf);
    }

    sub_10001021C(&v37);
    v32 = *(a1 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sIPCU APN:", buf, 0x16u);
    }

    *buf = off_101E58EA0;
    *&buf[8] = a1;
    v46 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
    __p[0] = 0;
    *buf = CFDictionaryGetValue(theDict, @"AttachAPN");
    sub_100010180(__p, buf);
    if (!__p[0])
    {
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I No AttachAPN in IPCU profile", buf, 2u);
      }
    }

    if (v4 != __p)
    {
      *buf = *v4;
      *v4 = __p[0];
      __p[0] = 0;
      sub_10001021C(buf);
    }

    sub_10001021C(__p);
    v34 = *(a1 + 40);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%sIPCU AttachAPN:", buf, 0x16u);
    }

    *buf = off_101E58F20;
    *&buf[8] = a1;
    v46 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
    goto LABEL_69;
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v36 = *&buf[16];
    v13 = __p;
    if ((buf[23] & 0x80u) != 0)
    {
      v13 = *buf;
    }

    *v44 = 136315138;
    *&v44[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I No IPCU profile or missing key '%s'", v44, 0xCu);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_69:
  sub_100576974(a1, v3, v39);
  sub_10001021C(&theDict);
  sub_10001021C(&v39);
  std::mutex::unlock((a1 + 48));
}

void sub_100578D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, const void *a14, const void *a15, uint64_t a16, const void *a17, const void *a18, const void *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10001021C(&a17);
  sub_100010250(&a18);
  sub_10001021C(&a19);
  FileSystemInterface::~FileSystemInterface(&a9);
  sub_10001021C(&a15);
  sub_10001021C(&a12);
  sub_10001021C(&a13);
  sub_10001021C(&a14);
  std::mutex::unlock((v26 + 48));
  _Unwind_Resume(a1);
}

uint64_t sub_100578EA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E58EA0;
  a2[1] = v2;
  return result;
}

void sub_100578ECC(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_100578F98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100579054(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E58F20;
  a2[1] = v2;
  return result;
}

void sub_100579080(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_10057914C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10057921C(void *a1, Registry **a2, int *a3, NSObject **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E58FA0;
  sub_100579318(a1 + 3, a2, *a3, a4);
  return a1;
}

void sub_10057929C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E58FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100579318(void *a1, Registry **a2, int a3, NSObject **a4)
{
  v6 = sub_1002A48E8(a1, a3, a4);
  *v6 = off_101E58B70;
  v7 = (v6 + 3);
  v8 = sub_1002A4990(v6);
  v9 = "ipcu-apn.?";
  if (v8 == 2)
  {
    v9 = "ipcu-apn.2";
  }

  if (v8 == 1)
  {
    v10 = "ipcu-apn.1";
  }

  else
  {
    v10 = v9;
  }

  ctu::OsLogContext::OsLogContext(&v21, kCtLoggingSystemName, v10);
  ctu::OsLogLogger::OsLogLogger(v22, &v21);
  ctu::OsLogLogger::OsLogLogger(v7, v22);
  ctu::OsLogLogger::~OsLogLogger(v22);
  ctu::OsLogContext::~OsLogContext(&v21);
  *a1 = off_101E58B70;
  ServiceMap = Registry::getServiceMap(*a2);
  v12 = ServiceMap;
  v13 = "16IPCU_CellProfile";
  if (("16IPCU_CellProfile" & 0x8000000000000000) != 0)
  {
    v14 = ("16IPCU_CellProfile" & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v21.var0 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v21);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
LABEL_13:
    std::mutex::unlock(v12);
    v18 = 0;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
LABEL_14:
  a1[4] = v19;
  a1[5] = v18;
  return a1;
}

void sub_100579488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  sub_1002A493C(v2);
  _Unwind_Resume(a1);
}

id **sub_100579804(id **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_100579A3C(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10057984C(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = [NSString alloc];
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [v5 initWithUTF8String:v6];
  v8 = *a1;
  *a1 = v7;

  v9 = objc_opt_new();
  v10 = a1[2];
  a1[2] = v9;

  v11 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
  v12 = a1[1];
  a1[1] = v11;

  if ([a1[1] registerNetworkAgent:a1[2]])
  {
    if ([a1[1] addNetworkAgentToInterfaceNamed:*a1])
    {
      if ([a1[1] updateNetworkAgent:a1[2]])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *a1;
          v15 = 138412290;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IPsec agent created successfully: %@", &v15, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_101774580();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_101774510();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1017744A0();
  }

  objc_autoreleasePoolPop(v4);
  return a1;
}

id *sub_100579A3C(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[1];
  if (v3)
  {
    if (a1[2] && ([v3 removeNetworkAgentFromInterfaceNamed:*a1] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1017745F0();
    }

    if ([a1[1] isRegistered] && (objc_msgSend(a1[1], "unregisterNetworkAgent") & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_101774660();
    }

    v4 = a1[1];
    a1[1] = 0;
  }

  v5 = a1[2];
  a1[2] = 0;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a1;
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IPsec agent removed successfully: %@", &v9, 0xCu);
  }

  v7 = *a1;
  *a1 = 0;

  objc_autoreleasePoolPop(v2);
  return a1;
}

void sub_100579BA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100579BB0(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  *a1 = off_101E9E1C8;
  v5 = (a1 + 8);
  v6 = a2[1];
  v8 = *a2;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10098D218(v5, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  *a1 = off_101E58FF0;
  *(a1 + 32) = *a3;
  return a1;
}

void sub_100579C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

BOOL sub_100579C70(uint64_t a1, os_log_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = sub_10098D2BC((a1 + 8), v2, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *a2;
    v3 = 0;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "Unauthorized.xml";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Infinite validity of %s xml", buf, 0xCu);
      return 0;
    }
  }

  return v3;
}

void sub_100579D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100579D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();
}

void sub_100579DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();

  operator delete();
}

uint64_t sub_100579E30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.OTAActivation.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.OTAActivation.2";
  }

  v14 = "OTAActivation.X";
  if (v13 == 2)
  {
    v14 = "OTAActivation.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.OTAActivation.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "OTAActivation.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E59AD8, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E59078;
  *(a1 + 64) = off_101E595D8;
  *(a1 + 72) = off_101E59878;
  *(a1 + 80) = off_101E59A60;
  *(a1 + 456) = 0;
  return a1;
}

void sub_100579FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_100579FEC(uint64_t a1)
{
  sub_10096807C(a1, &off_101E59AD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057A01C(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E59AD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057A050(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E59AD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057A084(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E59AD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057A0B8(uint64_t a1)
{
  sub_10096807C(a1, &off_101E59AD8);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_10057A118(uint64_t result)
{
  if (*(result + 456) == 1)
  {
    *(result + 456) = 0;
    v2 = *(result + 216);
    v3 = PersonalitySpecificImpl::simSlot(result);
    v4 = *(*v2 + 16);

    return v4(v2, v3, 0);
  }

  return result;
}

uint64_t sub_10057A18C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v16 = 0;
  v17 = 0;
  sub_1002CAA5C(&v16);
  if (*(a1 + 456))
  {
LABEL_2:
    *(a1 + 456) = 0;
    v6 = *(a1 + 216);
    v7 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v6 + 16))(v6, v7, 0);
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (!v16)
  {
    goto LABEL_10;
  }

  if (((*(*v16 + 136))(v16, *a4, 0) & 1) == 0)
  {
    if ((*(a1 + 456) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_2;
  }

  v8 = *(a1 + 56);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "activateFailedTrigger";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: Trying OTA APN for activation", buf, 0xCu);
  }

  v9 = *(a1 + 216);
  v10 = PersonalitySpecificImpl::simSlot(a1);
  v11 = (*(*v9 + 16))(v9, v10, 1);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v14 = *(a1 + 56);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    v12 = 0;
    if (v15)
    {
      *buf = 136315138;
      v19 = "activateFailedTrigger";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to switch to OTA APN settings, giving up", buf, 0xCu);
      v12 = 0;
    }
  }

  *(a1 + 456) = v12;
LABEL_11:
  if (v17)
  {
    sub_100004A34(v17);
  }

  return v11;
}

void sub_10057A434(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && capabilities::ct::supportsVoiceCall(a1) && *(a1 + 456) == 1)
  {
    v3 = *(a1 + 216);
    v4 = PersonalitySpecificImpl::simSlot(a1);
    if ((*(*v3 + 304))(v3, v4))
    {
      v5 = *(a1 + 56);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v13 = 136315138;
      v14 = "dataAttachStatusChanged";
      v6 = "#I %s: Data is now attached in OTA APN activation mode. Ignoring previous data de-attach";
      v7 = v5;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v13, 0xCu);
      return;
    }

    v8 = *(a1 + 216);
    v9 = PersonalitySpecificImpl::simSlot(a1);
    v10 = (*(*v8 + 312))(v8, v9) - 6;
    v11 = *(a1 + 56);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 <= 0xFFFFFFFD)
    {
      if (!v12)
      {
        return;
      }

      v13 = 136315138;
      v14 = "dataAttachStatusChanged";
      v6 = "#I %s: Data is not attached in OTA APN activation mode. But we are not registered, ignoring data de-attach";
      v7 = v11;
      goto LABEL_10;
    }

    if (v12)
    {
      v13 = 136315138;
      v14 = "dataAttachStatusChanged";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Data is not attached and we are in OTA APN activation mode, resetting the baseband", &v13, 0xCu);
    }

    *(a1 + 456) = 0;
    sub_10057A62C(&event::activation::resetRequest, "Resetting baseband since we are not data attached and we are in OTA APN activation mode");
  }
}

atomic_uint **sub_10057A62C(uint64_t a1, const char *a2)
{
  sub_10057A73C((a1 + 24), a2);
  v4 = sub_100334B9C((a1 + 8));

  return sub_100334BE0(v4, a2);
}

void sub_10057A67C(uint64_t a1)
{
  sub_100971D38(a1);
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 456));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fActivatingOverOTAAPN = %s", &v4, 0xCu);
  }
}

uint64_t sub_10057A73C(uint64_t *a1, const char *a2)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__src = 0u;
  *__p = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  sub_10000D518(&v10);
  strlen(a2);
  sub_10000C030(&v10);
  if ((BYTE8(v16) & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < __src[1])
    {
      *&v16 = __src[1];
      v5 = __src[1];
    }

    v6 = __src[0];
  }

  else
  {
    if ((BYTE8(v16) & 8) == 0)
    {
      v4 = 0;
      v9 = 0;
      goto LABEL_14;
    }

    v6 = *(&v11 + 1);
    v5 = *(&v12 + 1);
  }

  v4 = v5 - v6;
  if ((v5 - v6) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v5 - v6;
  if (v4)
  {
    memmove(&__dst, v6, v4);
  }

LABEL_14:
  *(&__dst + v4) = 0;
  sub_1000841A0(a1, &__dst);
  if (v9 < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10057A9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_10057A9D4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.Provisioning.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.Provisioning.2";
  }

  v14 = "Provisioning.X";
  if (v13 == 2)
  {
    v14 = "Provisioning.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.Provisioning.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "Provisioning.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E5B340, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E5A8E0;
  a1[8] = off_101E5AE40;
  a1[9] = off_101E5B0E0;
  a1[10] = off_101E5B2C8;
  return a1;
}

void sub_10057AB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_10057AB8C(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5B340);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057ABBC(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E5B340);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057ABF0(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E5B340);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057AC24(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E5B340);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057AC58(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5B340);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void sub_10057ACD4(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_1000930A4(&v4);
  v2 = v4;
  if (v4)
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "deactivatedTrigger";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: passing to data plan", buf, 0xCu);
      v2 = v4;
    }

    (*(*v2 + 128))(v2);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10057ADC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057ADE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "switchFallbackPolicy";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v6, 0xCu);
  }

  result = *(a1 + 176);
  if (result)
  {
    return (*(*result + 152))(result, a2);
  }

  return result;
}

uint64_t sub_10057AEDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.WirelessModemAuthentication.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.WirelessModemAuthentication.2";
  }

  v14 = "WirelessModemAuthentication.X";
  if (v13 == 2)
  {
    v14 = "WirelessModemAuthentication.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.WirelessModemAuthentication.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "WirelessModemAuthentication.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E5CBA8, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E5C148;
  *(a1 + 64) = off_101E5C6A8;
  *(a1 + 72) = off_101E5C948;
  *(a1 + 80) = off_101E5CB30;
  *(a1 + 456) = 0;
  return a1;
}

void sub_10057B06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_10057B098(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5CBA8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057B0C8(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E5CBA8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057B0FC(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E5CBA8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057B130(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E5CBA8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057B164(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5CBA8);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_10057B1F8(PersonalitySpecificImpl *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10096BB58(a1, a2);
  result = (*(**(a1 + 27) + 464))();
  if (result)
  {
    v9 = result;
    v10 = PersonalitySpecificImpl::simSlot(a1);
    v11 = *(*v9 + 40);

    return v11(v9, v10, a2, a3, a4);
  }

  return result;
}

void sub_10057B2DC(PersonalitySpecificImpl *a1)
{
  sub_1000A6490(a1);
  v2 = (*(*a1 + 536))(a1);
  v3 = (*(**(a1 + 27) + 464))();
  v4 = v3;
  if (v2 == 5)
  {
    if (v3)
    {
      v5 = PersonalitySpecificImpl::simSlot(a1);
      (*(*v4 + 32))(v4, v5);
    }

    v6 = sub_1000933D0(a1, 0);
    v7 = (*(*a1 + 112))(a1);
    v8 = *(a1 + 7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6 == v7)
    {
      if (v9)
      {
        v12 = 136315138;
        v13 = "connectionStateUpdated";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: Connection was activated for WirelessModemAuth only, bring it down", &v12, 0xCu);
      }

      (*(*a1 + 184))(a1, "wireless modem auth done", "CommCenter");
    }

    else if (v9)
    {
      v12 = 136315138;
      v13 = "connectionStateUpdated";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: Connection was activated for not WirelessModemAuth only, do not touching it", &v12, 0xCu);
    }
  }

  else if (v3)
  {
    v10 = *(a1 + 7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 536))(a1);
      v12 = 136315138;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I tethering: on connection state update: %s", &v12, 0xCu);
    }

    v11 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v4 + 16))(v4, v11);
  }
}

void sub_10057B5B8(PersonalitySpecificImpl *a1, int a2, int a3, int a4, int a5)
{
  sub_1000A2F38(a1, a2, a3, a4, a5);
  if (a5)
  {
    v7 = (*(**(a1 + 27) + 464))(*(a1 + 27));
    if (v7)
    {
      v8 = v7;
      v9 = PersonalitySpecificImpl::simSlot(a1);
      v10 = *(*v8 + 32);

      v10(v8, v9);
    }
  }
}

uint64_t sub_10057B678(PersonalitySpecificImpl *a1)
{
  sub_10096D580(a1);
  result = (*(**(a1 + 27) + 464))(*(a1 + 27));
  if (result)
  {
    v3 = result;
    v4 = PersonalitySpecificImpl::simSlot(a1);
    v5 = *(*v3 + 48);

    return v5(v3, v4);
  }

  return result;
}

void sub_10057B728(uint64_t a1)
{
  sub_100971D38(a1);
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 456));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fAuthenticationInProgress = %s", &v4, 0xCu);
  }
}

void sub_10057B7D8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10057B8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10057B914(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, dispatch_object_t *a5, int a6)
{
  v7 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  object = *a5;
  *a5 = 0;
  v8 = "DATA.Connection.CarrierSpace.X";
  v9 = *(*a3 + 52);
  if (v9 == 2)
  {
    v8 = "DATA.Connection.CarrierSpace.2";
  }

  v10 = "CarrierSpace.2";
  if (v9 != 2)
  {
    v10 = "CarrierSpace.X";
  }

  v15 = v7;
  if (v9 == 1)
  {
    v11 = "DATA.Connection.CarrierSpace.1";
  }

  else
  {
    v11 = v8;
  }

  if (v9 == 1)
  {
    v12 = "CarrierSpace.1";
  }

  else
  {
    v12 = v10;
  }

  sub_1009679C4(a1, &off_101E5E410, &v15, a3, a4, &object, v11, v12, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  *a1 = off_101E5D9B0;
  a1[8] = off_101E5DF10;
  a1[9] = off_101E5E1B0;
  a1[10] = off_101E5E398;
  return a1;
}

void sub_10057BA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_10057BAA8(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5E410);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057BAD8(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E5E410);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057BB0C(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E5E410);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057BB40(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E5E410);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057BB74(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5E410);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_10057BBD0(Registry **a1)
{
  v15 = 0;
  v16 = 0;
  ServiceMap = Registry::getServiceMap(a1[11]);
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v17 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v17);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(v3);
  v15 = v10;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }

  if (!v10)
  {
    v13 = 0x1000000;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_15;
  }

  v11 = PersonalitySpecificImpl::simSlot(a1);
  v12 = sub_10057BD14(v11, &v15, carrier_space::kCBAllowedWhenRoamingKey, 0);
  v9 = v16;
  if (v12)
  {
    v13 = 0x10001000000;
  }

  else
  {
    v13 = 0x1000000;
  }

  if (v16)
  {
LABEL_15:
    sub_100004A34(v9);
  }

  return v13;
}

void sub_10057BCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057BD14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  cf = 0;
  carrier_space::getCarrierSpaceValueForKey();
  sub_10000A1EC(&cf);
  return a4 & 1;
}

void sub_10057BE44(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_10057BF18);
  __cxa_rethrow();
}

void sub_10057BE84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10057BED8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10057BF18(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10057BF44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.WirelessModemTraffic.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.WirelessModemTraffic.2";
  }

  v14 = "WirelessModemTraffic.X";
  if (v13 == 2)
  {
    v14 = "WirelessModemTraffic.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.WirelessModemTraffic.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "WirelessModemTraffic.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E5FCD8, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E5F278;
  *(a1 + 64) = off_101E5F7D8;
  *(a1 + 72) = off_101E5FA78;
  *(a1 + 80) = off_101E5FC60;
  *(a1 + 456) = 0;
  return a1;
}

void sub_10057C0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_10057C100(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5FCD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057C130(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E5FCD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057C164(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E5FCD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057C198(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E5FCD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057C1CC(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5FCD8);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_10057C228(uint64_t a1)
{
  v2 = (*(**(a1 + 216) + 128))(*(a1 + 216));
  if (v2)
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "isTetheringAsserted";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: TetheringAssertion is asserted by explicit assertion", &v5, 0xCu);
    }
  }

  return v2;
}

uint64_t sub_10057C304(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 456);
  *(a1 + 456) = sub_10057C228(a1);
  v17 = 0;
  v15 = 0;
  v16 = 0;
  sub_100098064(a1, &v17, &v15);
  if (v15)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (*(a1 + 456) & 1) != 0 || !(*(*v15 + 880))())
  {
    v6 = (*(*a1 + 112))(a1) & 0xFFFFFFFFFFFFFFCFLL;
    v7 = *(a1 + 56);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 136315138;
        v19 = "connectionAssertionUpdateTrigger";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Tethering is not only connection in mask, not tearing down context if assertion is gone", buf, 0xCu);
      }

      *a2 = 0;
    }

    else if (v8)
    {
      *buf = 136315138;
      v19 = "connectionAssertionUpdateTrigger";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Tethering is only connection in mask, can tear down context if assertion is gone", buf, 0xCu);
    }

    v9 = (*(**(a1 + 216) + 464))(*(a1 + 216));
    if (v9)
    {
      v10 = PersonalitySpecificImpl::simSlot(a1);
      v11 = (*(*a1 + 768))(a1);
      (**v9)(v9, v10, v11, 0);
    }

    v12 = 0;
  }

  else
  {
    v14 = *(a1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "connectionAssertionUpdateTrigger";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: Tearing down due to no more Tethering assertion", buf, 0xCu);
    }

    (*(*a1 + 184))(a1, "no more Tethering assertion", "CommCenter");
    v12 = 1;
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  return v12;
}

void sub_10057C5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057C610(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 88));
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v11 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v11);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 216))(v9, 1);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_10057C71C(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057C73C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 88));
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v12 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v12);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 216))(v9, 0);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return 0;
}

void sub_10057C84C(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057C86C(uint64_t a1)
{
  result = sub_10057C228(a1);
  *(a1 + 456) = result;
  return result;
}

uint64_t sub_10057C894(uint64_t a1)
{
  result = sub_10057C228(a1 - 72);
  *(a1 + 384) = result;
  return result;
}

uint64_t sub_10057C8CC(PersonalitySpecificImpl *a1, uint64_t a2)
{
  sub_10096BB58(a1, a2);
  result = (*(**(a1 + 27) + 464))();
  if (result)
  {
    v4 = result;
    v5 = PersonalitySpecificImpl::simSlot(a1);
    v6 = (*(*a1 + 768))(a1);
    v7 = **v4;

    return v7(v4, v5, v6, 1);
  }

  return result;
}

uint64_t sub_10057C9DC(uint64_t a1)
{
  sub_1000A6490(a1);
  result = (*(**(a1 + 216) + 464))(*(a1 + 216));
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I tethering: on connection state update", v7, 2u);
    }

    v5 = PersonalitySpecificImpl::simSlot(a1);
    v6 = (*(*a1 + 768))(a1);
    return (*(*v3 + 8))(v3, v5, v6);
  }

  return result;
}

uint64_t sub_10057CAF0(uint64_t a1)
{
  sub_10096D580(a1);
  result = (*(**(a1 + 216) + 464))(*(a1 + 216));
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I tethering: on new availability", v7, 2u);
    }

    v5 = PersonalitySpecificImpl::simSlot(a1);
    v6 = (*(*a1 + 768))(a1);
    return (*(*v3 + 8))(v3, v5, v6);
  }

  return result;
}

void sub_10057CC0C(uint64_t a1)
{
  sub_100971D38(a1);
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 456));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fTetheringAsserted = %s", &v4, 0xCu);
  }
}

const char *sub_10057CCBC(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "kBootstrapProvisioningNotSupported";
  }

  else
  {
    return off_101E60E08[a1 - 1];
  }
}

void sub_10057CCE4(void (****a1)(Registry **__return_ptr)@<X2>, void *a2@<X8>)
{
  v24 = 0;
  v25 = 0;
  (***a1)(&v24);
  ServiceMap = Registry::getServiceMap(v24);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v22 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v22);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
LABEL_7:
    ctu::OsLogContext::OsLogContext(&v22, kCtLoggingSystemName, "cp.bs.prov");
    v13 = v23;
    ctu::OsLogContext::~OsLogContext(&v22);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177476C();
    }

    goto LABEL_25;
  }

LABEL_11:
  v14 = (*(*v11 + 80))(v11);
  if (v14)
  {
    ctu::OsLogContext::OsLogContext(&v22, kCtLoggingSystemName, "cp.bs.prov");
    v15 = v23;
    ctu::OsLogContext::~OsLogContext(&v22);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_101774738();
    }
  }

  else
  {
    v16 = capabilities::ct::dataOnlySingleSIMDevice(v14);
    if (v16)
    {
      ctu::OsLogContext::OsLogContext(&v22, kCtLoggingSystemName, "cp.bs.prov");
      v17 = v23;
      ctu::OsLogContext::~OsLogContext(&v22);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_101774704();
      }
    }

    else
    {
      v18 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = capabilities::ct::bootstrapProvisioningSupportedOnSlotID(v16);
      v20 = VinylSlotIdFromInt(v19);
      if (v18)
      {
        sub_100004A34(v18);
      }

      if ((v20 - 1) <= 1)
      {
        operator new();
      }

      ctu::OsLogContext::OsLogContext(&v22, kCtLoggingSystemName, "cp.bs.prov");
      v21 = v23;
      ctu::OsLogContext::~OsLogContext(&v22);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1017746D0();
      }
    }
  }

LABEL_25:
  *a2 = 0;
  a2[1] = 0;
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }
}

void sub_10057D04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057D0EC(uint64_t a1, NSObject **a2, void *a3, uint64_t a4)
{
  *a1 = off_101E65DF8;
  sub_10057D310((a1 + 8), a2, &kCtLoggingSystemName, &off_101E60AA8);
  *a1 = off_101E60AC0;
  v7 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = *a4;
  v9 = *(a4 + 8);
  *(a1 + 64) = *a4;
  *(a1 + 72) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 64);
  }

  (**v8)(&v17);
  *(a1 + 80) = v17;
  sub_10000501C(&__p, "BootstrapProvisioningController");
  v10 = *(a1 + 24);
  v14 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *(a1 + 32);
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 168) = xmmword_101819E98;
  *(a1 + 144) = 0;
  *(a1 + 148) = 256;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 133) = 0;
  *(a1 + 150) = 0;
  *(a1 + 156) = 0;
  *(a1 + 184) = unk_101819EA8;
  *(a1 + 200) = 10080;
  *(a1 + 208) = 0;
  return a1;
}

void sub_10057D288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  v20 = v17[11];
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = v17[9];
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = v17[7];
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 5));
  sub_1000C0544(v18);
  BootstrapProvisioningControllerInterface::~BootstrapProvisioningControllerInterface(v17);
  _Unwind_Resume(a1);
}

void *sub_10057D310(void *a1, NSObject **a2, const char **a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  a1[2] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), *a3, *a4);
  return a1;
}

void sub_10057D380(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(a1 + 80));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10057E704();
}

void sub_10057D468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057D480(capabilities::ct *a1)
{
  if (*(a1 + 14) != *(a1 + 15))
  {
    v2 = *(a1 + 11);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3 = capabilities::ct::bootstrapProvisioningSupportedOnSlotID(a1);
    v4 = VinylSlotIdFromInt(v3);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v5 = *(a1 + 14);
    v6 = *(a1 + 15);
    if (v5 != v6)
    {
      while (*(v5 + 4) != v4)
      {
        v5 += 88;
        if (v5 == v6)
        {
          goto LABEL_14;
        }
      }
    }

    if (v5 == v6)
    {
LABEL_14:
      v7 = *(a1 + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1017747A0(v4, v7);
      }
    }

    else
    {

      sub_10057DC8C(a1, v5);
    }
  }
}

void sub_10057D558(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057D570(uint64_t a1)
{
  if ((*(a1 + 136) & 0xFFFFFFFE) == 2 && (*(a1 + 151) & 1) == 0)
  {
    *(a1 + 151) = 1;
    sub_10057DCF8(a1);
  }
}

void sub_10057D598(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 != *(a1 + 140))
  {
    sub_10057DCF8(a1);
  }
}

void sub_10057D5B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_10057CCBC(*(a1 + 144));
    v10 = 136315138;
    *v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fState: %s", &v10, 0xCu);
  }

  if (*(a1 + 144) != 5)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 148);
      v6 = asString();
      v7 = *(a1 + 152);
      v8 = *(a1 + 160);
      v9 = *(a1 + 151);
      v10 = 67110146;
      *v11 = v5;
      *&v11[4] = 2080;
      *&v11[6] = v6;
      v12 = 2048;
      v13 = v7;
      v14 = 1024;
      v15 = v8;
      v16 = 1024;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I fIsVinylAvailable:%d, \t\t\t\tfInternetStatusSink:%s, \t\t\t\tfNextFetchTime:%lu, \t\t\t\tfBackoffRetries:%d, \t\t\t\tfSetupCompleted:%d", &v10, 0x28u);
    }
  }
}

void sub_10057D958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t object)
{
  sub_100004A34(v13);
  xpc_release(object);
  sub_10001021C((v14 - 24));
  _Unwind_Resume(a1);
}

void sub_10057D9F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 208))
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E Setting backoff timer when one is already set.", buf, 2u);
    }
  }

  else
  {
    v4 = 60000000 * a2;
    *buf = std::chrono::system_clock::now().__d_.__rep_ + 60000000 * a2;
    *(a1 + 152) = std::chrono::system_clock::to_time_t(buf);
    (***(a1 + 64))(&v15);
    Registry::getTimerService(buf, v15);
    v5 = *buf;
    sub_10000501C(__p, "Bootstrap Provisioning");
    v6 = *(a1 + 24);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_10057E3D0;
    v10[3] = &unk_101E60AE0;
    v10[4] = a1;
    aBlock = _Block_copy(v10);
    sub_100D23364(v5, __p, 1, v4, &object, &aBlock);
    v7 = v19;
    v19 = 0;
    v8 = *(a1 + 208);
    *(a1 + 208) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = v19;
      v19 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18)
    {
      sub_100004A34(v18);
    }

    if (v16)
    {
      sub_100004A34(v16);
    }
  }
}

void sub_10057DC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  v25 = *(v23 - 56);
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057DC8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 148);
  v3 = *(a2 + 12) == 3;
  if (v2 != v3)
  {
    *(a1 + 148) = v3;
  }

  if (*(a2 + 80) == 1)
  {
    for (i = *(a2 + 56); i != *(a2 + 64); i += 216)
    {
      if (*(i + 89) == 1)
      {
        *(a1 + 150) = 1;
        goto LABEL_12;
      }
    }
  }

  if (v2 != v3 || *(a1 + 149) == 1)
  {
LABEL_12:
    sub_10057DCF8(a1);
  }
}

void sub_10057DCF8(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (*(a1 + 150) == 1)
  {
    sub_10057E084(a1);
    v3 = 5;
LABEL_3:
    *(a1 + 144) = v3;
    goto LABEL_4;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        if (v2 != 2)
        {
          goto LABEL_37;
        }

        goto LABEL_22;
      }
    }

    else if (*(a1 + 148) != 1)
    {
      goto LABEL_37;
    }

    if ((*(a1 + 151) & 1) == 0)
    {
      v11 = 1;
      goto LABEL_36;
    }

LABEL_22:
    if (*(a1 + 208))
    {
LABEL_23:
      v11 = 2;
LABEL_36:
      *(a1 + 144) = v11;
      goto LABEL_37;
    }

    goto LABEL_24;
  }

  v3 = *(a1 + 144);
  if ((v2 - 5) < 2)
  {
LABEL_4:
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_10057CCBC(v3);
      v6 = *(a1 + 160);
      v25 = 136315394;
      v26 = v5;
      v27 = 1024;
      LODWORD(v28) = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Provisioning completed: %s, fetch attempts: %d", &v25, 0x12u);
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = *(a1 + 48);
        if (v10)
        {
          (*(*v10 + 24))(v10, 1, *(a1 + 144) == 5, *(a1 + 160));
        }

LABEL_10:
        sub_100004A34(v9);
        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v2 == 3)
  {
    if (*(a1 + 149) != 1)
    {
      goto LABEL_37;
    }

    *(a1 + 149) = 0;
    v24 = *(a1 + 160);
    if (v24 > 4)
    {
      v3 = 6;
      goto LABEL_3;
    }

    *(a1 + 160) = v24 + 1;
    sub_10057D9F8(a1, *(a1 + 8 * v24 + 168));
    goto LABEL_23;
  }

  if (v2 != 4)
  {
    goto LABEL_37;
  }

LABEL_24:
  if (*(a1 + 140) != 1)
  {
    v11 = 4;
    goto LABEL_36;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v9 = v13;
      v14 = *(a1 + 48);
      if (v14)
      {
        v15 = *(a1 + 40);
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Attempt bootstrap provisioning", &v25, 2u);
        }

        *(a1 + 144) = 3;
        *(a1 + 149) = 0;
        v17 = *(a1 + 88);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = capabilities::ct::bootstrapProvisioningSupportedOnSlotID(v16);
        v19 = VinylSlotIdFromInt(v18);
        (*(*v14 + 16))(v14, v19);
        if (v17)
        {
          sub_100004A34(v17);
        }
      }

      goto LABEL_10;
    }
  }

LABEL_37:
  v20 = *(a1 + 144);
  if (v2 != v20)
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_10057CCBC(v2);
      v23 = sub_10057CCBC(v20);
      v25 = 136315394;
      v26 = v22;
      v27 = 2080;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s -> %s", &v25, 0x16u);
    }

    sub_10057E11C(a1);
  }
}

void sub_10057E038(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_10057E068(uint64_t a1, uint64_t a2)
{
  *(a1 + 149) = 1;
  if (*(a2 + 88) == 1)
  {
    sub_10057DC8C(a1, a2);
  }

  else
  {
    sub_10057DCF8(a1);
  }
}

uint64_t sub_10057E084(uint64_t a1)
{
  result = *(a1 + 208);
  if (result)
  {
    (*(*result + 16))(result);
    *(a1 + 152) = 0;
    result = *(a1 + 208);
    *(a1 + 208) = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10057E11C(uint64_t a1)
{
  if (*(a1 + 144) == 3)
  {
    return;
  }

  v17 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v17 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v17 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v4 = xpc_null_create();
LABEL_9:
    v17 = v4;
    goto LABEL_10;
  }

  xpc_retain(v3);
LABEL_10:
  xpc_release(v3);
  v15 = xpc_int64_create(*(a1 + 144));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "State";
  sub_10000F688(&v13, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  v11 = xpc_int64_create(*(a1 + 160));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "BackoffRetries";
  sub_10000F688(&v13, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_int64_create(*(a1 + 152));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "NextFetchAttemptTime";
  sub_10000F688(&v13, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v5 = *(a1 + 64);
  v7 = v17;
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    v7 = xpc_null_create();
  }

  xpc::bridge(&v13, &v7, v6);
  sub_100010180(&v8, &v13);
  (*(*v5 + 928))(v5, &v8);
  sub_10001021C(&v8);
  sub_10000A1EC(&v13);
  xpc_release(v7);
  xpc_release(v17);
}

void sub_10057E358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16)
{
  sub_10001021C(&a11);
  sub_10000A1EC(&a16);
  xpc_release(object);
  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10057E3D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 208);
  *(v1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(v1 + 152) = 0;
  if (*(v1 + 144) != 2)
  {
    v3 = *(v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E Timer fired while not in waiting state.", v5, 2u);
    }
  }

  return sub_10057DCF8(v1);
}

void sub_10057E480(uint64_t a1)
{
  sub_10057E4B8(a1);

  operator delete();
}

void sub_10057E4B8(uint64_t a1)
{
  *a1 = off_101E60AC0;
  v2 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v7 = (a1 + 112);
  sub_100112048(&v7);
  v3 = *(a1 + 104);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  BootstrapProvisioningControllerInterface::~BootstrapProvisioningControllerInterface(a1);
}

void sub_10057E604(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10057E6D8);
  __cxa_rethrow();
}

void sub_10057E644(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10057E698(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10057E6D8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10057E7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10057E8A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E60C18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10057E8E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10057E92C(uint64_t a1, xpc_object_t *a2)
{
  sub_10011D868(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10057EA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10057EB44(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E60C98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10057EB7C(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11);
}

uint64_t sub_10057EC6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10057EDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10057EE54(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E60D18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10057EE8C(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v13 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v6);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, &v13);
}

uint64_t sub_10057EF88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10057F0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10057F160(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E60D98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10057F198(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_10057F1E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10057F22C(uint64_t a1, __int128 *a2, void **a3)
{
  if (a1 + 8 == sub_100007A6C(a1, a3))
  {
    v6 = sub_100580B40(a1, a3);
    sub_1005806D0((v6 + 56), 0, 0, 0);
  }

  v7 = sub_1000E20F0(a1, a3);
  return sub_100005308(v7, a2);
}

uint64_t sub_10057F2C0(uint64_t a1, __int128 *a2, void **a3)
{
  if (a1 + 32 == sub_100007A6C(a1 + 24, a3))
  {
    v6 = sub_100580B40(a1 + 24, a3);
    sub_1005806D0((v6 + 56), 0, 0, 0);
  }

  v7 = sub_1000E20F0(a1 + 24, a3);
  return sub_100005308(v7, a2);
}

void sub_10057F358(uint64_t a1, __int128 *a2, __int128 *a3)
{
  sub_100580870(v4, a2, a3);
  sub_10015F6CC(a1 + 96, v4);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10057F3B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  *(a2 + 40) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = 0;
  *(a2 + 48) = a2 + 56;
  v4 = a2 + 48;
  *(a2 + 16) = 0;
  *(a2 + 24) = a2 + 32;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0u;
  v5 = (a2 + 72);
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  if (*(a1 + 64) == 1 && *(a1 + 24) == 1 && *(a1 + 56) == 1)
  {
    sub_10057F358(a2, a1, (a1 + 32));
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
LABEL_6:
  if (v6 != v7)
  {
    v8 = *v6;
    v9 = v6[1];
    while (1)
    {
      if (v8 == v9)
      {
        v6 += 3;
        goto LABEL_6;
      }

      if (*(v8 + 24) == 1 && *(v8 + 36) == 1)
      {
        v10 = *(v8 + 32);
        if (*(v8 + 72) == 1 && *(v8 + 64) == 1)
        {
          if (v10 != 9)
          {
            if (v10 == 6)
            {
              sub_10057F22C(a2, v8, (v8 + 40));
              if ((*(v8 + 24) & 1) == 0)
              {
                sub_1000D1644();
              }
            }

LABEL_21:
            sub_100005308(v5, v8);
            goto LABEL_24;
          }

          sub_10057F2C0(a2, v8, (v8 + 40));
        }

        else
        {
          if (v10 != 9)
          {
            goto LABEL_21;
          }

          if (*(v8 + 84) == 1 && *(v8 + 80) == 1)
          {
            sub_10057F2C0(a2, v8, v8);
          }

          else
          {
            sub_100005BA0(v4, v8);
          }
        }
      }

LABEL_24:
      v8 += 88;
    }
  }
}

uint64_t sub_10057F588(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = (a1 + 72);
  sub_1000087B4(&v3);
  sub_100009970(a1 + 48, *(a1 + 56));
  sub_100580908(a1 + 24, *(a1 + 32));
  sub_100580908(a1, *(a1 + 8));
  return a1;
}

void sub_10057F608(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_9:
  v17 = *a2;
  v18 = *a2;
  if (!v15)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1017748DC();
    }

    *a4 = 0;
    *(a4 + 88) = 0;
    if ((v16 & 1) == 0)
    {
      goto LABEL_36;
    }

    return;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Decoding resource lists XML document using BlastDoor", __p, 2u);
  }

  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = a3[1];
  }

  v22 = [NSData nonOwningDataWithBytes:v20 length:v21];
  v35 = 0;
  v36 = 0;
  v34 = 0;
  (*(*v15 + 16))(&v34, v15);
  v32 = 0u;
  v33 = 0u;
  __p[0] = 0;
  __p[1] = &v36;
  (*(*v34 + 64))(&v32);
  sub_1003A5C24(__p);
  if (v36)
  {
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177482C();
    }

LABEL_30:
    *a4 = 0;
    *(a4 + 88) = 0;
    goto LABEL_31;
  }

  if ((BYTE8(v33) & 1) == 0)
  {
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_1017748A0();
    }

    goto LABEL_30;
  }

  memset(v27, 0, sizeof(v27));
  *__p = 0u;
  sub_10004EFD0(v27 + 8, v32, *(&v32 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v32 + 1) - v32) >> 3));
  sub_100C180E4(&v28);
  *a4 = *__p;
  *(a4 + 16) = *&v27[0];
  *(a4 + 24) = *(v27 + 8);
  v23 = v30;
  *(a4 + 40) = *(&v27[1] + 1);
  v24 = v29;
  v25 = v28;
  v28 = 0uLL;
  v29 = 0;
  *(a4 + 80) = v31;
  __p[1] = 0;
  memset(v27, 0, sizeof(v27));
  __p[0] = 0;
  *(a4 + 48) = v25;
  *(a4 + 64) = v24;
  *(a4 + 72) = v23;
  *(a4 + 88) = 1;
  v37 = v27 + 1;
  sub_1000087B4(&v37);
  if (SBYTE7(v27[0]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_31:
  if (BYTE8(v33) == 1)
  {
    __p[0] = &v32;
    sub_1000087B4(__p);
  }

  if (v35)
  {
    sub_100004A34(v35);
  }

  sub_1003A5A8C(&v36);

  if ((v16 & 1) == 0)
  {
LABEL_36:
    sub_100004A34(v14);
  }
}

void sub_10057F950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v31 - 72) = v29;
  sub_1000087B4((v31 - 72));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    __p = &a24;
    sub_1000087B4(&__p);
  }

  v33 = *(v31 - 88);
  if (v33)
  {
    sub_100004A34(v33);
  }

  sub_1003A5A8C((v31 - 80));

  if ((v30 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  _Unwind_Resume(a1);
}

void sub_10057F9D4()
{
  if (v0)
  {
    JUMPOUT(0x10057F9CCLL);
  }

  JUMPOUT(0x10057F9C4);
}

void sub_10057F9E4(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  v35 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v35);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_9:
  v17 = *a2;
  v18 = *a2;
  if (!v15)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1017749C8();
    }

    *a4 = 0;
    *(a4 + 144) = 0;
    if ((v16 & 1) == 0)
    {
      goto LABEL_42;
    }

    return;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v35) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Decoding conference info XML document using BlastDoor", &v35, 2u);
  }

  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = a3[1];
  }

  v22 = [NSData nonOwningDataWithBytes:v20 length:v21];
  v57 = 0;
  v58 = 0;
  v56 = 0;
  (*(*v15 + 16))(&v56, v15);
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  *__p = 0u;
  v53 = 0u;
  *v50 = 0u;
  v51 = 0u;
  v35 = 0;
  v36 = &v58;
  (*(*v56 + 56))(v50);
  sub_1003A5C24(&v35);
  if (v58)
  {
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_101774918();
    }

LABEL_30:
    *a4 = 0;
    *(a4 + 144) = 0;
    goto LABEL_31;
  }

  if ((v55 & 1) == 0)
  {
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177498C();
    }

    goto LABEL_30;
  }

  sub_10057F3B4(v50, &v35);
  v23 = v36;
  *a4 = v35;
  *(a4 + 8) = v23;
  v24 = (a4 + 8);
  v25 = v37;
  *(a4 + 16) = v37;
  if (v25)
  {
    v23[2] = v24;
    v35 = &v36;
    v36 = 0;
    v37 = 0;
  }

  else
  {
    *a4 = v24;
  }

  v27 = v38;
  v26 = v39;
  *(a4 + 32) = v39;
  v28 = a4 + 32;
  *(a4 + 24) = v27;
  v29 = v40;
  *(a4 + 40) = v40;
  if (v29)
  {
    v26[2] = v28;
    v38 = &v39;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    *(a4 + 24) = v28;
  }

  v31 = v41;
  v30 = v42;
  *(a4 + 56) = v42;
  v32 = a4 + 56;
  *(a4 + 48) = v31;
  v33 = v43;
  *(a4 + 64) = v43;
  if (v33)
  {
    *(v30 + 2) = v32;
    v41 = &v42;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    *(a4 + 48) = v32;
  }

  *(a4 + 72) = v44;
  *(a4 + 88) = v45;
  v34 = v46;
  v45 = 0;
  *&v46 = 0;
  v44 = 0uLL;
  *(a4 + 96) = v34;
  *(a4 + 112) = v47;
  *(&v46 + 1) = 0;
  v47 = 0;
  *(a4 + 120) = v48;
  *(a4 + 136) = v49;
  v48 = 0uLL;
  v49 = 0;
  *(a4 + 144) = 1;
  v59 = &v44;
  sub_1000087B4(&v59);
  sub_100009970(&v41, v42);
  sub_100580908(&v38, v39);
  sub_100580908(&v35, v36);
LABEL_31:
  if (v55 == 1)
  {
    v35 = v54 + 1;
    sub_1005809F0(&v35);
    if (LOBYTE(v54[0]) == 1)
    {
      if (BYTE8(v53) == 1 && SBYTE7(v53) < 0)
      {
        operator delete(__p[0]);
      }

      if (BYTE8(v51) == 1 && SBYTE7(v51) < 0)
      {
        operator delete(v50[0]);
      }
    }
  }

  if (v57)
  {
    sub_100004A34(v57);
  }

  sub_1003A5A8C(&v58);

  if ((v16 & 1) == 0)
  {
LABEL_42:
    sub_100004A34(v14);
  }
}

void sub_10057FE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_100580964(&a27);
  v32 = *(v30 - 104);
  if (v32)
  {
    sub_100004A34(v32);
  }

  sub_1003A5A8C((v30 - 96));

  if ((v29 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  _Unwind_Resume(a1);
}

void sub_10057FE5C()
{
  if (v0)
  {
    JUMPOUT(0x10057FE54);
  }

  JUMPOUT(0x10057FE4CLL);
}

std::string *sub_10057FE6C@<X0>(std::string *__str@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = std::string::operator=(a2, __str);
  if (__str[1].__r_.__value_.__s.__data_[4] == 1)
  {
    *(a2 + 24) = LODWORD(__str[1].__r_.__value_.__l.__data_) == 200;
  }

  return result;
}

void sub_10057FEC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_10057FEDC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) == *(a1 + 24))
  {

    return sub_100C180E4(a2);
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    memset(v15, 0, sizeof(v15));
    v13 = 0u;
    sub_10000C320(&v13);
    sub_10000501C(__p, "<?xml version=1.0 encoding=utf-8?>");
    sub_100917DBC(&v13);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000501C(__p, "<resource-lists xmlns=urn:ietf:params:xml:ns:resource-lists xmlns:cp=urn:ietf:params:xml:ns:copycontrol>");
    sub_100917DBC(&v13);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000501C(__p, "  <list>");
    sub_100917DBC(&v13);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *(a1 + 24);
    for (i = *(a1 + 32); v4 != i; v4 += 24)
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      std::operator+<char>();
      v6 = std::string::append(&v10, " cp:copyControl=to />", 0x18uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v12 = v6->__r_.__value_.__r.__words[2];
      *__p = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      sub_100917DBC(&v13);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10000501C(__p, "  </list>");
    sub_100917DBC(&v13);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000C030(&v14);
    sub_100061574(&v13, __p);
    sub_100C180E0(a2);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    *&v14 = v8;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*(&v16 + 1));
    }

    std::locale::~locale(v15);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  return result;
}

void sub_100580238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10068C9D8(&a23);
  _Unwind_Resume(a1);
}

double sub_1005802A4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 47);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 32);
  }

  if (v3)
  {
    v38 = 0;
    __dst = 0u;
    v37 = 0u;
    std::operator+<char>();
    v5 = std::string::append(&v33, ">\n <group-data>\n\t<request target=subject>\n\t\t<action>set</action>\n\t\t<data><subject>", 0x55uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = *(a1 + 23);
    if (v7 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 23);
    }

    else
    {
      v9 = *(a1 + 8);
    }

    v10 = std::string::append(&v34, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v35, "</subject></data>\n\t</request>\n </group-data>\n</cpm-group-management>", 0x44uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    *&v18 = *(&v12->__r_.__value_.__l + 2);
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_100C180E0(&__dst);
    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    memset(v19, 0, sizeof(v19));
    *__p = 0u;
    sub_10000C320(__p);
    sub_1000D0C38(__p, "Content-Type", off_101E97878);
    if ((SBYTE7(v37) & 0x80u) == 0)
    {
      v14 = BYTE7(v37);
    }

    else
    {
      v14 = *(&__dst + 1);
    }

    std::to_string(&v35, v14);
    sub_1002049A4(__p, "Content-Length", &v35);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    sub_100917E0C(__p);
    sub_100C18310(&v18);
    sub_100061574(__p, &v35);
    sub_100C180E0(a2);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    *&v18 = v15;
    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[1]);
    }

    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    if (SBYTE7(v37) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {

    return sub_100C180E4(a2);
  }

  return result;
}

void sub_100580624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
  }

  sub_10068C9D8(&__p);
  if (*(v14 - 57) < 0)
  {
    operator delete(*(v14 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_1005806D0(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_100071A6C(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10008E2D0(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_10016FBEC(a1, (v6 + v12), a3, v11);
  }
}

char *sub_100580870(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_1005808EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100580908(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100580908(a1, *a2);
    sub_100580908(a1, a2[1]);
    sub_1003ECF44((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_100580964(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    sub_1005809F0(&v3);
    if (*(a1 + 64) == 1)
    {
      if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
      {
        operator delete(*a1);
      }
    }
  }

  return a1;
}

void sub_1005809F0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_100580A64(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_100580A64(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100580AB8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100580AB8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = v3;
    if (*(v3 - 16) == 1 && *(v3 - 24) == 1 && *(v3 - 25) < 0)
    {
      operator delete(*(v3 - 6));
    }

    v3 -= 11;
    if (*(v4 - 64) == 1 && *(v4 - 65) < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_100580B40(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100580BF4();
  }

  return v2;
}

uint64_t sub_100580C98(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1003ECF44(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t asString(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (off_101E60E38[v1])(&v4, a1);
}

{
  v1 = *(a1 + 32);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (*(&off_101E60EB8 + v1))(&v4, a1);
}

{
  v1 = *(a1 + 232);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (off_101E60EC8[v1])(&v4, a1 + 8);
}

{
  v1 = *(a1 + 144);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (*(&off_101E60FE0 + v1))(&v4, a1);
}

{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (*(&off_101E60FF0 + v1))(&v4, a1);
}

{
  v1 = *(a1 + 4);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (*(&off_101E61020 + v1))(&v4, a1);
}

{
  v1 = *(a1 + 48);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (off_101E61038[v1])(&v4, a1 + 8);
}

void LazuliMLSMessageId::LazuliMLSMessageId(LazuliMLSMessageId *this)
{
  this->fId.__begin_ = 0;
  this->fId.__end_ = 0;
  this->fId.__cap_ = 0;
}

void **LazuliMLSMessageId::LazuliMLSMessageId(void **a1, const std::string *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v5 = a2->__r_.__value_.__r.__words[0];
  size = a2->__r_.__value_.__l.__size_;
  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    v8 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = a2->__r_.__value_.__l.__size_;
  }

  if (v8 >= 2)
  {
    v9 = v7 + v8;
    v10 = v7;
    do
    {
      v11 = memchr(v10, 95, v8 - 1);
      if (!v11)
      {
        break;
      }

      if (*v11 == 24415)
      {
        if (v11 == v9)
        {
          break;
        }

        memset(&__dst, 0, sizeof(__dst));
        if (v11 - v7 != -1)
        {
          std::string::basic_string(&__dst, a2, 0, v11 - v7, &v16);
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v10 = (v11 + 1);
      v8 = v9 - v10;
    }

    while (v9 - v10 >= 2);
  }

  memset(&__dst, 0, sizeof(__dst));
LABEL_17:
  if ((v4 & 0x80000000) != 0)
  {
    sub_100005F2C(&__dst, v5, size);
  }

  else
  {
    __dst = *a2;
  }

LABEL_20:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __dst.__r_.__value_.__l.__size_;
  }

  v17 = 0;
  v16 = 0uLL;
  sub_1001E0D88(&v16, p_dst, p_dst + v13, v13);
  v14 = *a1;
  if (*a1)
  {
    a1[1] = v14;
    operator delete(v14);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v16;
  a1[2] = v17;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_100581098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void **LazuliMLSMessageId::createOptional@<X0>(void **result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 23);
  if (v3 < 0)
  {
    v3 = result[1];
  }

  if (v3)
  {
    result = LazuliMLSMessageId::LazuliMLSMessageId(&v4, result);
    *a2 = v4;
    *(a2 + 16) = v5;
    LOBYTE(v3) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 24) = v3;
  return result;
}

void sub_10058114C()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_10058119C(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  memset(v18, 0, sizeof(v18));
  sub_100581F6C(v18, *(a1 + 168), *(a1 + 176), (*(a1 + 176) - *(a1 + 168)) >> 5);
  sub_10000501C(a2, "LazuliMLSEventOutgoingCreateGroup");
  v19 = v18;
  sub_10003CA58(&v19);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1005812D8(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingAddMember");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1005813AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_1005813D0(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  memset(v18, 0, sizeof(v18));
  sub_100581F6C(v18, *(a1 + 168), *(a1 + 176), (*(a1 + 176) - *(a1 + 168)) >> 5);
  sub_10000501C(a2, "LazuliMLSEventOutgoingKickMember");
  v19 = v18;
  sub_10003CA58(&v19);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_10058150C(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingRemoveSelf");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1005815E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_100581604(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingKeyUpdate");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1005816D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_1005816FC(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingResync");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1005817D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_1005817F4(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(&v16, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    v16 = *(a1 + 144);
    v17 = *(a1 + 160);
  }

  v4 = *(a1 + 176);
  v18 = *(a1 + 168);
  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_100034C50(&__p, v4, *(a1 + 184), *(a1 + 184) - v4);
  sub_10000501C(a2, "LazuliMLSEventOutgoingFailureToDecryptV2");
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100581944(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingApplicationSend");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100581A18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_100581A3C(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingDowngrade");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100581B10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_100581B34(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingProposalCommitted");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100581C08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_100581C2C(__int128 *a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&v3, a1);
  sub_10000501C(a2, "LazuliMLSEventOutgoingGroupRepaired");
  if (v13 == 1 && __p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void sub_100581CDC(__int128 *a1@<X1>, _BYTE *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  sub_100582264(v15, (a1 + 9));
  sub_10000501C(a2, "LazuliMLSEventOutgoingErrorOccurred");
  sub_100582310(v15);
  if (v14 == 1 && __p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100581D9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1005823D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100581DC0(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_100581E40(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 24);
  *(__dst + 5) = 0;
  *(__dst + 24) = v5;
  *(__dst + 6) = 0;
  *(__dst + 7) = 0;
  sub_100034C50((__dst + 40), *(a2 + 5), *(a2 + 6), *(a2 + 6) - *(a2 + 5));
  *(__dst + 8) = 0;
  *(__dst + 9) = 0;
  *(__dst + 10) = 0;
  sub_100034C50((__dst + 64), *(a2 + 8), *(a2 + 9), *(a2 + 9) - *(a2 + 8));
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  sub_100034C50((__dst + 88), *(a2 + 11), *(a2 + 12), *(a2 + 12) - *(a2 + 11));
  sub_100190A90((__dst + 112), (a2 + 7));
  return __dst;
}

void sub_100581F08(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 96) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v8;
    operator delete(v8);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}