uint64_t sub_1001914A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = sub_100190EB4((a4 + v7), a2 + v7);
      sub_1001910E4((v8 + 184), (a2 + v7 + 184));
      sub_100191134(a4 + v7 + 216, (a2 + v7 + 216));
      sub_10018F784(a4 + v7 + 248, a2 + v7 + 248);
      v7 += 280;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_10019153C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 280;
    v5 = -v2;
    do
    {
      v4 = sub_100191270(v4) - 280;
      v5 += 280;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001915C8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_100191270(v4 - 280);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10019164C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001916D4(result, a4);
  }

  return result;
}

void sub_1001916B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100191B24(&a9);
  _Unwind_Resume(a1);
}

void sub_1001916D4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    sub_100191724(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100191724(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100191780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      sub_100191820(a4 + v7 + 8, (a2 + v7 + 8));
      v7 += 248;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1001917F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 240;
    do
    {
      sub_1001918CC(v5);
      v5 -= 248;
      v4 += 248;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100191820(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 232) = -1;
  sub_100191868(a1, a2);
  return a1;
}

uint64_t sub_100191868(uint64_t a1, _DWORD *a2)
{
  result = sub_1001918CC(a1);
  v5 = a2[58];
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_101E2E0D8 + v5))(&v6, a2);
    *(a1 + 232) = v5;
  }

  return result;
}

uint64_t sub_1001918CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 232);
  if (v2 != -1)
  {
    result = (off_101E2E0C8[v2])(&v3, result);
  }

  *(v1 + 232) = -1;
  return result;
}

void sub_10019192C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  sub_100191974(&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100191974(void ***a1)
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
        v6 = v4 - 232;
        sub_10018FAC8((v4 - 224));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1001919FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10018F8D0(result, a4);
  }

  return result;
}

void sub_100191A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100191974(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100191A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      sub_10018FA1C(a4 + v7 + 8, a2 + v7 + 8);
      v7 += 232;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100191AF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 224;
    do
    {
      sub_10018FAC8(v5);
      v5 -= 232;
      v4 += 232;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100191B24(void ***a1)
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
        v6 = v4 - 248;
        sub_1001918CC((v4 - 240));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100191BAC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001916D4(result, a4);
  }

  return result;
}

void sub_100191C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100191E28(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100191C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      sub_100191CD4(a4 + v7 + 8, a2 + v7 + 8);
      v7 += 248;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100191CA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 240;
    do
    {
      sub_100191D80(v5);
      v5 -= 248;
      v4 += 248;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100191CD4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 232) = -1;
  sub_100191D1C(a1, a2);
  return a1;
}

uint64_t sub_100191D1C(uint64_t a1, uint64_t a2)
{
  result = sub_100191D80(a1);
  v5 = *(a2 + 232);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E2E0F8[v5])(&v6, a2);
    *(a1 + 232) = v5;
  }

  return result;
}

uint64_t sub_100191D80(uint64_t result)
{
  v1 = result;
  v2 = *(result + 232);
  if (v2 != -1)
  {
    result = (off_101E2E0E8[v2])(&v3, result);
  }

  *(v1 + 232) = -1;
  return result;
}

void sub_100191DE0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  sub_100191B24(&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100191E28(void ***a1)
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
        v6 = v4 - 248;
        sub_100191D80((v4 - 240));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100192530(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  operator delete();
}

void sub_100192BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100192C94(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/last_visible_mccs");
  v4[0] = off_101E2E960;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100192D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100192D74(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/numbers_excluded_from_call_history");
  v4[0] = off_101E2E9E0;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100192E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100192FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  *(v2 - 24) = va;
  sub_1000B23E0((v2 - 24));
  sub_10034F8E8(va1);
  _Unwind_Resume(a1);
}

void sub_100193548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, uint64_t a15, const void *a16, void *a17, uint64_t a18)
{
  sub_10000A1EC(&a12);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_10000A1EC(&a16);
  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void sub_100193B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  v29 = *(v27 - 112);
  if (v29)
  {
    sub_100004A34(v29);
  }

  if (*(v27 - 81) < 0)
  {
    operator delete(*(v27 - 104));
  }

  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_100193E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100195B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1001A7FE4(&STACK[0x230]);
  sub_1001A8028(&STACK[0x2D0]);
  *(v66 - 160) = &a66;
  sub_1000B6428((v66 - 160));

  _Unwind_Resume(a1);
}

void sub_1001963A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100196A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, char a17, uint64_t a18, uint64_t a19, xpc_object_t object, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, xpc_object_t a27, char *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  a28 = &a17;
  sub_1000B2DB4(&a28);

  _Unwind_Resume(a1);
}

void sub_1001970F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100197A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100197DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t object, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100198578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t object, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100198A70(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_100198DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019932C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100199518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100199AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019AC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24, int a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, void *a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a20);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  sub_1001A8068(&a70);
  sub_1001B1588(&STACK[0x290], STACK[0x298]);

  _Unwind_Resume(a1);
}

void sub_10019B938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, const void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, uint64_t a43, const void *a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  sub_100005978(&a44);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_100005978(&a29);
  sub_100005978(&a34);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

void sub_10019E9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (SLOBYTE(STACK[0x30F]) < 0)
  {
    operator delete(STACK[0x2F8]);
  }

  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  if (SLOBYTE(STACK[0x33F]) < 0)
  {
    operator delete(STACK[0x328]);
  }

  xpc_release(STACK[0x358]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  xpc_release(STACK[0x378]);
  STACK[0x3B8] = &STACK[0x380];
  sub_1001A8860(&STACK[0x3B8]);
  STACK[0x3B8] = &STACK[0x398];
  sub_1000B2DB4(&STACK[0x3B8]);
  _Unwind_Resume(a1);
}

void sub_10019F3D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = **(*(a1 + 56) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v5 = *(a1 + 32);
      }

      v6 = [v3 code];
      if (v6 > 4)
      {
        std::to_string(&v21, v6);
      }

      else
      {
        sub_10000501C(&v21, off_101E2F2F0[v6]);
      }

      v7 = &v21;
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v21.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N --From-CSD--> Report call %s NewIncoming failed: %s", buf, 0x16u);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

    v8 = [v3 code];
    v9 = [v3 code];
    v10 = v9 == 4;
    if (v8 == 3 || v9 == 4)
    {
      memset(buf, 0, sizeof(buf));
      std::string::operator=(buf, (a1 + 32));
      buf[24] = v8 == 3;
      buf[25] = v10;
      v11 = *(a1 + 56);
      v12 = *v11[1];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = "BlockList";
        if (v8 == 3)
        {
          v13 = "DoNotDisturb";
        }

        LODWORD(v21.__r_.__value_.__l.__data_) = 136315138;
        *(v21.__r_.__value_.__r.__words + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Sending the call to voice mail because CSD filtered it by %s", &v21, 0xCu);
        v11 = *(a1 + 56);
      }

      v14 = v11;
      v19 = 0;
      write_rest_value();
      sub_10000501C(&__p, "/cc/requests/send_to_voicemail");
      object = v19;
      v19 = xpc_null_create();
      v15 = v14;
      v21.__r_.__value_.__r.__words[0] = off_101E2E1F8;
      v21.__r_.__value_.__l.__size_ = v15;
      v22 = &v21;
      ctu::RestModule::sendRequest();
      sub_1000062D4(&v21);
      xpc_release(object);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      xpc_release(v19);

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }
}

void sub_10019F68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_10019F730(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

void sub_10019F788(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t sub_10019F7D8(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10019F814(uint64_t a1, xpc_object_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/events/unexpected_hold");
  object = v2;
  v3 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_10019F8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

id *sub_10019F8F8(id *a1)
{
  xpc_release(a1[2]);
  a1[2] = 0;
  xpc_release(a1[1]);
  a1[1] = 0;

  return a1;
}

void sub_10019F944(uint64_t a1, xpc_object_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/events/unexpected_answer");
  object = v2;
  v3 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_10019F9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_10019FA28(void *a1)
{
  memset(v2, 0, sizeof(v2));
  v1 = a1[4];
  sub_1001A86DC(v2, a1[5], a1[6], (a1[6] - a1[5]) >> 4);
  [v1 checkAVCBBTapAndSendCallUpdate_sync:v2];
  v3 = v2;
  sub_1001A8860(&v3);
}

void sub_10019FA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001A8860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10019FAA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_1001A86DC(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 4);
}

void sub_1001A02E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, xpc_object_t object, uint64_t a31, xpc_object_t a32, xpc_object_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A0848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __p = &a11;
  sub_1000087B4(&__p);

  _Unwind_Resume(a1);
}

void sub_1001A0E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  a17 = &a20;
  sub_1000B25C4(&a17);

  _Unwind_Resume(a1);
}

uint64_t sub_1001A0EFC(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1001A8B78(a1, a2);
  }

  else
  {
    sub_1001A8AC0(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void sub_1001A11A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_10002D760(&a9);

  xpc_release(object);
  sub_1001A7FE4(&a11);
  _Unwind_Resume(a1);
}

void sub_1001A1D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, xpc_object_t object, uint64_t a32, uint64_t a33, uint64_t a34, xpc_object_t a35, uint64_t a36, xpc_object_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, xpc_object_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v49 - 136) == 1 && *(v49 - 137) < 0)
  {
    operator delete(*(v49 - 160));
  }

  if (*(v49 - 217) < 0)
  {
    operator delete(*(v49 - 240));
  }

  *(v49 - 160) = v49 - 216;
  sub_1000B2DB4((v49 - 160));
  _Unwind_Resume(a1);
}

void sub_1001A2940(uint64_t a1, void *a2)
{
  v3 = a2;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v4 = [v3 UUID];
  sub_1000B2CAC(v4, &__p);

  v5 = HIBYTE(v21);
  if (v21 >= 0)
  {
    v6 = HIBYTE(v21);
  }

  else
  {
    v6 = v20;
  }

  v7 = *(a1 + 63);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 48);
  }

  if (v6 == v7 && (v21 >= 0 ? (p_p = &__p) : (p_p = __p), v8 >= 0 ? (v10 = (a1 + 40)) : (v10 = *(a1 + 40)), !memcmp(p_p, v10, v6)))
  {
    v11 = **(*(a1 + 32) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = v13;
      v15 = [v13 UTF8String];
      v16 = [v3 UUID];
      v17 = v16;
      v18 = *(a1 + 64);
      if (*(v18 + 23) < 0)
      {
        v18 = *v18;
      }

      *buf = 136315650;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2080;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Failing %s %@ with call %s due to control failure", buf, 0x20u);
    }

    [v3 fail];
    if (v21 < 0)
    {
      goto LABEL_15;
    }
  }

  else if (v5 < 0)
  {
LABEL_15:
    operator delete(__p);
  }
}

