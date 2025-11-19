void sub_101530D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101530EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 32);
  theArray = 0;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  sub_101531CDC(v36, v5);
  if (v37 >= 0)
  {
    v6 = HIBYTE(v37);
  }

  else
  {
    v6 = v36[1];
  }

  if (!v6)
  {
    v9 = 0;
    theArray = 0;
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  v7 = v34;
  sub_1000677C4(v34, v6 + 18);
  if (v35 < 0)
  {
    v7 = v34[0];
  }

  if (v37 >= 0)
  {
    v8 = v36;
  }

  else
  {
    v8 = v36[0];
  }

  memmove(v7, v8, v6);
  strcpy(v7 + v6, "/MCCMNC2ISO3.plist");
  theDict = 0;
  sub_1009F7DEC((v5 + 40), (v5 + 464), v34, &theDict);
  v32 = 0;
  if (!theDict)
  {
    v10 = *(v5 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v34;
      if (v35 < 0)
      {
        v11 = v34[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not load %s as dictionary", &buf, 0xCu);
    }

    goto LABEL_59;
  }

  key = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v30 = *(a2 + 16);
  }

  if (SHIBYTE(v30) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v40 = v30;
  }

  v41 = 0;
  if (SHIBYTE(v40) < 0)
  {
    sub_100005F2C(&buf, __dst, *(&__dst + 1));
  }

  else
  {
    buf = __dst;
    v44 = v40;
  }

  v42 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v41;
    v41 = v42;
    v26[0] = v12;
    sub_100005978(v26);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(buf);
  }

  key = v41;
  v41 = 0;
  sub_100005978(&v41);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  v28 = 0;
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(v26, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *v26 = *(a2 + 24);
    v27 = *(a2 + 40);
  }

  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(&__dst, v26[0], v26[1]);
  }

  else
  {
    __dst = *v26;
    v40 = v27;
  }

  v38 = 0;
  if (SHIBYTE(v40) < 0)
  {
    sub_100005F2C(&buf, __dst, *(&__dst + 1));
  }

  else
  {
    buf = __dst;
    v44 = v40;
  }

  v41 = 0;
  if (ctu::cf::convert_copy())
  {
    v13 = v38;
    v38 = v41;
    v42 = v13;
    sub_100005978(&v42);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(buf);
  }

  v28 = v38;
  v38 = 0;
  sub_100005978(&v38);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  *&__dst = 0;
  Value = CFDictionaryGetValue(theDict, key);
  v15 = Value;
  if (Value && (v16 = CFGetTypeID(Value), v16 == CFDictionaryGetTypeID()))
  {
    *&__dst = v15;
    CFRetain(v15);
    if (__dst)
    {
      if (v28)
      {
        v42 = CFDictionaryGetValue(__dst, v28);
        *&buf = 0;
        v17 = sub_1001FA5E0(&buf, &v42);
        v18 = v32;
        v32 = buf;
        *&buf = v18;
        sub_100010250(v17);
      }

      if (!v32)
      {
        v42 = CFDictionaryGetValue(__dst, @"FallbackToMCC");
        *&buf = 0;
        v19 = sub_1001FA5E0(&buf, &v42);
        v20 = v32;
        v32 = buf;
        *&buf = v20;
        sub_100010250(v19);
      }

      sub_10001021C(&__dst);
      sub_100005978(&v28);
      sub_100005978(&key);
LABEL_59:
      v9 = v32;
      theArray = v32;
      v32 = 0;
      goto LABEL_62;
    }
  }

  else
  {
    *&__dst = 0;
  }

  theArray = 0;
  sub_10001021C(&__dst);
  sub_100005978(&v28);
  sub_100005978(&key);
  v9 = 0;
LABEL_62:
  sub_100010250(&v32);
  sub_10001021C(&theDict);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (v37 < 0)
  {
LABEL_65:
    operator delete(v36[0]);
  }

LABEL_66:
  *a3 = 0u;
  a3[1] = 0u;
  if (v9)
  {
    v21 = 0;
    __dst = 0uLL;
    v40 = 0;
    while (CFArrayGetCount(v9) > v21)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
      if (ValueAtIndex)
      {
        v23 = CFGetTypeID(ValueAtIndex);
        if (v23 == CFStringGetTypeID())
        {
          v36[0] = 0;
          v36[1] = 0;
          v37 = 0;
          buf = 0uLL;
          v44 = 0;
          ctu::cf::assign();
          *v36 = buf;
          v37 = v44;
          sub_100005308(&__dst, v36);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }
        }
      }

      ++v21;
      v9 = theArray;
    }

    sub_10153218C(a3, &__dst);
    *&buf = &__dst;
    sub_1000087B4(&buf);
  }

  return sub_100010250(&theArray);
}

void sub_101531494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, const void *a26, const void *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  sub_10001021C((v40 - 144));
  sub_100005978(&a17);
  sub_100005978(&a25);
  sub_100010250(&a26);
  sub_10001021C(&a27);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

const void **sub_10153163C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 32);
  theArray = 0;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  sub_101531CDC(v26, v5);
  if (v27 >= 0)
  {
    v6 = HIBYTE(v27);
  }

  else
  {
    v6 = v26[1];
  }

  if (!v6)
  {
    theArray = 0;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  v7 = v24;
  sub_1000677C4(v24, v6 + 19);
  if (v25 < 0)
  {
    v7 = v24[0];
  }

  if (v27 >= 0)
  {
    v8 = v26;
  }

  else
  {
    v8 = v26[0];
  }

  memmove(v7, v8, v6);
  strcpy(v7 + v6, "/ISO3ToMCCMNC.plist");
  theDict = 0;
  sub_1009F7DEC((v5 + 40), (v5 + 464), v24, &theDict);
  theArray = 0;
  if (theDict)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      *__dst = *a2;
      v21 = *(a2 + 16);
    }

    if (SHIBYTE(v21) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v30 = v21;
    }

    v28 = 0;
    if (SHIBYTE(v30) < 0)
    {
      sub_100005F2C(&buf, __p[0], __p[1]);
    }

    else
    {
      buf = *__p;
      v34 = v30;
    }

    v31 = 0;
    if (ctu::cf::convert_copy())
    {
      v11 = v28;
      v28 = v31;
      v32 = v11;
      sub_100005978(&v32);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(buf);
    }

    v12 = v28;
    v22 = v28;
    v28 = 0;
    sub_100005978(&v28);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__dst[0]);
    }

    __p[0] = CFDictionaryGetValue(theDict, v12);
    *&buf = 0;
    v13 = sub_1001FA5E0(&buf, __p);
    theArray = buf;
    *&buf = 0;
    sub_100010250(v13);
    sub_100005978(&v22);
  }

  else
  {
    v9 = *(v5 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v24;
      if (v25 < 0)
      {
        v10 = v24[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Could not load %s as dictionary", &buf, 0xCu);
    }
  }

  sub_10001021C(&theDict);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
LABEL_38:
    operator delete(v26[0]);
  }

LABEL_39:
  *a3 = 0u;
  a3[1] = 0u;
  v14 = theArray;
  if (theArray)
  {
    v15 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v30 = 0;
    while (CFArrayGetCount(v14) > v15)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
      if (ValueAtIndex)
      {
        v17 = CFGetTypeID(ValueAtIndex);
        if (v17 == CFStringGetTypeID())
        {
          v26[0] = 0;
          v26[1] = 0;
          v27 = 0;
          buf = 0uLL;
          v34 = 0;
          ctu::cf::assign();
          *v26 = buf;
          v27 = v34;
          sub_100005308(__p, v26);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26[0]);
          }
        }
      }

      ++v15;
      v14 = theArray;
    }

    sub_10153218C(a3, __p);
    *&buf = __p;
    sub_1000087B4(&buf);
  }

  return sub_100010250(&theArray);
}

void sub_101531A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, const void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, const void *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a32);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_100010250(&a10);
  sub_10001021C(&a19);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101531B34(uint64_t a1)
{
  sub_101532E2C((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  v4 = (a1 + 8);
  sub_1000087B4(&v4);
  return a1;
}

uint64_t sub_101531B88(uint64_t a1)
{
  sub_101532EA0((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  v4 = (a1 + 8);
  sub_1000087B4(&v4);
  return a1;
}

void sub_101531BDC(uint64_t a1, dispatch_object_t object)
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

void sub_101531CDC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 488);
  if (v3)
  {
    v4 = *(*v3 + 152);

    v4();
  }

  else
  {
    v6 = *(a2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No CarrierBundleInterface, file a radar with the generated stackshot!", buf, 2u);
      v6 = *(a2 + 40);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "IsoMccCache missing CarrierBundleInterface", v7, 2u);
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_101531DE8(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_101531CDC(&v21, a2);
  v6 = HIBYTE(v23);
  if (v23 >= 0)
  {
    v7 = HIBYTE(v23);
  }

  else
  {
    v7 = v22;
  }

  if (!v7)
  {
    *a1 = 0;
    if ((v6 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_38;
  }

  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v8 = v19;
  sub_1000677C4(v19, v7 + 14);
  if (v20 < 0)
  {
    v8 = v19[0];
  }

  if (v23 >= 0)
  {
    v9 = &v21;
  }

  else
  {
    v9 = v21;
  }

  memmove(v8, v9, v7);
  strcpy(v8 + v7, "/ISO2MCC.plist");
  theDict = 0;
  sub_1009F7DEC((a2 + 40), (a2 + 464), v19, &theDict);
  *a1 = 0;
  if (theDict)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v15, *a3, *(a3 + 8));
    }

    else
    {
      *v15 = *a3;
      v16 = *(a3 + 16);
    }

    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(__p, v15[0], v15[1]);
    }

    else
    {
      *__p = *v15;
      v26 = v16;
    }

    v24 = 0;
    if (SHIBYTE(v26) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v30 = v26;
    }

    v27 = 0;
    if (ctu::cf::convert_copy())
    {
      v12 = v24;
      v24 = v27;
      v28 = v12;
      sub_100005978(&v28);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }

    v13 = v24;
    v17 = v24;
    v24 = 0;
    sub_100005978(&v24);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    __p[0] = CFDictionaryGetValue(theDict, v13);
    *buf = 0;
    v14 = sub_1001FA5E0(buf, __p);
    *a1 = *buf;
    *buf = 0;
    sub_100010250(v14);
    sub_100005978(&v17);
  }

  else
  {
    v10 = *(a2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v19;
      if (v20 < 0)
      {
        v11 = v19[0];
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not load %s as dictionary", buf, 0xCu);
    }
  }

  sub_10001021C(&theDict);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v23 < 0)
  {
LABEL_38:
    operator delete(v21);
  }
}

void sub_1015320D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, const void *a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_100005978(&a30);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100010250(v36);
  sub_10001021C(&a17);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10153218C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) == 1)
  {
    v5 = a1;
    sub_1000087B4(&v5);
    *(a1 + 24) = 0;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10004EFD0(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 24) = 1;
  return a1;
}

void sub_101532208(uint64_t a1)
{
  v4 = 0uLL;
  v5 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v3 = 0;
  (*(*a1 + 64))(a1, __p);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101532294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015322C4(uint64_t a1)
{
  v4 = 0uLL;
  v5 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v3 = 0;
  (*(*a1 + 72))(a1, __p);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101532350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101532380(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_101533EC8;
  v6[3] = &unk_101F49A68;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_101534330;
    v11 = &unk_101F49AA8;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1015342C0;
    v11 = &unk_101F49A88;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

void sub_1015324A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1015343A0;
  v6[3] = &unk_101F49AC8;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1015347BC;
    v11 = &unk_101F49B08;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_101534750;
    v11 = &unk_101F49AE8;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

void sub_1015325D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101534828;
  v7[3] = &unk_101F49B28;
  v7[4] = a1 + 8;
  v7[5] = v6;
  v8 = v7;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_101534330;
    v12 = &unk_101F49AA8;
    v13 = a4;
    v14 = &v8;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1015342C0;
    v12 = &unk_101F49A88;
    v13 = a4;
    v14 = &v8;
    dispatch_sync(v4, &block);
  }
}

void sub_1015326F8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v6 = 0uLL;
    v7 = 0;
    ctu::cf::assign();
    *__p = 0uLL;
    v5 = 0;
    (*(*a1 + 24))(a1, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_101532794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015327C4(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_101534D38;
  v6[3] = &unk_101F49BA8;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10006A65C;
    v11 = &unk_101F49BE8;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_100059700;
    v11 = &unk_101F49BC8;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  return v14 & 1;
}

void sub_1015328F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101535308;
  v7[3] = &unk_101F49C08;
  v7[4] = a1 + 8;
  v7[5] = v6;
  v8 = v7;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_101534330;
    v12 = &unk_101F49AA8;
    v13 = a4;
    v14 = &v8;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1015342C0;
    v12 = &unk_101F49A88;
    v13 = a4;
    v14 = &v8;
    dispatch_sync(v4, &block);
  }
}

void sub_101532A1C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_101535388;
  v6[3] = &unk_101F49C28;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_101534330;
    v11 = &unk_101F49AA8;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1015342C0;
    v11 = &unk_101F49A88;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

void sub_101532B44(uint64_t a1)
{
  if (*(a1 + 480))
  {
    sub_101533070((a1 + 88));
    sub_101532E2C((a1 + 152));
    sub_101532FB0((a1 + 216));
    sub_101532EA0((a1 + 280));
    sub_101532EA0((a1 + 344));
    sub_101532E2C((a1 + 408));
    v2 = *(a1 + 440);
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
    if (v2)
    {

      sub_100004A34(v2);
    }
  }
}

void sub_101532BBC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 104);
    v7 = 136315394;
    v8 = "ISO for MCC";
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s cache has %zu entries", &v7, 0x16u);
    v2 = *(a1 + 40);
  }

  sub_101532D38(a1 + 112, "String MCCs for ISO", v2);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 232);
    v7 = 136315394;
    v8 = "Integer MCCs for ISO";
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s cache has %zu entries", &v7, 0x16u);
    v4 = *(a1 + 40);
  }

  sub_101532D38(a1 + 240, "Subregion ISO for MCC + MNC", v4);
  sub_101532D38(a1 + 304, "ISO3s for MCC + MNC", *(a1 + 40));
  v6 = *(a1 + 40);

  sub_101532D38(a1 + 368, "String MCCMNCs for ISO3", v6);
}

void sub_101532D38(uint64_t a1, uint64_t a2, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 56);
    v7 = 136315394;
    v8 = a2;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "#I %s cache has %zu entries", &v7, 0x16u);
  }
}

void sub_101532DF4(uint64_t a1)
{
  sub_1015330E4(a1);

  operator delete();
}

