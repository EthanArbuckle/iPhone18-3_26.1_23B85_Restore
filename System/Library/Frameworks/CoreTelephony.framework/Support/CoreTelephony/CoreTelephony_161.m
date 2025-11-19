void sub_1013BEAAC(uint64_t a1)
{
  *a1 = off_101F33D38;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_1013BEBB8(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_101F33D38;
  *(a2 + 8) = v2;
  if (result[39] < 0)
  {
    return sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  v3 = *(result + 1);
  *(a2 + 32) = *(result + 4);
  *(a2 + 16) = v3;
  return result;
}

void sub_1013BEC04(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1013BEC18(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_1013BEC5C(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v7 = *a3;
  v6 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v9 = *a4;
  v8 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v10 = *(a1 + 8);
  v11 = *(v10 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v12)
    {
      v13 = (v7 + 152);
      v14 = *(v7 + 175);
      v15 = v14 < 0;
      if (v14 >= 0)
      {
        v16 = *(v7 + 175);
      }

      else
      {
        v16 = *(v7 + 160);
      }

      if (v15)
      {
        v13 = *(v7 + 152);
      }

      v17 = "<invalid>";
      if (!v16)
      {
        v13 = "<invalid>";
      }

      if (v9)
      {
        v18 = (v9 + 152);
        v19 = *(v9 + 175);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v9 + 160);
        }

        if (v20 < 0)
        {
          v18 = *(v9 + 152);
        }

        if (v19)
        {
          v17 = v18;
        }
      }

      else
      {
        v17 = "";
      }

      v26 = 136315906;
      v27 = "";
      v28 = 2080;
      v29 = "";
      v30 = 2080;
      v31 = v13;
      v32 = 2080;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s'%s' resolved to '%s'", &v26, 0x2Au);
    }

    sub_1013AD35C(v10, v7 + 152, v9 + 152);
  }

  else if (v12)
  {
    v23 = *(a1 + 16);
    v22 = a1 + 16;
    v21 = v23;
    v24 = *(v22 + 23);
    v25 = (v24 & 0x80u) != 0;
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v22 + 8);
    }

    if (!v25)
    {
      v21 = v22;
    }

    v26 = 136315650;
    v27 = "";
    if (!v24)
    {
      v21 = "<invalid>";
    }

    v28 = 2080;
    v29 = "";
    v30 = 2080;
    v31 = v21;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s'%s' resolution canceled", &v26, 0x20u);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1013BEE64(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013BEE88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013BEED4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1013BEF6C(uint64_t a1)
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

void *sub_1013BEFEC(void *a1)
{
  *a1 = off_101F33DC8;
  sub_1013BEF6C((a1 + 2));
  return a1;
}

void sub_1013BF030(void *a1)
{
  *a1 = off_101F33DC8;
  sub_1013BEF6C((a1 + 2));

  operator delete();
}

uint64_t sub_1013BF110(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F33DC8;
  a2[1] = v2;
  return sub_1013BEED4((a2 + 2), a1 + 16);
}

void sub_1013BF148(void *a1)
{
  sub_1013BEF6C(a1 + 16);

  operator delete(a1);
}

void sub_1013BF184(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v7 = *a3;
  v6 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v9 = *a4;
  v8 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  if (v5 == 1)
  {
    sub_1013AD35C(*(a1 + 8), v7 + 152, v9 + 152);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = v5;
    (*(*v10 + 48))(v10, &v11, v7 + 152, v9 + 152);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v6)
  {

    sub_100004A34(v6);
  }
}

void sub_1013BF260(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013BF284(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1013BF2D0(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_1013AD35C(*v1, (v1 + 1), (v1 + 4));
  sub_10036FBEC(&v4);
  return sub_1000049E0(&v3);
}

void sub_1013BF31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10036FBEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013BF338(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  if (sub_1013ADE6C(*v1, v1 + 8, v1 + 32, 1))
  {
    v3 = v2[82];
    v4 = *v3;
    v5 = *(v3 + 8);
    if (*v3 != v5)
    {
      while (!sub_100071DF8((*v4 + 24), (v1 + 32)))
      {
        v4 += 2;
        if (v4 == v5)
        {
          v4 = v5;
          break;
        }
      }

      v5 = *(v3 + 8);
    }

    if (v4 != v5)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v7)
      {
        v8 = v2[5];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(v7 + 56);
          v10 = PersonalityInfo::logPrefix(v7);
          v11 = (v7 + 24);
          v12 = *(v7 + 47);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(v7 + 32);
          }

          if (v13 < 0)
          {
            v11 = *(v7 + 24);
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          if (!v12)
          {
            v11 = "<invalid>";
          }

          *&buf[14] = "";
          *&buf[22] = 1024;
          v22 = v9;
          v23 = 2080;
          *v24 = v10;
          *&v24[8] = 2080;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sInforming PersonalWallet for [%d] %s %s is updated", buf, 0x30u);
        }

        if (*(v1 + 55) < 0)
        {
          sub_100005F2C(__p, *(v1 + 32), *(v1 + 40));
        }

        else
        {
          *__p = *(v1 + 32);
          v19 = *(v1 + 48);
        }

        v20 = 5;
        if (SHIBYTE(v19) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
          v14 = v20;
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v19;
          v14 = 5;
        }

        LOBYTE(v22) = v14;
        *&v24[2] = v7;
        v25 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_101399700(v2, buf);
        if (v25)
        {
          sub_100004A34(v25);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v6)
      {
        sub_100004A34(v6);
      }
    }
  }

  sub_10036FBEC(&v17);
  return sub_1000049E0(&v16);
}

void sub_1013BF5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_10036FBEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1013BF66C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F33E48;
  a2[1] = v2;
  return result;
}

uint64_t sub_1013BF698(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  v8 = v7[5];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6 == 1)
  {
    if (v9)
    {
      v10 = *(a3 + 23);
      v11 = (v10 & 0x80u) != 0;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a3 + 8);
      }

      if (v11)
      {
        v12 = *a3;
      }

      else
      {
        v12 = a3;
      }

      if (v10)
      {
        v13 = v12;
      }

      else
      {
        v13 = "<invalid>";
      }

      v14 = *(a4 + 23);
      v15 = (v14 & 0x80u) != 0;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a4 + 8);
      }

      if (v15)
      {
        v16 = *a4;
      }

      else
      {
        v16 = a4;
      }

      if (v14)
      {
        v17 = v16;
      }

      else
      {
        v17 = "<invalid>";
      }

      v26 = 136315906;
      v27 = "";
      v28 = 2080;
      v29 = "";
      v30 = 2080;
      v31 = v13;
      v32 = 2080;
      v33 = v17;
      v18 = "#I %s%s'%s' resolved to '%s'";
      v19 = v8;
      v20 = 42;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v26, v20);
    }
  }

  else if (v9)
  {
    v21 = *(a3 + 23);
    v22 = (v21 & 0x80u) != 0;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a3 + 8);
    }

    if (v22)
    {
      v23 = *a3;
    }

    else
    {
      v23 = a3;
    }

    if (v21)
    {
      v24 = v23;
    }

    else
    {
      v24 = "<invalid>";
    }

    v26 = 136315650;
    v27 = "";
    v28 = 2080;
    v29 = "";
    v30 = 2080;
    v31 = v24;
    v18 = "#I %s%s'%s' resolution canceled";
    v19 = v8;
    v20 = 32;
    goto LABEL_30;
  }

  return sub_10139D3B8(v7);
}

uint64_t sub_1013BF848(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1013BF894(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = *(v3 + 32);
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void sub_1013BFA74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F33ED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1013BFAD4(void *a1)
{
  if (a1)
  {
    sub_1013BFAD4(*a1);
    sub_1013BFAD4(a1[1]);
    sub_1000F02B4((a1 + 4));

    operator delete(a1);
  }
}

uint64_t *sub_1013BFB28(void **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  (*(**(*v1 + 1200) + 72))(v6);
  v2 = v1[7];
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v6);
  v7 = v6;
  sub_100222314(&v7);
  sub_1013BFC18(&v5);
  return sub_1000049E0(&v4);
}

void sub_1013BFBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1013BFC18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013BFC18(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100A21F64(v1 + 32);
    v2 = (v1 + 8);
    sub_1001C6984(&v2);
    operator delete();
  }

  return result;
}

const void **sub_1013BFC80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = 0;
  a2[1] = 0;
  v3 = *v2;
  theString1 = 0;
  (*(**(v3 + 120) + 24))(&cf);
  v10 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v9 = 0;
  *&v6 = 0;
  sub_100060DE8(&v6, &v10);
  if (v6)
  {
    sub_100222570(&v9, &v6);
  }

  sub_100005978(&v6);
  v4 = v9;
  theString1 = v9;
  v9 = 0;
  sub_100005978(&v9);
  sub_10000A1EC(&v10);
  sub_10000A1EC(&cf);
  if (v4)
  {
    if (CFStringCompare(v4, @"cloud", 0) == kCFCompareEqualTo)
    {
      sub_1013922EC();
    }

    if (CFStringCompare(theString1, @"sim", 0) == kCFCompareEqualTo)
    {
      sub_101391C0C();
    }
  }

  return sub_100005978(&theString1);
}

void sub_1013BFDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_1013BFE18(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1013BFE80(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

uint64_t *sub_1013BFEE8(void **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v4 = *v1;
  v2 = (v1 + 1);
  v3 = v4;
  v5 = sub_100007A6C(v4 + 880, v2);
  if (v4 + 888 != v5)
  {
    v13 = 0;
    v14 = @"unique-sim-label-store";
    __p = 0;
    v12 = 0;
    sub_10005B328(&__p, &v14, &v15, 1uLL);
    v7 = (v5 + 104);
    if (*(v5 + 127) < 0)
    {
      v7 = *v7;
    }

    sub_10071C520(*(v3 + 104), v7, &__p, 0, v6);
    sub_100D7A2B0((v3 + 880), v5);
    sub_10017050C(v5 + 32);
    operator delete(v5);
    sub_10139C67C(v3, "historical personality removed", 0);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  (*(**(v3 + 120) + 112))(*(v3 + 120), v2);
  sub_1000EF424(&v10);
  return sub_1000049E0(&v9);
}

void sub_1013C002C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_1000EF424(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013C0060(void *a1)
{
  v11 = a1;
  v1 = *a1;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  (*(**(v1 + 120) + 80))(&v15);
  v2 = v15;
  for (i = v16; v2 != i; v2 += 3)
  {
    theString1 = 0;
    (*(**(v1 + 120) + 24))(&v18);
    sub_100060DE8(&theString1, &v18);
    sub_10000A1EC(&v18);
    if (theString1 && CFStringCompare(theString1, @"sim", 0) == kCFCompareEqualTo)
    {
      if (v1 + 888 == sub_100007A6C(v1 + 880, v2))
      {
        (*(**(v1 + 120) + 112))(*(v1 + 120), v2);
      }

      else
      {
        theDict = 0;
        v13 = 0;
        (*(**(v1 + 120) + 24))(&v18);
        sub_100010180(&theDict, &v18);
        sub_10000A1EC(&v18);
        if (theDict)
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            v5 = v13;
            v13 = Mutable;
            v18 = v5;
            sub_1000296E0(&v18);
          }

          Value = CFDictionaryGetValue(theDict, @"type");
          if (Value)
          {
            CFDictionarySetValue(v13, @"type", Value);
          }

          v7 = CFDictionaryGetValue(theDict, @"label-id");
          if (v7)
          {
            CFDictionarySetValue(v13, @"label-id", v7);
          }

          v8 = CFDictionaryGetValue(theDict, @"mdn");
          if (v8)
          {
            CFDictionarySetValue(v13, @"mdn", v8);
          }

          v9 = CFDictionaryGetValue(theDict, @"esim");
          if (v9)
          {
            CFDictionarySetValue(v13, @"esim", v9);
          }
        }

        sub_10001021C(&theDict);
        (*(**(v1 + 120) + 112))(*(v1 + 120), v2);
        if (v13)
        {
          (*(**(v1 + 120) + 88))(*(v1 + 120), v2);
          (*(**(v1 + 120) + 16))(*(v1 + 120), v2, @"info", v13, 0, 0, 0, 0);
        }

        sub_1000296E0(&v13);
      }
    }

    sub_100005978(&theString1);
  }

  sub_10071C340(*(v1 + 104), @"AdandonedSims", 0, 0);
  v18 = &v15;
  sub_10005AAF8(&v18);
  return sub_100146328(&v11);
}

void sub_1013C03F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_10005AAF8(&a16);
  sub_100146328(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013C047C(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v11 = *(v1 + 24);
    *__p = v3;
  }

  os_unfair_lock_lock((v2 + 608));
  if (v2 + 624 == sub_100007A6C(v2 + 616, __p))
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HIBYTE(v11);
      if (v11 < 0)
      {
        v5 = __p[1];
      }

      v6 = __p;
      if (v11 < 0)
      {
        v6 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "";
      if (!v5)
      {
        v6 = "<invalid>";
      }

      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sMarked SIM %s as abandoned", buf, 0x20u);
    }

    sub_1013B6F4C(v2 + 616, __p);
    sub_101393188(v2, (v2 + 616), @"AdandonedSims", "adandoned-sims-list", 1);
    os_unfair_lock_unlock((v2 + 608));
    memset(buf, 0, sizeof(buf));
    sub_101393E20(v2, buf);
    v12 = buf;
    sub_1013B1D50(&v12);
    sub_1013AD8B4(v2, __p);
  }

  else
  {
    os_unfair_lock_unlock((v2 + 608));
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000EF424(&v9);
  return sub_1000049E0(&v8);
}

void sub_1013C064C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013C06AC(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v11 = *(v1 + 24);
    *__p = v3;
  }

  os_unfair_lock_lock((v2 + 608));
  if (v2 + 624 == sub_100007A6C(v2 + 616, __p))
  {
    os_unfair_lock_unlock((v2 + 608));
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HIBYTE(v11);
      if (v11 < 0)
      {
        v5 = __p[1];
      }

      v6 = __p;
      if (v11 < 0)
      {
        v6 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "";
      if (!v5)
      {
        v6 = "<invalid>";
      }

      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sUnMarked SIM %s as abandoned", buf, 0x20u);
    }

    sub_1000727F0((v2 + 616), __p);
    sub_101393188(v2, (v2 + 616), @"AdandonedSims", "adandoned-sims-list", 1);
    os_unfair_lock_unlock((v2 + 608));
    memset(buf, 0, sizeof(buf));
    sub_101393E20(v2, buf);
    v12 = buf;
    sub_1013B1D50(&v12);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000EF424(&v9);
  return sub_1000049E0(&v8);
}

void sub_1013C086C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013C08C4(uint64_t *a1)
{
  v1 = *a1;
  v68 = a1;
  v69 = v1;
  v2 = *v1;
  theString1 = 0;
  v3 = (v1 + 40);
  if (*(v1 + 40))
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *v74 = 0u;
    v75 = 0;
    v4 = v2[110];
    v5 = v2 + 111;
    if (v4 != v2 + 111)
    {
      v6 = HIBYTE(v75);
      if (v75 >= 0)
      {
        v7 = HIBYTE(v75);
      }

      else
      {
        v7 = v74[1];
      }

      while (1)
      {
        v8 = *(v4 + 127);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = v4[14];
        }

        if (v8 == v7)
        {
          v10 = v9 >= 0 ? v4 + 13 : v4[13];
          if (!memcmp(v10, v74, v7))
          {
            break;
          }
        }

        v11 = v4[1];
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
            v12 = v4[2];
            v13 = *v12 == v4;
            v4 = v12;
          }

          while (!v13);
        }

        v4 = v12;
        if (v12 == v5)
        {
          goto LABEL_19;
        }
      }

      sub_100222570(&theString1, (v1 + 40));
      v29 = v2[5];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *v3;
        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2114;
        v83 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%slabel %{public}@ exists, nothing to resolve", buf, 0x20u);
      }

      goto LABEL_102;
    }