void sub_1001A2AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *sub_1001A2B48(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100005F2C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1001A2B74(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_1001A30EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t a18, xpc_object_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001A5700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, xpc_object_t object, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, xpc_object_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, xpc_object_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, xpc_object_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (*(v64 - 233) < 0)
  {
    operator delete(*(v64 - 256));
  }

  if (*(v64 - 209) < 0)
  {
    operator delete(*(v64 - 232));
  }

  if (*(v64 - 185) < 0)
  {
    operator delete(*(v64 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_1001A6900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A79D4(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    sub_1001A7B10(a1);
    if (!(a4 >> 61))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 2;
      if (v9 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1001A7B78(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 3)
  {
    sub_1001A7C50(&v17, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      do
      {
        sub_1001A7C20(--v15);
      }

      while (v15 != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_1001A7C50(&v16, a2, (a2 + v12), v8);
    *(a1 + 8) = sub_1001A7BB4(a1, (a2 + v12), a3, *(a1 + 8));
  }
}

void sub_1001A7B10(xpc_object_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        sub_1001A7C20(--v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1001A7B78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1000B318C(a1, a2);
  }

  sub_1000CE3D4();
}

void **sub_1001A7BB4(uint64_t a1, void **a2, void **a3, void **a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *a4 = *v6;
      if (v7)
      {
        xpc_retain(v7);
      }

      else
      {
        *a4 = xpc_null_create();
      }

      ++v6;
      ++a4;
    }

    while (v6 != a3);
  }

  return a4;
}

xpc_object_t *sub_1001A7C50(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      if (*v5)
      {
        xpc_retain(*v5);
      }

      else
      {
        v7 = xpc_null_create();
      }

      v8 = *a4;
      *a4 = v7;
      xpc_release(v8);
      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **sub_1001A7CD4(uint64_t a1, void **a2, void **a3, void **a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *a4 = *v6;
      if (v7)
      {
        xpc_retain(v7);
      }

      else
      {
        *a4 = xpc_null_create();
      }

      ++v6;
      ++a4;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1001A7D40(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) < a4)
  {
    sub_1001A7E8C(a1);
    if (a4 <= 0x199999999999999)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
      {
        v10 = 0x199999999999999;
      }

      else
      {
        v10 = v9;
      }

      sub_1000AE33C(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 5) >= a4)
  {
    sub_1001A7F20(&v14, a2, a3, v8);
    sub_1000B238C(a1, v12);
  }

  else
  {
    sub_1001A7F20(&v13, a2, a2 + v11, v8);
    a1[1] = sub_1000AE388(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_1001A7E8C(uint64_t *a1)
{
  if (*a1)
  {
    sub_1000B238C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1001A7ECC(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 160;
      sub_1000B2434(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1001A7F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    std::string::operator=((a4 + 8), (v5 + 8));
    std::string::operator=((a4 + 32), (v5 + 32));
    v7 = *(v5 + 60);
    *(a4 + 56) = *(v5 + 56);
    *(a4 + 60) = v7;
    std::string::operator=((a4 + 64), (v5 + 64));
    v8 = *(v5 + 96);
    *(a4 + 88) = *(v5 + 88);
    *(a4 + 96) = v8;
    std::string::operator=((a4 + 104), (v5 + 104));
    std::string::operator=((a4 + 128), (v5 + 128));
    *(a4 + 152) = *(v5 + 152);
    a4 += 160;
    v5 += 160;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_1001A7FE4(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001A8028(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    xpc_release(*a1);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1001A8068(uint64_t a1)
{
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  sub_100FB0A00(a1 + 8);
  return a1;
}

uint64_t sub_1001A80B4(uint64_t a1, xpc_object_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1000CE3D4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1001A8214(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  sub_1001A81C8(a1, (16 * v2), a2);
  v16 = (16 * v2 + 16);
  v8 = *(a1 + 8);
  v9 = (16 * v2 + *a1 - v8);
  sub_1001A825C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1001A83F4(&v14);
  return v13;
}

void sub_1001A81B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001A83F4(va);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1001A81C8(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  *a2 = *a3;
  *a3 = xpc_null_create();
  a2[1] = a3[1];
  result = xpc_null_create();
  a3[1] = result;
  return result;
}

void sub_1001A8214(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001A825C(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, xpc_object_t *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1001A81C8(a1, a4, v7);
      v7 += 2;
      a4 = v12 + 2;
      v12 += 2;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_1001A8328(a1, v5);
      v5 += 2;
    }
  }

  return sub_1001A8368(v9);
}

void sub_1001A8328(uint64_t a1, xpc_object_t *a2)
{
  xpc_release(a2[1]);
  a2[1] = 0;
  xpc_release(*a2);
  *a2 = 0;
}

uint64_t sub_1001A8368(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1001A83A0(a1);
  }

  return a1;
}

void sub_1001A83A0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 2;
      sub_1001A8328(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1001A83F4(uint64_t a1)
{
  sub_1001A842C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001A842C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 16;
    sub_1001A8328(v5, (v4 - 16));
  }
}

xpc_object_t *sub_1001A8474(xpc_object_t *a1)
{
  xpc_release(a1[1]);
  a1[1] = 0;
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_1001A84E4(uint64_t a1)
{

  operator delete();
}

id sub_1001A8598(uint64_t a1, void *a2)
{
  *a2 = off_101E2E1F8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001A85E8(id *a1)
{

  operator delete(a1);
}

void sub_1001A8624(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  xpc::dyn_cast_or_default(&object, 0, v2);
  xpc_release(object);
}

uint64_t sub_1001A8690(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E258))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A86DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001A8764(result, a4);
  }

  return result;
}

void sub_1001A8744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001A8860(&a9);
  _Unwind_Resume(a1);
}

void sub_1001A8764(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1001A8214(a1, a2);
  }

  sub_1000CE3D4();
}

xpc_object_t *sub_1001A87A0(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v4 = *v6;
      if (v7)
      {
        xpc_retain(v7);
      }

      else
      {
        *v4 = xpc_null_create();
      }

      v8 = *(v6 + 8);
      v4[1] = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        v4[1] = xpc_null_create();
      }

      v6 += 16;
      v4 = v13 + 2;
      v13 += 2;
    }

    while (v6 != a3);
  }

  LOBYTE(v11) = 1;
  sub_1001A8368(v10);
  return v4;
}

void sub_1001A8860(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001A88B4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001A88B4(uint64_t a1, xpc_object_t *a2)
{
  for (i = *(a1 + 8); i != a2; sub_1001A8328(a1, i))
  {
    i -= 2;
  }

  *(a1 + 8) = a2;
}

void sub_1001A8908(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1001A8958(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001A8958(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001A89B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        sub_100005F2C((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1001A8A74(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 56;
    v5 = -v2;
    do
    {
      sub_1000DD108(v4);
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001A8AC0(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    result = sub_100005F2C((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  *(v4 + 48) = *(a2 + 6);
  v3[1] = v4 + 56;
  return result;
}

void sub_1001A8B50(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A8B78(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1001A8958(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  *(v7 + 48) = *(a2 + 6);
  *&v18 = v18 + 56;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_1001A8D24(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1001A8DB8(&v16);
  return v15;
}

void sub_1001A8CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_1001A8DB8(va);
  _Unwind_Resume(a1);
}

void sub_1001A8D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      *(a4 + 48) = *(v6 + 48);
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1000DD108(v5);
      v5 += 56;
    }
  }
}

uint64_t sub_1001A8DB8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_1000DD108(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001A8E08(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1001A8E08(a1, *a2);
    sub_1001A8E08(a1, a2[1]);
    sub_1000F02B4((a2 + 4));

    operator delete(a2);
  }
}

void sub_1001A8E64(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001A8EB8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001A8EB8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 224)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }

    if (*(i - 65) < 0)
    {
      operator delete(*(i - 88));
    }

    if (*(i - 89) < 0)
    {
      operator delete(*(i - 112));
    }

    if (*(i - 113) < 0)
    {
      operator delete(*(i - 136));
    }

    if (*(i - 145) < 0)
    {
      operator delete(*(i - 168));
    }

    if (*(i - 169) < 0)
    {
      operator delete(*(i - 192));
    }

    if (*(i - 193) < 0)
    {
      operator delete(*(i - 216));
    }
  }

  a1[1] = v2;
}

void sub_1001A8F78(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1001A8F78(a1, *a2);
    sub_1001A8F78(a1, *(a2 + 1));
    if (a2[255] < 0)
    {
      operator delete(*(a2 + 29));
    }

    if (a2[223] < 0)
    {
      operator delete(*(a2 + 25));
    }

    if (a2[199] < 0)
    {
      operator delete(*(a2 + 22));
    }

    if (a2[175] < 0)
    {
      operator delete(*(a2 + 19));
    }

    if (a2[151] < 0)
    {
      operator delete(*(a2 + 16));
    }

    if (a2[119] < 0)
    {
      operator delete(*(a2 + 12));
    }

    if (a2[95] < 0)
    {
      operator delete(*(a2 + 9));
    }

    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

void sub_1001A904C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1001A904C(a1, *a2);
    sub_1001A904C(a1, *(a2 + 1));
    if (a2[88] == 1 && a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1001A90CC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1001A90CC(a1, *a2);
    sub_1001A90CC(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_1000B23E0(&v4);
    operator delete(a2);
  }
}

void sub_1001A912C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1001A912C(a1, *a2);
    sub_1001A912C(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_1000B25C4(&v4);
    operator delete(a2);
  }
}

void sub_1001A918C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1001A918C(a1, *a2);
    sub_1001A918C(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_1000087B4(&v4);
    operator delete(a2);
  }
}

void sub_1001A91EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1001A91EC(a1, *a2);
    sub_1001A91EC(a1, a2[1]);
    sub_1001A9248((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_1001A9278(uint64_t a1)
{
  sub_10000501C(a1, "");
  *(a1 + 24) = xpc_null_create();
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_1001A937C(uint64_t a1, unsigned int a2)
{
  *(a1 + 24) = 1;
  *(a1 + 20) = a2;
  v2 = *(a1 + 8);
  v8 = 0;
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v3)
  {
    v8 = v3;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v8 = 0;
  sub_100029A48(&v8);
  v5 = sub_10079CC40(v2);
  sub_100029A48(&v7);
  return v5;
}

void sub_1001A9418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A944C(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v2)
    {
      (*(*v2 + 32))(v2);
    }

    TMKXPCServer.shutdown()();
    operator delete();
  }

  return result;
}

void sub_1001A94C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v2)
    {
      (*(*v2 + 32))(v2);
    }

    TMKXPCServer.shutdown()();
    operator delete();
  }

  operator delete();
}

uint64_t *sub_1001A9564(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      v4 = *(v3 + 8);
      *(v3 + 8) = 0;
      if (v4)
      {
        (*(*v4 + 32))(v4);
      }

      TMKXPCServer.shutdown()();
      operator delete();
    }

    operator delete();
  }

  return result;
}

void sub_1001A9614(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }
}

ctu::OsLogLogger *sub_1001A966C(ctu::OsLogLogger **a1, ctu::OsLogLogger *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ctu::OsLogLogger::~OsLogLogger(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1001A96B8(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ctu::UnfairLock::unlock(*a1);
  }

  return a1;
}

void sub_1001A9720(uint64_t a1)
{

  operator delete();
}

id sub_1001A97D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E2E2E0;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1001A9824(id *a1)
{

  operator delete(a1);
}

void sub_1001A9860(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v5 = *v3;
  v6 = *(v3 + 2);
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  sub_1001A9998(v3, a2);
  v4 = objc_autoreleasePoolPush();
  v7 = (*(a1 + 16) + 64);
  v8 = 1;
  ctu::UnfairLock::lock(v7);
  sub_1001A9DE0(*(a1 + 16) + 72, *(*(a1 + 16) + 96), *(*(a1 + 16) + 104), (*(*(a1 + 16) + 104) - *(*(a1 + 16) + 96)) >> 3);
  ctu::UnfairLock::unlock(v7);
  [*(a1 + 16) handleCallStatusChangedWithOldCalls:&v5];
  [*(a1 + 16) checkBasebandAssertions];
  objc_autoreleasePoolPop(v4);
  v7 = &v5;
  sub_1000B2DB4(&v7);
}

void sub_1001A9920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void **a14)
{
  sub_1001A96B8(&a12);
  a14 = &a9;
  sub_1000B2DB4(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A994C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E340))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001A9998(xpc_object_t **a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v5 = *a1;
  for (i = a1[1]; i != v5; sub_1001A7C20(i))
  {
    --i;
  }

  a1[1] = v5;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v13, object, 0);
    xpc_release(object[0]);
    v11[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v11[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v11, count);
    xpc_release(v11[0]);
    for (j = v14; j != object[1] || v13 != object[0]; j = ++v14)
    {
      v11[0] = &v13;
      v11[1] = j;
      v8 = a1[1];
      if (v8 >= a1[2])
      {
        v9 = sub_1001A9C18(a1);
      }

      else
      {
        sub_1001A9BE0(a1);
        v9 = (v8 + 1);
      }

      a1[1] = v9;
      sub_100008EF0(v11, &v10);
      read_rest_value((v9 - 8), &v10);
      xpc_release(v10);
    }

    xpc_release(object[0]);
    xpc_release(v13);
  }

  xpc_release(v3);
}

void sub_1001A9B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1001A9BE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  *v2 = 0;
  result = xpc_null_create();
  *v2 = result;
  *(a1 + 8) = v2 + 1;
  return result;
}

uint64_t sub_1001A9C18(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 3;
  v2 = v1 + 1;
  if ((v1 + 1) >> 61)
  {
    sub_1000CE3D4();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 2 > v2)
  {
    v2 = v4 >> 2;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    v5 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    sub_1000B318C(a1, v5);
  }

  v6 = (8 * v1);
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *v6 = xpc_null_create();
  *&v15 = v6 + 1;
  v7 = *(a1 + 8);
  v8 = (v6 + *a1 - v7);
  sub_1001A9D1C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1001A9D90(&v13);
  return v12;
}

void sub_1001A9D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001A9D90(va);
  _Unwind_Resume(a1);
}

void sub_1001A9D1C(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, xpc_object_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7++ = xpc_null_create();
      ++a4;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_1001A7C20(v6++);
    }
  }
}

uint64_t sub_1001A9D90(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_1001A7C20((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001A9DE0(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    sub_1001A7B10(a1);
    if (!(a4 >> 61))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 2;
      if (v9 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1001A7B78(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 3)
  {
    sub_1001A9F1C(&v17, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      do
      {
        sub_1001A7C20(--v15);
      }

      while (v15 != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_1001A9F1C(&v16, a2, (a2 + v12), v8);
    *(a1 + 8) = sub_1001A7CD4(a1, (a2 + v12), a3, *(a1 + 8));
  }
}

xpc_object_t *sub_1001A9F1C(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3, void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      if (*v5)
      {
        xpc_retain(*v5);
      }

      else
      {
        v7 = xpc_null_create();
      }

      v8 = *a4;
      *a4 = v7;
      xpc_release(v8);
      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1001A9FCC(uint64_t a1)
{

  operator delete();
}

id sub_1001AA080(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E2E360;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1001AA0D0(id *a1)
{

  operator delete(a1);
}

void sub_1001AA10C(uint64_t a1, xpc_object_t *a2)
{
  sub_1001AA1A4(*(a1 + 8), a2);
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 16) handleCallCapabilitiesChanged];

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1001AA158(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E3C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AA1A4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1001A91EC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    v7 = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7 = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, &v7, count);
    xpc_release(v7);
    for (i = v12; i != object[1] || v11 != object[0]; i = ++v12)
    {
      v8 = i;
      v9 = 0;
      v7 = &v11;
      sub_10003EAD4(&v7, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        v7 = 0;
        v8 = 0;
        v8 = xpc_null_create();
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1001AA44C(&v7, &v6);
        xpc_release(v6);
        sub_1001AA708(a1, &v7);
        xpc_release(v8);
      }

      xpc_release(v9);
    }

    xpc_release(object[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_1001AA3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, xpc_object_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_1001AA44C(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    sub_1001AA600(a1 + 1, &object);
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1001AA5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_1001AA600(void **a1, xpc_object_t *a2)
{
  v4 = xpc_null_create();
  v5 = *a2;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    if (v4)
    {
      xpc_retain(v4);
      v6 = v4;
    }

    else
    {
      v6 = xpc_null_create();
    }

    xpc_release(v5);
    v5 = v6;
  }

  xpc_release(v4);
  v7 = xpc_null_create();
  v8 = *a1;
  *a1 = v5;
  xpc_release(v8);
  xpc_release(v7);
}

void sub_1001AA6DC(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001AA708(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t sub_1001AA7F4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001A9248(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1001AA840(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = xpc_null_create();
  return a1;
}

void sub_1001AA8B0(uint64_t a1)
{

  operator delete();
}

id sub_1001AA964(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E2E3E0;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1001AA9B4(id *a1)
{

  operator delete(a1);
}

void sub_1001AA9F0(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v23 = 0;
  v24 = 0;
  v22 = &v23;
  sub_1001AAC64(&v22, a2);
  v4 = v3 + 1;
  v5 = v3[1];
  v19 = *v3;
  v20 = v5;
  v21 = v3[2];
  if (v21)
  {
    *(v5 + 16) = &v20;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v19 = &v20;
  }

  v17 = v22;
  v18[0] = v23;
  v18[1] = v24;
  if (v24)
  {
    *(v23 + 2) = v18;
    v22 = &v23;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v17 = v18;
  }

  sub_1001AAF14(v3, &v17);
  sub_1001A90CC(&v17, v18[0]);
  if (v21 != v3[2])
  {
LABEL_27:
    v16 = objc_autoreleasePoolPush();
    [*(a1 + 16) handleEmergencyNumbersChanged];
    objc_autoreleasePoolPop(v16);
    goto LABEL_28;
  }

  v6 = v19;
  if (v19 != &v20)
  {
    v7 = *v3;
    while (*(v6 + 8) == *(v7 + 8))
    {
      v8 = v6[5];
      v9 = v6[6];
      v10 = v7[5];
      if (v9 - v8 != v7[6] - v10)
      {
        break;
      }

      while (v8 != v9)
      {
        if (!sub_100022D3C(&v25, v8, v10))
        {
          goto LABEL_27;
        }

        v8 += 3;
        v10 += 3;
      }

      v11 = v6[1];
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
          v12 = v6[2];
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v13 = *v15 == v7;
          v7 = v15;
        }

        while (!v13);
      }

      v7 = v15;
      v6 = v12;
      if (v12 == &v20)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

LABEL_28:
  sub_1001A918C(&v19, v20);
  sub_1001A90CC(&v22, v23);
}

void sub_1001AABD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, uint64_t a14, char a15, char *a16)
{
  sub_1001A918C(&a12, a13);
  sub_1001A90CC(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1001AAC18(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E440))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AAC64(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1001A90CC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v9, object, count);
    xpc_release(object[0]);
    for (i = v11; i != v9[1] || v10 != v9[0]; i = ++v11)
    {
      v8 = 0;
      object[0] = &v10;
      object[1] = i;
      sub_10003EAD4(object, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        *object = 0u;
        v7 = 0u;
        v12 = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v12 = xpc_null_create();
        }

        sub_1001AB1A8(object, &v12);
        xpc_release(v12);
        sub_1001AB890(a1, object);
        v12 = &object[1];
        sub_1000B23E0(&v12);
      }

      xpc_release(v8);
    }

    xpc_release(v9[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_1001AAE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t a16)
{
  xpc_release(object);
  xpc_release(a16);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_1001AAF14(uint64_t a1, void *a2)
{
  v2 = *a2;
  v28 = a2 + 1;
  if (*a2 != a2 + 1)
  {
    do
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34[0] = (v2 + 4);
      v4 = (sub_1001AB974(a1, v2 + 8) + 5);
      if (v4 != &v31)
      {
        sub_100008234(v4, v31, v32, 0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 3));
      }

      v5 = v2[5];
      v6 = v2[6];
      while (v5 != v6)
      {
        v34[0] = (v2 + 4);
        v7 = sub_1001AB974(a1, v2 + 8);
        CSIPhoneNumber::getFullNumber(__p, v5);
        v9 = v7[6];
        v8 = v7[7];
        if (v9 >= v8)
        {
          v11 = v7[5];
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
          v13 = v12 + 1;
          if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1000CE3D4();
          }

          v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v11) >> 3);
          if (2 * v14 > v13)
          {
            v13 = 2 * v14;
          }

          if (v14 >= 0x555555555555555)
          {
            v15 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v15 = v13;
          }

          v34[4] = (v7 + 5);
          if (v15)
          {
            sub_100005348((v7 + 5), v15);
          }

          v16 = 24 * v12;
          v17 = *__p;
          *(v16 + 16) = v30;
          *v16 = v17;
          __p[1] = 0;
          v30 = 0;
          __p[0] = 0;
          v18 = 24 * v12 + 24;
          v19 = v7[5];
          v20 = v7[6] - v19;
          v21 = 24 * v12 - v20;
          memcpy((v16 - v20), v19, v20);
          v22 = v7[5];
          v7[5] = v21;
          v7[6] = v18;
          v23 = v7[7];
          v7[7] = 0;
          v34[2] = v22;
          v34[3] = v23;
          v34[0] = v22;
          v34[1] = v22;
          sub_1000054E0(v34);
          v24 = SHIBYTE(v30);
          v7[6] = v18;
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v10 = *__p;
          *(v9 + 16) = v30;
          *v9 = v10;
          v7[6] = v9 + 24;
        }

        v5 += 5;
      }

      v34[0] = &v31;
      sub_1000087B4(v34);
      v25 = v2[1];
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
          v26 = v2[2];
          v27 = *v26 == v2;
          v2 = v26;
        }

        while (!v27);
      }

      v2 = v26;
    }

    while (v26 != v28);
  }
}

void sub_1001AB168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  __p = &a17;
  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

void sub_1001AB1A8(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    sub_1001AB35C((a1 + 2), &object);
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1001AB308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_1001AB35C(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1000B238C(a1, *a1);
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    v9[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v9[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v9, count);
    xpc_release(v9[0]);
    for (i = v12; i != object[1] || v11 != object[0]; i = ++v12)
    {
      v9[0] = &v11;
      v9[1] = i;
      v6 = *(a1 + 8);
      if (v6 >= *(a1 + 16))
      {
        v7 = sub_1001AB59C(a1);
      }

      else
      {
        CSIPhoneNumber::CSIPhoneNumber(*(a1 + 8));
        v7 = v6 + 160;
        *(a1 + 8) = v7;
      }

      *(a1 + 8) = v7;
      sub_100008EF0(v9, &v8);
      read_rest_value((v7 - 160), &v8);
      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_1001AB518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1001AB59C(uint64_t *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 > 0x199999999999999)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v4 = 0x199999999999999;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    sub_1000B225C(a1, v4);
  }

  v11 = 0;
  v12 = 160 * v1;
  CSIPhoneNumber::CSIPhoneNumber((160 * v1));
  v13 = 160 * v1 + 160;
  v5 = a1[1];
  v6 = 160 * v1 + *a1 - v5;
  sub_1001AB6BC(a1, *a1, v5, v12 + *a1 - v5);
  v7 = *a1;
  *a1 = v6;
  v8 = a1[2];
  v10 = v13;
  *(a1 + 1) = v13;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v11 = v7;
  v12 = v7;
  sub_1001AB810(&v11);
  return v10;
}

void sub_1001AB6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001AB810(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001AB6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 == a3)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      *(a4 + 56) = *(v7 + 56);
      v10 = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(a4 + 64) = v10;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 64) = 0;
      v11 = *(v7 + 88);
      *(a4 + 96) = *(v7 + 96);
      *(a4 + 88) = v11;
      v12 = *(v7 + 104);
      *(a4 + 120) = *(v7 + 120);
      *(a4 + 104) = v12;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 104) = 0;
      v13 = *(v7 + 128);
      *(a4 + 144) = *(v7 + 144);
      *(a4 + 128) = v13;
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(a4 + 152) = *(v7 + 152);
      v7 += 160;
      a4 += 160;
    }

    while (v7 != a3);
    v18 = a4;
    LOBYTE(v16) = 1;
    while (v5 != a3)
    {
      sub_1000B2434(a1, v5);
      v5 += 160;
    }
  }

  return sub_1000B2354(v15);
}

uint64_t sub_1001AB810(uint64_t a1)
{
  sub_1001AB848(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001AB848(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 160;
    sub_1000B2434(v5, v4 - 160);
  }
}

uint64_t *sub_1001AB890(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t *sub_1001AB974(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

void sub_1001ABA78(uint64_t a1)
{

  operator delete();
}

id sub_1001ABB2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E2E460;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1001ABB7C(id *a1)
{

  operator delete(a1);
}

void sub_1001ABBB8(uint64_t a1, xpc_object_t *a2)
{
  sub_1001ABC50(*(a1 + 8), a2);
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 16) handleDisambiguationEmergencyNumbersChanged];

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1001ABC04(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E4C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001ABC50(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1001A912C(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v9, object, count);
    xpc_release(object[0]);
    for (i = v11; i != v9[1] || v10 != v9[0]; i = ++v11)
    {
      v8 = 0;
      object[0] = &v10;
      object[1] = i;
      sub_10003EAD4(object, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        *object = 0u;
        v7 = 0u;
        v12 = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v12 = xpc_null_create();
        }

        sub_1001ABF00(object, &v12);
        xpc_release(v12);
        sub_1001AB890(a1, object);
        v12 = &object[1];
        sub_1000B25C4(&v12);
      }

      xpc_release(v8);
    }

    xpc_release(v9[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_1001ABE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t a16)
{
  xpc_release(object);
  xpc_release(a16);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_1001ABF00(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    sub_1001AC0B4(a1 + 1, &object);
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1001AC060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_1001AC0B4(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v5 = *a1;
  for (i = a1[1]; i != v5; sub_1000DD108(i))
  {
    i -= 56;
  }

  a1[1] = v5;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v13, object, 0);
    xpc_release(object[0]);
    v11[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v11[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v11, count);
    xpc_release(v11[0]);
    for (j = v14; j != object[1] || v13 != object[0]; j = ++v14)
    {
      v11[0] = &v13;
      v11[1] = j;
      v8 = a1[1];
      if (v8 >= a1[2])
      {
        v9 = sub_1001AC314(a1);
      }

      else
      {
        sub_1001AC450(a1, a1[1]);
        v9 = v8 + 56;
        a1[1] = v9;
      }

      a1[1] = v9;
      sub_100008EF0(v11, &v10);
      read_rest_value();
      xpc_release(v10);
    }

    xpc_release(object[0]);
    xpc_release(v13);
  }

  xpc_release(v3);
}

void sub_1001AC290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1001AC314(uint64_t *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v4 = 0x492492492492492;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    sub_1001A8958(a1, v4);
  }

  v11 = 0;
  v12 = 56 * v1;
  sub_1001AC450(a1, 56 * v1);
  v13 = (56 * v1 + 56);
  v5 = a1[1];
  v6 = 56 * v1 + *a1 - v5;
  sub_1001A8D24(a1, *a1, v5, v12 + *a1 - v5);
  v7 = *a1;
  *a1 = v6;
  v8 = a1[2];
  v10 = v13;
  *(a1 + 1) = v13;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v11 = v7;
  v12 = v7;
  sub_1001A8DB8(&v11);
  return v10;
}

void sub_1001AC43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001A8DB8(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1001AC450(int a1, uint64_t a2)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_10000501C(a2, "");
  result = sub_10000501C((a2 + 24), "");
  *(a2 + 48) = 0;
  *(a2 + 52) = 0;
  return result;
}

void sub_1001AC4A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AC4F0(uint64_t a1)
{

  operator delete();
}

id sub_1001AC5A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E2E4E0;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1001AC5F4(id *a1)
{

  operator delete(a1);
}

void sub_1001AC630(uint64_t a1, const object *a2)
{
  read_rest_value(*(a1 + 8), a2);
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 16) handleCallFrequencyDataChanged];

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1001AC67C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E540))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AC6F4(uint64_t a1)
{

  operator delete();
}

id sub_1001AC7A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E2E560;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1001AC7F8(id *a1)
{

  operator delete(a1);
}

void sub_1001AC834(uint64_t a1, xpc_object_t *a2)
{
  sub_10011E228(*(a1 + 8), a2);
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 16) handleThumperHandoffAvailabilityChanged];

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1001AC880(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E5C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AC8F8(uint64_t a1)
{

  operator delete();
}

id sub_1001AC9AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E2E5E0;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1001AC9FC(id *a1)
{

  operator delete(a1);
}

void sub_1001ACA38(uint64_t a1, xpc_object_t *a2)
{
  read_rest_value(*(a1 + 8), a2);
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 16) handleThumperAccountIdChanged];

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1001ACA84(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E640))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001ACAFC(uint64_t a1)
{

  operator delete();
}

id sub_1001ACBB0(uint64_t a1, void *a2)
{
  *a2 = off_101E2E660;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001ACC00(id *a1)
{

  operator delete(a1);
}

void sub_1001ACC3C(uint64_t a1)
{
  *__p = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *v3 = 0u;
  read_rest_value();
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 8) handleCallControlFailure:v3];
  objc_autoreleasePoolPop(v2);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  v8 = &v5;
  sub_1000087B4(&v8);
  if (SBYTE7(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

uint64_t sub_1001ACCE8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E6C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001ACD60(uint64_t a1)
{

  operator delete();
}

id sub_1001ACE14(uint64_t a1, void *a2)
{
  *a2 = off_101E2E6E0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001ACE64(id *a1)
{

  operator delete(a1);
}

void sub_1001ACEA0(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  read_rest_value();
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 8) handleCallToneComplete:__p];
  objc_autoreleasePoolPop(v2);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001ACF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001ACF20(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E740))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001ACF98(uint64_t a1)
{

  operator delete();
}

id sub_1001AD04C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E2E760;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1001AD09C(id *a1)
{

  operator delete(a1);
}

void sub_1001AD0D8(uint64_t a1, SubscriptionInfo *a2, const object *a3)
{
  rest::read_rest_value(*(a1 + 8), a2, a3);
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 16) handleSubscriptionInfoChanged];

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1001AD124(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E7C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AD19C(uint64_t a1)
{

  operator delete();
}

id sub_1001AD250(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E2E7E0;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1001AD2A0(id *a1)
{

  operator delete(a1);
}

void sub_1001AD2DC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v7 = *v3;
  v8 = v5;
  if (v3[2])
  {
    v5[2] = &v8;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v7 = &v8;
  }

  sub_1001AD3D0(v3, a2);
  v6 = objc_autoreleasePoolPush();
  [*(a1 + 16) handleLastKnownHomePlmnChanged:&v7];
  objc_autoreleasePoolPop(v6);
  sub_1001A8E08(&v7, v8);
}

uint64_t sub_1001AD384(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E840))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AD3D0(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1001A8E08(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v13, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v12, object, count);
    xpc_release(object[0]);
    for (i = v14; i != v12[1] || v13 != v12[0]; i = ++v14)
    {
      v11 = 0;
      object[0] = &v13;
      object[1] = i;
      sub_10003EAD4(object, &v11);
      if (xpc_get_type(v11) == &_xpc_type_dictionary)
      {
        v10 = 0;
        v8 = 0u;
        *__p = 0u;
        *object = 0u;
        v6 = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1001AD688(object, &v6);
        xpc_release(v6);
        sub_1001AD83C(a1, object);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v8) < 0)
        {
          operator delete(object[1]);
        }
      }

      xpc_release(v11);
    }

    xpc_release(v12[0]);
    xpc_release(v13);
  }

  xpc_release(v3);
}

void sub_1001AD5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18)
{
  xpc_release(object);
  xpc_release(*(v19 - 48));
  xpc_release(v18);
  _Unwind_Resume(a1);
}

void sub_1001AD688(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    rest::read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1001AD7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001AD83C(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t sub_1001AD950(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000F02B4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1001AD9C8(uint64_t a1)
{

  operator delete();
}

id sub_1001ADA7C(uint64_t a1, void *a2)
{
  *a2 = off_101E2E860;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001ADACC(id *a1)
{

  operator delete(a1);
}

void sub_1001ADB08(uint64_t a1, xpc_object_t *a2)
{
  *__p = 0u;
  v5 = 0u;
  sub_1001ADBD8(__p, a2);
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 8) handleDownlinkDtmfEvent:__p dtmf:SBYTE8(v5)];
  objc_autoreleasePoolPop(v3);
  if (SBYTE7(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001ADB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001ADB8C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E8C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001ADBD8(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v7 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v7 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v5[0] = &v7;
    v5[1] = "first";
    sub_100006354(v5, &object);
    __p = 0;
    v11 = 0;
    v12 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = *v8;
    *(a1 + 16) = v9;
    xpc_release(object);
    __p = &v7;
    v11 = "second";
    sub_100006354(&__p, v8);
    *(a1 + 24) = xpc::dyn_cast_or_default(v8, 0, v4);
    xpc_release(v8[0]);
    v3 = v7;
  }

  xpc_release(v3);
}

void sub_1001ADD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_1001ADD9C(uint64_t a1)
{

  operator delete();
}

id sub_1001ADE50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E2E8E0;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1001ADEA0(id *a1)
{

  operator delete(a1);
}

void sub_1001ADEDC(uint64_t a1, ActiveSubscriptions *a2, const object *a3)
{
  rest::read_rest_value(*(a1 + 8), a2, a3);
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 16) handleSubscriptionInfoChanged];

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1001ADF28(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2E940))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001ADFE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E2E960;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001AE010(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AE05C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 71) < 0)
    {
      operator delete(__p[6]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1001AE130(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E2E9E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001AE164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AE1DC(uint64_t a1)
{

  operator delete();
}

id sub_1001AE290(uint64_t a1, void *a2)
{
  *a2 = off_101E2EA60;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001AE2E0(id *a1)
{

  operator delete(a1);
}

void sub_1001AE31C(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  xpc::dyn_cast_or_default(&object, 0, v2);
  xpc_release(object);
}

uint64_t sub_1001AE388(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2EAC0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AE408(uint64_t a1)
{

  operator delete();
}

id sub_1001AE4D0(uint64_t a1, void *a2)
{
  *a2 = off_101E2EAE0;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1001AE528(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1001AE564(id *a1)
{

  operator delete(a1);
}

void sub_1001AE5A8(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = *(a1 + 8);
  if (v5 && ((v4 | [v5 isComplete]) & 1) == 0)
  {
    v6 = **(*(a1 + 16) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = [v8 UTF8String];
      v11 = [*(a1 + 8) UUID];
      *buf = 136315394;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@", buf, 0x16u);
    }

    [*(a1 + 8) fail];
  }

  xpc_release(object);
}

uint64_t sub_1001AE734(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2EB40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AE7B4(uint64_t a1)
{

  operator delete();
}

id sub_1001AE87C(uint64_t a1, void *a2)
{
  *a2 = off_101E2EB60;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1001AE8D4(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1001AE910(id *a1)
{

  operator delete(a1);
}

void sub_1001AE954(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = *(a1 + 8);
  if (v5 && ((v4 | [v5 isComplete]) & 1) == 0)
  {
    v6 = **(*(a1 + 16) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = [v8 UTF8String];
      v11 = [*(a1 + 8) UUID];
      *buf = 136315394;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@", buf, 0x16u);
    }

    [*(a1 + 8) fail];
  }

  xpc_release(object);
}

uint64_t sub_1001AEAE0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2EBC0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AEB60(uint64_t a1)
{

  operator delete();
}

id sub_1001AEC28(uint64_t a1, void *a2)
{
  *a2 = off_101E2EBE0;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1001AEC80(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1001AECBC(id *a1)
{

  operator delete(a1);
}

void sub_1001AED00(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = *(a1 + 8);
  if (v5 && ((v4 | [v5 isComplete]) & 1) == 0)
  {
    v6 = **(*(a1 + 16) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = [v8 UTF8String];
      v11 = [*(a1 + 8) UUID];
      *buf = 136315394;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@", buf, 0x16u);
    }

    [*(a1 + 8) fail];
  }

  xpc_release(object);
}

uint64_t sub_1001AEE8C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2EC40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AEF0C(uint64_t a1)
{

  operator delete();
}

id sub_1001AEFD4(uint64_t a1, void *a2)
{
  *a2 = off_101E2EC60;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1001AF02C(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1001AF068(id *a1)
{

  operator delete(a1);
}

void sub_1001AF0AC(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = *(a1 + 8);
  if (v5 && ((v4 | [v5 isComplete]) & 1) == 0)
  {
    v6 = **(*(a1 + 16) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = [v8 UTF8String];
      v11 = [*(a1 + 8) UUID];
      *buf = 136315394;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@", buf, 0x16u);
    }

    [*(a1 + 8) fail];
  }

  xpc_release(object);
}

uint64_t sub_1001AF238(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2ECC0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AF2B8(uint64_t a1)
{

  operator delete();
}

id sub_1001AF380(uint64_t a1, void *a2)
{
  *a2 = off_101E2ECE0;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1001AF3D8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1001AF414(id *a1)
{

  operator delete(a1);
}

void sub_1001AF458(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = *(a1 + 8);
  if (v5 && ((v4 | [v5 isComplete]) & 1) == 0)
  {
    v6 = **(*(a1 + 16) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = [v8 UTF8String];
      v11 = [*(a1 + 8) UUID];
      *buf = 136315394;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@", buf, 0x16u);
    }

    [*(a1 + 8) fail];
  }

  xpc_release(object);
}

uint64_t sub_1001AF5E4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2ED40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AF664(uint64_t a1)
{

  operator delete();
}

id sub_1001AF72C(uint64_t a1, void *a2)
{
  *a2 = off_101E2ED60;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1001AF784(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1001AF7C0(id *a1)
{

  operator delete(a1);
}

void sub_1001AF804(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = *(a1 + 8);
  if (v5 && ![v5 isComplete])
  {
    v11 = **(*(a1 + 16) + 8);
    if (v4)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = v13;
        v15 = [v13 UTF8String];
        v16 = [*(a1 + 8) UUID];
        *buf = 136315394;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Fulfilling the %s %@", buf, 0x16u);
      }

      [*(a1 + 8) fulfill];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = v18;
        v20 = [v18 UTF8String];
        v21 = [*(a1 + 8) UUID];
        *buf = 136315394;
        v24 = v20;
        v25 = 2112;
        v26 = v21;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@", buf, 0x16u);
      }

      [*(a1 + 8) fail];
    }
  }

  else
  {
    v6 = **(*(a1 + 16) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = [v8 UTF8String];
      *buf = 136315138;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Not fulfilling/failing %s since it's nil or already complete", buf, 0xCu);
    }
  }

  xpc_release(object);
}

uint64_t sub_1001AFAB4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2EDC0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AFB34(uint64_t a1)
{

  operator delete();
}

id sub_1001AFBFC(uint64_t a1, void *a2)
{
  *a2 = off_101E2EDE0;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1001AFC54(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1001AFC90(id *a1)
{

  operator delete(a1);
}

void sub_1001AFCD4(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = *(a1 + 8);
  if (v5 && ((v4 | [v5 isComplete]) & 1) == 0)
  {
    v6 = **(*(a1 + 16) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = [v8 UTF8String];
      v11 = [*(a1 + 8) UUID];
      *buf = 136315394;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@", buf, 0x16u);
    }

    [*(a1 + 8) fail];
  }

  xpc_release(object);
}

uint64_t sub_1001AFE60(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2EE40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001AFEE0(uint64_t a1)
{

  operator delete();
}

id sub_1001AFFA8(uint64_t a1, void *a2)
{
  *a2 = off_101E2EE60;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1001B0000(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1001B003C(id *a1)
{

  operator delete(a1);
}

void sub_1001B0080(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = *(a1 + 8);
  if (v5 && ((v4 | [v5 isComplete]) & 1) == 0)
  {
    v6 = **(*(a1 + 16) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = [v8 UTF8String];
      v11 = [*(a1 + 8) UUID];
      *buf = 136315394;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@", buf, 0x16u);
    }

    [*(a1 + 8) fail];
  }

  xpc_release(object);
}

uint64_t sub_1001B020C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2EEC0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001B028C(uint64_t a1)
{

  operator delete();
}

id sub_1001B0354(uint64_t a1, void *a2)
{
  *a2 = off_101E2EEE0;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1001B03AC(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1001B03E8(id *a1)
{

  operator delete(a1);
}

void sub_1001B042C(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = *(a1 + 8);
  if (v5 && ((v4 | [v5 isComplete]) & 1) == 0)
  {
    v6 = **(*(a1 + 16) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = [v8 UTF8String];
      v11 = [*(a1 + 8) UUID];
      *buf = 136315394;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@", buf, 0x16u);
    }

    [*(a1 + 8) fail];
  }

  xpc_release(object);
}

uint64_t sub_1001B05B8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2EF40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001B0638(uint64_t a1)
{

  operator delete();
}

id sub_1001B0700(uint64_t a1, void *a2)
{
  *a2 = off_101E2EF60;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1001B0758(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1001B0794(id *a1)
{

  operator delete(a1);
}

void sub_1001B07D8(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = *(a1 + 8);
  if (v5 && ![v5 isComplete])
  {
    v11 = **(*(a1 + 16) + 8);
    if (v4)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = v13;
        v15 = [v13 UTF8String];
        v16 = [*(a1 + 8) UUID];
        *buf = 136315394;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N <---To-CSD--- Fulfilling the %s %@", buf, 0x16u);
      }

      [*(a1 + 8) fulfill];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = v18;
        v20 = [v18 UTF8String];
        v21 = [*(a1 + 8) UUID];
        *buf = 136315394;
        v24 = v20;
        v25 = 2112;
        v26 = v21;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "<---To-CSD--- Failing the %s %@", buf, 0x16u);
      }

      [*(a1 + 8) fail];
    }
  }

  else
  {
    v6 = **(*(a1 + 16) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = [v8 UTF8String];
      *buf = 136315138;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Not fulfilling/failing %s since it's nil or already complete", buf, 0xCu);
    }
  }

  xpc_release(object);
}

uint64_t sub_1001B0A88(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2EFC0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001B0B00(uint64_t a1)
{

  operator delete();
}

id sub_1001B0BB4(uint64_t a1, void *a2)
{
  *a2 = off_101E2EFE0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001B0C04(id *a1)
{

  operator delete(a1);
}

void sub_1001B0C40(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  xpc::dyn_cast_or_default(&object, 0, v2);
  xpc_release(object);
}

uint64_t sub_1001B0CAC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2F040))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001B0D24(uint64_t a1)
{

  operator delete();
}

id sub_1001B0DD8(uint64_t a1, void *a2)
{
  *a2 = off_101E2F060;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001B0E28(id *a1)
{

  operator delete(a1);
}

void sub_1001B0E64(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  xpc::dyn_cast_or_default(&object, 0, v2);
  xpc_release(object);
}

uint64_t sub_1001B0ED0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2F0C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001B0F48(uint64_t a1)
{

  operator delete();
}

id sub_1001B0FFC(uint64_t a1, void *a2)
{
  *a2 = off_101E2F0E0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001B104C(id *a1)
{

  operator delete(a1);
}

void sub_1001B1088(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  xpc::dyn_cast_or_default(&object, 0, v2);
  xpc_release(object);
}

uint64_t sub_1001B10F4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2F140))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001B116C(uint64_t a1)
{

  operator delete();
}

id sub_1001B1220(uint64_t a1, void *a2)
{
  *a2 = off_101E2F160;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001B1270(id *a1)
{

  operator delete(a1);
}

void sub_1001B12AC(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  xpc::dyn_cast_or_default(&object, 0, v2);
  xpc_release(object);
}

uint64_t sub_1001B1318(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2F1C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001B1390(uint64_t a1)
{

  operator delete();
}

id sub_1001B1444(uint64_t a1, void *a2)
{
  *a2 = off_101E2F1E0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001B1494(id *a1)
{

  operator delete(a1);
}

void sub_1001B14D0(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  xpc::dyn_cast_or_default(&object, 0, v2);
  xpc_release(object);
}

uint64_t sub_1001B153C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2F240))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001B1588(uint64_t a1, const void **a2)
{
  if (a2)
  {
    sub_1001B1588(a1, *a2);
    sub_1001B1588(a1, a2[1]);
    sub_100005978(a2 + 5);

    operator delete(a2);
  }
}

id *sub_1001B15E4(id *a1)
{
  xpc_release(a1[2]);
  a1[2] = 0;
  xpc_release(a1[1]);
  a1[1] = 0;

  return a1;
}

uint64_t sub_1001B1630(uint64_t a1)
{
  *a1 = off_101E2F260;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;

  return a1;
}

void sub_1001B1698(uint64_t a1)
{
  *a1 = off_101E2F260;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;

  operator delete();
}

xpc_object_t sub_1001B17C8(uint64_t a1, void *a2)
{
  *a2 = off_101E2F260;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    a2[2] = xpc_null_create();
  }

  v6 = *(a1 + 24);
  a2[3] = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  a2[3] = result;
  return result;
}

void sub_1001B1854(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
}

void sub_1001B18A8(id *a1)
{
  xpc_release(a1[3]);
  a1[3] = 0;
  xpc_release(a1[2]);
  a1[2] = 0;

  operator delete(a1);
}

void sub_1001B1904(void *a1, xpc_object_t *a2)
{
  v7 = *a2;
  *a2 = xpc_null_create();
  if (xpc::dyn_cast_or_default(&v7, 0, v3))
  {
    v5 = a1[1];
    v4 = a1[2];
    v9 = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      v9 = xpc_null_create();
    }

    v6 = a1[3];
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    [v5 evaluateAndSendCallUpdateWithCallInfo:&v9 previousCallInfo:&object];
    xpc_release(object);
    object = 0;
    xpc_release(v9);
  }

  xpc_release(v7);
}

void sub_1001B19BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B1A08(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2F2C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1001B1A54(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDataGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

BOOL sub_1001B1AB8(uint64_t a1)
{
  object = 0;
  sub_100006354(a1, &object);
  type = xpc_get_type(object);
  xpc_release(object);
  return type == &_xpc_type_null;
}

const char *sub_1001B1B40(PersonalitySpecificImpl *a1)
{
  if (PersonalitySpecificImpl::simSlot(a1) == 1)
  {
    return "DATA.ursp.1";
  }

  if (PersonalitySpecificImpl::simSlot(a1) == 2)
  {
    return "DATA.ursp.2";
  }

  return "DATA.ursp.?";
}

void *sub_1001B1B98(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1001B1C00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B1C24(uint64_t a1, void *a2, void *a3, uint64_t a4, NSObject **a5)
{
  *(a1 + 192) = off_101E2F5C8;
  PersonalitySpecificImpl::PersonalitySpecificImpl();
  *a1 = off_101E2F358;
  *(a1 + 192) = off_101E2F418;
  v9 = sub_1001B1B40(a1);
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, v9);
  sub_1001B1B98((a1 + 24), a5, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  *a1 = off_101E2F358;
  *(a1 + 192) = off_101E2F418;
  v10 = a3[1];
  *(a1 + 64) = *a3;
  *(a1 + 72) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 120) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v11 = a2[1];
  *(a1 + 176) = *a2;
  *(a1 + 184) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1001B1D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  PersonalitySpecificImpl::~PersonalitySpecificImpl(v9);
  TMKXPCServer.shutdown()();
  PersonalitySpecific::~PersonalitySpecific(v11);
  _Unwind_Resume(a1);
}

void sub_1001B1DBC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 64)) = a2[3];
  *(a1 + *(*a1 - 56)) = a2[4];
  v4 = *(a1 + 184);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    *(a1 + 160) = v5;
    operator delete(v5);
  }

  v7 = (a1 + 128);
  sub_1001B8A7C(&v7);
  sub_1001C1CF0(a1 + 104, *(a1 + 112));
  v7 = (a1 + 80);
  sub_1001B8B00(&v7);
  v6 = *(a1 + 72);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 56));
  sub_1000C0544((a1 + 24));
  PersonalitySpecificImpl::~PersonalitySpecificImpl(a1);
}

uint64_t sub_1001B1F28(uint64_t a1)
{
  sub_1001B1DBC(a1, &off_101E2F470);
  TMKXPCServer.shutdown()();
  PersonalitySpecific::~PersonalitySpecific((a1 + 192));
  return a1;
}

void sub_1001B1F8C(uint64_t a1)
{
  sub_1001B1F28(a1);

  operator delete();
}

void sub_1001B1FC4(void *a1)
{
  sub_1001B1F28(a1 + *(*a1 - 24));

  operator delete();
}

void sub_1001B2024(uint64_t a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v8 = *(a2 + 2);
  v9 = *a2;
  v10 = *(a1 + 56);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I processUrsp_sync numOfPlmn=%u", v15, 8u);
  }

  if (a4)
  {
    v11 = 0;
    v12 = (v8 - v9);
    v13 = 4 * a4;
    while (1)
    {
      v14 = *(*a3 + v11);
      if (v14 >= v12)
      {
        break;
      }

      v11 += 4;
      sub_1001B214C(a1, a2, v14);
      if (v13 == v11)
      {
        return;
      }
    }

    if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
    {
      sub_101763850();
    }
  }
}

void sub_1001B214C(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = a3 + 9;
  v6 = *a2;
  if (a2[1] - *a2 <= v5)
  {
    if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
    {
      sub_10176388C();
    }
  }

  else
  {
    v8 = *(v6 + a3);
    v9 = *(v6 + a3 + 3);
    v10 = *(v6 + a3 + 2);
    v11 = *(v6 + a3 + 1) << 8;
    v12 = (*(v6 + a3 + 7) << 24) | (*(v6 + a3 + 6) << 16) | (*(v6 + a3 + 5) << 8) | *(v6 + a3 + 4);
    v13 = *(v6 + a3 + 8) | (*(v6 + v5) << 8);
    v14 = *(a1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 67109376;
      v15[1] = a3;
      v16 = 1024;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I processUePolicySectionManagementSublist startIndex %u, upsmSublistLength %u", v15, 0xEu);
    }

    sub_1001B22F8(a1, a2, a3 + 10, v13, v11 | v8 | (v9 << 24) | (v10 << 16) | (v12 << 32));
  }
}

void sub_1001B22F8(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, unint64_t a5)
{
  v5 = a3 + a4 - 1;
  if (v5 >= a3)
  {
    v7 = a3;
    while (1)
    {
      sub_1001B23B0(a1, a2, v7, a5);
      v10 = v7 + 1;
      if (a2[1] - *a2 <= v10)
      {
        break;
      }

      v7 += (*(*a2 + v10) | (*(*a2 + v7) << 8)) + 2;
      if (v7 > v5)
      {
        return;
      }
    }

    if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
    {
      sub_1017638F4();
    }
  }
}

void sub_1001B23B0(uint64_t a1, uint64_t *a2, unsigned int a3, unint64_t a4)
{
  v6 = a3 + 3;
  v7 = *a2;
  if (a2[1] - *a2 > v6)
  {
    v8 = a4;
    v10 = a3 + 1;
    v11 = *(v7 + a3 + 1) | (*(v7 + a3) << 8);
    v12 = *(v7 + v6) | (*(v7 + a3 + 2) << 8);
    v24[0] = a4;
    v24[1] = WORD1(a4);
    v25 = HIDWORD(a4) != 0;
    HIWORD(v25) = v12;
    v13 = *(a1 + 56);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109888;
      DWORD1(buf) = v8;
      WORD4(buf) = 1024;
      *(&buf + 10) = HIWORD(v8);
      HIWORD(buf) = 1024;
      LODWORD(v32[0]) = v12;
      WORD2(v32[0]) = 1024;
      *(v32 + 6) = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I processUePolicyInstruction upsi: mcc=%u, mnc=%u,upsc=0x%x, instruction length=0x%x", &buf, 0x1Au);
    }

    if (v11 == 2)
    {
      sub_1001C1D50((a1 + 104), v24);
      v18 = *(a1 + 56);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(buf) = 67109632;
      DWORD1(buf) = v8;
      WORD4(buf) = 1024;
      *(&buf + 10) = HIWORD(v8);
      HIWORD(buf) = 1024;
      LODWORD(v32[0]) = v12;
      v15 = "#I processUePolicyInstruction removed upsi: plmn[%u, %u] upsc 0x%x";
      v16 = v18;
      v17 = 20;
      goto LABEL_12;
    }

    if (!v11)
    {
      v14 = *(a1 + 56);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = a3;
      v15 = "#E processUePolicyInstruction empty content %u";
      v16 = v14;
      v17 = 8;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &buf, v17);
      return;
    }

    buf = 0uLL;
    v32[0] = 0;
    sub_1001B26F4(a1, a2, a3 + 4, v10 + v11, &buf);
    if (buf == *(&buf + 1))
    {
      goto LABEL_20;
    }

    sub_1001B2950((a1 + 104), v24, &buf);
    v20 = v19;
    v21 = *(a1 + 56);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        *v26 = 67109632;
        *&v26[4] = v8;
        v27 = 1024;
        v28 = HIWORD(v8);
        v29 = 1024;
        v30 = v12;
        v23 = "#I processUePolicyInstruction inserted upsi: plmn[%u, %u] upsc 0x%x";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, v26, 0x14u);
      }
    }

    else if (v22)
    {
      *v26 = 67109632;
      *&v26[4] = v8;
      v27 = 1024;
      v28 = HIWORD(v8);
      v29 = 1024;
      v30 = v12;
      v23 = "#I processUePolicyInstruction replaced upsi: plmn[%u, %u] upsc 0x%x";
      goto LABEL_19;
    }

LABEL_20:
    *v26 = &buf;
    sub_1001B8B00(v26);
    return;
  }

  if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
  {
    sub_10176395C();
  }
}

void sub_1001B26D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001B8B00(va);
  _Unwind_Resume(a1);
}

void sub_1001B26F4(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, __int128 *a5@<X8>)
{
  v18 = 0uLL;
  v19 = 0;
  v10 = *(a1 + 56);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    DWORD1(buf) = a3;
    WORD4(buf) = 1024;
    *(&buf + 10) = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I processUePolicySectionContents startIdx=%u, stopIdx=%u", &buf, 0xEu);
  }

  if (a3 >= a4)
  {
    v17 = 0;
    v16 = 0uLL;
LABEL_12:
    *a5 = v16;
    *(a5 + 2) = v17;
    a5 = &v18;
  }

  else
  {
    while (1)
    {
      v11 = a3 + 2;
      v12 = *a2;
      if (a2[1] - *a2 <= v11)
      {
        break;
      }

      v13 = __rev16(*(v12 + a3));
      v14 = *(v12 + v11) & 0xF;
      v15 = *(a1 + 56);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 67109376;
        DWORD1(buf) = v13;
        WORD4(buf) = 1024;
        *(&buf + 10) = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I processUePolicySectionContents, policyPartContentsLen=0x%x, type=0x%x", &buf, 0xEu);
      }

      if (v14 == 1)
      {
        buf = 0uLL;
        v23 = 0;
        sub_1001B2A2C(a1, a2, a3 + 3, a3 + 1 + v13, &buf);
        sub_1001B8B54(&v20, buf, *(&buf + 1), &v18);
        p_buf = &buf;
        sub_1001B8B00(&p_buf);
      }

      a3 = v11 + v13;
      if (v11 + v13 >= a4)
      {
        v16 = v18;
        v17 = v19;
        goto LABEL_12;
      }
    }

    if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
    {
      sub_1017639C4();
    }
  }

  *a5 = 0;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *&buf = &v18;
  sub_1001B8B00(&buf);
}

uint64_t sub_1001B2950(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    v8 = a1 + 1;
    do
    {
      v9 = sub_1001C1E68((v7 + 32), a2);
      if (v9)
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

      if (!v9)
      {
        v8 = v7;
      }

      v7 = *(v7 + v10);
    }

    while (v7);
    if (v8 != v6 && !sub_1001C1E68(a2, v8 + 16))
    {
      sub_1001C1EE0(v8 + 5);
      *(v8 + 5) = *a3;
      v8[7] = *(a3 + 16);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return v8;
    }

    v6 = v8;
  }

  return sub_1001C1F20(a1, v6, a2);
}

void sub_1001B2A2C(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, __int128 *a5@<X8>)
{
  v19 = 0uLL;
  v20 = 0;
  v10 = *(a1 + 56);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a3;
    *&buf[8] = 1024;
    *&buf[10] = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I processUePolicyPartContentsUrspList startIdx=%u, stopIdx=%u", buf, 0xEu);
  }

  if (a3 > a4)
  {
LABEL_19:
    *a5 = v19;
    *(a5 + 2) = v20;
    a5 = &v19;
  }

  else
  {
    while (1)
    {
      v11 = a3 + 1;
      if (a2[1] - *a2 <= v11)
      {
        break;
      }

      v12 = *(*a2 + v11) | (*(*a2 + a3) << 8);
      v13 = *(a1 + 56);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I urspRuleLength=0x%x", buf, 8u);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *buf = 0u;
      sub_1001B2D44(a1, a2, a3, buf);
      v14 = BYTE8(v36);
      v15 = *(a1 + 56);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14 == 1)
      {
        if (v16)
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I processUePolicyPartContentsUrspList adding ursp Rule", v21, 2u);
          if ((BYTE8(v36) & 1) == 0)
          {
            sub_1000D1644();
          }
        }

        v17 = *(&v19 + 1);
        if (*(&v19 + 1) >= v20)
        {
          v18 = sub_1001B9134(&v19, buf);
        }

        else
        {
          sub_1001B9280(&v19, *(&v19 + 1), buf);
          v18 = v17 + 232;
        }

        *(&v19 + 1) = v18;
      }

      else if (v16)
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I processUePolicyPartContentsUrspList skip invalid ursp Rule", v21, 2u);
      }

      if (BYTE8(v36) == 1)
      {
        *v21 = &v35;
        sub_1001BA238(v21);
        sub_1001BD39C(&buf[8]);
      }

      a3 += v12 + 2;
      if (a3 > a4)
      {
        goto LABEL_19;
      }
    }

    if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
    {
      sub_101763A2C();
    }
  }

  *a5 = 0;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *buf = &v19;
  sub_1001B8B00(buf);
}

uint64_t sub_1001B2D44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v37 = 0;
  v36 = 0u;
  v7 = (a3 + 4);
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  memset(v33, 0, sizeof(v33));
  v32 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  v28 = 0u;
  v8 = *a2;
  if (a2[1] - *a2 > v7)
  {
    v10 = *(v8 + (a3 + 2));
    LOBYTE(v27) = *(v8 + (a3 + 2));
    v11 = *(v8 + v7) | (*(v8 + (a3 + 3)) << 8);
    v12 = *(a1 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v10;
      *&buf[8] = 1024;
      *&buf[10] = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I URSP rule precedenceValue = %u, trafficDescriptorLength = 0x%x", buf, 0xEu);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    sub_1001B3270(a1, a2, a3 + 5, v7 + v11, buf);
    v13 = *(a1 + 56);
    if (BYTE8(v54) == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I processUrspRule adding td", &v40, 2u);
        if ((BYTE8(v54) & 1) == 0)
        {
          sub_1000D1644();
        }
      }

      sub_1001B4E8C(&v27 + 8, buf);
      v14 = (a3 + v11 + 6);
      if (a2[1] - *a2 > v14)
      {
        v15 = *(*a2 + v14) | (*(*a2 + (a3 + 5 + v11)) << 8);
        v16 = *(a1 + 56);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v40) = 67109120;
          DWORD1(v40) = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I processUrspRule length of rsd list=0x%x", &v40, 8u);
        }

        v40 = 0uLL;
        v41 = 0;
        sub_1001B4F80(a1, a2, a3 + v11 + 7, v14 + v15, &v40);
        v18 = *(&v40 + 1);
        v17 = v40;
        v19 = *(a1 + 56);
        if (v40 == *(&v40 + 1))
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_101763B38();
          }

          v24 = 0;
          *a4 = 0;
        }

        else
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I processUrspRule adding rsdList", v39, 2u);
            v18 = *(&v40 + 1);
            v17 = v40;
          }

          v20 = 126 - 2 * __clz(0xEEEEEEEEEEEEEEEFLL * ((v18 - v17) >> 3));
          if (v18 == v17)
          {
            v21 = 0;
          }

          else
          {
            v21 = v20;
          }

          sub_1001BA734(v17, v18, &v38, v21, 1);
          sub_1001BCCA4(&v36, v40, *(&v40 + 1), 0xEEEEEEEEEEEEEEEFLL * ((*(&v40 + 1) - v40) >> 3));
          *a4 = v27;
          *(a4 + 8) = BYTE8(v27);
          *(a4 + 32) = *&v29[0];
          *(a4 + 56) = *(&v29[1] + 1);
          *(a4 + 80) = *&v31[0];
          *(a4 + 104) = *(&v31[1] + 1);
          v22 = *(&v33[1] + 1);
          *(a4 + 128) = *&v33[0];
          *(a4 + 152) = v22;
          v23 = *(&v35[1] + 1);
          *(a4 + 176) = *&v35[0];
          *(a4 + 16) = v28;
          v28 = 0uLL;
          *(a4 + 40) = *(v29 + 8);
          memset(v29, 0, sizeof(v29));
          *(a4 + 64) = v30;
          v30 = 0uLL;
          *(a4 + 88) = *(v31 + 8);
          memset(v31, 0, sizeof(v31));
          *(a4 + 112) = v32;
          v32 = 0uLL;
          *(a4 + 136) = *(v33 + 8);
          memset(v33, 0, sizeof(v33));
          *(a4 + 160) = v34;
          v34 = 0uLL;
          *(a4 + 184) = *(v35 + 8);
          *(a4 + 200) = v23;
          memset(v35, 0, sizeof(v35));
          *(a4 + 208) = v36;
          *(a4 + 224) = v37;
          v36 = 0uLL;
          v24 = 1;
          v37 = 0;
        }

        *(a4 + 232) = v24;
        *v39 = &v40;
        sub_1001BA238(v39);
        goto LABEL_29;
      }

      if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
      {
        sub_101763AD0();
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_101763A94();
    }

    *a4 = 0;
    *(a4 + 232) = 0;
