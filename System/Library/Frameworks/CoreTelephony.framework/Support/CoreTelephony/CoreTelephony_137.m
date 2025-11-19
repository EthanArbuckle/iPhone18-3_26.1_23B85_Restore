void sub_101207A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v15 + 8));
  _Unwind_Resume(a1);
}

const void **sub_101207ACC(uint64_t a1, const void *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v8, *a3, *(a3 + 8));
  }

  else
  {
    *v8 = *a3;
    v9 = *(a3 + 16);
  }

  if (SHIBYTE(v9) < 0)
  {
    sub_100005F2C(__dst, v8[0], v8[1]);
  }

  else
  {
    *__dst = *v8;
    v13 = v9;
  }

  v11 = 0;
  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v15 = v13;
  }

  v16 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v11;
    v11 = v16;
    v17 = v5;
    sub_100005978(&v17);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v11;
  v10 = v11;
  v11 = 0;
  sub_100005978(&v11);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  sub_101209738(a1, __p);
  CFDictionarySetValue(__p[0], a2, v6);
  sub_1000296E0(__p);
  return sub_100005978(&v10);
}

void sub_101207C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

const void **sub_101207C9C(uint64_t a1, const void *a2, int a3)
{
  v9 = 0;
  LODWORD(valuePtr) = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v9 = v5;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  v9 = 0;
  sub_100029A48(&v9);
  sub_101209738(a1, &valuePtr);
  CFDictionarySetValue(valuePtr, a2, v6);
  sub_1000296E0(&valuePtr);
  return sub_100029A48(&v8);
}

void sub_101207D44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  sub_1000296E0(va1);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

void sub_101207D74(int a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 56);
  v4 = *(a3 + 48);
  v5 = v4 == 2;
  v6 = v4 == 1;
  v7 = *(a3 + 52) == 1;
  LOBYTE(__p) = 0;
  v11 = 0;
  if (v3 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = &_mh_execute_header & 0xFFFFFFFF00000000 | v3;
  }

  sub_10120785C(a1, a2, a3 + 24, &__p, v8, 1, 1, v6, v5, 1, 0, v7, 0);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_101207E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101207E3C(int a1, int a2, uint64_t a3)
{
  *__dst = 0u;
  v16 = 0u;
  if (*(a3 + 103) < 0)
  {
    v6 = *(a3 + 88);
    if (v6)
    {
      sub_100005F2C(__dst, *(a3 + 80), v6);
      goto LABEL_6;
    }
  }

  else if (*(a3 + 103))
  {
    *__dst = *(a3 + 80);
    *&v16 = *(a3 + 96);
LABEL_6:
    BYTE8(v16) = 1;
  }

  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  v9 = *(a3 + 60);
  v10 = *(a3 + 64);
  v11 = *(a3 + 68);
  sub_10006F264(__p, __dst);
  sub_10120785C(a1, a2, a3 + 24, __p, 0, v8, v9, 0, v7 == 2, 1, v11 == 0, v10 == 1, 0);
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v16) == 1 && SBYTE7(v16) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_101207F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 == 1 && a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101207FB8(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v21 = 62;
  v22 = 0;
  sub_101207C9C(&v21, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v21, kCTSIMToolkitSession, a2);
  if ((a6 & 0x100000000) != 0)
  {
    sub_101207C9C(&v21, kCTSIMToolkitIcon, a6);
  }

  v11 = sub_10119DC14(a5);
  sub_1012073D0(&v21, kCTSIMToolkitPlayTone, v11);
  if (*(a3 + 24) == 1)
  {
    if ((*(a3 + 23) & 0x8000000000000000) != 0)
    {
      if (*(a3 + 8))
      {
        goto LABEL_6;
      }
    }

    else if (*(a3 + 23))
    {
LABEL_6:
      sub_10006F264(__p, a3);
      if (v20 == 1)
      {
        sub_101207ACC(&v21, kCTSIMToolkitText, __p);
        if ((v20 & 1) != 0 && v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_12;
    }

    sub_101207C9C(&v21, kCTSIMToolkitNoDisplay, 1);
  }

LABEL_12:
  if ((a4 & 0x100000000) != 0)
  {
    v23 = 0;
    valuePtr = a4 / 10.0;
    v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
    if (v13)
    {
      v23 = v13;
      valuePtr = 0.0;
      sub_100029A48(&valuePtr);
      v14 = v23;
    }

    else
    {
      v14 = 0;
    }

    v17 = v14;
    v23 = 0;
    sub_100029A48(&v23);
    v16 = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    sub_101208204(&v21, kCTSIMToolkitPlayToneDuration, &v16);
    sub_10000A1EC(&v16);
    sub_100029A48(&v17);
  }

  sub_101207434(&v21, v12);
  return sub_1000296E0(&v22);
}

void sub_1012081A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v20 + 8));
  _Unwind_Resume(a1);
}

const void **sub_101208204(const void **result, const void *a2, const void **a3)
{
  if (*a3)
  {
    sub_101209738(result, &theDict);
    CFDictionarySetValue(theDict, a2, *a3);
    return sub_1000296E0(&theDict);
  }

  return result;
}

void sub_101208258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

void sub_10120826C(int a1, int a2, uint64_t a3)
{
  *__dst = 0u;
  v13 = 0u;
  v6 = *(a3 + 47);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 32);
  }

  if (v6)
  {
    sub_1001696A4(__dst, (a3 + 24));
  }

  v7 = *(a3 + 56);
  sub_10006F264(__p, __dst);
  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = &_mh_execute_header & 0xFFFFFFFF00000000 | v7;
  }

  sub_101207FB8(a1, a2, __p, v8, *(a3 + 48), 0);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v13) == 1 && SBYTE7(v13) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_101208340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101208390(int a1, int a2, __int128 *a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v21 = 63;
  v22 = 0;
  sub_101207C9C(&v21, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v21, kCTSIMToolkitSession, a2);
  if ((a7 & 0x100000000) != 0)
  {
    sub_101207C9C(&v21, kCTSIMToolkitIcon, a7);
  }

  sub_10006F264(__p, a3);
  if (v20 == 1)
  {
    sub_101207ACC(&v21, kCTSIMToolkitText, __p);
    if ((v20 & 1) != 0 && v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = &kCFBooleanFalse;
  if (a5)
  {
    v13 = &kCFBooleanTrue;
  }

  sub_1012073D0(&v21, kCTSIMToolkitHelpAvailable, *v13);
  if (a4)
  {
    v14 = (a4 & &_mh_execute_header) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = &kCTSIMToolkitDisplayListStylePicker;
  if (!v14)
  {
    v15 = &kCTSIMToolkitDisplayListStyleMenu;
  }

  sub_1012073D0(&v21, kCTSIMToolkitDisplayListStyle, *v15);
  sub_101207C9C(&v21, kCTSIMToolkitDisplayListCount, a6);
  sub_101207434(&v21, v16);
  return sub_1000296E0(&v22);
}

void sub_101208514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v15 + 8));
  _Unwind_Resume(a1);
}

void sub_10120854C(int a1, int a2, uint64_t a3)
{
  *__dst = 0u;
  v13 = 0u;
  v6 = *(a3 + 79);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 64);
  }

  if (v6)
  {
    sub_1001696A4(__dst, (a3 + 56));
  }

  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  sub_10006F264(__p, __dst);
  sub_101208390(a1, a2, __p, (v8 == 2) | ((v8 == 2) << 32), v7 == 1, -858993459 * ((*(a3 + 40) - *(a3 + 32)) >> 3), 0);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v13) == 1 && SBYTE7(v13) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_101208640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101208690(int a1, int a2, __int128 *a3, uint64_t a4)
{
  v12 = 64;
  v13 = 0;
  sub_101207C9C(&v12, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v12, kCTSIMToolkitSession, a2);
  if ((a4 & 0x100000000) != 0)
  {
    sub_101207C9C(&v12, kCTSIMToolkitIcon, a4);
  }

  sub_10006F264(__p, a3);
  if (v11 == 1)
  {
    sub_101207ACC(&v12, kCTSIMToolkitText, __p);
    if ((v11 & 1) != 0 && v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1012073D0(&v12, kCTSIMToolkitDisplayTextOrderOutBehavior, kCTSIMToolkitDisplayTextOrderOutBehaviorClose);
  sub_101207434(&v12, v7);
  return sub_1000296E0(&v13);
}

void sub_101208798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v15 + 8));
  _Unwind_Resume(a1);
}

void sub_1012087D0(int a1, int a2, uint64_t a3)
{
  *__dst = 0u;
  v9 = 0u;
  if (*(a3 + 239) < 0)
  {
    if (*(a3 + 224))
    {
      sub_100005F2C(__dst, *(a3 + 216), *(a3 + 224));
      goto LABEL_6;
    }
  }

  else if (*(a3 + 239))
  {
    *__dst = *(a3 + 216);
    *&v9 = *(a3 + 232);
LABEL_6:
    BYTE8(v9) = 1;
  }

  sub_10006F264(__p, __dst);
  sub_101208690(a1, a2, __p, 0);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v9) == 1 && SBYTE7(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10120889C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1012088E8(int a1, int a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v15 = 65;
  v16 = 0;
  sub_101207C9C(&v15, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v15, kCTSIMToolkitSession, a2);
  if ((a4 & 0x100000000) != 0)
  {
    sub_101207C9C(&v15, kCTSIMToolkitIcon, a4);
  }

  sub_10006F264(__p, a3);
  if (v14 == 1)
  {
    sub_101207ACC(&v15, kCTSIMToolkitText, __p);
    if ((v14 & 1) != 0 && v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = *(a5 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a5 + 8);
  }

  if (v9)
  {
    sub_101207ACC(&v15, kCTSIMToolkitSentSSString, a5);
  }

  sub_1012073D0(&v15, kCTSIMToolkitDisplayTextOrderOutBehavior, kCTSIMToolkitDisplayTextOrderOutBehaviorClose);
  sub_101207434(&v15, v10);
  return sub_1000296E0(&v16);
}

void sub_101208A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v15 + 8));
  _Unwind_Resume(a1);
}

void sub_101208A64(int a1, int a2, uint64_t a3)
{
  *__dst = 0u;
  v13 = 0u;
  v6 = *(a3 + 207);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 192);
  }

  if (v6)
  {
    sub_1001696A4(__dst, (a3 + 184));
  }

  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  CSIPhoneNumber::getFullNumber(v10, (a3 + 24));
  sub_10006F264(__p, __dst);
  sub_1012088E8(a1, a2, __p, 0, v10);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (BYTE8(v13) == 1 && SBYTE7(v13) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_101208B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a29 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101208BB0(int a1, int a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v14 = 66;
  v15 = 0;
  sub_101207C9C(&v14, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v14, kCTSIMToolkitSession, a2);
  if ((a5 & 0x100000000) != 0)
  {
    sub_101207C9C(&v14, kCTSIMToolkitIcon, a5);
  }

  sub_10006F264(__p, a4);
  if (v13 == 1)
  {
    sub_101207ACC(&v14, kCTSIMToolkitText, __p);
    if ((v13 & 1) != 0 && v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a3 + 24) == 1)
  {
    if ((*(a3 + 23) & 0x8000000000000000) == 0)
    {
      if (!*(a3 + 23))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (*(a3 + 8))
    {
LABEL_12:
      sub_101207ACC(&v14, kCTSIMToolkitSentUSSDString, a3);
    }
  }

LABEL_13:
  sub_1012073D0(&v14, kCTSIMToolkitDisplayTextOrderOutBehavior, kCTSIMToolkitDisplayTextOrderOutBehaviorClose);
  sub_101207434(&v14, v9);
  return sub_1000296E0(&v15);
}

void sub_101208D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v15 + 8));
  _Unwind_Resume(a1);
}

void sub_101208D38(int a1, int a2, uint64_t a3)
{
  __dst = 0u;
  v31 = 0u;
  if (*(a3 + 103) < 0)
  {
    v6 = *(a3 + 88);
    if (!v6)
    {
      goto LABEL_7;
    }

    sub_100005F2C(&__dst, *(a3 + 80), v6);
  }

  else
  {
    if (!*(a3 + 103))
    {
      goto LABEL_7;
    }

    __dst = *(a3 + 80);
    *&v31 = *(a3 + 96);
  }

  BYTE8(v31) = 1;
LABEL_7:
  v28 = 0u;
  v29 = 0u;
  if (*(a3 + 127) < 0)
  {
    v7 = *(a3 + 112);
    if (!v7)
    {
      goto LABEL_13;
    }

    sub_100005F2C(&v28, *(a3 + 104), v7);
  }

  else
  {
    if (!*(a3 + 127))
    {
      goto LABEL_13;
    }

    v28 = *(a3 + 104);
    *&v29 = *(a3 + 120);
  }

  BYTE8(v29) = 1;
LABEL_13:
  v8 = *(a3 + 48);
  v9 = *(a3 + 52);
  if (v8 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v8 == 2);
  }

  CSIPhoneNumber::CSIPhoneNumber();
  sub_10006F264(v16, &__dst);
  sub_10006F264(__p, &v28);
  v37 = 67;
  v38 = 0;
  sub_101207C9C(&v37, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v37, kCTSIMToolkitSession, a2);
  sub_10006F264(v34, v16);
  if (v36 == 1)
  {
    sub_101207ACC(&v37, kCTSIMToolkitText, v34);
    if ((v36 & 1) != 0 && v35 < 0)
    {
      operator delete(v34[0]);
    }
  }

  sub_1012073D0(&v37, kCTSIMToolkitCallSetUpPriority, **(&off_101F1BE70 + v10));
  v11 = &kCFBooleanFalse;
  if (v9 == 1)
  {
    v11 = &kCFBooleanTrue;
  }

  sub_1012073D0(&v37, kCTSIMToolkitCallSetUpRedial, *v11);
  CSIPhoneNumber::getFullNumber(v32, &v19);
  sub_101207ACC(&v37, kCTSIMToolkitCallSetUpPhoneNumber, v32);
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v15 == 1)
  {
    sub_101207ACC(&v37, kCTSIMToolkitCallSetUpInCallText, __p);
  }

  sub_101207434(&v37, v12);
  sub_1000296E0(&v38);
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (*(&v19.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v19.var2.__rep_.__l.__data_);
  }

  if (BYTE8(v29) == 1 && SBYTE7(v29) < 0)
  {
    operator delete(v28);
  }

  if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10120903C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 136) == 1 && *(v26 - 137) < 0)
  {
    operator delete(*(v26 - 160));
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101209124(int a1)
{
  v3 = 69;
  v4 = 0;
  sub_101207C9C(&v3, kCTSIMToolkitSimSlot, a1);
  sub_101207434(&v3, v1);
  return sub_1000296E0(&v4);
}

void sub_10120917C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

const void **sub_101209194(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = 70;
  v13 = 0;
  sub_101207C9C(&v12, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v12, kCTSIMToolkitSession, a2);
  if ((a4 & 0x100000000) != 0)
  {
    sub_101207C9C(&v12, kCTSIMToolkitIcon, a4);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  v11 = 1;
  sub_101207ACC(&v12, kCTSIMToolkitText, __p);
  if (v11 == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_101207434(&v12, v7);
  return sub_1000296E0(&v13);
}

void sub_101209298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v15 + 8));
  _Unwind_Resume(a1);
}

const void **sub_1012092D0(int a1, int a2, __int128 *a3, uint64_t a4)
{
  v12 = 71;
  v13 = 0;
  sub_101207C9C(&v12, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v12, kCTSIMToolkitSession, a2);
  if ((a4 & 0x100000000) != 0)
  {
    sub_101207C9C(&v12, kCTSIMToolkitIcon, a4);
  }

  sub_10006F264(__p, a3);
  if (v11 == 1)
  {
    sub_101207ACC(&v12, kCTSIMToolkitText, __p);
    if ((v11 & 1) != 0 && v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1012073D0(&v12, kCTSIMToolkitDisplayTextOrderOutBehavior, kCTSIMToolkitDisplayTextOrderOutBehaviorClose);
  sub_101207434(&v12, v7);
  return sub_1000296E0(&v13);
}

void sub_1012093D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v15 + 8));
  _Unwind_Resume(a1);
}

void sub_101209410(int a1, int a2, uint64_t a3)
{
  *__dst = 0u;
  v10 = 0u;
  v5 = *(a3 + 71);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 56);
  }

  if (v5)
  {
    sub_1001696A4(__dst, (a3 + 48));
  }

  sub_10006F264(__p, __dst);
  sub_1012092D0(a1, a2, __p, 0);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v10) == 1 && SBYTE7(v10) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1012094C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10120950C(int a1, int a2, uint64_t a3)
{
  v7 = 72;
  v8 = 0;
  sub_101207C9C(&v7, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v7, kCTSIMToolkitSession, a2);
  if (*(a3 + 24) == 1)
  {
    sub_101207ACC(&v7, kCTSIMToolkitLanguage, a3);
  }

  sub_101207434(&v7, v5);
  return sub_1000296E0(&v8);
}