LABEL_19:
    theDict = 0;
    sub_100061A94(@"label-remap-history", kDevicePersistentStoreDataArchive, 0, buf);
    sub_100010180(&theDict, buf);
    sub_10000A1EC(buf);
    if (!theDict)
    {
      goto LABEL_81;
    }

    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v15;
      if (!v14)
      {
        v14 = *v3;
      }

      Value = CFDictionaryGetValue(theDict, v14);
      v15 = Value;
      if (!Value)
      {
        break;
      }

      v18 = CFGetTypeID(Value);
      if (v18 != CFDictionaryGetTypeID())
      {
        break;
      }

      v19 = CFDictionaryGetValue(v15, @"to");
      v14 = v19;
      if (!v19)
      {
        break;
      }

      v20 = CFGetTypeID(v19);
    }

    while (v20 == CFStringGetTypeID());
    if (!v16)
    {
      goto LABEL_81;
    }

    v21 = CFDictionaryGetValue(v16, @"to");
    v22 = v21;
    if (v21)
    {
      v23 = CFGetTypeID(v21);
      if (v23 != CFStringGetTypeID())
      {
        v22 = 0;
      }
    }

    v24 = CFDictionaryGetValue(v16, @"action");
    v25 = v24;
    if (v24)
    {
      v26 = CFGetTypeID(v24);
      if (v26 == CFStringGetTypeID())
      {
        v27 = v25;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v31 = CFDictionaryGetValue(v16, @"ts");
    v32 = v31;
    if (v31)
    {
      v33 = CFGetTypeID(v31);
      if (v33 == CFNumberGetTypeID())
      {
        v34 = v32;
      }

      else
      {
        v34 = 0;
      }

      v67 = v34;
    }

    else
    {
      v67 = 0;
    }

    memset(buf, 0, sizeof(buf));
    v35 = v22;
    ctu::cf::assign();
    v79 = *&buf[16];
    *__p = *buf;
    v36 = v2[110];
    v37 = HIBYTE(*&buf[16]);
    if (v36 == v5)
    {
      v46 = 0;
      if ((buf[23] & 0x80) == 0)
      {
LABEL_72:
        v47 = v2[5];
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
        if (v46)
        {
          if (v48)
          {
            v50 = *v3;
            __p[0] = 0;
            ctu::cf::assign(__p, v67, v49);
            *buf = 136316418;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2114;
            v83 = v50;
            v84 = 2114;
            v85 = v35;
            v86 = 2114;
            v87 = v27;
            v88 = 2048;
            v89 = __p[0];
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s%sfound evolved %{public}@ -> %{public}@ [%{public}@, %ld]", buf, 0x3Eu);
          }

          *buf = v35;
          sub_10021D11C(&theString1, buf);
LABEL_101:
          sub_10001021C(&theDict);
          v6 = HIBYTE(v75);
LABEL_102:
          if (v6 < 0)
          {
            operator delete(v74[0]);
          }

          goto LABEL_104;
        }

        if (v48)
        {
          v51 = *v3;
          if (v67)
          {
            __p[0] = 0;
            ctu::cf::assign(__p, v67, v49);
            v52 = __p[0];
          }

          else
          {
            v52 = 0;
          }

          *buf = 136316418;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2114;
          v83 = v51;
          v84 = 2114;
          v85 = v35;
          v86 = 2114;
          v87 = v27;
          v88 = 2048;
          v89 = v52;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#W %s%sfound evolved %{public}@ -> but MISSING %{public}@ [%{public}@, %ld] - ignored", buf, 0x3Eu);
        }

LABEL_81:
        if (v2[112] == 1)
        {
          v53 = v2[110];
          if (*(v53 + 127) < 0)
          {
            sub_100005F2C(__dst, *(v53 + 104), *(v53 + 112));
          }

          else
          {
            *__dst = *(v53 + 104);
            v71 = *(v53 + 120);
          }

          if (SHIBYTE(v71) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v79 = v71;
          }

          v77 = 0;
          if (SHIBYTE(v79) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v79;
          }

          v80 = 0;
          if (ctu::cf::convert_copy())
          {
            v54 = v77;
            v77 = v80;
            v81 = v54;
            sub_100005978(&v81);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          v72 = v77;
          v77 = 0;
          sub_100005978(&v77);
          if (SHIBYTE(v79) < 0)
          {
            operator delete(__p[0]);
          }

          *buf = theString1;
          theString1 = v72;
          v72 = 0;
          sub_100005978(buf);
          sub_100005978(&v72);
          if (SHIBYTE(v71) < 0)
          {
            operator delete(__dst[0]);
          }

          v55 = v2[5];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *v3;
            *buf = 136315906;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2114;
            v83 = theString1;
            v84 = 2114;
            v85 = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%sgiving out the ONLY existing label %{public}@ as a replacement for unknown %{public}@", buf, 0x2Au);
          }
        }

        goto LABEL_101;
      }
    }

    else
    {
      v38 = v27;
      if ((buf[23] & 0x80u) == 0)
      {
        v39 = HIBYTE(*&buf[16]);
      }

      else
      {
        v39 = __p[1];
      }

      if ((buf[23] & 0x80u) == 0)
      {
        v40 = __p;
      }

      else
      {
        v40 = __p[0];
      }

      while (1)
      {
        v41 = *(v36 + 127);
        v42 = v41;
        if (v41 < 0)
        {
          v41 = v36[14];
        }

        if (v41 == v39)
        {
          v43 = v42 >= 0 ? v36 + 13 : v36[13];
          if (!memcmp(v43, v40, v39))
          {
            break;
          }
        }

        v44 = v36[1];
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = v36[2];
            v13 = *v45 == v36;
            v36 = v45;
          }

          while (!v13);
        }

        v36 = v45;
        if (v45 == v5)
        {
          v46 = 0;
          goto LABEL_70;
        }
      }

      v46 = 1;
LABEL_70:
      v27 = v38;
      if ((v37 & 0x80) == 0)
      {
        goto LABEL_72;
      }
    }

    operator delete(__p[0]);
    goto LABEL_72;
  }

  v28 = v2[5];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#W %s%sgetEvolvedLabelID called with empty parameter", buf, 0x16u);
  }

LABEL_104:
  v57 = v2[5];
  v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
  v59 = theString1;
  if (v58)
  {
    v60 = *v3;
    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2114;
    v83 = v60;
    v84 = 2114;
    v85 = theString1;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I %s%sgetEvolvedLabelID, %{public}@ -> %{public}@", buf, 0x2Au);
    v59 = theString1;
  }

  sub_1009F4D28(v1 + 8, v59);
  if (theString1 && CFStringCompare(theString1, *v3, 0))
  {
    if ((atomic_load_explicit(&qword_101FCA9A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA9A0))
    {
      qword_101FCA998 = 0;
      __cxa_atexit(sub_1013AB28C, &qword_101FCA998, &_mh_execute_header);
      __cxa_guard_release(&qword_101FCA9A0);
    }

    if (!qword_101FCA998 || !CFDictionaryContainsKey(qword_101FCA998, *v3))
    {
      v61 = v2[5];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = *v3;
        *buf = 136315906;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2114;
        v83 = v62;
        v84 = 2114;
        v85 = theString1;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s%sgetEvolvedLabelID, execute ReMap %{public}@ -> %{public}@", buf, 0x2Au);
      }

      v63 = v2[150];
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *__p = *buf;
      v79 = *&buf[16];
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *v74 = *buf;
      v75 = *&buf[16];
      (*(*v63 + 24))(v63, __p, v74);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74[0]);
      }

      if (SHIBYTE(v79) < 0)
      {
        operator delete(__p[0]);
      }

      v64 = qword_101FCA998;
      if (!qword_101FCA998)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v64 = qword_101FCA998;
        if (Mutable)
        {
          qword_101FCA998 = Mutable;
          *buf = v64;
          sub_1000296E0(buf);
          v64 = qword_101FCA998;
        }
      }

      CFDictionarySetValue(v64, *v3, theString1);
    }
  }

  sub_100005978(&theString1);
  sub_1013C1410(&v69);
  return sub_1000049E0(&v68);
}

void sub_1013C12DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, const void *a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_10001021C(&a21);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_100005978(&a29);
  sub_1013C1410(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013C1410(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100005978((v1 + 40));
    sub_1009F1654(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_1013C1468()
{
  sub_10000501C(&xmmword_101FCA9A8, "00000000-0000-0000-0000-000000000000");
  __cxa_atexit(&std::string::~string, &xmmword_101FCA9A8, &_mh_execute_header);
  sub_10000501C(&xmmword_101FCA9C0, "10101010-1010-1010-1010-101010101010");

  return __cxa_atexit(&std::string::~string, &xmmword_101FCA9C0, &_mh_execute_header);
}

void sub_1013C14F8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void *sub_1013C1580(void *a1, void *a2)
{
  v4 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "reg.fallback");
  ctu::OsLogLogger::OsLogLogger(v8, &v7);
  ctu::OsLogLogger::OsLogLogger(v4, v8);
  ctu::OsLogLogger::~OsLogLogger(v8);
  ctu::OsLogContext::~OsLogContext(&v7);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101F33F88;
  v5 = a2[1];
  a1[4] = *a2;
  a1[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  a1[10] = 0;
  return a1;
}

void sub_1013C165C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  RegistrationTcpFallbackInterface::~RegistrationTcpFallbackInterface(v2);
  _Unwind_Resume(a1);
}

void sub_1013C1690(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1001210EC(a1 + 7, a3);
  v4 = a1[3];
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
  {
    sub_100013CC4();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v5);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  a1[6] = tcp_connection_fallback_watcher_create();
  std::__shared_weak_count::__release_weak(v6);
  std::__shared_weak_count::__release_weak(v6);
}

void sub_1013C177C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void sub_1013C179C(void *a1)
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
        v6 = tcp_fallback_watcher_fallback_inuse();
        if (*(v3 + 80))
        {
          sub_10000FFD0(v3 + 56, v6);
        }

        else
        {
          v7 = *(v3 + 8);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *v8 = 0;
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Missing callback!", v8, 2u);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1013C1868(uint64_t result, uint64_t a2)
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

void sub_1013C1884(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1013C1894(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    result = tcp_connection_fallback_watcher_destroy();
    *(a1 + 48) = 0;
  }

  return result;
}

void sub_1013C18C4(void *a1)
{
  *a1 = off_101F33F88;
  sub_10000FF50((a1 + 7));
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  RegistrationTcpFallbackInterface::~RegistrationTcpFallbackInterface(a1);
}

void sub_1013C1938(void *a1)
{
  *a1 = off_101F33F88;
  sub_10000FF50((a1 + 7));
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  RegistrationTcpFallbackInterface::~RegistrationTcpFallbackInterface(a1);

  operator delete();
}

void sub_1013C1A40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013C1A7C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1013C1AB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1013C1AE4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1013C1B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0u;
  v11 = 0;
  v13 = 0;
  v12 = 0uLL;
  v15 = 0;
  v14 = 0u;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  __p = 0uLL;
  v25 = -1;
  v4 = *(a4 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, v5);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1013C1CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_1000490A0(&a35);
  sub_1000490A0(&a10);
  _Unwind_Resume(a1);
}

double sub_1013C1CD8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1013C1CF4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_1013C1D20(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1013C1D2C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1013C1D38(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1013C1D6C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1013C1D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1013C1DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013C1E08(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1013C1E14(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1013C1E20(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

const void **sub_1013C1E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v5);
  return sub_100005978(&v5);
}

void sub_1013C1EA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

const void **sub_1013C1EC4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = 0;
  v3 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10001021C(&v2);
  return sub_10001021C(&v3);
}

const void **sub_1013C1EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v5 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, v7);
  sub_10001021C(&v9);
  sub_10001021C(&v8);
  sub_10001021C(&v5);
  return sub_10001021C(&v6);
}

void sub_1013C1F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  v7 = va_arg(va2, void);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  sub_10001021C(va3);
  sub_10001021C(va2);
  sub_10001021C(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

const void **sub_1013C1FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v5);
  return sub_100005978(&v5);
}

void sub_1013C2040(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

const void **sub_1013C2058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v5);
  return sub_10001021C(&v5);
}