LABEL_29:
    if (BYTE8(v54) == 1)
    {
      sub_1001BD39C(buf);
    }

    goto LABEL_31;
  }

  v25 = *(a1 + 56);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E processUePolicyInstruction wrong startIndex %u", buf, 8u);
  }

  *a4 = 0;
  *(a4 + 232) = 0;
LABEL_31:
  *buf = &v36;
  sub_1001BA238(buf);
  return sub_1001BD39C(&v27 + 8);
}

void sub_1001B321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70 == 1)
  {
    sub_1001BD39C(&a45);
  }

  sub_1001B5274(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B3270@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v230 = 0;
  v229 = 0u;
  *v227 = 0u;
  memset(v228, 0, sizeof(v228));
  memset(__src, 0, sizeof(__src));
  v225 = 0u;
  v223 = 0u;
  memset(v224, 0, sizeof(v224));
  v221 = 0u;
  v222 = 0u;
  if (a3 <= a4)
  {
    v8 = a4;
    v9 = a3;
    v11 = a1;
    v217 = a4 + 1;
    v219 = a1;
    while (1)
    {
      v12 = *a2;
      v13 = *(*a2 + v9);
      if (v13 <= 0x80)
      {
        if (*(*a2 + v9) <= 0x4Fu)
        {
          if (*(*a2 + v9) <= 0xFu)
          {
            if (v13 == 1)
            {
              if (v9 != v8)
              {
                v205 = *(v11 + 56);
                if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  v206 = "#E Error: Match-All traffic descriptor has to be the only traffic descriptor in the URSP rule";
                  v207 = v205;
                  v208 = 2;
                  goto LABEL_339;
                }

LABEL_305:
                *a5 = 0;
                *(a5 + 200) = 0;
                return sub_1001BD39C(&v221);
              }

              LOBYTE(v221) = 1;
              v9 = v217;
              goto LABEL_214;
            }

            if (v13 != 8)
            {
LABEL_309:
              if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_101764378();
              }

              goto LABEL_305;
            }

            if (a2[1] - v12 <= (v9 + 17))
            {
              if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_10176426C();
              }

              goto LABEL_305;
            }

            v40 = v9;
            *&v232.__r_.__value_.__l.__data_ = 0uLL;
            *&v232.__r_.__value_.__l.__data_ = *(v9 + v12 + 1);
            v41 = *(v11 + 72);
            if (v41)
            {
              v42 = std::__shared_weak_count::lock(v41);
              if (v42)
              {
                v43 = *(v11 + 64);
                if (v43)
                {
                  v44 = PersonalitySpecificImpl::simSlot(v11);
                  if (((*(*v43 + 48))(v43, v44, &v232) & 1) == 0)
                  {
                    v211 = *(v11 + 56);
                    if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                      _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I Skip traffic descriptor as it is NOT for iOS", &buf, 2u);
                    }

                    *a5 = 0;
                    *(a5 + 200) = 0;
                    sub_100004A34(v42);
                    return sub_1001BD39C(&v221);
                  }
                }
              }
            }

            else
            {
              v42 = 0;
            }

            v117 = *(*a2 + v9 + 17);
            sub_1001B52B8(v219, a2, v9 + 18, v9 + 17 + v117, &__p);
            v118 = v223.i64[1];
            if (v223.i64[1] >= v224[0].i64[0])
            {
              v120 = 0xAAAAAAAAAAAAAAABLL * ((v223.i64[1] - v223.i64[0]) >> 3);
              v121 = v120 + 1;
              if (v120 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1000CE3D4();
              }

              if (0x5555555555555556 * ((v224[0].i64[0] - v223.i64[0]) >> 3) > v121)
              {
                v121 = 0x5555555555555556 * ((v224[0].i64[0] - v223.i64[0]) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v224[0].i64[0] - v223.i64[0]) >> 3) >= 0x555555555555555)
              {
                v122 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v122 = v121;
              }

              v235 = &v223;
              if (v122)
              {
                sub_100005348(&v223, v122);
              }

              v148 = 8 * ((v223.i64[1] - v223.i64[0]) >> 3);
              v149 = *&__p.__r_.__value_.__l.__data_;
              *(v148 + 16) = *(&__p.__r_.__value_.__l + 2);
              *v148 = v149;
              memset(&__p, 0, sizeof(__p));
              v150 = (24 * v120 - (v223.i64[1] - v223.i64[0]));
              memcpy(v150, v223.i64[0], v223.i64[1] - v223.i64[0]);
              v151 = v223.i64[0];
              v152 = v224[0].i64[0];
              v223.i64[0] = v150;
              v223.i64[1] = 24 * v120 + 24;
              v224[0].i64[0] = 0;
              buf.__r_.__value_.__r.__words[2] = v151;
              v234 = v152;
              buf.__r_.__value_.__r.__words[0] = v151;
              buf.__r_.__value_.__l.__size_ = v151;
              sub_1000054E0(&buf);
              v223.i64[1] = 24 * v120 + 24;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v119 = *&__p.__r_.__value_.__l.__data_;
              *(v223.i64[1] + 16) = *(&__p.__r_.__value_.__l + 2);
              *v118 = v119;
              v223.i64[1] = v118 + 24;
            }

            v9 = v40 + v117 + 18;
            if (v42)
            {
              sub_100004A34(v42);
            }

            v11 = v219;
          }

          else
          {
            if (v13 == 16)
            {
              v84 = v9 + 8;
              if (a2[1] - v12 <= v84)
              {
                if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_101764204();
                }

                goto LABEL_305;
              }

              memset(&buf, 0, sizeof(buf));
              CSIPacketAddress::CSIPacketAddress(&buf);
              v85 = a5;
              memset(&__p, 0, sizeof(__p));
              CSIPacketAddress::CSIPacketAddress(&__p);
              v86 = *(*a2 + v9 + 5);
              v87 = *(*a2 + v9 + 6);
              v88 = *(*a2 + v9 + 7);
              v89 = *(*a2 + v84);
              CSIPacketAddress::setIPv4AddressLE(&buf, (*(*a2 + v9 + 1) << 24) | (*(*a2 + v9 + 2) << 16) | (*(*a2 + v9 + 3) << 8) | *(*a2 + v9 + 4));
              CSIPacketAddress::setIPv4AddressLE(&__p, (v86 << 24) | (v87 << 16) | (v88 << 8) | v89);
              v90 = CSIPacketAddress::maskToPrefix(&__p);
              CSIPacketAddress::setPrefixLen(&buf, v90);
              v91 = v224[1].i64[0];
              if (v224[1].i64[0] >= v224[1].i64[1])
              {
                v92 = sub_1001BD180(&v224[0].i64[1], &buf);
              }

              else
              {
                CSIPacketAddress::CSIPacketAddress(v224[1].i64[0], &buf);
                v92 = v91 + 24;
              }

              a5 = v85;
              v8 = a4;
              v224[1].i64[0] = v92;
              v9 += 9;
              v11 = v219;
              goto LABEL_214;
            }

            if (v13 == 33)
            {
              v80 = v9 + 17;
              if (a2[1] - v12 <= v80)
              {
                if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_10176419C();
                }

                goto LABEL_305;
              }

              memset(&buf, 0, sizeof(buf));
              CSIPacketAddress::CSIPacketAddress(&buf);
              CSIPacketAddress::setIPv6Address(v81, (*a2 + v9 + 1), 0x10uLL);
              CSIPacketAddress::setPrefixLen(&buf, *(*a2 + v80));
              v82 = v224[1].i64[0];
              if (v224[1].i64[0] >= v224[1].i64[1])
              {
                v83 = sub_1001BD180(&v224[0].i64[1], &buf);
              }

              else
              {
                CSIPacketAddress::CSIPacketAddress(v224[1].i64[0], &buf);
                v83 = v82 + 24;
              }

              v224[1].i64[0] = v83;
              v9 += 18;
              goto LABEL_214;
            }

            if (v13 != 48)
            {
              goto LABEL_309;
            }

            v37 = v9 + 1;
            if (a2[1] - v12 <= v37)
            {
              if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_101764134();
              }

              goto LABEL_305;
            }

            v38 = v225.i64[1];
            if (v225.i64[1] >= __src[0])
            {
              v109 = v225.i64[0];
              v110 = (v225.i64[1] - v225.i64[0]);
              v111 = v225.i64[1] - v225.i64[0] + 1;
              if (v111 < 0)
              {
                sub_1000CE3D4();
              }

              v112 = __src[0] - v225.i64[0];
              if (2 * (__src[0] - v225.i64[0]) > v111)
              {
                v111 = 2 * v112;
              }

              if (v112 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v113 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v113 = v111;
              }

              if (v113)
              {
                operator new();
              }

              v142 = v225.i64[1] - v225.i64[0];
              *v110 = *(v12 + v37);
              v39 = (v110 + 1);
              memcpy(0, v109, v142);
              v225.i64[0] = 0;
              v225.i64[1] = (v110 + 1);
              __src[0] = 0;
              if (v109)
              {
                operator delete(v109);
              }
            }

            else
            {
              *v225.i64[1] = *(v12 + v37);
              v39 = v38 + 1;
            }

            v225.i64[1] = v39;
            v9 += 2;
          }

          goto LABEL_213;
        }

        if (*(*a2 + v9) <= 0x5Fu)
        {
          switch(v13)
          {
            case 'P':
              v97 = v9 + 2;
              if (a2[1] - v12 <= v97)
              {
                if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_1017640CC();
                }

                goto LABEL_305;
              }

              v98 = *(v12 + v97) | (*(v12 + v9 + 1) << 8);
              v99 = __src[2];
              if (__src[2] >= __src[3])
              {
                v104 = __src[1];
                v105 = __src[2] - __src[1];
                v106 = (__src[2] - __src[1]) >> 1;
                if (v106 <= -2)
                {
                  sub_1000CE3D4();
                }

                if ((__src[3] - __src[1]) <= (v106 + 1))
                {
                  v107 = v106 + 1;
                }

                else
                {
                  v107 = __src[3] - __src[1];
                }

                v108 = 0x7FFFFFFFFFFFFFFFLL;
                if ((__src[3] - __src[1]) < 0x7FFFFFFFFFFFFFFELL)
                {
                  v108 = v107;
                }

                if (v108)
                {
                  sub_1001B9700(&__src[1], v108);
                }

                v139 = (2 * v106);
                v140 = &v139[-((__src[2] - __src[1]) >> 1)];
                *v139 = v98;
                v100 = v139 + 1;
                memcpy(v140, v104, v105);
                v141 = __src[1];
                __src[1] = v140;
                *&__src[2] = v100;
                if (v141)
                {
                  operator delete(v141);
                }
              }

              else
              {
                *__src[2] = v98;
                v100 = v99 + 2;
              }

              __src[2] = v100;
              v9 += 3;
              break;
            case 'Q':
              v93 = v9 + 4;
              if (a2[1] - v12 <= v93)
              {
                if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_101764064();
                }

                goto LABEL_305;
              }

              v94 = *(v12 + v9 + 2) | (*(v12 + v9 + 1) << 8) | (*(v12 + v9 + 3) << 24) | (*(v12 + v93) << 16);
              v95 = v227[1];
              if (v227[1] >= v228[0].i64[0])
              {
                v101 = (v227[1] - v227[0]) >> 2;
                if ((v101 + 1) >> 62)
                {
                  sub_1000CE3D4();
                }

                v102 = (v228[0].i64[0] - v227[0]) >> 1;
                if (v102 <= v101 + 1)
                {
                  v102 = v101 + 1;
                }

                if (v228[0].i64[0] - v227[0] >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v103 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v102;
                }

                if (v103)
                {
                  sub_100016740(v227, v103);
                }

                v136 = (4 * v101);
                *v136 = v94;
                v96 = (4 * v101 + 4);
                v137 = v136 - (v227[1] - v227[0]);
                memcpy(v137, v227[0], v227[1] - v227[0]);
                v138 = v227[0];
                v227[0] = v137;
                v227[1] = v96;
                v228[0].i64[0] = 0;
                if (v138)
                {
                  operator delete(v138);
                }
              }

              else
              {
                *v227[1] = v94;
                v96 = v95 + 4;
              }

              v227[1] = v96;
              v9 = 5;
              break;
            case 'R':
              v14 = v9 + 1;
              v15 = a2[1] - v12;
              if (v15 <= v14)
              {
                if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_101763D7C();
                }

                goto LABEL_305;
              }

              v16 = *(v12 + v14);
              if (v16)
              {
                v17 = v9 + 9;
                if (v15 <= v17)
                {
                  if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                  {
                    sub_101763DE4();
                  }

                  goto LABEL_305;
                }

                memset(&buf, 0, sizeof(buf));
                CSIPacketAddress::CSIPacketAddress(&buf);
                v18 = v16;
                v19 = a5;
                memset(&__p, 0, sizeof(__p));
                CSIPacketAddress::CSIPacketAddress(&__p);
                v20 = *(*a2 + v9 + 6);
                v21 = *(*a2 + v9 + 7);
                v22 = *(*a2 + v9 + 8);
                v23 = *(*a2 + v17);
                CSIPacketAddress::setIPv4AddressLE(&buf, (*(*a2 + v9 + 2) << 24) | (*(*a2 + v9 + 3) << 16) | (*(*a2 + v9 + 4) << 8) | *(*a2 + v9 + 5));
                CSIPacketAddress::setIPv4AddressLE(&__p, (v20 << 24) | (v21 << 16) | (v22 << 8) | v23);
                v24 = CSIPacketAddress::maskToPrefix(&__p);
                CSIPacketAddress::setPrefixLen(&buf, v24);
                v25 = v224[1].i64[0];
                if (v224[1].i64[0] >= v224[1].i64[1])
                {
                  v26 = sub_1001BD180(&v224[0].i64[1], &buf);
                }

                else
                {
                  CSIPacketAddress::CSIPacketAddress(v224[1].i64[0], &buf);
                  v26 = v25 + 24;
                }

                a5 = v19;
                v8 = a4;
                v16 = v18;
                v224[1].i64[0] = v26;
                v9 += 10;
                v11 = v219;
              }

              if ((v16 & 2) != 0)
              {
                v125 = v9 + 18;
                if (a2[1] - *a2 <= v125)
                {
                  if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                  {
                    sub_101763E4C();
                  }

                  goto LABEL_305;
                }

                memset(&buf, 0, sizeof(buf));
                CSIPacketAddress::CSIPacketAddress(&buf);
                CSIPacketAddress::setIPv6Address(v126, (*a2 + v9 + 2), 0x10uLL);
                CSIPacketAddress::setPrefixLen(&buf, *(*a2 + v125));
                v127 = v224[1].i64[0];
                if (v224[1].i64[0] >= v224[1].i64[1])
                {
                  v128 = sub_1001BD180(&v224[0].i64[1], &buf);
                }

                else
                {
                  CSIPacketAddress::CSIPacketAddress(v224[1].i64[0], &buf);
                  v128 = v127 + 24;
                }

                v224[1].i64[0] = v128;
                v9 += 19;
              }

              if ((v16 & 4) != 0)
              {
                v129 = *a2;
                if (a2[1] - *a2 <= v9)
                {
                  if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                  {
                    sub_101763EB4();
                  }

                  goto LABEL_305;
                }

                v130 = v225.i64[1];
                if (v225.i64[1] >= __src[0])
                {
                  v132 = v225.i64[0];
                  v133 = v225.i64[1] - v225.i64[0] + 1;
                  if (v133 < 0)
                  {
                    sub_1000CE3D4();
                  }

                  v134 = __src[0] - v225.i64[0];
                  if (2 * (__src[0] - v225.i64[0]) > v133)
                  {
                    v133 = 2 * v134;
                  }

                  if (v134 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v135 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v135 = v133;
                  }

                  if (v135)
                  {
                    operator new();
                  }

                  v171 = v225.i64[1] - v225.i64[0];
                  v172 = (v225.i64[1] - v225.i64[0]);
                  *v172 = *(v129 + v9);
                  v131 = (v172 + 1);
                  memcpy(0, v132, v171);
                  v225.i64[0] = 0;
                  v225.i64[1] = v131;
                  __src[0] = 0;
                  if (v132)
                  {
                    operator delete(v132);
                  }
                }

                else
                {
                  *v225.i64[1] = *(v129 + v9);
                  v131 = v130 + 1;
                }

                v225.i64[1] = v131;
                ++v9;
                v8 = a4;
              }

              if ((v16 & 8) != 0)
              {
                v173 = v9 + 1;
                if (a2[1] - *a2 <= v173)
                {
                  if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                  {
                    sub_101763F1C();
                  }

                  goto LABEL_305;
                }

                v174 = *(*a2 + v173) | (*(*a2 + v9) << 8);
                v175 = __src[2];
                if (__src[2] >= __src[3])
                {
                  v177 = __src[1];
                  v178 = __src[2] - __src[1];
                  v179 = (__src[2] - __src[1]) >> 1;
                  if (v179 <= -2)
                  {
                    sub_1000CE3D4();
                  }

                  if ((__src[3] - __src[1]) <= (v179 + 1))
                  {
                    v180 = v179 + 1;
                  }

                  else
                  {
                    v180 = __src[3] - __src[1];
                  }

                  v181 = 0x7FFFFFFFFFFFFFFFLL;
                  if ((__src[3] - __src[1]) < 0x7FFFFFFFFFFFFFFELL)
                  {
                    v181 = v180;
                  }

                  if (v181)
                  {
                    sub_1001B9700(&__src[1], v181);
                  }

                  v182 = (2 * v179);
                  v183 = &v182[-((__src[2] - __src[1]) >> 1)];
                  *v182 = v174;
                  v176 = v182 + 1;
                  memcpy(v183, v177, v178);
                  v184 = __src[1];
                  __src[1] = v183;
                  *&__src[2] = v176;
                  if (v184)
                  {
                    operator delete(v184);
                  }
                }

                else
                {
                  *__src[2] = v174;
                  v176 = v175 + 2;
                }

                __src[2] = v176;
                v9 += 2;
                v8 = a4;
              }

              if ((v16 & 0x10) != 0)
              {
                v185 = v9 + 3;
                if (a2[1] - *a2 <= v185)
                {
                  if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                  {
                    sub_101763F84();
                  }

                  goto LABEL_305;
                }

                v186 = *(*a2 + v9 + 1) | (*(*a2 + v9) << 8) | (*(*a2 + v9 + 2) << 24) | (*(*a2 + v185) << 16);
                v187 = v227[1];
                if (v227[1] >= v228[0].i64[0])
                {
                  v189 = (v227[1] - v227[0]) >> 2;
                  if ((v189 + 1) >> 62)
                  {
                    sub_1000CE3D4();
                  }

                  v190 = (v228[0].i64[0] - v227[0]) >> 1;
                  if (v190 <= v189 + 1)
                  {
                    v190 = v189 + 1;
                  }

                  if (v228[0].i64[0] - v227[0] >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v191 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v191 = v190;
                  }

                  if (v191)
                  {
                    sub_100016740(v227, v191);
                  }

                  v192 = (4 * v189);
                  *v192 = v186;
                  v188 = (4 * v189 + 4);
                  v193 = v192 - (v227[1] - v227[0]);
                  memcpy(v193, v227[0], v227[1] - v227[0]);
                  v194 = v227[0];
                  v227[0] = v193;
                  v227[1] = v188;
                  v228[0].i64[0] = 0;
                  if (v194)
                  {
                    operator delete(v194);
                  }
                }

                else
                {
                  *v227[1] = v186;
                  v188 = v187 + 4;
                }

                v227[1] = v188;
                v9 += 4;
                v8 = a4;
              }

              if ((~v16 & 3) == 0)
              {
                if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_101764028();
                }

                goto LABEL_305;
              }

              if ((~v16 & 0x18) == 0)
              {
                if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_101763FEC();
                }

                goto LABEL_305;
              }

              goto LABEL_214;
            default:
              goto LABEL_309;
          }