void sub_1012095C4(int a1, int a2, uint64_t a3)
{
  *__dst = 0u;
  v9 = 0u;
  if (*(a3 + 20) == 1)
  {
    sub_1001696A4(__dst, (a3 + 24));
  }

  sub_10006F264(__p, __dst);
  sub_10120950C(a1, a2, __p);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v9) == 1 && SBYTE7(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_101209664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1012096B0(int a1, int a2)
{
  v5 = 78;
  v6 = 0;
  sub_101207C9C(&v5, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v5, kCTSIMToolkitSession, a2);
  sub_101207434(&v5, v3);
  return sub_1000296E0(&v6);
}

const void **sub_101209738@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v3 = (a1 + 8);
  if (!*(a1 + 8))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v5 = *v3;
    *v3 = Mutable;
    v7 = v5;
    sub_1000296E0(&v7);
  }

  return sub_100029714(a2, v3);
}

void sub_1012097B0(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = a1;
  sub_100A5C398(v2, &v1, "kCPGetSIMSubscriptionStatus", sub_1012099C4, 3);
}

void sub_1012099C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000501C(&v8, "/cc/props/cellular_plan_remotesubscription_info");
  v6 = *(a5 + 8);
  v7 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::RestModule::getPropertyOnce();
  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_101209A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (*(v15 - 17) < 0)
  {
    operator delete(*(v15 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_101209AB0(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  v8 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v9 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v17[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v17);
  if (!v12)
  {
    v14 = 0;
LABEL_11:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (!v14)
  {
LABEL_7:
    v18 = xpc_int64_create(0);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    v17[0] = *a5;
    v17[1] = "kCPProbeSIMConnectivityStatus";
    sub_10000F688(v17, &v18, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v18);
    v18 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1174405120;
  v20[2] = sub_10120B908;
  v20[3] = &unk_101F1BEB8;
  v16 = a5[1];
  v20[4] = *a5;
  v21 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 32))(v14, v20);
  if (v21)
  {
    sub_100004A34(v21);
  }

LABEL_16:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_101209C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_101209CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000501C(__p, "/cc/props/cellular_plan_remotesubscription_info");
  v7 = *(a5 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  __p[6] = 0;
  operator new();
}

void sub_101209DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_1000062D4(&a19);
  sub_100422B08(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_101209E24(capabilities::ct *a1, uint64_t a2, uint64_t a3, uint64_t a4, void ***a5)
{
  v7 = capabilities::ct::cellularPlanDeleteSupportedOnVinylSlotID(a1);
  if (v7)
  {
    v8 = v7;
    ServiceMap = Registry::getServiceMap(*a1);
    v10 = ServiceMap;
    if (v11 < 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    *&v28 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v28);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
        if (!v17)
        {
LABEL_20:
          if ((v18 & 1) == 0)
          {
            sub_100004A34(v16);
          }

          return;
        }

LABEL_11:
        v28 = 0u;
        v29 = 0u;
        v19 = VinylSlotIdFromInt(v8);
        (*(*v17 + 280))(&v28, v17, v19);
        valuePtr = 0;
        if (BYTE8(v29) == 1)
        {
          v20 = v28;
          if (v28 == *(&v28 + 1))
          {
            v21 = 0;
          }

          else
          {
            v21 = 0;
            do
            {
              v21 += *(v20 + 89) ^ 1;
              v20 += 216;
            }

            while (v20 != *(&v28 + 1));
          }

          valuePtr = v21;
        }

        v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        ctu::cf_to_xpc(&v24, v26, v22);
        v23[0] = *a5;
        v23[1] = "kCPNumberOfDeletablePlansInstalled";
        sub_10000F688(v23, &v24, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v24);
        v24 = 0;
        sub_100029A48(&v26);
        if (BYTE8(v29) == 1)
        {
          v23[0] = &v28;
          sub_100112120(v23);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }
}

void sub_10120A034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_100029A48(&a13);
  if (a18 == 1)
  {
    a9 = &a15;
    sub_100112120(&a9);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void sub_10120A084(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  v3 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v4 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_7;
      }

LABEL_11:
      (*(*v9 + 40))(v9);
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_1000207B8();
  v11 = qword_101FC8DB0;
  if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N no controller to send sim reprovision", v12, 2u);
  }

LABEL_12:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_10120A1D0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10120A1F0(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  v3 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v4 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_7;
      }

LABEL_11:
      (*(*v9 + 64))(v9);
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_1000207B8();
  v11 = qword_101FC8DB0;
  if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N no controller to send debug sim reset", v12, 2u);
  }

LABEL_12:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_10120A33C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10120A35C(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  v9 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v10 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
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
  __p = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &__p);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
LABEL_20:
    sub_1000207B8();
    v19 = qword_101FC8DB0;
    if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#N no controller to send override selection", &__p, 2u);
    }

    v20 = xpc_BOOL_create(0);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    __p = *a5;
    v27 = "kCPStandaloneOverrideSelectionResult";
    sub_10000F688(&__p, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
    if (v16)
    {
      return;
    }

LABEL_18:
    sub_100004A34(v14);
    return;
  }

LABEL_10:
  if (!xpc_dictionary_get_value(*a4, "kCPStandaloneIccid"))
  {
    goto LABEL_20;
  }

  v22[0] = a4;
  v22[1] = "kCPStandaloneIccid";
  sub_100006354(v22, &object);
  __p = 0;
  v27 = 0;
  v28 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  v18 = *a5;
  v17 = *(a5 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v29[0] = off_101F1BF78;
  v29[1] = v18;
  v29[2] = v17;
  v29[3] = v29;
  (*(*v15 + 72))(v15, &v24, v29);
  sub_10000FF50(v29);
  if (v25 < 0)
  {
    operator delete(v24);
  }

  xpc_release(object);
  if ((v16 & 1) == 0)
  {
    goto LABEL_18;
  }
}

void sub_10120A5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10120A674(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  v7 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v8 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __p);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (!v13)
  {
LABEL_16:
    sub_1000207B8();
    v15 = qword_101FC8DB0;
    if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N missing parameter (controller or iccid", __p, 2u);
    }

    goto LABEL_18;
  }

LABEL_10:
  if (!xpc_dictionary_get_value(*a4, "kCPStandaloneIccid"))
  {
    goto LABEL_16;
  }

  v16[0] = a4;
  v16[1] = "kCPStandaloneIccid";
  sub_100006354(v16, &object);
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v23 = 0;
  (*(*v13 + 72))(v13, &v18, v22);
  sub_10000FF50(v22);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  xpc_release(object);
LABEL_18:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10120A870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10120A8E8(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  v3 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v4 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
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
  __p[0] = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, __p);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
  if (!v9)
  {
LABEL_7:
    sub_1000207B8();
    v11 = qword_101FC8DB0;
    if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N no controller to reset override selection", __p, 2u);
      if (v10)
      {
        return;
      }

      goto LABEL_14;
    }

LABEL_13:
    if (v10)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_12:
  sub_10000501C(__p, "");
  v15 = 0;
  v14[0] = off_101E3EF10;
  v14[1] = _Block_copy(&stru_101F1C008);
  v15 = v14;
  (*(*v9 + 72))(v9, __p, v14);
  sub_10000FF50(v14);
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(__p[0]);
  if (v10)
  {
    return;
  }

LABEL_14:
  sub_100004A34(v8);
}

void sub_10120AAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10120AB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000501C(&v8, "/cc/props/vinyl_info");
  v6 = *(a5 + 8);
  v7 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::RestModule::getPropertyOnce();
  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10120ABF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (*(v15 - 17) < 0)
  {
    operator delete(*(v15 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_10120AC18(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  v10 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v11 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
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
  __p[0] = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, __p);
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
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  v18 = Registry::getServiceMap(*a1);
  v19 = v18;
  v20 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v21 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v18);
  __p[0] = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, __p);
  if (v24)
  {
    v26 = v24[3];
    v25 = v24[4];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v19);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
      v27 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v19);
  v25 = 0;
  v27 = 1;
LABEL_17:
  if (v16 | v26)
  {
    if (xpc_dictionary_get_value(*a4, "kCPStandaloneProfileServer") && xpc_dictionary_get_value(*a4, "kCPStandaloneCsn"))
    {
      v81 = 0;
      __p[0] = a4;
      __p[1] = "kCPStandaloneProfileServer";
      sub_100006354(__p, &v77);
      xpc::bridge(buf, &v77, v28);
      sub_100060DE8(&v81, buf);
      sub_10000A1EC(buf);
      xpc_release(v77);
      v80 = 0;
      __p[0] = a4;
      __p[1] = "kCPStandaloneCsn";
      sub_100006354(__p, &v77);
      xpc::bridge(buf, &v77, v29);
      sub_100060DE8(&v80, buf);
      sub_10000A1EC(buf);
      xpc_release(v77);
      if (!v81 || !v80)
      {
        goto LABEL_70;
      }

      v84 = 0uLL;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      memset(__p, 0, 24);
      ctu::cf::assign();
      *buf = *__p;
      *&buf[16] = __p[2];
      ctu::parse_hex();
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      if (v78 - v77 != 16)
      {
        sub_1000207B8();
        v38 = qword_101FC8DB0;
        if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I invalid csn", __p, 2u);
        }

        v46 = xpc_BOOL_create(0);
        if (!v46)
        {
          v46 = xpc_null_create();
        }

        __p[0] = *a5;
        __p[1] = "kCPStandaloneProfileResult";
        sub_10000F688(__p, &v46, &v47);
        xpc_release(v47);
        v47 = 0;
        xpc_release(v46);
        v46 = 0;
        goto LABEL_68;
      }

      v84 = *v77;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_100F11798(__p);
      memset(buf, 0, 24);
      v30 = ctu::cf::assign();
      v31 = *buf;
      v83[0] = *&buf[8];
      *(v83 + 7) = *&buf[15];
      v32 = buf[23];
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = v31;
      __p[1] = v83[0];
      *(&__p[1] + 7) = *(v83 + 7);
      HIBYTE(__p[2]) = v32;
      if (v16)
      {
        sub_1000207B8();
        v33 = qword_101FC8DB0;
        if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I watchController fetches profile", buf, 2u);
        }

        v58[0] = _NSConcreteStackBlock;
        v58[1] = 1174405120;
        v58[2] = sub_10120C414;
        v58[3] = &unk_101F1C058;
        v34 = *(a5 + 8);
        v58[4] = *a5;
        v59 = v34;
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v16 + 80))(v16, &v84, __p, v58);
        v35 = v59;
        if (!v59)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (!v26)
        {
          goto LABEL_67;
        }

        if (!capabilities::ct::defaultVinylCardTypeToGSMA(v30))
        {
          sub_1000207B8();
          v41 = qword_101FC8DB0;
          if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I unsupported device", buf, 2u);
          }

          v48 = xpc_BOOL_create(0);
          if (!v48)
          {
            v48 = xpc_null_create();
          }

          *buf = *a5;
          *&buf[8] = "kCPStandaloneProfileResult";
          sub_10000F688(buf, &v48, &v49);
          xpc_release(v49);
          v49 = 0;
          xpc_release(v48);
          v48 = 0;
          goto LABEL_67;
        }

        sub_1000207B8();
        v39 = qword_101FC8DB0;
        if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I ipadController fetches profile", buf, 2u);
        }

        sub_10005C7A4(&v57, &v81);
        v55 = 0;
        v56 = 0;
        v53 = 0;
        v54 = 0;
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 1174405120;
        v50[2] = sub_10120C550;
        v50[3] = &unk_101F1C088;
        v40 = *(a5 + 8);
        v50[4] = *a5;
        v51 = v40;
        v52 = 0;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v26 + 272))(v26, 10, 1, 1, 0, &v57, &v56, &v55, &v54, 0, &v53, &v52, v50);
        sub_100005978(&v52);
        sub_100005978(&v53);
        sub_100005978(&v54);
        sub_100005978(&v55);
        sub_100005978(&v56);
        sub_100005978(&v57);
        v35 = v51;
        if (!v51)
        {
LABEL_67:
          sub_100F118F0(__p);
LABEL_68:
          if (v77)
          {
            v78 = v77;
            operator delete(v77);
          }

LABEL_70:
          sub_100005978(&v80);
          sub_100005978(&v81);
          if (v27)
          {
            goto LABEL_46;
          }

LABEL_45:
          sub_100004A34(v25);
          goto LABEL_46;
        }
      }

      sub_100004A34(v35);
      goto LABEL_67;
    }

    sub_1000207B8();
    v37 = qword_101FC8DB0;
    if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I missing parameters", __p, 2u);
    }

    v44 = xpc_BOOL_create(0);
    if (!v44)
    {
      v44 = xpc_null_create();
    }

    __p[0] = *a5;
    __p[1] = "kCPStandaloneProfileResult";
    sub_10000F688(__p, &v44, &v45);
    xpc_release(v45);
    v45 = 0;
    xpc_release(v44);
    v44 = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    sub_1000207B8();
    v36 = qword_101FC8DB0;
    if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#N no controller to download profile", __p, 2u);
    }

    v42 = xpc_BOOL_create(0);
    if (!v42)
    {
      v42 = xpc_null_create();
    }

    __p[0] = *a5;
    __p[1] = "kCPStandaloneProfileResult";
    sub_10000F688(__p, &v42, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v42);
    v42 = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_10120B460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, int a38, __int16 a39, char a40, char a41, int a42, __int16 a43, char a44, char a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10120B62C(uint64_t a1, cellplan::RemoteSimSubscriptionInfo *a2)
{
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    v5 = 0;
  }

  else
  {
    v20 = 0;
    *__p = 0u;
    v19 = 0u;
    *v16 = 0u;
    v17 = 0u;
    *v14 = 0u;
    v15 = 0u;
    cellplan::read_rest_value(v14, a2, v4);
    v5 = DWORD2(v15);
    if (LOBYTE(__p[0]) == 1)
    {
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[1]);
      }

      LOBYTE(__p[0]) = 0;
    }

    if (LOBYTE(v16[0]) == 1)
    {
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[1]);
      }

      LOBYTE(v16[0]) = 0;
    }

    if (SBYTE7(v15) < 0)
    {
      operator delete(v14[0]);
    }
  }

  v13 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v13 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v13 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_20;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_21;
  }

  v8 = xpc_null_create();
LABEL_20:
  v13 = v8;
LABEL_21:
  xpc_release(v7);
  v11 = xpc_int64_create(v5);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v14[0] = &v13;
  v14[1] = "kCTCellularPlanSimSubscriptionStatusKey";
  sub_10000F688(v14, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    v9 = xpc_null_create();
  }

  v14[0] = *(a1 + 32);
  v14[1] = "kCPSIMSubscriptionStatus";
  sub_100DAE90C(v14, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  xpc_release(v13);
}

