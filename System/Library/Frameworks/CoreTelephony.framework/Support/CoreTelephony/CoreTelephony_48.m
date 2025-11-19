void sub_1003066B4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 64);
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      sub_100004A34(v5);
    }
  }

  v7 = *(v1 + 2);
  if (v7)
  {
    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10176AFB0(v7, v8);
    }

    v9 = 4;
  }

  else
  {
    v10 = v1[2];
    if (v10)
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    if (v10 == 1)
    {
      v11 = 2;
    }

    if (v10 == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v11;
    }
  }

  v12 = *(v2 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = sub_100649BB4(v9);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Transfer consent state: %s", buf, 0xCu);
  }

  if (*(v2 + 416) == 1)
  {
    sub_100305A7C((v2 + 288));
  }

  sub_100304624(v2, v9);
  operator delete();
}

void sub_100306898()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100306984(uint64_t a1)
{
  sub_1005CF314(a1);

  operator delete();
}

void sub_1003069BC(void *a1)
{
  sub_1005CF430();
  sub_100004AA0(&buf, a1 + 1);
  v2 = *&buf_4[4];
  if (*&buf_4[4])
  {
    atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = sub_1005CF7D4(a1);
  v4 = sub_1005CF104(1, v3);
  v5 = a1[5];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      buf = 136315394;
      *buf_4 = "";
      *&buf_4[8] = 2080;
      *&buf_4[10] = "";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sUsing both iCloud and IDS for Thumper settings sync!", &buf, 0x16u);
    }

    sub_10093A1A4();
  }

  if (v6)
  {
    buf = 136315394;
    *buf_4 = "";
    *&buf_4[8] = 2080;
    *&buf_4[10] = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sUsing iCloud for Thumper sync!", &buf, 0x16u);
  }

  v7 = a1[7];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10073A8E0();
}

void sub_1003079DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58, uint64_t a59, uint64_t a60, const void *a61, uint64_t a62, uint64_t a63)
{
  if (a31)
  {
    sub_10176B028();
  }

  if (a32)
  {
    (*(*a32 + 8))(a32);
  }

  if (a42)
  {
    (*(*a42 + 8))(a42);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_weak(a39);
  }

  if (a51)
  {
    (*(*a51 + 8))(a51);
  }

  if (a48)
  {
    std::__shared_weak_count::__release_weak(a48);
  }

  sub_10001021C(&a61);
  if (a58)
  {
    std::__shared_weak_count::__release_weak(a58);
  }

  v75 = a72;
  a72 = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  if (a67)
  {
    std::__shared_weak_count::__release_weak(a67);
  }

  v76 = STACK[0x220];
  STACK[0x220] = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  v77 = STACK[0x268];
  STACK[0x268] = 0;
  if (v77)
  {
    (*(*v77 + 8))(v77);
  }

  if (STACK[0x250])
  {
    std::__shared_weak_count::__release_weak(STACK[0x250]);
  }

  v78 = STACK[0x2B0];
  STACK[0x2B0] = 0;
  if (v78)
  {
    (*(*v78 + 8))(v78);
  }

  if (STACK[0x298])
  {
    std::__shared_weak_count::__release_weak(STACK[0x298]);
  }

  if (STACK[0x2C8])
  {
    sub_100004A34(STACK[0x2C8]);
  }

  v79 = *(v73 - 200);
  *(v73 - 200) = 0;
  if (v79)
  {
    (*(*v79 + 8))(v79);
  }

  v80 = *(v73 - 104);
  if (v80)
  {
    sub_100004A34(v80);
  }

  v81 = *(v73 - 128);
  *(v73 - 128) = 0;
  if (v81)
  {
    (*(*v81 + 8))(v81);
  }

  v82 = *(v73 - 120);
  *(v73 - 120) = 0;
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_weak(v72);
  }

  _Unwind_Resume(a1);
}

void sub_100307F5C(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v5 = -1431655765 * (((*a2)[1] - **a2) >> 3);
    }

    else
    {
      v5 = -1;
    }

    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 1024;
    LODWORD(v26) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sList of watches updated: %d device(s)", buf, 0x1Cu);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        v9 = v3[5];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 0uLL;
          v24 = 0;
          ctu::cf::assign();
          *v21 = v23;
          v22 = v24;
          v23 = 0uLL;
          v10 = v21[0];
          v11 = SHIBYTE(v24);
          v24 = 0;
          ctu::cf::assign();
          v12 = v21;
          if (v11 < 0)
          {
            v12 = v10;
          }

          *__p = v23;
          v20 = v24;
          v13 = v23;
          if (v24 >= 0)
          {
            v13 = __p;
          }

          v14 = "  --connected";
          if (!*(v7 + 16))
          {
            v14 = "";
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v26 = v12;
          *v27 = 2080;
          *&v27[2] = v13;
          *&v27[10] = 2080;
          *&v27[12] = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s   %s: %s%s", buf, 0x34u);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v22) < 0)
          {
            operator delete(v21[0]);
          }
        }

        v7 += 24;
      }

      while (v7 != v8);
      v6 = *a2;
    }
  }

  v15 = a2[1];
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = v3[15];
  v3[14] = v6;
  v3[15] = v15;
  if (v16)
  {
    sub_100004A34(v16);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = sub_100308308;
  v18[3] = &unk_101E40280;
  v18[4] = v3;
  v23 = 0uLL;
  sub_100004AA0(&v23, v3 + 1);
  v17 = v3[3];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 1174405120;
  *&buf[16] = sub_10030A634;
  v26 = &unk_101E405B0;
  *&v27[8] = v23;
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *v27 = v18;
  dispatch_async(v17, buf);
  if (*&v27[16])
  {
    sub_100004A34(*&v27[16]);
  }

  if (*(&v23 + 1))
  {
    sub_100004A34(*(&v23 + 1));
  }
}

void sub_1003082B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100308310(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v5 = -1431655765 * (((*a2)[1] - **a2) >> 3);
    }

    else
    {
      v5 = -1;
    }

    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 1024;
    LODWORD(v26) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sList of iCloud devices updated: %d device(s)", buf, 0x1Cu);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        v9 = v3[5];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 0uLL;
          v24 = 0;
          ctu::cf::assign();
          *v21 = v23;
          v22 = v24;
          v23 = 0uLL;
          v10 = v21[0];
          v11 = SHIBYTE(v24);
          v24 = 0;
          ctu::cf::assign();
          v12 = v21;
          if (v11 < 0)
          {
            v12 = v10;
          }

          *__p = v23;
          v20 = v24;
          v13 = v23;
          if (v24 >= 0)
          {
            v13 = __p;
          }

          v14 = "  --connected";
          if (!*(v7 + 16))
          {
            v14 = "";
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v26 = v12;
          *v27 = 2080;
          *&v27[2] = v13;
          *&v27[10] = 2080;
          *&v27[12] = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s   %s: %s%s", buf, 0x34u);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v22) < 0)
          {
            operator delete(v21[0]);
          }
        }

        v7 += 24;
      }

      while (v7 != v8);
      v6 = *a2;
    }
  }

  v15 = a2[1];
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = v3[17];
  v3[16] = v6;
  v3[17] = v15;
  if (v16)
  {
    sub_100004A34(v16);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = sub_1003086BC;
  v18[3] = &unk_101E402C0;
  v18[4] = v3;
  v23 = 0uLL;
  sub_100004AA0(&v23, v3 + 1);
  v17 = v3[3];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 1174405120;
  *&buf[16] = sub_10030A634;
  v26 = &unk_101E405B0;
  *&v27[8] = v23;
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *v27 = v18;
  dispatch_async(v17, buf);
  if (*&v27[16])
  {
    sub_100004A34(*&v27[16]);
  }

  if (*(&v23 + 1))
  {
    sub_100004A34(*(&v23 + 1));
  }
}

void sub_10030866C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003086C4(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"secret.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

uint64_t sub_100308758(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100308774(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL sub_100308784(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"secret.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

void *sub_100308820(void *a1, uint64_t *a2)
{
  sub_10030A670(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

BOOL sub_10030886C(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 32) && !CFStringHasPrefix(a2, @"secret.") && CFStringHasPrefix(a2, @"message.") == 0;
  sub_100004A34(v6);
  return v7;
}

uint64_t sub_100308918(void *a1, const __CFString *a2, const void *a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return 0;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (a1[5])
  {
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    sub_1005D3A64(a2, __p);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1005D3C28(a2, v7, a3, &v12);
    v10 = v12;
    sub_10001021C(&v13 + 1);
    sub_10001021C(&v13);
    sub_10000A1EC(&v12 + 1);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v10 = 0;
  }

  sub_100004A34(v9);
  return v10;
}

void sub_100308A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_100308A4C(uint64_t result, uint64_t a2)
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

void sub_100308A68(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL sub_100308A78(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"message.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

BOOL sub_100308B0C(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"message.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

BOOL sub_100308BA8(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"secret.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

BOOL sub_100308C3C(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"message.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

BOOL sub_100308CD0(uint64_t a1, CFStringRef theString2)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[1];
  if (*v2 == v3)
  {
    return 0;
  }

  v5 = *v2 + 24;
  do
  {
    v7 = CFStringCompare(*(v5 - 24), theString2, 0) == kCFCompareEqualTo;
    result = v7;
    v7 = v7 || v5 == v3;
    v5 += 24;
  }

  while (!v7);
  return result;
}

BOOL sub_100308D48(uint64_t a1, CFStringRef theString2)
{
  v2 = *(a1 + 128);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[1];
  if (*v2 == v3)
  {
    return 0;
  }

  v5 = *v2 + 24;
  do
  {
    v7 = CFStringCompare(*(v5 - 24), theString2, 0) == kCFCompareEqualTo;
    result = v7;
    v7 = v7 || v5 == v3;
    v5 += 24;
  }

  while (!v7);
  return result;
}

uint64_t sub_100308DE8(uint64_t a1)
{
  result = sub_1005D1A60(a1);
  if (result)
  {
    return *(a1 + 112) && *(a1 + 128) != 0;
  }

  return result;
}

const void **sub_100308E30(void *a1, CFStringRef theString1, uint64_t a3, const void *a4)
{
  if (CFStringCompare(theString1, @"requestIndividualSecret", 0))
  {
    v7 = a1[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%sMessage cmd is not recognized:", buf, 0x16u);
    }

    *buf = off_101E406D0;
    *&buf[8] = a1;
    v45 = buf;
    logger::CFTypeRefLogger();
    return sub_100007E44(buf);
  }

  else
  {
    *type = 0;
    if (a4)
    {
      v9 = CFGetTypeID(a4);
      if (v9 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a4, @"account");
        v11 = Value;
        if (Value)
        {
          v12 = CFGetTypeID(Value);
          if (v12 == CFStringGetTypeID())
          {
            v13 = v11;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        *buf = v13;
        sub_10021D11C(type, buf);
      }

      if (*type)
      {
        goto LABEL_24;
      }
    }

    theDict[0] = 0;
    sub_1006160F0(buf);
    v14 = *buf;
    sub_1005D4280(a1, a3, &key);
    v42 = sub_100615F34(v14, key, 1);
    sub_100138C38(theDict, &v42);
    sub_100005978(&key);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (theDict[0])
    {
      v15 = CFDictionaryGetValue(theDict[0], @"account");
      v16 = v15;
      if (v15)
      {
        v17 = CFGetTypeID(v15);
        if (v17 == CFStringGetTypeID())
        {
          v18 = v16;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      *buf = v18;
      sub_10021D11C(type, buf);
    }

    sub_10001021C(theDict);
    if (*type)
    {
LABEL_24:
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v40 = *&buf[16];
      *theDict = *buf;
      v19 = a1[9];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 1174405120;
      v35 = sub_100309400;
      v36 = &unk_101E40500;
      v20 = buf[23];
      if (buf[23] < 0)
      {
        sub_100005F2C(&__p, theDict[0], theDict[1]);
      }

      else
      {
        __p = *theDict;
        v38 = v40;
      }

      v21 = a1 + 10;
      if (v19 != a1 + 10)
      {
        while (1)
        {
          *buf = *(v19 + 8);
          v22 = v19[6];
          *&buf[8] = v19[5];
          *&buf[16] = v22;
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
          }

          v23 = v35(v34, buf);
          if (*&buf[16])
          {
            std::__shared_weak_count::__release_weak(*&buf[16]);
          }

          if (v23)
          {
            break;
          }

          v24 = v19[1];
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v19[2];
              v26 = *v25 == v19;
              v19 = v25;
            }

            while (!v26);
          }

          v19 = v25;
          if (v25 == v21)
          {
            goto LABEL_46;
          }
        }
      }

      if (v19 == v21)
      {
LABEL_46:
        v31 = a1[5];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = theDict[0];
          if (v20 >= 0)
          {
            v32 = theDict;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v45 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sNo account %s found", buf, 0x20u);
        }
      }

      else
      {
        v27 = v19[6];
        if (v27)
        {
          v28 = std::__shared_weak_count::lock(v27);
          if (v28)
          {
            v29 = v28;
            v30 = v19[5];
            if (v30)
            {
              (*(*v30 + 96))(v30, a3);
            }

            sub_100004A34(v29);
          }
        }
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(theDict[0]);
      }
    }

    else
    {
      v33 = a1[5];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#W %s%sNo account given/found for IDS individual key req:", buf, 0x16u);
      }

      *buf = off_101E40650;
      *&buf[8] = a1;
      v45 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
    }

    return sub_100005978(type);
  }
}

void sub_100309330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, const void *a25, __int16 a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_100004A34(v33);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(a20);
  }

  sub_100005978(&a25);
  _Unwind_Resume(a1);
}

BOOL sub_100309400(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 8);
      if (v7)
      {
        (*(*v7 + 16))(__p);
        v8 = v20;
        if ((v20 & 0x80u) == 0)
        {
          v9 = v20;
        }

        else
        {
          v9 = __p[1];
        }

        v10 = *(a1 + 55);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(a1 + 40);
        }

        if (v9 == v10)
        {
          if ((v20 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v15 = *(a1 + 32);
          v14 = (a1 + 32);
          v13 = v15;
          if (v11 >= 0)
          {
            v16 = v14;
          }

          else
          {
            v16 = v13;
          }

          v17 = memcmp(v12, v16, v9) == 0;
          if ((v8 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v17 = 0;
        if (v20 < 0)
        {
LABEL_21:
          operator delete(__p[0]);
        }
      }

      else
      {
        v17 = 0;
      }

LABEL_22:
      sub_100004A34(v6);
      return v17;
    }
  }

  return 0;
}

_BYTE *sub_100309518(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_100005F2C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_100309544(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

const void **sub_100309558(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v10 = 0;
    sub_1000296E0(&v10);
    Mutable = theDict;
  }

  CFDictionaryAddValue(Mutable, @"cmd", @"individualSecret");
  CFDictionaryAddValue(theDict, @"value", a4);
  (*(**(a1 + 168) + 48))(*(a1 + 168), a2, @"message.", theDict);
  return sub_1000296E0(&theDict);
}

const void **sub_100309658(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  sub_1005D6728(a2, &v12);
  v11 = 0;
  sub_1005D6790(a2, &v11);
  sub_1006160F0(&v8);
  v4 = sub_1006160B8(v8, v11);
  v10 = v4;
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v4)
  {
    sub_1005D550C(a1, 1u, 0, 0, a2, 1, 0);
  }

  sub_1006160F0(&v8);
  v5 = sub_1006160B8(v8, v12);
  v6 = v10;
  v10 = v5;
  v13 = v6;
  sub_10000A1EC(&v13);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v10)
  {
    sub_1005D550C(a1, 0, 0, 0, a2, 1, 0);
  }

  sub_10000A1EC(&v10);
  sub_100005978(&v11);
  return sub_100005978(&v12);
}

void sub_10030976C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  if (a3)
  {
    sub_100004A34(a3);
  }

  sub_10000A1EC(va);
  sub_100005978(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

void sub_1003097CC(uint64_t a1, const void **a2)
{
  v34 = 0;
  v35 = 0;
  sub_1005DC42C(a1, &v34);
  if (!v34 || !sub_1005D14F8(a1))
  {
    goto LABEL_48;
  }

  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, __p);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_10:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_11:
  (*(*v12 + 208))(&v32, v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  v14 = v32;
  if (v32 != v33)
  {
    do
    {
      memset(__p, 0, 24);
      sub_1009F7FB4(v14 + 4);
      v15 = HIBYTE(__p[2]);
      v16 = HIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) < 0)
      {
        v15 = __p[1];
      }

      if (v15)
      {
        sub_100005BA0(&v30, __p);
        v16 = HIBYTE(__p[2]);
      }

      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v17 = v14[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v14[2];
          v19 = *v18 == v14;
          v14 = v18;
        }

        while (!v19);
      }

      v14 = v18;
    }

    while (v18 != v33);
  }

  v20 = *(v34 + 72);
  for (i = *(v34 + 80); v20 != i; v20 += 24)
  {
    if (v31 == sub_100007A6C(&v30, v20))
    {
      v22 = *(v20 + 23);
      if (v22 >= 0)
      {
        v23 = *(v20 + 23);
      }

      else
      {
        v23 = *(v20 + 8);
      }

      v24 = *(a2 + 23);
      v25 = v24;
      if (v24 < 0)
      {
        v24 = a2[1];
      }

      if (v23 != v24 || (v22 >= 0 ? (v26 = v20) : (v26 = *v20), v25 >= 0 ? (v27 = a2) : (v27 = *a2), memcmp(v26, v27, v23)))
      {
        sub_100309658(a1, v20);
        v28 = *(a1 + 40);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v20;
          if (*(v20 + 23) < 0)
          {
            v29 = *v20;
          }

          LODWORD(__p[0]) = 136315650;
          *(__p + 4) = "";
          WORD2(__p[1]) = 2080;
          *(&__p[1] + 6) = "";
          HIWORD(__p[2]) = 2080;
          __p[3] = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sRemainings of account %s removed from cloud", __p, 0x20u);
        }
      }
    }
  }

  sub_100009970(&v30, v31[0]);
  sub_100009970(&v32, v33[0]);
LABEL_48:
  if (v35)
  {
    sub_100004A34(v35);
  }
}

void sub_100309B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100309BA8(const void **result, const void *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v5 = result;
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = theDict;
      theDict = Mutable;
      *v23 = v7;
      sub_1000296E0(v23);
    }

    CFDictionaryAddValue(theDict, @"account", a2);
    memset(v23, 0, sizeof(v23));
    ctu::cf::assign();
    *(&v24 + 7) = *(&v23[3] + 3);
    *&v24 = *&v23[2];
    __p = *v23;
    *v18 = *&v23[2];
    *&v18[7] = *(&v24 + 7);
    v19 = HIBYTE(v23[5]);
    v20 = 1;
    sub_1005D5118(theDict, v5, &__p, &key);
    v8 = theDict;
    theDict = key;
    *v23 = v8;
    key = 0;
    sub_1000296E0(v23);
    sub_1000296E0(&key);
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p);
    }

    key = 0;
    sub_1005D4280(v5, a3, &key);
    v16 = 0;
    sub_1006160F0(v23);
    *&v24 = sub_100615F34(*v23, key, 1);
    sub_100138C38(&v16, &v24);
    if (*&v23[2])
    {
      sub_100004A34(*&v23[2]);
    }

    if (v16)
    {
      Value = CFDictionaryGetValue(v16, @"ts");
      v23[0] = 0;
      ctu::cf::assign(v23, Value, v10);
      v11 = v23[0] + 1;
    }

    else
    {
      v11 = 1;
    }

    v15 = 0;
    v12 = *(v5 + 152);
    v13 = key;
    v14 = theDict;
    memset(v23, 0, sizeof(v23));
    ctu::cf::assign();
    v24 = *v23;
    v25 = *&v23[4];
    (*(*v12 + 56))(&v15, v12, v13, v14, &v24);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    sub_1005D615C(v5, key, v11, v15, 1, 1);
    sub_10000A1EC(&v15);
    sub_10001021C(&v16);
    sub_100005978(&key);
    return sub_1000296E0(&theDict);
  }

  return result;
}