void sub_1013C20C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1013C20D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  v4 = *(a4 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1013C2148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013C2164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  v4 = *(a4 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1013C21D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013C223C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1013C224C(CarrierBundleInterface *a1)
{
  CarrierBundleInterface::~CarrierBundleInterface(a1);

  operator delete();
}

void sub_1013C2288(uint64_t a1)
{
  sub_1012EFBF4(a1);

  operator delete();
}

void sub_1013C2358(void *a1, uint64_t a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F342F8;
  sub_1012EF914((a1 + 3), a2, *a3);
}

void sub_1013C23F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F342F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1013C253C(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1013C2564(CellularUsageMetricsFactoryInterface *a1)
{
  CellularUsageMetricsFactoryInterface::~CellularUsageMetricsFactoryInterface(a1);

  operator delete();
}

void sub_1013C25BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F34388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1013C2638(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_100A5C398(&v2, &v1, "kVinylOperationSync", sub_1013C26B0, 15);
}

void sub_1013C26B0(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, xpc_object_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  v11 = "18VinylTestXpcServer";
  if (("18VinylTestXpcServer" & 0x8000000000000000) != 0)
  {
    v12 = ("18VinylTestXpcServer" & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  v334 = 0;
  v333 = 0;
  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v16 = v15[3];
    v17 = v15[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v333 = v16;
  v334 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v17);
  }

  if (v16)
  {
    object = 0;
    *buf = a4;
    *&buf[8] = "kVinylOperation";
    sub_100048A24(buf, &object);
    if (xpc_get_type(object) != &_xpc_type_dictionary)
    {
      ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
      v18 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "No Vinyl request present; dropping", buf, 2u);
      }

      goto LABEL_20;
    }

    if (xpc_dictionary_get_value(object, "kGetSlot"))
    {
      (**v16)(v16);
      v20 = VinylSlotIdToInt();
      v330 = xpc_int64_create(v20);
      if (!v330)
      {
        v330 = xpc_null_create();
      }

      *buf = *a5;
      *&buf[8] = "Slot";
      sub_10000F688(buf, &v330, &v331);
      xpc_release(v331);
      v331 = 0;
      xpc_release(v330);
      v330 = 0;
      goto LABEL_20;
    }

    if (xpc_dictionary_get_value(object, "kSetSlot"))
    {
      *buf = &object;
      *&buf[8] = "kSetSlot";
      sub_100006354(buf, &v347);
      v22 = xpc::dyn_cast_or_default(&v347, 0, v21);
      xpc_release(v347.__r_.__value_.__l.__data_);
      v23 = VinylSlotIdFromInt(v22);
      (*(*v16 + 8))(v16, v23);
      ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
      v24 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v25 = "Set Slot";
        v26 = v24;
        v27 = 2;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v25, buf, v27);
      }

LABEL_20:
      xpc_release(object);
      v17 = v334;
      goto LABEL_21;
    }

    if (xpc_dictionary_get_value(object, "kGetCsn"))
    {
      memset(buf, 0, sizeof(buf));
      LOBYTE(v339) = 0;
      (*(*v16 + 16))(buf, v16);
      if (buf[0] == 1)
      {
        v328 = xpc_data_create(&buf[1], 0x10uLL);
        if (!v328)
        {
          v328 = xpc_null_create();
        }

        v347.__r_.__value_.__r.__words[0] = *a5;
        v347.__r_.__value_.__l.__size_ = "CSN";
        sub_10000F688(&v347, &v328, &v329);
        xpc_release(v329);
        v329 = 0;
        xpc_release(v328);
        v328 = 0;
      }

      else
      {
        v326 = xpc_null_create();
        v347.__r_.__value_.__r.__words[0] = *a5;
        v347.__r_.__value_.__l.__size_ = "CSN";
        sub_10000F688(&v347, &v326, &v327);
        xpc_release(v327);
        v327 = 0;
        xpc_release(v326);
        v326 = 0;
      }

      goto LABEL_20;
    }

    if (xpc_dictionary_get_value(object, "kActivateProfile"))
    {
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      if (sub_1013C7664(&object, "kActivateProfile", buf))
      {
        v28 = BYTE7(v339);
        if (SBYTE7(v339) < 0)
        {
          sub_100005F2C(&__dst, *buf, *&buf[8]);
        }

        else
        {
          __dst = *buf;
          v325 = v339;
        }

        v30 = *a5;
        v29 = a5[1];
        if (v29)
        {
          atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
        }

        v346[0] = off_101F34538;
        v346[1] = v30;
        v346[2] = v29;
        v346[3] = v346;
        (*(*v16 + 32))(v16, &__dst, 1, v346);
        sub_100112FB8(v346);
        if ((SHIBYTE(v325) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        v31 = __dst;
        goto LABEL_82;
      }

      v322 = xpc_string_create("Invalid iccid format or length");
      if (!v322)
      {
        v322 = xpc_null_create();
      }

      v347.__r_.__value_.__r.__words[0] = *a5;
      v347.__r_.__value_.__l.__size_ = "kError";
      sub_10000F688(&v347, &v322, &v323);
      xpc_release(v323);
      v323 = 0;
      xpc_release(v322);
      v322 = 0;
LABEL_70:
      v28 = BYTE7(v339);
LABEL_83:
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      v41 = *buf;
LABEL_85:
      operator delete(v41);
      goto LABEL_20;
    }

    if (xpc_dictionary_get_value(object, "kUsableProfile"))
    {
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      if (!sub_1013C7664(&object, "kUsableProfile", buf))
      {
        v318 = xpc_string_create("Invalid iccid format or length");
        if (!v318)
        {
          v318 = xpc_null_create();
        }

        v347.__r_.__value_.__r.__words[0] = *a5;
        v347.__r_.__value_.__l.__size_ = "kError";
        sub_10000F688(&v347, &v318, &v319);
        xpc_release(v319);
        v319 = 0;
        xpc_release(v318);
        v318 = 0;
        goto LABEL_70;
      }

      v28 = BYTE7(v339);
      if (SBYTE7(v339) < 0)
      {
        sub_100005F2C(&v320, *buf, *&buf[8]);
      }

      else
      {
        v320 = *buf;
        v321 = v339;
      }

      v35 = *a5;
      v34 = a5[1];
      if (v34)
      {
        atomic_fetch_add_explicit(v34 + 1, 1uLL, memory_order_relaxed);
      }

      v345[0] = off_101F345B8;
      v345[1] = v35;
      v345[2] = v34;
      v345[3] = v345;
      (*(*v16 + 32))(v16, &v320, 2, v345);
      sub_100112FB8(v345);
      if ((SHIBYTE(v321) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v31 = v320;
LABEL_82:
      operator delete(v31);
      goto LABEL_83;
    }

    if (xpc_dictionary_get_value(object, "kDeactivateProfile"))
    {
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      if (!sub_1013C7664(&object, "kDeactivateProfile", buf))
      {
        v314 = xpc_string_create("Invalid iccid format or length");
        if (!v314)
        {
          v314 = xpc_null_create();
        }

        v347.__r_.__value_.__r.__words[0] = *a5;
        v347.__r_.__value_.__l.__size_ = "kError";
        sub_10000F688(&v347, &v314, &v315);
        xpc_release(v315);
        v315 = 0;
        xpc_release(v314);
        v314 = 0;
        goto LABEL_70;
      }

      v28 = BYTE7(v339);
      if (SBYTE7(v339) < 0)
      {
        sub_100005F2C(__p, *buf, *&buf[8]);
      }

      else
      {
        *__p = *buf;
        v317 = v339;
      }

      v40 = *a5;
      v39 = a5[1];
      if (v39)
      {
        atomic_fetch_add_explicit(v39 + 1, 1uLL, memory_order_relaxed);
      }

      v344[0] = off_101F34638;
      v344[1] = v40;
      v344[2] = v39;
      v344[3] = v344;
      (*(*v16 + 32))(v16, __p, 0, v344);
      sub_100112FB8(v344);
      if ((SHIBYTE(v317) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v31 = __p[0];
      goto LABEL_82;
    }

    if (xpc_dictionary_get_value(object, "kDeleteUserProfiles"))
    {
      v312[0] = _NSConcreteStackBlock;
      v312[1] = 3321888768;
      v312[2] = sub_1013C7774;
      v312[3] = &unk_101F343D8;
      v32 = a5[1];
      v312[4] = *a5;
      v313 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 48))(v16, v312);
      v33 = v313;
      if (!v313)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }

    if (xpc_dictionary_get_value(object, "kDeleteProfile"))
    {
      memset(buf, 0, sizeof(buf));
      if (!sub_1013C78B4(&object))
      {
        v308 = xpc_string_create("Invalid profile id format");
        if (!v308)
        {
          v308 = xpc_null_create();
        }

        v347.__r_.__value_.__r.__words[0] = *a5;
        v347.__r_.__value_.__l.__size_ = "kError";
        sub_10000F688(&v347, &v308, &v309);
        xpc_release(v309);
        v309 = 0;
        xpc_release(v308);
        v308 = 0;
        goto LABEL_20;
      }

      v36 = *buf;
      v37 = *&buf[8];
      v310[0] = _NSConcreteStackBlock;
      v310[1] = 3321888768;
      v310[2] = sub_1013C79BC;
      v310[3] = &unk_101F343D8;
      v38 = a5[1];
      v310[4] = *a5;
      v311 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 40))(v16, v36, v37, v310);
      v33 = v311;
      if (!v311)
      {
        goto LABEL_20;
      }

LABEL_61:
      sub_100004A34(v33);
      goto LABEL_20;
    }

    if (xpc_dictionary_get_value(object, "kGetProfiles"))
    {
      v306[0] = _NSConcreteStackBlock;
      v306[1] = 3321888768;
      v306[2] = sub_1013C7AFC;
      v306[3] = &unk_101F34408;
      v42 = a5[1];
      v306[4] = *a5;
      v307 = v42;
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 56))(v16, v306);
      v33 = v307;
      if (!v307)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }

    if (xpc_dictionary_get_value(object, "kForceGetProfiles"))
    {
      v304[0] = _NSConcreteStackBlock;
      v304[1] = 3321888768;
      v304[2] = sub_1013C7C28;
      v304[3] = &unk_101F34408;
      v43 = a5[1];
      v304[4] = *a5;
      v305 = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 64))(v16, v304);
      v33 = v305;
      if (!v305)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }

    v44 = a5[1];
    v303[0] = *a5;
    v303[1] = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = sub_1013C7EAC(&object, v303, &v333);
    if (v44)
    {
      sub_100004A34(v44);
    }

    if (v45)
    {
      goto LABEL_20;
    }

    if (xpc_dictionary_get_value(object, "kGetTapeEid"))
    {
      v301[0] = _NSConcreteStackBlock;
      v301[1] = 3321888768;
      v301[2] = sub_1013C80E8;
      v301[3] = &unk_101F34438;
      v46 = a5[1];
      v301[4] = *a5;
      v302 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 80))(v16, v301);
      v33 = v302;
      if (!v302)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }

    if (xpc_dictionary_get_value(object, "kDeleteTapeProfile"))
    {
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      if (sub_1013C7664(&object, "kDeleteTapeProfile", buf))
      {
        v28 = BYTE7(v339);
        if (SBYTE7(v339) < 0)
        {
          sub_100005F2C(v299, *buf, *&buf[8]);
        }

        else
        {
          *v299 = *buf;
          v300 = v339;
        }

        v297[0] = _NSConcreteStackBlock;
        v297[1] = 3321888768;
        v297[2] = sub_1013C81C8;
        v297[3] = &unk_101F343D8;
        v52 = a5[1];
        v297[4] = *a5;
        v298 = v52;
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v16 + 96))(v16, v299, v297);
        if (SHIBYTE(v300) < 0)
        {
          operator delete(v299[0]);
        }

        if (v298)
        {
          sub_100004A34(v298);
        }

        goto LABEL_83;
      }

      v295 = xpc_string_create("Invalid iccid format or length");
      if (!v295)
      {
        v295 = xpc_null_create();
      }

      v347.__r_.__value_.__r.__words[0] = *a5;
      v347.__r_.__value_.__l.__size_ = "kError";
      sub_10000F688(&v347, &v295, &v296);
      xpc_release(v296);
      v296 = 0;
      xpc_release(v295);
      v295 = 0;
      goto LABEL_70;
    }

    if (xpc_dictionary_get_value(object, "kForceGetTapeProfiles"))
    {
      v293[0] = _NSConcreteStackBlock;
      v293[1] = 3321888768;
      v293[2] = sub_1013C8378;
      v293[3] = &unk_101F34408;
      v47 = a5[1];
      v293[4] = *a5;
      v294 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 104))(v16, v293);
      v33 = v294;
      if (!v294)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }

    if (xpc_dictionary_get_value(object, "kSetNicknameTapeProfile"))
    {
      *(v203.__r_.__value_.__r.__words + 3) = 0;
      LODWORD(v203.__r_.__value_.__l.__data_) = 0;
      *(&v221 + 3) = 0;
      LODWORD(v221) = 0;
      __src.__r_.__value_.__r.__words[0] = 0;
      *buf = &object;
      *&buf[8] = "kIccid";
      sub_100006354(buf, &__src);
      if (xpc_get_type(__src.__r_.__value_.__l.__data_) == &_xpc_type_null)
      {
        v291 = xpc_string_create("Invalid iccid format");
        if (!v291)
        {
          v291 = xpc_null_create();
        }

        *buf = *a5;
        *&buf[8] = "kError";
        sub_10000F688(buf, &v291, &v292);
        xpc_release(v292);
        v292 = 0;
        xpc_release(v291);
        v54 = 0;
        v55 = 0;
        v50 = 0;
        v48 = 0;
        v291 = 0;
      }

      else
      {
        memset(buf, 0, sizeof(buf));
        *&v339 = 0;
        xpc::dyn_cast_or_default();
        if (SBYTE7(v339) < 0)
        {
          operator delete(*buf);
        }

        size = v347.__r_.__value_.__l.__size_;
        v48 = v347.__r_.__value_.__r.__words[0];
        LODWORD(v203.__r_.__value_.__l.__data_) = v347.__r_.__value_.__r.__words[2];
        *(v203.__r_.__value_.__r.__words + 3) = *(&v347.__r_.__value_.__r.__words[2] + 3);
        v50 = SHIBYTE(v347.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v347.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v51 = v347.__r_.__value_.__l.__size_;
          if (v347.__r_.__value_.__l.__size_ == 19)
          {
            goto LABEL_145;
          }
        }

        else
        {
          if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) == 19)
          {
            goto LABEL_145;
          }

          v51 = SHIBYTE(v347.__r_.__value_.__r.__words[2]);
        }

        if (v51 == 20)
        {
LABEL_145:
          *buf = &object;
          *&buf[8] = "kNickname";
          sub_100006354(buf, &v288);
          v56 = __src.__r_.__value_.__r.__words[0];
          __src.__r_.__value_.__r.__words[0] = v288;
          v288 = v56;
          xpc_release(v56);
          v288 = 0;
          if (xpc_get_type(__src.__r_.__value_.__l.__data_) == &_xpc_type_null)
          {
            v286 = xpc_string_create("Invalid nickname format");
            if (!v286)
            {
              v286 = xpc_null_create();
            }

            *buf = *a5;
            *&buf[8] = "kError";
            sub_10000F688(buf, &v286, &v287);
            xpc_release(v287);
            v287 = 0;
            xpc_release(v286);
            v54 = 0;
            v55 = 0;
            v286 = 0;
          }

          else
          {
            memset(buf, 0, sizeof(buf));
            *&v339 = 0;
            xpc::dyn_cast_or_default();
            if (SBYTE7(v339) < 0)
            {
              operator delete(*buf);
            }

            v57 = v347.__r_.__value_.__l.__size_;
            v55 = v347.__r_.__value_.__r.__words[0];
            LODWORD(v221) = v347.__r_.__value_.__r.__words[2];
            *(&v221 + 3) = *(&v347.__r_.__value_.__r.__words[2] + 3);
            v58 = HIBYTE(v347.__r_.__value_.__r.__words[2]);
            v54 = SHIBYTE(v347.__r_.__value_.__r.__words[2]);
            if ((v347.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v58 = v347.__r_.__value_.__l.__size_;
            }

            if (v58 < 0x41)
            {
              if (v50 < 0)
              {
                sub_100005F2C(v281, v48, size);
              }

              else
              {
                v281[0] = v48;
                v281[1] = size;
                *v282 = v203.__r_.__value_.__l.__data_;
                *&v282[3] = *(v203.__r_.__value_.__r.__words + 3);
                v283 = v50;
              }

              if (v54 < 0)
              {
                sub_100005F2C(v278, v55, v57);
              }

              else
              {
                v278[0] = v55;
                v278[1] = v57;
                *v279 = v221;
                *&v279[3] = *(&v221 + 3);
                v280 = v54;
              }

              v276[0] = _NSConcreteStackBlock;
              v276[1] = 3321888768;
              v276[2] = sub_1013C85FC;
              v276[3] = &unk_101F343D8;
              v61 = a5[1];
              v276[4] = *a5;
              v277 = v61;
              if (v61)
              {
                atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v16 + 88))(v16, v281, v278, v276);
              if (v280 < 0)
              {
                operator delete(v278[0]);
              }

              if (v283 < 0)
              {
                operator delete(v281[0]);
              }

              if (v277)
              {
                sub_100004A34(v277);
              }
            }

            else
            {
              v284 = xpc_string_create("Invalid nickname length");
              if (!v284)
              {
                v284 = xpc_null_create();
              }

              *buf = *a5;
              *&buf[8] = "kError";
              sub_10000F688(buf, &v284, &v285);
              xpc_release(v285);
              v285 = 0;
              xpc_release(v284);
              v284 = 0;
            }
          }

          goto LABEL_184;
        }

        v289 = xpc_string_create("Invalid iccid length");
        if (!v289)
        {
          v289 = xpc_null_create();
        }

        *buf = *a5;
        *&buf[8] = "kError";
        sub_10000F688(buf, &v289, &v290);
        xpc_release(v290);
        v290 = 0;
        xpc_release(v289);
        v54 = 0;
        v55 = 0;
        v289 = 0;
      }

LABEL_184:
      xpc_release(__src.__r_.__value_.__l.__data_);
      if (v54 < 0)
      {
        operator delete(v55);
      }

      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_187;
    }

    if (xpc_dictionary_get_value(object, "kGetTapeDeviceCapabilities"))
    {
      v274[0] = _NSConcreteStackBlock;
      v274[1] = 3321888768;
      v274[2] = sub_1013C87AC;
      v274[3] = &unk_101F34468;
      v53 = a5[1];
      v274[4] = *a5;
      v275 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 112))(v16, v274);
      v33 = v275;
      if (!v275)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }

    if (xpc_dictionary_get_value(object, "kGetTapeEuiccInfo1"))
    {
      v272[0] = _NSConcreteStackBlock;
      v272[1] = 3321888768;
      v272[2] = sub_1013C8A30;
      v272[3] = &unk_101F34468;
      v59 = a5[1];
      v272[4] = *a5;
      v273 = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 120))(v16, v272);
      v33 = v273;
      if (!v273)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }

    if (xpc_dictionary_get_value(object, "kGetSessionData"))
    {
      v270[0] = _NSConcreteStackBlock;
      v270[1] = 3321888768;
      v270[2] = sub_1013C8CB4;
      v270[3] = &unk_101F34408;
      v60 = a5[1];
      v270[4] = *a5;
      v271 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 168))(v16, v270);
      v33 = v271;
      if (!v271)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }

    if (xpc_dictionary_get_value(object, "kClearSessionData"))
    {
      memset(&v347, 0, sizeof(v347));
      __src.__r_.__value_.__r.__words[0] = &object;
      __src.__r_.__value_.__l.__size_ = "kClearSessionData";
      sub_100006354(&__src, &v203);
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      xpc::dyn_cast_or_default();
      if (SBYTE7(v339) < 0)
      {
        operator delete(*buf);
      }

      xpc_release(v203.__r_.__value_.__l.__data_);
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      ctu::parse_hex();
      ctu::OsLogContext::OsLogContext(&__src, kCtLoggingSystemName, "vinyl.test");
      v62 = __src.__r_.__value_.__l.__size_;
      ctu::OsLogContext::~OsLogContext(&__src);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__src.__r_.__value_.__l.__data_) = 134217984;
        *(__src.__r_.__value_.__r.__words + 4) = *&buf[8] - *buf;
        _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Clear Session Data txid size: %lu", &__src, 0xCu);
      }

      *v268 = *buf;
      v269 = v339;
      *&v339 = 0;
      memset(buf, 0, sizeof(buf));
      v266[0] = _NSConcreteStackBlock;
      v266[1] = 3321888768;
      v266[2] = sub_1013C8F38;
      v266[3] = &unk_101F343D8;
      v63 = a5[1];
      v266[4] = *a5;
      v267 = v63;
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 176))(v16, v268, v266);
      if (v268[0])
      {
        v268[1] = v268[0];
        operator delete(v268[0]);
      }

      if (v267)
      {
        sub_100004A34(v267);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      goto LABEL_201;
    }

    if (xpc_dictionary_get_value(object, "kGetTapeEuiccChallenge"))
    {
      v264[0] = _NSConcreteStackBlock;
      v264[1] = 3321888768;
      v264[2] = sub_1013C918C;
      v264[3] = &unk_101F34468;
      v64 = a5[1];
      v264[4] = *a5;
      v265 = v64;
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 128))(v16, v264);
      v33 = v265;
      if (!v265)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }

    if (xpc_dictionary_get_value(object, "kTapeGetAssociatedImei"))
    {
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      if (!sub_1013C7664(&object, "kTapeGetAssociatedImei", buf))
      {
        v260 = xpc_string_create("Invalid iccid format or length");
        if (!v260)
        {
          v260 = xpc_null_create();
        }

        v347.__r_.__value_.__r.__words[0] = *a5;
        v347.__r_.__value_.__l.__size_ = "kError";
        sub_10000F688(&v347, &v260, &v261);
        xpc_release(v261);
        v261 = 0;
        xpc_release(v260);
        v260 = 0;
        goto LABEL_70;
      }

      v28 = BYTE7(v339);
      if (SBYTE7(v339) < 0)
      {
        sub_100005F2C(&v262, *buf, *&buf[8]);
      }

      else
      {
        v262 = *buf;
        v263 = v339;
      }

      v72 = *a5;
      v71 = a5[1];
      if (v71)
      {
        atomic_fetch_add_explicit(v71 + 1, 1uLL, memory_order_relaxed);
      }

      v343[0] = off_101F346B8;
      v343[1] = v72;
      v343[2] = v71;
      v343[3] = v343;
      (*(*v16 + 184))(v16, &v262, v343);
      sub_100F17960(v343);
      if ((SHIBYTE(v263) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v31 = v262;
      goto LABEL_82;
    }

    if (xpc_dictionary_get_value(object, "kTapeSetAssociatedImei"))
    {
      *(v203.__r_.__value_.__r.__words + 3) = 0;
      LODWORD(v203.__r_.__value_.__l.__data_) = 0;
      *(&v221 + 3) = 0;
      LODWORD(v221) = 0;
      __src.__r_.__value_.__r.__words[0] = 0;
      *buf = &object;
      *&buf[8] = "kIccid";
      sub_100006354(buf, &__src);
      if (xpc_get_type(__src.__r_.__value_.__l.__data_) == &_xpc_type_null)
      {
        v258 = xpc_string_create("Invalid iccid format");
        if (!v258)
        {
          v258 = xpc_null_create();
        }

        *buf = *a5;
        *&buf[8] = "kError";
        sub_10000F688(buf, &v258, &v259);
        xpc_release(v259);
        v259 = 0;
        xpc_release(v258);
        v73 = 0;
        v74 = 0;
        v66 = 0;
        v48 = 0;
        v258 = 0;
      }

      else
      {
        memset(buf, 0, sizeof(buf));
        *&v339 = 0;
        xpc::dyn_cast_or_default();
        if (SBYTE7(v339) < 0)
        {
          operator delete(*buf);
        }

        v65 = v347.__r_.__value_.__l.__size_;
        v48 = v347.__r_.__value_.__r.__words[0];
        LODWORD(v203.__r_.__value_.__l.__data_) = v347.__r_.__value_.__r.__words[2];
        *(v203.__r_.__value_.__r.__words + 3) = *(&v347.__r_.__value_.__r.__words[2] + 3);
        v66 = SHIBYTE(v347.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v347.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v67 = v347.__r_.__value_.__l.__size_;
          if (v347.__r_.__value_.__l.__size_ == 19)
          {
            goto LABEL_239;
          }
        }

        else
        {
          if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) == 19)
          {
            goto LABEL_239;
          }

          v67 = SHIBYTE(v347.__r_.__value_.__r.__words[2]);
        }

        if (v67 == 20)
        {
LABEL_239:
          *buf = &object;
          *&buf[8] = "kIMEI";
          sub_100006354(buf, &v255);
          v75 = __src.__r_.__value_.__r.__words[0];
          __src.__r_.__value_.__r.__words[0] = v255;
          v255 = v75;
          xpc_release(v75);
          v255 = 0;
          if (xpc_get_type(__src.__r_.__value_.__l.__data_) == &_xpc_type_null)
          {
            v253 = xpc_string_create("Invalid IMEI");
            if (!v253)
            {
              v253 = xpc_null_create();
            }

            *buf = *a5;
            *&buf[8] = "kError";
            sub_10000F688(buf, &v253, &v254);
            xpc_release(v254);
            v254 = 0;
            xpc_release(v253);
            v73 = 0;
            v74 = 0;
            v253 = 0;
          }

          else
          {
            memset(buf, 0, sizeof(buf));
            *&v339 = 0;
            xpc::dyn_cast_or_default();
            if (SBYTE7(v339) < 0)
            {
              operator delete(*buf);
            }

            v76 = v347.__r_.__value_.__l.__size_;
            v74 = v347.__r_.__value_.__r.__words[0];
            LODWORD(v221) = v347.__r_.__value_.__r.__words[2];
            *(&v221 + 3) = *(&v347.__r_.__value_.__r.__words[2] + 3);
            v77 = HIBYTE(v347.__r_.__value_.__r.__words[2]);
            v73 = SHIBYTE(v347.__r_.__value_.__r.__words[2]);
            if ((v347.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v77 = v347.__r_.__value_.__l.__size_;
            }

            if (v77 < 0x41)
            {
              if (v66 < 0)
              {
                sub_100005F2C(v248, v48, v65);
              }

              else
              {
                v248[0] = v48;
                v248[1] = v65;
                *v249 = v203.__r_.__value_.__l.__data_;
                *&v249[3] = *(v203.__r_.__value_.__r.__words + 3);
                v250 = v66;
              }

              if (v73 < 0)
              {
                sub_100005F2C(v245, v74, v76);
              }

              else
              {
                v245[0] = v74;
                v245[1] = v76;
                *v246 = v221;
                *&v246[3] = *(&v221 + 3);
                v247 = v73;
              }

              v93 = *a5;
              v92 = a5[1];
              if (v92)
              {
                atomic_fetch_add_explicit(v92 + 1, 1uLL, memory_order_relaxed);
              }

              v342[0] = off_101F34738;
              v342[1] = v93;
              v342[2] = v92;
              v342[3] = v342;
              (*(*v16 + 192))(v16, v248, v245, v342);
              sub_100113648(v342);
              if (v247 < 0)
              {
                operator delete(v245[0]);
              }

              if (v250 < 0)
              {
                operator delete(v248[0]);
              }
            }

            else
            {
              v251 = xpc_string_create("Error: IMEI data length > 64 bytes");
              if (!v251)
              {
                v251 = xpc_null_create();
              }

              *buf = *a5;
              *&buf[8] = "kError";
              sub_10000F688(buf, &v251, &v252);
              xpc_release(v252);
              v252 = 0;
              xpc_release(v251);
              v251 = 0;
            }
          }

          goto LABEL_313;
        }

        v256 = xpc_string_create("Invalid iccid length");
        if (!v256)
        {
          v256 = xpc_null_create();
        }

        *buf = *a5;
        *&buf[8] = "kError";
        sub_10000F688(buf, &v256, &v257);
        xpc_release(v257);
        v257 = 0;
        xpc_release(v256);
        v73 = 0;
        v74 = 0;
        v256 = 0;
      }

LABEL_313:
      xpc_release(__src.__r_.__value_.__l.__data_);
      if (v73 < 0)
      {
        operator delete(v74);
      }

      if ((v66 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_187;
    }

    if (xpc_dictionary_get_value(object, "kTapeGetFile"))
    {
      *(&v221 + 3) = 0;
      LODWORD(v221) = 0;
      memset(&v347, 0, sizeof(v347));
      v203.__r_.__value_.__r.__words[0] = 0;
      *buf = &object;
      *&buf[8] = "kIccid";
      sub_100006354(buf, &v203);
      if (xpc_get_type(v203.__r_.__value_.__l.__data_) == &_xpc_type_null)
      {
        v243 = xpc_string_create("Invalid iccid format");
        if (!v243)
        {
          v243 = xpc_null_create();
        }

        *buf = *a5;
        *&buf[8] = "kError";
        sub_10000F688(buf, &v243, &v244);
        xpc_release(v244);
        v244 = 0;
        xpc_release(v243);
        v69 = 0;
        v48 = 0;
        v243 = 0;
      }

      else
      {
        memset(buf, 0, sizeof(buf));
        *&v339 = 0;
        xpc::dyn_cast_or_default();
        if (SBYTE7(v339) < 0)
        {
          operator delete(*buf);
        }

        v68 = __src.__r_.__value_.__l.__size_;
        v48 = __src.__r_.__value_.__r.__words[0];
        LODWORD(v221) = __src.__r_.__value_.__r.__words[2];
        *(&v221 + 3) = *(&__src.__r_.__value_.__r.__words[2] + 3);
        v69 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v70 = __src.__r_.__value_.__l.__size_;
          if (__src.__r_.__value_.__l.__size_ == 19)
          {
            goto LABEL_268;
          }
        }

        else
        {
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) == 19)
          {
            goto LABEL_268;
          }

          v70 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
        }

        if (v70 == 20)
        {
LABEL_268:
          *buf = &object;
          *&buf[8] = "kFileType";
          sub_100006354(buf, &v240);
          v81 = v203.__r_.__value_.__r.__words[0];
          v203.__r_.__value_.__r.__words[0] = v240;
          v240 = v81;
          xpc_release(v81);
          v240 = 0;
          if (xpc_get_type(v203.__r_.__value_.__l.__data_) == &_xpc_type_null)
          {
            v238 = xpc_string_create("Invalid FileType");
            if (!v238)
            {
              v238 = xpc_null_create();
            }

            *buf = *a5;
            *&buf[8] = "kError";
            sub_10000F688(buf, &v238, &v239);
            xpc_release(v239);
            v239 = 0;
            xpc_release(v238);
            v238 = 0;
          }

          else
          {
            memset(buf, 0, sizeof(buf));
            *&v339 = 0;
            xpc::dyn_cast_or_default();
            if (SBYTE7(v339) < 0)
            {
              operator delete(*buf);
            }

            if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v347.__r_.__value_.__l.__data_);
            }

            v347 = __src;
            if (sub_100318068(&v347, "imsi"))
            {
              v82 = 3;
            }

            else
            {
              v82 = 4;
            }

            if (v69 < 0)
            {
              sub_100005F2C(v235, v48, v68);
            }

            else
            {
              v235[0] = v48;
              v235[1] = v68;
              *v236 = v221;
              *&v236[3] = *(&v221 + 3);
              v237 = v69;
            }

            v95 = *a5;
            v94 = a5[1];
            if (v94)
            {
              atomic_fetch_add_explicit(v94 + 1, 1uLL, memory_order_relaxed);
            }

            v340[0] = off_101F347B8;
            v340[1] = v95;
            v340[2] = v94;
            v340[3] = v340;
            (*(*v16 + 216))(v16, v82, v235, v340);
            sub_1003F35D0(v340);
            if (v237 < 0)
            {
              operator delete(v235[0]);
            }
          }

          goto LABEL_325;
        }

        v241 = xpc_string_create("Invalid iccid length");
        if (!v241)
        {
          v241 = xpc_null_create();
        }

        *buf = *a5;
        *&buf[8] = "kError";
        sub_10000F688(buf, &v241, &v242);
        xpc_release(v242);
        v242 = 0;
        xpc_release(v241);
        v241 = 0;
      }