void sub_10120B840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10120B894(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 64) = 0;
  }

  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    *(a1 + 32) = 0;
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10120B908(uint64_t a1, int a2)
{
  v3 = (a2 - 1);
  if (v3 < 4)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v6 = xpc_int64_create(v4);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  v5[0] = *(a1 + 32);
  v5[1] = "kCPProbeSIMConnectivityStatus";
  sub_10000F688(v5, &v6, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

void *sub_10120B994(void *a1)
{
  *a1 = off_101F1BEF8;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_10120B9EC(void *a1)
{
  *a1 = off_101F1BEF8;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void *sub_10120BAE8(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F1BEF8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10120BB40(void *a1)
{
  sub_100E48AD8(a1 + 8);

  operator delete(a1);
}

void sub_10120BB7C(uint64_t a1, xpc_object_t *a2)
{
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    return;
  }

  v28 = 0;
  *v26 = 0u;
  v27 = 0u;
  *v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  cellplan::read_rest_value(v22, a2, v4);
  v19 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v19 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v19 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    v7 = xpc_null_create();
LABEL_9:
    v19 = v7;
    goto LABEL_10;
  }

  xpc_retain(v6);
LABEL_10:
  xpc_release(v6);
  if (LOBYTE(v24[0]) == 1)
  {
    if (v25 >= 0)
    {
      v8 = &v24[1];
    }

    else
    {
      v8 = v24[1];
    }

    v17 = xpc_string_create(v8);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    v20 = 0uLL;
    v21 = 0;
    ctu::cf::assign();
    *__p = 0uLL;
    v14 = 0;
    v15 = &v19;
    v16 = __p;
    sub_10000F688(&v15, &v17, &object);
    xpc_release(object);
    object = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v17);
    v17 = 0;
  }

  if (LOBYTE(v26[0]) == 1)
  {
    if (v27 >= 0)
    {
      v9 = &v26[1];
    }

    else
    {
      v9 = v26[1];
    }

    v11 = xpc_string_create(v9);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v20 = 0uLL;
    v21 = 0;
    ctu::cf::assign();
    *__p = v20;
    v14 = v21;
    v10 = __p;
    if (v21 < 0)
    {
      v10 = v20;
    }

    v15 = &v19;
    v16 = v10;
    sub_10000F688(&v15, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v11);
    v11 = 0;
  }

  v15 = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v15 = xpc_null_create();
  }

  *&v20 = *(a1 + 8);
  *(&v20 + 1) = "kCPRemoteMobileEquipmentInfo";
  sub_100DAE90C(&v20, &v15, __p);
  xpc_release(__p[0]);
  __p[0] = 0;
  xpc_release(v15);
  v15 = 0;
  xpc_release(v19);
  if (LOBYTE(v26[0]) == 1)
  {
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[1]);
    }

    LOBYTE(v26[0]) = 0;
  }

  if (LOBYTE(v24[0]) == 1)
  {
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[1]);
    }

    LOBYTE(v24[0]) = 0;
  }

  if (SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_10120BEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17, uint64_t a18, xpc_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10120BF6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10120BFB8(void *a1)
{
  *a1 = off_101F1BF78;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10120C004(void *a1)
{
  *a1 = off_101F1BF78;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_10120C0DC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F1BF78;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10120C114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_10120C124(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_10120C164(uint64_t a1, BOOL *a2)
{
  v4 = xpc_BOOL_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kCPStandaloneOverrideSelectionResult";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t sub_10120C1E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10120C238(uint64_t a1, xpc_object_t *a2)
{
  if (xpc_get_type(*a2) != &_xpc_type_null)
  {
    *buf = 0;
    v13 = 0;
    v14 = 0;
    sub_10011D868(buf, a2);
    object = 0;
    v4 = xpc_dictionary_create(0, 0, 0);
    v5 = v4;
    if (v4)
    {
      object = v4;
    }

    else
    {
      v5 = xpc_null_create();
      object = v5;
      if (!v5)
      {
        v7 = xpc_null_create();
        v5 = 0;
        goto LABEL_11;
      }
    }

    if (xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      xpc_retain(v5);
LABEL_12:
      xpc_release(v5);
      sub_100927198(buf, &object);
      v9 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v9 = xpc_null_create();
      }

      v8[0] = *(a1 + 32);
      v8[1] = "kCPStandaloneCachedVinylInfoResult";
      sub_100DAE90C(v8, &v9, &v10);
      xpc_release(v10);
      v10 = 0;
      xpc_release(v9);
      v9 = 0;
      xpc_release(object);
      v8[0] = buf;
      sub_100112048(v8);
      return;
    }

    v7 = xpc_null_create();
LABEL_11:
    object = v7;
    goto LABEL_12;
  }

  sub_1000207B8();
  v6 = qword_101FC8DB0;
  if (os_log_type_enabled(qword_101FC8DB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N No vinyl info found", buf, 2u);
  }
}

void sub_10120C3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, char a15)
{
  xpc_release(object);
  a10 = &a15;
  sub_100112048(&a10);
  _Unwind_Resume(a1);
}

void sub_10120C414(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    v5 = xpc_BOOL_create(a2[1]);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    v7 = *(a1 + 32);
    v8 = "kCPStandaloneProfileResult";
    sub_10000F688(&v7, &v5, &v6);
    xpc_release(v6);
    v6 = 0;
    xpc_release(v5);
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    object = xpc_BOOL_create(0);
    if (!object)
    {
      object = xpc_null_create();
    }

    v7 = *(a1 + 32);
    v8 = "kCPStandaloneProfileResult";
    sub_10000F688(&v7, &object, &v10);
    xpc_release(v10);
    v10 = 0;
    xpc_release(object);
  }
}

void sub_10120C550(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = xpc_BOOL_create(0);
    if (!v3)
    {
      v3 = xpc_null_create();
    }

    v5 = *(a1 + 32);
    v6 = "kCPStandaloneProfileResult";
    sub_10000F688(&v5, &v3, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v3);
  }

  else
  {
    v7 = xpc_BOOL_create(1);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    v5 = *(a1 + 32);
    v6 = "kCPStandaloneProfileResult";
    sub_10000F688(&v5, &v7, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(v7);
  }
}

void sub_10120C65C(const std::string **a1@<X4>, void *a2@<X8>)
{
  v3 = *a1;
  size = SHIBYTE((*a1)->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    size = v3->__r_.__value_.__l.__size_;
    if (size)
    {
      v5 = v3->__r_.__value_.__r.__words[0];
LABEL_6:
      if (size >= 3)
      {
        v6 = v5 + size;
        v7 = v5;
        while (1)
        {
          v8 = memchr(v7, 58, size - 2);
          if (!v8)
          {
            goto LABEL_21;
          }

          if (*v8 == 12090 && v8[2] == 47)
          {
            break;
          }

          v7 = (v8 + 1);
          size = v6 - v7;
          if (v6 - v7 < 3)
          {
            goto LABEL_21;
          }
        }

        if (v8 != v6 && v8 - v5 != -1)
        {
          std::string::basic_string(&v12, v3, v8 - v5 + 3, 0xFFFFFFFFFFFFFFFFLL, &v13);
          v10 = *a1;
          if (SHIBYTE((*a1)->__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v10->__r_.__value_.__l.__data_);
          }

          v11 = *&v12.__r_.__value_.__l.__data_;
          v10->__r_.__value_.__r.__words[2] = v12.__r_.__value_.__r.__words[2];
          *&v10->__r_.__value_.__l.__data_ = v11;
        }
      }

LABEL_21:
      operator new();
    }
  }

  else if (*(&(*a1)->__r_.__value_.__s + 23))
  {
    v5 = *a1;
    goto LABEL_6;
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_10120CBCC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[7], v1, sub_101216E6C);
  __cxa_rethrow();
}

void sub_10120CBF4(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v2)
  {
    sub_100004A34(v2);
    if (!v1)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_7:
      dispatch_release(v3);
LABEL_4:
      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  sub_100004A34(v1);
  if (!v3)
  {
    goto LABEL_4;
  }

  goto LABEL_7;
}

const void **sub_10120CE24(uint64_t a1)
{
  if (*(a1 + 607) < 0)
  {
    **(a1 + 584) = 0;
    *(a1 + 592) = 0;
  }

  else
  {
    *(a1 + 584) = 0;
    *(a1 + 607) = 0;
  }

  *(a1 + 624) = *(a1 + 616);
  *(a1 + 648) = *(a1 + 640);
  if (*(a1 + 687) < 0)
  {
    **(a1 + 664) = 0;
    *(a1 + 672) = 0;
  }

  else
  {
    *(a1 + 664) = 0;
    *(a1 + 687) = 0;
  }

  *(a1 + 904) = *(a1 + 896);
  *(a1 + 928) = *(a1 + 920);
  sub_10120D30C((a1 + 944));
  *(a1 + 1288) = *(a1 + 1280);
  v2 = *(a1 + 1312);
  v3 = *(a1 + 1304);
  while (v2 != v3)
  {
    v2 -= 4;
    v8 = v2;
    sub_10110476C(&v8);
  }

  *(a1 + 1312) = v3;
  *(a1 + 1336) = *(a1 + 1328);
  *(a1 + 608) = 2;
  *(a1 + 161) = 0;
  v4 = *(a1 + 272);
  if (v4)
  {
    (*(*v4 + 48))(v4);
    v5 = *(a1 + 280);
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  *(a1 + 1356) = 0;
  *(a1 + 1368) = *(a1 + 1360);
  *(a1 + 1384) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  v8 = v6;
  return sub_100010250(&v8);
}

uint64_t sub_10120CF60(uint64_t a1)
{
  v2 = *(a1 + 1360);
  if (v2)
  {
    *(a1 + 1368) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1328);
  if (v3)
  {
    *(a1 + 1336) = v3;
    operator delete(v3);
  }

  v25 = (a1 + 1304);
  sub_101216B08(&v25);
  v4 = *(a1 + 1280);
  if (v4)
  {
    *(a1 + 1288) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 1256);
  if (v5)
  {
    *(a1 + 1264) = v5;
    operator delete(v5);
  }

  sub_100E3A5D4(a1 + 1040);
  v6 = *(a1 + 1016);
  if (v6)
  {
    *(a1 + 1024) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 992);
  if (v7)
  {
    *(a1 + 1000) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 968);
  if (v8)
  {
    *(a1 + 976) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 944);
  if (v9)
  {
    *(a1 + 952) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 920);
  if (v10)
  {
    *(a1 + 928) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 896);
  if (v11)
  {
    *(a1 + 904) = v11;
    operator delete(v11);
  }

  sub_101216BF8(a1 + 688);
  if (*(a1 + 687) < 0)
  {
    operator delete(*(a1 + 664));
  }

  v12 = *(a1 + 640);
  if (v12)
  {
    *(a1 + 648) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 616);
  if (v13)
  {
    *(a1 + 624) = v13;
    operator delete(v13);
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  v14 = *(a1 + 576);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(a1 + 544);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(a1 + 512);
  if (v16)
  {
    sub_100004A34(v16);
  }

  if (*(a1 + 464) == 1)
  {
    if (*(a1 + 495) < 0)
    {
      operator delete(*(a1 + 472));
    }

    *(a1 + 464) = 0;
  }

  if (*(a1 + 448) == 1)
  {
    *(a1 + 448) = 0;
  }

  if (*(a1 + 432) == 1)
  {
    *(a1 + 432) = 0;
  }

  if (*(a1 + 416) == 1)
  {
    *(a1 + 416) = 0;
  }

  if (*(a1 + 400) == 1)
  {
    *(a1 + 400) = 0;
  }

  if (*(a1 + 384) == 1)
  {
    *(a1 + 384) = 0;
  }

  if (*(a1 + 368) == 1)
  {
    *(a1 + 368) = 0;
  }

  if (*(a1 + 352) == 1)
  {
    *(a1 + 352) = 0;
  }

  if (*(a1 + 336) == 1)
  {
    *(a1 + 336) = 0;
  }

  if (*(a1 + 320) == 1)
  {
    *(a1 + 320) = 0;
  }

  if (*(a1 + 304) == 1)
  {
    *(a1 + 304) = 0;
  }

  if (*(a1 + 288) == 1)
  {
    *(a1 + 288) = 0;
  }

  v17 = *(a1 + 280);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(a1 + 264);
  if (v18)
  {
    _Block_release(v18);
  }

  v19 = *(a1 + 256);
  if (v19)
  {
    _Block_release(v19);
  }

  if (*(a1 + 248) == 1)
  {
    v25 = (a1 + 224);
    sub_100112120(&v25);
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v20 = *(a1 + 144);
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v21)
  {
    sub_1000DF0B0(a1 + 128, v21);
  }

  sub_10120D7E4((a1 + 120), 0);
  v22 = *(a1 + 112);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(a1 + 96);
  if (v23)
  {
    sub_100004A34(v23);
  }

  sub_10172A46C(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 72));
  sub_1000C0544((a1 + 40));
  return a1;
}

void sub_10120D238(uint64_t a1)
{
  sub_10120CF60(a1);

  operator delete();
}

void sub_10120D270(uint64_t a1, const char *a2)
{
  v5 = (a1 + 128);
  v4 = *(a1 + 128);
  if (v4)
  {
    goto LABEL_7;
  }

  sub_1000CE0A8(&v8);
  v4 = v8;
  v8 = 0;
  v6 = *(a1 + 128);
  *(a1 + 128) = v4;
  if (v6)
  {
    sub_1000DF0B0(v5, v6);
    v7 = v8;
    v8 = 0;
    if (v7)
    {
      sub_1000DF0B0(&v8, v7);
    }

    v4 = *v5;
  }

  if (v4)
  {
LABEL_7:
    sub_1009A2010(v4, a2);
  }
}

uint64_t sub_10120D30C(void *a1)
{
  a1[1] = *a1;
  a1[4] = a1[3];
  a1[7] = a1[6];
  a1[10] = a1[9];
  memset(v3, 0, 93);
  memset(&v3[6], 0, 112);
  v4 = 0;
  sub_100F11BEC((a1 + 12), v3);
  result = sub_100E3A5D4(v3);
  a1[40] = a1[39];
  return result;
}

void sub_10120D3C4(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  if ((*(a1 + 153) & 1) == 0)
  {
    v7 = *a3;
    *(a1 + 184) = a3[1];
    *(a1 + 168) = v7;
    std::string::operator=((a1 + 200), (a3 + 2));
    sub_1001148D8(a1 + 224, a3 + 56);
    if (!*(a1 + 104))
    {
      v12 = *a2;
      v11 = a2[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(a1 + 112);
      *(a1 + 104) = v12;
      *(a1 + 112) = v11;
      if (v13)
      {
        sub_100004A34(v13);
      }

      *(a1 + 152) = 0;
      (*(**(a1 + 88) + 40))(&v14);
      sub_10172A61C(a1, &v14);
      sub_100010250(&v14);
      std::operator+<char>();
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *(a1 + 8) = *buf;
      *(a1 + 24) = v16;
      operator new();
    }

    if ((*(a1 + 153) & 1) == 0 && *(a1 + 152) == 1)
    {
      v8 = *(a1 + 72);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sCardSerialNumberAsString();
        v9 = v16 >= 0 ? buf : *buf;
        *v17 = 136315138;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Resuming installation procedure for %s", v17, 0xCu);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(*buf);
        }
      }

      if (*(a1 + 136))
      {
        v10 = *(a1 + 144);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        if (v10)
        {
          sub_100004A34(v10);
        }
      }

      *(a1 + 152) = 0;
      sub_101216EAC(*(a1 + 120), buf, 1);
    }
  }
}

void sub_10120D744()
{
  (*(*v2 + 8))(v2);
  std::__shared_weak_count::__release_weak(v1);
  v3 = *(v0 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  operator delete();
}

uint64_t sub_10120D7C8(uint64_t a1)
{
  if (*(a1 + 153))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(a1 + 152);
  }

  return v1 & 1;
}

uint64_t *sub_10120D7E4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1000C030C((v2 + 32));
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10120D850(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [-] Install has been paused; will resume on trigger later", buf, 2u);
  }

  *(a1 + 152) = 1;
  return sub_10121D86C(*(a1 + 120), &v4, 1);
}

void sub_10120D8CC(uint64_t a1)
{
  if ((*(a1 + 153) & 1) == 0)
  {
    v2 = *(a1 + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Cancelling install procedure", buf, 2u);
    }

    v3 = *(a1 + 120);
    if (v3)
    {
      v4[0] = 1;
      v5 = 0;
      sub_10121DB14(v3, v4, 1);
    }

    else
    {
      sub_10120D974(a1, 1, 0, 0);
    }
  }
}

void sub_10120D974(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 153))
  {
    return;
  }

  v5 = *(a1 + 264);
  if (!v5)
  {
    return;
  }

  if (a2 > 4)
  {
    if ((a2 - 5) < 4)
    {
      v9 = *(a1 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 67109120;
        DWORD1(buf[0]) = a2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [X] Vinyl install operation failed: %d", buf, 8u);
        v5 = *(a1 + 264);
      }

      *(a1 + 153) = 1;
      sub_101216920(v5, a2, 0, a1 + 168);
      goto LABEL_35;
    }

    if (a2 != 9)
    {
      if (a2 == 10)
      {
        v10 = *(a1 + 72);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [X] Vinyl install operation succeeded", buf, 2u);
          v5 = *(a1 + 264);
        }

        *(a1 + 153) = 1;
        sub_101216920(v5, 0xAu, 0, a1 + 168);
      }

      goto LABEL_35;
    }

    goto LABEL_18;
  }

  if (a2 > 2)
  {
    v13 = *(a1 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [-] Install has been paused; will resume on trigger", buf, 2u);
      v5 = *(a1 + 264);
    }

    *(a1 + 152) = 1;
    LOBYTE(buf[0]) = 0;
    (*(v5 + 16))(v5, a2, 1, buf);
    if (LOBYTE(buf[0]) == 1)
    {
      if (v85[24] == 1)
      {
        v51 = v85;
        sub_100112120(&v51);
      }

      if (v84 < 0)
      {
        operator delete(v83);
      }
    }
  }

  else
  {
    if (!a2)
    {
LABEL_18:
      v11 = *(a1 + 72);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "";
        if (a4)
        {
          v12 = " [Force Receipts!]";
        }

        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [X] Vinyl install operation failed; giving up.%s", buf, 0xCu);
        v5 = *(a1 + 264);
      }

      *(a1 + 153) = 1;
      sub_101216A14(v5, a2, a4, a1 + 168);
      goto LABEL_35;
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        goto LABEL_35;
      }

      goto LABEL_18;
    }

    v14 = *(a1 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "";
      if (a4)
      {
        v15 = " [Force Receipts!]";
      }

      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [X] Vinyl install operation intentionally cancelled.%s", buf, 0xCu);
      v5 = *(a1 + 264);
    }

    *(a1 + 153) = 1;
    sub_101216A14(v5, 1u, a4, a1 + 168);
  }

LABEL_35:
  if (*(a1 + 160) == 1 && *(a1 + 153) != 1)
  {
    return;
  }

  v16 = CTStopwatch::sample((a1 + 504));
  if (*(a1 + 288) == 1)
  {
    if (v17)
    {
      *(a1 + 296) = v16;
    }

    else
    {
      *(a1 + 288) = 0;
    }
  }

  else if (v17)
  {
    *(a1 + 296) = v16;
    *(a1 + 288) = 1;
  }

  (*(**(a1 + 88) + 72))(buf);
  ServiceMap = Registry::getServiceMap(*&buf[0]);
  v19 = ServiceMap;
  if (v20 < 0)
  {
    v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(ServiceMap);
  v51 = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, &v51);
  if (v24)
  {
    v26 = v24[3];
    v25 = v24[4];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v19);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
      v27 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v19);
  v25 = 0;
  v27 = 1;