void sub_100309E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  sub_10000A1EC(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  sub_1000296E0(va3);
  _Unwind_Resume(a1);
}

const void **sub_100309F08(void *a1, int a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10176B10C(v4);
  }

  sub_1005DCE8C(a1, a2);
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    if (*(a1[16] + 8) != *a1[16])
    {
      v6 = a1[26];
      if (v6)
      {
        if ((byte_101FBA210 & 1) == 0)
        {
          byte_101FBA210 = 1;
          v7 = v6[3];
          v8 = v6 + 4;
          if (v7 != v6 + 4)
          {
            do
            {
              v9 = v7 + 4;
              v25 = 0;
              if (*(v7 + 55) < 0)
              {
                sub_100005F2C(__dst, v7[4], v7[5]);
              }

              else
              {
                *__dst = *v9;
                v24 = v7[6];
              }

              if (SHIBYTE(v24) < 0)
              {
                sub_100005F2C(v27, __dst[0], __dst[1]);
              }

              else
              {
                *v27 = *__dst;
                v28 = v24;
              }

              v26 = 0;
              if (SHIBYTE(v28) < 0)
              {
                sub_100005F2C(__p, v27[0], v27[1]);
              }

              else
              {
                *__p = *v27;
                *&__p[16] = v28;
              }

              theString2 = 0;
              if (ctu::cf::convert_copy())
              {
                v10 = v26;
                v26 = theString2;
                v30 = v10;
                sub_100005978(&v30);
              }

              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              v25 = v26;
              v26 = 0;
              sub_100005978(&v26);
              if (SHIBYTE(v28) < 0)
              {
                operator delete(v27[0]);
              }

              if (SHIBYTE(v24) < 0)
              {
                operator delete(__dst[0]);
              }

              if (!sub_100308D48(a1, v25) && !sub_100308CD0(a1, v25))
              {
                v11 = a1[5];
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(v7 + 55) < 0)
                  {
                    v9 = *v9;
                  }

                  *__p = 136315650;
                  *&__p[4] = "";
                  *&__p[12] = 2080;
                  *&__p[14] = "";
                  *&__p[22] = 2080;
                  v32 = v9;
                  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving orphan device record for %s", __p, 0x20u);
                }

                sub_1005D414C(a1, v25, __p);
                sub_1005D6258(a1, *__p, 1, 1);
                sub_100005978(__p);
                sub_1005D4280(a1, v25, __p);
                sub_1005D6258(a1, *__p, 1, 1);
                sub_100005978(__p);
              }

              result = sub_100005978(&v25);
              v12 = v7[1];
              if (v12)
              {
                do
                {
                  v13 = v12;
                  v12 = *v12;
                }

                while (v12);
              }

              else
              {
                do
                {
                  v13 = v7[2];
                  v14 = *v13 == v7;
                  v7 = v13;
                }

                while (!v14);
              }

              v7 = v13;
            }

            while (v13 != v8);
            v6 = a1[26];
          }

          v15 = v6[18];
          v16 = (v6 + 19);
          if (v15 != (v6 + 19))
          {
            do
            {
              theString2 = 0;
              sub_10005C7A4(&cf, *(v15 + 7));
              v27[0] = cf;
              if (cf)
              {
                CFRetain(cf);
                v30 = 0;
                *__p = v27[0];
                if (v27[0])
                {
                  CFRetain(v27[0]);
                  if (*__p)
                  {
                    sub_100222570(&v30, __p);
                  }
                }
              }

              else
              {
                v30 = 0;
                *__p = 0;
              }

              sub_100005978(__p);
              theString2 = v30;
              v30 = 0;
              sub_100005978(&v30);
              sub_100005978(v27);
              sub_100005978(&cf);
              v17 = sub_1005D14F8(a1);
              if (CFStringCompare(v17, theString2, 0) && !sub_100308D48(a1, theString2))
              {
                v18 = a1[5];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = v15 + 2;
                  if (*(v15 + 55) < 0)
                  {
                    v19 = *(v15 + 4);
                  }

                  *__p = 136315650;
                  *&__p[4] = "";
                  *&__p[12] = 2080;
                  *&__p[14] = "";
                  *&__p[22] = 2080;
                  v32 = v19;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving abandoned account record for %s", __p, 0x20u);
                }

                sub_1005D550C(a1, 1u, 0, 0, v15 + 2, 1, 0);
                sub_1005D550C(a1, 0, 0, 0, v15 + 2, 1, 0);
              }

              result = sub_100005978(&theString2);
              v20 = *(v15 + 1);
              if (v20)
              {
                do
                {
                  v21 = v20;
                  v20 = *v20;
                }

                while (v20);
              }

              else
              {
                do
                {
                  v21 = *(v15 + 2);
                  v14 = *v21 == v15;
                  v15 = v21;
                }

                while (!v14);
              }

              v15 = v21;
            }

            while (v21 != v16);
          }
        }
      }
    }
  }

  return result;
}

void sub_10030A408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a33);
  sub_100005978(&a20);
  _Unwind_Resume(a1);
}

void sub_10030A534(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10030A608);
  __cxa_rethrow();
}

void sub_10030A574(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10030A5C8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030A608(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10030A644(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10030A660(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_10030A670(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_10030A6F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10030A72C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10030A75C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030A80C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E40650;
  a2[1] = v2;
  return result;
}

void sub_10030A838(uint64_t a1, uint64_t *a2)
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_10030A904(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030A9C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E406D0;
  a2[1] = v2;
  return result;
}

void sub_10030A9EC(uint64_t a1, uint64_t *a2)
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_10030AAB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10030ABCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v10)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v10)
  {
    goto LABEL_3;
  }

  sub_100004A34(v10);
  if (v11)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

uint64_t DataWirelessTechnologyListManager::DataWirelessTechnologyListManager(uint64_t a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "DATA.WTLM");
  sub_1001303E4((a1 + 8), a3, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101E40750;
  v6 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_10030ACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  DataWirelessTechnologyListManagerInterface::~DataWirelessTechnologyListManagerInterface(v9);
  _Unwind_Resume(a1);
}

void DataWirelessTechnologyListManager::~DataWirelessTechnologyListManager(DataWirelessTechnologyListManager *this)
{
  *this = off_101E40750;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10006DCAC(this + 96, *(this + 13));
  sub_10006DCAC(this + 72, *(this + 10));
  v3 = *(this + 7);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);

  DataWirelessTechnologyListManagerInterface::~DataWirelessTechnologyListManagerInterface(this);
}

{
  DataWirelessTechnologyListManager::~DataWirelessTechnologyListManager(this);

  operator delete();
}

void DataWirelessTechnologyListManager::activateController_sync(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v5 = *(a1 + 128);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 120);
      if (v11)
      {
        v12 = *a3;
        v13 = *a4;
        v14 = v12;
        (*(*v11 + 16))(v11, a2, &v14, &v13);
      }

      sub_100004A34(v10);
    }
  }
}

void DataWirelessTechnologyListManager::deactivateController_sync(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v5 = *(a1 + 128);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 120);
      if (v11)
      {
        v12 = *a3;
        v13 = *a4;
        v14 = v12;
        (*(*v11 + 24))(v11, a2, &v14, &v13);
      }

      sub_100004A34(v10);
    }
  }
}

void DataWirelessTechnologyListManager::deactivate_sync(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 64);
  v4 = *a2 & v3;
  v5 = *a3 & v3;
  v18 = v5;
  v19 = v4;
  if (v4 | v5)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      WirelessTechnologyList::asString(v16, &v19);
      v8 = v17;
      v9 = v16[0];
      WirelessTechnologyList::asString(__p, &v18);
      v10 = v16;
      if (v8 < 0)
      {
        v10 = v9;
      }

      if (v15 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315650;
      v21 = "deactivate_sync";
      v22 = 2080;
      v23 = v10;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager: to remove %s; to remove %s", buf, 0x20u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      v5 = v18;
      v4 = v19;
    }

    if (v5)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    if (v4)
    {
      v13 = v12;
    }

    else
    {
      v13 = 2;
    }

    *buf = v4;
    LODWORD(v16[0]) = v5;
    DataWirelessTechnologyListManager::deactivateController_sync(a1, v13, buf, v16);
    if (v19)
    {
      *buf = v19;
      DataWirelessTechnologyListManager::removeFromActiveTechnologyMask(a1, 1, buf);
    }

    if (v18)
    {
      *buf = v18;
      DataWirelessTechnologyListManager::removeFromActiveTechnologyMask(a1, 2, buf);
    }
  }
}

void sub_10030B108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DataWirelessTechnologyListManager::removeFromActiveTechnologyMask(uint64_t *result, int a2, _DWORD *a3)
{
  v3 = (*a3 & result[8]) == 0;
  v11 = *a3 & result[8];
  v12 = a2;
  if (!v3)
  {
    v5 = result;
    v6 = result[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = subscriber::asString();
      WirelessTechnologyList::asString(__p, &v11);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "removeFromActiveTechnologyMask";
      v14 = 2080;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager(%s): Removing %s", buf, 0x20u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = &v12;
    result = sub_10030C46C((v5 + 9), &v12);
    *(result + 8) &= ~*a3;
  }

  return result;
}

void DataWirelessTechnologyListManager::activate_sync(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 64);
  v4 = *a2 & v3;
  v5 = *a3 & v3;
  v18 = v5;
  v19 = v4;
  if (v4 | v5)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      WirelessTechnologyList::asString(v16, &v19);
      v8 = v17;
      v9 = v16[0];
      WirelessTechnologyList::asString(__p, &v18);
      v10 = v16;
      if (v8 < 0)
      {
        v10 = v9;
      }

      if (v15 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315650;
      v21 = "activate_sync";
      v22 = 2080;
      v23 = v10;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager: to add %s; to add %s", buf, 0x20u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      v5 = v18;
      v4 = v19;
    }

    if (v5)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    if (v4)
    {
      v13 = v12;
    }

    else
    {
      v13 = 2;
    }

    *buf = v4;
    LODWORD(v16[0]) = v5;
    DataWirelessTechnologyListManager::activateController_sync(a1, v13, buf, v16);
    if (v19)
    {
      *buf = v19;
      DataWirelessTechnologyListManager::addToActiveTechnologyMask(a1, 1, buf);
    }

    if (v18)
    {
      *buf = v18;
      DataWirelessTechnologyListManager::addToActiveTechnologyMask(a1, 2, buf);
    }
  }
}