LABEL_325:
      xpc_release(v203.__r_.__value_.__l.__data_);
      if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v347.__r_.__value_.__l.__data_);
      }

      if ((v69 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

LABEL_187:
      v41 = v48;
      goto LABEL_85;
    }

    if (xpc_dictionary_get_value(object, "kTapeEapAka"))
    {
      *(v169 + 3) = 0;
      LODWORD(v169[0]) = 0;
      v221 = 0;
      *buf = &object;
      *&buf[8] = "kIccid";
      sub_100006354(buf, &v221);
      if (xpc_get_type(v221) == &_xpc_type_null)
      {
        v233 = xpc_string_create("Invalid iccid format");
        if (!v233)
        {
          v233 = xpc_null_create();
        }

        *buf = *a5;
        *&buf[8] = "kError";
        sub_10000F688(buf, &v233, &v234);
        xpc_release(v234);
        v234 = 0;
        xpc_release(v233);
        v79 = 0;
        v48 = 0;
        v233 = 0;
        goto LABEL_363;
      }

      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      xpc::dyn_cast_or_default();
      if (SBYTE7(v339) < 0)
      {
        operator delete(*buf);
      }

      v78 = v347.__r_.__value_.__l.__size_;
      v48 = v347.__r_.__value_.__r.__words[0];
      LODWORD(v169[0]) = v347.__r_.__value_.__r.__words[2];
      *(v169 + 3) = *(&v347.__r_.__value_.__r.__words[2] + 3);
      v79 = SHIBYTE(v347.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v347.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v80 = v347.__r_.__value_.__l.__size_;
        if (v347.__r_.__value_.__l.__size_ != 19)
        {
          goto LABEL_330;
        }
      }

      else if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) != 19)
      {
        v80 = SHIBYTE(v347.__r_.__value_.__r.__words[2]);
LABEL_330:
        if (v80 == 20)
        {
          goto LABEL_331;
        }

        v231 = xpc_string_create("Invalid iccid length");
        if (!v231)
        {
          v231 = xpc_null_create();
        }

        *buf = *a5;
        *&buf[8] = "kError";
        sub_10000F688(buf, &v231, &v232);
        xpc_release(v232);
        v232 = 0;
        xpc_release(v231);
        v231 = 0;
LABEL_363:
        xpc_release(v221);
        if ((v79 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_187;
      }

LABEL_331:
      memset(&v347, 0, sizeof(v347));
      sub_1013C9410(&v347);
      memset(&__src, 0, sizeof(__src));
      sub_1013C9410(&__src);
      *buf = 0;
      v339 = 0u;
      *&buf[8] = &v339;
      *&buf[4] = 2;
      LODWORD(v335) = 0;
      v203.__r_.__value_.__r.__words[0] = &v335;
      v96 = (sub_1004FCB34(&buf[8], &v335) + 5);
      if (v96 != &v347)
      {
        sub_1001122C4(v96, v347.__r_.__value_.__l.__data_, v347.__r_.__value_.__l.__size_, v347.__r_.__value_.__l.__size_ - v347.__r_.__value_.__r.__words[0]);
      }

      LODWORD(v335) = 1;
      v203.__r_.__value_.__r.__words[0] = &v335;
      v97 = (sub_1004FCB34(&buf[8], &v335) + 5);
      if (v97 != &__src)
      {
        sub_1001122C4(v97, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_, __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]);
      }

      if (v79 < 0)
      {
        sub_100005F2C(v228, v48, v78);
      }

      else
      {
        v228[0] = v48;
        v228[1] = v78;
        *v229 = v169[0];
        *&v229[3] = *(v169 + 3);
        v230 = v79;
      }

      v226 = *buf;
      sub_1004F1F78(v227, &buf[8]);
      v108 = *a5;
      v107 = a5[1];
      if (v107)
      {
        atomic_fetch_add_explicit(v107 + 1, 1uLL, memory_order_relaxed);
      }

      v337[0] = off_101F34838;
      v337[1] = v108;
      v337[2] = v107;
      v337[3] = v337;
      (*(*v16 + 224))(v16, v228, &v226, v337);
      sub_1004F2D58(v337);
      sub_10004EC58(v227, v227[1]);
      if (v230 < 0)
      {
        operator delete(v228[0]);
      }

      sub_10004EC58(&buf[8], v339);
      if (__src.__r_.__value_.__r.__words[0])
      {
        __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      if (v347.__r_.__value_.__r.__words[0])
      {
        v347.__r_.__value_.__l.__size_ = v347.__r_.__value_.__r.__words[0];
        operator delete(v347.__r_.__value_.__l.__data_);
      }

      goto LABEL_363;
    }

    if (xpc_dictionary_get_value(object, "kSkipMetadataCheck"))
    {
      *buf = &object;
      *&buf[8] = "kSkipMetadataCheck";
      sub_100006354(buf, &v347);
      v84 = xpc::dyn_cast_or_default(&v347, 0, v83);
      xpc_release(v347.__r_.__value_.__l.__data_);
      __src.__r_.__value_.__s.__data_[0] = v84;
      v85 = sub_10005D028();
      sub_10000501C(buf, "SkipMetadataCheck");
      sub_1006197F4(v85, buf, &__src);
      if (SBYTE7(v339) < 0)
      {
        operator delete(*buf);
      }
    }

    if (xpc_dictionary_get_value(object, "kAddCert"))
    {
      memset(&v347, 0, sizeof(v347));
      __src.__r_.__value_.__r.__words[0] = &object;
      __src.__r_.__value_.__l.__size_ = "kAddCert";
      sub_100006354(&__src, &v203);
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      xpc::dyn_cast_or_default();
      if (SBYTE7(v339) < 0)
      {
        operator delete(*buf);
      }

      xpc_release(v203.__r_.__value_.__l.__data_);
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      v86 = sub_10005D028();
      sub_10000501C(&__src, "ServerPinnedCerts");
      v203.__r_.__value_.__r.__words[0] = buf;
      v203.__r_.__value_.__l.__size_ = *buf;
      v87 = sub_1013C945C(v86, &__src.__r_.__value_.__l.__data_, &v203);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      if (!v87)
      {
        sub_100005308(buf, &v347);
        v106 = sub_10005D028();
        sub_10000501C(&__src, "ServerPinnedCerts");
        if (sub_1013C96BC(v106, &__src, *buf, *&buf[8]))
        {
          v224 = xpc_string_create("Succeeded");
          if (!v224)
          {
            v224 = xpc_null_create();
          }

          v203.__r_.__value_.__r.__words[0] = *a5;
          v203.__r_.__value_.__l.__size_ = "kAddCert";
          sub_10000F688(&v203, &v224, &v225);
          xpc_release(v225);
          v225 = 0;
          xpc_release(v224);
          v224 = 0;
        }

        else
        {
          v223 = xpc_string_create("Failed");
          if (!v223)
          {
            v223 = xpc_null_create();
          }

          v221 = *a5;
          v222 = "kAddCert";
          sub_10000F688(&v221, &v223, &v225);
          xpc_release(v225);
          v225 = 0;
          xpc_release(v223);
          v223 = 0;
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        goto LABEL_422;
      }

      v88 = *buf;
      v89 = *&buf[8];
      if (*buf != *&buf[8])
      {
        while (!sub_100071DF8(v88, &v347))
        {
          v88 += 3;
          if (v88 == v89)
          {
            v88 = v89;
            break;
          }
        }

        v89 = *&buf[8];
      }

      if (v88 == v89)
      {
        ctu::OsLogContext::OsLogContext(&__src, kCtLoggingSystemName, "vinyl.test");
        v122 = __src.__r_.__value_.__l.__size_;
        ctu::OsLogContext::~OsLogContext(&__src);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
        {
          v123 = &v347;
          if ((v347.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v123 = v347.__r_.__value_.__r.__words[0];
          }

          LODWORD(__src.__r_.__value_.__l.__data_) = 136315138;
          *(__src.__r_.__value_.__r.__words + 4) = v123;
          _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_INFO, "add new filepath<%s>", &__src, 0xCu);
        }

        sub_100005308(buf, &v347);
        v124 = sub_10005D028();
        sub_10000501C(&__src, "ServerPinnedCerts");
        v125 = sub_1013C96BC(v124, &__src, *buf, *&buf[8]);
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        if (v125)
        {
          v219 = xpc_string_create("Succeeded");
          if (!v219)
          {
            v219 = xpc_null_create();
          }

          __src.__r_.__value_.__r.__words[0] = *a5;
          __src.__r_.__value_.__l.__size_ = "kAddCert";
          sub_10000F688(&__src, &v219, &v220);
          xpc_release(v220);
          v220 = 0;
          xpc_release(v219);
          v219 = 0;
          goto LABEL_422;
        }
      }

      else
      {
        ctu::OsLogContext::OsLogContext(&__src, kCtLoggingSystemName, "vinyl.test");
        v90 = __src.__r_.__value_.__l.__size_;
        ctu::OsLogContext::~OsLogContext(&__src);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
        {
          v91 = &v347;
          if ((v347.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v91 = v347.__r_.__value_.__r.__words[0];
          }

          LODWORD(__src.__r_.__value_.__l.__data_) = 136315138;
          *(__src.__r_.__value_.__r.__words + 4) = v91;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "%s already stored", &__src, 0xCu);
        }
      }

      v217 = xpc_string_create("Failed");
      if (!v217)
      {
        v217 = xpc_null_create();
      }

      __src.__r_.__value_.__r.__words[0] = *a5;
      __src.__r_.__value_.__l.__size_ = "kAddCert";
      sub_10000F688(&__src, &v217, &v218);
      xpc_release(v218);
      v218 = 0;
      xpc_release(v217);
      v217 = 0;
LABEL_422:
      __src.__r_.__value_.__r.__words[0] = buf;
      sub_1000087B4(&__src);
LABEL_201:
      if ((SHIBYTE(v347.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      v41 = v347.__r_.__value_.__r.__words[0];
      goto LABEL_85;
    }

    if (xpc_dictionary_get_value(object, "kDeleteCert"))
    {
      *buf = &object;
      *&buf[8] = "kDeleteCert";
      sub_100006354(buf, &v347);
      v99 = xpc::dyn_cast_or_default(&v347, 0, v98);
      xpc_release(v347.__r_.__value_.__l.__data_);
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      v100 = sub_10005D028();
      sub_10000501C(&v347, "ServerPinnedCerts");
      __src.__r_.__value_.__r.__words[0] = buf;
      __src.__r_.__value_.__l.__size_ = *buf;
      v101 = sub_1013C945C(v100, &v347.__r_.__value_.__l.__data_, &__src);
      if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v347.__r_.__value_.__l.__data_);
      }

      if (v101)
      {
        if ((v99 & 0x80000000) != 0 || v99 >= (-1431655765 * ((*&buf[8] - *buf) >> 3)))
        {
          v126 = ctu::OsLogContext::OsLogContext(&v347, kCtLoggingSystemName, "vinyl.test");
          v127 = v347.__r_.__value_.__l.__size_;
          ctu::OsLogContext::~OsLogContext(v126);
          if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
          {
            LODWORD(v347.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(v347.__r_.__value_.__r.__words[0]) = v99;
            _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_INFO, "index[%d] is out of range.", &v347, 8u);
          }

          v213 = xpc_string_create("Failed");
          if (!v213)
          {
            v213 = xpc_null_create();
          }

          v347.__r_.__value_.__r.__words[0] = *a5;
          v347.__r_.__value_.__l.__size_ = "kDeleteCert";
          sub_10000F688(&v347, &v213, &v214);
          xpc_release(v214);
          v214 = 0;
          xpc_release(v213);
          v213 = 0;
        }

        else
        {
          v102 = ctu::OsLogContext::OsLogContext(&v347, kCtLoggingSystemName, "vinyl.test");
          v103 = v347.__r_.__value_.__l.__size_;
          ctu::OsLogContext::~OsLogContext(v102);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
          {
            v104 = 24 * v99;
            v105 = (*buf + v104);
            if (*(*buf + v104 + 23) < 0)
            {
              v105 = *v105;
            }

            LODWORD(v347.__r_.__value_.__l.__data_) = 136315138;
            *(v347.__r_.__value_.__r.__words + 4) = v105;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "the cert to be removed: %s", &v347, 0xCu);
          }

          else
          {
            v104 = 24 * v99;
          }

          sub_1013C97FC(buf, v104 + *buf);
          v211 = xpc_string_create("Succeeded");
          if (!v211)
          {
            v211 = xpc_null_create();
          }

          v347.__r_.__value_.__r.__words[0] = *a5;
          v347.__r_.__value_.__l.__size_ = "kDeleteCert";
          sub_10000F688(&v347, &v211, &v212);
          xpc_release(v212);
          v212 = 0;
          xpc_release(v211);
          v211 = 0;
          if (*&buf[8] == *buf)
          {
            v132 = sub_10005D028();
            sub_10000501C(&v347, "ServerPinnedCerts");
            v133 = sub_10033220C(v132, &v347.__r_.__value_.__l.__data_);
            if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v347.__r_.__value_.__l.__data_);
            }

            if ((v133 & 1) == 0)
            {
              v207 = xpc_string_create("Failed");
              if (!v207)
              {
                v207 = xpc_null_create();
              }

              v347.__r_.__value_.__r.__words[0] = *a5;
              v347.__r_.__value_.__l.__size_ = "kDeleteCert";
              sub_10000F688(&v347, &v207, &v208);
              xpc_release(v208);
              v208 = 0;
              xpc_release(v207);
              v207 = 0;
            }
          }

          else
          {
            v130 = sub_10005D028();
            sub_10000501C(&v347, "ServerPinnedCerts");
            v131 = sub_1013C96BC(v130, &v347, *buf, *&buf[8]);
            if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v347.__r_.__value_.__l.__data_);
            }

            if ((v131 & 1) == 0)
            {
              v209 = xpc_string_create("Failed");
              if (!v209)
              {
                v209 = xpc_null_create();
              }

              v347.__r_.__value_.__r.__words[0] = *a5;
              v347.__r_.__value_.__l.__size_ = "kDeleteCert";
              sub_10000F688(&v347, &v209, &v210);
              xpc_release(v210);
              v210 = 0;
              xpc_release(v209);
              v209 = 0;
            }
          }
        }
      }

      else
      {
        v215 = xpc_string_create("Failed");
        if (!v215)
        {
          v215 = xpc_null_create();
        }

        v347.__r_.__value_.__r.__words[0] = *a5;
        v347.__r_.__value_.__l.__size_ = "kDeleteCert";
        sub_10000F688(&v347, &v215, &v216);
        xpc_release(v216);
        v216 = 0;
        xpc_release(v215);
        v215 = 0;
      }

      v347.__r_.__value_.__r.__words[0] = buf;
      v129 = &v347;
      goto LABEL_457;
    }

    if (xpc_dictionary_get_value(object, "kListCerts"))
    {
      memset(&__src, 0, sizeof(__src));
      v109 = sub_10005D028();
      sub_10000501C(buf, "ServerPinnedCerts");
      v347.__r_.__value_.__r.__words[0] = &__src;
      v347.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
      if (sub_1013C945C(v109, buf, &v347))
      {
        v110 = __src.__r_.__value_.__l.__size_;
        v111 = __src.__r_.__value_.__r.__words[0];
        if (SBYTE7(v339) < 0)
        {
          operator delete(*buf);
        }

        if (v110 != v111)
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v113 = __src.__r_.__value_.__l.__size_;
          v112 = __src.__r_.__value_.__r.__words[0];
          if (__src.__r_.__value_.__r.__words[0] != __src.__r_.__value_.__l.__size_)
          {
            v114 = 48;
            do
            {
              memset(&v203, 0, sizeof(v203));
              if (*(v112 + 23) < 0)
              {
                sub_100005F2C(&v203, *v112, *(v112 + 8));
              }

              else
              {
                v115 = *v112;
                v203.__r_.__value_.__r.__words[2] = *(v112 + 16);
                *&v203.__r_.__value_.__l.__data_ = v115;
              }

              v116 = Mutable;
              v5 = v5 & 0xFFFFFFFFFFFF0000 | v114;
              v169[0] = 0;
              *buf = v5;
              BYTE7(v339) = 1;
              v221 = 0;
              if (ctu::cf::convert_copy())
              {
                v117 = v169[0];
                v169[0] = v221;
                v347.__r_.__value_.__r.__words[0] = v117;
                sub_100005978(&v347.__r_.__value_.__l.__data_);
              }

              if (SBYTE7(v339) < 0)
              {
                operator delete(*buf);
              }

              v202 = v169[0];
              v169[0] = 0;
              sub_100005978(v169);
              v118 = v202;
              if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&v200, v203.__r_.__value_.__l.__data_, v203.__r_.__value_.__l.__size_);
              }

              else
              {
                v200 = v203;
              }

              if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&v347, v200.__r_.__value_.__l.__data_, v200.__r_.__value_.__l.__size_);
              }

              else
              {
                v347 = v200;
              }

              v335 = 0;
              if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(buf, v347.__r_.__value_.__l.__data_, v347.__r_.__value_.__l.__size_);
              }

              else
              {
                *buf = *&v347.__r_.__value_.__l.__data_;
                *&v339 = *(&v347.__r_.__value_.__l + 2);
              }

              v169[0] = 0;
              if (ctu::cf::convert_copy())
              {
                v119 = v335;
                v335 = v169[0];
                v221 = v119;
                sub_100005978(&v221);
              }

              if (SBYTE7(v339) < 0)
              {
                operator delete(*buf);
              }

              value = v335;
              v335 = 0;
              sub_100005978(&v335);
              if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v347.__r_.__value_.__l.__data_);
              }

              CFDictionaryAddValue(v116, v118, value);
              sub_100005978(&value);
              if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v200.__r_.__value_.__l.__data_);
              }

              sub_100005978(&v202);
              if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v203.__r_.__value_.__l.__data_);
              }

              v112 += 24;
              ++v114;
            }

            while (v112 != v113);
          }

          memset(buf, 0, sizeof(buf));
          sub_100029714(&v199, &Mutable);
          sub_100029714(&v221, &v199);
          v169[0] = 0;
          v347.__r_.__value_.__r.__words[0] = 0;
          sub_100010180(&v347, &v221);
          if (v347.__r_.__value_.__r.__words[0])
          {
            sub_1000676D4(v169, &v347.__r_.__value_.__l.__data_);
          }

          sub_10001021C(&v347.__r_.__value_.__l.__data_);
          v203.__r_.__value_.__l.__data_ = v169[0];
          v169[0] = 0;
          sub_10001021C(v169);
          sub_1000296E0(&v221);
          sub_1013CC040(buf, &v203.__r_.__value_.__l.__data_);
          sub_10001021C(&v203.__r_.__value_.__l.__data_);
          sub_1000296E0(&v199);
          v120 = sub_1013CAA08(buf);
          ctu::cf_to_xpc(&v197, *v120, v121);
          v347.__r_.__value_.__r.__words[0] = *a5;
          v347.__r_.__value_.__l.__size_ = "kListCerts";
          sub_10000F688(&v347, &v197, &v198);
          xpc_release(v198);
          v198 = 0;
          xpc_release(v197);
          v197 = 0;
          if (buf[0] == 1)
          {
            sub_10001021C(&buf[8]);
          }

          sub_1000296E0(&Mutable);