LABEL_51:
  *(a1 + 499) = (*(*v26 + 80))(v26);
  *(a1 + 498) = 1;
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (*(&buf[0] + 1))
  {
    sub_100004A34(*(&buf[0] + 1));
  }

  sub_100F6DC6C(*(a1 + 80), a2);
  (*(**(a1 + 88) + 72))(&v51);
  if (a2 == 4)
  {
    goto LABEL_136;
  }

  v28 = *(a1 + 80);
  v29 = Registry::getServiceMap(v51);
  v30 = v29;
  if (v31 < 0)
  {
    v32 = (v31 & 0x7FFFFFFFFFFFFFFFLL);
    v33 = 5381;
    do
    {
      v31 = v33;
      v34 = *v32++;
      v33 = (33 * v33) ^ v34;
    }

    while (v34);
  }

  std::mutex::lock(v29);
  *&buf[0] = v31;
  v35 = sub_100009510(&v30[1].__m_.__sig, buf);
  if (v35)
  {
    v37 = v35[3];
    v36 = v35[4];
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v30);
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v36);
      v38 = 0;
      if (!v37)
      {
        goto LABEL_62;
      }

LABEL_66:
      v81 = 0;
      v40 = xpc_dictionary_create(0, 0, 0);
      v41 = v40;
      if (v40)
      {
        v81 = v40;
      }

      else
      {
        v41 = xpc_null_create();
        v81 = v41;
        if (!v41)
        {
          v42 = xpc_null_create();
          v41 = 0;
          goto LABEL_73;
        }
      }

      if (xpc_get_type(v41) == &_xpc_type_dictionary)
      {
        xpc_retain(v41);
        goto LABEL_74;
      }

      v42 = xpc_null_create();
LABEL_73:
      v81 = v42;
LABEL_74:
      xpc_release(v41);
      v43 = sub_100F6D9A4(a2);
      v79 = xpc_int64_create(v43);
      if (!v79)
      {
        v79 = xpc_null_create();
      }

      *&buf[0] = &v81;
      *(&buf[0] + 1) = "result";
      sub_10000F688(buf, &v79, &v80);
      xpc_release(v80);
      v80 = 0;
      xpc_release(v79);
      v79 = 0;
      v77 = xpc_int64_create(v28);
      if (!v77)
      {
        v77 = xpc_null_create();
      }

      *&buf[0] = &v81;
      *(&buf[0] + 1) = "sid";
      sub_10000F688(buf, &v77, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v77);
      v77 = 0;
      v75 = xpc_int64_create(a3);
      if (!v75)
      {
        v75 = xpc_null_create();
      }

      *&buf[0] = &v81;
      *(&buf[0] + 1) = "sub_result";
      sub_10000F688(buf, &v75, &v76);
      xpc_release(v76);
      v76 = 0;
      xpc_release(v75);
      v75 = 0;
      v44 = *(a1 + 568);
      if (*(v44 + 23) < 0)
      {
        if (!v44[1])
        {
LABEL_88:
          if (*(a1 + 352) == 1)
          {
            v71 = xpc_int64_create(*(a1 + 360));
            if (!v71)
            {
              v71 = xpc_null_create();
            }

            *&buf[0] = &v81;
            *(&buf[0] + 1) = "time_get_euicc_challenge_ms";
            sub_10000F688(buf, &v71, &v72);
            xpc_release(v72);
            v72 = 0;
            xpc_release(v71);
            v71 = 0;
          }

          if (*(a1 + 368) == 1)
          {
            v69 = xpc_int64_create(*(a1 + 376));
            if (!v69)
            {
              v69 = xpc_null_create();
            }

            *&buf[0] = &v81;
            *(&buf[0] + 1) = "time_init_auth_ms";
            sub_10000F688(buf, &v69, &v70);
            xpc_release(v70);
            v70 = 0;
            xpc_release(v69);
            v69 = 0;
          }

          if (*(a1 + 384) == 1)
          {
            v67 = xpc_int64_create(*(a1 + 392));
            if (!v67)
            {
              v67 = xpc_null_create();
            }

            *&buf[0] = &v81;
            *(&buf[0] + 1) = "time_auth_server_ms";
            sub_10000F688(buf, &v67, &v68);
            xpc_release(v68);
            v68 = 0;
            xpc_release(v67);
            v67 = 0;
          }

          if (*(a1 + 400) == 1)
          {
            v65 = xpc_int64_create(*(a1 + 408));
            if (!v65)
            {
              v65 = xpc_null_create();
            }

            *&buf[0] = &v81;
            *(&buf[0] + 1) = "time_auth_client_ms";
            sub_10000F688(buf, &v65, &v66);
            xpc_release(v66);
            v66 = 0;
            xpc_release(v65);
            v65 = 0;
          }

          if (*(a1 + 416) == 1)
          {
            v63 = xpc_int64_create(*(a1 + 424));
            if (!v63)
            {
              v63 = xpc_null_create();
            }

            *&buf[0] = &v81;
            *(&buf[0] + 1) = "time_prepare_download_ms";
            sub_10000F688(buf, &v63, &v64);
            xpc_release(v64);
            v64 = 0;
            xpc_release(v63);
            v63 = 0;
          }

          if (*(a1 + 464) == 1)
          {
            v45 = (a1 + 472);
            if (*(a1 + 495) < 0)
            {
              v45 = *v45;
            }

            v61 = xpc_string_create(v45);
            if (!v61)
            {
              v61 = xpc_null_create();
            }

            *&buf[0] = &v81;
            *(&buf[0] + 1) = "carrier_name";
            sub_10000F688(buf, &v61, &v62);
            xpc_release(v62);
            v62 = 0;
            xpc_release(v61);
            v61 = 0;
          }

          if (*(a1 + 496) == 1)
          {
            v46 = asString();
            v59 = xpc_string_create(v46);
            if (!v59)
            {
              v59 = xpc_null_create();
            }

            *&buf[0] = &v81;
            *(&buf[0] + 1) = "proposal_modified";
            sub_10000F688(buf, &v59, &v60);
            xpc_release(v60);
            v60 = 0;
            xpc_release(v59);
            v59 = 0;
          }

          if (*(a1 + 498) == 1)
          {
            v57 = xpc_BOOL_create(*(a1 + 499));
            if (!v57)
            {
              v57 = xpc_null_create();
            }

            *&buf[0] = &v81;
            *(&buf[0] + 1) = "is_green_tea_capable";
            sub_10000F688(buf, &v57, &v58);
            xpc_release(v58);
            v58 = 0;
            xpc_release(v57);
            v57 = 0;
          }

          if (*(a1 + 500) == 1)
          {
            v47 = asString();
            v55 = xpc_string_create(v47);
            if (!v55)
            {
              v55 = xpc_null_create();
            }

            *&buf[0] = &v81;
            *(&buf[0] + 1) = "modified_proposal_acceptance";
            sub_10000F688(buf, &v55, &v56);
            xpc_release(v56);
            v56 = 0;
            xpc_release(v55);
            v55 = 0;
          }

          if (*(*(a1 + 568) + 211) == 1)
          {
            v48 = asString();
            v53 = xpc_string_create(v48);
            if (!v53)
            {
              v53 = xpc_null_create();
            }

            *&buf[0] = &v81;
            *(&buf[0] + 1) = "reason_code";
            sub_10000F688(buf, &v53, &v54);
            xpc_release(v54);
            v54 = 0;
            xpc_release(v53);
            v53 = 0;
          }

          *&buf[0] = v81;
          if (v81)
          {
            xpc_retain(v81);
          }

          else
          {
            *&buf[0] = xpc_null_create();
          }

          (*(*v37 + 16))(v37, "commCenterVinylInstallDetails", buf);
          xpc_release(*&buf[0]);
          *&buf[0] = 0;
          xpc_release(v81);
          goto LABEL_134;
        }

        v44 = *v44;
      }

      else if (!*(v44 + 23))
      {
        goto LABEL_88;
      }

      v73 = xpc_string_create(v44);
      if (!v73)
      {
        v73 = xpc_null_create();
      }

      *&buf[0] = &v81;
      *(&buf[0] + 1) = "server";
      sub_10000F688(buf, &v73, &v74);
      xpc_release(v74);
      v74 = 0;
      xpc_release(v73);
      v73 = 0;
      goto LABEL_88;
    }
  }

  else
  {
    v37 = 0;
  }

  std::mutex::unlock(v30);
  v36 = 0;
  v38 = 1;
  if (v37)
  {
    goto LABEL_66;
  }

LABEL_62:
  v39 = *(a1 + 72);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to get analytics interface for MMS Send End.", buf, 2u);
  }

LABEL_134:
  if ((v38 & 1) == 0)
  {
    sub_100004A34(v36);
  }

LABEL_136:
  if (v52)
  {
    sub_100004A34(v52);
  }

  if (*(a1 + 153))
  {
    v49 = *(a1 + 264);
    *(a1 + 264) = 0;
    if (v49)
    {
      _Block_release(v49);
    }

    v50 = *(a1 + 256);
    *(a1 + 256) = 0;
    if (v50)
    {
      _Block_release(v50);
    }

    sub_10120CE24(a1);
  }
}

void sub_10120E58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10120E730(uint64_t a1)
{
  if ((*(a1 + 153) & 1) == 0)
  {
    v2 = *(a1 + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Cancelling install procedure with failure", buf, 2u);
    }

    v3 = *(a1 + 120);
    if (v3)
    {
      v4[0] = 0;
      v5 = 0;
      sub_10121DB14(v3, v4, 1);
    }

    else
    {
      sub_10120D974(a1, 0, 0, 0);
    }
  }
}

uint64_t sub_10120E7D4(uint64_t a1)
{
  if ((*(a1 + 153) & 1) == 0 && (*(a1 + 152) & 1) == 0)
  {
    return sub_10120D850(a1);
  }

  return a1;
}

uint64_t sub_10120E7EC(uint64_t a1)
{
  if (*(a1 + 153))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(a1 + 154);
  }

  return v1 & 1;
}

void sub_10120E808(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [?] User Consent Response: %s", &v9, 0xCu);
  }

  *(a1 + 163) = a2;
  *(a1 + 162) = 1;
  if (a2 == 2)
  {
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v6 = "#I [?] User Cancelled";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 2u);
    }
  }

  else
  {
    if (a2)
    {
      return;
    }

    if (*(a1 + 1132) == 1)
    {
      v5 = *(a1 + 72);
      goto LABEL_12;
    }

    v5 = *(a1 + 72);
    if (*(a1 + 1131) == 1)
    {
LABEL_12:
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      v7 = 0;
      if (v8)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [?] PPR User Rejected", &v9, 2u);
        v7 = 0;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v6 = "#I [?] General Consent Rejected";
      goto LABEL_9;
    }
  }

  v7 = 1;
LABEL_14:
  *(a1 + 608) = v7;
}

void sub_10120E9A4(uint64_t a1)
{
  if (*(a1 + 153))
  {
    v2 = "done";
  }

  else if (*(a1 + 152))
  {
    v2 = "paused";
  }

  else
  {
    v2 = "running";
  }

  v3 = *(a1 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 584);
    if (*(a1 + 607) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 568);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      v6 = *v5;
    }

    v7 = v5 + 6;
    if (*(v5 + 71) < 0)
    {
      v7 = *v7;
    }

    if (v5[18])
    {
      v8 = "";
    }

    else
    {
      v8 = (v5 + 9);
      if (*(v5 + 95) < 0)
      {
        v8 = *v8;
      }
    }

    v9 = v5[13] - v5[12];
    v10 = *(v5 + 146);
    v11 = *(v5 + 147);
    if (*(a1 + 162) == 1)
    {
      v12 = asString();
      v5 = *(a1 + 568);
    }

    else
    {
      v12 = "";
    }

    v13 = v5 + 27;
    if (*(v5 + 239) < 0)
    {
      v13 = *v13;
    }

    v14 = v5 + 30;
    if (*(v5 + 263) < 0)
    {
      v14 = *v14;
    }

    v15 = 136317698;
    v16 = v2;
    v17 = 2080;
    v18 = v4;
    v19 = 2080;
    v20 = v6;
    v21 = 2080;
    v22 = v7;
    v23 = 2080;
    v24 = v8;
    v25 = 2048;
    v26 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    v27 = 1024;
    v28 = v10;
    v29 = 1024;
    v30 = v11;
    v31 = 2080;
    v32 = v12;
    v33 = 2080;
    v34 = v13;
    v35 = 2080;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I TapeInstallOperation: {\n\t\t\tstate: %s\n\t\t\ttransactionId: [%s]\n\t\t\tsmdpserver: [%s]\n\t\t\tmatchingId: [%s]\n\t\t\tconfirmationCode: [%s]\n\t\t\t%lu iccid prefixes\n\t\t\tforceUserConsent: [%d]\n\t\t\tneedEligibilityCheck: [%d]\n\t\t\tuserConsent: [%s]\n\t\t\tInstallReplaceType: [%s]\n\t\t\tIccidToDelete: [%s]\n\t\t\t}", &v15, 0x68u);
  }
}

uint64_t sub_10120EBA8(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = *(a1 + 648);
  v5 = *(a1 + 640);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    return 4;
  }

  v10 = v5[2];
  if (v10 == -127)
  {
    v11 = v5[3];
    v12 = 4;
  }

  else
  {
    if (v10 < 0)
    {
      return 6;
    }

    v12 = 3;
    v11 = v5[2];
  }

  if (v6 <= v12)
  {
    return 3;
  }

  v14 = *(a1 + 648);
  v15 = v12;
  while (1)
  {
    v16 = v12 + 1;
    v17 = v5[v12 + 1];
    v18 = v12 + 2;
    if ((v5[v15] & 0x1F) == a2)
    {
      break;
    }

    v15 = (v18 + v17);
    v12 = v18 + v17;
    if (v6 <= v15)
    {
      return 3;
    }
  }

  v19 = &v5[v18];
  if (v4 <= v19)
  {
    return 5;
  }

  v20 = a4 - a3;
  if (a4 == a3)
  {
    goto LABEL_23;
  }

  if (v4 - v19 >= v20)
  {
    v21 = &v4[-v20 + 1];
    if (v21 != v19)
    {
      while (*v19 != *a3)
      {
LABEL_20:
        if (++v19 == v21)
        {
          goto LABEL_24;
        }
      }

      v22 = v19 + 1;
      v23 = a3 + 1;
      while (v23 != a4)
      {
        v25 = *v22++;
        v24 = v25;
        v26 = *v23++;
        if (v24 != v26)
        {
          goto LABEL_20;
        }
      }

LABEL_23:
      v14 = v19;
    }
  }

LABEL_24:
  if (v4 == v14)
  {
    return 5;
  }

  *(a1 + 1356) = 1;
  v38 = *(a1 + 72);
  v39 = a4 - a3;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v41 = v18;
    v42 = 2048;
    v43 = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Updating EuiccInfo1 : %d : %lu", buf, 0x12u);
    v5 = *(a1 + 640);
  }

  v27 = v39;
  if (a4 != a3)
  {
    v28 = *(a1 + 648);
    v29 = v28 - &v14[v39];
    if (v28 != &v14[v39])
    {
      memmove(v14, &v14[v39], v28 - &v14[v39]);
      v27 = v39;
      v5 = *(a1 + 640);
    }

    *(a1 + 648) = &v14[v29];
  }

  v5[v16] = v17 - v27;
  v30 = v11 - v27;
  v31 = *(a1 + 640);
  if (v10 == -127)
  {
    *(v31 + 3) = v30;
    v32 = *(a1 + 640);
    v34 = *(v32 + 3);
    v33 = (v32 + 3);
    if ((v34 & 0x80000000) == 0)
    {
      v35 = *(a1 + 640) + 2;
      v36 = *(a1 + 648);
      v37 = v36 - v33;
      if (v36 != v33)
      {
        memmove((*(a1 + 640) + 2), v33, v36 - v33);
      }

      *(a1 + 648) = v35 + v37;
    }
  }

  else
  {
    *(v31 + 2) = v30;
  }

  if (*(*(a1 + 640) + v16))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_10120EE40(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = CTStopwatch::stop((v5 + 536));
        if (*(v5 + 304) == 1)
        {
          if (v9)
          {
            *(v5 + 312) = v8;
          }

          else
          {
            *(v5 + 304) = 0;
          }
        }

        else if (v9)
        {
          *(v5 + 312) = v8;
          *(v5 + 304) = 1;
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1174405120;
        v15[2] = sub_10120F000;
        v15[3] = &unk_101F1C170;
        v15[4] = v5;
        sub_100F11DD4(v16, a2);
        v10 = *(v5 + 48);
        if (!v10 || (v11 = *(v5 + 40), (v12 = std::__shared_weak_count::lock(v10)) == 0))
        {
          sub_100013CC4();
        }

        v13 = v12;
        v14 = *(v5 + 56);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v11;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v15;
        dispatch_async(v14, block);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_100004A34(v13);
        if (v16[0] == 1)
        {
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }
        }

        v16[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10120F000(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56) - *(a1 + 48);
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [1a] Responded with %lu bytes", buf, 0xCu);
      v6 = *(a1 + 40);
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v44 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v44);
        }

        v47 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v47);
      }
    }

    sub_10120D270(v2, "TapeInfo1Rsp");
    v7 = *(a1 + 40);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v41 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v41);
      }

      v45 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v45);
    }

    if (v2 + 640 != a1 + 48)
    {
      sub_1001122C4((v2 + 640), *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
    }

    memset(buf, 0, sizeof(buf));
    __p = 0;
    v52 = 0;
    v53 = 0;
    if ((*(v2 + 1352) - 1) <= 1 && !sub_1010FCA74((v2 + 640), buf, &__p))
    {
      *(v2 + 1356) = 0;
      v30 = *(v2 + 1352);
      v49 = 0;
      v50 = 0;
      v48 = 0;
      v31 = v30 == 2;
      if (v30 == 2)
      {
        v32 = &qword_101FC8E98;
      }

      else
      {
        v32 = &qword_101FC8EB0;
      }

      v33 = *v32;
      v34 = &qword_101FC8EA0;
      if (!v31)
      {
        v34 = &qword_101FC8EB8;
      }

      sub_100034C50(&v48, v33, *v34, *v34 - v33);
      v35 = sub_10120EBA8(v2, 9, v48, v49);
      v36 = sub_10120EBA8(v2, 10, v48, v49);
      if (v35 == 2 && v36 == 2)
      {
        v37 = *(v2 + 72);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I [1a] Empty PKID List; Aborting", v54, 2u);
        }

        *(v2 + 496) = 513;
        v38 = *(v2 + 120);
        v54[0] = 9;
        *&v54[4] = 24;
        sub_10121DB14(v38, v54, 1);
      }

      else
      {
        if (*(v2 + 1356) != 1 || !sub_1010FCA74((v2 + 640), buf, &__p))
        {
          *(v2 + 496) = 1;
          if (v48)
          {
            v49 = v48;
            operator delete(v48);
          }

          goto LABEL_39;
        }

        v39 = *(v2 + 72);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I [1a] Invalid EuiccInfo1; Aborting", v54, 2u);
        }

        *(v2 + 496) = 769;
        v40 = *(v2 + 120);
        v54[0] = 9;
        *&v54[4] = 0;
        sub_10121DB14(v40, v54, 1);
      }

      if (v48)
      {
        v49 = v48;
        operator delete(v48);
      }

      goto LABEL_40;
    }

    (*(**(v2 + 88) + 72))(&v48);
    ServiceMap = Registry::getServiceMap(v48);
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
    *v54 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v54);
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
        goto LABEL_28;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_28:
    v28 = (*(*v16 + 80))(v16);
    if (v28)
    {
      v29 = capabilities::ct::supportsRegulatoryRestriction(v28);
      if ((v17 & 1) == 0)
      {
        sub_100004A34(v15);
      }

      if (v49)
      {
        sub_100004A34(v49);
      }

      if (v29)
      {
        *(v2 + 496) = 257;
      }
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        sub_100004A34(v15);
      }

      if (v49)
      {
        sub_100004A34(v49);
      }
    }