void sub_10030B434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DataWirelessTechnologyListManager::addToActiveTechnologyMask(uint64_t *result, int a2, _DWORD *a3)
{
  v3 = (*a3 & result[8]) == 0;
  v11 = *a3 & result[8];
  v12 = a2;
  if (!v3)
  {
    v5 = result;
    v6 = result[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = subscriber::asString();
      WirelessTechnologyList::asString(__p, &v11);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "addToActiveTechnologyMask";
      v14 = 2080;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager(%s): Adding %s", buf, 0x20u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = &v12;
    result = sub_10030C46C((v5 + 9), &v12);
    *(result + 8) |= *a3;
  }

  return result;
}

void DataWirelessTechnologyListManager::triggerSwitch_sync(uint64_t a1, WirelessTechnologyList *a2, WirelessTechnologyList *a3, WirelessTechnologyList *a4, WirelessTechnologyList *a5)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v34;
    WirelessTechnologyList::asString(v34, a2);
    if (v35 < 0)
    {
      v11 = v34[0];
    }

    v12 = v32;
    WirelessTechnologyList::asString(v32, a3);
    if (v33 < 0)
    {
      v12 = v32[0];
    }

    WirelessTechnologyList::asString(v30, a4);
    v13 = v31;
    v14 = v30[0];
    WirelessTechnologyList::asString(__p, a5);
    v15 = v30;
    if (v13 < 0)
    {
      v15 = v14;
    }

    v16 = __p;
    if (v29 < 0)
    {
      v16 = __p[0];
    }

    *buf = 136316162;
    v37 = "triggerSwitch_sync";
    v38 = 2080;
    v39 = v11;
    v40 = 2080;
    v41 = v12;
    v42 = 2080;
    v43 = v15;
    v44 = 2080;
    v45 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager: Switch start: to add %s, to remove %s; to add %s, to remove %s", buf, 0x34u);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }
  }

  *buf = *a3;
  LODWORD(v34[0]) = *a5;
  DataWirelessTechnologyListManager::deactivate_sync(a1, buf, v34);
  *buf = *a2;
  LODWORD(v34[0]) = *a4;
  DataWirelessTechnologyListManager::activate_sync(a1, buf, v34);
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 80);
    v19 = (a1 + 80);
    v18 = v20;
    if (!v20)
    {
      goto LABEL_26;
    }

    v21 = v19;
    do
    {
      if (*(v18 + 28) >= 1)
      {
        v21 = v18;
      }

      v18 = *(v18 + 8 * (*(v18 + 28) < 1));
    }

    while (v18);
    if (v21 != v19 && *(v21 + 7) <= 1)
    {
      v22 = *(v21 + 8);
    }

    else
    {
LABEL_26:
      v22 = 0;
    }

    LODWORD(v30[0]) = v22;
    v23 = v34;
    WirelessTechnologyList::asString(v34, v30);
    if (v35 < 0)
    {
      v23 = v34[0];
    }

    v24 = *v19;
    if (!*v19)
    {
      goto LABEL_36;
    }

    v25 = v19;
    do
    {
      if (*(v24 + 28) >= 2)
      {
        v25 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 28) < 2));
    }

    while (v24);
    if (v25 != v19 && *(v25 + 7) <= 2)
    {
      v26 = *(v25 + 8);
    }

    else
    {
LABEL_36:
      v26 = 0;
    }

    LODWORD(__p[0]) = v26;
    WirelessTechnologyList::asString(v32, __p);
    if (v33 >= 0)
    {
      v27 = v32;
    }

    else
    {
      v27 = v32[0];
    }

    *buf = 136315650;
    v37 = "triggerSwitch_sync";
    v38 = 2080;
    v39 = v23;
    v40 = 2080;
    v41 = v27;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager: Switch end: new value %s / %s", buf, 0x20u);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }
  }
}

void sub_10030B8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataWirelessTechnologyListManager::addTechnology_sync(uint64_t *a1, int a2, _DWORD *a3, uint64_t a4)
{
  v7 = a1;
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v14 = 1;
    *buf = &v14;
    a1 = sub_10030C46C((a1 + 12), &v14);
    v8 = *a3 & ~*(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = capabilities::ct::supportsGemini(a1);
  if ((a2 & 0xFFFFFFFE) == 2 && v9)
  {
    v14 = 2;
    *buf = &v14;
    v10 = *a3 & ~*(sub_10030C46C(v7 + 96, &v14) + 8);
    if (!(v8 | v10))
    {
      return;
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    v10 = 0;
  }

  v14 = 0;
  *buf = v8;
  v12 = 0;
  v13 = v10;
  DataWirelessTechnologyListManager::triggerSwitch_sync(v7, buf, &v14, &v13, &v12);
  v11 = *(v7 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "addTechnology_sync";
    v16 = 2080;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }
}

void DataWirelessTechnologyListManager::removeTechnology_sync(uint64_t *a1, int a2, _DWORD *a3, uint64_t a4)
{
  v7 = a1;
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v14 = 1;
    *buf = &v14;
    a1 = sub_10030C46C((a1 + 12), &v14);
    v8 = a1[4] & *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = capabilities::ct::supportsGemini(a1);
  if ((a2 & 0xFFFFFFFE) == 2 && v9)
  {
    v14 = 2;
    *buf = &v14;
    v10 = sub_10030C46C(v7 + 96, &v14)[4] & *a3;
    if (!(v8 | v10))
    {
      return;
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    v10 = 0;
  }

  v14 = v8;
  *buf = 0;
  v12 = v10;
  v13 = 0;
  DataWirelessTechnologyListManager::triggerSwitch_sync(v7, buf, &v14, &v13, &v12);
  v11 = *(v7 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "removeTechnology_sync";
    v16 = 2080;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }
}

void DataWirelessTechnologyListManager::handleRadioOn_sync(DataWirelessTechnologyListManager *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WirelessTechnologyListManager: ** Wireless on (exiting airplane mode)", buf, 2u);
  }

  v3 = 2;
  DataWirelessTechnologyListManager::addTechnology_sync(this, 3, &v3, "** Wireless on switch complete");
}

void DataWirelessTechnologyListManager::handleRadioDisabling_sync(DataWirelessTechnologyListManager *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WirelessTechnologyListManager: ** Wireless OFF (entering airplane mode)", buf, 2u);
  }

  v3 = 2;
  DataWirelessTechnologyListManager::removeTechnology_sync(this, 3, &v3, "** Wireless OFF switch complete");
}

void DataWirelessTechnologyListManager::handleBasebandOn_sync(DataWirelessTechnologyListManager *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WirelessTechnologyListManager: ** Kicking Off Controllers", buf, 2u);
  }

  v3 = 1;
  DataWirelessTechnologyListManager::addTechnology_sync(this, 3, &v3, "** Kick Off Complete");
}

void DataWirelessTechnologyListManager::handleBasebandOff_sync(DataWirelessTechnologyListManager *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ** Tear Down Controllers", buf, 2u);
  }

  v3 = 237;
  DataWirelessTechnologyListManager::removeTechnology_sync(this, 3, &v3, "** Tear Down Complete");
}

void DataWirelessTechnologyListManager::handleWirelessTechnologyChanged_sync(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3 + 1;
  v5 = *a3;
  if (*a3 != a3 + 1)
  {
    v29 = 0;
    v30 = 0;
    v6 = (a2 + 8);
    while (1)
    {
      v7 = v5 + 7;
      v8 = *v6;
      if (*v6)
      {
        v9 = *v7;
        v10 = v6;
        do
        {
          if (*(v8 + 28) >= v9)
          {
            v10 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < v9));
        }

        while (v8);
        if (v10 != v6 && v9 >= *(v10 + 7) && *(v10 + 8) == *(v5 + 8))
        {
          goto LABEL_27;
        }
      }

      v34 = 0;
      v34 = asWirelessTechnology();
      *buf = v5 + 28;
      v11 = *(sub_10030C46C(a1 + 96, v5 + 7) + 8);
      v12 = v34;
      v13 = *(a1 + 40);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      v15 = v12;
      if (v14)
      {
        v16 = subscriber::asString();
        WirelessTechnologyList::asString(__p, &v34);
        v17 = __p;
        if (v33 < 0)
        {
          v17 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "handleWirelessTechnologyChanged_sync";
        v36 = 2080;
        v37 = v16;
        v38 = 2080;
        v39 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager(%s): with %s", buf, 0x20u);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        v15 = v34;
      }

      if ((v15 & 0xEC) != 0)
      {
        v18 = v12 | v11 & 3;
        if (*v7 == 2)
        {
          *buf = v5 + 28;
          HIDWORD(v30) = v18 & ~*(sub_10030C46C(a1 + 96, v5 + 7) + 8);
          *buf = v5 + 28;
          HIDWORD(v29) = sub_10030C46C(a1 + 96, v5 + 7)[4] & ~v18;
        }

        else if (*v7 == 1)
        {
          *buf = v5 + 28;
          LODWORD(v30) = v18 & ~*(sub_10030C46C(a1 + 96, v5 + 7) + 8);
          *buf = v5 + 28;
          LODWORD(v29) = sub_10030C46C(a1 + 96, v5 + 7)[4] & ~v18;
        }

        else
        {
          v23 = *(a1 + 40);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = subscriber::asString();
            *buf = 136315394;
            *&buf[4] = "handleWirelessTechnologyChanged_sync";
            v36 = 2080;
            v37 = v24;
            v20 = v23;
            v21 = "#E %s: WirelessTechnologyListManager: wrong simSlot: %s";
            v22 = 22;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v19 = *(a1 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "handleWirelessTechnologyChanged_sync";
          v20 = v19;
          v21 = "#I %s: WirelessTechnologyListManager: Ignoring loss of service";
          v22 = 12;
LABEL_26:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
        }
      }

LABEL_27:
      v25 = v5[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v5[2];
          v27 = *v26 == v5;
          v5 = v26;
        }

        while (!v27);
      }

      v5 = v26;
      if (v26 == v4)
      {
        goto LABEL_35;
      }
    }
  }

  v29 = 0;
  v30 = 0;
LABEL_35:
  if (v30 || v29 || __PAIR64__(HIDWORD(v29), 0) != HIDWORD(v30))
  {
    v34 = HIDWORD(v30);
    *buf = v30;
    v31 = HIDWORD(v29);
    LODWORD(__p[0]) = v29;
    DataWirelessTechnologyListManager::triggerSwitch_sync(a1, buf, __p, &v34, &v31);
  }

  v28 = *(a1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "handleWirelessTechnologyChanged_sync";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager: Technology change complete", buf, 0xCu);
  }
}

void sub_10030C2B4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  *(a1 + 120) = v3;
  *(a1 + 128) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_10030C36C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10030C440);
  __cxa_rethrow();
}

void sub_10030C3AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10030C400(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030C440(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_10030C46C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10030C5B0(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  DataiRatController::create();
}

void sub_10030C64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (a9)
  {
    sub_10176B19C(a9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C674(uint64_t a1, NSObject **a2)
{
  v3 = *a2;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  sub_100B287FC(a1 + 8, &object);
}

void sub_10030C6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C6EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002C44D8();
}

void sub_10030C73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C754(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a2)
  {
    dispatch_retain(*a2);
  }

  DataWirelessTechnologyListManager::create();
}

void sub_10030C7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C7FC(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 16);
  v3[2] = *(a1 + 8);
  v3[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_100417074(v3);
}

void sub_10030C87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C8A0(uint64_t a1, NSObject **a2)
{
  Registry::getCommandDriversFactory(&v6, *(a1 + 8));
  v3 = v6;
  v4 = *a2;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  (*(*v3 + 112))(v3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10030C93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C960(uint64_t a1@<X0>, NSObject **a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v24 = 0;
  v25 = 0;
  (*(**a3 + 16))(&v24);
  v8 = v24;
  if (v24)
  {
    v9 = *a2;
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
      v8 = v24;
    }

    v19 = v8;
    v20 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    BBDataDriverInterface::createDataDriverInstance(&v19, &v22);
    v11 = v22;
    v10 = v23;
    v22 = 0;
    v23 = 0;
    *a4 = v11;
    a4[1] = v10;
    if (v20)
    {
      sub_100004A34(v20);
    }

    if (object)
    {
      dispatch_release(object);
    }

    v17 = v11;
    v18 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    v16 = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    v13 = a3[1];
    v14 = *a3;
    v15 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    BBDataDriverInterface::initDataDriverInstance(a1 + 8, &v17, &v16, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }

    if (v16)
    {
      dispatch_release(v16);
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  if (v25)
  {
    sub_100004A34(v25);
  }
}

void sub_10030CAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, dispatch_object_t object, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, dispatch_object_t a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  v19 = *(v17 - 56);
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030CB44(uint64_t a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v4 = ServiceMap;
  if (v5 < 0)
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
  *&v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_10:
    v13 = 0uLL;
    sub_100717B78(&v13);
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_10030CCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030CCE8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = 0;
  (*(*a1 + 72))(&v3);
  if (v3)
  {
    operator new();
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_10030CF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v18);
  v21 = *(v19 - 56);
  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_10030CFCC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10030D0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030D148@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::integratedPDPStatisticsInterval(a1);
  if (result >= 1)
  {
    sub_1003376A4();
  }

  *a2 = 0;
  return result;
}

void sub_10030D194(capabilities::ct *a1@<X1>, NSObject **a2@<X3>, void *a3@<X8>)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_1005AA8EC(a1, &object, a3);
}

void sub_10030D204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030D21C(uint64_t a1, uint64_t a2, uint64_t a3, dispatch_object_t *a4)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a4)
  {
    dispatch_retain(*a4);
  }

  sub_10030D2FC(&v5);
}

void sub_10030D2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030D2FC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10030D3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (v12)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_10030D414(DataServiceFactoryInterface *this)
{
  *this = off_101E408B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DataServiceFactoryInterface::~DataServiceFactoryInterface(this);
}

void sub_10030D470(DataServiceFactoryInterface *this)
{
  *this = off_101E408B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DataServiceFactoryInterface::~DataServiceFactoryInterface(this);

  operator delete();
}

void sub_10030D560(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[9], v1, sub_10030D634);
  __cxa_rethrow();
}

void sub_10030D5A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10030D5F4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030D634(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10030D6E0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_10030D7B4);
  __cxa_rethrow();
}

void sub_10030D720(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10030D774(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030D7B4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10030D800(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E40A08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const char *sub_10030D87C(unsigned int a1)
{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_101E40AD8[a1];
  }
}

const char *sub_10030D8A0(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_101E40B10[a1];
  }
}

CFDictionaryRef *sub_10030D8CC(CFDictionaryRef *a1, const __CFDictionary *a2)
{
  *a1 = 0;
  if (a2)
  {
    *a1 = CFDictionaryCreateCopy(kCFAllocatorDefault, a2);
  }

  return a1;
}

CFDictionaryRef *sub_10030D90C(CFDictionaryRef *a1, os_log_t *a2, const __CFString *a3)
{
  *a1 = 0;
  if (a3)
  {
    v4 = sub_10030D96C(a2, a3);
    if (v4)
    {
      v5 = v4;
      *a1 = CFDictionaryCreateCopy(kCFAllocatorDefault, v4);
      CFRelease(v5);
    }
  }

  return a1;
}

__CFDictionary *sub_10030D96C(os_log_t *a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, a2, @"_");
  theArray = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) >= 1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    v6 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v7 = CFGetTypeID(ValueAtIndex);
      if (v7 == CFStringGetTypeID())
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    CFDictionaryAddValue(Mutable, qword_101FCB6F0, v8);
    v21 = a1;
    v10 = qword_101FCB6C8;
    v11 = qword_101FCB6D0;
    range = qword_101FCB6D8;
    v12 = 2;
    v22 = qword_101FCB6E8;
    while (1)
    {
      if (v12 > CFArrayGetCount(theArray))
      {
        goto LABEL_9;
      }

      v13 = CFArrayGetValueAtIndex(theArray, v12 - 1);
      v14 = v13;
      if (v13)
      {
        v15 = CFGetTypeID(v13);
        if (v15 == CFStringGetTypeID())
        {
          if (sub_100357D88(v14, @"GID1-"))
          {
            *buf = 0;
            v26.length = CFStringGetLength(v14) - v10;
            v26.location = v10;
            v16 = CFStringCreateWithSubstring(kCFAllocatorDefault, v14, v26);
            *buf = v16;
            if (v16)
            {
              CFDictionaryAddValue(Mutable, @"GID1", v16);
            }

LABEL_26:
            sub_100005978(buf);
            goto LABEL_27;
          }

          if (sub_100357D88(v14, @"GID2-"))
          {
            *buf = 0;
            v27.length = CFStringGetLength(v14) - v11;
            v27.location = v11;
            v17 = CFStringCreateWithSubstring(kCFAllocatorDefault, v14, v27);
            *buf = v17;
            if (v17)
            {
              CFDictionaryAddValue(Mutable, @"GID2", v17);
            }

            goto LABEL_26;
          }

          if (sub_100357D88(v14, @"ID-"))
          {
            *buf = 0;
            Length = CFStringGetLength(v14);
            v28.location = range;
            v28.length = Length - range;
            v19 = CFStringCreateWithSubstring(kCFAllocatorDefault, v14, v28);
            *buf = v19;
            if (v19)
            {
              CFDictionaryAddValue(Mutable, v22, v19);
            }

            goto LABEL_26;
          }

          v20 = *v21;
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N Unable to parse carrier bundle name", buf, 2u);
          }
        }
      }