LABEL_439:
          *buf = &__src;
          v129 = buf;
LABEL_457:
          sub_1000087B4(v129);
          goto LABEL_20;
        }
      }

      else if (SBYTE7(v339) < 0)
      {
        operator delete(*buf);
      }

      v205 = xpc_string_create("Empty");
      if (!v205)
      {
        v205 = xpc_null_create();
      }

      *buf = *a5;
      *&buf[8] = "kListCerts";
      sub_10000F688(buf, &v205, &v206);
      xpc_release(v206);
      v206 = 0;
      xpc_release(v205);
      v205 = 0;
      goto LABEL_439;
    }

    if (xpc_dictionary_get_value(object, "kTapeDownload"))
    {
      *buf = 0;
      __src.__r_.__value_.__r.__words[0] = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        __src.__r_.__value_.__r.__words[0] = xpc_null_create();
      }

      xpc::bridge(&v347, &__src, v128);
      sub_100010180(buf, &v347.__r_.__value_.__l.__data_);
      sub_10000A1EC(&v347.__r_.__value_.__l.__data_);
      xpc_release(__src.__r_.__value_.__l.__data_);
      sub_100010024(&v196, buf);
      (*(*v16 + 24))(v16, 1, 1, &v196);
      sub_10001021C(&v196);
      sub_10001021C(buf);
      goto LABEL_20;
    }

    if (xpc_dictionary_get_value(object, "kDeleteAllCerts"))
    {
      v134 = sub_10005D028();
      sub_10000501C(buf, "ServerPinnedCerts");
      v135 = sub_10033220C(v134, buf);
      if (SBYTE7(v339) < 0)
      {
        operator delete(*buf);
      }

      if (v135)
      {
        ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
        v136 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "all certs are deleted", buf, 2u);
        }

        v192 = xpc_string_create("Succeeded");
        if (!v192)
        {
          v192 = xpc_null_create();
        }

        *buf = *a5;
        *&buf[8] = "kDeleteAllCerts";
        sub_10000F688(buf, &v192, &v193);
        xpc_release(v193);
        v193 = 0;
        xpc_release(v192);
        v192 = 0;
      }

      else
      {
        ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
        v138 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_INFO, "failed to delete all certs", buf, 2u);
        }

        v194 = xpc_string_create("Failed");
        if (!v194)
        {
          v194 = xpc_null_create();
        }

        *buf = *a5;
        *&buf[8] = "kDeleteAllCerts";
        sub_10000F688(buf, &v194, &v195);
        xpc_release(v195);
        v195 = 0;
        xpc_release(v194);
        v194 = 0;
      }

      goto LABEL_20;
    }

    if (xpc_dictionary_get_value(object, "kGetNotifications"))
    {
      v190[0] = _NSConcreteStackBlock;
      v190[1] = 3321888768;
      v190[2] = sub_1013C9878;
      v190[3] = &unk_101F34408;
      v137 = a5[1];
      v190[4] = *a5;
      v191 = v137;
      if (v137)
      {
        atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 136))(v16, v190);
      v33 = v191;
      if (!v191)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }

    if (xpc_dictionary_get_value(object, "kGetNotification"))
    {
      memset(&v347, 0, sizeof(v347));
      __src.__r_.__value_.__r.__words[0] = &object;
      __src.__r_.__value_.__l.__size_ = "kGetNotification";
      sub_100006354(&__src, &v203);
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      xpc::dyn_cast_or_default();
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      xpc_release(v203.__r_.__value_.__l.__data_);
      v188 = 0;
      v189 = 0;
      v187 = 0;
      sub_100034C50(&v187, v347.__r_.__value_.__l.__data_, v347.__r_.__value_.__l.__size_, v347.__r_.__value_.__l.__size_ - v347.__r_.__value_.__r.__words[0]);
      v185[0] = _NSConcreteStackBlock;
      v185[1] = 3321888768;
      v185[2] = sub_1013C99A4;
      v185[3] = &unk_101F34498;
      v139 = a5[1];
      v185[4] = *a5;
      v186 = v139;
      if (v139)
      {
        atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 144))(v16, &v187, v185);
      if (v187)
      {
        v188 = v187;
        operator delete(v187);
      }

      v140 = v186;
      if (!v186)
      {
        goto LABEL_488;
      }
    }

    else
    {
      if (xpc_dictionary_get_value(object, "kSendNotifications"))
      {
        (*(*v16 + 152))(v16);
        goto LABEL_20;
      }

      if (!xpc_dictionary_get_value(object, "kDeleteNotification"))
      {
        if (xpc_dictionary_get_value(object, "kGet5GDeviceCapabilities"))
        {
          memset(buf, 0, sizeof(buf));
          sub_1013C9C14(buf, *a1);
          if (*buf)
          {
            v347.__r_.__value_.__r.__words[0] = 0;
            (*(**buf + 40))(&__src);
            sub_10002FE1C(&v347, &__src.__r_.__value_.__l.__data_);
            sub_10000A1EC(&__src.__r_.__value_.__l.__data_);
            if (v347.__r_.__value_.__r.__words[0])
            {
              __src.__r_.__value_.__s.__data_[0] = 0;
              ctu::cf::assign(&__src, v347.__r_.__value_.__l.__data_, v142);
              v143 = __src.__r_.__value_.__s.__data_[0];
            }

            else
            {
              v143 = 1;
            }

            sub_100045C8C(&v347.__r_.__value_.__l.__data_);
          }

          else
          {
            v143 = 1;
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v178 = xpc_BOOL_create(v143 & 1);
          if (!v178)
          {
            v178 = xpc_null_create();
          }

          *buf = *a5;
          *&buf[8] = "k5GDeviceCapabilities";
          sub_10000F688(buf, &v178, &v179);
          xpc_release(v179);
          v179 = 0;
          xpc_release(v178);
          v178 = 0;
          ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
          v146 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (!os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
          {
            goto LABEL_20;
          }

          *buf = 67109120;
          *&buf[4] = v143 & 1;
          v25 = "kGet5GDeviceCapabilities: %d";
        }

        else
        {
          if (!xpc_dictionary_get_value(object, "kSet5GDeviceCapabilities"))
          {
            if (xpc_dictionary_get_value(object, "kGetEuiccToken"))
            {
              ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
              v147 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_INFO, "kGetEuiccToken", buf, 2u);
              }

              v174[0] = _NSConcreteStackBlock;
              v174[1] = 3321888768;
              v174[2] = sub_1013C9CE0;
              v174[3] = &unk_101F344C8;
              v148 = a5[1];
              v174[4] = *a5;
              v175 = v148;
              if (v148)
              {
                atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v16 + 200))(v16, v174);
              if (v175)
              {
                sub_100004A34(v175);
              }
            }

            if (xpc_dictionary_get_value(object, "kTestEuiccTokenRNG"))
            {
              ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
              v149 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_INFO, "kTestEuiccTokenRNG", buf, 2u);
              }

              *buf = &object;
              *&buf[8] = "kTestEuiccTokenRNG";
              sub_100006354(buf, &v347);
              v151 = xpc::dyn_cast_or_default(&v347, 0, v150);
              xpc_release(v347.__r_.__value_.__l.__data_);
              v172[0] = _NSConcreteStackBlock;
              v172[1] = 3321888768;
              v172[2] = sub_1013C9E2C;
              v172[3] = &unk_101F344F8;
              v152 = a5[1];
              v172[4] = *a5;
              v173 = v152;
              if (v152)
              {
                atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v16 + 208))(v16, v151, v172);
              if (v173)
              {
                sub_100004A34(v173);
              }
            }

            if (!xpc_dictionary_get_value(object, "kSecureAuth"))
            {
              goto LABEL_20;
            }

            ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
            v153 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_INFO, "kSecureAuth", buf, 2u);
            }

            v222 = 0;
            v221 = 0;
            v154 = Registry::getServiceMap(*a1);
            sub_100DF67C0(v154, &v221);
            if (v221)
            {
              memset(&v347, 0, sizeof(v347));
              __src.__r_.__value_.__r.__words[0] = &object;
              __src.__r_.__value_.__l.__size_ = "sep-signed";
              sub_100006354(&__src, &v203);
              memset(buf, 0, sizeof(buf));
              *&v339 = 0;
              xpc::dyn_cast_or_default();
              if (*buf)
              {
                *&buf[8] = *buf;
                operator delete(*buf);
              }

              xpc_release(v203.__r_.__value_.__l.__data_);
              memset(&__src, 0, sizeof(__src));
              v203.__r_.__value_.__r.__words[0] = &object;
              v203.__r_.__value_.__l.__size_ = "sep-signature";
              sub_100006354(&v203, v169);
              memset(buf, 0, sizeof(buf));
              *&v339 = 0;
              xpc::dyn_cast_or_default();
              if (*buf)
              {
                *&buf[8] = *buf;
                operator delete(*buf);
              }

              xpc_release(v169[0]);
              memset(&v203, 0, sizeof(v203));
              v169[0] = &object;
              v169[1] = "sep-attestation";
              sub_100006354(v169, &v335);
              memset(buf, 0, sizeof(buf));
              *&v339 = 0;
              xpc::dyn_cast_or_default();
              if (*buf)
              {
                *&buf[8] = *buf;
                operator delete(*buf);
              }

              xpc_release(v335);
              v155 = v221;
              v167 = 0;
              v168 = 0;
              v166 = 0;
              sub_100034C50(&v166, v347.__r_.__value_.__l.__data_, v347.__r_.__value_.__l.__size_, v347.__r_.__value_.__l.__size_ - v347.__r_.__value_.__r.__words[0]);
              v163 = 0;
              v164 = 0;
              v165 = 0;
              sub_100034C50(&v163, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_, __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]);
              v160 = 0;
              v161 = 0;
              v162 = 0;
              sub_100034C50(&v160, v203.__r_.__value_.__l.__data_, v203.__r_.__value_.__l.__size_, v203.__r_.__value_.__l.__size_ - v203.__r_.__value_.__r.__words[0]);
              sub_10000501C(v158, "");
              v157 = *a5;
              v156 = a5[1];
              if (v156)
              {
                atomic_fetch_add_explicit(v156 + 1, 1uLL, memory_order_relaxed);
              }

              v336[0] = off_101F348B8;
              v336[1] = v157;
              v336[2] = v156;
              v336[3] = v336;
              (*(*v155 + 64))(v155, &v166, &v163, &v160, v158, v336);
              sub_1009A69F0(v336);
              if (v159 < 0)
              {
                operator delete(v158[0]);
              }

              if (v160)
              {
                v161 = v160;
                operator delete(v160);
              }

              if (v163)
              {
                v164 = v163;
                operator delete(v163);
              }

              if (v166)
              {
                v167 = v166;
                operator delete(v166);
              }

              if (v203.__r_.__value_.__r.__words[0])
              {
                v203.__r_.__value_.__l.__size_ = v203.__r_.__value_.__r.__words[0];
                operator delete(v203.__r_.__value_.__l.__data_);
              }

              if (__src.__r_.__value_.__r.__words[0])
              {
                __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
                operator delete(__src.__r_.__value_.__l.__data_);
              }

              if (v347.__r_.__value_.__r.__words[0])
              {
                v347.__r_.__value_.__l.__size_ = v347.__r_.__value_.__r.__words[0];
                operator delete(v347.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v170 = xpc_string_create("No Vinyl Controller");
              if (!v170)
              {
                v170 = xpc_null_create();
              }

              *buf = *a5;
              *&buf[8] = "kError";
              sub_10000F688(buf, &v170, &v171);
              xpc_release(v171);
              v171 = 0;
              xpc_release(v170);
              v170 = 0;
            }

            v33 = v222;
            if (!v222)
            {
              goto LABEL_20;
            }

            goto LABEL_61;
          }

          *buf = &object;
          *&buf[8] = "kSet5GDeviceCapabilities";
          sub_100006354(buf, &v347);
          v145 = xpc::dyn_cast_or_default(&v347, 0, v144);
          xpc_release(v347.__r_.__value_.__l.__data_);
          memset(buf, 0, sizeof(buf));
          sub_1013C9C14(buf, *a1);
          if (*buf)
          {
            (*(**buf + 16))();
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v176 = xpc_BOOL_create(v145);
          if (!v176)
          {
            v176 = xpc_null_create();
          }

          *buf = *a5;
          *&buf[8] = "k5GDeviceCapabilities";
          sub_10000F688(buf, &v176, &v177);
          xpc_release(v177);
          v177 = 0;
          xpc_release(v176);
          v176 = 0;
          ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
          v146 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (!os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
          {
            goto LABEL_20;
          }

          *buf = 67109120;
          *&buf[4] = v145;
          v25 = "kSet5GDeviceCapabilities: %d";
        }

        v26 = v146;
        v27 = 8;
        goto LABEL_27;
      }

      memset(&v347, 0, sizeof(v347));
      __src.__r_.__value_.__r.__words[0] = &object;
      __src.__r_.__value_.__l.__size_ = "kDeleteNotification";
      sub_100006354(&__src, &v203);
      memset(buf, 0, sizeof(buf));
      *&v339 = 0;
      xpc::dyn_cast_or_default();
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      xpc_release(v203.__r_.__value_.__l.__data_);
      v183 = 0;
      v184 = 0;
      v182 = 0;
      sub_100034C50(&v182, v347.__r_.__value_.__l.__data_, v347.__r_.__value_.__l.__size_, v347.__r_.__value_.__l.__size_ - v347.__r_.__value_.__r.__words[0]);
      v180[0] = _NSConcreteStackBlock;
      v180[1] = 3321888768;
      v180[2] = sub_1013C9AD0;
      v180[3] = &unk_101F34498;
      v141 = a5[1];
      v180[4] = *a5;
      v181 = v141;
      if (v141)
      {
        atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 160))(v16, &v182, v180);
      if (v182)
      {
        v183 = v182;
        operator delete(v182);
      }

      v140 = v181;
      if (!v181)
      {
LABEL_488:
        v41 = v347.__r_.__value_.__r.__words[0];
        if (!v347.__r_.__value_.__r.__words[0])
        {
          goto LABEL_20;
        }

        v347.__r_.__value_.__l.__size_ = v347.__r_.__value_.__r.__words[0];
        goto LABEL_85;
      }
    }

    sub_100004A34(v140);
    goto LABEL_488;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
  v19 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "No Vinyl test server operational; dropping", buf, 2u);
  }