void sub_101532E2C(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1003ECF44((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *sub_101532EA0(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        sub_101532F04(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_101532F04(uint64_t a1)
{
  v2 = (a1 + 64);
  sub_1000087B4(&v2);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

void *sub_101532F64(void *a1)
{
  sub_101532FB0(a1 + 5);
  v2 = a1[4];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_101532FB0(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1001E0640((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_101533024(uint64_t a1)
{
  sub_101533070((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_101533070(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1000DD108((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_1015330E4(uint64_t a1)
{
  *a1 = off_101F49640;
  v2 = *(a1 + 496);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 472);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 456);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 440);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_101532E2C((a1 + 408));
  v6 = *(a1 + 400);
  if (v6)
  {
    _Block_release(v6);
  }

  v13 = (a1 + 376);
  sub_1000087B4(&v13);
  sub_101532EA0((a1 + 344));
  v7 = *(a1 + 336);
  if (v7)
  {
    _Block_release(v7);
  }

  v13 = (a1 + 312);
  sub_1000087B4(&v13);
  sub_101532EA0((a1 + 280));
  v8 = *(a1 + 272);
  if (v8)
  {
    _Block_release(v8);
  }

  v13 = (a1 + 248);
  sub_1000087B4(&v13);
  sub_101532FB0((a1 + 216));
  v9 = *(a1 + 208);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(a1 + 184);
  if (v10)
  {
    *(a1 + 192) = v10;
    operator delete(v10);
  }

  sub_101532E2C((a1 + 152));
  v11 = *(a1 + 144);
  if (v11)
  {
    _Block_release(v11);
  }

  v13 = (a1 + 120);
  sub_1000087B4(&v13);
  sub_101533070((a1 + 88));
  v12 = *(a1 + 80);
  if (v12)
  {
    _Block_release(v12);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  IsoMccCacheInterface::~IsoMccCacheInterface(a1);
}

void sub_101533264(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015332B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015332F8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101533324(ServiceManager::Service *this)
{
  *this = off_101F49880;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101533380(ServiceManager::Service *this)
{
  *this = off_101F49880;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_101533400@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_101533444(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101531BDC(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101531BDC(v4, 0);
}

void sub_1015334E8(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void *sub_1015335FC(void *a1, const void *a2, uint64_t *a3)
{
  *a1 = 5;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  sub_10004EFD0((a1 + 1), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  if (a2)
  {
    v5 = _Block_copy(a2);
  }

  else
  {
    v5 = 0;
  }

  a1[4] = v5;
  a1[5] = a1 + 5;
  a1[6] = a1 + 5;
  a1[7] = 0;
  return a1;
}

void *sub_101533674(void *a1, const void *a2, uint64_t *a3)
{
  *a1 = 5;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  sub_10004EFD0((a1 + 1), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  if (a2)
  {
    v5 = _Block_copy(a2);
  }

  else
  {
    v5 = 0;
  }

  a1[4] = v5;
  a1[5] = a1 + 5;
  a1[6] = a1 + 5;
  a1[7] = 0;
  return a1;
}

uint64_t *sub_1015336EC(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 448));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_101533770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10153378C(void *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  v2 = *(*v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  sub_10000501C(&__p, "/cc/props/default_bundle");
  operator new();
}

void sub_101533A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_101533B04(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F49900;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101533B3C(void *a1, xpc_object_t *a2)
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

uint64_t sub_101533C2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101533CF4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F49980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101533D2C(void *a1)
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

uint64_t sub_101533D74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101533DC0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1001754E8(v2);
    operator delete();
  }

  return a1;
}

void sub_101533E0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101533E44(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1001754E8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_101533E88(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_101533EDC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10004EFD0(a1, a2[1], a2[2], 0xAAAAAAAAAAAAAAABLL * ((a2[2] - a2[1]) >> 3));
  if (*a2)
  {
    v6 = a2[6];
    if (v6 == a2 + 5)
    {
LABEL_27:
      v19 = 0u;
      v20 = 0u;
      (*(a2[4] + 16))(&v19);
      if (&v19 != a1 && (BYTE8(v20) & 1) != 0)
      {
        sub_100008234(a1, v19, *(&v19 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v19 + 1) - v19) >> 3));
      }

      v15 = a2[7];
      if (v15 >= *a2)
      {
        if (!v15)
        {
          __TUAssertTrigger();
          v15 = a2[7];
        }

        v16 = a2[5];
        v18 = *v16;
        v17 = v16[1];
        *(v18 + 8) = v17;
        *v17 = v18;
        a2[7] = v15 - 1;
        sub_1003ECF44((v16 + 2));
        operator delete(v16);
      }

      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(__p, *a3, *(a3 + 8));
      }

      else
      {
        *__p = *a3;
        *&v22 = *(a3 + 16);
      }

      *(&v22 + 1) = 0;
      v23 = 0uLL;
      sub_10004EFD0(&v22 + 8, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
      operator new();
    }

    v7 = 0;
    while (1)
    {
      v22 = 0u;
      v23 = 0u;
      *__p = 0u;
      if (*(v6 + 39) < 0)
      {
        sub_100005F2C(__p, *(v6 + 16), *(v6 + 24));
      }

      else
      {
        *__p = *(v6 + 16);
        *&v22 = *(v6 + 32);
      }

      v23 = 0uLL;
      *(&v22 + 1) = 0;
      sub_10004EFD0(&v22 + 8, *(v6 + 40), *(v6 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 48) - *(v6 + 40)) >> 3));
      if ((SBYTE7(v22) & 0x80u) == 0)
      {
        v8 = BYTE7(v22);
      }

      else
      {
        v8 = __p[1];
      }

      v9 = *(a3 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a3 + 8);
      }

      if (v8 == v9)
      {
        if ((SBYTE7(v22) & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if (v10 >= 0)
        {
          v12 = a3;
        }

        else
        {
          v12 = *a3;
        }

        v13 = memcmp(v11, v12, v8);
        v14 = v13 == 0;
        v7 |= v13 == 0;
        if (!v13 && (&v22 + 8) != a1)
        {
          sub_100008234(a1, *(&v22 + 1), v23, 0xAAAAAAAAAAAAAAABLL * ((v23 - *(&v22 + 1)) >> 3));
          v14 = 1;
          v7 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      *&v19 = &v22 + 8;
      sub_1000087B4(&v19);
      if (SBYTE7(v22) < 0)
      {
        operator delete(__p[0]);
      }

      if (v14)
      {
        break;
      }

      v6 = *(v6 + 8);
      if (v6 == a2 + 5)
      {
        goto LABEL_27;
      }
    }

    if ((v7 & 1) == 0)
    {
      __p[0] = a1;
      sub_1000087B4(__p);
    }
  }
}

void sub_101534228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12 == 1)
  {
    __p = &a9;
    sub_1000087B4(&__p);
  }

  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

void sub_1015342C0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  sub_100071A6C(v2);
  *v2 = v3;
  *(v2 + 16) = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  sub_1000087B4(&v5);
}

void sub_101534330(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  sub_100071A6C(v2);
  *v2 = v3;
  *(v2 + 16) = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  sub_1000087B4(&v5);
}

void sub_1015343A0(uint64_t a1@<X0>, void **a2@<X8>)
{
  v3 = *(a1 + 40);
  v5 = *v3;
  v4 = v3[1];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_1001B964C(a2, v5[23], v5[24], (v5[24] - v5[23]) >> 1);
  if (v5[22])
  {
    v6 = v5[28];
    if (v6 == v5 + 27)
    {
LABEL_29:
      *v21 = 0u;
      v22 = 0u;
      (*(v5[26] + 16))(v21);
      if (v21 != a2 && (BYTE8(v22) & 1) != 0)
      {
        sub_1001BA4EC(a2, v21[0], v21[1], (v21[1] - v21[0]) >> 1);
      }

      v15 = v5[29];
      if (v15 >= v5[22])
      {
        if (!v15)
        {
          __TUAssertTrigger();
          v15 = v5[29];
        }

        v16 = v5[27];
        v18 = *v16;
        v17 = v16[1];
        *(v18 + 8) = v17;
        *v17 = v18;
        v5[29] = v15 - 1;
        sub_1001E0640((v16 + 2));
        operator delete(v16);
      }

      if (*(v4 + 23) < 0)
      {
        sub_100005F2C(__dst, *v4, *(v4 + 1));
      }

      else
      {
        v19 = *v4;
        __p[0] = *(v4 + 2);
        *__dst = v19;
      }

      __p[1] = 0;
      v25 = 0uLL;
      sub_1001B964C(&__p[1], *a2, a2[1], (a2[1] - *a2) >> 1);
      operator new();
    }

    v7 = 0;
    while (1)
    {
      *__p = 0u;
      v25 = 0u;
      *__dst = 0u;
      if (*(v6 + 39) < 0)
      {
        sub_100005F2C(__dst, *(v6 + 16), *(v6 + 24));
      }

      else
      {
        *__dst = *(v6 + 16);
        __p[0] = *(v6 + 32);
      }

      v25 = 0uLL;
      __p[1] = 0;
      sub_1001B964C(&__p[1], *(v6 + 40), *(v6 + 48), (*(v6 + 48) - *(v6 + 40)) >> 1);
      if (SHIBYTE(__p[0]) >= 0)
      {
        v8 = HIBYTE(__p[0]);
      }

      else
      {
        v8 = __dst[1];
      }

      v9 = *(v4 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v4 + 1);
      }

      if (v8 == v9)
      {
        if (SHIBYTE(__p[0]) >= 0)
        {
          v11 = __dst;
        }

        else
        {
          v11 = __dst[0];
        }

        if (v10 >= 0)
        {
          v12 = v4;
        }

        else
        {
          v12 = *v4;
        }

        v13 = memcmp(v11, v12, v8);
        v14 = v13 == 0;
        v7 |= v13 == 0;
        if (!v13 && &__p[1] != a2)
        {
          sub_1001BA4EC(a2, __p[1], v25, (v25 - __p[1]) >> 1);
          v14 = 1;
          v7 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      if (__p[1])
      {
        *&v25 = __p[1];
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v14)
      {
        break;
      }

      v6 = *(v6 + 8);
      if (v6 == v5 + 27)
      {
        goto LABEL_29;
      }
    }

    if ((v7 & 1) == 0)
    {
      v20 = *a2;
      if (*a2)
      {
        a2[1] = v20;
        operator delete(v20);
      }
    }
  }
}

void sub_1015346B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12 == 1 && __p)
  {
    operator delete(__p);
  }

  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

double sub_101534750(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result = *&v5;
  *v2 = v5;
  *(v2 + 16) = v6;
  return result;
}

double sub_1015347BC(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result = *&v5;
  *v2 = v5;
  *(v2 + 16) = v6;
  return result;
}

void sub_101534828(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  sub_1001C77E4(v5, v3[1], v3[2]);
  sub_1015348A8(a2, (v4 + 240), v5);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1015348A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10004EFD0(a1, a2[1], a2[2], 0xAAAAAAAAAAAAAAABLL * ((a2[2] - a2[1]) >> 3));
  if (*a2)
  {
    v6 = a2[6];
    if (v6 == a2 + 5)
    {
LABEL_39:
      v24 = 0u;
      v25 = 0u;
      (*(a2[4] + 16))(&v24);
      if (&v24 != a1 && (BYTE8(v25) & 1) != 0)
      {
        sub_100008234(a1, v24, *(&v24 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v24 + 1) - v24) >> 3));
      }

      v20 = a2[7];
      if (v20 >= *a2)
      {
        if (!v20)
        {
          __TUAssertTrigger();
          v20 = a2[7];
        }

        v21 = a2[5];
        v23 = *v21;
        v22 = v21[1];
        *(v23 + 8) = v22;
        *v22 = v23;
        a2[7] = v20 - 1;
        sub_101532F04(v21);
      }

      sub_1001C7444(__dst, a3);
      v29 = 0uLL;
      v30 = 0;
      sub_10004EFD0(&v29, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
      operator new();
    }

    v7 = 0;
    while (1)
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      *__dst = 0u;
      *__p = 0u;
      sub_1001C7444(__dst, (v6 + 16));
      v30 = 0;
      v29 = 0uLL;
      sub_10004EFD0(&v29, *(v6 + 64), *(v6 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 72) - *(v6 + 64)) >> 3));
      if (SHIBYTE(__p[0]) >= 0)
      {
        v8 = HIBYTE(__p[0]);
      }

      else
      {
        v8 = __dst[1];
      }

      v9 = *(a3 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a3 + 8);
      }

      if (v8 != v9)
      {
        goto LABEL_32;
      }

      v11 = SHIBYTE(__p[0]) >= 0 ? __dst : __dst[0];
      v12 = v10 >= 0 ? a3 : *a3;
      if (memcmp(v11, v12, v8))
      {
        goto LABEL_32;
      }

      if (v28 >= 0)
      {
        v13 = HIBYTE(v28);
      }

      else
      {
        v13 = v28;
      }

      v14 = *(a3 + 47);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a3 + 32);
      }

      if (v13 == v14)
      {
        if (v28 >= 0)
        {
          v16 = &__p[1];
        }

        else
        {
          v16 = __p[1];
        }

        if (v15 >= 0)
        {
          v17 = (a3 + 24);
        }

        else
        {
          v17 = *(a3 + 24);
        }

        v18 = memcmp(v16, v17, v13);
        v19 = v18 == 0;
        v7 |= v18 == 0;
        if (!v18 && &v29 != a1)
        {
          sub_100008234(a1, v29, *(&v29 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v29 + 1) - v29) >> 3));
          v19 = 1;
          v7 = 1;
        }
      }

      else
      {
LABEL_32:
        v19 = 0;
      }

      *&v24 = &v29;
      sub_1000087B4(&v24);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v19)
      {
        break;
      }

      v6 = *(v6 + 8);
      if (v6 == a2 + 5)
      {
        goto LABEL_39;
      }
    }

    if ((v7 & 1) == 0)
    {
      __dst[0] = a1;
      sub_1000087B4(__dst);
    }
  }
}

void sub_101534C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, void **a15)
{
  if (a14 == 1)
  {
    a15 = &a11;
    sub_1000087B4(&a15);
  }

  sub_1000087B4(&a15);
  _Unwind_Resume(a1);
}

__n128 sub_101534CD4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

BOOL sub_101534D38(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*v1)[54];
  if (!v2)
  {
    operator new();
  }

  return sub_10031B7D4(v2, v1[1]) != 0;
}

void sub_101535258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_10001021C(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void sub_101535308(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  sub_1001C77E4(v5, v3[1], v3[2]);
  sub_1015348A8(a2, (v4 + 304), v5);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_101535650(uint64_t a1)
{
  *a1 = off_101F49C58;
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;

  v3 = *(a1 + 184);
  *(a1 + 184) = 0;

  sub_10006DCAC(a1 + 208, *(a1 + 216));
  v4 = *(a1 + 200);
  if (v4)
  {
    sub_100004A34(v4);
  }

  NetworkUsageStrategy::~NetworkUsageStrategy(a1);
}

void sub_1015356E4(uint64_t a1)
{
  sub_101535650(a1);

  operator delete();
}

void sub_10153571C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      {
        v10[0] = v6;
        v10[1] = v5;
        v7 = &v8;
      }

      else
      {
        v7 = v10;
      }

      *v7 = 0;
      *(v7 + 1) = 0;
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015358A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015358D8(uint64_t a1)
{
  if (!*(a1 + 176))
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I start collect", buf, 2u);
    }

    v3 = [[NWStatsManager alloc] initWithQueue:*(a1 + 24)];
    v4 = *(a1 + 176);
    *(a1 + 176) = v3;

    v5 = *(a1 + 176);
    if (v5)
    {
      [v5 setDelegate:*(a1 + 184)];
      v12[0] = kNWStatsSelectInterfaceCellular;
      v12[1] = kNWStatsParameterMappingAppStateMonitoring;
      *buf = &__kCFBooleanTrue;
      v14 = &__kCFBooleanFalse;
      v12[2] = kNWStatsParameterMappingUseNEHelper;
      v12[3] = kNWStatsParameterMappingAvoidCoalitions;
      v15 = &__kCFBooleanTrue;
      v16 = &__kCFBooleanTrue;
      v6 = [NSDictionary dictionaryWithObjects:buf forKeys:v12 count:4];
      v7 = [*(a1 + 176) configure:v6];
      if (v7)
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 136446210;
          v11 = strerror(v7);
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "unable to configure monitoring, reason %{public}s", &v10, 0xCu);
        }
      }
    }

    else
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Not starting collect. Unable to allocate resource.", buf, 2u);
      }
    }
  }

  if ((*(*a1 + 72))(a1))
  {

    NetworkUsageStrategy::setupThresholdMonitor_sync(a1);
  }
}

void sub_101535B54(uint64_t a1)
{
  [*(a1 + 176) setDelegate:0];
  (*(*a1 + 56))(a1);
  v2 = *(a1 + 128);
  if (v2 != (a1 + 136))
  {
    do
    {
      (*(*a1 + 64))(a1, v2 + 4);
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 136));
  }

  v6 = *(a1 + 208);
  if (v6 != (a1 + 216))
  {
    do
    {
      sub_101535C7C(a1, *(v6 + 7), 0);
      v7 = v6[1];
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
          v8 = v6[2];
          v5 = *v8 == v6;
          v6 = v8;
        }

        while (!v5);
      }

      v6 = v8;
    }

    while (v8 != (a1 + 216));
  }
}