LABEL_27:
      ++v12;
    }
  }

  Mutable = 0;
LABEL_9:
  sub_100010250(&theArray);
  return Mutable;
}

void sub_10030DC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  sub_100005978(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

const void **sub_10030DCA8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

double sub_10030DCE4(CFDictionaryRef *a1, CFDictionaryRef *a2)
{
  v3 = *a1;
  v4 = 0.0;
  if (!v3)
  {
    return v4;
  }

  v6 = qword_101FCB6F0;
  if (!CFDictionaryContainsKey(v3, qword_101FCB6F0) || !CFDictionaryContainsKey(*a2, v6))
  {
    return v4;
  }

  memset(&__str, 0, sizeof(__str));
  CFDictionaryGetValue(*a2, v6);
  memset(&__dst, 0, sizeof(__dst));
  ctu::cf::assign();
  memset(&__str, 0, sizeof(__str));
  CFDictionaryGetValue(*a1, v6);
  memset(&__dst, 0, sizeof(__dst));
  ctu::cf::assign();
  *__n = 0uLL;
  v64 = 0;
  for (i = &__str; i != &__str; i = (i + 1))
  {
    i->__r_.__value_.__s.__data_[0] = __tolower(i->__r_.__value_.__s.__data_[0]);
  }

  if (v64 >= 0)
  {
    v8 = (__n + HIBYTE(v64));
  }

  else
  {
    v8 = (__n[0] + __n[1]);
  }

  if (v64 >= 0)
  {
    v9 = __n;
  }

  else
  {
    v9 = __n[0];
  }

  while (v9 != v8)
  {
    *v9 = __tolower(*v9);
    v9 = (v9 + 1);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v4 = 0.0;
  if (!size)
  {
    goto LABEL_41;
  }

  v11 = SHIBYTE(v64);
  if ((SHIBYTE(v64) & 0x8000000000000000) == 0)
  {
    if (!HIBYTE(v64))
    {
      v12 = 2;
      goto LABEL_56;
    }

LABEL_22:
    std::string::basic_string(&__dst, &__str, 0, v11, &v62);
    v13 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __dst.__r_.__value_.__l.__size_;
    }

    v15 = HIBYTE(v64);
    if (v64 < 0)
    {
      v15 = __n[1];
    }

    if (v14 == v15)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if (v64 >= 0)
      {
        v17 = __n;
      }

      else
      {
        v17 = __n[0];
      }

      v18 = memcmp(p_dst, v17, v14) == 0;
      if ((v13 & 0x80000000) == 0)
      {
LABEL_38:
        if (v18)
        {
          memset(&__dst, 0, sizeof(__dst));
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = __str;
          }

          if (v64 >= 0)
          {
            v19 = HIBYTE(v64);
          }

          else
          {
            v19 = __n[1];
          }

          std::string::replace(&__dst, 0, v19, "", 0);
          v20 = __dst.__r_.__value_.__l.__size_;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          v21 = v20;
          v22 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = __str.__r_.__value_.__l.__size_;
          }

          v23 = (1.0 - v21 / v22) * 9.0;
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v12 = 0;
          v4 = v23 + 50.0;
LABEL_54:
          if ((SHIBYTE(v64) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

LABEL_41:
        v12 = 2;
        goto LABEL_54;
      }
    }

    else
    {
      v18 = 0;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_38;
  }

  v11 = __n[1];
  if (__n[1])
  {
    goto LABEL_22;
  }

  v12 = 2;
LABEL_55:
  operator delete(__n[0]);
LABEL_56:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v12)
    {
      return v4;
    }
  }

  else if (v12)
  {
    return v4;
  }

  v24 = *a1;
  if (!*a1)
  {
    return 0.0;
  }

  v25 = *a2;
  if (!*a2)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(*a1, @"GID1");
  v27 = Value;
  if (Value)
  {
    v28 = CFGetTypeID(Value);
    if (v28 != CFStringGetTypeID())
    {
      v27 = 0;
    }
  }

  v29 = CFDictionaryGetValue(v24, @"GID2");
  v30 = v29;
  if (v29)
  {
    v31 = CFGetTypeID(v29);
    if (v31 != CFStringGetTypeID())
    {
      v30 = 0;
    }
  }

  v32 = CFDictionaryGetValue(v25, @"GID1");
  v33 = v32;
  if (v32)
  {
    v34 = CFGetTypeID(v32);
    if (v34 != CFStringGetTypeID())
    {
      v33 = 0;
    }
  }

  v35 = CFDictionaryGetValue(v25, @"GID2");
  v36 = v35;
  if (v35)
  {
    v37 = CFGetTypeID(v35);
    if (v37 != CFStringGetTypeID())
    {
      v36 = 0;
    }
  }

  if (!v27 && !v33 && !v30 && !v36)
  {
    goto LABEL_78;
  }

  if (v27)
  {
    v41 = v33 == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = !v41;
  if (v41)
  {
    if (v27)
    {
      return 0.0;
    }

    v47 = 0;
    v48 = 0.0;
  }

  else
  {
    if (!sub_100357D88(v33, v27))
    {
      return 0.0;
    }

    memset(&__dst, 0, sizeof(__dst));
    ctu::cf::assign();
    v43 = __dst.__r_.__value_.__l.__size_;
    __p = __dst.__r_.__value_.__r.__words[0];
    v67[0] = __dst.__r_.__value_.__r.__words[2];
    *(v67 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
    v44 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    memset(&__dst, 0, sizeof(__dst));
    ctu::cf::assign();
    v45 = *&__dst.__r_.__value_.__l.__data_;
    v66[0] = __dst.__r_.__value_.__r.__words[2];
    *(v66 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
    v46 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if (v44 < 0)
    {
      sub_100005F2C(&__str, __p, v43);
    }

    else
    {
      __str.__r_.__value_.__r.__words[0] = __p;
      __str.__r_.__value_.__l.__size_ = v43;
      LODWORD(__str.__r_.__value_.__r.__words[2]) = v67[0];
      *(&__str.__r_.__value_.__r.__words[2] + 3) = *(v67 + 3);
      *(&__str.__r_.__value_.__s + 23) = v44;
    }

    if (v46 < 0)
    {
      sub_100005F2C(__n, v45, *(&v45 + 1));
    }

    else
    {
      *__n = v45;
      LODWORD(v64) = v66[0];
      *(&v64 + 3) = *(v66 + 3);
      HIBYTE(v64) = v46;
    }

    v50 = sub_10030E574(&__str, __n);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__n[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 < 0)
    {
      operator delete(__p);
    }

    v48 = v50 + 0.0;
    v47 = 2;
  }

  if (v30 && v36)
  {
    if (sub_100357D88(v36, v30))
    {
      if (v42)
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      memset(&__dst, 0, sizeof(__dst));
      ctu::cf::assign();
      v51 = *&__dst.__r_.__value_.__l.__data_;
      v67[0] = __dst.__r_.__value_.__r.__words[2];
      *(v67 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
      v52 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      memset(&__dst, 0, sizeof(__dst));
      ctu::cf::assign();
      v53 = *&__dst.__r_.__value_.__l.__data_;
      v66[0] = __dst.__r_.__value_.__r.__words[2];
      *(v66 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
      v54 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if (v52 < 0)
      {
        sub_100005F2C(&v62, v51, *(&v51 + 1));
      }

      else
      {
        *&v62.__r_.__value_.__l.__data_ = v51;
        LODWORD(v62.__r_.__value_.__r.__words[2]) = v67[0];
        *(&v62.__r_.__value_.__r.__words[2] + 3) = *(v67 + 3);
        *(&v62.__r_.__value_.__s + 23) = v52;
      }

      if (v54 < 0)
      {
        sub_100005F2C(&v59, v53, *(&v53 + 1));
      }

      else
      {
        v59 = v53;
        *v60 = v66[0];
        *&v60[3] = *(v66 + 3);
        v61 = v54;
      }

      v55 = sub_10030E574(&v62, &v59);
      if (v61 < 0)
      {
        operator delete(v59);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
        if ((v54 & 0x80000000) == 0)
        {
LABEL_133:
          if ((v52 & 0x80000000) == 0)
          {
LABEL_134:
            v48 = v48 + v55;
            goto LABEL_135;
          }

LABEL_144:
          operator delete(v51);
          goto LABEL_134;
        }
      }

      else if ((v54 & 0x80000000) == 0)
      {
        goto LABEL_133;
      }

      operator delete(v53);
      if ((v52 & 0x80000000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_144;
    }

    return 0.0;
  }

  if (v30)
  {
    return 0.0;
  }

LABEL_135:
  if (v47 == 2)
  {
    v56 = 15.0;
  }

  else
  {
    if (v47 != 3)
    {
      goto LABEL_78;
    }

    v56 = 30.0;
  }

  v4 = v4 + v56 + v48;
LABEL_78:
  if (v4 != 0.0)
  {
    v38 = qword_101FCB6E8;
    v39 = CFDictionaryGetValue(*a1, qword_101FCB6E8);
    v40 = CFDictionaryGetValue(*a2, v38);
    if (v39 && v40)
    {
      if (sub_100357D88(v40, v39))
      {
        return v4 + 10.0;
      }

      else
      {
        return 0.0;
      }
    }

    else
    {
      if (v40)
      {
        v49 = 1;
      }

      else
      {
        v49 = v39 == 0;
      }

      if (!v49)
      {
        return 0.0;
      }
    }
  }

  return v4;
}

void sub_10030E42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v47 < 0)
  {
    operator delete(v44);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  _Unwind_Resume(exception_object);
}

double sub_10030E574(std::string *__str, uint64_t a2)
{
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v6 = __str->__r_.__value_.__r.__words[0];
    v5 = (__str->__r_.__value_.__r.__words[0] + __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = (__str + v4);
    v6 = __str;
  }

  while (v6 != v5)
  {
    v6->__r_.__value_.__s.__data_[0] = __tolower(v6->__r_.__value_.__s.__data_[0]);
    v6 = (v6 + 1);
  }

  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    v9 = *a2;
    v8 = (*a2 + *(a2 + 8));
  }

  else
  {
    v8 = (a2 + v7);
    v9 = a2;
  }

  while (v9 != v8)
  {
    *v9 = __tolower(*v9);
    ++v9;
  }

  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v11 = 0.0;
  if (size)
  {
    v12 = *(a2 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(a2 + 8);
      if (!v12)
      {
        return v11;
      }
    }

    else if (!*(a2 + 23))
    {
      return v11;
    }

    std::string::basic_string(&__p, __str, 0, v12, &v27);
    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    v15 = *(a2 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (v14 == v15)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v16 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v19 = memcmp(p_p, v18, v14) == 0;
      if (v13 < 0)
      {
LABEL_35:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v19)
        {
          return v11;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v19 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_35;
      }
    }

    if (!v19)
    {
      return v11;
    }

LABEL_36:
    memset(&__p, 0, sizeof(__p));
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      __p = *__str;
    }

    v20 = *(a2 + 23);
    if ((v20 & 0x8000000000000000) != 0)
    {
      v20 = *(a2 + 8);
    }

    std::string::replace(&__p, 0, v20, "", 0);
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = __p.__r_.__value_.__l.__size_;
    }

    v22 = v21;
    v23 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x8000000000000000) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    v24 = 1.0 - v22 / v23;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v24 * 4.0;
  }

  return v11;
}

void sub_10030E774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030E790(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_100A5C398(&v2, &v1, "kCarrierSettingsGetProperty", sub_10030E888, 1);
}

void sub_10030E888(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, const void **a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v38 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v38);
  if (!v14)
  {
    std::mutex::unlock(v9);
    return;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    std::mutex::unlock(v9);
    if (!v16)
    {
      return;
    }

LABEL_10:
    v38 = a4;
    v39 = "kCarrierSettingsKey";
    object = 0;
    sub_100006354(&v38, &object);
    if (xpc_get_type(object) == &_xpc_type_null)
    {
      goto LABEL_38;
    }

    v37 = 0;
    v38 = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v37, &v38);
    if (!v37)
    {
LABEL_37:
      sub_100005978(&v37);
LABEL_38:
      xpc_release(object);
      if (!v15)
      {
        return;
      }

      goto LABEL_39;
    }

    v36 = 0;
    if (!sub_10017A428(a4))
    {
      (*(*v16 + 64))(&v35, v16, v37);
      v28 = v35;
      v38 = v36;
      v35 = 0;
      v36 = v28;
      sub_10000A1EC(&v38);
      sub_10000A1EC(&v35);
LABEL_29:
      v31 = xpc_null_create();
      if (v36)
      {
        v32 = _CFXPCCreateXPCObjectFromCFObject();
        if (!v32)
        {
          v32 = xpc_null_create();
        }

        xpc_release(v31);
        v31 = v32;
      }

      v33 = v31;
      if (v31)
      {
        xpc_retain(v31);
      }

      else
      {
        v33 = xpc_null_create();
      }

      v38 = *a5;
      v39 = "kCarrierSettingsKey";
      sub_10000F688(&v38, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
      xpc_release(v31);
      sub_10000A1EC(&v36);
      goto LABEL_37;
    }

    v17 = Registry::getServiceMap(*a1);
    v18 = v17;
    if ((v19 & 0x8000000000000000) != 0)
    {
      v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(v17);
    v38 = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, &v38);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v18);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v27 = 0;
        if (!v25)
        {
          goto LABEL_26;
        }

LABEL_23:
        if (capabilities::ct::supportsGemini(v26) && xpc_dictionary_get_value(*a4, "kUsePreferredDataSIM"))
        {
          v29 = (*(*v25 + 792))(v25);
          (*(*v16 + 96))(&v35, v16, v29, 1, v37, 0, 0);
          goto LABEL_27;
        }

LABEL_26:
        (*(*v16 + 32))(&v35, v16, kCarrierBundleId, v37, 0, 0);
LABEL_27:
        v30 = v35;
        v38 = v36;
        v35 = 0;
        v36 = v30;
        sub_10000A1EC(&v38);
        sub_10000A1EC(&v35);
        if ((v27 & 1) == 0)
        {
          sub_100004A34(v24);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v27 = 1;
    if (!v25)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  if (v16)
  {
    goto LABEL_10;
  }

LABEL_39:
  sub_100004A34(v15);
}

void sub_10030EC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  sub_10000A1EC(&a12);
  sub_100005978(&a13);
  xpc_release(object);
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(a1);
}

void sub_10030ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  HIBYTE(v7[2]) = 21;
  strcpy(v7, "/cc/props/sims_in_use");
  v5 = *(a5 + 8);
  v6 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::RestModule::getPropertyOnce();
  if (SHIBYTE(v7[2]) < 0)
  {
    operator delete(v7[0]);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10030EDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (*(v15 - 25) < 0)
  {
    operator delete(*(v15 - 48));
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10030EE20(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = 0;
  v50 = 0;
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
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
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
      v17 = 0;
      if (!v15)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v17 = 1;
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_10:
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(v54, 0, sizeof(v54));
  *__p = 0u;
  v53 = 0u;
  *buf = 0u;
  capabilities::ct::defaultVinylSlotID(v16);
  v18 = VinylSlotIdFromCapabilities();
  (*(*v15 + 272))(buf, v15, v18);
  if (v63 == 1)
  {
    LOBYTE(v15) = BYTE1(v55) & BYTE2(v55);
    sub_100E3A5D4(&v54[14] + 8);
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  if (LOBYTE(v54[14]) == 1)
  {
    sub_100E3A5D4(v54 + 8);
  }

  if (LOBYTE(v54[0]) == 1 && SHIBYTE(v53) < 0)
  {
    operator delete(__p[1]);
  }

LABEL_18:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (v15)
  {
    v19 = *sub_10030F8A4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Vinyl active, not providing any info to get bundle info", buf, 2u);
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    ctu::cf_to_xpc(&v46, Mutable, v20);
    *buf = *a5;
    *&buf[8] = "kCarrierSettingsBundleInfo";
    sub_10000F688(buf, &v46, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v46);
    v46 = 0;
    sub_1000279DC(&Mutable);
    goto LABEL_51;
  }

  v21 = Registry::getServiceMap(*a1);
  v22 = v21;
  if (v23 < 0)
  {
    v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v23 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  std::mutex::lock(v21);
  *buf = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, buf);
  if (!v27)
  {
    v29 = 0;
LABEL_32:
    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    if (!v29)
    {
      goto LABEL_49;
    }

LABEL_33:
    v31 = a5[1];
    v44 = *a5;
    v45 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v29 + 256))(v29, &v44);
    if (v45)
    {
      sub_100004A34(v45);
    }

    v32 = Registry::getServiceMap(*a1);
    v33 = v32;
    if (v34 < 0)
    {
      v35 = (v34 & 0x7FFFFFFFFFFFFFFFLL);
      v36 = 5381;
      do
      {
        v34 = v36;
        v37 = *v35++;
        v36 = (33 * v36) ^ v37;
      }

      while (v37);
    }

    std::mutex::lock(v32);
    *buf = v34;
    v38 = sub_100009510(&v33[1].__m_.__sig, buf);
    if (v38)
    {
      v40 = v38[3];
      v39 = v38[4];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v33);
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v39);
        v41 = 0;
LABEL_45:
        v42 = (*(*v40 + 32))(v40);
        if ((v41 & 1) == 0)
        {
          sub_100004A34(v39);
        }

        if ((v42 & 1) == 0)
        {
          (*(*v29 + 344))(v29);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v40 = 0;
    }

    std::mutex::unlock(v33);
    v39 = 0;
    v41 = 1;
    goto LABEL_45;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
    goto LABEL_32;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
  if (v29)
  {
    goto LABEL_33;
  }

LABEL_49:
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

LABEL_51:
  sub_1000296E0(&v49);
  return sub_1000296E0(&v50);
}

void sub_10030F2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, const void *);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(v7);
  }

  sub_1000296E0(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

void sub_10030F39C(uint64_t a1, xpc_object_t *a2)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_10010A62C(&v32, a2);
  v3 = v32;
  if (v32 != v33)
  {
    while (*v3 != 1)
    {
      v3 += 42;
      if (v3 == v33)
      {
        goto LABEL_8;
      }
    }
  }

  if (v3 == v33)
  {
LABEL_8:
    v6 = *sub_10030F8A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Missing %s in sim info", buf, 0xCu);
    }

    v30 = xpc_BOOL_create(0);
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    *buf = *(a1 + 32);
    *&buf[8] = "kCarrierSettingsIsPhoneNumberCredentialValid";
    sub_10000F688(buf, &v30, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v30);
    v30 = 0;
    goto LABEL_41;
  }

  isSimPresent = subscriber::isSimPresent();
  if (isSimPresent)
  {
    isSimReady = subscriber::isSimReady();
  }

  else
  {
    isSimReady = 1;
  }

  v8 = *sub_10030F8A4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = subscriber::asString();
    v10 = CSIBOOLAsString(isSimPresent);
    v11 = CSIBOOLAsString(isSimReady);
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    v36 = 2080;
    v37 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I SIM state: %s, present: %s, valid: %s", buf, 0x20u);
  }

  ServiceMap = Registry::getServiceMap(**(a1 + 48));
  v13 = ServiceMap;
  if (v14 < 0)
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
  *buf = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, buf);
  if (!v18)
  {
    v20 = 0;
LABEL_26:
    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
  if (!v20)
  {
LABEL_22:
    v22 = *sub_10030F8A4();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10176B1D4(v22);
    }

    LOBYTE(isSimReady) = 0;
    goto LABEL_36;
  }