LABEL_21:
  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_1013C662C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013C7664(void *a1, uint64_t a2, uint64_t a3)
{
  object = 0;
  __p = a1;
  v11 = a2;
  sub_100006354(&__p, &object);
  if (xpc_get_type(object) == &_xpc_type_null)
  {
    goto LABEL_12;
  }

  __p = 0;
  v11 = 0;
  v12 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v7;
  *(a3 + 16) = v8;
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (v4 == 19)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (v4 == 20)
    {
      goto LABEL_11;
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v4 = *(a3 + 8);
  if (v4 != 19)
  {
    goto LABEL_10;
  }

LABEL_11:
  v5 = 1;
LABEL_13:
  xpc_release(object);
  return v5;
}

void sub_1013C7740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_1013C7774(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    v6 = xpc_BOOL_create(1);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v8 = *(a1 + 32);
    v9 = "kSuccess";
    sub_10000F688(&v8, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = asString();
    object = xpc_string_create(v4);
    if (!object)
    {
      object = xpc_null_create();
    }

    v8 = *(a1 + 32);
    v9 = "kError";
    sub_10000F688(&v8, &object, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(object);
  }
}

uint64_t sub_1013C78B4(void *a1)
{
  object = 0;
  __p = a1;
  v4 = "kDeleteProfile";
  sub_100006354(&__p, &object);
  if (xpc_get_type(object) != &_xpc_type_null)
  {
    __p = 0;
    v4 = 0;
    v5 = 0;
    xpc::dyn_cast_or_default();
    if (__p)
    {
      v4 = __p;
      operator delete(__p);
    }
  }

  xpc_release(object);
  return 0;
}

void sub_1013C7988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_1013C79BC(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    v6 = xpc_BOOL_create(1);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v8 = *(a1 + 32);
    v9 = "kSuccess";
    sub_10000F688(&v8, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = asString();
    object = xpc_string_create(v4);
    if (!object)
    {
      object = xpc_null_create();
    }

    v8 = *(a1 + 32);
    v9 = "kError";
    sub_10000F688(&v8, &object, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(object);
  }
}

void sub_1013C7AFC(uint64_t a1, ctu **a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    ctu::cf_to_xpc(&v6, a2[1], a2);
    v8 = *(a1 + 32);
    v9 = "kProfiles";
    sub_10000F688(&v8, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = asString();
    object = xpc_string_create(v4);
    if (!object)
    {
      object = xpc_null_create();
    }

    v8 = *(a1 + 32);
    v9 = "kError";
    sub_10000F688(&v8, &object, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(object);
  }
}

void sub_1013C7C28(uint64_t a1, ctu **a2)
{
  if (*a2 == 1)
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
    v4 = v18;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "force get profiles OK", buf, 2u);
    }

    v6 = *a2;
    if (v6 == 1)
    {
      ctu::cf_to_xpc(&v13, a2[1], v5);
      *buf = *(a1 + 32);
      v18 = "kCardProfiles";
      sub_10000F688(buf, &v13, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v13);
      return;
    }

    if (v6 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v12 = &ctu::ResultIsError::~ResultIsError;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
  v7 = v18;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "force get profiles failed", buf, 2u);
  }

  v8 = *a2;
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v12 = &ctu::ResultIsNotError::~ResultIsNotError;
      goto LABEL_17;
    }

LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    v12 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_17:
    __cxa_throw(exception, v11, v12);
  }

  v9 = asString();
  v15 = xpc_string_create(v9);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  *buf = *(a1 + 32);
  v18 = "kError";
  sub_10000F688(buf, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
}

BOOL sub_1013C7EAC(xpc_object_t *a1, uint64_t a2, uint64_t *a3)
{
  v20[0] = a1;
  v20[1] = "kSignIdMap";
  value = xpc_dictionary_get_value(*a1, "kSignIdMap");
  if (value)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    sub_100006354(v20, &object);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    xpc::dyn_cast_or_default();
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    xpc_release(object);
    if (v17 == v18)
    {
      v14 = xpc_string_create("no binary input provided");
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      v21 = *a2;
      v22 = "kError";
      sub_10000F688(&v21, &v14, &v15);
      xpc_release(v15);
      v15 = 0;
      xpc_release(v14);
      v14 = 0;
    }

    else
    {
      v6 = *a3;
      __p = v17;
      v12 = v18;
      v13 = v19;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3321888768;
      v9[2] = sub_1013CA8DC;
      v9[3] = &unk_101F34498;
      v7 = *(a2 + 8);
      v9[4] = *a2;
      v10 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 72))(v6, &__p, v9);
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v10)
      {
        sub_100004A34(v10);
      }
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  return value != 0;
}

void sub_1013C8088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, void *a21, uint64_t a22)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013C80E8(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    object = xpc_data_create(a2 + 1, 0x10uLL);
    if (!object)
    {
      object = xpc_null_create();
    }

    v5 = *(a1 + 32);
    v6 = "EID";
    sub_10000F688(&v5, &object, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(object);
  }

  else
  {
    v3 = xpc_null_create();
    v5 = *(a1 + 32);
    v6 = "EID";
    sub_10000F688(&v5, &v3, &v4);
    xpc_release(v4);
    v4 = 0;
    xpc_release(v3);
  }
}

void sub_1013C81C8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    if (a2[1] == 1)
    {
      v8 = xpc_BOOL_create(1);
      if (!v8)
      {
        v8 = xpc_null_create();
      }

      v10 = *(a1 + 32);
      v11 = "kSuccess";
      sub_10000F688(&v10, &v8, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v8);
    }

    else
    {
      v6 = xpc_string_create("failed");
      if (!v6)
      {
        v6 = xpc_null_create();
      }

      v10 = *(a1 + 32);
      v11 = "kError";
      sub_10000F688(&v10, &v6, &v7);
      xpc_release(v7);
      v7 = 0;
      xpc_release(v6);
    }
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = asString();
    v12 = xpc_string_create(v4);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v10 = *(a1 + 32);
    v11 = "kError";
    sub_10000F688(&v10, &v12, &v13);
    xpc_release(v13);
    v13 = 0;
    xpc_release(v12);
  }
}

void sub_1013C8378(uint64_t a1, ctu **a2)
{
  if (*a2 == 1)
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
    v4 = v18;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "force get profiles OK", buf, 2u);
    }

    v6 = *a2;
    if (v6 == 1)
    {
      ctu::cf_to_xpc(&v13, a2[1], v5);
      *buf = *(a1 + 32);
      v18 = "kCardProfiles";
      sub_10000F688(buf, &v13, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v13);
      return;
    }

    if (v6 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v12 = &ctu::ResultIsError::~ResultIsError;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
  v7 = v18;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "force get tape profiles failed", buf, 2u);
  }

  v8 = *a2;
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v12 = &ctu::ResultIsNotError::~ResultIsNotError;
      goto LABEL_17;
    }

LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    v12 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_17:
    __cxa_throw(exception, v11, v12);
  }

  v9 = asString();
  v15 = xpc_string_create(v9);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  *buf = *(a1 + 32);
  v18 = "kError";
  sub_10000F688(buf, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
}

void sub_1013C85FC(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    if (a2[1] == 1)
    {
      v8 = xpc_BOOL_create(1);
      if (!v8)
      {
        v8 = xpc_null_create();
      }

      v10 = *(a1 + 32);
      v11 = "kSuccess";
      sub_10000F688(&v10, &v8, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v8);
    }

    else
    {
      v6 = xpc_string_create("failed");
      if (!v6)
      {
        v6 = xpc_null_create();
      }

      v10 = *(a1 + 32);
      v11 = "kError";
      sub_10000F688(&v10, &v6, &v7);
      xpc_release(v7);
      v7 = 0;
      xpc_release(v6);
    }
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = asString();
    v12 = xpc_string_create(v4);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v10 = *(a1 + 32);
    v11 = "kError";
    sub_10000F688(&v10, &v12, &v13);
    xpc_release(v13);
    v13 = 0;
    xpc_release(v12);
  }
}

void sub_1013C87AC(uint64_t a1, ctu **a2)
{
  if (*a2 == 1)
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
    v4 = v18;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GetTapeDeviceCaps OK", buf, 2u);
    }

    v6 = *a2;
    if (v6 == 1)
    {
      ctu::cf_to_xpc(&v13, a2[1], v5);
      *buf = *(a1 + 32);
      v18 = "kGetTapeDeviceCapabilities";
      sub_10000F688(buf, &v13, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v13);
      return;
    }

    if (v6 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v12 = &ctu::ResultIsError::~ResultIsError;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
  v7 = v18;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "GetTapeDeviceCaps failed", buf, 2u);
  }

  v8 = *a2;
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v12 = &ctu::ResultIsNotError::~ResultIsNotError;
      goto LABEL_17;
    }

LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    v12 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_17:
    __cxa_throw(exception, v11, v12);
  }

  v9 = asString();
  v15 = xpc_string_create(v9);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  *buf = *(a1 + 32);
  v18 = "kError";
  sub_10000F688(buf, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
}

void sub_1013C8A30(uint64_t a1, ctu **a2)
{
  if (*a2 == 1)
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
    v4 = v18;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "get Euicc Info1 OK", buf, 2u);
    }

    v6 = *a2;
    if (v6 == 1)
    {
      ctu::cf_to_xpc(&v13, a2[1], v5);
      *buf = *(a1 + 32);
      v18 = "kEuiccInfo1";
      sub_10000F688(buf, &v13, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v13);
      return;
    }

    if (v6 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v12 = &ctu::ResultIsError::~ResultIsError;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
  v7 = v18;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "get Euicc Info1 failed", buf, 2u);
  }

  v8 = *a2;
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v12 = &ctu::ResultIsNotError::~ResultIsNotError;
      goto LABEL_17;
    }

LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    v12 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_17:
    __cxa_throw(exception, v11, v12);
  }

  v9 = asString();
  v15 = xpc_string_create(v9);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  *buf = *(a1 + 32);
  v18 = "kError";
  sub_10000F688(buf, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
}

void sub_1013C8CB4(uint64_t a1, ctu **a2)
{
  if (*a2 == 1)
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
    v4 = v18;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Get Session Data success", buf, 2u);
    }

    v6 = *a2;
    if (v6 == 1)
    {
      ctu::cf_to_xpc(&v13, a2[1], v5);
      *buf = *(a1 + 32);
      v18 = "kGetSessionData";
      sub_10000F688(buf, &v13, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v13);
      return;
    }

    if (v6 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v12 = &ctu::ResultIsError::~ResultIsError;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
  v7 = v18;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Get Session Data failed", buf, 2u);
  }

  v8 = *a2;
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v12 = &ctu::ResultIsNotError::~ResultIsNotError;
      goto LABEL_17;
    }

LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    v12 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_17:
    __cxa_throw(exception, v11, v12);
  }

  v9 = asString();
  v15 = xpc_string_create(v9);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  *buf = *(a1 + 32);
  v18 = "kError";
  sub_10000F688(buf, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
}

void sub_1013C8F38(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 1)
  {
    if (a2[1] == 1)
    {
      v12 = xpc_BOOL_create(1);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      *buf = *(a1 + 32);
      v17 = "kSuccess";
      sub_10000F688(buf, &v12, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v12);
    }

    else
    {
      v10 = xpc_string_create("failed");
      if (!v10)
      {
        v10 = xpc_null_create();
      }

      *buf = *(a1 + 32);
      v17 = "kError";
      sub_10000F688(buf, &v10, &v11);
      xpc_release(v11);
      v11 = 0;
      xpc_release(v10);
    }
  }

  else
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
    v4 = v17;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Clear Session Data failed", buf, 2u);
    }

    v5 = *a2;
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(exception);
        v9 = &ctu::ResultIsNotError::~ResultIsNotError;
      }

      else
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        v9 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      }

      __cxa_throw(exception, v8, v9);
    }

    v6 = asString();
    v14 = xpc_string_create(v6);
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    *buf = *(a1 + 32);
    v17 = "kError";
    sub_10000F688(buf, &v14, &v15);
    xpc_release(v15);
    v15 = 0;
    xpc_release(v14);
  }
}

void sub_1013C918C(uint64_t a1, ctu **a2)
{
  if (*a2 == 1)
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
    v4 = v18;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "get Euicc Challenge OK", buf, 2u);
    }

    v6 = *a2;
    if (v6 == 1)
    {
      ctu::cf_to_xpc(&v13, a2[1], v5);
      *buf = *(a1 + 32);
      v18 = "kEuiccChallenge";
      sub_10000F688(buf, &v13, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v13);
      return;
    }

    if (v6 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v12 = &ctu::ResultIsError::~ResultIsError;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
  v7 = v18;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "get Euicc Challenge failed", buf, 2u);
  }

  v8 = *a2;
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v12 = &ctu::ResultIsNotError::~ResultIsNotError;
      goto LABEL_17;
    }

LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    v12 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_17:
    __cxa_throw(exception, v11, v12);
  }

  v9 = asString();
  v15 = xpc_string_create(v9);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  *buf = *(a1 + 32);
  v18 = "kError";
  sub_10000F688(buf, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
}

uint64_t *sub_1013C9410(uint64_t a1)
{
  v4 = a1;
  for (i = 17; i > 1; --i)
  {
    rand();
    v3 = 0;
    result = sub_1013CB770(&v4, &v3);
  }

  return result;
}

BOOL sub_1013C945C(uint64_t a1, void **a2, void **a3)
{
  std::mutex::lock(&stru_101FB1BC0);
  memset(&__str, 0, sizeof(__str));
  v6 = sub_10005D1B0(a1, a2, &__str);
  if (v6)
  {
    v7 = 0;
    memset(&__p, 0, sizeof(__p));
    memset(&v17, 0, sizeof(v17));
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
      p_str = __str.__r_.__value_.__r.__words[0];
    }

LABEL_5:
    v10 = size - v7;
    if ((size - v7) >= 1)
    {
      v11 = p_str + size;
      v12 = p_str + v7;
      do
      {
        v13 = memchr(v12, 44, v10);
        if (!v13)
        {
          break;
        }

        if (*v13 == 44)
        {
          if (v13 != v11)
          {
            v14 = v13 - p_str;
            if (v13 - p_str != -1)
            {
              std::string::basic_string(&v16, &__str, v7, v14 - v7, &v20);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              __p = v16;
              std::string::operator=(&v17, &__p);
              a3[1] = sub_1013CBD7C(*a3, a3[1], &v17)[1].__r_.__value_.__r.__words;
              v7 = v14 + 1;
              size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_str = &__str;
              }

              else
              {
                p_str = __str.__r_.__value_.__r.__words[0];
              }

              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = __str.__r_.__value_.__l.__size_;
              }

              if (size > v14)
              {
                goto LABEL_5;
              }
            }
          }

          break;
        }

        v12 = v13 + 1;
        v10 = v11 - v12;
      }

      while (v11 - v12 >= 1);
    }

    std::string::basic_string(&v16, &__str, v7, 0xFFFFFFFFFFFFFFFFLL, &v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v16;
    std::string::operator=(&v17, &__p);
    a3[1] = sub_1013CBD7C(*a3, a3[1], &v17)[1].__r_.__value_.__r.__words;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  return v6;
}

void sub_1013C9660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  _Unwind_Resume(a1);
}