LABEL_213:
          v8 = a4;
          goto LABEL_214;
        }

        if (v13 == 96)
        {
          v9 += 5;
          goto LABEL_214;
        }

        if (v13 != 112)
        {
          if (v13 != 128)
          {
            goto LABEL_309;
          }

          v9 += 4;
          goto LABEL_214;
        }
      }

      else
      {
        if (*(*a2 + v9) > 0x87u)
        {
          if (*(*a2 + v9) > 0x91u)
          {
            if (v13 == 146)
            {
              v79 = v9 + 1;
              if (a2[1] - v12 <= v79)
              {
                if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_101763BDC();
                }

                goto LABEL_305;
              }

              v9 += *(v12 + v79) + 2;
              goto LABEL_214;
            }

            if (v13 != 160)
            {
              if (v13 != 161)
              {
                goto LABEL_309;
              }

              v9 += 13;
              goto LABEL_214;
            }

            v63 = v9 + 1;
            if (a2[1] - v12 <= v63)
            {
              if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_101763B74();
              }

              goto LABEL_305;
            }

            v64 = *(v12 + v63);
            v65 = v9 + 2;
            sub_1001B52B8(v11, a2, v65, v63 + v64, &__p);
            v66 = v223.i64[1];
            if (v223.i64[1] >= v224[0].i64[0])
            {
              v114 = 0xAAAAAAAAAAAAAAABLL * ((v223.i64[1] - v223.i64[0]) >> 3);
              v115 = v114 + 1;
              if (v114 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1000CE3D4();
              }

              if (0x5555555555555556 * ((v224[0].i64[0] - v223.i64[0]) >> 3) > v115)
              {
                v115 = 0x5555555555555556 * ((v224[0].i64[0] - v223.i64[0]) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v224[0].i64[0] - v223.i64[0]) >> 3) >= 0x555555555555555)
              {
                v116 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v116 = v115;
              }

              v235 = &v223;
              if (v116)
              {
                sub_100005348(&v223, v116);
              }

              v143 = 8 * ((v223.i64[1] - v223.i64[0]) >> 3);
              v144 = *&__p.__r_.__value_.__l.__data_;
              *(v143 + 16) = *(&__p.__r_.__value_.__l + 2);
              *v143 = v144;
              memset(&__p, 0, sizeof(__p));
              v145 = (24 * v114 - (v223.i64[1] - v223.i64[0]));
              memcpy(v145, v223.i64[0], v223.i64[1] - v223.i64[0]);
              v146 = v223.i64[0];
              v147 = v224[0].i64[0];
              v223.i64[0] = v145;
              v223.i64[1] = 24 * v114 + 24;
              v224[0].i64[0] = 0;
              buf.__r_.__value_.__r.__words[2] = v146;
              v234 = v147;
              buf.__r_.__value_.__r.__words[0] = v146;
              buf.__r_.__value_.__l.__size_ = v146;
              sub_1000054E0(&buf);
              v223.i64[1] = 24 * v114 + 24;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v67 = *&__p.__r_.__value_.__l.__data_;
              *(v223.i64[1] + 16) = *(&__p.__r_.__value_.__l + 2);
              *v66 = v67;
              v223.i64[1] = v66 + 24;
            }

            v9 = v65 + v64;
          }

          else
          {
            if (v13 == 136)
            {
              v68 = v9 + 2;
              if (a2[1] - v12 <= v68)
              {
                if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_1017642D4();
                }

                goto LABEL_305;
              }

              v69 = *(v12 + v9 + 1);
              v70 = v8;
              v71 = v9 + 1 + v69;
              if (v71 > v70)
              {
                v209 = *(v11 + 56);
                if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                  HIDWORD(buf.__r_.__value_.__r.__words[0]) = v69;
                  v206 = "#E processUrspTrafficDescriptor incorrect dnnLength=%u";
                  v207 = v209;
                  v208 = 8;
LABEL_339:
                  _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_DEFAULT, v206, &buf, v208);
                }

                goto LABEL_305;
              }

              memset(&__p, 0, sizeof(__p));
              memset(&v232, 0, sizeof(v232));
              if (v68 <= v71)
              {
                v72 = v9 + 2;
                do
                {
                  v73 = v72 + *(*a2 + v72);
                  sub_1001B52B8(v11, a2, v72 + 1, v73, &buf);
                  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v232.__r_.__value_.__l.__data_);
                  }

                  v232 = buf;
                  sub_100168A48(&__p.__r_.__value_.__l.__data_, &v232.__r_.__value_.__l.__data_, &buf);
                  v74 = std::string::append(&buf, ".", 1uLL);
                  v75 = v74->__r_.__value_.__r.__words[0];
                  v231[0] = v74->__r_.__value_.__l.__size_;
                  *(v231 + 7) = *(&v74->__r_.__value_.__r.__words[1] + 7);
                  v76 = HIBYTE(v74->__r_.__value_.__r.__words[2]);
                  v74->__r_.__value_.__l.__size_ = 0;
                  v74->__r_.__value_.__r.__words[2] = 0;
                  v74->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  __p.__r_.__value_.__r.__words[0] = v75;
                  __p.__r_.__value_.__l.__size_ = v231[0];
                  *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v231 + 7);
                  *(&__p.__r_.__value_.__s + 23) = v76;
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }

                  v72 = v73 + 1;
                }

                while (v73 + 1 <= v71);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  if (__p.__r_.__value_.__l.__size_)
                  {
                    v77 = __p.__r_.__value_.__l.__size_ - 1;
                    p_p = __p.__r_.__value_.__r.__words[0];
                    --__p.__r_.__value_.__l.__size_;
LABEL_218:
                    p_p->__r_.__value_.__s.__data_[v77] = 0;
                  }
                }

                else if (*(&__p.__r_.__value_.__s + 23))
                {
                  v77 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
                  --*(&__p.__r_.__value_.__s + 23);
                  p_p = &__p;
                  goto LABEL_218;
                }
              }

              v153 = *(v11 + 56);
              if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
              {
                v154 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v154 = __p.__r_.__value_.__r.__words[0];
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                *(buf.__r_.__value_.__r.__words + 4) = v154;
                _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "#I processUrspTrafficDescriptor Td Dnn=%s", &buf, 0xCu);
              }

              v155 = v222;
              v8 = a4;
              if (v222 >= *(&v222 + 1))
              {
                v158 = 0xAAAAAAAAAAAAAAABLL * ((v222 - *(&v221 + 1)) >> 3);
                v159 = v158 + 1;
                if (v158 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1000CE3D4();
                }

                if (0x5555555555555556 * ((*(&v222 + 1) - *(&v221 + 1)) >> 3) > v159)
                {
                  v159 = 0x5555555555555556 * ((*(&v222 + 1) - *(&v221 + 1)) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*(&v222 + 1) - *(&v221 + 1)) >> 3) >= 0x555555555555555)
                {
                  v160 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v160 = v159;
                }

                v235 = (&v221 + 8);
                if (v160)
                {
                  sub_100005348(&v221 + 8, v160);
                }

                v161 = 8 * ((v222 - *(&v221 + 1)) >> 3);
                v162 = *&__p.__r_.__value_.__l.__data_;
                *(v161 + 16) = *(&__p.__r_.__value_.__l + 2);
                *v161 = v162;
                memset(&__p, 0, sizeof(__p));
                v157 = 24 * v158 + 24;
                v163 = (v161 - (v222 - *(&v221 + 1)));
                memcpy(v163, *(&v221 + 1), v222 - *(&v221 + 1));
                v164 = *(&v221 + 1);
                v165 = *(&v222 + 1);
                *(&v221 + 1) = v163;
                v222 = v157;
                buf.__r_.__value_.__r.__words[2] = v164;
                v234 = v165;
                buf.__r_.__value_.__r.__words[0] = v164;
                buf.__r_.__value_.__l.__size_ = v164;
                sub_1000054E0(&buf);
                v8 = a4;
              }

              else
              {
                v156 = *&__p.__r_.__value_.__l.__data_;
                *(v222 + 16) = *(&__p.__r_.__value_.__l + 2);
                *v155 = v156;
                memset(&__p, 0, sizeof(__p));
                v157 = v155 + 24;
              }

              *&v222 = v157;
              if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v232.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v9 = v68 + v69;
              goto LABEL_214;
            }

            if (v13 != 144)
            {
              if (v13 != 145)
              {
                goto LABEL_309;
              }

              v27 = v9 + 1;
              if (a2[1] - v12 <= v27)
              {
                if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_101763C44();
                }

                goto LABEL_305;
              }

              v28 = *(v12 + v27);
              memset(&buf, 0, sizeof(buf));
              v29 = v27 + v28;
              memset(&__p, 0, sizeof(__p));
              v215 = v9 + 2;
              if (v9 + 2 <= v27 + v28)
              {
                v213 = v28;
                v30 = v9 + 2;
                do
                {
                  if (a2[1] - *a2 <= v30)
                  {
                    v123 = *(v11 + 56);
                    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v232.__r_.__value_.__l.__data_) = 67109120;
                      HIDWORD(v232.__r_.__value_.__r.__words[0]) = v30;
                      _os_log_error_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "UrspTdTypeDestinationFQDN wrong fqdnLabelStartIndex %u", &v232, 8u);
                    }

                    v124 = 0;
                    *a5 = 0;
                    *(a5 + 200) = 0;
                    v8 = a4;
                    goto LABEL_253;
                  }

                  v31 = v30 + *(*a2 + v30);
                  sub_1001B52B8(v11, a2, v30 + 1, v31, &v232);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  __p = v232;
                  sub_100168A48(&buf.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_, &v232);
                  v32 = std::string::append(&v232, ".", 1uLL);
                  v33 = v32->__r_.__value_.__r.__words[0];
                  v231[0] = v32->__r_.__value_.__l.__size_;
                  *(v231 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
                  v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
                  v32->__r_.__value_.__l.__size_ = 0;
                  v32->__r_.__value_.__r.__words[2] = 0;
                  v32->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }

                  buf.__r_.__value_.__r.__words[0] = v33;
                  buf.__r_.__value_.__l.__size_ = v231[0];
                  *(&buf.__r_.__value_.__r.__words[1] + 7) = *(v231 + 7);
                  *(&buf.__r_.__value_.__s + 23) = v34;
                  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v232.__r_.__value_.__l.__data_);
                  }

                  v30 = v31 + 1;
                }

                while (v31 + 1 <= v29);
                if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  v28 = v213;
                  if (!buf.__r_.__value_.__l.__size_)
                  {
                    goto LABEL_242;
                  }

                  v35 = buf.__r_.__value_.__l.__size_ - 1;
                  p_buf = buf.__r_.__value_.__r.__words[0];
                  --buf.__r_.__value_.__l.__size_;
                }

                else
                {
                  v28 = v213;
                  if (!*(&buf.__r_.__value_.__s + 23))
                  {
                    goto LABEL_242;
                  }

                  v35 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 1;
                  --*(&buf.__r_.__value_.__s + 23);
                  p_buf = &buf;
                }

                p_buf->__r_.__value_.__s.__data_[v35] = 0;
              }