LABEL_27:
  if ((*(*v20 + 64))(v20))
  {
    isSimReady &= isSimPresent;
    v23 = *sub_10030F8A4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = CSIBOOLAsString(isSimReady);
      *buf = 136315138;
      *&buf[4] = v24;
      v25 = "#I UIM is required, phone calls allowed = %s";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
    }
  }

  else if ((*(*v20 + 160))(v20))
  {
    v23 = *sub_10030F8A4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = CSIBOOLAsString(isSimReady);
      *buf = 136315138;
      *&buf[4] = v26;
      v25 = "#I UIM is not required, phone calls allowed = %s";
      goto LABEL_35;
    }
  }

  else
  {
    isSimReady &= isSimPresent;
    v23 = *sub_10030F8A4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = CSIBOOLAsString(isSimReady);
      *buf = 136315138;
      *&buf[4] = v27;
      v25 = "#I UIM is not required, not service provisioned, phone calls allowed = %s";
      goto LABEL_35;
    }
  }

LABEL_36:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  v28 = xpc_BOOL_create(isSimReady);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  *buf = *(a1 + 32);
  *&buf[8] = "kCarrierSettingsIsPhoneNumberCredentialValid";
  sub_10000F688(buf, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
LABEL_41:
  *buf = &v32;
  sub_1000B2AF8(buf);
}

void sub_10030F804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  a17 = &a14;
  sub_1000B2AF8(&a17);
  _Unwind_Resume(a1);
}

void *sub_10030F8A4()
{
  if ((atomic_load_explicit(&qword_101FBA220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA220))
  {
    LogGroupName = sGetLogGroupName();
    ctu::OsLogLogger::OsLogLogger(&unk_101FBA218, kCtLoggingSystemName, LogGroupName);
    __cxa_guard_release(&qword_101FBA220);
  }

  return &unk_101FBA218;
}

void *sub_10030F9CC(void *a1)
{
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "abm");
  ctu::OsLogLogger::OsLogLogger(v7, &__p);
  ctu::OsLogLogger::OsLogLogger(v2, v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&__p);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101E40B68;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  a1[4] = dispatch_queue_create("CommCenterAbmClient", v3);
  sub_10000501C(&__p, "CommCenter");
  abm::client::CreateManager();
  if (v6 < 0)
  {
    operator delete(__p.var0);
  }

  return a1;
}

void sub_10030FAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v15 + 4);
  if (v18)
  {
    dispatch_release(v18);
  }

  v19 = *(v15 + 3);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  ctu::OsLogLogger::~OsLogLogger(v16);
  AppleBasebandManagerClientInterface::~AppleBasebandManagerClientInterface(v15);
  _Unwind_Resume(a1);
}

void sub_10030FB4C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOn();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_10030FB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030FBB4(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOff();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_10030FC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030FC1C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  isSupported = abm::trace::isSupported();
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return isSupported;
}

void sub_10030FC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030FCA8(uint64_t a1, char *a2, NSObject **a3, uint64_t a4)
{
  v6 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, a2);
  v12 = _NSConcreteStackBlock;
  v13 = 1174405120;
  v14 = sub_10030FE14;
  v15 = &unk_101E40BA8;
  v7 = *a3;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  sub_1003103C4(v17, a4);
  abm::client::RegisterEventHandler();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_10031045C(v17);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_10030FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object)
{
  sub_10031045C(v22 + 40);
  if (object)
  {
    dispatch_release(object);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(a1);
}

void sub_10030FE14(uint64_t a1, xpc_object_t object, NSObject *a3)
{
  if (object)
  {
    v5 = object;
    xpc_retain(object);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = xpc_null_create();
    if (!a3)
    {
LABEL_4:
      sub_1003103C4(v6, a1 + 40);
      v7 = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        v7 = xpc_null_create();
      }

      objecta = a3;
      if (a3)
      {
        dispatch_retain(a3);
        group = a3;
        dispatch_retain(a3);
        if (group)
        {
          dispatch_group_enter(group);
        }
      }

      else
      {
        group = 0;
      }

      operator new();
    }
  }

  dispatch_retain(a3);
  goto LABEL_4;
}

void sub_10030FFB8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100310004(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  return sub_1003103C4(a1 + 40, a2 + 40);
}

void sub_100310044(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031005C(uint64_t a1)
{
  sub_10031045C(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {

    dispatch_release(v2);
  }
}

BOOL sub_1003100A8(uint64_t a1, char *a2)
{
  v2 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&v5, a2);
  abm::client::PerformCommand();
  v3 = v9;
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v3 == 0;
}

void sub_100310144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100310174(void *a1)
{
  *a1 = off_101E40B68;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  AppleBasebandManagerClientInterface::~AppleBasebandManagerClientInterface(a1);
}

void sub_1003101F0(void *a1)
{
  *a1 = off_101E40B68;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  AppleBasebandManagerClientInterface::~AppleBasebandManagerClientInterface(a1);

  operator delete();
}

void sub_100310300(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176B218(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031031C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100310354(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100310384(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003103C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10031045C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_1003104DC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 48);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      dispatch_release(v4);
    }

    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    sub_10031045C(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_10031055C(void *a1)
{
  v6 = a1;
  v2 = a1[4];
  v8 = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    v8 = xpc_null_create();
  }

  v3 = a1[5];
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = a1[3];
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, &v8, &object);
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v8);
  return sub_1003104DC(&v6);
}

void sub_100310614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, xpc_object_t a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a12);
  sub_1003104DC(&a10);
  _Unwind_Resume(a1);
}

void sub_100310730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100310748(void *a1)
{
  *a1 = off_101E40CF8;
  v2 = a1[133];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_100348C6C(a1);
}

void sub_1003107A8(void *a1)
{
  sub_100310748(a1);

  operator delete();
}

void sub_100310870(uint64_t a1, NSObject **a2)
{
  v3 = *a2;
  group = *a2;
  if (*a2)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  sub_10034ADB0(a1);
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }
}

void sub_1003108D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003108FC(uint64_t a1, int a2, BOOL a3, CFDictionaryRef *a4)
{
  v8 = capabilities::ct::supportsThumperService(a1);
  if (a2 == 1 && v8)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asStringBool(a3);
      v11 = *a4;
      v16 = 136315906;
      v17 = "";
      v18 = 2080;
      v19 = "";
      v20 = 2080;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled, val: %s, %@", &v16, 0x2Au);
    }

    if (*a4)
    {
      Value = CFDictionaryGetValue(*a4, kPSAssociatedAccountID);
      if (Value)
      {
        v13 = Value;
        v14 = CFGetTypeID(Value);
        if (v14 == CFStringGetTypeID())
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }

        setAssociatedID(v15);
        sub_1005D0430(*(a1 + 784));
      }
    }
  }
}

const void **sub_100310AA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = 0;
  return sub_10001021C(&v2);
}

const void **sub_100310AD8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = 0;
  return sub_10001021C(&v2);
}

void sub_100310B78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E40F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100310BCC(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void sub_100310CB8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100310D8C);
  __cxa_rethrow();
}

void sub_100310CF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100310D4C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100310D8C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100311058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v27)
  {
    sub_100004A34(v27);
    if (!v26)
    {
      goto LABEL_3;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  dispatch_release(v26);
LABEL_3:
  operator delete();
}

uint64_t CellularPlanAttachProvisioningMonitorMode::CellularPlanAttachProvisioningMonitorMode(uint64_t a1, dispatch_object_t *a2, void *a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v18 = *a2;
  object = v18;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v19 = a4[1];
  v33 = *a4;
  v34 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = "cp.mm.ap.?";
  if (a5 == 2)
  {
    v20 = "cp.mm.ap.2";
  }

  if (a5 == 1)
  {
    v21 = "cp.mm.ap.1";
  }

  else
  {
    v21 = v20;
  }

  v22 = (a8 + 16);
  if (*(a8 + 39) < 0)
  {
    sub_100005F2C(__p, *(a8 + 16), *(a8 + 24));
  }

  else
  {
    *__p = *v22;
    v32 = *(a8 + 32);
  }

  sub_10031435C(a1, &object, a3, &v33, v21, __p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (v34)
  {
    sub_100004A34(v34);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E40FB8;
  *(a1 + 160) = *a4;
  v23 = a4[1];
  *(a1 + 168) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = a6;
  *(a1 + 184) = a7;
  *(a1 + 192) = *a8;
  if (*(a8 + 39) < 0)
  {
    sub_100005F2C((a1 + 208), *(a8 + 16), *(a8 + 24));
  }

  else
  {
    v24 = *v22;
    *(a1 + 224) = *(a8 + 32);
    *(a1 + 208) = v24;
  }

  v25 = *(a8 + 40);
  *(a1 + 248) = 0u;
  *(a1 + 232) = v25;
  *(a1 + 240) = 0;
  *(a1 + 244) = 1;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 296));
  sub_10000501C(&v29, "CellularPlanAttachProvisioningMonitorMode");
  v28 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v28)
  {
    dispatch_release(v28);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  *(a1 + 1120) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 1128));
  *(a1 + 1936) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 1944));
  *(a1 + 2760) = 0u;
  *(a1 + 2752) = a1 + 2760;
  *(a1 + 2784) = 0u;
  *(a1 + 2776) = a1 + 2784;
  *(a1 + 2800) = 0;
  *(a1 + 2802) = 1;
  *(a1 + 2803) = a9;
  *(a1 + 2804) = a10;
  *(a1 + 2808) = 0;
  *(a1 + 2832) = 0;
  *(a1 + 2840) = 0;
  *(a1 + 2848) = 0u;
  v26 = *(a1 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a8 + 39) < 0)
    {
      v22 = *v22;
    }

    *buf = 136315138;
    v37 = v22;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I create Attach MM for %s", buf, 0xCu);
  }

  return a1;
}

void sub_1003113E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t a10, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_object_t object, uint64_t a24)
{
  v26 = *(v24 + 21);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  sub_10031452C(v24);
  _Unwind_Resume(a1);
}

void sub_1003114A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, NSObject *a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  if (a23)
  {
    dispatch_release(a23);
  }

  JUMPOUT(0x100311498);
}