LABEL_39:
    std::string::operator=((v2 + 664), *(v2 + 568));
    sub_10121E78C(*(v2 + 120), &v48, 1);
LABEL_40:
    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    return;
  }

  if (*(a1 + 48) == 3 && (v18 = *(v2 + 156), v18 <= 2))
  {
    *(v2 + 156) = v18 + 1;
    v19 = *(v2 + 72);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = asString();
      v21 = *(v2 + 156);
      *buf = 136315394;
      *&buf[4] = v20;
      *&buf[12] = 1024;
      *&buf[14] = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [1a] Failed with temporary error %s; paused (will be retry #%d)", buf, 0x12u);
    }

    sub_10120D850(v2);
  }

  else
  {
    v22 = *(v2 + 72);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[1a] Failed with final error %s; Aborting", buf, 0xCu);
    }

    v23 = *(v2 + 120);
    buf[0] = 0;
    *&buf[4] = 0;
    sub_10121DB14(v23, buf, 1);
    v24 = *(a1 + 40);
    if (v24 != 2)
    {
      if (v24 == 1)
      {
        v42 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(v42);
      }

      v46 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v46);
    }

    if (*(a1 + 48) == 2)
    {
      v25 = *(v2 + 80);
      v26 = *(a1 + 49);
      v27 = *(a1 + 50);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_100F6E440;
      v56 = &unk_101EF6088;
      v57 = v25;
      v58 = 4;
      v59 = v26;
      v60 = v27;
      sub_100F6E294(0x800F1);
    }
  }
}

void sub_10120F744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10120F804(uint64_t result, uint64_t a2)
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

void sub_10120F820(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10120F830(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = CTStopwatch::stop((v5 + 536));
        if (*(v5 + 320) == 1)
        {
          if (v9)
          {
            *(v5 + 328) = v8;
          }

          else
          {
            *(v5 + 320) = 0;
          }
        }

        else if (v9)
        {
          *(v5 + 328) = v8;
          *(v5 + 320) = 1;
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1174405120;
        v15[2] = sub_10120F9F0;
        v15[3] = &unk_101F1C1D0;
        v15[4] = v5;
        sub_100F11DD4(v16, a2);
        v10 = *(v5 + 48);
        if (!v10 || (v11 = *(v5 + 40), (v12 = std::__shared_weak_count::lock(v10)) == 0))
        {
          sub_100013CC4();
        }

        v13 = v12;
        v14 = *(v5 + 56);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v11;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v15;
        dispatch_async(v14, block);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_100004A34(v13);
        if (v16[0] == 1)
        {
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }
        }

        v16[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10120F9F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    if (*(a1 + 48) == 3 && (v13 = *(v2 + 156), v13 <= 2))
    {
      *(v2 + 156) = v13 + 1;
      v14 = *(v2 + 72);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = asString();
        v16 = *(v2 + 156);
        *v30 = 136315394;
        *&v30[4] = v15;
        *&v30[12] = 1024;
        *&v30[14] = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [1b] Temporary error %s; paused (will be retry #%d)", v30, 0x12u);
      }

      return sub_10120D850(v2);
    }

    else
    {
      v17 = *(v2 + 72);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v30 = 136315138;
        *&v30[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[1b] Final error %s; Aborting", v30, 0xCu);
      }

      v18 = *(v2 + 120);
      v30[0] = 0;
      *&v30[4] = 0;
      result = sub_10121DB14(v18, v30, 1);
      v19 = *(a1 + 40);
      if (v19 != 2)
      {
        if (v19 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v28 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v28);
      }

      if (*(a1 + 48) == 2)
      {
        v20 = *(v2 + 80);
        v21 = *(a1 + 49);
        v22 = *(a1 + 50);
        *v30 = _NSConcreteStackBlock;
        *&v30[8] = 0x40000000;
        *&v30[16] = sub_100F6E440;
        v31 = &unk_101EF6088;
        v32 = v20;
        v33 = 20;
        v34 = v21;
        v35 = v22;
        return sub_100F6E294(0x800F1);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v25);
    }

    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56) - *(a1 + 48);
      *v30 = 134217984;
      *&v30[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [1b] Responded with %lu bytes", v30, 0xCu);
      v6 = *(a1 + 40);
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v26 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v26);
        }

        v29 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v29);
      }
    }

    sub_10120D270(v2, "TapeRulesAuthTable");
    v7 = *(a1 + 40);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v23);
      }

      v27 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v27);
    }

    v8 = sub_1010FBAE4((a1 + 48));
    v9 = v8;
    if (v8)
    {
      v10 = *(v2 + 72);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sub_1010F59E4(v9);
        *v30 = 136315138;
        *&v30[4] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [1b] Failed, PPRs will be disallowed (%s)", v30, 0xCu);
      }
    }

    return sub_10121EAF4(*(v2 + 120), v30, 1);
  }

  return result;
}

void sub_10120FE7C(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = CTStopwatch::stop((v5 + 536));
        if (*(v5 + 336) == 1)
        {
          if (v9)
          {
            *(v5 + 344) = v8;
          }

          else
          {
            *(v5 + 336) = 0;
          }
        }

        else if (v9)
        {
          *(v5 + 344) = v8;
          *(v5 + 336) = 1;
        }

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 1174405120;
        v16[2] = sub_101210064;
        v16[3] = &unk_101F1C230;
        v16[4] = v5;
        memset(&v16[5], 0, 34);
        v10 = *a2;
        if (v10 == 2)
        {
          LOBYTE(v16[5]) = 2;
          *(&v16[5] + 1) = *(a2 + 1);
          BYTE3(v16[5]) = a2[3];
        }

        else if (v10 == 1)
        {
          LOBYTE(v16[5]) = 1;
          *(&v16[5] + 1) = *(a2 + 1);
          *(&v16[7] + 1) = *(a2 + 17);
          BYTE1(v16[9]) = a2[33];
        }

        v11 = *(v5 + 48);
        if (!v11 || (v12 = *(v5 + 40), (v13 = std::__shared_weak_count::lock(v11)) == 0))
        {
          sub_100013CC4();
        }

        v14 = v13;
        v15 = *(v5 + 56);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v12;
        v18 = v14;
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v16;
        dispatch_async(v15, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v14);
        LOBYTE(v16[5]) = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_101210064(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v3 = *(a1 + 41);
    v4 = *(a1 + 57);
    *(v1 + 888) = *(a1 + 73);
    *(v1 + 856) = v3;
    *(v1 + 872) = v4;
    *(v1 + 874) = 0;
    *(v1 + 878) = 0;
    if ((*(**(v1 + 88) + 88))(*(v1 + 88)))
    {
      v5 = *(v1 + 72);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [1c] Remove 5G Capabilities", buf, 2u);
      }

      *(v1 + 888) = 0;
      *(v1 + 880) = 0;
    }

    (*(**(v1 + 88) + 72))(buf);
    ServiceMap = Registry::getServiceMap(*buf);
    v7 = ServiceMap;
    if (v8 < 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, __p);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_23:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v14)
        {
          (*(*v14 + 64))(__p, v14);
          ctu::parse_hex();
          v23 = *(v1 + 832);
          if (v23)
          {
            *(v1 + 840) = v23;
            operator delete(v23);
            *(v1 + 832) = 0;
            *(v1 + 840) = 0;
            *(v1 + 848) = 0;
          }

          *(v1 + 832) = *buf;
          *(v1 + 848) = *&buf[16];
          memset(buf, 0, sizeof(buf));
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        return sub_10121EE20(*(v1 + 120), buf, 1);
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_23;
  }

  if (*(a1 + 41) == 3 && (v16 = *(v1 + 156), v16 <= 2))
  {
    *(v1 + 156) = v16 + 1;
    v17 = *(v1 + 72);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = asString();
      v19 = *(v1 + 156);
      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 1024;
      *&buf[14] = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [1c] Temporary error %s; paused (will be retry #%d)", buf, 0x12u);
    }

    return sub_10120D850(v1);
  }

  else
  {
    v21 = *(v1 + 72);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[1c] Final error %s; Aborting", buf, 0xCu);
    }

    v22 = *(v1 + 120);
    buf[0] = 0;
    *&buf[4] = 0;
    return sub_10121DB14(v22, buf, 1);
  }
}

uint64_t sub_101210474(uint64_t result, uint64_t a2)
{
  *(result + 72) = 0;
  *(result + 56) = 0u;
  *(result + 40) = 0u;
  v2 = *(a2 + 40);
  if (v2 == 2)
  {
    *(result + 40) = 2;
    v5 = *(a2 + 41);
    *(result + 43) = *(a2 + 43);
    *(result + 41) = v5;
  }

  else if (v2 == 1)
  {
    *(result + 40) = 1;
    v3 = *(a2 + 41);
    v4 = *(a2 + 57);
    *(result + 73) = *(a2 + 73);
    *(result + 57) = v4;
    *(result + 41) = v3;
  }

  return result;
}

void sub_1012104D8(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = CTStopwatch::stop((v5 + 536));
        if (*(v5 + 352) == 1)
        {
          if (v9)
          {
            *(v5 + 360) = v8;
          }

          else
          {
            *(v5 + 352) = 0;
          }
        }

        else if (v9)
        {
          *(v5 + 360) = v8;
          *(v5 + 352) = 1;
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1174405120;
        v15[2] = sub_101210698;
        v15[3] = &unk_101F1C290;
        v15[4] = v5;
        sub_100F11DD4(v16, a2);
        v10 = *(v5 + 48);
        if (!v10 || (v11 = *(v5 + 40), (v12 = std::__shared_weak_count::lock(v10)) == 0))
        {
          sub_100013CC4();
        }

        v13 = v12;
        v14 = *(v5 + 56);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v11;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v15;
        dispatch_async(v14, block);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_100004A34(v13);
        if (v16[0] == 1)
        {
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }
        }

        v16[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_101210698(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    if (*(a1 + 48) == 3 && (v12 = *(v2 + 156), v12 <= 2))
    {
      *(v2 + 156) = v12 + 1;
      v13 = *(v2 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        v15 = *(v2 + 156);
        *v30 = 136315394;
        *&v30[4] = v14;
        *&v30[12] = 1024;
        *&v30[14] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [2] Failed with temporary error %s; paused (will be retry #%d)", v30, 0x12u);
      }

      return sub_10120D850(v2);
    }

    else
    {
      v16 = *(v2 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v30 = 136315138;
        *&v30[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[2] Failed with final error %s; aborting", v30, 0xCu);
      }

      v17 = *(v2 + 120);
      v30[0] = 0;
      *&v30[4] = 0;
      result = sub_10121DB14(v17, v30, 1);
      v18 = *(a1 + 40);
      if (v18 != 2)
      {
        if (v18 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v28 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v28);
      }

      if (*(a1 + 48) == 2)
      {
        v19 = *(v2 + 80);
        v20 = *(a1 + 49);
        v21 = *(a1 + 50);
        *v30 = _NSConcreteStackBlock;
        *&v30[8] = 0x40000000;
        *&v30[16] = sub_100F6E440;
        v31 = &unk_101EF6088;
        v32 = v19;
        v33 = 3;
        v34 = v20;
        v35 = v21;
        return sub_100F6E294(0x800F1);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v25);
    }

    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56) - *(a1 + 48);
      *v30 = 134217984;
      *&v30[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [2] Responded with %lu bytes", v30, 0xCu);
      v6 = *(a1 + 40);
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v26 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v26);
        }

        v29 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v29);
      }
    }

    sub_10120D270(v2, "TapeChallengeRsp");
    v7 = *(a1 + 40);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v23);
      }

      v27 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v27);
    }

    v8 = sub_1010FD110((a1 + 48), (v2 + 616));
    if (v8)
    {
      v9 = *(v2 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_1010F59E4(v8);
        *v30 = 136315138;
        *&v30[4] = v22;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[2] Failed; Aborting (%s)", v30, 0xCu);
      }

      v10 = *(v2 + 120);
      v30[0] = 0;
      *&v30[4] = v8;
      return sub_10121DB14(v10, v30, 1);
    }

    else
    {
      return sub_10121F14C(*(v2 + 120), v30, 1);
    }
  }

  return result;
}

void sub_101210B44(void *a1, void *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_36:
        sub_100004A34(v7);
        return;
      }

      v8 = CTStopwatch::stop((v5 + 536));
      if (*(v5 + 368) == 1)
      {
        if (v9)
        {
          *(v5 + 376) = v8;
        }

        else
        {
          *(v5 + 368) = 0;
        }
      }

      else if (v9)
      {
        *(v5 + 376) = v8;
        *(v5 + 368) = 1;
      }

      __p = 0;
      v38 = 0;
      v39 = 0;
      v10 = sub_10172AA80(v5, (v5 + 72), a2, 200, 0, &__p);
      v11 = v10;
      if (v10 != 10)
      {
        v16 = *(v5 + 120);
        v17 = (*(**a2 + 32))();
        buf[0] = v11;
        LODWORD(v41) = v17;
        sub_10121DB14(v16, buf, 1);
        goto LABEL_34;
      }

      sub_10120D270(v5, "TapeInitAuthRsp");
      v12 = (v5 + 688);
      v13 = sub_1010F6738(&__p, v5 + 584, v5 + 688);
      if (v13)
      {
        v14 = *(v5 + 72);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v33 = sub_1010F59C0(v13);
          *buf = 136315138;
          v41 = v33;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[3] Failure (%s); Aborting", buf, 0xCu);
        }

        if (*(v5 + 1356) == 1 && (v13 & 0xFD) == 0x18)
        {
          *(v5 + 500) = 513;
          v15 = *(v5 + 120);
          buf[0] = 9;
          LODWORD(v41) = v13;
          sub_10121DB14(v15, buf, 1);
        }

        else
        {
          *(v5 + 500) = 1;
          v27 = *(v5 + 120);
          buf[0] = 0;
          LODWORD(v41) = v13;
          sub_10121DB14(v27, buf, 1);
        }

        goto LABEL_34;
      }

      v18 = *(v5 + 568);
      v19 = v18[23];
      if (v19 >= 0)
      {
        v20 = *(v18 + 23);
      }

      else
      {
        v20 = *(v18 + 1);
      }

      v21 = *(v5 + 711);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v5 + 696);
      }

      if (v20 != v21 || (v19 >= 0 ? (v23 = *(v5 + 568)) : (v23 = *v18), v22 >= 0 ? (v24 = (v5 + 688)) : (v24 = *v12), memcmp(v23, v24, v20)))
      {
        v25 = *(v5 + 72);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          if (v19 < 0)
          {
            v18 = *v18;
          }

          if (v22 < 0)
          {
            v12 = *v12;
          }

          *buf = 136315394;
          v41 = v18;
          v42 = 2080;
          v43 = v12;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[3] Failure Server Mismatch (%s) - [%s]; Aborting", buf, 0x16u);
        }

        *(v5 + 500) = 513;
        v26 = *(v5 + 120);
        buf[0] = 0;
        LODWORD(v41) = 0;
        sub_10121DB14(v26, buf, 1);
        goto LABEL_34;
      }

      v28 = *(v5 + 1352);
      if (v28 == 1)
      {
        v34 = *(v5 + 760);
        v35 = *(v5 + 768) - v34;
        if (v35 == qword_101FC8EB8 - qword_101FC8EB0 && !memcmp(v34, qword_101FC8EB0, v35))
        {
          v36 = *(v5 + 72);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "[3] CTTL PKID detected from Server; Aborting", buf, 2u);
          }

          goto LABEL_44;
        }
      }

      else if (v28 == 2)
      {
        v29 = *(v5 + 760);
        v30 = *(v5 + 768) - v29;
        if (v30 == qword_101FC8EA0 - qword_101FC8E98 && !memcmp(v29, qword_101FC8E98, v30))
        {
          v31 = *(v5 + 72);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[3] GSMA PKID detected from Server; Aborting", buf, 2u);
          }

LABEL_44:
          *(v5 + 500) = 769;
          v32 = *(v5 + 120);
          buf[0] = 9;
          LODWORD(v41) = 24;
          sub_10121DB14(v32, buf, 1);
          goto LABEL_34;
        }
      }

      *(v5 + 500) = 257;
      sub_10121F4FC(*(v5 + 120), buf, 1);