void sub_101535C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 176);
  v21 = kNWStatsParameterThresholds;
  v7 = [NSNumber numberWithUnsignedInt:a2];
  v19 = v7;
  v8 = [NSNumber numberWithUnsignedLongLong:a3];
  v20 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v11 = [v6 configure:v10];

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218498;
    v14 = a3;
    v15 = 1024;
    v16 = v4;
    v17 = 2082;
    v18 = strerror(v11);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Threshold monitor was set to %llu for interface %d: %{public}s", &v13, 0x1Cu);
  }
}

void sub_101535E48(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = (a1 + 136);
  if (v1 != (a1 + 136))
  {
    do
    {
      v4 = *(v1 + 10);
      if ((v4 & 0x80000000) == 0 && v4 != *(a1 + 120))
      {
        v5 = *(a1 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v10 = v4;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I creating tethering source on %d since it differs from internet source", buf, 8u);
          v4 = *(v1 + 10);
        }

        sub_101535C7C(a1, v4, 0x100000);
      }

      v6 = v1[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
    }

    while (v7 != v2);
  }
}

void sub_101535F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != *(a1 + 120))
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I stopping tethering source %d since it differs from internet source", v6, 8u);
      v2 = *(a2 + 8);
    }

    sub_101535C7C(a1, v2, 0);
  }
}

void sub_101536068(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 euuid];
  v5 = [v4 UUIDString];
  v6 = [[NSString alloc] initWithUTF8String:"67A03811-DB0A-594E-C2AE-8B0517EDF26F"];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = v3;
    if ([v8 snapshotReason] == 2)
    {
      *buf = [v8 interfaceIndex];
      if (sub_10012B6B8(a1 + 208, buf))
      {
        sub_101535C7C(a1, [v8 interfaceIndex], 0);
      }
    }

    else
    {
      *buf = [v8 interfaceIndex];
      sub_1000C4284(a1 + 208, buf);
      if (v9)
      {
        v10 = *(a1 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v8 interfaceIndex];
          *buf = 67109120;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Monitoring ims interface index %d", buf, 8u);
        }

        sub_101535C7C(a1, [v8 interfaceIndex], 0x100000);
      }
    }
  }

  v86 = v3;
  if ([v86 failedConsistencyChecks])
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v86 uuid];
      v14 = [v13 UUIDString];
      if (v14)
      {
        v6 = [v86 uuid];
        v7 = [v6 UUIDString];
        v15 = v7;
        v16 = [v7 UTF8String];
      }

      else
      {
        v16 = "unknown uuid";
      }

      v42 = [v86 interfaceIndex];
      *buf = 136446466;
      *&buf[4] = v16;
      *&buf[12] = 1024;
      *&buf[14] = v42;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Snapshot (%{public}s) for interface %d failed consistency checks", buf, 0x12u);
      if (v14)
      {
      }
    }

    goto LABEL_138;
  }

  if (![v86 deltaAccountingRxCellularBytes] && !objc_msgSend(v86, "deltaAccountingTxCellularBytes"))
  {
    goto LABEL_138;
  }

  if ([v86 interfaceIndex] != *(a1 + 120))
  {
    v17 = [v86 interfaceIndex];
    v18 = *(a1 + 128);
    v19 = (a1 + 136);
    if (v18 != (a1 + 136))
    {
      while (*(v18 + 10) != v17)
      {
        v20 = v18[1];
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
            v21 = v18[2];
            v74 = *v21 == v18;
            v18 = v21;
          }

          while (!v74);
        }

        v18 = v21;
        if (v21 == v19)
        {
          goto LABEL_28;
        }
      }
    }

    if (v18 != v19)
    {
      NetworkUsageStrategy::updateTetheringDataUsage_sync(a1, v18 + 4);
      goto LABEL_138;
    }
  }

LABEL_28:
  v95 = 0;
  v101 = 0u;
  memset(buf, 0, sizeof(buf));
  memset(v94, 0, sizeof(v94));
  v93 = 0xFFFFFFFFFFFFFFFFLL;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  *__p_8 = 0u;
  memset(v100, 0, sizeof(v100));
  *buf = [v86 deltaAccountingRxCellularBytes];
  *&buf[8] = [v86 deltaAccountingTxCellularBytes];
  BYTE1(v100[4]) = [v86 interfaceUltraConstrained];
  LODWORD(v93) = [v86 epid];
  DWORD1(v93) = [v86 processID];
  objc_opt_class();
  BYTE8(v93) = objc_opt_isKindOfClass() & 1;
  objc_opt_class();
  BYTE9(v93) = objc_opt_isKindOfClass() & 1;
  BYTE10(v93) = [v86 interfaceCellularViaAnyFallback];
  v22 = [v86 euuid];
  if (v22)
  {
    v23 = [v86 euuid];
    v24 = [v23 UUIDString];
    v25 = v24;
    v26 = [v24 UTF8String];
    v27 = strlen(v26);
    if (v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v28 = v27;
    if (v27 >= 0x17)
    {
      operator new();
    }

    BYTE7(v89) = v27;
    if (v27)
    {
      memmove(&__dst, v26, v27);
    }

    *(&__dst + v28) = 0;
    v29 = *(a1 + 152);
    v91.__r_.__value_.__s.__data_[0] = 0;
    v30 = sub_100D5E7A8(v29, (a1 + 160), &__dst);
    if (SBYTE7(v89) < 0)
    {
      operator delete(__dst);
    }

    if ((a1 + 160) != v30)
    {
      LOBYTE(v100[4]) = 1;
    }
  }

  v31 = [v86 attributedEntity];
  v32 = v31 == 0;

  if (v32)
  {
    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__dst) = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#N attributed entity is not valid", &__dst, 2u);
    }

    v38 = [v86 processName];
    v39 = v38 == 0;

    if (v39)
    {
      v43 = *(a1 + 40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__dst) = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#N process name is not valid", &__dst, 2u);
      }
    }

    else
    {
      v40 = [v86 processName];
      v41 = v40;
      sub_100016890(v94, [v40 UTF8String]);
    }
  }

  else
  {
    v33 = [v86 attributedEntity];
    v34 = v33;
    sub_100016890(&v94[1], [v33 UTF8String]);

    v35 = [v86 processName];
    v36 = v35;
    sub_100016890(v94, [v35 UTF8String]);
  }

  LOBYTE(v95) = [v86 attributionReason] == 0;
  v44 = [v86 uuid];
  if (v44)
  {
  }

  else
  {
    v45 = [v86 euuid];
    v46 = v45 == 0;

    if (v46)
    {
      v47 = *(a1 + 40);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__dst) = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#N snapshot uuid & euuid are not valid", &__dst, 2u);
      }
    }
  }

  v48 = [v86 uuid];
  v49 = v48 == 0;

  if (!v49)
  {
    v50 = [v86 uuid];
    v51 = [v50 UUIDString];
    v52 = v51;
    sub_100016890(&v96, [v51 UTF8String]);
  }

  v53 = [v86 euuid];
  v54 = v53 == 0;

  if (!v54)
  {
    v55 = [v86 euuid];
    v56 = [v55 UUIDString];
    v57 = v56;
    sub_100016890((&v97 + 8), [v56 UTF8String]);
  }

  v58 = [v86 localAddress];
  v59 = v58 == 0;

  if (!v59)
  {
    v91.__r_.__value_.__r.__words[0] = 0;
    v60 = [v86 localAddress];
    v61 = v60;
    v91.__r_.__value_.__r.__words[0] = v60;
    if (v60)
    {
      CFRetain(v60);
    }

    sockaddrToString(&v91, &__dst);
    if (SHIBYTE(v100[0]) < 0)
    {
      operator delete(__p_8[0]);
    }

    *__p_8 = __dst;
    v100[0] = v89;
    sub_10002D760(&v91.__r_.__value_.__l.__data_);
  }

  v62 = [v86 remoteAddress];
  v63 = v62 == 0;

  if (!v63)
  {
    v91.__r_.__value_.__r.__words[0] = 0;
    v64 = [v86 remoteAddress];
    v65 = v64;
    v91.__r_.__value_.__r.__words[0] = v64;
    if (v64)
    {
      CFRetain(v64);
    }

    sockaddrToString(&v91, &__dst);
    if (SHIBYTE(v100[3]) < 0)
    {
      operator delete(v100[1]);
    }

    *&v100[1] = __dst;
    v100[3] = v89;
    sub_1005C11CC(&v101, &v91.__r_.__value_.__l.__data_);
    sub_10002D760(&v91.__r_.__value_.__l.__data_);
  }

  *(&v101 + 1) = [v86 sourceIdentifier];
  v66 = [v86 snapshotReason];
  memset(&v90, 0, sizeof(v90));
  if (SHIBYTE(v94[1].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v90, v94[1].__r_.__value_.__l.__data_, v94[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v90 = v94[1];
  }

  size = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v90.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::operator=(&v90, v94);
  }

  __dst = 0u;
  v89 = 0u;
  sub_1008064DC(&v90.__r_.__value_.__l.__data_, &__dst);
  if (BYTE8(v89) == 1)
  {
    std::string::operator=(&v94[1], &__dst);
  }

  else
  {
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &v90;
    }

    else
    {
      v68 = v90.__r_.__value_.__r.__words[0];
    }

    v69 = sub_100806234(v68);
    if (*v69)
    {
      sub_100016890(&v94[1], v69);
    }
  }

  if (BYTE8(v89) == 1 && SBYTE7(v89) < 0)
  {
    operator delete(__dst);
  }

  sub_1015371CC(&__dst, buf);
  v70 = *(a1 + 56);
  if (v70)
  {
    v71 = std::__shared_weak_count::lock(v70);
    if (v71)
    {
      v72 = v71;
      v73 = *(a1 + 48);
      if (v73)
      {
        (*(*v73 + 16))(v73, &__dst, v66 == 2);
      }

      sub_100004A34(v72);
    }
  }

  sub_100DB8D40(&__dst);
  if (SHIBYTE(v94[1].__r_.__value_.__r.__words[2]) < 0 && v94[1].__r_.__value_.__l.__size_ == 26)
  {
    v74 = *v94[1].__r_.__value_.__l.__data_ == 0x6C7070612E6D6F63 && *(v94[1].__r_.__value_.__r.__words[0] + 8) == 0x7375617461642E65;
    v75 = v74 && *(v94[1].__r_.__value_.__r.__words[0] + 16) == 0x646469682E656761;
    if (v75 && *(v94[1].__r_.__value_.__r.__words[0] + 24) == 28261)
    {
      if ((SHIBYTE(v94[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v87 = v94[0];
        goto LABEL_124;
      }

      v81 = v94[0].__r_.__value_.__l.__size_;
      v77 = v94[0].__r_.__value_.__r.__words[0];
LABEL_123:
      sub_100005F2C(&v87, v77, v81);
LABEL_124:
      v82 = *(a1 + 56);
      if (v82)
      {
        v83 = std::__shared_weak_count::lock(v82);
        if (v83)
        {
          v84 = v83;
          v85 = *(a1 + 48);
          if (v85)
          {
            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&v91, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
            }

            else
            {
              v91 = v87;
            }

            (*(*v85 + 32))(v85, &v91);
            if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v91.__r_.__value_.__l.__data_);
            }
          }

          sub_100004A34(v84);
        }
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      goto LABEL_135;
    }
  }

  if (SHIBYTE(v94[0].__r_.__value_.__r.__words[2]) < 0 && v94[0].__r_.__value_.__l.__size_ == 26)
  {
    v77 = v94[0].__r_.__value_.__r.__words[0];
    v78 = *v94[0].__r_.__value_.__l.__data_ == 0x6C7070612E6D6F63 && *(v94[0].__r_.__value_.__r.__words[0] + 8) == 0x7375617461642E65;
    v79 = v78 && *(v94[0].__r_.__value_.__r.__words[0] + 16) == 0x646469682E656761;
    if (v79 && *(v94[0].__r_.__value_.__r.__words[0] + 24) == 28261)
    {
      v81 = 26;
      goto LABEL_123;
    }
  }

LABEL_135:
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  sub_100DB8D40(buf);
LABEL_138:
}

void sub_101536C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, char a63)
{
  sub_100004A34(v64);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  sub_100DB8D40(&a63);

  _Unwind_Resume(a1);
}

void sub_101536E38(uint64_t a1, int a2)
{
  (*(*a1 + 80))(a1, 1);
  v4 = *(a1 + 120);
  if ((v4 & 0x80000000) == 0 && a2 == v4)
  {
    v5 = *(a1 + 128);
    if (v5 != (a1 + 136))
    {
      do
      {
        if (*(v5 + 10) == *(a1 + 120))
        {
          NetworkUsageStrategy::updateTetheringDataUsage_sync(a1, v5 + 4);
        }

        v6 = v5[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != (a1 + 136));
    }
  }
}

void sub_101536F04(uint64_t a1)
{
  v2 = [*(a1 + 176) refresh:0];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Refreshing flows failed %d", v5, 8u);
    }
  }
}