LABEL_242:
              v166 = *(v11 + 56);
              if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
              {
                v167 = &buf;
                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v167 = buf.__r_.__value_.__r.__words[0];
                }

                LODWORD(v232.__r_.__value_.__l.__data_) = 136315138;
                *(v232.__r_.__value_.__r.__words + 4) = v167;
                _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "#I processUrspTrafficDescriptor Fqdn=%s", &v232, 0xCu);
              }

              v168 = v228[1].i64[0];
              v8 = a4;
              if (v228[1].i64[0] >= v228[1].i64[1])
              {
                v170 = sub_10016B30C(&v228[0].i64[1], &buf);
              }

              else
              {
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(v228[1].i64[0], buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                }

                else
                {
                  v169 = *&buf.__r_.__value_.__l.__data_;
                  *(v228[1].i64[0] + 16) = *(&buf.__r_.__value_.__l + 2);
                  *v168 = v169;
                }

                v170 = v168 + 24;
              }

              v228[1].i64[0] = v170;
              v9 = v215 + v28;
              v124 = 1;
LABEL_253:
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              if ((v124 & 1) == 0)
              {
                return sub_1001BD39C(&v221);
              }

              goto LABEL_214;
            }

            v45 = v9 + 1;
            v46 = a2[1] - v12;
            if (v46 <= v45)
            {
              if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_101763CAC();
              }

              goto LABEL_305;
            }

            v47 = *(v12 + v45);
            if (v46 <= (v45 + v47))
            {
              if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_101763D14();
              }

              goto LABEL_305;
            }

            v48 = v9 + 2;
            if (v47)
            {
              v216 = a5;
              v214 = v9 + 2;
              do
              {
                v49 = *(v11 + 56);
                v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
                v51 = *a2;
                if (v50)
                {
                  v52 = *(v51 + v48);
                  v53 = v48;
                  LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                  HIDWORD(buf.__r_.__value_.__r.__words[0]) = v52;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I UrspTdTypeConnectionCapabilities conn cap=%u", &buf, 8u);
                  v51 = *a2;
                }

                else
                {
                  v53 = v48;
                }

                v54 = *(&v229 + 1);
                if (*(&v229 + 1) >= v230)
                {
                  v56 = v229;
                  v57 = (*(&v229 + 1) - v229);
                  v58 = *(&v229 + 1) - v229 + 1;
                  if (v58 < 0)
                  {
                    sub_1000CE3D4();
                  }

                  v59 = v230 - v229;
                  if (2 * (v230 - v229) > v58)
                  {
                    v58 = 2 * v59;
                  }

                  if (v59 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v60 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v60 = v58;
                  }

                  if (v60)
                  {
                    operator new();
                  }

                  v61 = *(&v229 + 1) - v229;
                  *v57 = *(v51 + v53);
                  v55 = v57 + 1;
                  memcpy(0, v56, v61);
                  *&v229 = 0;
                  *(&v229 + 1) = v57 + 1;
                  v230 = 0;
                  if (v56)
                  {
                    operator delete(v56);
                  }
                }

                else
                {
                  **(&v229 + 1) = *(v51 + v53);
                  v55 = (v54 + 1);
                }

                *(&v229 + 1) = v55;
                ++v48;
                --v47;
                v11 = v219;
              }

              while (v47);
              v62 = *(*a2 + v45);
              a5 = v216;
              v48 = v214;
            }

            else
            {
              v62 = 0;
            }

            v9 = v48 + v62;
          }

          goto LABEL_213;
        }

        if (*(*a2 + v9) > 0x84u)
        {
          if (v13 == 133 || v13 == 134)
          {
            v9 += 2;
            goto LABEL_214;
          }
        }

        else
        {
          if (v13 == 129)
          {
            v9 += 7;
            goto LABEL_214;
          }

          if (v13 == 131)
          {
            v9 += 3;
            goto LABEL_214;
          }

          if (v13 != 132)
          {
            goto LABEL_309;
          }
        }
      }

      v9 += 3;