LABEL_34:
      if (__p)
      {
        v38 = __p;
        operator delete(__p);
      }

      goto LABEL_36;
    }
  }
}

void sub_101210FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100004A34(v11);
  _Unwind_Resume(a1);
}

void sub_101211010(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = CTStopwatch::stop((v5 + 536));
        if (*(v5 + 384) == 1)
        {
          if (v9)
          {
            *(v5 + 392) = v8;
          }

          else
          {
            *(v5 + 384) = 0;
          }
        }

        else if (v9)
        {
          *(v5 + 392) = v8;
          *(v5 + 384) = 1;
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1174405120;
        v15[2] = sub_1012111D0;
        v15[3] = &unk_101F1C320;
        v15[4] = v5;
        sub_100F11DD4(v16, a2);
        v10 = *(v5 + 48);
        if (!v10 || (v11 = *(v5 + 40), (v12 = std::__shared_weak_count::lock(v10)) == 0))
        {
          sub_100013CC4();
        }

        v13 = v12;
        v14 = *(v5 + 56);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v11;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v15;
        dispatch_async(v14, block);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_100004A34(v13);
        if (v16[0] == 1)
        {
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }
        }

        v16[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1012111D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    if (*(a1 + 48) == 3 && (v12 = *(v2 + 156), v12 <= 2))
    {
      *(v2 + 156) = v12 + 1;
      v13 = *(v2 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        v15 = *(v2 + 156);
        *v33 = 136315394;
        *&v33[4] = v14;
        *&v33[12] = 1024;
        *&v33[14] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [4] Temporary error %s; paused (will be retry #%d)", v33, 0x12u);
      }

      return sub_10120D850(v2);
    }

    else
    {
      v16 = *(v2 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v33 = 136315138;
        *&v33[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[4] Final error %s; aborting", v33, 0xCu);
      }

      v17 = *(v2 + 120);
      v33[0] = 0;
      *&v33[4] = 0;
      result = sub_10121DB14(v17, v33, 1);
      v18 = *(a1 + 40);
      if (v18 != 2)
      {
        if (v18 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v29 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v29);
      }

      if (*(a1 + 48) == 2)
      {
        v19 = *(v2 + 80);
        v20 = *(a1 + 49);
        v21 = *(a1 + 50);
        *v33 = _NSConcreteStackBlock;
        *&v33[8] = 0x40000000;
        *&v33[16] = sub_100F6E440;
        v34 = &unk_101EF6088;
        v35 = v19;
        v36 = 11;
        v37 = v20;
        v38 = v21;
        return sub_100F6E294(0x800F1);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v26);
    }

    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56) - *(a1 + 48);
      *v33 = 134217984;
      *&v33[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [4] Responded with %lu bytes", v33, 0xCu);
      v6 = *(a1 + 40);
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v27 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v27);
        }

        v31 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
      }
    }

    sub_10120D270(v2, "TapeAuthServerRsp");
    v7 = *(a1 + 40);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v24);
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v28);
    }

    v8 = sub_1010FDCF8(a1 + 48);
    if (v8)
    {
      v9 = *(v2 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_1010F59E4(v8);
        *v33 = 136315138;
        *&v33[4] = v23;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[4] Failure (%s); Aborting", v33, 0xCu);
      }

      v10 = *(v2 + 120);
      v33[0] = 0;
      *&v33[4] = v8;
      return sub_10121DB14(v10, v33, 1);
    }

    else
    {
      v22 = *(a1 + 40);
      if (v22 != 1)
      {
        if (v22 == 2)
        {
          v30 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v30);
        }

        v32 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v32);
      }

      if (v2 + 896 != a1 + 48)
      {
        sub_1001122C4((v2 + 896), *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
      }

      return sub_10121F828(*(v2 + 120), v33, 1);
    }
  }

  return result;
}

void sub_101211714(void *a1, void *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_169:
        sub_100004A34(v7);
        return;
      }

      v8 = CTStopwatch::stop((v5 + 536));
      if (*(v5 + 400) == 1)
      {
        if (v9)
        {
          *(v5 + 408) = v8;
        }

        else
        {
          *(v5 + 400) = 0;
        }
      }

      else if (v9)
      {
        *(v5 + 408) = v8;
        *(v5 + 400) = 1;
      }

      v81 = 0;
      v82 = 0;
      v83 = 0;
      v10 = sub_10172AA80(v5, (v5 + 72), a2, 200, 0, &v81);
      v11 = v10;
      if (v10 != 10)
      {
        v18 = *(v5 + 120);
        v19 = (*(**a2 + 32))();
        LOBYTE(buf) = v11;
        DWORD1(buf) = v19;
        sub_10121DB14(v18, &buf, 1);
        goto LABEL_167;
      }

      sub_10120D270(v5, "TapeAuthClientRsp");
      v12 = sub_1010F90A8(&v81, *(v5 + 568) + 72, (v5 + 584), (v5 + 944));
      v13 = v12;
      if (v12 > 0x1B)
      {
        goto LABEL_22;
      }

      if (((1 << v12) & 0x8024200) != 0)
      {
        v14 = *(v5 + 72);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [5] No profile eligible.", &buf, 2u);
        }

        v15 = *(v5 + 568);
        v16 = (v15 + 216);
        v17 = *(v15 + 239);
        if (v17 < 0)
        {
          if (*(v15 + 224) != 4)
          {
LABEL_28:
            sub_10121FB54(*(v5 + 120), &buf, 1);
            goto LABEL_167;
          }

          v16 = *v16;
        }

        else if (v17 != 4)
        {
          goto LABEL_28;
        }

        if (*v16 != 825241653)
        {
          goto LABEL_28;
        }

        v23 = *(v5 + 72);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v49 = sub_1010F59C0(v13);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v49;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[5] Install and Replace Failure (%s); Aborting", &buf, 0xCu);
        }

LABEL_31:
        v21 = *(v5 + 120);
        LOBYTE(buf) = 0;
        DWORD1(buf) = v13;
        sub_10121DB14(v21, &buf, 1);
LABEL_167:
        if (v81)
        {
          v82 = v81;
          operator delete(v81);
        }

        goto LABEL_169;
      }

      if (v12 == 6)
      {
        v22 = *(v5 + 72);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [5] Invalid Profile Policy Id", &buf, 2u);
        }

        *(v5 + 608) = 3;
        sub_10121FE80(*(v5 + 120), &buf, 1);
        goto LABEL_167;
      }

      if (v12 == 21)
      {
        *(*(v5 + 568) + 144) = 1;
      }

      else
      {
LABEL_22:
        if (v12)
        {
          v20 = *(v5 + 72);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v48 = sub_1010F59C0(v13);
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v48;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[5] Failure (%s); Aborting", &buf, 0xCu);
          }

          goto LABEL_31;
        }
      }

      __p[0] = 0;
      __p[1] = 0;
      v80 = 0;
      if (*(v5 + 1079) < 0)
      {
        sub_100005F2C(__p, *(v5 + 1056), *(v5 + 1064));
      }

      else
      {
        *__p = *(v5 + 1056);
        v80 = *(v5 + 1072);
      }

      v24 = *(v5 + 1127);
      if (v24 < 0)
      {
        v24 = *(v5 + 1112);
      }

      if (v24)
      {
        sub_10016C728((v5 + 464), (v5 + 1104));
      }

      if (*(v5 + 248) == 1)
      {
        v26 = *(v5 + 224);
        v25 = *(v5 + 232);
        v27 = v26;
        if (v26 != v25)
        {
          if (v80 >= 0)
          {
            v28 = HIBYTE(v80);
          }

          else
          {
            v28 = __p[1];
          }

          if (v80 >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          v27 = *(v5 + 224);
          while (1)
          {
            v30 = *(v27 + 39);
            v31 = v30;
            if ((v30 & 0x80u) != 0)
            {
              v30 = *(v27 + 24);
            }

            if (v30 == v28)
            {
              v32 = v31 >= 0 ? (v27 + 16) : *(v27 + 16);
              if (!memcmp(v32, v29, v28))
              {
                break;
              }
            }

            v27 += 216;
            if (v27 == v25)
            {
              goto LABEL_90;
            }
          }
        }

        if (v27 != v25)
        {
          v34 = *(v5 + 568);
          v35 = (v34 + 216);
          v36 = *(v34 + 239);
          if (v36 < 0)
          {
            if (*(v34 + 224) != 4)
            {
LABEL_69:
              v37 = *(v5 + 72);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 134217984;
                *(&buf + 4) = 0x84BDA12F684BDA13 * ((v25 - v26) >> 3);
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I [5] Profile has already been installed - aborting: %lu", &buf, 0xCu);
              }

              v38 = *(v5 + 120);
              LOBYTE(buf) = 0;
              DWORD1(buf) = 0;
              sub_10121DB14(v38, &buf, 1);
              goto LABEL_165;
            }

            v35 = *v35;
          }

          else if (v36 != 4)
          {
            goto LABEL_69;
          }

          if (*v35 != 825241653)
          {
            goto LABEL_69;
          }

          if (v80 >= 0)
          {
            v39 = HIBYTE(v80);
          }

          else
          {
            v39 = __p[1];
          }

          v40 = *(v34 + 263);
          v41 = v40;
          if ((v40 & 0x80u) != 0)
          {
            v40 = *(v34 + 248);
          }

          if (v39 != v40 || (v80 >= 0 ? (v42 = __p) : (v42 = __p[0]), (v45 = *(v34 + 240), v43 = (v34 + 240), v44 = v45, v41 >= 0) ? (v46 = v43) : (v46 = v44), memcmp(v42, v46, v39)))
          {
            v47 = *(v5 + 72);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "[5] Iccid to install and replace does not match the metadata iccid; Cancelling session", &buf, 2u);
            }

            *(v5 + 608) = 4;
            sub_10121FE80(*(v5 + 120), &buf, 1);
            goto LABEL_165;
          }

          v50 = *(v5 + 72);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I [5] Install Replace mode detected; Continuing", &buf, 2u);
            v26 = *(v5 + 224);
            v25 = *(v5 + 232);
          }
        }

LABEL_90:
        v51 = v25;
        if (v26 != v25)
        {
          v52 = v26;
          while (*(v52 + 89) == 1)
          {
            v52 += 216;
            if (v52 == v25)
            {
              goto LABEL_101;
            }
          }

          if (v52 != v25 && (*(v5 + 1132) & 1) != 0)
          {
            v53 = *(v5 + 72);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I [5] PPR1 not allowed when Operational Profile has already been installed - Cancelling session", &buf, 2u);
            }

            *(v5 + 608) = 3;
            sub_10121FE80(*(v5 + 120), &buf, 1);
            goto LABEL_165;
          }

          do
          {
LABEL_101:
            if (*(v26 + 89))
            {
              v51 = v26;
              goto LABEL_104;
            }

            v26 += 216;
          }

          while (v26 != v25);
          v51 = v25;
        }

LABEL_104:
        v33 = v51 != v25;
      }

      else
      {
        v33 = 0;
      }

      if (*(v5 + 1129) == 1 && (v33 || (*(*(v5 + 568) + 148) & 1) == 0))
      {
        v54 = *(v5 + 72);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I [5] Provisioning Profile not supported or installed already", &buf, 2u);
        }

        *(v5 + 608) = 127;
        sub_10121FE80(*(v5 + 120), &buf, 1);
      }

      else
      {
        if ((sub_1010FC5EC((v5 + 1304), v5 + 1040, (v5 + 162)) & 1) == 0)
        {
          v74 = *(v5 + 72);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I [5] PPR not valid", &buf, 2u);
          }

          if (*(v5 + 162))
          {
            v75 = 0;
          }

          else
          {
            v75 = 3;
          }

          *(v5 + 608) = v75;
          sub_10121FE80(*(v5 + 120), &buf, 1);
          goto LABEL_165;
        }

        v55 = *(v5 + 568);
        v56 = *(v55 + 96);
        v57 = *(v55 + 104);
        if (v56 != v57)
        {
          while (1)
          {
            v58 = *(v56 + 23);
            v59 = v58 >= 0 ? *(v56 + 23) : v56[1];
            if ((SHIBYTE(v80) & 0x8000000000000000) != 0)
            {
              if (v59 == -1)
              {
LABEL_177:
                sub_10013C334();
              }

              v61 = __p[0];
              v60 = __p[1] >= v59 ? v59 : __p[1];
            }

            else
            {
              if (v59 == -1)
              {
                goto LABEL_177;
              }

              v60 = SHIBYTE(v80) >= v59 ? v59 : SHIBYTE(v80);
              v61 = __p;
            }

            v62 = v58 >= 0 ? v56 : *v56;
            if (!memcmp(v61, v62, v60) && v60 == v59)
            {
              break;
            }

            sub_10092CDF4(__p, &buf);
            v64 = *(v56 + 23);
            if (v64 >= 0)
            {
              v65 = *(v56 + 23);
            }

            else
            {
              v65 = v56[1];
            }

            v66 = v85;
            v67 = v85;
            if ((v85 & 0x80u) != 0)
            {
              v66 = *(&buf + 1);
            }

            if (v65 == v66)
            {
              if (v64 >= 0)
              {
                v68 = v56;
              }

              else
              {
                v68 = *v56;
              }

              if ((v85 & 0x80u) == 0)
              {
                p_buf = &buf;
              }

              else
              {
                p_buf = buf;
              }

              v70 = memcmp(v68, p_buf, v65) == 0;
            }

            else
            {
              v70 = 0;
            }

            if (v67 < 0)
            {
              operator delete(buf);
            }

            if (v70)
            {
              break;
            }

            v56 += 3;
            if (v56 == v57)
            {
              v56 = v57;
              break;
            }
          }

          v71 = *(v5 + 568);
          if (v56 == *(v71 + 104))
          {
            v76 = *(v71 + 71);
            if (v76 < 0)
            {
              v76 = *(v71 + 56);
            }

            if (v76)
            {
              v77 = *(v5 + 72);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I [5] No match prefix but has matching id", &buf, 2u);
              }

              v78 = *(v5 + 120);
              LOBYTE(buf) = 8;
              DWORD1(buf) = 0;
              sub_10121DB14(v78, &buf, 1);
              goto LABEL_165;
            }
          }

          else
          {
            v72 = *(v5 + 72);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I [5] Profile to be installed matches prefix", &buf, 2u);
            }

            *(v5 + 160) = 1;
          }
        }

        if ((*(v5 + 162) & 1) == 0)
        {
          v73 = *(v5 + 256);
          if (v73)
          {
            (*(v73 + 16))(v73, v5 + 1040);
          }
        }

        sub_1012204C4(*(v5 + 120), &buf, 1);
      }

LABEL_165:
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_167;
    }
  }
}