void sub_101536FC0(void *a1)
{
  v2 = *a1;
  v6 = v2;
  v3 = v2[2];
  v4 = v2[3];
  v5 = (*v2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v3(v5, v2[4]);
  sub_101537068(&v6);
  sub_100EC0D3C(a1);
}

void sub_10153704C(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_101537068(va);
  sub_100EC0D3C(v1);
}

uint64_t *sub_101537068(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1015370C4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v5 = (**a1 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v3(v5, *(v2 + 32));
  sub_101537174(v2);

  sub_100EC0D3C(a1);
}

uint64_t sub_101537174(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      sub_100004A34(v1);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1015371CC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 27) = *(a2 + 27);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  *(a1 + 96) = *(a2 + 96);
  if (*(a2 + 127) < 0)
  {
    sub_100005F2C((a1 + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100005F2C((a1 + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v9 = a2[8];
    *(a1 + 144) = *(a2 + 18);
    *(a1 + 128) = v9;
  }

  if (*(a2 + 175) < 0)
  {
    sub_100005F2C((a1 + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 21);
    *(a1 + 152) = v10;
  }

  if (*(a2 + 199) < 0)
  {
    sub_100005F2C((a1 + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v11 = a2[11];
    *(a1 + 192) = *(a2 + 24);
    *(a1 + 176) = v11;
  }

  *(a1 + 200) = *(a2 + 100);
  sub_10002D728((a1 + 208), a2 + 26);
  *(a1 + 216) = *(a2 + 27);
  return a1;
}

void sub_101537318(_Unwind_Exception *exception_object)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1015373B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F49CE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101537408(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10153741C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10153776C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, dispatch_object_t a12, dispatch_object_t a13, void *__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

void sub_1015378D4(void *a1)
{
  *a1 = off_101F49D30;
  v2 = a1[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  AudioRoutingInterface::~AudioRoutingInterface(a1);
}

void sub_10153795C(void *a1)
{
  sub_1015378D4(a1);

  operator delete();
}

void sub_101537994(uint64_t a1, dispatch_object_t object)
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

void sub_101537A94(uint64_t a1)
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

void sub_101537B88(uint64_t a1)
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

void sub_101537C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101537D78(uint64_t a1)
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

void sub_101537E68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101537F68(uint64_t a1)
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

void sub_10153805C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 97));
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Voice mute: %s", &v5, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 96));
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I TTY enabled: %s", &v5, 0xCu);
  }
}

void sub_10153818C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015381E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101538220(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10153824C(ServiceManager::Service *this)
{
  *this = off_101F49EF8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1015382A8(ServiceManager::Service *this)
{
  *this = off_101F49EF8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_101538328@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10153836C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101537994(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101537994(v4, 0);
}

void sub_10153840C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015384EC(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_101538600(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 80);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 24))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  ctu::RestModule::disconnect((v2 + 64));
  sub_1000FF844(&v8);
  return sub_1000049E0(&v7);
}

void sub_1015386F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10153872C(void *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015389F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, dispatch_group_t group, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  sub_1000062D4(&a24);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v24);
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101538AD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F49F78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101538B54(AudioRoutingCommandDriverDelegateInterface *this)
{
  *this = off_101F4A020;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioRoutingCommandDriverDelegateInterface::~AudioRoutingCommandDriverDelegateInterface(this);
}

void sub_101538BB0(AudioRoutingCommandDriverDelegateInterface *this)
{
  *this = off_101F4A020;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioRoutingCommandDriverDelegateInterface::~AudioRoutingCommandDriverDelegateInterface(this);

  operator delete();
}

void sub_101538C20(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = "is not";
          if (a2)
          {
            v9 = "is";
          }

          v10 = 136315138;
          v11 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Driver %s ready", &v10, 0xCu);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_101538D3C(AudioRoutingCommandDriverDelegateInterface *this)
{
  *this = off_101F4A020;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioRoutingCommandDriverDelegateInterface::~AudioRoutingCommandDriverDelegateInterface(this);
}

void sub_101538D98(AudioRoutingCommandDriverDelegateInterface *this)
{
  *this = off_101F4A020;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioRoutingCommandDriverDelegateInterface::~AudioRoutingCommandDriverDelegateInterface(this);

  operator delete();
}

xpc_object_t *sub_101538E08(xpc_object_t *a1)
{
  xpc_release(a1[1]);
  a1[1] = 0;
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

__n128 sub_101538EC8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4A048;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101538F00(void *a1)
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

uint64_t sub_101538F48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101538F94(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  (*(**(v1 + 80) + 16))(*(v1 + 80));
  operator delete();
}

void sub_101539074(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 80) + 40))(*(**a1 + 80), *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

void sub_10153911C(BOOL **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  *(v2 + 96) = **a1;
  (*(**(v2 + 80) + 48))(*(v2 + 80));
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v10 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v10 = v5;
LABEL_9:
  xpc_release(v4);
  object = xpc_BOOL_create(*v1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v11 = 0uLL;
  v12 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v7 = 0;
  v8[0] = &v10;
  v8[1] = __p;
  sub_10000F688(v8, &object, &v11);
  xpc_release(v11);
  *&v11 = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  object = 0;
  __p[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  v8[0] = xpc_null_create();
  sub_10002A37C(74, __p, v8);
  xpc_release(v8[0]);
  xpc_release(__p[0]);
  xpc_release(v10);
  operator delete();
}

void sub_101539314(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a17);
  operator delete();
}

void sub_1015393B4(uint64_t *a1)
{
  v3 = a1;
  v1 = *a1;
  object = xpc_BOOL_create(*(**a1 + 96));
  if (!object)
  {
    object = xpc_null_create();
  }

  v4[0] = *(v1 + 8);
  v4[1] = "kAudioBoolean";
  sub_10000F688(v4, &object, &v6);
  xpc_release(v6);
  v6 = 0;
  xpc_release(object);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_10153946C(BOOL **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  *(v2 + 97) = **a1;
  (*(**(v2 + 80) + 64))(*(v2 + 80));
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v10 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v10 = v5;
LABEL_9:
  xpc_release(v4);
  object = xpc_BOOL_create(*v1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v11 = 0uLL;
  v12 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v7 = 0;
  v8[0] = &v10;
  v8[1] = __p;
  sub_10000F688(v8, &object, &v11);
  xpc_release(v11);
  *&v11 = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  object = 0;
  __p[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  v8[0] = xpc_null_create();
  sub_10002A37C(73, __p, v8);
  xpc_release(v8[0]);
  xpc_release(__p[0]);
  xpc_release(v10);
  operator delete();
}

void sub_101539664(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a17);
  operator delete();
}

void sub_101539704(uint64_t *a1)
{
  v3 = a1;
  v1 = *a1;
  object = xpc_BOOL_create(*(**a1 + 97));
  if (!object)
  {
    object = xpc_null_create();
  }

  v4[0] = *(v1 + 8);
  v4[1] = "kAudioMuteState";
  sub_10000F688(v4, &object, &v6);
  xpc_release(v6);
  v6 = 0;
  xpc_release(object);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1015397BC(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 80) + 72))(*(**a1 + 80), *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

void sub_101539980(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1015399A4(uint64_t a1)
{
  *a1 = off_101F4A0C8;
  sub_100359978(a1 + 168, *(a1 + 176));
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_10153C1DC((a1 + 112), 0);
  v5 = *(a1 + 96);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  CarrierSpaceAuthFlowManagerInterface::~CarrierSpaceAuthFlowManagerInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_101539AB4(uint64_t a1)
{
  sub_1015399A4(a1);

  operator delete();
}

uint64_t sub_101539AEC(uint64_t a1, uint64_t a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v36, kCtLoggingSystemName, "carrier.space.auth");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *a3;
  *(a1 + 24) = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v34, &v36);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v34);
  ctu::OsLogLogger::~OsLogLogger(v34);
  ctu::OsLogContext::~OsLogContext(&v36);
  v35[0] = off_101E2A828;
  v35[1] = sub_10153A130;
  v35[3] = v35;
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v7) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v35);
  *a1 = off_101F4A0C8;
  v8 = *a2;
  *(a1 + 56) = *a2;
  v9 = *(a2 + 8);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 56);
  }

  ServiceMap = Registry::getServiceMap(v8);
  v11 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v36.var0 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v36);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  std::mutex::unlock(v11);
  *(a1 + 72) = v18;
  *(a1 + 80) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v17);
  }

  v19 = Registry::getServiceMap(*(a1 + 56));
  v20 = v19;
  if (v21 < 0)
  {
    v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  std::mutex::lock(v19);
  v36.var0 = v21;
  v25 = sub_100009510(&v20[1].__m_.__sig, &v36);
  if (v25)
  {
    v27 = v25[3];
    v26 = v25[4];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
      v28 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v27 = 0;
  }

  std::mutex::unlock(v20);
  v26 = 0;
  v28 = 1;
LABEL_26:
  sub_10000501C(&v36, "CarrierSpace");
  (*(*v27 + 16))(v27, &v36);
  if ((v37 & 0x80000000) == 0)
  {
    if (v28)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  operator delete(v36.var0);
  if ((v28 & 1) == 0)
  {
LABEL_28:
    sub_100004A34(v26);
  }

LABEL_29:
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_10000501C(&__p, "CarrierSpaceAuthFlowManager");
  v29 = *(a1 + 24);
  v31 = v29;
  if (v29)
  {
    dispatch_retain(v29);
  }

  ctu::RestModule::RestModule();
  if (v31)
  {
    dispatch_release(v31);
  }

  if (v33 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  return a1;
}

const char *sub_10153A130(int a1)
{
  v1 = "carrier.space.auth.?";
  if (a1 == 2)
  {
    v1 = "carrier.space.auth.2";
  }

  if (a1 == 1)
  {
    return "carrier.space.auth.1";
  }

  else
  {
    return v1;
  }
}

void sub_10153A15C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Starting", v2, 2u);
  }
}

void sub_10153A1BC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 56));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10081FB5C(a1 + 168);
  sub_10000501C(&__p, "/cc/events/app_state_changed");
  operator new();
}

void sub_10153A300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1000062D4(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10153A348(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Shutting down", v4, 2u);
  }

  return ctu::RestModule::disconnect((a1 + 152));
}

void sub_10153A3B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Migrating", __p, 2u);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    __p[0] = 0;
    __p[1] = 0;
    v8[0] = 0;
    sub_10000501C(v11, "com.apple.carrierspace.token");
    (*(*v3 + 32))(__p, v3, v11);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    v4 = __p[0];
    v5 = __p[1];
    if (__p[0] == __p[1])
    {
      if (!__p[0])
      {
        return;
      }

      __p[1] = __p[0];
    }

    else
    {
      v6 = *(a1 + 88);
      if (v6)
      {
        sub_10000501C(__p, "com.apple.carrierspace.token");
        (*(*v6 + 24))(v6, __p);
        if (SHIBYTE(v8[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v9 = 0u;
      v10 = 0u;
      *__p = 0u;
      *v8 = 0u;
      sub_1001122C4(__p, v4, v5, v5 - v4);
      sub_10153A5A4(*(a1 + 88), __p);
      sub_1003EC530(&v10);
      if (v8[1])
      {
        *&v9 = v8[1];
        operator delete(v8[1]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (!v4)
      {
        return;
      }
    }

    operator delete(v4);
  }
}

void sub_10153A550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153A5A4(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    sub_10000501C(v5, "com.apple.carrierspace.authinfo");
    sub_101348F70(a2, __p);
    (*(*a1 + 16))(a1, v5, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v6 < 0)
    {
      operator delete(v5[0]);
    }
  }
}

void sub_10153A640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153A674(void *a1)
{
  sub_10153AC24(a1, 1);
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  *__p = 0u;
  sub_10153AD0C(v4, a1[11]);
  if (v8)
  {
    sub_10153B3A0(a1, v4);
  }

  else
  {
    v2 = a1[5];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#N Auth information could not be read from keychain", v3, 2u);
    }

    (*(*a1 + 64))(a1, 0);
  }

  if (v8 == 1)
  {
    sub_1003EC530(&v7);
    if (__p[1])
    {
      *&v6 = __p[1];
      operator delete(__p[1]);
    }

    if (v4[0])
    {
      v4[1] = v4[0];
      operator delete(v4[0]);
    }
  }
}

void sub_10153A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100D1A3C4(va);
  _Unwind_Resume(a1);
}

void sub_10153A78C(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  if (*a2)
  {
    *v3 = 1;
  }

  if (!*(a1 + 104))
  {
    if (*(a1 + 128) != 1)
    {
      sub_10153AC24(a1, 1);
      operator new();
    }

    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cannot proceed with authentication because app is still running", buf, 2u);
      v3 = *a2;
    }

    if (v3)
    {
      *v3 = 2;
    }
  }
}

void sub_10153AC24(uint64_t a1, int a2)
{
  v2 = *(a1 + 104);
  if (v2 != a2)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v2 > 4)
      {
        v6 = "???";
      }

      else
      {
        v6 = off_101F4A538[v2];
      }

      v7 = off_101F4A538[a2];
      v8 = 136315394;
      v9 = v6;
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Transitioning from %s to %s", &v8, 0x16u);
    }

    *(a1 + 104) = a2;
  }
}

void sub_10153AD0C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *a1 = 0;
    *(a1 + 64) = 0;
    return;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_10000501C(__p, "com.apple.carrierspace.authinfo");
  (*(*a2 + 32))(&v15, a2, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v15;
  if (v15 == v16)
  {
    *a1 = 0;
    *(a1 + 64) = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_101349318(&v15, v7);
  *a1 = *v7;
  *(a1 + 16) = v8;
  v7[0] = 0;
  v7[1] = 0;
  *(a1 + 24) = *v9;
  v8 = 0;
  v9[0] = 0;
  v5 = v10;
  v6 = v11;
  v10 = 0;
  v11 = 0;
  v9[1] = 0;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v12;
  *(a1 + 64) = 1;
  sub_1003EC530(&v11);
  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  v4 = v15;
  if (v15)
  {
LABEL_13:
    v16 = v4;
    operator delete(v4);
  }
}

void sub_10153AE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 40);
  if (v24)
  {
    *(v22 - 32) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153AE74(uint64_t a1, xpc_object_t *a2)
{
  v4 = a1 + 56;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
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
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
LABEL_11:
    (*(*a1 + 64))(a1, 0);
    goto LABEL_38;
  }

LABEL_10:
  if (xpc_get_type(*a2) != &_xpc_type_dictionary)
  {
    goto LABEL_11;
  }

  v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*(a1 + 112) + 8));
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, a2);
    v16 = v31 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Launching authentication alert with options: %s", buf, 0xCu);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17 = xpc_null_create();
  v29 = 0;
  v18 = xpc_dictionary_create(0, 0, 0);
  v19 = v18;
  if (v18)
  {
    v29 = v18;
  }

  else
  {
    v19 = xpc_null_create();
    v29 = v19;
    if (!v19)
    {
      v20 = xpc_null_create();
      v19 = 0;
      goto LABEL_25;
    }
  }

  if (xpc_get_type(v19) != &_xpc_type_dictionary)
  {
    v20 = xpc_null_create();
LABEL_25:
    v29 = v20;
    goto LABEL_26;
  }

  xpc_retain(v19);