LABEL_214:
      if (v9 > v8)
      {
        v6 = v221;
        v7 = *(&v221 + 1);
        if ((v221 & 1) == 0)
        {
          goto LABEL_306;
        }

        v195 = v222;
        if (*(&v221 + 1) != v222 || (v196 = v223, (vmovn_s64(vceqq_s64(v223, vdupq_laneq_s64(v223, 1))).u8[0] & 1) == 0) || (v197 = *(v224 + 8), (vmovn_s64(vceqq_s64(*(v224 + 8), vdupq_laneq_s64(*(v224 + 8), 1))).u8[0] & 1) == 0) || (v198 = v225, (vmovn_s64(vceqq_s64(v225, vdupq_laneq_s64(v225, 1))).u8[0] & 1) == 0) || (v199 = *&__src[1], (vmovn_s64(vceqq_s64(*&__src[1], vdupq_laneq_s64(*&__src[1], 1))).u8[0] & 1) == 0) || (v200 = *(v228 + 8), (vmovn_s64(vceqq_s64(*(v228 + 8), vdupq_laneq_s64(*(v228 + 8), 1))).u8[0] & 1) == 0) || v229 != *(&v229 + 1))
        {
          if (os_log_type_enabled(*(v11 + 56), OS_LOG_TYPE_ERROR))
          {
            sub_10176433C();
          }

          goto LABEL_305;
        }

        goto LABEL_307;
      }
    }
  }

  v6 = 0;
  v7 = 0;