uint64_t sub_1013C96BC(uint64_t a1, std::string *this, uint64_t a3, uint64_t a4)
{
  memset(&__p, 0, sizeof(__p));
  if (a3 != a4)
  {
    for (i = a3 + 24; ; i += 24)
    {
      if (*(i - 1) < 0)
      {
        sub_100005F2C(v13, *(i - 24), *(i - 16));
      }

      else
      {
        v10 = *(i - 24);
        v14 = *(i - 8);
        *v13 = v10;
      }

      if (v14 >= 0)
      {
        v11 = v13;
      }

      else
      {
        v11 = v13[0];
      }

      if (v14 >= 0)
      {
        v12 = HIBYTE(v14);
      }

      else
      {
        v12 = v13[1];
      }

      std::string::append(&__p, v11, v12);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }

      if (i == a4)
      {
        break;
      }

      std::string::append(&__p, ",", 1uLL);
    }
  }

  v6 = sub_10033238C(a1, this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1013C97C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013C97FC(uint64_t a1, uint64_t a2)
{
  sub_10080520C(&v9, (a2 + 24), *(a1 + 8), a2);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 != v4)
  {
    do
    {
      v7 = *(v6 - 1);
      v6 -= 3;
      if (v7 < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != v5);
  }

  *(a1 + 8) = v5;
  return a2;
}

void sub_1013C9878(uint64_t a1, ctu **a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    ctu::cf_to_xpc(&v6, a2[1], a2);
    v8 = *(a1 + 32);
    v9 = "kNotifications";
    sub_10000F688(&v8, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = asString();
    object = xpc_string_create(v4);
    if (!object)
    {
      object = xpc_null_create();
    }

    v8 = *(a1 + 32);
    v9 = "kError";
    sub_10000F688(&v8, &object, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(object);
  }
}

void sub_1013C99A4(uint64_t a1, ctu **a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    ctu::cf_to_xpc(&v6, a2[1], a2);
    v8 = *(a1 + 32);
    v9 = "kNotification";
    sub_10000F688(&v8, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = asString();
    object = xpc_string_create(v4);
    if (!object)
    {
      object = xpc_null_create();
    }

    v8 = *(a1 + 32);
    v9 = "kError";
    sub_10000F688(&v8, &object, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(object);
  }
}

void sub_1013C9AD0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    v6 = xpc_string_create("Success");
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v8 = *(a1 + 32);
    v9 = "kDeleteResult";
    sub_10000F688(&v8, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = asString();
    object = xpc_string_create(v4);
    if (!object)
    {
      object = xpc_null_create();
    }

    v8 = *(a1 + 32);
    v9 = "kError";
    sub_10000F688(&v8, &object, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(object);
  }
}

void sub_1013C9C14(void *a1, Registry *this)
{
  ServiceMap = Registry::getServiceMap(this);
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
  v12 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v12);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  std::mutex::unlock(v4);
  *a1 = v11;
  a1[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }
}

void sub_1013C9CE0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    v5 = (a2 + 8);
    if (a2[31] < 0)
    {
      v5 = *v5;
    }

    v7 = xpc_string_create(v5);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    v9 = *(a1 + 32);
    v10 = "kSuccess";
    sub_10000F688(&v9, &v7, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(v7);
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = asString();
    object = xpc_string_create(v4);
    if (!object)
    {
      object = xpc_null_create();
    }

    v9 = *(a1 + 32);
    v10 = "kError";
    sub_10000F688(&v9, &object, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(object);
  }
}

void sub_1013C9E2C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v5 = asString();
      v16 = xpc_string_create(v5);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      v14 = *(a1 + 32);
      v15 = "kError";
      sub_10000F688(&v14, &v16, &v17);
      xpc_release(v17);
      v17 = 0;
      xpc_release(v16);
      return;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    goto LABEL_17;
  }

  v12 = xpc_int64_create(*(a2 + 1));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v14 = *(a1 + 32);
  v15 = "kUnique";
  sub_10000F688(&v14, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v6 = *a2;
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v9 = &ctu::ResultIsError::~ResultIsError;
      goto LABEL_18;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_17:
    v9 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_18:
    __cxa_throw(exception, v8, v9);
  }

  v10 = xpc_int64_create(*(a2 + 2));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v14 = *(a1 + 32);
  v15 = "kDuplicates";
  sub_10000F688(&v14, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
}

void *sub_1013CA024(void *a1)
{
  *a1 = off_101F34538;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013CA070(void *a1)
{
  *a1 = off_101F34538;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013CA148(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F34538;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013CA180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013CA190(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013CA1D0(uint64_t a1, _WORD *a2)
{
  if ((*a2 & 0x100) != 0)
  {
    v3 = asString();
    v6 = xpc_string_create(v3);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v4 = *(a1 + 8);
    v5 = "kError";
    sub_10000F688(&v4, &v6, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v6);
  }

  else
  {
    v6 = xpc_BOOL_create(1);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v4 = *(a1 + 8);
    v5 = "kSuccess";
    sub_10000F688(&v4, &v6, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v6);
  }
}

uint64_t sub_1013CA2C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1013CA30C(void *a1)
{
  *a1 = off_101F345B8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013CA358(void *a1)
{
  *a1 = off_101F345B8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013CA430(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F345B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013CA468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013CA478(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013CA4B8(uint64_t a1, _WORD *a2)
{
  if ((*a2 & 0x100) != 0)
  {
    v3 = asString();
    v6 = xpc_string_create(v3);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v4 = *(a1 + 8);
    v5 = "kError";
    sub_10000F688(&v4, &v6, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v6);
  }

  else
  {
    v6 = xpc_BOOL_create(1);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v4 = *(a1 + 8);
    v5 = "kSuccess";
    sub_10000F688(&v4, &v6, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v6);
  }
}

uint64_t sub_1013CA5A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1013CA5F4(void *a1)
{
  *a1 = off_101F34638;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013CA640(void *a1)
{
  *a1 = off_101F34638;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013CA718(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F34638;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013CA750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013CA760(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013CA7A0(uint64_t a1, _WORD *a2)
{
  if ((*a2 & 0x100) != 0)
  {
    v3 = asString();
    v6 = xpc_string_create(v3);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v4 = *(a1 + 8);
    v5 = "kError";
    sub_10000F688(&v4, &v6, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v6);
  }

  else
  {
    v6 = xpc_BOOL_create(1);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v4 = *(a1 + 8);
    v5 = "kSuccess";
    sub_10000F688(&v4, &v6, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v6);
  }
}

uint64_t sub_1013CA890(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013CA8DC(uint64_t a1, ctu **a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    ctu::cf_to_xpc(&v6, a2[1], a2);
    v8 = *(a1 + 32);
    v9 = "kResult";
    sub_10000F688(&v8, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = asString();
    object = xpc_string_create(v4);
    if (!object)
    {
      object = xpc_null_create();
    }

    v8 = *(a1 + 32);
    v9 = "kError";
    sub_10000F688(&v8, &object, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(object);
  }
}

unsigned __int8 *sub_1013CAA08(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v5 = &ctu::ResultIsError::~ResultIsError;
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      v5 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    }

    __cxa_throw(exception, v4, v5);
  }

  return a1 + 8;
}

void *sub_1013CAAA8(void *a1)
{
  *a1 = off_101F346B8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013CAAF4(void *a1)
{
  *a1 = off_101F346B8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013CABCC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F346B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013CAC04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013CAC14(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013CAC54(uint64_t a1, unsigned __int8 *a2)
{
  *__p = 0u;
  v13 = 0u;
  sub_100F17F68(__p, a2);
  if (LOBYTE(__p[0]) == 1)
  {
    v3 = ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
    v4 = v17;
    ctu::OsLogContext::~OsLogContext(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "get associated IMEI OK", buf, 2u);
    }

    if (LOBYTE(__p[0]) == 1)
    {
      if (v13 >= 0)
      {
        v5 = &__p[1];
      }

      else
      {
        v5 = __p[1];
      }

      v14 = xpc_string_create(v5);
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      *buf = *(a1 + 8);
      v17 = "kIMEI";
      sub_10000F688(buf, &v14, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v14);
      goto LABEL_17;
    }

    if (LOBYTE(__p[0]) == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v10 = &ctu::ResultIsError::~ResultIsError;
      ctu::ResultIsError::ResultIsError(exception);
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v6 = ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
  v7 = v17;
  ctu::OsLogContext::~OsLogContext(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "get associated IMEI failed", buf, 2u);
  }

  if (LOBYTE(__p[0]) != 2)
  {
    if (LOBYTE(__p[0]) == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v10 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
      goto LABEL_26;
    }

LABEL_25:
    exception = __cxa_allocate_exception(0x10uLL);
    v10 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_26:
    __cxa_throw(exception, v11, v10);
  }

  v8 = asString();
  v14 = xpc_string_create(v8);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  *buf = *(a1 + 8);
  v17 = "kError";
  sub_10000F688(buf, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
LABEL_17:
  if (LOBYTE(__p[0]) == 1 && SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }
}

void sub_1013CAF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a9 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013CAF5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1013CAFA8(void *a1)
{
  *a1 = off_101F34738;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013CAFF4(void *a1)
{
  *a1 = off_101F34738;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013CB0CC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F34738;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013CB104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013CB114(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013CB154(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = v3 - 1;
  if ((v3 - 1) < 2 && v3 == 1)
  {
    if (a2[1])
    {
      v10 = xpc_BOOL_create(1);
      if (!v10)
      {
        v10 = xpc_null_create();
      }

      *buf = *(a1 + 8);
      v15 = "kSuccess";
      sub_10000F688(buf, &v10, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v10);
    }

    else
    {
      v8 = xpc_string_create("failed");
      if (!v8)
      {
        v8 = xpc_null_create();
      }

      *buf = *(a1 + 8);
      v15 = "kError";
      sub_10000F688(buf, &v8, &v9);
      xpc_release(v9);
      v9 = 0;
      xpc_release(v8);
    }
  }

  else
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
    v5 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Set associated IMEI failed", buf, 2u);
    }

    if (v4 >= 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v6 = asString();
    v12 = xpc_string_create(v6);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    *buf = *(a1 + 8);
    v15 = "kError";
    sub_10000F688(buf, &v12, &v13);
    xpc_release(v13);
    v13 = 0;
    xpc_release(v12);
  }
}

uint64_t sub_1013CB37C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1013CB3C8(void *a1)
{
  *a1 = off_101F347B8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013CB414(void *a1)
{
  *a1 = off_101F347B8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013CB4EC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F347B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013CB524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013CB534(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013CB574(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *__p = *a2;
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if ((*a3 & 0x100) != 0)
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "vinyl.test");
    v5 = v12;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Read File failed", buf, 2u);
    }

    v6 = asString();
    v9 = xpc_string_create(v6);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    *buf = *(a1 + 8);
    v12 = "kError";
    sub_10000F688(buf, &v9, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v9);
  }

  else
  {
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v9 = xpc_string_create(v4);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    *buf = *(a1 + 8);
    v12 = "kFileData";
    sub_10000F688(buf, &v9, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v9);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1013CB708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013CB724(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1013CB770(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = &v5[-*v3];
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      sub_1000CE3D4();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = &v5[-*v3];
    *v8 = *a2;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    *v3 = 0;
    *(v3 + 8) = v8 + 1;
    *(v3 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return a1;
}

void *sub_1013CB870(void *a1)
{
  *a1 = off_101F34838;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013CB8BC(void *a1)
{
  *a1 = off_101F34838;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013CB994(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F34838;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013CB9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013CB9DC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013CBA1C(uint64_t a1, void *a2, _WORD *a3)
{
  v5 = a2 + 1;
  v4 = a2[1];
  v15 = *a2;
  v16 = v4;
  if (a2[2])
  {
    v4[2] = &v16;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    v15 = &v16;
  }

  if ((*a3 & 0x100) == 0)
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    v6 = v4;
    while (1)
    {
      v7 = *(v6 + 8);
      if (v7 <= 5)
      {
        if (v7 == 5)
        {
          v9 = v4;
          while (1)
          {
            v10 = *(v9 + 8);
            if (v10 <= 9)
            {
              if (v10 == 9)
              {
                v27 = 0;
                v28 = 0;
                v29 = 0;
                v11 = sub_10000BA08(v4, 5);
                v27 = 0;
                v28 = 0;
                v29 = 0;
                sub_100034C50(&v27, *v11, v11[1], v11[1] - *v11);
                object = 0;
                v25 = 0;
                v26 = 0;
                v12 = sub_10000BA08(v16, 9);
                object = 0;
                v25 = 0;
                v26 = 0;
                sub_100034C50(&object, *v12, v12[1], v12[1] - *v12);
                __dst[0] = 0;
                __dst[1] = 0;
                memset(bytes, 0, 14);
                if (v28 != v27)
                {
                  if ((v28 - v27) >= 0x10)
                  {
                    v13 = 16;
                  }

                  else
                  {
                    v13 = v28 - v27;
                  }

                  memmove(__dst, v27, v13);
                }

                if (v25 != object)
                {
                  if ((v25 - object) >= 0xE)
                  {
                    v14 = 14;
                  }

                  else
                  {
                    v14 = v25 - object;
                  }

                  memmove(bytes, object, v14);
                }

                v22 = xpc_data_create(__dst, 0x10uLL);
                if (!v22)
                {
                  v22 = xpc_null_create();
                }

                v20 = *(a1 + 8);
                v21 = "kRes";
                sub_10000F688(&v20, &v22, &v23);
                xpc_release(v23);
                v23 = 0;
                xpc_release(v22);
                v22 = 0;
                v18 = xpc_data_create(bytes, 0xEuLL);
                if (!v18)
                {
                  v18 = xpc_null_create();
                }

                v20 = *(a1 + 8);
                v21 = "kAuts";
                sub_10000F688(&v20, &v18, &v19);
                xpc_release(v19);
                v19 = 0;
                xpc_release(v18);
                v18 = 0;
                if (object)
                {
                  v25 = object;
                  operator delete(object);
                }

                if (v27)
                {
                  v28 = v27;
                  operator delete(v27);
                }

                goto LABEL_15;
              }

              ++v9;
            }

            v9 = *v9;
            if (!v9)
            {
              goto LABEL_15;
            }
          }
        }

        ++v6;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = asString();
  __dst[0] = xpc_string_create(v8);
  if (!__dst[0])
  {
    __dst[0] = xpc_null_create();
  }

  v27 = *(a1 + 8);
  v28 = "kError";
  sub_10000F688(&v27, __dst, &object);
  xpc_release(object);
  object = 0;
  xpc_release(__dst[0]);
LABEL_15:
  sub_10004EC58(&v15, v16);
}

void sub_1013CBCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013CBD30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *sub_1013CBD7C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v12 = a2 - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v11;
    }

    v29 = a1;
    if (v14)
    {
      sub_100005348(a1, v14);
    }

    v15 = 8 * (v12 >> 3);
    v26 = 0;
    v27 = v15;
    v28 = v15;
    if (!(0xAAAAAAAAAAAAAAABLL * (v12 >> 3)))
    {
      if (v12 < 1)
      {
        if (v10 == v4)
        {
          v17 = 1;
        }

        else
        {
          v17 = 0x5555555555555556 * (v12 >> 3);
        }

        v30[4] = a1;
        sub_100005348(a1, v17);
      }

      v16 = 1 - 0x5555555555555555 * (v12 >> 3);
      sub_10080520C(v30, v15, v15, v15 - 24 * (v16 >> 1));
      v27 -= 24 * (v16 >> 1);
      *&v28 = v15;
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v15, *a3, *(a3 + 8));
    }

    else
    {
      v18 = *a3;
      *(v15 + 16) = *(a3 + 16);
      *v15 = v18;
    }

    v19 = v27;
    memcpy((v28 + 24), v4, a1[1] - v4);
    v20 = *a1;
    *&v28 = v28 + 24 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v20;
    v22 = (v19 - (v4 - v20));
    memcpy(v22, v20, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v26 = v23;
    v27 = v23;
    sub_1000054E0(&v26);
    return v19;
  }

  else if (a2 == v6)
  {
    sub_10011C7A4(a1, a3);
  }

  else
  {
    sub_1001E2D70(a1, a2, v6, a2 + 24);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 24;
    if (v8)
    {
      v9 = 0;
    }

    std::string::operator=(v4, (a3 + v9));
  }

  return v4;
}

const void **sub_1013CC040(const void **a1, const void **a2)
{
  *a1 = 0;
  sub_1001140B4(a1, a2);
  return a1;
}

void sub_1013CC06C(_Unwind_Exception *exception_object)
{
  if (*v1 == 1)
  {
    sub_10001021C((v1 + 8));
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

void *sub_1013CC090(void *a1)
{
  *a1 = off_101F348B8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013CC0DC(void *a1)
{
  *a1 = off_101F348B8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013CC1B4(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F348B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013CC1EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013CC1FC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013CC23C(uint64_t a1, uint64_t a2, __int128 *a3, _WORD *a4)
{
  LOBYTE(v19) = 0;
  v22 = 0;
  v5 = *(a2 + 24);
  if (v5 == 1)
  {
    v6 = (a2 + 8);
    v7 = *(a2 + 8);
    v19 = *a2;
    v20 = v7;
    if (*(a2 + 16))
    {
      v7[2] = &v20;
      *a2 = v6;
      *v6 = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      v19 = &v20;
    }

    v22 = 1;
  }

  v17 = *a3;
  *__p = *a3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  if ((*a4 & 0x100) != 0)
  {
    v16 = asString();
    v30 = xpc_string_create(v16);
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    v27[0] = *(a1 + 8);
    v27[1] = "kError";
    sub_10000F688(v27, &v30, &v25);
    xpc_release(v25);
    v25 = 0;
    v15 = v17;
    xpc_release(v30);
  }

  else
  {
    if (v5)
    {
      v8 = v19;
      if (v19 != &v20)
      {
        do
        {
          ctu::hex_sp();
          if (v28 >= 0)
          {
            v9 = v27;
          }

          else
          {
            v9 = v27[0];
          }

          v29 = xpc_string_create(v9);
          if (!v29)
          {
            v29 = xpc_null_create();
          }

          v10 = subscriber::asString();
          v25 = *(a1 + 8);
          v26 = v10;
          sub_10000F688(&v25, &v29, &v30);
          xpc_release(v30);
          v30 = 0;
          xpc_release(v29);
          v29 = 0;
          if (v28 < 0)
          {
            operator delete(v27[0]);
          }

          v11 = v8[1];
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
              v12 = v8[2];
              v13 = *v12 == v8;
              v8 = v12;
            }

            while (!v13);
          }

          v8 = v12;
        }

        while (v12 != &v20);
      }
    }

    ctu::hex_sp();
    if (v28 >= 0)
    {
      v14 = v27;
    }

    else
    {
      v14 = v27[0];
    }

    v23 = xpc_string_create(v14);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    v25 = *(a1 + 8);
    v26 = "kAttestation";
    sub_10000F688(&v25, &v23, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v23);
    v23 = 0;
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    v15 = __p[0];
  }

  if (v15)
  {
    operator delete(v15);
  }

  if (v22 == 1)
  {
    sub_10004EC58(&v19, v20);
  }
}

void sub_1013CC4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17 == 1)
  {
    sub_10004EC58(&a14, a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013CC540(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013CC5A8(void *a1)
{
  if (!*a1)
  {
    __TUAssertTrigger();
  }

  operator new();
}

uint64_t sub_1013CC640(uint64_t a1, id *a2)
{
  *a1 = &off_101F349D0;
  ctu::OsLogContext::OsLogContext(&v5, kCtLoggingSystemName, "cld.ft.mon");
  ctu::OsLogLogger::OsLogLogger(v6, &v5);
  ctu::OsLogLogger::OsLogLogger((a1 + 8), v6);
  ctu::OsLogLogger::~OsLogLogger(v6);
  ctu::OsLogContext::~OsLogContext(&v5);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F34938;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = *a2;
  return a1;
}

void sub_1013CC704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1013CC728(uint64_t a1, char *a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    __TUAssertTrigger();
  }

  v5 = a2[23];
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 1);
  }

  if (!v5)
  {
    __TUAssertTrigger();
  }

  v6 = sub_100032AC8((a1 + 64));
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7 == v8)
  {
    goto LABEL_18;
  }

  do
  {
    v9 = [**v7 UTF8String];
    v10 = strlen(v9);
    v11 = v10;
    v12 = a2[23];
    if (v12 < 0)
    {
      if (v10 != *(a2 + 1))
      {
        goto LABEL_15;
      }

      if (v10 == -1)
      {
        sub_10013C334();
      }

      v13 = *a2;
    }

    else
    {
      v13 = a2;
      if (v11 != v12)
      {
        goto LABEL_15;
      }
    }

    if (!memcmp(v13, v9, v11))
    {
      goto LABEL_17;
    }

LABEL_15:
    v7 += 2;
  }

  while (v7 != v8);
  v7 = v8;
LABEL_17:
  v8 = *(a1 + 40);
LABEL_18:
  if (v7 == v8)
  {
    operator new();
  }

  v14 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (a2[23] >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    *buf = 136315138;
    v18 = v16;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Already have a handler registered for featureId: %s", buf, 0xCu);
  }

  return __TUAssertTrigger();
}

void sub_1013CCC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013CCCD0(uint64_t a1, uint64_t **a2)
{
  v4 = sub_100032AC8((a1 + 64));
  dispatch_assert_queue_V2(v4);

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v15 = v8;
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v6;
  v18 = v5;
  v9 = off_101FB97D0();
  v10 = **a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3321888768;
  v11[2] = sub_1013CD4AC;
  v11[3] = &unk_101F34990;
  v11[4] = v8;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v6;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  [(objc_class *)v9 requestFeatureWithId:v10 allowStale:1 completion:v11];
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1013CCE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1013CD680(v9 + 32);
  sub_1013CD680(va);
  _Unwind_Resume(a1);
}

void sub_1013CCE44(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = *(a1 + 40);
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        v6 = sub_100032AC8((v4 + 64));
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_1013CCF1C(uint64_t result, uint64_t a2)
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

void sub_1013CCF38(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1013CCF48(uint64_t a1, char *a2)
{
  v4 = sub_100032AC8((a1 + 64));
  dispatch_assert_queue_V2(v4);

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v6 == v5)
  {
    goto LABEL_12;
  }

  do
  {
    v7 = [**v6 UTF8String];
    v8 = strlen(v7);
    v9 = v8;
    v10 = a2[23];
    if (v10 < 0)
    {
      if (v8 != *(a2 + 1))
      {
        goto LABEL_9;
      }

      if (v8 == -1)
      {
        sub_10013C334();
      }

      v11 = *a2;
    }

    else
    {
      v11 = a2;
      if (v9 != v10)
      {
        goto LABEL_9;
      }
    }

    if (!memcmp(v11, v7, v9))
    {
      goto LABEL_11;
    }

LABEL_9:
    v6 += 16;
  }

  while (v6 != v5);
  v6 = v5;
LABEL_11:
  v5 = *(a1 + 40);
LABEL_12:
  if (v6 != v5)
  {
    if (v6 + 16 == v5)
    {
      v14 = v6;
    }

    else
    {
      do
      {
        v12 = *(v6 + 16);
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
        v13 = *(v6 + 8);
        *v6 = v12;
        if (v13)
        {
          sub_100004A34(v13);
        }

        v14 = v6 + 16;
        v15 = v6 + 32;
        v6 += 16;
      }

      while (v15 != v5);
      v5 = *(a1 + 40);
    }

    while (v5 != v14)
    {
      v16 = *(v5 - 8);
      if (v16)
      {
        sub_100004A34(v16);
      }

      v5 -= 16;
    }

    *(a1 + 40) = v14;
    v17 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v24 = 136315138;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Stopped monitoring for: %s", &v24, 0xCu);
    }

    if (*(a1 + 32) == *(a1 + 40) && *(a1 + 56))
    {
      v19 = sub_100032AC8((a1 + 8));
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I No feature left to monitor. Unregister for feature change notification", &v24, 2u);
      }

      v20 = off_101FB97D0();
      v22 = *(a1 + 56);
      v21 = (a1 + 56);
      [(objc_class *)v20 unregisterForFeatureChangeNotificationsUsingObserver:v22];
      v23 = *v21;
      *v21 = 0;
    }
  }
}

uint64_t sub_1013CD1B8(uint64_t a1, char *a2)
{
  v4 = sub_100032AC8((a1 + 64));
  dispatch_assert_queue_V2(v4);

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5 == v6)
  {
    goto LABEL_12;
  }

  do
  {
    v7 = [**v5 UTF8String];
    v8 = strlen(v7);
    v9 = v8;
    v10 = a2[23];
    if (v10 < 0)
    {
      if (v8 != *(a2 + 1))
      {
        goto LABEL_9;
      }

      if (v8 == -1)
      {
        sub_10013C334();
      }

      v11 = *a2;
    }

    else
    {
      v11 = a2;
      if (v9 != v10)
      {
        goto LABEL_9;
      }
    }

    if (!memcmp(v11, v7, v9))
    {
      goto LABEL_11;
    }

LABEL_9:
    v5 += 2;
  }

  while (v5 != v6);
  v5 = v6;
LABEL_11:
  v6 = *(a1 + 40);
LABEL_12:
  if (v5 == v6)
  {
    v15 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (a2[23] >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      v18 = 136315138;
      v19 = v17;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Never started monitoring for featureId: %s", &v18, 0xCu);
    }

    __TUAssertTrigger();
    LOBYTE(v13) = 0;
    v14 = 0;
  }

  else
  {
    v12 = 43;
    if (*(*v5 + 42))
    {
      v12 = 41;
    }

    v13 = *(*v5 + v12);
    v14 = v13 >> 8;
  }

  return v13 | (v14 << 8);
}

uint64_t sub_1013CD390(uint64_t a1)
{
  *a1 = off_101F34938;
  if (*(a1 + 56))
  {
    [(objc_class *)off_101FB97D0() unregisterForFeatureChangeNotificationsUsingObserver:*(a1 + 56)];
    v2 = *(a1 + 56);
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 64);
  *(a1 + 64) = 0;

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 8);
        if (v7)
        {
          sub_100004A34(v7);
        }

        v5 -= 16;
      }

      while (v5 != v4);
      v6 = *(a1 + 32);
    }

    *(a1 + 40) = v4;
    operator delete(v6);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  return a1;
}

void sub_1013CD474(uint64_t a1)
{
  sub_1013CD390(a1);

  operator delete();
}

void sub_1013CD4AC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = a1[5];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = a1[4];
      if (v11)
      {
        v12 = a1[5];
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
        }

        v13 = a1[7];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
        }

        v14 = v7;
        v15 = v8;
        v16 = sub_100032AC8((v11 + 64));
        operator new();
      }

      sub_100004A34(v10);
    }
  }
}

void *sub_1013CD5FC(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013CD630(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_1013CD680(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

Class sub_1013CD6C4()
{
  if (qword_101FCA9F0 != -1)
  {
    dispatch_once(&qword_101FCA9F0, &stru_101F34A70);
  }

  result = objc_getClass("CSFFeatureManager");
  qword_101FCA9E8 = result;
  off_101FB97D0 = sub_1013CD728;
  return result;
}

uint64_t *sub_1013CD760(uint64_t *a1)
{
  v11 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (v5)
      {
        v6 = sub_100032AC8((v5 + 64));
        dispatch_assert_queue_V2(v6);

        v7 = *(v5 + 32);
        for (i = *(v5 + 40); v7 != i; v7 += 16)
        {
          v9 = *(v7 + 8);
          v12[0] = *v7;
          v12[1] = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_1013CCCD0(v5, v12);
          if (v9)
          {
            sub_100004A34(v9);
          }
        }
      }

      sub_100004A34(v4);
    }
  }

  return sub_100D68D40(&v11);
}

void sub_1013CD828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_100004A34(v2);
  sub_100D68D40(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013CD864(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    v2 = *(v1 + 24);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1013CD8D4(uint64_t a1)
{
  v32 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (!*a1)
      {
LABEL_40:
        sub_100004A34(v4);
        return sub_1013CD864(&v32);
      }

      v6 = *(a1 + 40);
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = sub_100032AC8((v5 + 64));
      dispatch_assert_queue_V2(v9);

      v10 = *(a1 + 24);
      if (!v10 || (v31 = std::__shared_weak_count::lock(v10)) == 0)
      {
LABEL_39:

        goto LABEL_40;
      }

      v11 = *(a1 + 16);
      if (!v11)
      {
        goto LABEL_38;
      }

      if (!v7 || v8)
      {
        v18 = sub_100032AC8((v5 + 8));
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *v11;
          *buf = 138412546;
          v35 = v19;
          v36 = 2112;
          v37 = v8;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Encountered error while fetching feature status for: %@. Error: %@ ", buf, 0x16u);
        }
      }

      else
      {
        v12 = [v7 featureID];
        v13 = [v12 isEqual:*v11];

        if (v13)
        {
          v14 = [v7 status];
          if (v14 < 4)
          {
            v15 = 0;
            v16 = 0x101u >> (8 * v14);
            v17 = 1;
            goto LABEL_19;
          }

LABEL_17:
          if ((*(v11 + 44) & 1) == 0)
          {
            LOBYTE(v17) = 0;
            LOBYTE(v16) = 0;
            v15 = 0;
            v21 = 0;
            if (*(v11 + 42))
            {
LABEL_27:
              v22 = sub_100032AC8((v5 + 8));
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = "false";
                if (v16)
                {
                  v23 = "true";
                }

                v24 = *v11;
                if ((v21 & 1) == 0)
                {
                  v23 = "unknown";
                }

                *buf = 138412802;
                v35 = v24;
                v36 = 2080;
                v37 = v23;
                if (v15)
                {
                  v25 = "[real value unknown, using default]";
                }

                else
                {
                  v25 = "";
                }

                v38 = 2080;
                v39 = v25;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Feature subscription status for: %@ changed to: %s %s", buf, 0x20u);
              }

              v26 = v16 | (v17 << 8);
              *(v11 + 41) = v26;
              *(v11 + 40) = v15;
              v27 = v11[4];
              *buf = v26;
              v33 = v15;
              if (!v27)
              {
                sub_100022DB4();
              }

              (*(*v27 + 48))(v27, buf, &v33);
              goto LABEL_38;
            }

            goto LABEL_26;
          }

          v16 = *(v11 + 43);
          v17 = v16 >> 8;
          v15 = 1;
LABEL_19:
          v20 = *(v11 + 42);
          if (v17 == v20 && (v17 & 1) != 0)
          {
            v21 = 1;
            if (*(v11 + 41) != v16)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v21 = v17;
            if (v17 != v20)
            {
              goto LABEL_27;
            }
          }

LABEL_26:
          if (*(v11 + 40) != v15)
          {
            goto LABEL_27;
          }

LABEL_38:
          sub_100004A34(v31);
          goto LABEL_39;
        }

        v18 = sub_100032AC8((v5 + 8));
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v29 = *v11;
          v30 = [v7 featureID];
          *buf = 138412546;
          v35 = v29;
          v36 = 2112;
          v37 = v30;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Mismatch in feature Id. Requested: %@ vs Received: %@", buf, 0x16u);
        }
      }

      goto LABEL_17;
    }
  }

  return sub_1013CD864(&v32);
}

void sub_1013CDC6C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);

  sub_100004A34(a3);
  sub_100004A34(v3);
  sub_1013CD864(va);
  _Unwind_Resume(a1);
}

void sub_1013CDD54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 32))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013CDD90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1013CDDC8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_1013CDDF8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1013CDE58(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F34B18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1013CDEAC(uint64_t a1)
{
  sub_100E2A264(a1 + 32);
  v2 = *(a1 + 24);
}

uint64_t sub_1013CDEEC(uint64_t a1)
{
  *a1 = off_101F34B68;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = nw_activity_create();
  v3 = *(a1 + 8);
  *(a1 + 8) = v2;

  nw_activity_activate();
  return a1;
}

uint64_t sub_1013CDF64(uint64_t a1)
{
  *a1 = off_101F34B68;
  nw_activity_complete_with_reason();

  return a1;
}

void sub_1013CDFCC(uint64_t a1)
{
  sub_1013CDF64(a1);

  operator delete();
}

void *sub_1013CE080(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F34BB8;
  sub_1013CDEEC((a1 + 3));
  return a1;
}

void sub_1013CE104(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F34BB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1013CE180()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Looking for EACellBroadcastMessageListener in EmergencyAlerts", buf, 2u);
  }

  v0 = CUTWeakLinkClass();
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting EACellBroadcastMessageListener", v4, 2u);
    }

    v2 = [v1 sharedInstance];
    [v2 start];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not find EACellBroadcastMessageListener class in EmergencyAlerts!", v3, 2u);
  }
}

void sub_1013CE2B0(uint64_t *a1, void *a2, os_log_t *a3)
{
  v6 = CUTWeakLinkClass();
  v7 = *a3;
  if (v6)
  {
    v8 = v6;
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Forwarding WEA to EmergencyAlerts.", buf, 2u);
    }

    if (!*a2)
    {
      v9 = *a3;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I WEA Additional Dict is Null", v13, 2u);
      }
    }

    v10 = *a1;
    v11 = [v8 sharedInstance];
    [v11 cellBroadcastMessageReceived:v10];
  }

  else if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not find EACellBroadcastMessageListener class in EmergencyAlerts!", v12, 2u);
  }
}

void AQMController::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1013CE77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
{
  if (a17)
  {
    (*(a17->isa + 1))(a17);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_1013CE920(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1013CEA20(uint64_t a1)
{
  *a1 = off_101F34C08;
  sub_10006DCAC(a1 + 928, *(a1 + 936));
  sub_10004543C(a1 + 120);
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1013CEACC(uint64_t a1)
{
  sub_1013CEA20(a1);

  operator delete();
}

void sub_1013CEB04(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ---current data rates---", &v7, 2u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 80) + 8);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I output rate max       :  %llu bps", &v7, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 80) + 24);
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I output rate effective :  %llu bps", &v7, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 80) + 16);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I input rate max        :  %llu bps", &v7, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 80) + 32);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I input rate effective  :  %llu bps", &v7, 0xCu);
  }
}

void sub_1013CECD0(uint64_t a1)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    *(a1 + 88) = 1;
    v2 = *(a1 + 16);
    if (!v2 || (v3 = *(a1 + 8), (v4 = std::__shared_weak_count::lock(v2)) == 0))
    {
      sub_100013CC4();
    }

    v5 = v4;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
    Registry::getTimerService(&v14, *(a1 + 48));
    v6 = v14;
    sub_10000501C(__p, "Report AQM");
    v7 = *(a1 + 24);
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1174405120;
    v8[2] = sub_1013CF0C4;
    v8[3] = &unk_101F34C18;
    v8[4] = a1;
    v8[5] = v3;
    v9 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    aBlock = _Block_copy(v8);
    sub_100E34D88(v6, __p, 1, 5000000, &object, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      sub_100004A34(v15);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1013CEE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    sub_100004A34(v26);
  }

  std::__shared_weak_count::__release_weak(v23);
  _Unwind_Resume(a1);
}

void sub_1013CEEA8(uint64_t a1)
{
  v2 = *(a1 + 956);
  if (v2 == 3)
  {
    v3 = *(a1 + 80);
    *(v3 + 24) = 0u;
    *(v3 + 8) = 0u;
    sub_1013CECD0(a1);
    *(a1 + 89) = 0;
  }

  else if (!v2 && (*(a1 + 89) & 1) == 0)
  {
    *(a1 + 89) = 1;
  }
}

void sub_1013CEF08(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 944))
  {
    v2 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v3 = *(a1 + 928);
    while (1)
    {
      v4 = *(v2 + 7) == *(v3 + 7) && *(v2 + 32) == *(v3 + 32);
      if (!v4)
      {
        break;
      }

      v5 = v2[1];
      v6 = v2;
      if (v5)
      {
        do
        {
          v2 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v2 = v6[2];
          v4 = *v2 == v6;
          v6 = v2;
        }

        while (!v4);
      }

      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v4 = *v8 == v3;
          v3 = v8;
        }

        while (!v4);
      }

      v3 = v8;
      if (v2 == a2 + 1)
      {
        return;
      }
    }
  }

  v9 = *(a1 + 936);
  if (v9)
  {
    v10 = a1 + 936;
    do
    {
      if (*(v9 + 28) >= 1)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * (*(v9 + 28) < 1));
    }

    while (v9);
    if (v10 != a1 + 936 && *(v10 + 28) <= 1)
    {
      v13 = a2[1];
      v11 = (a2 + 1);
      v12 = v13;
      if (!v13)
      {
        goto LABEL_37;
      }

      v14 = v11;
      do
      {
        if (v12[7] >= 1)
        {
          v14 = v12;
        }

        v12 = *&v12[2 * (v12[7] < 1)];
      }

      while (v12);
      if (v14 == v11 || v14[7] > 1 || *(v10 + 32) != *(v14 + 32))
      {
LABEL_37:
        if (*(v10 + 32) == 1)
        {
          sub_1013CF060(a1);
        }

        else
        {
          v15 = *(a1 + 80);
          *(v15 + 24) = 0u;
          *(v15 + 8) = 0u;
          sub_1013CECD0(a1);
        }
      }
    }
  }
}