LABEL_26:
  xpc_release(v19);
  v27 = *a2;
  *a2 = xpc_null_create();
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  ctu::cf::assign();
  *buf = *__p;
  v34 = v31;
  v21 = __p[0];
  if (v31 >= 0)
  {
    v21 = buf;
  }

  v26[0] = &v29;
  v26[1] = v21;
  sub_100DAE90C(v26, &v27, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v27);
  v27 = 0;
  v22 = v29;
  v29 = xpc_null_create();
  xpc_release(v17);
  memset(buf, 0, sizeof(buf));
  (*(*v13 + 16))(buf, v13, v4);
  v23 = *buf;
  sub_10000501C(__p, "carrierspaceauth://");
  v24[0] = 1;
  v25 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v25 = xpc_null_create();
  }

  v32[0] = off_101F4A3B8;
  v32[1] = a1;
  v32[3] = v32;
  (*(*v23 + 16))(v23, __p, v24, v32);
  sub_10000FF50(v32);
  xpc_release(v25);
  v25 = 0;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  xpc_release(v29);
  xpc_release(v22);
LABEL_38:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10153B2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153B3A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112))
  {
    v7 = a1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_100034C50(&v8, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_100034C50(&v11, *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
    sub_100431B34(&cf, (a2 + 48));
    v15 = *(a2 + 56);
    v4 = *(a1 + 72);
    if (v4)
    {
      v27 = 0;
      v28 = 0;
      (*(*v4 + 16))(&v27);
      if (v27)
      {
        v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*(a1 + 112) + 8));
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Prompting for biometric authentication", &buf, 2u);
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        buf = 0u;
        if (*(a1 + 24))
        {
          dispatch_retain(*(a1 + 24));
        }

        v16 = v7;
        memset(v17, 0, sizeof(v17));
        sub_100034C50(v17, v8, v9, v9 - v8);
        __p = 0;
        v19 = 0uLL;
        sub_100034C50(&__p, v11, v12, v12 - v11);
        v20 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v21 = v15;
        v29 = 0;
        operator new();
      }

      sub_10153C868(&v7, 5);
      if (v28)
      {
        sub_100004A34(v28);
      }
    }

    else
    {
      sub_10153C868(&v7, 5);
    }

    sub_1003EC530(&cf);
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }
  }

  else
  {
    v6 = *(*a1 + 64);

    v6();
  }
}

void sub_10153B8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = *(v29 - 160);
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_10153C228(&a10);
  _Unwind_Resume(a1);
}

void sub_10153B9A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10153B998);
}

void sub_10153B9C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  if (v3 == 1 && (v4 = *(a1 + 112)) != 0)
  {
    v6 = *(v4 + 8);
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      ctu::hex();
      v8 = v21 >= 0 ? __p : *__p;
      *buf = 136315138;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Received authentication token '%s'", buf, 0xCu);
      if (v21 < 0)
      {
        operator delete(*__p);
      }
    }

    sub_10153AC24(a1, 2);
    if (*(a2 + 57) == 1)
    {
      v9 = *(a1 + 88);
      if (*(a2 + 56) == 1)
      {
        sub_10153A5A4(v9, a2);
      }

      else
      {
        sub_10153BC9C(v9);
      }
    }

    v12 = *(a1 + 120);
    if (v12)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      sub_100034C50(&v17, *a2, *(a2 + 8), *(a2 + 8) - *a2);
      v13 = *(a1 + 112);
      if (*(v13 + 39) < 0)
      {
        sub_100005F2C(v15, *(v13 + 16), *(v13 + 24));
      }

      else
      {
        *v15 = *(v13 + 16);
        v16 = *(v13 + 32);
      }

      (*(*v12 + 16))(v12, v6, &v17, v15);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(v15[0]);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }
    }

    v14 = **(a1 + 112);
    if (v14)
    {
      *v14 = 0;
    }

    (*(*a1 + 88))(a1);
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (v3 > 4)
      {
        v11 = "???";
      }

      else
      {
        v11 = off_101F4A538[v3];
      }

      *__p = 136315138;
      *&__p[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Received auth info in unexpected state: %s", __p, 0xCu);
    }
  }
}

void sub_10153BC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153BC9C(uint64_t a1)
{
  if (a1)
  {
    sub_10000501C(__p, "com.apple.carrierspace.authinfo");
    (*(*a1 + 24))(a1, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10153BD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153BD30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v4 = v3 > 4 || ((1 << v3) & 0x1A) == 0;
  if (v4 || (v5 = *(a1 + 112)) == 0)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v3 > 4)
      {
        v12 = "???";
      }

      else
      {
        v12 = off_101F4A538[v3];
      }

      v13 = 136315138;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Ignoring auth failure received in unexpected state: %s", &v13, 0xCu);
    }
  }

  else
  {
    if ((a2 & &_mh_execute_header) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = 10;
    }

    v7 = *(v5 + 8);
    v8 = *(a1 + 120);
    if (v8)
    {
      (*(*v8 + 24))(v8, *(v5 + 8), v5 + 16, v6);
    }

    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = asString(v6);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Pending authentication failed with error: %s, resetting state", &v13, 0xCu);
    }

    v10 = **(a1 + 112);
    if (v10)
    {
      *v10 = v6;
    }

    (*(*a1 + 88))(a1);
  }
}

void sub_10153BF1C(uint64_t a1, int a2)
{
  v3 = *(a1 + 104);
  v4 = v3 > 4 || ((1 << v3) & 0x1A) == 0;
  if (v4 || (v5 = *(a1 + 112)) == 0)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v3 > 4)
      {
        v12 = "???";
      }

      else
      {
        v12 = off_101F4A538[v3];
      }

      v13 = 136315138;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Ignoring plan term confirmation received in unexpected state: %s", &v13, 0xCu);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "accepted";
      if (!a2)
      {
        v8 = "rejected";
      }

      v9 = (v5 + 40);
      if (*(v5 + 63) < 0)
      {
        v9 = *v9;
      }

      v13 = 136315394;
      v14 = v8;
      v15 = 2080;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I User has %s the terms for plan '%s'", &v13, 0x16u);
    }

    if (a2)
    {
      if (*(a1 + 104) == 3)
      {
        if (*(a1 + 128) == 1)
        {
          v10 = *(a1 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I App is still running, will wait for termination before displaying authentication alert", &v13, 2u);
          }

          sub_10153AC24(a1, 4);
        }

        else
        {
          sub_10153A674(a1);
        }
      }
    }

    else
    {
      (*(*a1 + 64))(a1, 0x10000000CLL);
    }
  }
}

void sub_10153C130(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Cached token has been invalidated, clearing...", v3, 2u);
  }

  sub_10153BC9C(*(a1 + 88));
}

uint64_t sub_10153C19C(uint64_t a1)
{
  sub_10153AC24(a1, 0);

  return sub_10153C1DC((a1 + 112), 0);
}

uint64_t sub_10153C1DC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100D1A460(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10153C228(uint64_t a1)
{
  sub_1003EC530((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_10153C274(xpc_object_t *a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    v5 = *(v3 + 8);
    object = 0;
    sub_1013480F0((a2 + 56), v5, &object);
    if (xpc_get_type(object) == &_xpc_type_dictionary)
    {
      v7 = *(a2 + 176);
      if (v7)
      {
        v8 = a2 + 176;
        do
        {
          if (*(v7 + 32) >= v5)
          {
            v8 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v5));
        }

        while (v7);
        if (v8 != a2 + 176 && v5 >= *(v8 + 32))
        {
          sub_101347E9C((a2 + 56), v5, &object, v8 + 40);
        }
      }

      *a1 = object;
      v6 = xpc_null_create();
      object = v6;
    }

    else
    {
      *a1 = xpc_null_create();
      v6 = object;
    }

    xpc_release(v6);
  }

  else
  {
    *a1 = xpc_null_create();
  }
}

void sub_10153C38C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 104);
    if (v3 > 4)
    {
      v4 = "???";
    }

    else
    {
      v4 = off_101F4A538[v3];
    }

    v15 = 136315138;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fState = %s", &v15, 0xCu);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v5 + 8));
    v7 = *(a1 + 112);
    v8 = *v6;
    if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = v7 + 16;
    if (v7[39] < 0)
    {
      v9 = *v9;
    }

    if (v7[88] == 1)
    {
      v10 = v7 + 64;
      if (v7[87] < 0)
      {
        v10 = *v10;
      }
    }

    else
    {
      v10 = "none";
    }

    v15 = 136315394;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    v12 = "#I fCurrentRequest = planID '%s', planTermsURL '%s'";
    v13 = v8;
    v14 = 22;
  }

  else
  {
    v11 = *(a1 + 40);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v15) = 0;
    v12 = "#I fCurrentRequest = null";
    v13 = v11;
    v14 = 2;
  }

  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v15, v14);
}

void sub_10153C56C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4A218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10153C5EC(uint64_t a1)
{
  sub_1015399A4(a1);

  operator delete();
}

__n128 sub_10153C6C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4A338;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10153C6FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10153C7B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4A3B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10153C7E4(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(result + 8) + 64))(*(result + 8), 0);
  }

  return result;
}

uint64_t sub_10153C81C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10153C868(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = (*(**(*a1 + 48) + 16))(*(*a1 + 48), *(*(*a1 + 112) + 8));
  v6 = v5;
  if (a2)
  {
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Biometric authentication result: %s", &buf, 0xCu);
    }

    if (sub_101348F64(a2))
    {
      (*(*v4 + 80))(v4);
    }

    v8 = sub_101348F28(a2);
    v9 = *v6;
    v10 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Biometric authentication failed, will ask user to authenticate with login credentials", &buf, 2u);
      }

      sub_10153C274(&object, v4);
      sub_10153AE74(v4, &object);
      xpc_release(object);
    }

    else
    {
      if (v10)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Will not present fallback authentication", &buf, 2u);
      }

      (*(*v4 + 64))(v4, 0);
    }

    return;
  }

  if (*(a1 + 32) == *(a1 + 40) || !*(a1 + 56))
  {
    buf = 0uLL;
    v46 = 0;
    sub_100034C50(&buf, *(a1 + 8), *(a1 + 16), *(a1 + 16) - *(a1 + 8));
    __p = 0;
    v48 = 0;
    v49 = 0;
    sub_100034C50(&__p, *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
    sub_100431B34(&v50, (a1 + 56));
    LOWORD(v51) = *(a1 + 64);
    (*(*v4 + 56))(v4, &buf);
    sub_1003EC530(&v50);
    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }

    return;
  }

  ServiceMap = Registry::getServiceMap(*(v4 + 56));
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
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
  *&buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &buf);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
LABEL_26:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    goto LABEL_27;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
LABEL_27:
  v21 = (*(*v19 + 96))(v19);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  v41 = CFDateCreate(0, v21);
  v22 = CFDateCompare(v41, *(a1 + 56), 0);
  v23 = *(v4 + 40);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22 != kCFCompareLessThan)
  {
    if (v24)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Token has expired, attempting to refresh", &buf, 2u);
    }

    v25 = Registry::getServiceMap(*(v4 + 56));
    v26 = v25;
    if (v27 < 0)
    {
      v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
      v29 = 5381;
      do
      {
        v27 = v29;
        v30 = *v28++;
        v29 = (33 * v29) ^ v30;
      }

      while (v30);
    }

    std::mutex::lock(v25);
    *&buf = v27;
    v31 = sub_100009510(&v26[1].__m_.__sig, &buf);
    if (v31)
    {
      v33 = v31[3];
      v32 = v31[4];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v26);
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v32);
        goto LABEL_50;
      }
    }

    else
    {
      v33 = 0;
    }

    std::mutex::unlock(v26);
LABEL_50:
    (*(**(v4 + 48) + 16))(*(v4 + 48), *(*(v4 + 112) + 8));
    memset(v52, 0, sizeof(v52));
    v53 = 0;
    sub_1013495C0((v4 + 56), v52);
    if (SHIBYTE(v53) < 0)
    {
      sub_100005F2C(__dst, *v52, *&v52[8]);
    }

    else
    {
      *__dst = *v52;
      v43 = v53;
    }

    sub_1013499DC(&buf);
    (*(*v33 + 16))(v44, v33, 3, __dst, &buf);
    v35 = *v44;
    memset(v44, 0, sizeof(v44));
    v36 = *(v4 + 144);
    *(v4 + 136) = v35;
    if (v36)
    {
      sub_100004A34(v36);
      if (*&v44[8])
      {
        sub_100004A34(*&v44[8]);
      }
    }

    sub_1000DD0AC(&buf, *(&buf + 1));
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__dst[0]);
    }

    (*(**(v4 + 136) + 136))(*(v4 + 136));
    v37 = *(v4 + 136);
    sub_101349718((v4 + 56), a1 + 8, &buf);
    (*(*v37 + 56))(v37, &buf);
    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }

    (*(**(v4 + 136) + 8))(*(v4 + 136), *(v4 + 24));
    v38 = *(v4 + 16);
    if (v38)
    {
      v39 = std::__shared_weak_count::lock(v38);
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v39);
        operator new();
      }
    }

    sub_100013CC4();
  }

  if (v24)
  {
    sub_10134A030((a1 + 56), &buf);
    v34 = v46 >= 0 ? &buf : buf;
    *v52 = 136315138;
    *&v52[4] = v34;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Cached token has not expired yet (expires on %s)", v52, 0xCu);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(buf);
    }
  }

  buf = 0uLL;
  v46 = 0;
  sub_100034C50(&buf, *(a1 + 8), *(a1 + 16), *(a1 + 16) - *(a1 + 8));
  __p = 0;
  v48 = 0;
  v49 = 0;
  sub_100034C50(&__p, *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
  sub_100431B34(&v50, (a1 + 56));
  LOWORD(v51) = *(a1 + 64);
  (*(*v4 + 56))(v4, &buf);
  sub_1003EC530(&v50);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  sub_1003EC530(&v41);
}