void CellularPlanAttachProvisioningMonitorMode::~CellularPlanAttachProvisioningMonitorMode(CellularPlanAttachProvisioningMonitorMode *this)
{
  *this = off_101E40FB8;
  ctu::RestModule::disconnect((this + 1104));
  v2 = *(this + 355);
  if (v2)
  {
    *(this + 356) = v2;
    operator delete(v2);
  }

  if (*(this + 2832) == 1)
  {
    v3 = *(this + 351);
    if (v3)
    {
      *(this + 352) = v3;
      operator delete(v3);
    }
  }

  sub_10006DCAC(this + 2776, *(this + 348));
  sub_10013DF64(this + 2752, *(this + 345));
  sub_10004543C(this + 1944);
  sub_10004543C(this + 1128);
  v4 = *(this + 139);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10004543C(this + 296);
  v6 = (this + 272);
  sub_1000B2AF8(&v6);
  v6 = (this + 248);
  sub_100112048(&v6);
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  v5 = *(this + 21);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_10031452C(this);
}

{
  CellularPlanAttachProvisioningMonitorMode::~CellularPlanAttachProvisioningMonitorMode(this);

  operator delete();
}

void CellularPlanAttachProvisioningMonitorMode::init_sync(uint64_t a1, Registry **a2)
{
  Registry::createRestModuleOneTimeUseConnection(&v3, *a2);
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  *(a1 + 1120) = "/cc/props/reg_net_info1";
  sub_100313690((a1 + 1120));
}

void sub_10031172C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatusesOnSlotOne_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  if (CellularPlanAttachProvisioningMonitorMode::getSlotForIccid_sync(this, this + 208) == 1)
  {

    CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatuses_sync(this, (this + 1128));
  }
}

void CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatusesOnSlotTwo_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  if (CellularPlanAttachProvisioningMonitorMode::getSlotForIccid_sync(this, this + 208) == 2)
  {

    CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatuses_sync(this, (this + 1944));
  }
}

void CellularPlanAttachProvisioningMonitorMode::handleCarrierEntitlementsInfoUpdated_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  v2 = *(this + 60);
  if (v2 == 3)
  {
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    if (*(this + 231) < 0)
    {
      sub_100005F2C(__p, *(this + 26), *(this + 27));
    }

    else
    {
      *__p = *(this + 13);
      v9 = *(this + 28);
    }

    v4 = sub_100007A6C(this + 2752, __p);
    if ((this + 2760) != v4)
    {
      v5 = v4[144];
      *(this + 2802) = v5;
      v6 = *(this + 5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "unblocked";
        if (v5)
        {
          v7 = "blocked";
        }

        *buf = 136315138;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Received entitlement block status %s", buf, 0xCu);
      }

      CellularPlanAttachProvisioningMonitorMode::evaluateMonitorModeExit_sync(this);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176B23C(v2, v3);
    }
  }
}

void CellularPlanAttachProvisioningMonitorMode::handleRejectCauseCode_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  SlotForIccid_sync = CellularPlanAttachProvisioningMonitorMode::getSlotForIccid_sync(this, this + 208);
  if (SlotForIccid_sync)
  {
    v3 = *(this + 348);
    if (v3)
    {
      v4 = this + 2784;
      do
      {
        if (*(v3 + 7) >= SlotForIccid_sync)
        {
          v4 = v3;
        }

        v3 = *&v3[8 * (*(v3 + 7) < SlotForIccid_sync)];
      }

      while (v3);
      if (v4 != this + 2784 && SlotForIccid_sync >= *(v4 + 7))
      {
        v5 = *(this + 5);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v4[32];
          v7 = v4[33];
          v13[0] = 67109634;
          v13[1] = v6;
          v14 = 1024;
          v15 = v7;
          v16 = 2080;
          v17 = asString();
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Received Reject cause code: PS: %d, CS: %d, Rat: %s", v13, 0x18u);
        }

        v8 = *(v4 + 9);
        v9 = v8 > 0xB;
        v10 = (1 << v8) & 0x838;
        if (v9 || v10 == 0)
        {
          if (*(this + 2801))
          {
            v12 = 1;
          }

          else
          {
            v12 = CellularPlanAttachProvisioningMonitorMode::didReceiveFatalRejectFromNetwork(this);
          }

          *(this + 2801) = v12;
        }
      }
    }
  }
}

void sub_100311AC0(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/emergency_call_in_progress");
  v4[0] = off_101E41248;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100311B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanAttachProvisioningMonitorMode::runMonitorModeAction_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  if (*(this + 244) & 1) != 0 || (CellularPlanAttachProvisioningMonitorMode::notifyBackoffTimerExpiry_sync(this), (*(this + 244)) || *(this + 2801) != 1 || *(this + 2800) == 1)
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315394;
      v27 = printers::asString((this + 2801), v3);
      v28 = 2080;
      v29 = printers::asString((this + 2800), v4);
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Reject cause code: %s - ecall in progress %s", &v26, 0x16u);
    }

    *(this + 244) = 0;
    CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(this, 3u);
    sub_100314A14(this, 0x100u);
    return;
  }

  if ((*(this + 2804) & 1) == 0)
  {
    v15 = *(this + 31);
    v16 = *(this + 32);
    if (v15 == v16)
    {
      goto LABEL_52;
    }

    v17 = 0;
    do
    {
      if (*(v15 + 80) == 1)
      {
        v18 = *(v15 + 56);
        v19 = *(v15 + 64);
        if (v18 != v19)
        {
          v20 = *(this + 231);
          if (v20 >= 0)
          {
            v21 = *(this + 231);
          }

          else
          {
            v21 = *(this + 27);
          }

          while (1)
          {
            v22 = *(v18 + 39);
            v23 = v22;
            if ((v22 & 0x80u) != 0)
            {
              v22 = *(v18 + 24);
            }

            if (v22 == v21)
            {
              v24 = v23 >= 0 ? (v18 + 16) : *(v18 + 16);
              v25 = v20 >= 0 ? (this + 208) : *(this + 26);
              if (!memcmp(v24, v25, v21))
              {
                break;
              }
            }

            v18 += 216;
            if (v18 == v19)
            {
              goto LABEL_47;
            }
          }

          v17 |= *(v18 + 90);
        }
      }

LABEL_47:
      v15 += 88;
    }

    while (v15 != v16);
    if ((v17 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:

    CellularPlanAttachProvisioningMonitorMode::disableProfile_sync(this);
    return;
  }

  v5 = *(this + 34);
  v6 = *(this + 35);
  if (v5 == v6)
  {
    goto LABEL_49;
  }

  v7 = v5 + 72;
  while (1)
  {
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = *(v7 + 23);
    }

    else
    {
      v9 = *(v7 + 8);
    }

    v10 = *(this + 231);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(this + 27);
    }

    if (v9 == v10)
    {
      v12 = v8 >= 0 ? v7 : *v7;
      v13 = v11 >= 0 ? (this + 208) : *(this + 26);
      if (!memcmp(v12, v13, v9) && (subscriber::isPhySimDisabled() & 1) != 0)
      {
        break;
      }
    }

    v14 = v7 + 96;
    v7 += 168;
    if (v14 == v6)
    {
      goto LABEL_49;
    }
  }

LABEL_52:

  CellularPlanAttachProvisioningMonitorMode::enableProfile_sync(this);
}

void CellularPlanAttachProvisioningMonitorMode::notifyBackoffTimerExpiry_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 20);
      if (v5)
      {
        v6 = *(this + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Notify backoff timer expiry.", v7, 2u);
        }

        (*(*v5 + 40))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 240);
    if (v5 > 3)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_101E412B8[v5];
    }

    if (a2 > 3)
    {
      v7 = "???";
    }

    else
    {
      v7 = off_101E412B8[a2];
    }

    v8 = 136315394;
    v9 = v6;
    v10 = 2080;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Attach MonitorMode state:[%s] -> [%s]", &v8, 0x16u);
  }

  *(a1 + 240) = a2;
}

void CellularPlanAttachProvisioningMonitorMode::enableProfile_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 20);
      if (v5)
      {
        CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(this, 1u);
        v6 = *(this + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (this + 208);
          if (*(this + 231) < 0)
          {
            v7 = *v7;
          }

          *buf = 136315138;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I activate profile : %s", buf, 0xCu);
        }

        v8 = *(this + 22);
        v9 = *(this + 23);
        v10 = *(this + 12);
        if (*(this + 231) < 0)
        {
          sub_100005F2C(__p, *(this + 26), *(this + 27));
        }

        else
        {
          *__p = *(this + 13);
          v12 = *(this + 28);
        }

        v13 = *(this + 232);
        (*(*v5 + 24))(v5, v8, v9, &v10);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void CellularPlanAttachProvisioningMonitorMode::disableProfile_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 20);
      if (v5)
      {
        CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(this, 2u);
        v6 = *(this + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (this + 208);
          if (*(this + 231) < 0)
          {
            v7 = *v7;
          }

          *buf = 136315138;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I deactivate profile : %s", buf, 0xCu);
        }

        v8 = *(this + 22);
        v9 = *(this + 23);
        v10 = *(this + 12);
        if (*(this + 231) < 0)
        {
          sub_100005F2C(__p, *(this + 26), *(this + 27));
        }

        else
        {
          *__p = *(this + 13);
          v12 = *(this + 28);
        }

        v13 = *(this + 232);
        (*(*v5 + 32))(v5, v8, v9, &v10);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void CellularPlanAttachProvisioningMonitorMode::setVinylInfo_sync(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 248;
  if (v4 != a2)
  {
    sub_100169D44(v4, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  }

  if (*(a1 + 2804) == 1)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Skip handling vinyl info for physical SIM monitor mode", buf, 2u);
    }
  }

  else
  {
    v6 = *(a1 + 248);
    for (i = *(a1 + 256); v6 != i; v6 += 88)
    {
      if (*(v6 + 80) == 1)
      {
        v8 = *(v6 + 56);
        v9 = *(v6 + 64);
        if (v8 != v9)
        {
          v10 = *(a1 + 231);
          if (v10 >= 0)
          {
            v11 = *(a1 + 231);
          }

          else
          {
            v11 = *(a1 + 216);
          }

          while (1)
          {
            v12 = *(v8 + 39);
            v13 = v12;
            if ((v12 & 0x80u) != 0)
            {
              v12 = *(v8 + 24);
            }

            if (v12 == v11)
            {
              v14 = v13 >= 0 ? (v8 + 16) : *(v8 + 16);
              v15 = v10 >= 0 ? (a1 + 208) : *(a1 + 208);
              if (!memcmp(v14, v15, v11))
              {
                break;
              }
            }

            v8 += 216;
            if (v8 == v9)
            {
              goto LABEL_23;
            }
          }

          v16 = *(a1 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = "Disabled";
            if (*(v8 + 90))
            {
              v17 = "Active";
            }

            *buf = 136315138;
            v20 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Received Vinyl Info profile status: %s", buf, 0xCu);
          }

          v18 = *(a1 + 240);
          if (v18 == 2)
          {
            if ((*(v8 + 90) & 1) == 0)
            {
              CellularPlanAttachProvisioningMonitorMode::enableProfile_sync(a1);
            }
          }

          else if (v18 == 1 && *(v8 + 90) == 1)
          {
            *(a1 + 2801) = 0;
            CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(a1, 3u);
            v2 = v2 & 0xFFFFFFFFFFFF0000 | 0x100;
            sub_100314A14(a1, v2);
          }
        }
      }

LABEL_23:
      ;
    }
  }
}

void CellularPlanAttachProvisioningMonitorMode::setSimInfo_sync(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 272);
  if (v3 != a2)
  {
    sub_100169790(v3, *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
  }

  if (*(a1 + 2804) == 1)
  {
    v4 = *(a1 + 272);
    v5 = *(a1 + 280);
    if (v4 != v5)
    {
      v6 = *(a1 + 231);
      if (v6 >= 0)
      {
        v7 = *(a1 + 231);
      }

      else
      {
        v7 = *(a1 + 216);
      }

      for (i = v4 + 72; ; i += 168)
      {
        v9 = *(i + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(i + 8);
        }

        if (v9 == v7)
        {
          v11 = v10 >= 0 ? i : *i;
          v12 = v6 >= 0 ? (a1 + 208) : *(a1 + 208);
          if (!memcmp(v11, v12, v7))
          {
            break;
          }
        }

        v13 = i + 96;
        if (v13 == v5)
        {
          return;
        }
      }

      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Received sim info update", v16, 2u);
      }

      v15 = *(a1 + 240);
      if (v15 == 1)
      {
        if (subscriber::isSimReady())
        {
          *(a1 + 2801) = 0;
          CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(a1, 3u);
          sub_100314A14(a1, 0x100u);
          return;
        }

        v15 = *(a1 + 240);
      }

      if (v15 == 2)
      {
        if (subscriber::isPhySimDisabled())
        {
          CellularPlanAttachProvisioningMonitorMode::enableProfile_sync(a1);
        }
      }
    }
  }
}

uint64_t sub_100312784(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1000B26FC(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10024064C(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

char **CellularPlanAttachProvisioningMonitorMode::setAdditionalBackoffTimes_sync(uint64_t a1, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  result = (a1 + 2840);
  if (v3 != v4 && result != a2)
  {
    return sub_1000D0394(result, v3, v4, (v4 - v3) >> 3);
  }

  return result;
}

uint64_t CellularPlanAttachProvisioningMonitorMode::getSlotForIccid_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 272);
  v3 = *(a1 + 280);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v5 = HIBYTE(v15);
  if (v4 == v3)
  {
    v3 = v4;
LABEL_22:
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v15 >= 0)
    {
      v6 = HIBYTE(v15);
    }

    else
    {
      v6 = __p[1];
    }

    if (v15 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v4 + 18;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 1);
      }

      if (v9 == v6)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v11, v7, v6))
        {
          break;
        }
      }

      v12 = v8 + 24;
      v8 += 42;
      if (v12 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v8 - 18;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v3 == *(a1 + 280))
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

void CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatuses_sync(CellularPlanAttachProvisioningMonitorMode *this, const RegisteredNetworkInfo *a2)
{
  v2 = *(this + 60);
  v3 = *(this + 5);
  if (v2 == 3)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received registration status %s", &v5, 0xCu);
    }

    RegisteredNetworkInfo::operator=();
    CellularPlanAttachProvisioningMonitorMode::evaluateMonitorModeExit_sync(this);
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_10176B2D4(v2, v3);
  }
}

void CellularPlanAttachProvisioningMonitorMode::evaluateMonitorModeExit_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  v2 = *(this + 74);
  v3 = v2 > 0xB;
  v4 = (1 << v2) & 0x838;
  if (!v3 && v4 != 0)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Ignore registration status on CDMA/Unknown RAT", __p, 2u);
    }

    return;
  }

  if ((*(this + 76) & 0xFFFFFFFE) == 4 && (*(this + 2802) & 1) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v29 = 0;
    v7 = (this + 208);
    if (*(this + 231) < 0)
    {
      sub_100005F2C(__p, *(this + 26), *(this + 27));
    }

    else
    {
      *__p = *v7;
      v29 = *(this + 28);
    }

    if (*(this + 2803) != 1)
    {
      goto LABEL_27;
    }

    ServiceMap = Registry::getServiceMap(*(this + 6));
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v30 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v30);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_22:
    (**v16)(&buf, v16, __p);
    v18 = (*(*buf + 536))(buf);
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    if ((v18 & 1) == 0)
    {
      v27 = *(this + 5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I SIM is not authenticated", &buf, 2u);
      }

      goto LABEL_42;
    }