void sub_1012120F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_10121217C(void *a1)
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
        v6 = *(v3 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Aborting, consent timer expired", buf, 2u);
        }

        v7 = *(v3 + 144);
        *(v3 + 136) = 0;
        *(v3 + 144) = 0;
        if (v7)
        {
          sub_100004A34(v7);
        }

        *(v3 + 162) = 769;
        *(v3 + 608) = 2;
        if ((*(v3 + 153) & 1) == 0 && *(v3 + 152) == 1)
        {
          *(v3 + 152) = 0;
          sub_101216EAC(*(v3 + 120), &v8, 1);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10121228C(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_101212410;
        v13[3] = &unk_101F1C3E0;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_101212410(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    if (*(a1 + 48) == 3 && (v12 = *(v2 + 156), v12 <= 2))
    {
      *(v2 + 156) = v12 + 1;
      v13 = *(v2 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        v15 = *(v2 + 156);
        *v30 = 136315394;
        *&v30[4] = v14;
        *&v30[12] = 1024;
        *&v30[14] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [11] Temporary error %s; paused (will be retry #%d)", v30, 0x12u);
      }

      return sub_10120D850(v2);
    }

    else
    {
      v16 = *(v2 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v30 = 136315138;
        *&v30[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[11] Final error %s; aborting", v30, 0xCu);
      }

      v17 = *(v2 + 120);
      v30[0] = 0;
      *&v30[4] = 0;
      result = sub_10121DB14(v17, v30, 1);
      v18 = *(a1 + 40);
      if (v18 != 2)
      {
        if (v18 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v28 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v28);
      }

      if (*(a1 + 48) == 2)
      {
        v19 = *(v2 + 80);
        v20 = *(a1 + 49);
        v21 = *(a1 + 50);
        *v30 = _NSConcreteStackBlock;
        *&v30[8] = 0x40000000;
        *&v30[16] = sub_100F6E440;
        v31 = &unk_101EF6088;
        v32 = v19;
        v33 = 17;
        v34 = v20;
        v35 = v21;
        return sub_100F6E294(0x800F1);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v25);
    }

    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56) - *(a1 + 48);
      *v30 = 134217984;
      *&v30[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [11] Responded with %lu bytes", v30, 0xCu);
      v6 = *(a1 + 40);
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v26 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v26);
        }

        v29 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v29);
      }
    }

    sub_10120D270(v2, "TapeResetEuiccMemory");
    v7 = *(a1 + 40);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v23);
      }

      v27 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v27);
    }

    v8 = sub_1011025E8(a1 + 48);
    if (v8)
    {
      v9 = *(v2 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_1010F59E4(v8);
        *v30 = 136315138;
        *&v30[4] = v22;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[11] Failure (%s) - Aborting", v30, 0xCu);
      }

      v10 = *(v2 + 120);
      v30[0] = 0;
      *&v30[4] = v8;
      return sub_10121DB14(v10, v30, 1);
    }

    else
    {
      return sub_10122099C(*(v2 + 120), v30, 1);
    }
  }

  return result;
}

void sub_1012128B8(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = CTStopwatch::stop((v5 + 536));
        if (*(v5 + 416) == 1)
        {
          if (v9)
          {
            *(v5 + 424) = v8;
          }

          else
          {
            *(v5 + 416) = 0;
          }
        }

        else if (v9)
        {
          *(v5 + 424) = v8;
          *(v5 + 416) = 1;
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1174405120;
        v15[2] = sub_101212A78;
        v15[3] = &unk_101F1C440;
        v15[4] = v5;
        sub_100F11DD4(v16, a2);
        v10 = *(v5 + 48);
        if (!v10 || (v11 = *(v5 + 40), (v12 = std::__shared_weak_count::lock(v10)) == 0))
        {
          sub_100013CC4();
        }

        v13 = v12;
        v14 = *(v5 + 56);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v11;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v15;
        dispatch_async(v14, block);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_100004A34(v13);
        if (v16[0] == 1)
        {
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }
        }

        v16[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_101212A78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    if (*(a1 + 48) == 3 && (v12 = *(v2 + 156), v12 <= 2))
    {
      *(v2 + 156) = v12 + 1;
      v13 = *(v2 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        v15 = *(v2 + 156);
        *v33 = 136315394;
        *&v33[4] = v14;
        *&v33[12] = 1024;
        *&v33[14] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [6] Temporary error %s; paused (will be retry #%d)", v33, 0x12u);
      }

      return sub_10120D850(v2);
    }

    else
    {
      v16 = *(v2 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v33 = 136315138;
        *&v33[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[6] Final error %s; aborting", v33, 0xCu);
      }

      v17 = *(v2 + 120);
      v33[0] = 0;
      *&v33[4] = 0;
      result = sub_10121DB14(v17, v33, 1);
      v18 = *(a1 + 40);
      if (v18 != 2)
      {
        if (v18 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v29 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v29);
      }

      if (*(a1 + 48) == 2)
      {
        v19 = *(v2 + 80);
        v20 = *(a1 + 49);
        v21 = *(a1 + 50);
        *v33 = _NSConcreteStackBlock;
        *&v33[8] = 0x40000000;
        *&v33[16] = sub_100F6E440;
        v34 = &unk_101EF6088;
        v35 = v19;
        v36 = 5;
        v37 = v20;
        v38 = v21;
        return sub_100F6E294(0x800F1);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v26);
    }

    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56) - *(a1 + 48);
      *v33 = 134217984;
      *&v33[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [6] Responded with %lu bytes", v33, 0xCu);
      v6 = *(a1 + 40);
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v27 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v27);
        }

        v31 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
      }
    }

    sub_10120D270(v2, "TapePrepareDownloadRsp");
    v7 = *(a1 + 40);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v24);
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v28);
    }

    v8 = sub_1010FE5A0(a1 + 48);
    if (v8)
    {
      v9 = *(v2 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_1010F59E4(v8);
        *v33 = 136315138;
        *&v33[4] = v23;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[6] Failure (%s) - Aborting", v33, 0xCu);
      }

      v10 = *(v2 + 120);
      v33[0] = 0;
      *&v33[4] = v8;
      return sub_10121DB14(v10, v33, 1);
    }

    else
    {
      v22 = *(a1 + 40);
      if (v22 != 1)
      {
        if (v22 == 2)
        {
          v30 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v30);
        }

        v32 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v32);
      }

      if (v2 + 920 != a1 + 48)
      {
        sub_1001122C4((v2 + 920), *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
      }

      return sub_101220CC8(*(v2 + 120), v33, 1);
    }
  }

  return result;
}

void sub_101212FBC(void *a1, void *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_50:
        sub_100004A34(v7);
        return;
      }

      v8 = CTStopwatch::stop((v5 + 536));
      if (*(v5 + 432) == 1)
      {
        if (v9)
        {
          *(v5 + 440) = v8;
        }

        else
        {
          *(v5 + 432) = 0;
        }
      }

      else if (v9)
      {
        *(v5 + 440) = v8;
        *(v5 + 432) = 1;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      v10 = sub_10172AA80(v5, (v5 + 72), a2, 200, 0, &v33);
      v11 = v10;
      if (v10 != 10)
      {
        v15 = *(v5 + 120);
        v16 = (*(**a2 + 32))();
        buf[0] = v11;
        *&buf[4] = v16;
        sub_10121DB14(v15, buf, 1);
LABEL_48:
        if (v33)
        {
          v34 = v33;
          operator delete(v33);
        }

        goto LABEL_50;
      }

      sub_10120D270(v5, "TapeGetBoundProfileRsp");
      v12 = sub_1010F9B6C(&v33, (v5 + 584), v5 + 1280);
      v13 = v12;
      if (v12)
      {
        if (v12 == 30)
        {
          if ((*(v5 + 161) & 1) == 0)
          {
            v23 = *(v5 + 72);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "kTransactionIdUnknown";
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[7] Failure (%s) - Re-attempt install without consent", buf, 0xCu);
            }

            *(v5 + 161) = 1;
            *(*(v5 + 568) + 146) = 0;
            if (*(v5 + 607) < 0)
            {
              **(v5 + 584) = 0;
              *(v5 + 592) = 0;
            }

            else
            {
              *(v5 + 584) = 0;
              *(v5 + 607) = 0;
            }

            *(v5 + 904) = *(v5 + 896);
            *(v5 + 928) = *(v5 + 920);
            sub_10120D30C((v5 + 944));
            sub_10121F14C(*(v5 + 120), buf, 1);
            goto LABEL_48;
          }
        }

        else if (v12 == 6)
        {
          v14 = *(v5 + 72);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[7] Failure (InvalidProfilePolicy) - Cancelling session", buf, 2u);
          }

          *(v5 + 608) = 3;
          sub_10121FE80(*(v5 + 120), buf, 1);
          goto LABEL_48;
        }

        v17 = *(v5 + 72);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v26 = sub_1010F59C0(v13);
          *buf = 136315138;
          *&buf[4] = v26;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[7] Failure (%s) - Aborting", buf, 0xCu);
        }

        sub_10120D270(v5, "TapeGetBoundProfileRsp");
        v18 = *(v5 + 120);
        buf[0] = 0;
        *&buf[4] = v13;
        sub_10121DB14(v18, buf, 1);
        goto LABEL_48;
      }

      *v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      *buf = 0u;
      v31[0] = 0;
      v31[1] = 0;
      v32 = 0;
      __p = 0;
      v29 = 0;
      v19 = *(v5 + 1280);
      v20 = *(v5 + 1288);
      v30 = 0;
      sub_100034C50(&__p, v19, v20, v20 - v19);
      v21 = sub_1010FEA74(&__p, v31);
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      if ((v21 & 1) == 0)
      {
        v24 = *(v5 + 72);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v27 = 0;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[7] Cannot decode Bound Profile Package", v27, 2u);
        }

        *(v5 + 608) = 5;
        sub_10121FE80(*(v5 + 120), v27, 1);
        goto LABEL_43;
      }

      if (TapeProfileMetadata::operator!=())
      {
        if (__PAIR64__(BYTE12(v41), BYTE11(v41)) != __PAIR64__(*(v5 + 1132), *(v5 + 1131)))
        {
          v25 = *(v5 + 72);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *v27 = 0;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[7] Metadata mismatch [PPR IDs]", v27, 2u);
          }

          *(v5 + 608) = 3;
          sub_10121FE80(*(v5 + 120), v27, 1);
          goto LABEL_43;
        }

        v22 = *(v5 + 72);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *v27 = 0;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[7] Metadata mismatch [Other]", v27, 2u);
        }
      }

      sub_101220FF4(*(v5 + 120), v27, 1);
LABEL_43:
      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[0]);
      }

      if (v49[1])
      {
        *&v50 = v49[1];
        operator delete(v49[1]);
      }

      sub_100E3A5D4(buf);
      goto LABEL_48;
    }
  }
}

void sub_1012134C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10121354C(&a22);
  if (a19)
  {
    operator delete(a19);
  }

  sub_100004A34(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_10121354C(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  return sub_100E3A5D4(a1);
}

void sub_101213590(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_101213714;
        v13[3] = &unk_101F1C4D0;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_101213714(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [7a] Validating the disableTapeProfile", &v9, 2u);
  }

  if (*(a1 + 40) != 1)
  {
    v7 = *(v2 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[7a] Disable profile driver failed; Cancelling session", &v9, 2u);
    }

    goto LABEL_7;
  }

  v4 = sub_101100E8C(a1 + 48, 1);
  v5 = *(v2 + 72);
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_1010F59E4(v4);
      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[7a] Disable profile failed: %s; Cancelling session", &v9, 0xCu);
    }

LABEL_7:
    *(v2 + 608) = 5;
    return sub_10121FE80(*(v2 + 120), &v9, 1);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [7a] Disable profile response validation success", &v9, 2u);
  }

  *(v2 + 1384) = 1;
  return sub_101221428(*(v2 + 120), &v9, 1);
}

void sub_1012138EC(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_101213A70;
        v13[3] = &unk_101F1C530;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_101213A70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [7b] Validating the deleteTapeProfile", &v9, 2u);
  }

  if (*(a1 + 40) != 1)
  {
    v7 = *(v2 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[7b] Delete profile driver failed; Cancelling session", &v9, 2u);
    }

    goto LABEL_7;
  }

  v4 = sub_101100E8C(a1 + 48, 2);
  v5 = *(v2 + 72);
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_1010F59E4(v4);
      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[7b] Delete profile response validation failed: %s; Cancelling session", &v9, 0xCu);
    }

LABEL_7:
    *(v2 + 608) = 5;
    return sub_10121FE80(*(v2 + 120), &v9, 1);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [7b] Delete profile response validation success", &v9, 2u);
  }

  return sub_101221754(*(v2 + 120), &v9, 1);
}

void sub_101213C40(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_101213DC4;
        v13[3] = &unk_101F1C590;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_101213DC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    sub_100034C50(&v10, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
    memset(v9, 0, sizeof(v9));
    v3 = sub_101101278(&v10);
    if (v3)
    {
      if (v3 == 9)
      {
        v4 = *(v1 + 72);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[7c] List Notification failed; Cancelling session", buf, 2u);
        }

        *(v1 + 608) = 5;
        sub_10121FE80(*(v1 + 120), buf, 1);
      }

      else
      {
        v6 = *(v1 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[7c] List notification response failure; Cancelling session", buf, 2u);
        }

        sub_10120D270(v1, "ListNotificationRsp");
        *(v1 + 608) = 5;
        sub_10121FE80(*(v1 + 120), buf, 1);
      }
    }

    else
    {
      v7 = *(v1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [7c] Empty notification list; skipping delete notification", buf, 2u);
      }

      sub_101220FF4(*(v1 + 120), buf, 1);
    }

    *buf = v9;
    sub_10113A858(buf);
    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  else
  {
    v5 = *(v1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (v2 != 2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      }

      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[7c] List notification failed with final error %s; Cancelling session", buf, 0xCu);
    }

    *(v1 + 608) = 5;
    sub_10121FE80(*(v1 + 120), buf, 1);
  }
}

void sub_1012142DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char *a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  a26 = &a20;
  sub_10113A858(&a26);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_101214354(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_1012144D8;
        v13[3] = &unk_101F1C5F0;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1012144D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 != 1)
  {
    v8 = *(v2 + 72);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (v3 != 2)
      {
        goto LABEL_20;
      }

      *__p = 136315138;
      *&__p[4] = asString();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[7d] Notification deletion failed with final error %s; Cancelling session", __p, 0xCu);
    }

LABEL_6:
    *(v2 + 608) = 5;
    return sub_10121FE80(*(v2 + 120), __p, 1);
  }

  sub_10120D270(*(a1 + 32), "[7d] DeleteNotificationRsp");
  v4 = *(a1 + 40);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v12 = &ctu::ResultIsError::~ResultIsError;
      goto LABEL_21;
    }

LABEL_20:
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    v12 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
LABEL_21:
    __cxa_throw(exception, v11, v12);
  }

  v5 = sub_1011023B0(a1 + 48);
  v6 = *(v2 + 72);
  if (v5)
  {
    if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[7d] Decoding failed; Cancelling session", __p, 2u);
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_DEFAULT))
  {
    ctu::hex();
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = *__p;
    }

    *buf = 136315138;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [7d] Notification SEQ # = %s deleted", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(*__p);
    }
  }

  return sub_101221DAC(*(v2 + 120), __p, 1);
}

void sub_10121475C(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_1012148E0;
        v13[3] = &unk_101F1C650;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1012148E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [12] Validating the enableTapeProfile", &v9, 2u);
  }

  if (*(a1 + 40) == 1)
  {
    v4 = sub_101100E8C(a1 + 48, 0);
    v5 = *(v2 + 72);
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = sub_1010F59E4(v4);
        v9 = 136315138;
        v10 = v8;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[12] Enable profile failed: %s", &v9, 0xCu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [12] Enable profile response validation success", &v9, 2u);
    }
  }

  else
  {
    v6 = *(v2 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[12] Enable profile driver failed", &v9, 2u);
    }
  }

  return sub_1012220D8(*(v2 + 120), &v9, 1);
}