uint64_t sub_10153D324(uint64_t a1)
{
  sub_100005978((a1 + 72));
  sub_100005978((a1 + 64));
  sub_100005978((a1 + 48));
  sub_100005978((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  sub_10153D9DC(a1, 0);
  return a1;
}

void sub_10153D384(uint64_t a1, ctu::Http::HttpResponse **a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!*(a1 + 40))
      {
LABEL_51:
        sub_100004A34(v7);
        return;
      }

      v8 = *a2;
      if (*a2)
      {
        v9 = 0;
      }

      else
      {
        v10 = **(a1 + 56);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p) = 0;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Received null refresh token response!", &__p, 2u);
          v8 = *a2;
        }

        else
        {
          v8 = 0;
        }

        v9 = 10;
      }

      if ((*(*v8 + 16))(v8) != 1)
      {
        v11 = **(a1 + 56);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          ctu::Http::asString();
          v12 = v29 >= 0 ? &__p : __p;
          LODWORD(v23[0]) = 136315138;
          *(v23 + 4) = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Refresh token operation failed with error: %s", v23, 0xCu);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p);
          }
        }

        v9 = 10;
      }

      v13 = (*(**a2 + 24))();
      if (v13 != 200)
      {
        v14 = **(a1 + 56);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p) = 67109120;
          HIDWORD(__p) = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N Refresh token operation failed with HTTP error code: %d", &__p, 8u);
        }

        v9 = 10;
      }

      v25 = 0u;
      *cf = 0u;
      *v23 = 0u;
      *v24 = 0u;
      ctu::Http::HttpResponse::getResponseData(&__p, *a2);
      sub_101349A98((v5 + 40), (v5 + 56), &__p, v23);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      v15 = v23[0];
      if (v23[0] == v23[1])
      {
        v17 = **(a1 + 56);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N Failed to parse refresh token response", &__p, 2u);
          v15 = v23[0];
        }

        v34 = 0;
        if (v15)
        {
          v23[1] = v15;
          operator delete(v15);
        }

        v23[0] = 0;
        v23[1] = 0;
        v24[0] = 0;
        v28 = 0;
        v29 = 0;
        __p = 0;
        if (v24[1])
        {
          *&v25 = v24[1];
          operator delete(v24[1]);
        }

        v24[1] = 0;
        v25 = 0uLL;
        v31 = 0;
        v32 = 0;
        v30 = 0;
        *buf = cf[0];
        cf[0] = 0;
        v33 = 0;
        sub_1003EC530(buf);
        LOWORD(cf[1]) = 0;
        sub_1003EC530(&v33);
        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        if (__p)
        {
          v28 = __p;
          operator delete(__p);
        }

        v9 = 10;
      }

      else if (!v9)
      {
        sub_10153A5A4(*(v5 + 88), v23);
        v16 = **(a1 + 64);
        __p = 0;
        v28 = 0;
        v29 = 0;
        sub_100034C50(&__p, v23[0], v23[1], v23[1] - v23[0]);
        v30 = 0;
        v31 = 0;
        v32 = 0;
        sub_100034C50(&v30, v24[1], v25, v25 - v24[1]);
        v33 = cf[0];
        if (cf[0])
        {
          CFRetain(cf[0]);
        }

        v34 = cf[1];
        (*(*v16 + 56))(v16, &__p);
        sub_1003EC530(&v33);
        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        if (__p)
        {
          v28 = __p;
          operator delete(__p);
        }

LABEL_45:
        v22 = *(v5 + 144);
        *(v5 + 136) = 0;
        *(v5 + 144) = 0;
        if (v22)
        {
          sub_100004A34(v22);
        }

        sub_1003EC530(cf);
        if (v24[1])
        {
          *&v25 = v24[1];
          operator delete(v24[1]);
        }

        if (v23[0])
        {
          v23[1] = v23[0];
          operator delete(v23[0]);
        }

        goto LABEL_51;
      }

      v18 = *(a1 + 64);
      v19 = *v18;
      v20 = **(v18 + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = asString(v9);
        *buf = 136315138;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N Refresh token evaluation returned error: %s", buf, 0xCu);
      }

      sub_10153BC9C(v19[11]);
      (*(*v19 + 64))(v19, v9 | &_mh_execute_header);
      goto LABEL_45;
    }
  }
}

void sub_10153D85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10153D8DC(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10153D910(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10153D980(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4A468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10153D9DC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10153DA28(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10153DA28(uint64_t a1)
{
  if (*(a1 + 8) && *(a1 + 40))
  {
    sub_10153DC1C(v4, a1 + 16);
    v4[32] = *a1;
    operator new();
  }

  sub_10153DC9C(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_10153DB28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t *sub_10153DB34(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10153DC9C(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10153DB7C(uint64_t a1)
{
  v2 = a1;
  sub_10153DBC8(a1, *(a1 + 32));
  return sub_10153DB34(&v2);
}

void sub_10153DBB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10153DB34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10153DBC8(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10153DC1C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_10153DC9C(uint64_t a1)
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

uint64_t sub_10153DD1C(uint64_t a1)
{
  *a1 = off_101F4A4B8;
  sub_1003EC530((a1 + 64));
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_10153DD80(uint64_t a1)
{
  *a1 = off_101F4A4B8;
  sub_1003EC530((a1 + 64));
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  operator delete();
}

void sub_10153DEB4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

const void **sub_10153DEE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *(a2 + 16) = 0;
  *a2 = off_101F4A4B8;
  *(a2 + 8) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  sub_100034C50(a2 + 16, *(a1 + 16), *(a1 + 24), *(a1 + 24) - *(a1 + 16));
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  sub_100034C50(a2 + 40, *(a1 + 40), *(a1 + 48), *(a1 + 48) - *(a1 + 40));
  result = sub_100431B34((a2 + 64), (a1 + 64));
  *(a2 + 72) = *(a1 + 72);
  return result;
}

void sub_10153DF74(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10153DF90(uint64_t a1)
{
  sub_1003EC530((a1 + 64));
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;

    operator delete(v3);
  }
}

void sub_10153DFF0(uint64_t a1)
{
  sub_1003EC530((a1 + 64));
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  operator delete(a1);
}

uint64_t sub_10153E058(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F4A528))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10153E0A4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10153E434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
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

uint64_t sub_10153E5B0(uint64_t a1)
{
  *a1 = off_101F4A570;
  sub_100009970(a1 + 128, *(a1 + 136));
  sub_10153F318(a1 + 96);
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  RegulatoryDomainInterface::~RegulatoryDomainInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10153E644(uint64_t a1)
{
  sub_10153E5B0(a1);

  operator delete();
}

void sub_10153E67C(uint64_t a1, dispatch_object_t object)
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

void sub_10153E7A4(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = [NSString stringWithUTF8String:v2];
  RDUpdateCountryCodeFromMCC();
}

void sub_10153E818(void *a1)
{
  v51 = 0;
  v52 = 0;
  v50 = &v51;
  obj = +[RDEstimate currentEstimates];
  if ([obj count])
  {
    v1 = obj;
  }

  else
  {
    v2 = +[RDEstimate lastKnownEstimates];

    v1 = v2;
  }

  v40 = v1;
  if ([v1 count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obja = v40;
    v3 = [obja countByEnumeratingWithState:&v46 objects:v53 count:16];
    if (v3)
    {
      v4 = *v47;
      v5 = kRDPrioritySingleLocation;
      v6 = kRDPriorityServingCellMCC;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v47 != v4)
          {
            objc_enumerationMutation(obja);
          }

          v8 = *(*(&v46 + 1) + 8 * i);
          v9 = [v8 priorityIsAtLeast:v5];
          v10 = [v8 priorityIsAtLeast:v6];
          v11 = [v8 countryCode];
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *__p = *buf;
          *&v45 = *&buf[16];
          BYTE8(v45) = v9;
          BYTE9(v45) = v10;
          *buf = 0;
          if (!*sub_1001201B8(&v50, buf, __p))
          {
            operator new();
          }

          if (SBYTE7(v45) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v3 = [obja countByEnumeratingWithState:&v46 objects:v53 count:16];
      }

      while (v3);
    }

    if (v52)
    {
      v12 = v50;
      if (v50 != &v51)
      {
        do
        {
          *__p = 0u;
          v45 = 0u;
          if (*(v12 + 55) < 0)
          {
            sub_100005F2C(__p, v12[4], v12[5]);
          }

          else
          {
            *__p = *(v12 + 2);
            *&v45 = v12[6];
          }

          v13 = *(v12 + 28);
          WORD4(v45) = v13;
          v14 = a1[5];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            if ((SBYTE7(v45) & 0x80u) == 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = __p[0];
            }

            *buf = 136315394;
            *&buf[4] = v15;
            *&buf[12] = 1024;
            *&buf[14] = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Country : %s : %{BOOL}d", buf, 0x12u);
          }

          if (SBYTE7(v45) < 0)
          {
            operator delete(__p[0]);
          }

          v16 = v12[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v12[2];
              v18 = *v17 == v12;
              v12 = v17;
            }

            while (!v18);
          }

          v12 = v17;
        }

        while (v17 != &v51);
      }
    }

    else
    {
      v20 = a1[5];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "No known countries from RD!!", __p, 2u);
      }
    }

    if (a1[18] == v52)
    {
      v21 = a1[16];
      if (v21 == a1 + 17)
      {
        goto LABEL_84;
      }

      v22 = v50;
      while (RegulatoryCountry::operator==(v21 + 4, v22 + 4))
      {
        v23 = v21[1];
        v24 = v21;
        if (v23)
        {
          do
          {
            v21 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v21 = v24[2];
            v18 = *v21 == v24;
            v24 = v21;
          }

          while (!v18);
        }

        v25 = v22[1];
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
            v26 = v22[2];
            v18 = *v26 == v22;
            v22 = v26;
          }

          while (!v18);
        }

        v22 = v26;
        if (v21 == a1 + 17)
        {
          goto LABEL_84;
        }
      }
    }

    v27 = (a1 + 16);
    if (a1 + 16 != &v50)
    {
      v28 = v50;
      if (a1[18])
      {
        v30 = a1[17];
        v29 = (a1 + 17);
        v31 = a1[16];
        a1[16] = a1 + 17;
        *(v30 + 16) = 0;
        a1[17] = 0;
        a1[18] = 0;
        if (*(v31 + 1))
        {
          v32 = *(v31 + 1);
        }

        else
        {
          v32 = v31;
        }

        __p[0] = a1 + 16;
        __p[1] = v32;
        *&v45 = v32;
        if (!v32 || (__p[1] = sub_1000685CC(v32), v28 == &v51))
        {
          v38 = v28;
        }

        else
        {
          do
          {
            std::string::operator=((v32 + 32), (v28 + 4));
            *(v32 + 28) = *(v28 + 28);
            v33 = v45;
            v34 = *v29;
            v35 = (a1 + 17);
            v36 = (a1 + 17);
            if (*v29)
            {
              do
              {
                while (1)
                {
                  v35 = v34;
                  if (!RegulatoryCountry::operator<(v33 + 4, v34 + 4))
                  {
                    break;
                  }

                  v34 = *v35;
                  v36 = v35;
                  if (!*v35)
                  {
                    goto LABEL_68;
                  }
                }

                v34 = v35[1];
              }

              while (v34);
              v36 = v35 + 1;
            }

LABEL_68:
            sub_1000070DC(v27, v35, v36, v33);
            v32 = __p[1];
            *&v45 = __p[1];
            if (__p[1])
            {
              __p[1] = sub_1000685CC(__p[1]);
            }

            v37 = v28[1];
            if (v37)
            {
              do
              {
                v38 = v37;
                v37 = *v37;
              }

              while (v37);
            }

            else
            {
              do
              {
                v38 = v28[2];
                v18 = *v38 == v28;
                v28 = v38;
              }

              while (!v18);
            }

            if (!v32)
            {
              break;
            }

            v28 = v38;
          }

          while (v38 != &v51);
        }

        sub_100173240(__p);
        v28 = v38;
      }

      if (v28 != &v51)
      {
        __p[0] = 0;
        __p[1] = 0;
        *&v45 = 0;
        sub_100997B24();
      }
    }

    v39 = a1[15];
    if (v39)
    {
      (*(*v39 + 48))(v39, v27);
    }
  }

  else
  {
    v19 = a1[5];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "No country estimates available from RD!!", __p, 2u);
    }
  }

LABEL_84:

  sub_100009970(&v50, v51);
}

uint64_t sub_10153F008(uint64_t a1, uint64_t a2)
{
  v21 = +[RDEstimate currentEstimates];
  if ([v21 count])
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v29 = 0;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      *__dst = *a2;
      v29 = *(a2 + 16);
    }

    if (v29 >= 0)
    {
      v5 = (__dst + HIBYTE(v29));
    }

    else
    {
      v5 = (__dst[0] + __dst[1]);
    }

    if (v29 >= 0)
    {
      v6 = __dst;
    }

    else
    {
      v6 = __dst[0];
    }

    while (v6 != v5)
    {
      *v6 = __toupper(*v6);
      v6 = (v6 + 1);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v21;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v8)
    {
      v9 = *v25;
      v10 = kRDPriorityServingCellMCC;
LABEL_16:
      v11 = 0;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if ([v12 priorityIsAtLeast:v10])
        {
          break;
        }

LABEL_37:

        if (v8 == ++v11)
        {
          v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v8)
          {
            goto LABEL_16;
          }

          goto LABEL_39;
        }
      }

      v13 = [v12 countryCode];
      v30 = 0uLL;
      v31 = 0;
      ctu::cf::assign();
      v23 = v31;
      *__p = v30;
      if (v29 >= 0)
      {
        v14 = HIBYTE(v29);
      }

      else
      {
        v14 = __dst[1];
      }

      v15 = HIBYTE(v23);
      v16 = SHIBYTE(v23);
      if (v23 < 0)
      {
        v15 = __p[1];
      }

      if (v14 == v15)
      {
        if (v29 >= 0)
        {
          v17 = __dst;
        }

        else
        {
          v17 = __dst[0];
        }

        if (v23 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        v19 = memcmp(v17, v18, v14) == 0;
        if ((v16 & 0x80000000) == 0)
        {
LABEL_36:

          if (v19)
          {

            v3 = 1;
            goto LABEL_41;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v19 = 0;
        if ((SHIBYTE(v23) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }
      }

      operator delete(__p[0]);
      goto LABEL_36;
    }

LABEL_39:
    v3 = 0;
LABEL_41:

    if (SHIBYTE(v29) < 0)
    {
      operator delete(__dst[0]);
    }

    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v3 | (v4 << 8);
}

uint64_t sub_10153F318(uint64_t a1)
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

void sub_10153F39C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10153F3D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10153F404(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10153F444(ServiceManager::Service *this)
{
  *this = off_101F4A6C0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10153F4A0(ServiceManager::Service *this)
{
  *this = off_101F4A6C0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10153F520@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10153F560(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10153E67C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10153E67C(v4, 0);
}

void sub_10153F600(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10153F6E0(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group, this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10153F808(void ***a1)
{
  v1 = a1;
  sub_10153E818(**a1);
  operator delete();
}

void sub_10153F888(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping regulatory domain service", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v8, *(v1 + 48));
  ctu::RestModule::connect();
  if (v9)
  {
    sub_100004A34(v9);
  }

  v3 = (v1 + 96);
  *buf = off_101F4A740;
  v11 = v1 + 80;
  v12 = buf;
  if (buf != (v1 + 96))
  {
    v4 = *(v1 + 120);
    if (v4 == v3)
    {
      __p[1] = (v1 + 80);
      v14 = 0;
      v12 = 0;
      __p[0] = off_101F4A740;
      (*(*v4 + 24))(v4, buf);
      (*(**(v1 + 120) + 32))(*(v1 + 120));
      *(v1 + 120) = 0;
      v12 = buf;
      (*(__p[0] + 3))(__p, v1 + 96);
      (*(__p[0] + 4))(__p);
    }

    else
    {
      *(v1 + 96) = off_101F4A740;
      *(v1 + 104) = v1 + 80;
      v12 = v4;
    }

    *(v1 + 120) = v3;
  }

  sub_10153F318(buf);
  v5 = *(v1 + 120);
  if (v5)
  {
    (*(*v5 + 48))(v5, v1 + 128);
  }

  sub_10000501C(__p, "/cc/events/dump_state");
  *buf = off_101F4A7D0;
  v11 = v1;
  v12 = buf;
  ctu::RestModule::observeEvent();
  sub_1000062D4(buf);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v7);
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10153FBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10153FCB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4A740;
  a2[1] = v2;
  return result;
}

void sub_10153FCE4(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      ctu::rest::write_rest_value<RegulatoryCountry>((v6 + 4), value);
      xpc_array_append_value(v4, value[0]);
      xpc_release(value[0]);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v11 = v4;
  }

  else
  {
    v11 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(value, "/cc/props/regulatory_domain_country_list");
  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v14 < 0)
  {
    operator delete(value[0]);
  }

  xpc_release(v11);
}

void sub_10153FE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10153FEFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10153FFB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4A7D0;
  a2[1] = v2;
  return result;
}

void sub_10153FFE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 128);
  if (v2 != (v1 + 136))
  {
    do
    {
      v3 = *(v1 + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v2 + 4;
        if (*(v2 + 55) < 0)
        {
          v4 = *v4;
        }

        v5 = *(v2 + 56);
        v6 = *(v2 + 57);
        *buf = 136315650;
        v11 = v4;
        v12 = 1024;
        v13 = v5;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I RD ISO : '%s' : Location : %{BOOL}d : serviceMcc : %{BOOL}d", buf, 0x18u);
      }

      v7 = v2[1];
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
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != (v1 + 136));
  }
}

uint64_t sub_10154011C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101540168(void *a1)
{
  *a1 = off_101F4A850;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1015401B4(void *a1)
{
  *a1 = off_101F4A850;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101540294(uint64_t result, uint64_t a2)
{
  *a2 = off_101F4A850;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1015402D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1015402E4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101540324(void *a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = v5[5];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Received RD notification", v9, 2u);
        }

        sub_10153E818(v5);
      }

      sub_100004A34(v7);
    }
  }

  xpc_release(v3);
}

void sub_1015403D8(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101540400(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10154044C(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  ctu::RestModule::disconnect((*v1 + 80));
  sub_1006CC040(*(v2 + 64));
  sub_100D89210(&v5);
  return sub_1000049E0(&v4);
}

void sub_1015404A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100D89210(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1015404C4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_10001C168(v13, a4);
  NetworkConfigFacadeInterface::NetworkConfigFacadeInterface(a1, v13);
  sub_10001C200(v13);
  *a1 = &off_101F4A8D0;
  v10 = *a3;
  v9 = a3[1];
  a1[5] = 0;
  a1[6] = v10;
  a1[7] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_101540674;
  v12[3] = &unk_101F4A8E0;
  v12[4] = a1;
  a1[5] = sub_10154061C(a5, a2, v12);
  return a1;
}

void sub_1015405E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 + 7);
  if (v16)
  {
    sub_100004A34(v16);
  }

  NetworkConfigFacadeInterface::~NetworkConfigFacadeInterface(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_10154061C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_101540674(uint64_t a1, void *a2, xpc_object_t object, void *a4)
{
  v6 = *(a1 + 32);
  v51[0] = 0;
  v51[1] = 0;
  v52 = 0;
  if (!object)
  {
    sub_10000501C(v51, "");
    goto LABEL_39;
  }

  memset(&__p, 0, sizeof(__p));
  if (xpc_get_type(object) == &_xpc_type_uuid)
  {
    bytes = xpc_uuid_get_bytes(object);
    if (!uuid_is_null(bytes))
    {
      memset(out, 0, sizeof(out));
      uuid_unparse(bytes, out);
      sub_100016890(&__p, out);
    }
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size && xpc_get_type(object) == &_xpc_type_string)
  {
    objecta = object;
    xpc_retain(object);
    memset(out, 0, 24);
    xpc::dyn_cast_or_default();
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v54;
    *(&v54.__r_.__value_.__s + 23) = 0;
    v54.__r_.__value_.__s.__data_[0] = 0;
    xpc_release(objecta);
  }

  v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
    goto LABEL_36;
  }

  ServiceMap = Registry::getServiceMap(*(v6 + 48));
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
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
  *out = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, out);
  if (!v17)
  {
    v19 = 0;
LABEL_26:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
  if (!v19)
  {
    goto LABEL_34;
  }

LABEL_27:
  v51[0] = 0;
  v51[1] = 0;
  v52 = 0;
  (*(*v19 + 64))(v51, v19, &__p);
  if (SHIBYTE(v52) < 0)
  {
    if (v51[1] == 7 && *v51[0] == 1852534389 && *(v51[0] + 3) == 1853321070)
    {
      operator delete(v51[0]);
      if (v20)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

LABEL_78:
    if ((v20 & 1) == 0)
    {
      sub_100004A34(v18);
    }

    goto LABEL_37;
  }

  if (SHIBYTE(v52) != 7)
  {
    goto LABEL_78;
  }

  if (LODWORD(v51[0]) != 1852534389 || *(v51 + 3) != 1853321070)
  {
    goto LABEL_78;
  }

LABEL_34:
  if ((v20 & 1) == 0)
  {
LABEL_35:
    sub_100004A34(v18);
  }

LABEL_36:
  sub_10000501C(v51, "");
LABEL_37:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_39:
  v22 = HIBYTE(v52);
  if (v52 >= 0)
  {
    v23 = HIBYTE(v52);
  }

  else
  {
    v23 = v51[1];
  }

  if (!v23)
  {
    if (a4)
    {
      v24 = "";
      if (xpc_get_type(a4) == &_xpc_type_string)
      {
        string_ptr = xpc_string_get_string_ptr(a4);
        if (string_ptr)
        {
          v24 = string_ptr;
        }
      }
    }

    else
    {
      v24 = "";
    }

    sub_10000501C(out, v24);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    *v51 = *out;
    v52 = *&out[16];
    v22 = out[23];
    if (!(out[23] >= 0 ? out[23] : *&out[8]))
    {
      if (!a2 || xpc_get_type(a2) != &_xpc_type_uint64)
      {
        goto LABEL_60;
      }

      value = xpc_uint64_get_value(a2);
      v31 = Registry::getServiceMap(*(v6 + 48));
      v32 = v31;
      if ((v33 & 0x8000000000000000) != 0)
      {
        v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
        v35 = 5381;
        do
        {
          v33 = v35;
          v36 = *v34++;
          v35 = (33 * v35) ^ v36;
        }

        while (v36);
      }

      std::mutex::lock(v31);
      __p.__r_.__value_.__r.__words[0] = v33;
      v37 = sub_100009510(&v32[1].__m_.__sig, &__p);
      if (v37)
      {
        v39 = v37[3];
        v38 = v37[4];
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v32);
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v38);
          v40 = 0;
          goto LABEL_90;
        }
      }

      else
      {
        v39 = 0;
      }

      std::mutex::unlock(v32);
      v38 = 0;
      v40 = 1;
LABEL_90:
      if (!v39)
      {
        goto LABEL_98;
      }

      memset(out, 0, 24);
      (*(*v39 + 104))(out, v39, value);
      if (out[23] < 0)
      {
        if (!*&out[8])
        {
          operator delete(*out);
          goto LABEL_98;
        }
      }

      else if (!out[23])
      {
LABEL_98:
        if ((v40 & 1) == 0)
        {
          sub_100004A34(v38);
        }

        v41 = Registry::getServiceMap(*(v6 + 48));
        v42 = v41;
        if ((v43 & 0x8000000000000000) != 0)
        {
          v44 = (v43 & 0x7FFFFFFFFFFFFFFFLL);
          v45 = 5381;
          do
          {
            v43 = v45;
            v46 = *v44++;
            v45 = (33 * v45) ^ v46;
          }

          while (v46);
        }

        std::mutex::lock(v41);
        __p.__r_.__value_.__r.__words[0] = v43;
        v47 = sub_100009510(&v42[1].__m_.__sig, &__p);
        if (!v47)
        {
          std::mutex::unlock(v42);
          goto LABEL_60;
        }

        v48 = v47[3];
        v38 = v47[4];
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v42);
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v38);
          if (!v48)
          {
            sub_100004A34(v38);
LABEL_60:
            sub_10000501C(out, "");
            goto LABEL_61;
          }
        }

        else
        {
          std::mutex::unlock(v42);
          if (!v48)
          {
            goto LABEL_60;
          }
        }

        memset(out, 0, 24);
        (*(*v48 + 24))(out, v48, value);
        if (!v38)
        {
LABEL_61:
          if (SHIBYTE(v52) < 0)
          {
            operator delete(v51[0]);
          }

          v52 = *&out[16];
          *v51 = *out;
          v22 = out[23];
          if ((out[23] & 0x80) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_64;
        }

LABEL_110:
        sub_100004A34(v38);
        goto LABEL_61;
      }

      if (v40)
      {
        goto LABEL_61;
      }

      goto LABEL_110;
    }
  }

  if ((v22 & 0x80) == 0)
  {
LABEL_56:
    if (!v22)
    {
      return;
    }

    *v49 = *v51;
    v50 = v52;
    goto LABEL_66;
  }