LABEL_27:
    v19 = *(this + 355);
    v20 = *(this + 356);
    if (v19 == v20)
    {
      v26 = *(this + 5);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (*(this + 231) < 0)
        {
          v7 = *v7;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v7;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I attach mm completed : %s", &buf, 0xCu);
      }

      sub_100314A14(this, 0x101u);
    }

    else
    {
      v21 = *v19;
      v30 = *v19;
      v22 = v20 - (v19 + 1);
      if (v20 != v19 + 1)
      {
        memmove(v19, v19 + 1, v20 - (v19 + 1));
      }

      *(this + 356) = v19 + v22;
      v23 = *(this + 5);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = asString();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I require additional attach monitor mode. rat:%s", &buf, 0xCu);
      }

      *(this + 2801) = 1;
      if (v21)
      {
        v25 = *(this + 16);
        *(this + 19) = v25;
        *(this + 19) = sub_100312FF8(this + 16, v25, &v30);
        sub_100314A14(this, 0x100u);
      }

      else
      {
        CellularPlanAttachProvisioningMonitorMode::runMonitorModeAction_sync(this);
      }
    }

LABEL_42:
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100312DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanAttachProvisioningMonitorMode::didReceiveFatalRejectFromNetwork(CellularPlanAttachProvisioningMonitorMode *this)
{
  result = CellularPlanAttachProvisioningMonitorMode::getSlotForIccid_sync(this, this + 208);
  if (result)
  {
    v3 = *(this + 347);
    if (v3 == (this + 2784))
    {
      return 0;
    }

    else
    {
      v4 = result;
      while (1)
      {
        if (*(v3 + 7) == v4)
        {
          v5 = *(this + 5);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v6 = *(v3 + 32);
            v7 = *(v3 + 33);
            v8 = asString();
            *buf = 67109634;
            v15 = v6;
            v16 = 1024;
            v17 = v7;
            v18 = 2080;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I NetworkRejectCauseCodePS: %d, NetworkRejectCauseCodeCS: %d, Rat: %s", buf, 0x18u);
          }

          v9 = *(v3 + 33);
          if (v9 - 2) < 7 && ((0x73u >> (v9 - 2)))
          {
            break;
          }

          v10 = *(v3 + 32);
          if (v10 - 2) < 7 && ((0x73u >> (v10 - 2)))
          {
            break;
          }

          if (CellularPlanAttachProvisioningMonitorMode::isAdditionalFatalRejectCauseCodeConfigured_sync(this, v9, v10))
          {
            break;
          }
        }

        v11 = *(v3 + 1);
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = *(v3 + 2);
            v13 = *v12 == v3;
            v3 = v12;
          }

          while (!v13);
        }

        v3 = v12;
        if (v12 == (this + 2784))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

char *sub_100312FF8(void *a1, char *__src, uint64_t *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v10 = *a1;
    v11 = (&v5[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000CE3D4();
    }

    v12 = __src - v10;
    v13 = v6 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      sub_10006A8B4(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    sub_100313350(&v24, a3);
    v16 = v25;
    memcpy(v26, v3, a1[1] - v3);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v3;
    a1[1] = v3;
    v19 = v3 - v17;
    v20 = (v18 - (v3 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else
  {
    v7 = *a3;
    if (__src == v5)
    {
      *v5 = v7;
      a1[1] = v5 + 8;
    }

    else
    {
      v8 = __src + 8;
      if (v5 < 8)
      {
        v9 = a1[1];
      }

      else
      {
        *v5 = *(v5 - 1);
        v9 = v5 + 8;
      }

      a1[1] = v9;
      if (v5 != v8)
      {
        memmove(__src + 8, __src, v5 - v8);
      }

      *v3 = v7;
    }
  }

  return v3;
}

void sub_10031317C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CellularPlanAttachProvisioningMonitorMode::isAdditionalFatalRejectCauseCodeConfigured_sync(CellularPlanAttachProvisioningMonitorMode *this, int a2, int a3)
{
  if (*(this + 2832) != 1)
  {
    return 0;
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_10024064C(&__p, *(this + 351), *(this + 352), (*(this + 352) - *(this + 351)) >> 2);
  v6 = __p;
  if (__p != v15)
  {
    v7 = __p;
    while (*v7 != a2)
    {
      if (++v7 == v15)
      {
LABEL_11:
        while (*v6 != a3)
        {
          if (++v6 == v15)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_12;
      }
    }

    if (v7 == v15)
    {
      goto LABEL_11;
    }

    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = a2;
      v9 = "#I CS reject cause code [%d] is a cb configured code";
      v10 = v8;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_12:
  if (v6 != v15)
  {
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = a3;
      v9 = "#I PS reject cause code [%d] is a cb configured code";
      v10 = v11;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, 8u);
    }

LABEL_16:
    v12 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v12 = 1;
LABEL_18:
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return !v12;
}

void *sub_100313350(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10006A8B4(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void sub_1003134D0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1003135A4);
  __cxa_rethrow();
}

void sub_100313510(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100313564(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003135A4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1003135D0(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  CellularPlanAttachProvisioningMonitorMode::init_sync(*v1, (v1 + 16));
}

void sub_100313614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100313630(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100313630(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return result;
}

void sub_100313778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100313828(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E410C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100313868(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003138B4(void *a1, const xpc::object *a2)
{
  read_rest_value((*a1 + 8), a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_100313A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100313AD0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E41148;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100313B10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100313B5C(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_100313CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100313D74(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E411C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100313DB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100313E00(uint64_t *a1, xpc_object_t *a2)
{
  sub_1002FF8E0(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_100313EEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E41248;
  a2[1] = v2;
  return result;
}

uint64_t sub_100313F18(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_100313F48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100313F94(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

const char *sub_100314084(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable5GSwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::Enable5GSwitchSupport_2";
  }
}

const char *sub_1003140A4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "EnableLTESwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::EnableLTESwitchSupport_2";
  }
}

const char *sub_1003140C4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable3GSwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::Enable3GSwitchSupport_2";
  }
}

const char *sub_1003140F0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable5G";
  }

  else
  {
    return "MaxDataRateManager::Enable5G_2";
  }
}

const char *sub_100314110(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "EnableLTE";
  }

  else
  {
    return "MaxDataRateManager::EnableLTE_2";
  }
}

const char *sub_100314130(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable3G";
  }

  else
  {
    return "MaxDataRateManager::Enable3G_2";
  }
}

void sub_100314188(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E413B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100314204(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E41408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const char *sub_100314278(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable5GSwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::Enable5GSwitchSupport";
  }
}

const char *sub_100314298(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "EnableLTESwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::EnableLTESwitchSupport";
  }
}

const char *sub_1003142B8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable3GSwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::Enable3GSwitchSupport";
  }
}

const char *sub_1003142E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable5G";
  }

  else
  {
    return "MaxDataRateManager::Enable5G";
  }
}

const char *sub_100314304(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "EnableLTE";
  }

  else
  {
    return "MaxDataRateManager::EnableLTE";
  }
}

const char *sub_100314324(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable3G";
  }

  else
  {
    return "MaxDataRateManager::Enable3G";
  }
}

uint64_t sub_10031435C(uint64_t a1, NSObject **a2, void *a3, void *a4, char *a5, __int128 *a6)
{
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, a5);
  sub_1003144A0((a1 + 8), a2, &v15);
  ctu::OsLogContext::~OsLogContext(&v15);
  *a1 = off_101E414F0;
  v11 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C((a1 + 64), *a6, *(a6 + 1));
  }

  else
  {
    v12 = *a6;
    *(a1 + 80) = *(a6 + 2);
    *(a1 + 64) = v12;
  }

  v13 = a4[1];
  *(a1 + 88) = *a4;
  *(a1 + 96) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return a1;
}

void sub_100314460(_Unwind_Exception *a1)
{
  v3 = v1[7];
  if (v3)
  {
    sub_100004A34(v3);
  }

  CellularPlanProvisioningMonitorModeInterface::~CellularPlanProvisioningMonitorModeInterface(v1);
  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_1003144A0(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_100314508(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

CellularPlanProvisioningMonitorModeInterface *sub_10031452C(CellularPlanProvisioningMonitorModeInterface *this)
{
  *this = off_101E414F0;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v5 = *(this + 7);
  if (v5)
  {
    sub_100004A34(v5);
  }

  CellularPlanProvisioningMonitorModeInterface::~CellularPlanProvisioningMonitorModeInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_100314604(uint64_t a1, char **a2)
{
  if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176B36C(v3);
    }
  }

  else
  {
    v4 = (a1 + 128);
    if ((a1 + 128) != a2)
    {
      sub_1000D0394(v4, *a2, a2[1], (a2[1] - *a2) >> 3);
    }

    *(a1 + 152) = *(a1 + 128);
  }
}

uint64_t sub_100314678(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitor mode already running", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitor Mode Start", v6, 2u);
    }

    *(a1 + 104) = 1;
    (*(*a1 + 80))(a1);
  }

  return v2 ^ 1u;
}

void sub_100314754(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 104));
    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Started: %s", &v6, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 112) != 0);
    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Running: %s", &v6, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(a1 + 136) - *(a1 + 128)) >> 3;
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Number of Backoff: [%lu]", &v6, 0xCu);
  }
}

void sub_1003148A8(void *a1, unsigned __int16 a2)
{
  if (a2 & 0x100) != 0 && (a2)
  {
    a1[17] = a1[16];
  }

  v4 = a1[14];
  if (v4)
  {
    a1[14] = 0;
    (*(*v4 + 8))(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = a1[11];
      if (v8)
      {
        (*(*v8 + 16))(v8, a2, a1 + 8, a1);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1003149E0(uint64_t result, void *a2)
{
  if (*a2 != a2[1])
  {
    return (*(*result + 104))();
  }

  return result;
}

void sub_100314A14(uint64_t a1, unsigned __int16 a2)
{
  if (a2 & 0x100) != 0 && (a2)
  {
    v4 = *(*a1 + 40);

    v4();
  }

  else
  {
    v6 = *(a1 + 128);
    v5 = *(a1 + 136);
    v7 = v5 - v6;
    if (v5 == v6 || *(a1 + 152) == v5)
    {
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        buf = 134217984;
        *buf_4 = v7 >> 3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I No more backoff times (Total: %lu)", &buf, 0xCu);
      }

      (*(*a1 + 40))(a1, a2);
    }

    else
    {
      v14 = 0;
      v15 = 0;
      Registry::getTimerService(&v14, *(a1 + 48));
      if (v14)
      {
        v8 = *(a1 + 120) + 1;
        *(a1 + 120) = v8;
        v9 = *(a1 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = **(a1 + 152);
          buf = 67109376;
          *buf_4 = v8;
          *&buf_4[4] = 2048;
          *&buf_4[6] = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Action failed, backing off, idx : %hhu, backoff : %lld", &buf, 0x12u);
        }

        sub_100004AA0(&buf, (a1 + 8));
        v11 = *&buf_4[4];
        if (*&buf_4[4])
        {
          atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v11);
        }

        operator new();
      }

      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10176B3B0(v13);
      }

      (*(*a1 + 40))(a1, 256);
      if (v15)
      {
        sub_100004A34(v15);
      }
    }
  }
}

void sub_100314E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100314EC4(void *a1)
{
  *a1 = off_101E41618;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100314F10(void *a1)
{
  *a1 = off_101E41618;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100315000(uint64_t result, uint64_t a2)
{
  *a2 = off_101E41618;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

void sub_100315050(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100315060(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003150A0(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[2])
      {
        v5[0] = 0;
        v5[1] = 0;
        sub_100004AA0(v5, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003151B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100315200(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 120);
  if (*(*a1 + 8) == v2)
  {
    v3 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    (*(*v1 + 80))(v1);
  }

  else
  {
    v4 = *(v1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176B3F4(v2, v4);
    }
  }

  operator delete();
}

uint64_t sub_10031530C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_100005F2C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v3 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v3;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  return a1;
}

int8x8_t sub_10031538C(uint64_t a1)
{
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  gettimeofday(&v6, 0);
  memset(&v5, 0, sizeof(v5));
  tv_sec = v6.tv_sec;
  localtime_r(&tv_sec, &v5);
  *(a1 + 64) = 1;
  *a1 = LOWORD(v5.tm_year) + 1900;
  *(a1 + 2) = LOBYTE(v5.tm_mon) + 1;
  v2 = vrev64_s16(vmovn_s32(*&v5.tm_sec));
  result = vuzp1_s8(v2, v2);
  *(a1 + 3) = result.i32[0];
  *(a1 + 8) = v6.tv_usec / 1000;
  return result;
}

uint64_t sub_10031543C(uint64_t a1, char *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    v2 = *a2;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  v8 = 0;
  result = sscanf(v2, "%04u-%02u-%02u-%02u-%02u-%02u-%03u", &v11 + 4, &v11, &v10 + 4, &v10, &v9 + 4, &v9, &v8);
  if (result == 7)
  {
    *(a1 + 64) = 1;
    v5 = v11;
    *a1 = WORD2(v11);
    *(a1 + 2) = v5;
    v6 = v10;
    *(a1 + 3) = BYTE4(v10);
    *(a1 + 4) = v6;
    v7 = v9;
    *(a1 + 5) = BYTE4(v9);
    *(a1 + 6) = v7;
    *(a1 + 8) = v8;
  }

  return result;
}

_BYTE *sub_1003154F8@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x40uLL, "%s%04u-%02u-%02u-%02u-%02u-%02u-%03u", "log-bb-", *a1, *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 2));
  return sub_10000501C(a2, __str);
}

_BYTE *sub_1003155AC@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x40uLL, "%04u-%02u-%02u-%02u-%02u-%02u-%03u", *a1, *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 2));
  return sub_10000501C(a2, __str);
}

void sub_100315658(uint64_t a1)
{
  sub_1003154F8(a1, &__p);
  std::operator+<char>();
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  HIBYTE(v5) = 0;
  LOBYTE(v4) = 0;
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1003156D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003156F0(uint64_t a1, uint64_t a2, dispatch_object_t *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a3)
  {
    dispatch_retain(*a3);
  }

  sub_100489F70(&v4);
}