void sub_101214AA0(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = CTStopwatch::stop((v5 + 536));
        if (*(v5 + 448) == 1)
        {
          if (v9)
          {
            *(v5 + 456) = v8;
          }

          else
          {
            *(v5 + 448) = 0;
          }
        }

        else if (v9)
        {
          *(v5 + 456) = v8;
          *(v5 + 448) = 1;
        }

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1174405120;
        v15[2] = sub_101214C60;
        v15[3] = &unk_101F1C6B0;
        v15[4] = v5;
        sub_100F11DD4(v16, a2);
        v10 = *(v5 + 48);
        if (!v10 || (v11 = *(v5 + 40), (v12 = std::__shared_weak_count::lock(v10)) == 0))
        {
          sub_100013CC4();
        }

        v13 = v12;
        v14 = *(v5 + 56);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v11;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v15;
        dispatch_async(v14, block);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_100004A34(v13);
        if (v16[0] == 1)
        {
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }
        }

        v16[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_101214C60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    if (*(a1 + 48) == 3 && (v12 = *(v2 + 156), v12 <= 2))
    {
      *(v2 + 156) = v12 + 1;
      v13 = *(v2 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        v15 = *(v2 + 156);
        *__p = 136315394;
        *&__p[4] = v14;
        *&__p[12] = 1024;
        *&__p[14] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [8] Temporary error %s; paused (will be retry #%d)", __p, 0x12u);
      }

      return sub_10120D850(v2);
    }

    else
    {
      v16 = *(v2 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315138;
        *&__p[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[8] Final error %s; aborting", __p, 0xCu);
      }

      v17 = *(v2 + 88);
      __p[0] = 0;
      LOBYTE(v38) = 0;
      (*(*v17 + 32))(v17, __p);
      if (v38 == 1 && *__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      *(v2 + 608) = 1;
      result = sub_10121FE80(*(v2 + 120), __p, 1);
      v18 = *(a1 + 40);
      if (v18 != 2)
      {
        if (v18 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v35 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v35);
      }

      if (*(a1 + 48) == 2)
      {
        v19 = *(v2 + 80);
        v20 = *(a1 + 49);
        v21 = *(a1 + 50);
        *__p = _NSConcreteStackBlock;
        *&__p[8] = 0x40000000;
        *&__p[16] = sub_100F6E440;
        v38 = &unk_101EF6088;
        v39 = v19;
        v40 = 6;
        v41 = v20;
        v42 = v21;
        return sub_100F6E294(0x800F1);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v32);
    }

    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56) - *(a1 + 48);
      *__p = 134217984;
      *&__p[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [8] Responded with %lu bytes", __p, 0xCu);
      v6 = *(a1 + 40);
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v33 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v33);
        }

        v36 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v36);
      }
    }

    sub_10120D270(v2, "TapeProfileInstallResult");
    v7 = *(a1 + 40);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v30 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v30);
      }

      v34 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v34);
    }

    v8 = sub_1010FF14C(a1 + 48);
    v9 = v8;
    if (v8 == 19)
    {
      v24 = *(v2 + 72);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I [8] Insufficient memory", __p, 2u);
      }

      v25 = *(v2 + 120);
      __p[0] = 5;
      *&__p[4] = 0;
      return sub_10121DB14(v25, __p, 1);
    }

    else if (v8 == 18)
    {
      v22 = *(v2 + 72);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [8] Profile alredy exists", __p, 2u);
      }

      v23 = *(v2 + 120);
      __p[0] = 6;
      *&__p[4] = 0;
      return sub_10121DB14(v23, __p, 1);
    }

    else if (v8)
    {
      v26 = *(v2 + 72);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v29 = sub_1010F59E4(v9);
        *__p = 136315138;
        *&__p[4] = v29;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[8] Installation failure: %s", __p, 0xCu);
      }

      v27 = *(v2 + 88);
      __p[0] = 0;
      LOBYTE(v38) = 0;
      (*(*v27 + 32))(v27, __p);
      if (v38 == 1 && *__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      v28 = *(v2 + 120);
      __p[0] = 0;
      *&__p[4] = v9;
      return sub_10121DB14(v28, __p, 1);
    }

    else
    {
      v10 = *(v2 + 88);
      __p[0] = 0;
      LOBYTE(v38) = 0;
      (*(*v10 + 32))(v10, __p);
      if (v38 == 1)
      {
        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }
      }

      return sub_10122248C(*(v2 + 120), __p, 1);
    }
  }

  return result;
}

void sub_10121528C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1012152EC(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_101215470;
        v13[3] = &unk_101F1C710;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_101215470(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 1)
  {
    sub_10120D270(*(a1 + 32), "CardProfiles");
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v4 = *(a1 + 40);
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        v13 = &ctu::ResultIsError::~ResultIsError;
        ctu::ResultIsError::ResultIsError(exception);
      }

      else
      {
        exception = __cxa_allocate_exception(0x10uLL);
        v13 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      }

      __cxa_throw(exception, v14, v13);
    }

    v5 = sub_1010FA45C((a1 + 48));
    v6 = *(v2 + 72);
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = sub_1010F59E4(v5);
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[9] Failure (%s)", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 0x84BDA12F684BDA13 * ((v18 - v17) >> 3);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Decoded %lu profiles from baseband", buf, 0xCu);
      }

      sub_100319BEC(v2 + 224, &v17);
    }

    *buf = &v17;
    sub_100112120(buf);
  }

  else
  {
    v7 = *(v2 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[0] Result failed", &v17, 2u);
      v3 = *(a1 + 40);
    }

    if (v3 != 2)
    {
      if (v3 == 1)
      {
        v15 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsNotError::ResultIsNotError(v15);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v16);
    }

    if (*(a1 + 48) == 2)
    {
      v8 = *(v2 + 80);
      v9 = *(a1 + 49);
      v10 = *(a1 + 50);
      v17 = _NSConcreteStackBlock;
      v18 = 0x40000000;
      v19 = sub_100F6E440;
      v20 = &unk_101EF6088;
      v21 = v8;
      v22 = 13;
      v23 = v9;
      v24 = v10;
      sub_100F6E294(0x800F1);
    }
  }

  return sub_101222864(*(v2 + 120), &v17, 1);
}

void sub_1012157E0(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_101215964;
        v13[3] = &unk_101F1C770;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_101215964(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    if (*(a1 + 48) == 3 && (v12 = *(v2 + 156), v12 <= 2))
    {
      *(v2 + 156) = v12 + 1;
      v13 = *(v2 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        v15 = *(v2 + 156);
        *v33 = 136315394;
        *&v33[4] = v14;
        *&v33[12] = 1024;
        *&v33[14] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [10] Temporary error %s; paused (will be retry #%d)", v33, 0x12u);
      }

      return sub_10120D850(v2);
    }

    else
    {
      v16 = *(v2 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v33 = 136315138;
        *&v33[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[10] Final error %s; aborting", v33, 0xCu);
      }

      v17 = *(v2 + 120);
      v33[0] = 0;
      *&v33[4] = 0;
      result = sub_10121DB14(v17, v33, 1);
      v18 = *(a1 + 40);
      if (v18 != 2)
      {
        if (v18 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v29 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v29);
      }

      if (*(a1 + 48) == 2)
      {
        v19 = *(v2 + 80);
        v20 = *(a1 + 49);
        v21 = *(a1 + 50);
        *v33 = _NSConcreteStackBlock;
        *&v33[8] = 0x40000000;
        *&v33[16] = sub_100F6E440;
        v34 = &unk_101EF6088;
        v35 = v19;
        v36 = 12;
        v37 = v20;
        v38 = v21;
        return sub_100F6E294(0x800F1);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v26);
    }

    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56) - *(a1 + 48);
      *v33 = 134217984;
      *&v33[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [10] Tape Data created with %lu bytes", v33, 0xCu);
      v6 = *(a1 + 40);
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v27 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v27);
        }

        v31 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
      }
    }

    sub_10120D270(v2, "TapeCancelSessionRsp");
    v7 = *(a1 + 40);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v24);
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v28);
    }

    v8 = sub_1010FF788(a1 + 48);
    if (v8)
    {
      v9 = *(v2 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_1010F59E4(v8);
        *v33 = 136315138;
        *&v33[4] = v23;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[10] Failure (%s) - Aborting", v33, 0xCu);
      }

      v10 = *(v2 + 120);
      v33[0] = 0;
      *&v33[4] = v8;
      return sub_10121DB14(v10, v33, 1);
    }

    else
    {
      v22 = *(a1 + 40);
      if (v22 != 1)
      {
        if (v22 == 2)
        {
          v30 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v30);
        }

        v32 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v32);
      }

      if (v2 + 1328 != a1 + 48)
      {
        sub_1001122C4((v2 + 1328), *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
      }

      return sub_101222C08(*(v2 + 120), v33, 1);
    }
  }

  return result;
}

void sub_101215EA8(void *a1, void *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        __p = 0;
        v18 = 0;
        v19 = 0;
        v8 = sub_10172AA80(v5, (v5 + 72), a2, 200, 0, &__p);
        v9 = v8;
        if (v8 == 10)
        {
          sub_10120D270(v5, "TapeCancelSessionServerRsp");
          v10 = sub_1010FA0A8(&__p);
          if (v10)
          {
            v11 = *(v5 + 72);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v16 = sub_1010F59C0(v10);
              *buf = 136315138;
              v21 = v16;
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[11] Decoding Failure: (%s) - continuing", buf, 0xCu);
            }
          }

          v12 = *(v5 + 608);
          v13 = *(v5 + 120);
          if (v12 == 3)
          {
            buf[0] = 7;
            LODWORD(v21) = 3;
          }

          else
          {
            buf[0] = 0;
            LODWORD(v21) = v12;
          }

          sub_10121DB14(v13, buf, 1);
        }

        else
        {
          v14 = *(v5 + 120);
          v15 = (*(**a2 + 32))();
          buf[0] = v9;
          LODWORD(v21) = v15;
          sub_10121DB14(v14, buf, 1);
        }

        if (__p)
        {
          v18 = __p;
          operator delete(__p);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_101216074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100004A34(v11);
  _Unwind_Resume(a1);
}

void sub_1012160A8(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_10121622C;
        v13[3] = &unk_101F1C800;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_10121EAB8;
        block[3] = &unk_101F1CBB0;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10121622C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    if (*(a1 + 48) == 3 && (v8 = *(v2 + 156), v8 <= 2))
    {
      *(v2 + 156) = v8 + 1;
      v9 = *(v2 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = asString();
        v11 = *(v2 + 156);
        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 1024;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [1+] Temporary error %s; paused (will be retry #%d)", buf, 0x12u);
      }

      sub_10120D850(v2);
    }

    else
    {
      v12 = *(v2 + 72);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[1+] Final error %s; clearing & aborting", buf, 0xCu);
      }

      v13 = *(v2 + 88);
      buf[0] = 0;
      LOBYTE(v34) = 0;
      (*(*v13 + 32))(v13, buf);
      if (v34 == 1 && *buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v14 = *(v2 + 120);
      buf[0] = 0;
      *&buf[4] = 0;
      sub_10121DB14(v14, buf, 1);
      v15 = *(a1 + 40);
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v30 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v30);
      }

      if (*(a1 + 48) == 2)
      {
        v16 = *(v2 + 80);
        v17 = *(a1 + 49);
        v18 = *(a1 + 50);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_100F6E440;
        v34 = &unk_101EF6088;
        v35 = v16;
        v36 = 21;
        v37 = v17;
        v38 = v18;
        sub_100F6E294(0x800F1);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v28);
    }

    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56) - *(a1 + 48);
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [1+] Get Session Data with %lu bytes", buf, 0xCu);
      v6 = *(a1 + 40);
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v29 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v29);
        }

        v31 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
      }
    }

    sub_10120D270(v2, "GetSessionData");
    memset(v32, 0, sizeof(v32));
    v7 = *(a1 + 40);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        v25 = &ctu::ResultIsError::~ResultIsError;
        ctu::ResultIsError::ResultIsError(v24);
      }

      else
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        v25 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(v24);
      }

      __cxa_throw(v24, v26, v25);
    }

    if (sub_1011029DC(a1 + 48))
    {
      v21 = *(v2 + 72);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[1+] Cannot find transaction id; clearing & aborting", buf, 2u);
      }

      v22 = *(v2 + 88);
      buf[0] = 0;
      LOBYTE(v34) = 0;
      (*(*v22 + 32))(v22, buf);
      if (v34 == 1)
      {
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }
    }

    else
    {
      v19 = *(v2 + 72);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[1+] Failed to decode; clearing & aborting", buf, 2u);
      }

      v20 = *(v2 + 88);
      buf[0] = 0;
      LOBYTE(v34) = 0;
      (*(*v20 + 32))(v20, buf);
      if (v34 == 1 && *buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    v23 = *(v2 + 120);
    buf[0] = 0;
    *&buf[4] = 0;
    sub_10121DB14(v23, buf, 1);
    *buf = v32;
    sub_1000087B4(buf);
  }
}

void sub_101216870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, uint64_t a15, char a16)
{
  __p = &a10;
  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

void sub_101216920(uint64_t a1, unsigned __int8 a2, char a3, uint64_t a4)
{
  sub_100F11B6C(&v9, a4);
  v8[0] = 1;
  (*(a1 + 16))(a1, a2, a3 & 1, v8);
  if (v8[0] == 1)
  {
    if (v12[24] == 1)
    {
      v7 = v12;
      sub_100112120(&v7);
    }

    if (v11 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1012169F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10016A858(va);
  _Unwind_Resume(a1);
}

void sub_101216A14(uint64_t a1, unsigned __int8 a2, char a3, uint64_t a4)
{
  sub_100F11B6C(&v9, a4);
  v8[0] = 1;
  (*(a1 + 16))(a1, a2, a3 & 1, v8);
  if (v8[0] == 1)
  {
    if (v12[24] == 1)
    {
      v7 = v12;
      sub_100112120(&v7);
    }

    if (v11 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_101216AEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10016A858(va);
  _Unwind_Resume(a1);
}

void sub_101216B08(void ***a1)
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
        v4 -= 4;
        v6 = v4;
        sub_10110476C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_101216B7C(uint64_t a1)
{
  v2 = *(a1 + 312);
  if (v2)
  {
    *(a1 + 320) = v2;
    operator delete(v2);
  }

  sub_100E3A5D4(a1 + 96);
  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_101216BF8(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_101216C8C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_101216CE0(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 207) < 0)
    {
      operator delete(*(a1 + 184));
    }

    *(a1 + 176) = 0;
  }

  if (*(a1 + 160) == 1)
  {
    *(a1 + 160) = 0;
  }

  if (*(a1 + 144) == 1)
  {
    *(a1 + 144) = 0;
  }

  if (*(a1 + 128) == 1)
  {
    *(a1 + 128) = 0;
  }

  if (*(a1 + 112) == 1)
  {
    *(a1 + 112) = 0;
  }

  if (*(a1 + 96) == 1)
  {
    *(a1 + 96) = 0;
  }

  if (*(a1 + 80) == 1)
  {
    *(a1 + 80) = 0;
  }

  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 0;
  }

  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = 0;
  }

  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 0;
  }

  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_101216DD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101216E2C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101216E6C(uint64_t result)
{
  if (result)
  {
    sub_10120CF60(result);

    operator delete();
  }

  return result;
}

uint64_t sub_101216EAC(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*(&unk_101FC8DC0 + a1[1].i32[2] + 34))(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_10121714C(a1);
  }

  return v5;
}

uint64_t sub_101217020(uint64_t result, _WORD *a2, int a3)
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
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_6ResumeEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN16tape_install_fsm19TapeInstallFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_6ResumeEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101217118(unsigned __int8 **a1)
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

int64x2_t *sub_10121714C(int64x2_t *result)
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

uint64_t sub_101217218(uint64_t a1, int a2, int a3)
{
  if (a3 != 22)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 22;
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  *(v3 + 24) = 22;
  return 1;
}

uint64_t sub_101217298(uint64_t a1, int a2, int a3)
{
  if (a3 != 20)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 20;
  (*(**(a1 + 8) + 160))(*(a1 + 8));
  *(v3 + 24) = 20;
  return 1;
}

uint64_t sub_101217318(uint64_t a1, int a2, int a3)
{
  if (a3 != 19)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 19;
  (*(**(a1 + 8) + 176))(*(a1 + 8));
  *(v3 + 24) = 19;
  return 1;
}

uint64_t sub_101217398(uint64_t a1, int a2, int a3)
{
  if (a3 != 18)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 18;
  (*(**(a1 + 8) + 168))(*(a1 + 8));
  *(v3 + 24) = 18;
  return 1;
}

uint64_t sub_101217418(uint64_t a1, int a2, int a3)
{
  if (a3 != 17)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 17;
  (*(**(a1 + 8) + 152))(*(a1 + 8));
  *(v3 + 24) = 17;
  return 1;
}

uint64_t sub_101217498(uint64_t a1, int a2, int a3)
{
  if (a3 != 12)
  {
    __assert_rtn("execute", "state_machine.hpp", 524, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 240))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 12;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 112))();
    v7 = 13;
  }

  else
  {
    (*(v6 + 152))();
    v7 = 17;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

uint64_t sub_101217588(uint64_t a1, int a2, int a3)
{
  if (a3 != 11)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 11;
  (*(**(a1 + 8) + 104))(*(a1 + 8));
  *(v3 + 24) = 11;
  return 1;
}

uint64_t sub_101217608(uint64_t a1, int a2, int a3)
{
  if (a3 != 10)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 10;
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  *(v3 + 24) = 4;
  return 1;
}

uint64_t sub_10121768C(uint64_t a1, int a2, int a3)
{
  if (a3 != 9)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 9;
  (*(**(a1 + 8) + 88))(*(a1 + 8));
  *(v3 + 24) = 9;
  return 1;
}

uint64_t sub_10121770C(uint64_t a1, int a2, int a3)
{
  if (a3 != 8)
  {
    __assert_rtn("execute", "state_machine.hpp", 524, "state == (current_state)");
  }

  if ((*(**(a1 + 8) + 216))(*(a1 + 8)))
  {
    v5 = a1 + 4 * a2;
    *(v5 + 24) = 8;
    (*(**(a1 + 8) + 72))(*(a1 + 8));
    *(v5 + 24) = 8;
  }

  else if ((*(**(a1 + 8) + 232))(*(a1 + 8)))
  {
    v6 = a1 + 4 * a2;
    *(v6 + 24) = 8;
    (*(**(a1 + 8) + 88))(*(a1 + 8));
    *(v6 + 24) = 9;
  }

  else
  {
    v7 = (*(**(a1 + 8) + 224))(*(a1 + 8));
    *(a1 + 24 + 4 * a2) = 8;
    v8 = **(a1 + 8);
    if (v7)
    {
      (*(v8 + 96))();
      v9 = 10;
    }

    else
    {
      (*(v8 + 168))();
      v9 = 18;
    }

    *(a1 + 24 + 4 * a2) = v9;
  }

  return 1;
}

uint64_t sub_1012178D0(uint64_t a1, int a2, int a3)
{
  if (a3 != 7)
  {
    __assert_rtn("execute", "state_machine.hpp", 653, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 7;
  (*(**(a1 + 8) + 64))(*(a1 + 8));
  *(v3 + 24) = 7;
  return 1;
}