LABEL_64:
  v27 = v51[0];
  if (!v51[1])
  {
LABEL_71:
    operator delete(v27);
    return;
  }

  sub_100005F2C(v49, v51[0], v51[1]);
LABEL_66:
  v28 = *(v6 + 32);
  if (!v28)
  {
    sub_100022DB4();
  }

  (*(*v28 + 48))(v28, v49);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v52) < 0)
  {
    v27 = v51[0];
    goto LABEL_71;
  }
}

void sub_101540D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, xpc_object_t object, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (v39)
  {
    sub_100004A34(v39);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101540DF4(NetworkConfigFacadeInterface *this)
{
  *this = &off_101F4A8D0;
  if (*(this + 5))
  {
    network_config_cellular_blocked_observer_cancel();
  }

  v2 = *(this + 7);
  if (v2)
  {
    sub_100004A34(v2);
  }

  NetworkConfigFacadeInterface::~NetworkConfigFacadeInterface(this);
}

void sub_101540E64(NetworkConfigFacadeInterface *a1)
{
  sub_101540DF4(a1);

  operator delete();
}

const char *sub_101540E9C(unsigned int a1)
{
  v3 = a1;
  if (!qword_101FCBD40)
  {
    sub_101540EF8();
  }

  v1 = sub_101541BA8(qword_101FCBD40, &v3);
  if (v1)
  {
    return *(v1[3] + 8);
  }

  else
  {
    return "UNKNOWN";
  }
}

void sub_101541024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101541040(unsigned int a1)
{
  v3 = a1;
  if (!qword_101FCBD40)
  {
    sub_101540EF8();
  }

  v1 = sub_101541BA8(qword_101FCBD40, &v3);
  if (v1)
  {
    return *(v1[3] + 4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL sub_101541098(uint64_t a1, char *__s)
{
  v3 = qword_101FCBD48;
  if (!qword_101FCBD48)
  {
    sub_101540EF8();
  }

  sub_10000501C(__p, __s);
  v4 = sub_1000D3314(v3, __p);
  v5 = v3[1];
  if (!*&v5)
  {
    goto LABEL_20;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*v3 + 8 * v9);
  if (v10)
  {
    for (i = *v10; i; i = *i)
    {
      v12 = i[1];
      if (v12 == v6)
      {
        if (sub_100022D3C(v3, i + 2, __p))
        {
          break;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
LABEL_20:
    i = 0;
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (i)
    {
      goto LABEL_23;
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  if (!i)
  {
    goto LABEL_25;
  }

LABEL_23:
  v13 = *i[5];
LABEL_26:
  *(a1 + 20) = v13;
  return v13 != 0;
}

uint64_t sub_1015411F4(uint64_t a1, std::string *a2)
{
  v3 = sub_101540E9C(*(a1 + 20));
  if (v3)
  {
    sub_100016890(a2, v3);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = 0;
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = 0;
    }

    a2->__r_.__value_.__s.__data_[0] = 0;
  }

  return 1;
}

uint64_t *sub_101541338(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

const void **sub_101541758(void *a1, const void **a2)
{
  v4 = sub_1000D3314(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100022D3C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t *sub_101541BA8(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_101541C5C(void *a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "set.cdma.fwd");
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a3;
  a1[3] = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger(v10, &v11);
  ctu::OsLogLogger::OsLogLogger((a1 + 5), v10);
  ctu::OsLogLogger::~OsLogLogger(v10);
  ctu::OsLogContext::~OsLogContext(&v11);
  v12[0] = off_101E2B528;
  v12[1] = sub_101542330;
  v12[3] = v12;
  a1[6] = 0;
  if ((capabilities::ct::supportsGemini(v7) & 1) == 0)
  {
    operator new();
  }

  if (!a1[6])
  {
    operator new();
  }

  sub_1000A8744(v12);
  *a1 = off_101F4AA38;
  a1[7] = *a2;
  v8 = a2[1];
  a1[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a1[3];
  v10[8] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  sub_10159BCDC();
}

const char *sub_101542330(int a1)
{
  v1 = "set.cdma.fwd.?";
  if (a1 == 2)
  {
    v1 = "set.cdma.fwd.2";
  }

  if (a1 == 1)
  {
    return "set.cdma.fwd.1";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10154235C(uint64_t a1)
{
  *a1 = off_101F4AA38;
  sub_1003509AC(a1 + 184, *(a1 + 192));
  sub_10154411C(*(a1 + 168));
  v2 = *(a1 + 152);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10032D3A4(a1 + 112, *(a1 + 120));
  v3 = *(a1 + 96);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_101542430(uint64_t a1)
{
  sub_10154235C(a1);

  operator delete();
}

void sub_101542468(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v2, *(a1 + 56));
  ctu::RestModule::connect();
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100FDC364(a1 + 104);
  sub_10000501C(&__p, "/cc/props/carrier_bundles");
  operator new();
}

void sub_1015428DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_1000062D4(&a33);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_101542988(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = (a1 + 120);
  if (v2 != (a1 + 120))
  {
    v5 = (a2 + 8);
    v6 = (a1 + 192);
    v33 = (a1 + 120);
    do
    {
      v7 = *v5;
      v8 = *(v2 + 8);
      if (*v5)
      {
        v9 = v5;
        do
        {
          if (*(v7 + 32) >= v8)
          {
            v9 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v8));
        }

        while (v7);
        if (v9 != v5 && v8 >= *(v9 + 8))
        {
          if (rest::operator==())
          {
            goto LABEL_23;
          }

          v8 = *(v2 + 8);
        }
      }

      v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = asString();
        v12 = asString();
        *buf = 136315394;
        *&buf[4] = v11;
        v37 = 2080;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle changed to %s (%s)", buf, 0x16u);
      }

      v13 = *v6;
      if (*v6)
      {
        v14 = v6;
        do
        {
          if (*(v13 + 32) >= v8)
          {
            v14 = v13;
          }

          v13 = *(v13 + 8 * (*(v13 + 32) < v8));
        }

        while (v13);
        if (v14 != v6 && *(v14 + 8) <= v8)
        {
          ServiceMap = Registry::getServiceMap(*(a1 + 56));
          v20 = ServiceMap;
          if (v21 < 0)
          {
            v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
            v23 = 5381;
            do
            {
              v21 = v23;
              v24 = *v22++;
              v23 = (33 * v23) ^ v24;
            }

            while (v24);
          }

          std::mutex::lock(ServiceMap);
          *buf = v21;
          v25 = sub_100009510(&v20[1].__m_.__sig, buf);
          if (v25)
          {
            v27 = v25[3];
            v26 = v25[4];
            if (v26)
            {
              atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v20);
              atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
              v3 = v33;
              sub_100004A34(v26);
              v28 = 0;
              if (!v27)
              {
LABEL_36:
                v29 = *(a1 + 40);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Could not get CarrierSettingsInterface", buf, 2u);
                }

LABEL_43:
                if ((v28 & 1) == 0)
                {
                  sub_100004A34(v26);
                }

                goto LABEL_23;
              }

LABEL_40:
              (*(*v27 + 80))(&v34, v27, v8, 1, @"CallForwardingDialingCodes", 0, 0);
              sub_100010180(&v35, &v34);
              v30 = v14 + 5;
              if (v14 + 5 != &v35)
              {
                v31 = *v30;
                *v30 = v35;
                v35 = 0;
                *buf = v31;
                sub_10001021C(buf);
              }

              sub_10001021C(&v35);
              sub_10000A1EC(&v34);
              goto LABEL_43;
            }
          }

          else
          {
            v27 = 0;
          }

          std::mutex::unlock(v20);
          v26 = 0;
          v28 = 1;
          if (!v27)
          {
            goto LABEL_36;
          }

          goto LABEL_40;
        }
      }

      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v32 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v32;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
      }

LABEL_23:
      v16 = v2[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v2[2];
          v18 = *v17 == v2;
          v2 = v17;
        }

        while (!v18);
      }

      v2 = v17;
    }

    while (v17 != v3);
  }
}

void sub_101542D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000A1EC(va);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(v7);
  }

  _Unwind_Resume(a1);
}

void sub_101542D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 4)
  {
    v9 = *(a1 + 168);
    if (!v9)
    {
      goto LABEL_11;
    }

    v11 = a1 + 168;
    do
    {
      if (*(v9 + 32) >= a2)
      {
        v11 = v9;
      }

      v9 = *(v9 + 8 * (*(v9 + 32) < a2));
    }

    while (v9);
    if (v11 != a1 + 168 && *(v11 + 32) <= a2)
    {
      v13 = *(a1 + 72);
      v14 = v11 + 168 * a3;
      v15 = *(v14 + 40);
      sub_1000AE428(&v16, v14 + 48);
      (*(*v13 + 32))(v13, a2, a3, a4, v15 & 1, 0, &v16);
      if (v26 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }

      if (v18 < 0)
      {
        operator delete(v17);
      }
    }

    else
    {
LABEL_11:
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v28 = subscriber::asString();
        v7 = "Cannot find slot %s!!";
        v8 = v12;
        goto LABEL_24;
      }
    }
  }

  else
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = sub_100FE7EFC(a3);
      v7 = "%s is not a valid reason for fetching call forwarding.";
      v8 = v6;
LABEL_24:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
    }
  }
}

BOOL sub_101542FE4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, signed int a6)
{
  if (a6 >= 4)
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v16 = 136315138;
    v17 = sub_100FE7EFC(a6);
    v9 = "%s is not a valid reason for getting call forwarding.";
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v9, &v16, 0xCu);
    return 0;
  }

  v10 = *(a1 + 168);
  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = a1 + 168;
  do
  {
    if (*(v10 + 32) >= a2)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 32) < a2));
  }

  while (v10);
  if (v12 == a1 + 168 || *(v12 + 32) > a2)
  {
LABEL_11:
    v7 = *(a1 + 40);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v16 = 136315138;
    v17 = subscriber::asString();
    v9 = "Cannot find slot %s!!";
    goto LABEL_13;
  }

  v13 = v12 + 168 * a6;
  *a3 = *(v13 + 40);
  *a4 = *(v13 + 48);
  std::string::operator=((a4 + 8), (v13 + 56));
  std::string::operator=((a4 + 32), (v13 + 80));
  v14 = *(v13 + 108);
  *(a4 + 56) = *(v13 + 104);
  *(a4 + 60) = v14;
  std::string::operator=((a4 + 64), (v13 + 112));
  v15 = *(v13 + 144);
  *(a4 + 88) = *(v13 + 136);
  *(a4 + 96) = v15;
  std::string::operator=((a4 + 104), (v13 + 152));
  std::string::operator=((a4 + 128), (v13 + 176));
  *(a4 + 152) = *(v13 + 200);
  return 1;
}