LABEL_306:
  v195 = v222;
  v196 = v223;
  v197 = *(v224 + 8);
  v198 = v225;
  v199 = *&__src[1];
  v200 = *(v228 + 8);
LABEL_307:
  *a5 = v6;
  *(a5 + 8) = v7;
  *(a5 + 16) = v195;
  v201 = v224[0].i64[0];
  *(a5 + 24) = *(&v222 + 1);
  v222 = 0uLL;
  *(&v221 + 1) = 0;
  *(a5 + 32) = v196;
  *(a5 + 48) = v201;
  v223 = 0uLL;
  *(a5 + 56) = v197;
  v202 = __src[0];
  *(a5 + 72) = v224[1].i64[1];
  memset(v224, 0, sizeof(v224));
  *(a5 + 80) = v198;
  *(a5 + 96) = v202;
  v225 = 0uLL;
  *(a5 + 104) = v199;
  *(a5 + 120) = __src[3];
  memset(__src, 0, sizeof(__src));
  *(a5 + 128) = *v227;
  v203 = v228[1].i64[1];
  *(a5 + 144) = v228[0].i64[0];
  v227[0] = 0;
  v227[1] = 0;
  *(a5 + 152) = v200;
  *(a5 + 168) = v203;
  memset(v228, 0, sizeof(v228));
  *(a5 + 176) = v229;
  *(a5 + 192) = v230;
  v229 = 0uLL;
  v230 = 0;
  *(a5 + 200) = 1;
  return sub_1001BD39C(&v221);
}

void sub_1001B4D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 121) < 0)
  {
    operator delete(*(v48 - 144));
  }

  sub_1001BD39C(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B4E8C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_100008234((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    sub_100008234((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    sub_1001BA330((a1 + 56), *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
    sub_1001122C4((a1 + 80), *(a2 + 80), *(a2 + 88), *(a2 + 88) - *(a2 + 80));
    sub_1001BA4EC((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 1);
    sub_1001BA610((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
    sub_100008234((a1 + 152), *(a2 + 152), *(a2 + 160), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 160) - *(a2 + 152)) >> 3));
    sub_1001122C4((a1 + 176), *(a2 + 176), *(a2 + 184), *(a2 + 184) - *(a2 + 176));
  }

  return a1;
}

void sub_1001B4F80(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, __int128 *a5@<X8>)
{
  v6 = 0;
  v22 = 0;
  v7 = 0uLL;
  v21 = 0u;
  if (a3 > a4)
  {
LABEL_20:
    *a5 = v7;
    *(a5 + 2) = v6;
    a5 = &v21;
  }

  else
  {
    v9 = a3;
    while (1)
    {
      v12 = v9 + 1;
      if (a2[1] - *a2 <= v12)
      {
        break;
      }

      v13 = *(*a2 + v12) | (*(*a2 + v9) << 8);
      v14 = *(a1 + 56);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I processUrspRouteSelectionDescriptorList rsdLength=0x%x", buf, 8u);
      }

      v28 = 0u;
      memset(v27, 0, sizeof(v27));
      memset(v26, 0, sizeof(v26));
      *buf = 0u;
      v25 = 0u;
      sub_1001B536C(a1, a2, v9, v12 + v13, buf);
      v15 = BYTE8(v28);
      v16 = *(a1 + 56);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15 == 1)
      {
        if (v17)
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I processUrspRouteSelectionDescriptorList adding rsd", v23, 2u);
          if ((BYTE8(v28) & 1) == 0)
          {
            sub_1000D1644();
          }
        }

        v18 = *(&v21 + 1);
        if (*(&v21 + 1) >= v22)
        {
          v19 = sub_1001BD448(&v21, buf);
        }

        else
        {
          sub_1001B998C(&v21, *(&v21 + 1), buf);
          v19 = v18 + 120;
        }

        *(&v21 + 1) = v19;
      }

      else if (v17)
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I processUrspRouteSelectionDescriptorList skip invalid rsd", v23, 2u);
      }

      if (BYTE8(v28) == 1)
      {
        *v23 = v27;
        sub_1001BA044(v23);
        *v23 = v26;
        sub_1000087B4(v23);
        if (*&buf[8])
        {
          *&v25 = *&buf[8];
          operator delete(*&buf[8]);
        }
      }

      v9 += v13 + 2;
      if (v9 > a4)
      {
        v7 = v21;
        v6 = v22;
        goto LABEL_20;
      }
    }

    v20 = *(a1 + 56);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E processUrspRouteSelectionDescriptorList wrong startIndex %u", buf, 8u);
    }
  }

  *a5 = 0;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *buf = &v21;
  sub_1001BA238(buf);
}