void sub_10031578C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003157B8(uint64_t a1, os_log_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v35 = a2;
  v9 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0x8F5C28F5C28F5C29 * ((a5[1] - *a5) >> 3);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3);
    *buf = 134218240;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Init CellularPlanTransferDeviceInfo with %ld blacklist plans and %ld whitelist plans", buf, 0x16u);
  }

  if (*(a3 + 240) == 1)
  {
    if (*(a3 + 56) != 1)
    {
      goto LABEL_8;
    }

    v13 = *(a3 + 87);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a3 + 72);
    }

    if (!v13)
    {
LABEL_8:
      for (i = *(a4 + 128); i != *(a4 + 136); i += 80)
      {
        if (*i == 1)
        {
          sub_10016C728((a3 + 56), (i + 8));
          break;
        }
      }
    }

    v34[0] = a6;
    v34[1] = &v35;
    v15 = *a5;
    v16 = a5[1];
    if (*a5 != v16)
    {
      do
      {
        if (*(a3 + 56))
        {
          v17 = *(a3 + 87);
          if (v17 >= 0)
          {
            v10 = *(a3 + 87);
          }

          else
          {
            v10 = *(a3 + 72);
          }

          v18 = *(v15 + 47);
          v19 = *(v15 + 47);
          v20 = *(v15 + 32);
          if (v18 >= 0)
          {
            v20 = *(v15 + 47);
          }

          if (v10 == v20)
          {
            v21 = v17 >= 0 ? (a3 + 64) : *(a3 + 64);
            v22 = v18 >= 0 ? (v15 + 24) : *(v15 + 24);
            if (!memcmp(v21, v22, v10))
            {
              v24 = *(a3 + 200);
              v23 = *(a3 + 208);
              while (v24 != v23)
              {
                if (*(v24 + 80) == 1)
                {
                  sub_100315AEC(v34, v24, v15);
                }

                v24 += 88;
              }

              goto LABEL_63;
            }
          }
        }

        else
        {
          v19 = *(v15 + 47);
        }

        if ((v19 & 0x80) != 0)
        {
          if (*(v15 + 32))
          {
            goto LABEL_63;
          }
        }

        else if (v19)
        {
          goto LABEL_63;
        }

        if ((*(v15 + 71) & 0x8000000000000000) != 0)
        {
          if (!*(v15 + 56))
          {
            goto LABEL_63;
          }
        }

        else if (!*(v15 + 71))
        {
          goto LABEL_63;
        }

        v25 = *(a3 + 200);
        for (j = *(a3 + 208); v25 != j; v25 += 88)
        {
          if (*(v25 + 80) == 1)
          {
            memset(buf, 0, sizeof(buf));
            sub_100922314((v25 + 16), v10, buf);
            v27 = buf[23];
            if ((buf[23] & 0x80u) == 0)
            {
              v10 = buf[23];
            }

            else
            {
              v10 = *&buf[8];
            }

            v28 = *(v15 + 71);
            v29 = v28;
            if ((v28 & 0x80u) != 0)
            {
              v28 = *(v15 + 56);
            }

            if (v10 == v28)
            {
              v30 = (buf[23] & 0x80u) == 0 ? buf : *buf;
              v31 = v29 >= 0 ? (v15 + 48) : *(v15 + 48);
              if (!memcmp(v30, v31, v10))
              {
                sub_100315AEC(v34, v25, v15);
                if ((buf[23] & 0x80) == 0)
                {
                  continue;
                }

LABEL_58:
                operator delete(*buf);
                continue;
              }
            }

            if ((v27 & 0x80) != 0)
            {
              goto LABEL_58;
            }
          }
        }

LABEL_63:
        v15 += 200;
      }

      while (v15 != v16);
    }
  }

  sub_10031A4D0(a1, a3);
  sub_100315D00(a1 + 248, a4);
  sub_100315D88(a1);
}

uint64_t sub_100315AEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 64);
  if (v3 != v4)
  {
    v7 = result;
    v8 = (a3 + 72);
    do
    {
      v9 = *(a3 + 95);
      if (v9 >= 0)
      {
        v10 = *(a3 + 95);
      }

      else
      {
        v10 = *(a3 + 80);
      }

      v11 = *(v3 + 39);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v3 + 24);
      }

      if (v10 != v11)
      {
        goto LABEL_16;
      }

      v13 = v9 >= 0 ? v8 : *v8;
      v14 = v12 >= 0 ? (v3 + 16) : *(v3 + 16);
      result = memcmp(v13, v14, v10);
      if (result)
      {
        goto LABEL_16;
      }

      v15 = **v7;
      v16 = *(*v7 + 8);
      if (v15 != v16)
      {
        while (1)
        {
          v17 = *(v15 + 23);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v15 + 8);
          }

          if (v17 == v10)
          {
            v19 = v18 >= 0 ? v15 : *v15;
            result = memcmp(v19, v14, v10);
            if (!result)
            {
              break;
            }
          }

          v15 += 24;
          if (v15 == v16)
          {
            goto LABEL_30;
          }
        }
      }

      if (v15 == v16)
      {
LABEL_30:
        v20 = ***(v7 + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v25 = v14;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Found blacklisted ICCID to exclude: %s", buf, 0xCu);
          v4 = *(a2 + 64);
        }

        if (v3 + 216 == v4)
        {
          result = v4;
          v4 = v3;
        }

        else
        {
          v21 = v3;
          do
          {
            v22 = v21 + 216;
            sub_100F11BEC(v21, v21 + 216);
            v23 = v21 + 432;
            v21 += 216;
          }

          while (v23 != v4);
          result = *(a2 + 64);
          v4 = v22;
        }

        while (result != v4)
        {
          result = sub_100E3A5D4(result - 216);
        }

        *(a2 + 64) = v4;
      }

      else
      {
LABEL_16:
        v3 += 216;
      }
    }

    while (v3 != v4);
  }

  return result;
}

void sub_100315D00(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  if (a1 != a2)
  {
    sub_10031A59C((a1 + 128), *(a2 + 128), *(a2 + 136), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 136) - *(a2 + 128)) >> 4));
  }

  *(a1 + 120) = *(a2 + 120);
}

void sub_100315D88(uint64_t a1)
{
  v1 = *(a1 + 376);
  v2 = *(a1 + 384);
  while (v1 != v2)
  {
    v3 = *(v1 + 56);
    if (v3 != (v1 + 64))
    {
      do
      {
        sub_10092C8F4(&v7, v3 + 7, v3 + 19);
        if (*(v3 + 79) < 0)
        {
          operator delete(v3[7]);
        }

        *(v3 + 7) = v7;
        v3[9] = v8;
        v4 = v3[1];
        if (v4)
        {
          do
          {
            v5 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v5 = v3[2];
            v6 = *v5 == v3;
            v3 = v5;
          }

          while (!v6);
        }

        v3 = v5;
      }

      while (v5 != (v1 + 64));
    }

    v1 += 80;
  }
}

uint64_t sub_100315E44(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a1 + 240) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 200);
  v4 = *(a1 + 208);
  if (v3 == v4)
  {
    return 0;
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  while (1)
  {
    if (*(v3 + 80) == 1)
    {
      v9 = *(v3 + 56);
      v10 = *(v3 + 64);
      if (v9 != v10)
      {
        break;
      }
    }

LABEL_20:
    v3 += 88;
    if (v3 == v4)
    {
      return 0;
    }
  }

  v11 = v9 + 8;
  while (1)
  {
    data = v11[-7].__r_.__value_.__s.__data_[15];
    v13 = data;
    if (data < 0)
    {
      data = v11[-7].__r_.__value_.__l.__data_;
    }

    if (data == v7)
    {
      v14 = v13 >= 0 ? &v11[-8].__r_.__value_.__r.__words[2] : v11[-8].__r_.__value_.__r.__words[2];
      if (!memcmp(v14, v8, v7))
      {
        break;
      }
    }

    v15 = v11 + 1;
    v11 += 9;
    if (v15 == v10)
    {
      goto LABEL_20;
    }
  }

  *a3 = *&v11[-8].__r_.__value_.__l.__data_;
  std::string::operator=((a3 + 16), (v11 - 176));
  std::string::operator=((a3 + 40), (v11 - 152));
  std::string::operator=((a3 + 64), (v11 - 128));
  v17 = v11[-5].__r_.__value_.__s.__data_[20];
  *(a3 + 88) = v11[-5].__r_.__value_.__r.__words[2];
  *(a3 + 92) = v17;
  std::string::operator=((a3 + 96), v11 - 4);
  std::string::operator=((a3 + 120), v11 - 3);
  std::string::operator=((a3 + 144), v11 - 2);
  std::string::operator=((a3 + 168), v11 - 1);
  std::string::operator=((a3 + 192), v11);
  return 1;
}

uint64_t sub_100315FB0(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a1 + 240) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 200);
  v4 = *(a1 + 208);
  if (v3 != v4)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    do
    {
      if (*(v3 + 80) == 1)
      {
        v9 = *(v3 + 56);
        v10 = *(v3 + 64);
        while (v9 != v10)
        {
          v11 = *(v9 + 39);
          v12 = v11;
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(v9 + 24);
          }

          if (v11 == v7)
          {
            v13 = v12 >= 0 ? (v9 + 16) : *(v9 + 16);
            if (!memcmp(v13, v8, v7))
            {
              v15 = *(v3 + 16);
              *a3 = *v3;
              *(a3 + 16) = v15;
              std::string::operator=((a3 + 32), (v3 + 32));
              sub_1001148D8(a3 + 56, v3 + 56);
              return 1;
            }
          }

          v9 += 216;
        }
      }

      v3 += 88;
    }

    while (v3 != v4);
  }

  return 0;
}

uint64_t sub_1003160B8(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *(a1 + 376);
  v4 = *(a1 + 384);
  if (v3 == v4)
  {
    return 0;
  }

  while (1)
  {
    v7 = sub_100007A6C(v3 + 56, a2);
    if (v3 + 64 != v7)
    {
      break;
    }

    v3 += 80;
    if (v3 == v4)
    {
      return 0;
    }
  }

  sub_10031612C(a3, v7 + 56);
  return 1;
}

__n128 sub_10031612C(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 144), (a2 + 144));
  *(a1 + 168) = *(a2 + 168);
  sub_10012BF3C((a1 + 176), (a2 + 176));
  sub_10012BF3C((a1 + 208), (a2 + 208));
  sub_10012BF3C((a1 + 240), (a2 + 240));
  sub_10012BF3C((a1 + 272), (a2 + 272));
  sub_10012BF3C((a1 + 304), (a2 + 304));
  *(a1 + 336) = *(a2 + 336);
  std::string::operator=((a1 + 344), (a2 + 344));
  v4 = *(a2 + 370);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 370) = v4;
  sub_10012BF3C((a1 + 376), (a2 + 376));
  result = *(a2 + 408);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 408) = result;
  return result;
}

uint64_t **sub_100316210(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 32);
  *a1 = *a2;
  v5 = (a1 + 32);
  std::string::operator=((a1 + 8), (a2 + 8));
  result = std::string::operator=(v5, v4);
  if (a1 != a2)
  {
    v7 = *(a2 + 56);

    return sub_10031A77C((a1 + 56), v7, (a2 + 64));
  }

  return result;
}

char *sub_1003162A0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[240] == 1)
  {
    if (result[55] < 0)
    {
      return sub_100005F2C(a2, *(result + 4), *(result + 5));
    }

    else
    {
      *a2 = *(result + 2);
      *(a2 + 16) = *(result + 6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_1003162E0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 240);
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  if (v3 == 1)
  {
    v4 = *(result + 200);
    v5 = *(result + 208);
    while (1)
    {
      if (v4 == v5)
      {
        return result;
      }

      if (*(v4 + 80) == 1)
      {
        break;
      }

LABEL_13:
      v4 += 88;
    }

    v6 = *(v4 + 56);
    v7 = *(v4 + 64);
    while (1)
    {
      if (v6 == v7)
      {
        goto LABEL_13;
      }

      if ((*(v6 + 39) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(v6 + 39))
      {
        goto LABEL_11;
      }

LABEL_12:
      v6 += 216;
    }

    if (!*(v6 + 24))
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_100005BA0(a2, (v6 + 16));
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1003163A0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(result + 376);
  v4 = *(result + 384);
  while (v3 != v4)
  {
    if ((*(v3 + 31) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 16))
      {
        goto LABEL_8;
      }

LABEL_7:
      result = sub_100005BA0(a2, (v3 + 8));
      goto LABEL_8;
    }

    if (*(v3 + 31))
    {
      goto LABEL_7;
    }

LABEL_8:
    v3 += 80;
  }

  return result;
}

void sub_100316428(uint64_t a1@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 240);
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (v4 == 1)
  {
    v5 = *(a1 + 200);
    v6 = *(a1 + 208);
    while (v5 != v6)
    {
      if (*(v5 + 16) != 0)
      {
        sub_100922314((v5 + 16), a2, __p);
        sub_10017695C(a3, __p);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v5 += 88;
    }
  }
}

char *sub_10031651C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[240] & 1) != 0 && (result[56])
  {
    if (result[87] < 0)
    {
      return sub_100005F2C(a2, *(result + 8), *(result + 9));
    }

    else
    {
      *a2 = *(result + 4);
      *(a2 + 16) = *(result + 10);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

_BYTE *sub_100316560@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (result[343] < 0)
  {
    v2 = *(result + 41);
    if (v2)
    {
      return sub_100005F2C(a2, *(result + 40), v2);
    }
  }

  else if (result[343])
  {
    *a2 = *(result + 20);
    *(a2 + 16) = *(result + 42);
    return result;
  }

  return sub_10000501C(a2, "iPhone");
}

void sub_1003165A4(uint64_t a1, const void **a2)
{
  v2 = a2;
  if (*(a1 + 240) == 1)
  {
    if (*a1 == 1)
    {
      v4 = *(a1 + 31);
      if (v4 >= 0)
      {
        v5 = *(a1 + 31);
      }

      else
      {
        v5 = *(a1 + 16);
      }

      v6 = *(a2 + 23);
      v7 = v6;
      if (v6 < 0)
      {
        v6 = a2[1];
      }

      if (v5 == v6)
      {
        v8 = *(a1 + 8);
        if (v4 >= 0)
        {
          v9 = (a1 + 8);
        }

        else
        {
          v9 = *(a1 + 8);
        }

        if (v7 < 0)
        {
          a2 = *a2;
        }

        if (!memcmp(v9, a2, v5))
        {
          if (v4 < 0)
          {
            operator delete(v8);
          }

          *a1 = 0;
        }
      }
    }

    v10 = *(a1 + 200);
    v11 = *(a1 + 208);
    while (v10 != v11)
    {
      if (*(v10 + 80) == 1)
      {
        v12 = *(v10 + 56);
        v13 = *(v10 + 64);
        if (v12 != v13)
        {
          v14 = *(v2 + 23);
          if (v14 >= 0)
          {
            v15 = *(v2 + 23);
          }

          else
          {
            v15 = v2[1];
          }

          if (v14 >= 0)
          {
            v16 = v2;
          }

          else
          {
            v16 = *v2;
          }

          while (1)
          {
            v17 = *(v12 + 39);
            v18 = v17;
            if ((v17 & 0x80u) != 0)
            {
              v17 = *(v12 + 24);
            }

            if (v17 == v15)
            {
              v19 = v18 >= 0 ? (v12 + 16) : *(v12 + 16);
              if (!memcmp(v19, v16, v15))
              {
                break;
              }
            }

            v12 += 216;
            if (v12 == v13)
            {
              v12 = v13;
              goto LABEL_55;
            }
          }

          if (v12 != v13)
          {
            v20 = v12 + 216;
            if (v12 + 216 != v13)
            {
              do
              {
                v21 = *(v20 + 39);
                if (v21 >= 0)
                {
                  v22 = *(v20 + 39);
                }

                else
                {
                  v22 = *(v20 + 24);
                }

                v23 = *(v2 + 23);
                v24 = v23;
                if (v23 < 0)
                {
                  v23 = v2[1];
                }

                if (v22 != v23 || (v21 >= 0 ? (v25 = (v20 + 16)) : (v25 = *(v20 + 16)), v24 >= 0 ? (v26 = v2) : (v26 = *v2), memcmp(v25, v26, v22)))
                {
                  sub_100F11BEC(v12, v20);
                  v12 += 216;
                }

                v20 += 216;
              }

              while (v20 != v13);
              v13 = *(v10 + 64);
            }
          }
        }

LABEL_55:
        sub_1003167A8(v10 + 56, v12, v13);
      }

      v10 += 88;
    }
  }

  v28 = *(a1 + 376);
  v27 = *(a1 + 384);
  while (v28 != v27)
  {
    sub_10031B778((v28 + 56), v2);
    v28 += 80;
  }
}