void sub_1015431D0(uint64_t a1, unsigned int a2, int a3, CSIPhoneNumber *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a2;
  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    CSIPhoneNumber::getFullNumber(&__p, a4);
    v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    buf.var0 = 67109634;
    buf.var1 = a3;
    *buf.var2.__rep_.__s.__data_ = 2080;
    *(&buf.var2.__rep_.__l.__data_ + 2) = v13;
    WORD1(buf.var2.__rep_.__l.__size_) = 1024;
    HIDWORD(buf.var2.__rep_.__l.__size_) = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I saveCallForwardingValue: Enabled: %d, FwdNumber: %s, FwdReason: %d", &buf, 0x18u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a6 >= 5)
  {
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v59);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_100FE7EFC(a6);
      buf.var0 = 136315138;
      *&buf.var1 = v15;
      v16 = "%s is not a valid reason for saving call forwarding.";
      v17 = v14;
LABEL_20:
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, &buf, 0xCu);
      return;
    }

    return;
  }

  if ((*(a1 + 104) & 1) == 0)
  {
LABEL_21:
    (*(**(a1 + 72) + 24))(*(a1 + 72), v59, a6, a7, 0);
    return;
  }

  v18 = *(a1 + 168);
  if (v18)
  {
    v19 = v59;
    v20 = a1 + 168;
    do
    {
      if (*(v18 + 32) >= v59)
      {
        v20 = v18;
      }

      v18 = *(v18 + 8 * (*(v18 + 32) < v59));
    }

    while (v18);
    if (v20 != a1 + 168 && v59 >= *(v20 + 32))
    {
      if ((*(a1 + 136) & 1) == 0)
      {
        *&buf.var0 = &v59;
        if (sub_100FD5BB4(a1 + 184, &v59)[5])
        {
          memset(&__p, 0, sizeof(__p));
          v56 = 0;
          v57 = 0uLL;
          if (a3)
          {
            CSIPhoneNumber::getFullNumber(&buf.var0, a4);
          }

          else
          {
            sub_10000501C(&buf, "");
          }

          *&__p.__r_.__value_.__l.__data_ = *&buf.var0;
          __p.__r_.__value_.__r.__words[2] = buf.var2.__rep_.__l.__size_;
          v24 = *(**(a1 + 48) + 16);
          if (a6 == 4)
          {
            v25 = *v24();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.var0) = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Call forwarding reason: All", &buf, 2u);
            }

            if (a3)
            {
              __TUAssertTrigger();
            }

            v26 = -672;
            do
            {
              *(v20 + v26 + 712) = a3;
              CSIPhoneNumber::CSIPhoneNumber(&buf, "");
              *(v20 + v26 + 720) = *&buf.var0;
              v27 = (v20 + v26 + 728);
              if (*(v20 + v26 + 751) < 0)
              {
                operator delete(*v27);
              }

              v28 = *buf.var2.__rep_.__s.__data_;
              *(v20 + v26 + 744) = *(&buf.var2.__rep_.__l + 2);
              *v27 = v28;
              *(&buf.var2.__rep_.__l + 23) = 0;
              buf.var2.__rep_.__s.__data_[0] = 0;
              v29 = v20 + v26;
              v30 = (v20 + v26 + 752);
              if (*(v20 + v26 + 775) < 0)
              {
                operator delete(*v30);
              }

              v31 = v62;
              *(v20 + v26 + 768) = v63;
              *v30 = v31;
              HIBYTE(v63) = 0;
              LOBYTE(v62) = 0;
              v32 = v65;
              *(v29 + 776) = v64;
              *(v29 + 780) = v32;
              v33 = (v29 + 784);
              if (*(v29 + 807) < 0)
              {
                operator delete(*v33);
              }

              v34 = v66;
              *(v29 + 800) = v67;
              *v33 = v34;
              HIBYTE(v67) = 0;
              LOBYTE(v66) = 0;
              v35 = v20 + v26;
              v36 = v69;
              *(v35 + 808) = v68;
              *(v35 + 816) = v36;
              v37 = (v20 + v26 + 824);
              if (*(v20 + v26 + 847) < 0)
              {
                operator delete(*v37);
              }

              v38 = v70;
              *(v20 + v26 + 840) = v71;
              *v37 = v38;
              HIBYTE(v71) = 0;
              LOBYTE(v70) = 0;
              v39 = (v35 + 848);
              if (*(v35 + 871) < 0)
              {
                operator delete(*v39);
                v41 = SHIBYTE(v71);
                v42 = v72;
                *(v35 + 864) = v73;
                *v39 = v42;
                HIBYTE(v73) = 0;
                LOBYTE(v72) = 0;
                *(v20 + v26 + 872) = v74;
                if (v41 < 0)
                {
                  operator delete(v70);
                }
              }

              else
              {
                v40 = v72;
                *(v35 + 864) = v73;
                *v39 = v40;
                HIBYTE(v73) = 0;
                LOBYTE(v72) = 0;
                *(v20 + v26 + 872) = v74;
              }

              if (SHIBYTE(v67) < 0)
              {
                operator delete(v66);
              }

              if (SHIBYTE(v63) < 0)
              {
                operator delete(v62);
              }

              if (*(&buf.var2.__rep_.__l + 23) < 0)
              {
                operator delete(buf.var2.__rep_.__l.__data_);
              }

              v26 += 168;
            }

            while (v26);
            *&buf.var0 = &v59;
            v43 = sub_100FD5BB4(a1 + 184, &v59);
            CFDictionaryGetValue(v43[5], @"DisableCallForwarding");
            memset(&buf, 0, 24);
            ctu::cf::assign();
            v44 = *&buf.var0;
            v56 = *&buf.var0;
            *&v57 = buf.var2.__rep_.__l.__data_;
            *(&v57 + 7) = *(&buf.var2.__rep_.__l.__data_ + 7);
            v45 = buf.var2.__rep_.__s.__data_[15];
          }

          else
          {
            v46 = *v24();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.var0) = 0;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I Call forwarding reason: Custom", &buf, 2u);
            }

            v47 = v20 + 168 * a6;
            *(v47 + 40) = a3;
            sub_101472B2C(v47 + 48, a4);
            v48 = off_101F4A9E8;
            if (a3)
            {
              v48 = off_101F4AA08;
            }

            v49 = v48[a6];
            *&buf.var0 = &v59;
            v50 = sub_100FD5BB4(a1 + 184, &v59);
            CFDictionaryGetValue(v50[5], v49);
            memset(&buf, 0, 24);
            ctu::cf::assign();
            v44 = *&buf.var0;
            v60[0] = buf.var2.__rep_.__l.__data_;
            *(v60 + 7) = *(&buf.var2.__rep_.__l.__data_ + 7);
            v45 = buf.var2.__rep_.__s.__data_[15];
            if (SHIBYTE(v57) < 0)
            {
              operator delete(v56);
            }

            v56 = v44;
            *&v57 = v60[0];
            *(&v57 + 7) = *(v60 + 7);
          }

          HIBYTE(v57) = v45;
          sub_101543A84(a1, v59);
          if ((v45 & 0x80u) == 0)
          {
            v51 = &v56;
          }

          else
          {
            v51 = v44;
          }

          if ((v45 & 0x80u) == 0)
          {
            v52 = v45;
          }

          else
          {
            v52 = v57;
          }

          std::string::insert(&__p, 0, v51, v52);
          v53 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v59);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = &v56;
            if (v57 < 0)
            {
              v54 = v56;
            }

            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            buf.var0 = 136315394;
            *&buf.var1 = v54;
            WORD2(buf.var2.__rep_.__l.__data_) = 2080;
            *(&buf.var2.__rep_.__l.__data_ + 6) = p_p;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Prefix: %s, FinalBaseNumber: %s", &buf, 0x16u);
          }

          sub_101543C20(a1, v59, &__p, a6);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return;
        }

        v19 = v59;
      }

      v23 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v19);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I saveCallForwardingValue - Ongoing Voice call", &buf, 2u);
      }

      goto LABEL_21;
    }
  }

  v21 = *(a1 + 40);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = subscriber::asString();
    buf.var0 = 136315138;
    *&buf.var1 = v22;
    v16 = "Cannot find slot %s!!";
    v17 = v21;
    goto LABEL_20;
  }
}

void sub_101543A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101543A84(uint64_t a1, int a2)
{
  v14 = a2;
  memset(&v13, 0, sizeof(v13));
  sub_100B47BF4(a2, &v13);
  v3 = off_101F4A9C8;
  v4 = 6;
  v5 = off_101F4A9A8;
  do
  {
    v6 = sub_10005D028();
    std::operator+<char>();
    v10[0] = &v14;
    v7 = sub_1015441E4(a1 + 160, v14);
    sub_1006197F4(v6, &__p, &v7[v4 - 1]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = sub_10005D028();
    std::operator+<char>();
    v15 = &v14;
    v9 = sub_1015441E4(a1 + 160, v14);
    CSIPhoneNumber::getFullNumber(v10, &v9[v4]);
    sub_1002D5CC0(v8, &__p, v10);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v4 += 21;
    ++v3;
    ++v5;
  }

  while (v4 != 90);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_101543BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101543C20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    *buf = 136315138;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Dialing %s", buf, 0xCu);
  }

  v10 = *(a1 + 144);
  v12[0] = off_101F4ABD0;
  v12[1] = a1;
  v12[2] = a2 | (a4 << 32);
  v12[3] = v12;
  (*(*v10 + 16))(v10, a2, a3, v12);
  return sub_10002B644(v12);
}

void sub_101543D8C(uint64_t a1)
{
  v2 = *(a1 + 160);
  v22 = (a1 + 168);
  if (v2 != (a1 + 168))
  {
    do
    {
      v3 = 0;
      v4 = (v2 + 6);
      do
      {
        v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v2 + 8));
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = sub_100FE7EFC(v3);
          if (v4[-1].var2.__rep_.__s.__data_[16])
          {
            v7 = "enabled";
          }

          else
          {
            v7 = "disabled";
          }

          CSIPhoneNumber::getFullNumber(__p, v4);
          v8 = __p;
          if (v24 < 0)
          {
            v8 = __p[0];
          }

          *buf = 136315650;
          v26 = v6;
          v27 = 2080;
          v28 = v7;
          v29 = 2080;
          v30 = v8;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: is %s with number %s", buf, 0x20u);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        ++v3;
        v4 = (v4 + 168);
      }

      while (v3 != 4);
      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v22);
  }

  v12 = *(a1 + 184);
  if (v12 != (a1 + 192))
  {
    do
    {
      v13 = v12[5];
      v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v12 + 8));
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          v16 = v12[5];
          *buf = 138412290;
          v26 = v16;
          v17 = v14;
          v18 = "#I configuring prefixes are: %@";
          v19 = 12;
LABEL_24:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
        }
      }

      else if (v15)
      {
        *buf = 0;
        v17 = v14;
        v18 = "#I no configuring prefixes";
        v19 = 2;
        goto LABEL_24;
      }

      v20 = v12[1];
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
          v21 = v12[2];
          v11 = *v21 == v12;
          v12 = v21;
        }

        while (!v11);
      }

      v12 = v21;
    }

    while (v21 != (a1 + 192));
  }
}