void sub_1001B5238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_1001BD740(&a17);
  a17 = &a11;
  sub_1001BA238(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B5274(uint64_t a1)
{
  v3 = (a1 + 208);
  sub_1001BA238(&v3);
  sub_1001BD39C(a1 + 8);
  return a1;
}

void sub_1001B52B8(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (a2[1] - *a2 <= a4)
  {
    if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
    {
      sub_1017643E0();
    }
  }

  else
  {
    for (i = a3; i <= a4; ++i)
    {
      std::string::push_back(a5, *(*a2 + i));
    }
  }
}

void sub_1001B5350(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B536C(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = (a3 + 4);
  v83 = 0u;
  memset(v84, 0, 56);
  v81 = 0u;
  v82 = 0u;
  *v80 = 0u;
  v9 = *a2;
  if (a2[1] - *a2 <= v8)
  {
    if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
    {
      sub_101764448();
    }

LABEL_126:
    v73 = 0;
    *a5 = 0;
  }

  else
  {
    LOBYTE(v80[0]) = *(v9 + (a3 + 2));
    v12 = *(v9 + v8) | (*(v9 + (a3 + 3)) << 8);
    v13 = *(a1 + 56);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I processRouteSelectionDescriptor rsdContentsLength=0x%x", &buf, 8u);
    }

    v14 = a3 + 5;
    if (v8 + v12 == a4)
    {
      while (v14 <= a4)
      {
        v15 = v14;
        v16 = *a2;
        v17 = a2[1] - *a2;
        if (v17 <= v14)
        {
          if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
          {
            sub_1017644B0();
          }

          goto LABEL_126;
        }

        v18 = *(v16 + v14);
        if (v18 > 0x1F)
        {
          if (*(v16 + v14) > 0x80u)
          {
            switch(v18)
            {
              case 0x81u:
                LOBYTE(v84[3]) = 1;
                goto LABEL_67;
              case 0x82u:
                v39 = v14 + 1;
                if (v17 <= v39)
                {
                  if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
                  {
                    sub_101764580();
                  }

                  goto LABEL_126;
                }

                *(&v84[3] + 1) = *(v16 + v39) | 0x100;
                break;
              case 0x83u:
                v29 = v14 + 1;
                if (v17 <= v29)
                {
                  if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
                  {
                    sub_101764518();
                  }

                  goto LABEL_126;
                }

                *(&v84[3] + 3) = *(v16 + v29) | 0x100;
                break;
              default:
LABEL_135:
                if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
                {
                  sub_101764928();
                }

                goto LABEL_126;
            }

            goto LABEL_65;
          }

          switch(v18)
          {
            case 0x20u:
              BYTE13(v83) = 1;
LABEL_67:
              ++v14;
              break;
            case 0x40u:
              v35 = *(v16 + v14 + 1);
              v36 = *(a1 + 56);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I UrspRsdTypeLocationCriteria skip", &buf, 2u);
              }

              v14 = v15 + v35 + 2;
              break;
            case 0x80u:
              v28 = *(a1 + 56);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I UrspRsdTypeTimeWindow skip", &buf, 2u);
              }

              v14 += 17;
              break;
            default:
              goto LABEL_135;
          }
        }

        else
        {
          if (*(v16 + v14) > 7u)
          {
            switch(v18)
            {
              case 8u:
                v42 = v14 + 1;
                if (v17 <= v42)
                {
                  if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
                  {
                    sub_101764650();
                  }

                  goto LABEL_126;
                }

                v43 = *(v16 + v42);
                if ((BYTE9(v83) & 1) == 0)
                {
                  BYTE9(v83) = 1;
                }

                BYTE8(v83) = v43 & 7;
                break;
              case 0x10u:
                v37 = v14 + 1;
                if (v17 <= v37)
                {
                  if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
                  {
                    sub_1017645E8();
                  }

                  goto LABEL_126;
                }

                v38 = *(v16 + v37);
                if ((BYTE11(v83) & 1) == 0)
                {
                  BYTE11(v83) = 1;
                }

                BYTE10(v83) = v38 & 3;
                break;
              case 0x11u:
                BYTE12(v83) = 1;
                goto LABEL_67;
              default:
                goto LABEL_135;
            }

            goto LABEL_65;
          }

          if (v18 == 1)
          {
            v40 = v14 + 1;
            if (v17 <= v40)
            {
              if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_101764858();
              }

              goto LABEL_126;
            }

            v41 = *(v16 + v40);
            if ((BYTE2(v80[0]) & 1) == 0)
            {
              BYTE2(v80[0]) = 1;
            }

            BYTE1(v80[0]) = v41 & 7;
LABEL_65:
            v14 += 2;
            continue;
          }

          if (v18 != 2)
          {
            if (v18 != 4)
            {
              goto LABEL_135;
            }

            v19 = v14 + 2;
            if (v17 <= v19)
            {
              if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_1017648C0();
              }

              goto LABEL_126;
            }

            v76 = *(v16 + v15 + 1);
            v20 = v15 + 1 + v76;
            if (v20 > a4)
            {
              v75 = *(a1 + 56);
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                HIDWORD(buf.__r_.__value_.__r.__words[0]) = v76;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#E processUrspTrafficDescriptor incorrect dnnLength=%u", &buf, 8u);
              }

              goto LABEL_129;
            }

            memset(v79, 0, sizeof(v79));
            memset(&__p, 0, sizeof(__p));
            if (v19 <= v20)
            {
              v21 = v15 + 2;
              do
              {
                v22 = v21 + *(*a2 + v21);
                sub_1001B52B8(a1, a2, v21 + 1, v22, &buf);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                __p = buf;
                sub_100168A48(v79, &__p.__r_.__value_.__l.__data_, &buf);
                v23 = std::string::append(&buf, ".", 1uLL);
                v24 = v23->__r_.__value_.__r.__words[0];
                v85[0] = v23->__r_.__value_.__l.__size_;
                *(v85 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
                v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
                v23->__r_.__value_.__l.__size_ = 0;
                v23->__r_.__value_.__r.__words[2] = 0;
                v23->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v79[2]) < 0)
                {
                  operator delete(v79[0]);
                }

                v79[0] = v24;
                v79[1] = v85[0];
                *(&v79[1] + 7) = *(v85 + 7);
                HIBYTE(v79[2]) = v25;
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }

                v21 = v22 + 1;
              }

              while (v22 + 1 <= v20);
              if ((SHIBYTE(v79[2]) & 0x8000000000000000) != 0)
              {
                if (v79[1])
                {
                  v26 = v79[1] - 1;
                  v27 = v79[0];
                  --v79[1];
LABEL_86:
                  v26[v27] = 0;
                }
              }

              else if (HIBYTE(v79[2]))
              {
                v26 = (SHIBYTE(v79[2]) - 1);
                --HIBYTE(v79[2]);
                v27 = v79;
                goto LABEL_86;
              }
            }

            v53 = *(a1 + 56);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v54 = v79;
              if (SHIBYTE(v79[2]) < 0)
              {
                v54 = v79[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = v54;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I UrspRsdTypeDnn Dnn=%s", &buf, 0xCu);
            }

            v55 = *(&v82 + 1);
            if (*(&v82 + 1) >= v83)
            {
              v58 = 0xAAAAAAAAAAAAAAABLL * ((*(&v82 + 1) - v82) >> 3);
              v59 = v58 + 1;
              if (v58 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1000CE3D4();
              }

              if (0x5555555555555556 * ((v83 - v82) >> 3) > v59)
              {
                v59 = 0x5555555555555556 * ((v83 - v82) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 3) >= 0x555555555555555)
              {
                v60 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v60 = v59;
              }

              v88 = &v82;
              if (v60)
              {
                sub_100005348(&v82, v60);
              }

              v61 = 8 * ((*(&v82 + 1) - v82) >> 3);
              v62 = *v79;
              *(v61 + 16) = v79[2];
              *v61 = v62;
              memset(v79, 0, sizeof(v79));
              v57 = 24 * v58 + 24;
              v63 = (v61 - (*(&v82 + 1) - v82));
              memcpy(v63, v82, *(&v82 + 1) - v82);
              v64 = v82;
              v65 = v83;
              *&v82 = v63;
              *(&v82 + 1) = v57;
              *&v83 = 0;
              buf.__r_.__value_.__r.__words[2] = v64;
              v87 = v65;
              buf.__r_.__value_.__r.__words[0] = v64;
              buf.__r_.__value_.__l.__size_ = v64;
              sub_1000054E0(&buf);
            }

            else
            {
              v56 = *v79;
              *(*(&v82 + 1) + 16) = v79[2];
              *v55 = v56;
              memset(v79, 0, sizeof(v79));
              v57 = v55 + 24;
            }

            *(&v82 + 1) = v57;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v79[2]) < 0)
            {
              operator delete(v79[0]);
            }

            v14 = v19 + v76;
            continue;
          }

          v30 = v14 + 1;
          if (v17 <= v30)
          {
            if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
            {
              sub_1017646B8();
            }

            goto LABEL_126;
          }

          v31 = *(v16 + v30);
          if (v31 == 4)
          {
            v44 = v14 + 5;
            if (v17 <= v44)
            {
              if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_101764720();
              }

              goto LABEL_126;
            }

            v32 = v14 + 2;
            v77 = *(v16 + v44);
            v14 += 6;
            v34 = (*(v16 + v15 + 3) << 16) | (*(v16 + v15 + 4) << 8);
            v33 = 1;
          }

          else
          {
            if (v31 != 1)
            {
              if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_1017647F0();
              }

              goto LABEL_126;
            }

            v32 = v14 + 2;
            if (v17 <= v32)
            {
              if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
              {
                sub_101764788();
              }

              goto LABEL_126;
            }

            v33 = 0;
            v34 = 0;
            v77 = 0;
            v14 += 3;
          }

          v45 = *(v16 + v32);
          v46 = *(a1 + 56);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v77 | v34;
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
            if (!v33)
            {
              v47 = 0xFFFFFF;
            }

            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v45;
            LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 2) = v47;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I UrspRsdTypeSnssai add [sst:%d, sd:%d]", &buf, 0xEu);
          }

          v48 = v81;
          if (v81 >= *(&v81 + 1))
          {
            v50 = 0xAAAAAAAAAAAAAAABLL * ((v81 - v80[1]) >> 3);
            v51 = v50 + 1;
            if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1000CE3D4();
            }

            if (0x5555555555555556 * ((*(&v81 + 1) - v80[1]) >> 3) > v51)
            {
              v51 = 0x5555555555555556 * ((*(&v81 + 1) - v80[1]) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(&v81 + 1) - v80[1]) >> 3) >= 0x555555555555555)
            {
              v52 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v52 = v51;
            }

            if (v52)
            {
              sub_1001B9B5C(&v80[1], v52);
            }

            v66 = 8 * ((v81 - v80[1]) >> 3);
            *v66 = v45;
            *(v66 + 1) = 0;
            *(v66 + 3) = 0;
            *(v66 + 4) = v77 | v34;
            *(v66 + 8) = v33;
            v49 = 24 * v50 + 24;
            *(v66 + 9) = 0;
            *(v66 + 16) = 0;
            v67 = (24 * v50 - (v81 - v80[1]));
            memcpy((v66 - (v81 - v80[1])), v80[1], v81 - v80[1]);
            v68 = v80[1];
            v80[1] = v67;
            v81 = v49;
            if (v68)
            {
              operator delete(v68);
            }
          }

          else
          {
            *v81 = v45;
            *(v48 + 1) = 0;
            *(v48 + 3) = 0;
            *(v48 + 4) = v77 | v34;
            *(v48 + 8) = v33;
            v49 = v48 + 24;
            *(v48 + 9) = 0;
            *(v48 + 16) = 0;
          }

          *&v81 = v49;
        }
      }

      v69 = v80[1];
      v70 = v81;
      if (BYTE2(v80[0]) & 1) != 0 || v80[1] != v81 || v82 != *(&v82 + 1) || (BYTE9(v83) & 1) != 0 || (BYTE11(v83) & 1) != 0 || (BYTE12(v83) & 1) != 0 || (BYTE13(v83) & 1) != 0 || *&v84[0] != *(&v84[0] + 1) || (BYTE8(v84[2]) & 1) != 0 || (v84[3] & 1) != 0 || (BYTE2(v84[3]) & 1) != 0 || (BYTE4(v84[3]))
      {
        *a5 = v80[0];
        *(a5 + 2) = BYTE2(v80[0]);
        *(a5 + 8) = v69;
        *(a5 + 16) = v70;
        *(a5 + 24) = *(&v81 + 1);
        v81 = 0uLL;
        v80[1] = 0;
        *(a5 + 32) = v82;
        *(a5 + 48) = v83;
        v82 = 0uLL;
        *&v83 = 0;
        v71 = DWORD2(v83);
        *(a5 + 60) = WORD6(v83);
        *(a5 + 56) = v71;
        *(a5 + 64) = v84[0];
        *(a5 + 80) = *&v84[1];
        memset(v84, 0, 24);
        v72 = *(&v84[1] + 8);
        *(a5 + 101) = *(&v84[2] + 5);
        v73 = 1;
        *(a5 + 88) = v72;
        goto LABEL_130;
      }
    }

    else
    {
      v74 = *(a1 + 56);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109632;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = a3 + 5;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = v12;
        HIWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
        LODWORD(buf.__r_.__value_.__r.__words[2]) = a4;
        _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "incorrect rsd contents legnth %u, %u, %u", &buf, 0x14u);
      }
    }

LABEL_129:
    v73 = 0;
    *a5 = 0;
  }

LABEL_130:
  *(a5 + 120) = v73;
  buf.__r_.__value_.__r.__words[0] = v84;
  sub_1001BA044(&buf);
  buf.__r_.__value_.__r.__words[0] = &v82;
  sub_1000087B4(&buf);
  if (v80[1])
  {
    *&v81 = v80[1];
    operator delete(v80[1]);
  }
}

uint64_t sub_1001B5FE4(uint64_t a1)
{
  v4 = (a1 + 64);
  sub_1001BA044(&v4);
  v4 = (a1 + 32);
  sub_1000087B4(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_1001B6040(void *a1)
{
  v2 = a1[7];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (a1[17] == a1[16])
    {
      v3 = "empty";
    }

    else
    {
      v3 = "non-empty";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I sliceTrafficDescriptors_sync return %s list", &v5, 0xCu);
  }

  return a1 + 16;
}

void sub_1001B6118(uint64_t *a1)
{
  v2 = a1 + 14;
  sub_1001C1CF0((a1 + 13), a1[14]);
  a1[13] = v2;
  *v2 = 0;
  v3 = a1[10];
  a1[15] = 0;
  sub_1001BD7A8((a1 + 10), v3);
  v5 = a1[16];
    ;
  }

  a1[17] = v5;
}

void sub_1001B619C(PersonalitySpecificImpl *a1, std::string *a2, uint64_t a3)
{
  v5 = *(a1 + 9);
  if (!v5 || !std::__shared_weak_count::lock(v5) || (v7 = *(a1 + 8)) == 0)
  {
    buf.__r_.__value_.__r.__words[0] = a1;
    sub_1001058C4(&buf.__r_.__value_.__l.__size_, a3);
    *&v63.__r_.__value_.__l.__data_ = 0uLL;
    sub_100004AA0(&v63, a1 + 3);
    operator new();
  }

  v8 = PersonalitySpecificImpl::simSlot(a1);
  v9 = (*(*v7 + 56))(v7, v8);
  memset(&v63, 0, sizeof(v63));
  sub_10000501C(&v63, "");
  v60 = 0;
  v61 = 0;
  v62 = 0;
  memset(&__p, 0, sizeof(__p));
  sub_10000501C(&__p, "");
  v55 = a3;
  v10 = *(a1 + 7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I enter selectDnnForTd_sync", &buf, 2u);
  }

  v12 = *(a1 + 10);
  v11 = *(a1 + 11);
  if (v12 == v11)
  {
LABEL_49:
    size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v63.__r_.__value_.__l.__size_;
    }

    if (!size && v60 != v61)
    {
      v34 = a2[11].__r_.__value_.__s.__data_[0];
      v35 = *(a1 + 7);
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      if (v34 == 1)
      {
        if (v36)
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I rsd has no DNN. Use the same DNN from application td", &buf, 2u);
          if ((a2[11].__r_.__value_.__s.__data_[0] & 1) == 0)
          {
            sub_1000D1644();
          }
        }

        std::string::operator=(&v63, a2 + 10);
      }

      else if (v36)
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Both rsd and application td has no DNN", &buf, 2u);
      }
    }

    memset(&v58, 0, sizeof(v58));
    sub_10000501C(&v58, "");
    if (v60 == v61)
    {
      std::to_string(&v57, 255);
      v37 = std::string::append(&v57, ":", 1uLL);
      v38 = *&v37->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v56, 0xFFFFFF);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v56;
      }

      else
      {
        v39 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v40 = v56.__r_.__value_.__l.__size_;
      }

      v41 = std::string::append(&buf, v39, v40);
      v42 = v41->__r_.__value_.__r.__words[0];
      v66[0] = v41->__r_.__value_.__l.__size_;
      *(v66 + 7) = *(&v41->__r_.__value_.__r.__words[1] + 7);
      v43 = HIBYTE(v41->__r_.__value_.__r.__words[2]);
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      v58.__r_.__value_.__r.__words[0] = v42;
      v58.__r_.__value_.__l.__size_ = v66[0];
      *(&v58.__r_.__value_.__r.__words[1] + 7) = *(v66 + 7);
      *(&v58.__r_.__value_.__s + 23) = v43;
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::to_string(&buf, *v60);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = buf.__r_.__value_.__l.__size_;
      }

      std::string::append(&v58, p_buf, v32);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (*(v60 + 8) == 1)
      {
        v33 = *(v60 + 1);
      }

      else
      {
        v33 = 0xFFFFFF;
      }

      std::to_string(&v57, v33);
      v44 = std::string::insert(&v57, 0, ":", 1uLL);
      v45 = *&v44->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &buf;
      }

      else
      {
        v46 = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = buf.__r_.__value_.__l.__size_;
      }

      std::string::append(&v58, v46, v47);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = v63.__r_.__value_.__l.__size_;
    }

    if (v48)
    {
      memset(&v57, 0, sizeof(v57));
      sub_1000677C4(&v57, v48 + 1);
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v57;
      }

      else
      {
        v49 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v63;
      }

      else
      {
        v50 = v63.__r_.__value_.__r.__words[0];
      }

      memmove(v49, v50, v48);
      *(&v49->__r_.__value_.__l.__data_ + v48) = 64;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v58;
      }

      else
      {
        v51 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v58.__r_.__value_.__l.__size_;
      }

      v53 = std::string::append(&v57, v51, v52);
      v54 = *&v53->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
    }

    else
    {
      sub_10000501C(&buf, "");
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = buf;
    *(&buf.__r_.__value_.__s + 23) = 0;
    buf.__r_.__value_.__s.__data_[0] = 0;
    if (v48 && SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    buf.__r_.__value_.__r.__words[0] = a1;
    sub_1001058C4(&buf.__r_.__value_.__l.__size_, v55);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v65, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v65 = __p;
    }

    *&v56.__r_.__value_.__l.__data_ = 0uLL;
    sub_100004AA0(&v56, a1 + 3);
    operator new();
  }

LABEL_7:
  if (!sub_1001B6CB4(a1, a2, (v12 + 8)))
  {
    goto LABEL_48;
  }

  v13 = *(a1 + 7);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *v12;
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Found matching trafficDescriptor, precedence=%u", &buf, 8u);
  }

  v16 = *(v12 + 26);
  v15 = *(v12 + 27);
  while (1)
  {
    if (v16 == v15)
    {
LABEL_44:
      v29 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v29 = v63.__r_.__value_.__l.__size_;
      }

      if (v29 || v60 != v61)
      {
        goto LABEL_49;
      }

LABEL_48:
      v12 += 232;
      if (v12 == v11)
      {
        goto LABEL_49;
      }

      goto LABEL_7;
    }

    if (v9 == 16 || v9 == 14)
    {
      if (*(v16 + 2) == 1 && (*(v16 + 1) & 0xFE) == 2)
      {
        v17 = *(a1 + 7);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v18 = v17;
        v19 = "#I skip rsd in EPS with sscMode";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, &buf, 2u);
        goto LABEL_43;
      }

      if (*(v16 + 8) != *(v16 + 16))
      {
        v20 = *(a1 + 7);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v18 = v20;
        v19 = "#I skip rsd in EPS with snssaiList";
        goto LABEL_33;
      }

      if (*(v16 + 112) == 1)
      {
        v21 = *(a1 + 7);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v18 = v21;
        v19 = "#I skip rsd in EPS with proSeL3RelayOffloadIndicationPresent";
        goto LABEL_33;
      }

      if (*(v16 + 60) == 1)
      {
        v22 = *(a1 + 7);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v18 = v22;
        v19 = "#I skip rsd in EPS with multiAccessPreferencePresent";
        goto LABEL_33;
      }

      if (*(v16 + 104) == 1)
      {
        v23 = *(a1 + 7);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v18 = v23;
        v19 = "#I skip rsd in EPS with timeWindow";
        goto LABEL_33;
      }

      if (*(v16 + 64) != *(v16 + 72))
      {
        v24 = *(a1 + 7);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v18 = v24;
        v19 = "#I skip rsd in EPS with locationCriteria";
        goto LABEL_33;
      }
    }

    v25 = *(v16 + 32);
    if (v25 != *(v16 + 40))
    {
      std::string::operator=(&v63, v25);
    }

    v26 = *(v16 + 8);
    if (&v60 != (v16 + 8))
    {
      v27 = *(v16 + 16);
      if (v26 != v27)
      {
        sub_1001BD814(&v60, v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3));
      }
    }

    v28 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v63.__r_.__value_.__l.__size_;
    }

    if (v28 || v60 != v61)
    {
      goto LABEL_44;
    }

LABEL_43:
    v16 += 120;
  }
}