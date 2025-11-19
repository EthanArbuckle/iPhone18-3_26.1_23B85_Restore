void sub_10061216C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  sub_100005978((v56 - 120));
  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v56 - 128));
  _Unwind_Resume(a1);
}

void sub_100612484(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"csr");
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 24))
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 15) = 0;
        *(a1 + 23) = 0;
      }

      else
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 15) = 0;
        *(a1 + 23) = 0;
        *(a1 + 24) = 1;
      }
    }
  }

  v6 = CFDictionaryGetValue(theDict, @"sip-uri");
  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == CFStringGetTypeID())
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

  v8 = CFDictionaryGetValue(theDict, @"apn");
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFStringGetTypeID())
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

  v10 = CFDictionaryGetValue(theDict, @"username");
  if (v10)
  {
    v11 = CFGetTypeID(v10);
    if (v11 == CFStringGetTypeID())
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

  v12 = CFDictionaryGetValue(theDict, @"password");
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    if (v13 == CFStringGetTypeID())
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

  v14 = CFDictionaryGetValue(theDict, @"imsi");
  if (v14)
  {
    v15 = CFGetTypeID(v14);
    if (v15 == CFStringGetTypeID())
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

  v16 = CFDictionaryGetValue(theDict, @"impu");
  if (v16)
  {
    v17 = CFGetTypeID(v16);
    if (v17 == CFStringGetTypeID())
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

  v18 = CFDictionaryGetValue(theDict, @"pcscf-address");
  if (v18)
  {
    v19 = CFGetTypeID(v18);
    if (v19 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 248))
      {
        if (*(a1 + 247) < 0)
        {
          operator delete(*(a1 + 224));
        }

        *(a1 + 224) = 0;
        *(a1 + 232) = 0;
        *(a1 + 239) = 0;
        *(a1 + 247) = 0;
      }

      else
      {
        *(a1 + 224) = 0;
        *(a1 + 232) = 0;
        *(a1 + 239) = 0;
        *(a1 + 247) = 0;
        *(a1 + 248) = 1;
      }
    }
  }
}

void sub_100612A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100612A44(uint64_t a1@<X0>, CFMutableDictionaryRef *a2@<X8>)
{
  *a2 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (Mutable)
  {
    *a2 = Mutable;
    *&v23 = 0;
    sub_1000296E0(&v23);
  }

  if (*(a1 + 256) == 1)
  {
    sub_1006117A4(a1, &v23);
    CFDictionaryAddValue(v5, @"imsIndividualCredentials", v23);
    sub_10001021C(&v23);
  }

  if (*(a1 + 288) == 1)
  {
    if (*(a1 + 287) < 0)
    {
      sub_100005F2C(__p, *(a1 + 264), *(a1 + 272));
    }

    else
    {
      *__p = *(a1 + 264);
      v18 = *(a1 + 280);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v22 = v18;
    }

    v20 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&v23, __dst, *(&__dst + 1));
    }

    else
    {
      v23 = __dst;
      v24 = v22;
    }

    v25 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v20;
      v20 = v25;
      v26 = v6;
      sub_100005978(&v26);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    value = v20;
    v20 = 0;
    sub_100005978(&v20);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v5, @"token", value);
    sub_100005978(&value);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 320) == 1)
  {
    if (*(a1 + 319) < 0)
    {
      sub_100005F2C(v15, *(a1 + 296), *(a1 + 304));
    }

    else
    {
      *v15 = *(a1 + 296);
      v16 = *(a1 + 312);
    }

    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(&__dst, v15[0], v15[1]);
    }

    else
    {
      __dst = *v15;
      v22 = v16;
    }

    v20 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&v23, __dst, *(&__dst + 1));
    }

    else
    {
      v23 = __dst;
      v24 = v22;
    }

    v25 = 0;
    if (ctu::cf::convert_copy())
    {
      v7 = v20;
      v20 = v25;
      v26 = v7;
      sub_100005978(&v26);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    value = v20;
    v20 = 0;
    sub_100005978(&v20);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v5, @"subscriberId", value);
    sub_100005978(&value);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }
  }

  if (*(a1 + 352) == 1)
  {
    if (*(a1 + 351) < 0)
    {
      sub_100005F2C(v13, *(a1 + 328), *(a1 + 336));
    }

    else
    {
      *v13 = *(a1 + 328);
      v14 = *(a1 + 344);
    }

    if (SHIBYTE(v14) < 0)
    {
      sub_100005F2C(&__dst, v13[0], v13[1]);
    }

    else
    {
      __dst = *v13;
      v22 = v14;
    }

    v20 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&v23, __dst, *(&__dst + 1));
    }

    else
    {
      v23 = __dst;
      v24 = v22;
    }

    v25 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v20;
      v20 = v25;
      v26 = v8;
      sub_100005978(&v26);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    value = v20;
    v20 = 0;
    sub_100005978(&v20);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v5, @"gatewayUsername", value);
    sub_100005978(&value);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }

  if (*(a1 + 384) == 1)
  {
    if (*(a1 + 383) < 0)
    {
      sub_100005F2C(v11, *(a1 + 360), *(a1 + 368));
    }

    else
    {
      *v11 = *(a1 + 360);
      v12 = *(a1 + 376);
    }

    if (SHIBYTE(v12) < 0)
    {
      sub_100005F2C(&__dst, v11[0], v11[1]);
    }

    else
    {
      __dst = *v11;
      v22 = v12;
    }

    v20 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&v23, __dst, *(&__dst + 1));
    }

    else
    {
      v23 = __dst;
      v24 = v22;
    }

    v25 = 0;
    if (ctu::cf::convert_copy())
    {
      v9 = v20;
      v20 = v25;
      v26 = v9;
      sub_100005978(&v26);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    v10 = v20;
    value = v20;
    v20 = 0;
    sub_100005978(&v20);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v5, @"gatewayPassword", v10);
    sub_100005978(&value);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }
}

void sub_100612F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, int a38, const void *a39)
{
  sub_100005978(&a39);
  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(v39);
  _Unwind_Resume(a1);
}

void sub_100613124(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"imsIndividualCredentials");
  if (Value)
  {
    v5 = Value;
    memset(v30, 0, sizeof(v30));
    sub_1006134DC(a1, v30);
    sub_100221F4C(v30);
    sub_100612484(a1, v5);
  }

  v6 = CFDictionaryGetValue(theDict, @"token");
  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == CFStringGetTypeID())
    {
      memset(v30, 0, 24);
      ctu::cf::assign();
      v31[0] = *(&v30[0] + 1);
      v8 = *&v30[0];
      *(v31 + 7) = *(v30 + 15);
      v9 = BYTE7(v30[1]);
      if (*(a1 + 288))
      {
        if (*(a1 + 287) < 0)
        {
          operator delete(*(a1 + 264));
        }

        v10 = v31[0];
        *(a1 + 264) = v8;
        *(a1 + 272) = v10;
        *(a1 + 279) = *(v31 + 7);
        *(a1 + 287) = v9;
      }

      else
      {
        v11 = v31[0];
        *(a1 + 264) = *&v30[0];
        *(a1 + 272) = v11;
        *(a1 + 279) = *(v31 + 7);
        *(a1 + 287) = v9;
        *(a1 + 288) = 1;
      }
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"subscriberId");
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    if (v13 == CFStringGetTypeID())
    {
      memset(v30, 0, 24);
      ctu::cf::assign();
      v31[0] = *(&v30[0] + 1);
      v14 = *&v30[0];
      *(v31 + 7) = *(v30 + 15);
      v15 = BYTE7(v30[1]);
      if (*(a1 + 320))
      {
        if (*(a1 + 319) < 0)
        {
          operator delete(*(a1 + 296));
        }

        v16 = v31[0];
        *(a1 + 296) = v14;
        *(a1 + 304) = v16;
        *(a1 + 311) = *(v31 + 7);
        *(a1 + 319) = v15;
      }

      else
      {
        v17 = v31[0];
        *(a1 + 296) = *&v30[0];
        *(a1 + 304) = v17;
        *(a1 + 311) = *(v31 + 7);
        *(a1 + 319) = v15;
        *(a1 + 320) = 1;
      }
    }
  }

  v18 = CFDictionaryGetValue(theDict, @"gatewayUsername");
  if (v18)
  {
    v19 = CFGetTypeID(v18);
    if (v19 == CFStringGetTypeID())
    {
      memset(v30, 0, 24);
      ctu::cf::assign();
      v31[0] = *(&v30[0] + 1);
      v20 = *&v30[0];
      *(v31 + 7) = *(v30 + 15);
      v21 = BYTE7(v30[1]);
      if (*(a1 + 352))
      {
        if (*(a1 + 351) < 0)
        {
          operator delete(*(a1 + 328));
        }

        v22 = v31[0];
        *(a1 + 328) = v20;
        *(a1 + 336) = v22;
        *(a1 + 343) = *(v31 + 7);
        *(a1 + 351) = v21;
      }

      else
      {
        v23 = v31[0];
        *(a1 + 328) = *&v30[0];
        *(a1 + 336) = v23;
        *(a1 + 343) = *(v31 + 7);
        *(a1 + 351) = v21;
        *(a1 + 352) = 1;
      }
    }
  }

  v24 = CFDictionaryGetValue(theDict, @"gatewayPassword");
  if (v24)
  {
    v25 = CFGetTypeID(v24);
    if (v25 == CFStringGetTypeID())
    {
      memset(v30, 0, 24);
      ctu::cf::assign();
      v31[0] = *(&v30[0] + 1);
      v26 = *&v30[0];
      *(v31 + 7) = *(v30 + 15);
      v27 = BYTE7(v30[1]);
      if (*(a1 + 384))
      {
        if (*(a1 + 383) < 0)
        {
          operator delete(*(a1 + 360));
        }

        v28 = v31[0];
        *(a1 + 360) = v26;
        *(a1 + 368) = v28;
        *(a1 + 375) = *(v31 + 7);
        *(a1 + 383) = v27;
      }

      else
      {
        v29 = v31[0];
        *(a1 + 360) = *&v30[0];
        *(a1 + 368) = v29;
        *(a1 + 375) = *(v31 + 7);
        *(a1 + 383) = v27;
        *(a1 + 384) = 1;
      }
    }
  }
}

void sub_10061349C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006134DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 256) == 1)
  {
    sub_100616810(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v3;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a1 + 24) = 1;
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    if (*(a2 + 56) == 1)
    {
      v4 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v4;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
      *(a1 + 56) = 1;
    }

    *(a1 + 64) = 0;
    *(a1 + 88) = 0;
    if (*(a2 + 88) == 1)
    {
      v5 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v5;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 64) = 0;
      *(a1 + 88) = 1;
    }

    *(a1 + 96) = 0;
    *(a1 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      v6 = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 96) = v6;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      *(a2 + 96) = 0;
      *(a1 + 120) = 1;
    }

    *(a1 + 128) = 0;
    *(a1 + 152) = 0;
    if (*(a2 + 152) == 1)
    {
      v7 = *(a2 + 128);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 128) = v7;
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      *(a2 + 128) = 0;
      *(a1 + 152) = 1;
    }

    *(a1 + 160) = 0;
    *(a1 + 184) = 0;
    if (*(a2 + 184) == 1)
    {
      v8 = *(a2 + 160);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 160) = v8;
      *(a2 + 168) = 0;
      *(a2 + 176) = 0;
      *(a2 + 160) = 0;
      *(a1 + 184) = 1;
    }

    *(a1 + 192) = 0;
    *(a1 + 216) = 0;
    if (*(a2 + 216) == 1)
    {
      v9 = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 192) = v9;
      *(a2 + 200) = 0;
      *(a2 + 208) = 0;
      *(a2 + 192) = 0;
      *(a1 + 216) = 1;
    }

    *(a1 + 224) = 0;
    *(a1 + 248) = 0;
    if (*(a2 + 248) == 1)
    {
      v10 = *(a2 + 224);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 224) = v10;
      *(a2 + 232) = 0;
      *(a2 + 240) = 0;
      *(a2 + 224) = 0;
      *(a1 + 248) = 1;
    }

    *(a1 + 256) = 1;
  }

  return a1;
}

void *IMSInfo::serialize@<X0>(IMSInfo *this@<X0>, void *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (*(this + 23) < 0)
  {
    v5 = *(this + 1);
    if (!v5)
    {
      goto LABEL_20;
    }

    sub_100005F2C(&__dst, *this, v5);
  }

  else
  {
    if (!*(this + 23))
    {
      goto LABEL_20;
    }

    __dst = *this;
    v56 = *(this + 2);
  }

  if (SHIBYTE(v56) < 0)
  {
    sub_100005F2C(&v59, __dst, *(&__dst + 1));
  }

  else
  {
    v59 = __dst;
    v60 = v56;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v58;
    v58 = v63;
    v64 = v6;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"imsi", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__dst);
  }

LABEL_20:
  if (*(this + 47) < 0)
  {
    v7 = *(this + 4);
    if (!v7)
    {
      goto LABEL_39;
    }

    sub_100005F2C(__p, *(this + 3), v7);
  }

  else
  {
    if (!*(this + 47))
    {
      goto LABEL_39;
    }

    *__p = *(this + 24);
    v54 = *(this + 5);
  }

  if (SHIBYTE(v54) < 0)
  {
    sub_100005F2C(&v59, __p[0], __p[1]);
  }

  else
  {
    v59 = *__p;
    v60 = v54;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v58;
    v58 = v63;
    v64 = v8;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"impi", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v9 = *(this + 7) - *(this + 6);
  if (v9)
  {
    v63 = 0;
    v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0xAAAAAAAAAAAAAAABLL * (v9 >> 3), &kCFTypeArrayCallBacks);
    v63 = v10;
    v12 = *(this + 6);
    if (*(this + 7) == v12)
    {
      v18 = v10;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = (v12 + v13);
        if (*(v12 + v13 + 23) < 0)
        {
          v15 = *v15;
        }

        v16 = v63;
        v64 = 0;
        *&v59 = 0;
        if (ctu::cf::convert_copy(&v59, v15, 0x8000100, kCFAllocatorDefault, v11))
        {
          v17 = v64;
          v64 = v59;
          *&valuePtr = v17;
          sub_100005978(&valuePtr);
        }

        v58 = v64;
        v64 = 0;
        sub_100005978(&v64);
        CFArrayAppendValue(v16, v58);
        sub_100005978(&v58);
        ++v14;
        v12 = *(this + 6);
        v13 += 24;
      }

      while (v14 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v12) >> 3));
      v18 = v63;
    }

    CFDictionaryAddValue(Mutable, @"impuList", v18);
    sub_1000279DC(&v63);
  }

  if (*(this + 95) < 0)
  {
    v19 = *(this + 10);
    if (!v19)
    {
      goto LABEL_69;
    }

    sub_100005F2C(v51, *(this + 9), v19);
  }

  else
  {
    if (!*(this + 95))
    {
      goto LABEL_69;
    }

    *v51 = *(this + 72);
    v52 = *(this + 11);
  }

  if (SHIBYTE(v52) < 0)
  {
    sub_100005F2C(&v59, v51[0], v51[1]);
  }

  else
  {
    v59 = *v51;
    v60 = v52;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v20 = v58;
    v58 = v63;
    v64 = v20;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"mdn", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

LABEL_69:
  if (*(this + 119) < 0)
  {
    v21 = *(this + 13);
    if (!v21)
    {
      goto LABEL_88;
    }

    sub_100005F2C(v49, *(this + 12), v21);
  }

  else
  {
    if (!*(this + 119))
    {
      goto LABEL_88;
    }

    *v49 = *(this + 6);
    v50 = *(this + 14);
  }

  if (SHIBYTE(v50) < 0)
  {
    sub_100005F2C(&v59, v49[0], v49[1]);
  }

  else
  {
    v59 = *v49;
    v60 = v50;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v22 = v58;
    v58 = v63;
    v64 = v22;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"realm", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

LABEL_88:
  if (*(this + 143) < 0)
  {
    v23 = *(this + 16);
    if (!v23)
    {
      goto LABEL_107;
    }

    sub_100005F2C(v47, *(this + 15), v23);
  }

  else
  {
    if (!*(this + 143))
    {
      goto LABEL_107;
    }

    *v47 = *(this + 120);
    v48 = *(this + 17);
  }

  if (SHIBYTE(v48) < 0)
  {
    sub_100005F2C(&v59, v47[0], v47[1]);
  }

  else
  {
    v59 = *v47;
    v60 = v48;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v24 = v58;
    v58 = v63;
    v64 = v24;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"apn", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

LABEL_107:
  v25 = *(this + 36);
  *&v59 = 0;
  *&valuePtr = v25;
  v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v26)
  {
    v27 = v59;
    *&v59 = v26;
    *&valuePtr = v27;
    sub_100029A48(&valuePtr);
  }

  v64 = v59;
  *&v59 = 0;
  sub_100029A48(&v59);
  CFDictionaryAddValue(Mutable, @"ipVer", v64);
  sub_100029A48(&v64);
  if (*(this + 175) < 0)
  {
    v28 = *(this + 20);
    if (!v28)
    {
      goto LABEL_128;
    }

    sub_100005F2C(v45, *(this + 19), v28);
  }

  else
  {
    if (!*(this + 175))
    {
      goto LABEL_128;
    }

    *v45 = *(this + 152);
    v46 = *(this + 21);
  }

  if (SHIBYTE(v46) < 0)
  {
    sub_100005F2C(&v59, v45[0], v45[1]);
  }

  else
  {
    v59 = *v45;
    v60 = v46;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v29 = v58;
    v58 = v63;
    v64 = v29;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"password", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

LABEL_128:
  v30 = &kCFBooleanTrue;
  if (!*(this + 176))
  {
    v30 = &kCFBooleanFalse;
  }

  CFDictionaryAddValue(Mutable, @"allowNoDNS", *v30);
  if (*(this + 207) < 0)
  {
    v31 = *(this + 24);
    if (!v31)
    {
      goto LABEL_149;
    }

    sub_100005F2C(v43, *(this + 23), v31);
  }

  else
  {
    if (!*(this + 207))
    {
      goto LABEL_149;
    }

    *v43 = *(this + 184);
    v44 = *(this + 25);
  }

  if (SHIBYTE(v44) < 0)
  {
    sub_100005F2C(&v59, v43[0], v43[1]);
  }

  else
  {
    v59 = *v43;
    v60 = v44;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v32 = v58;
    v58 = v63;
    v64 = v32;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"mcc", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

LABEL_149:
  if (*(this + 231) < 0)
  {
    v33 = *(this + 27);
    if (!v33)
    {
      goto LABEL_168;
    }

    sub_100005F2C(v41, *(this + 26), v33);
  }

  else
  {
    if (!*(this + 231))
    {
      goto LABEL_168;
    }

    *v41 = *(this + 13);
    v42 = *(this + 28);
  }

  if (SHIBYTE(v42) < 0)
  {
    sub_100005F2C(&v59, v41[0], v41[1]);
  }

  else
  {
    v59 = *v41;
    v60 = v42;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v34 = v58;
    v58 = v63;
    v64 = v34;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"isoMcc", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

LABEL_168:
  if (*(this + 255) < 0)
  {
    v35 = *(this + 30);
    if (!v35)
    {
      goto LABEL_187;
    }

    sub_100005F2C(v39, *(this + 29), v35);
  }

  else
  {
    if (!*(this + 255))
    {
      goto LABEL_187;
    }

    *v39 = *(this + 232);
    v40 = *(this + 31);
  }

  if (SHIBYTE(v40) < 0)
  {
    sub_100005F2C(&v59, v39[0], v39[1]);
  }

  else
  {
    v59 = *v39;
    v60 = v40;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v36 = v58;
    v58 = v63;
    v64 = v36;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v37 = v58;
  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"mnc", v37);
  sub_100005978(&v57);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

LABEL_187:
  *&valuePtr = Mutable;
  return sub_100424E40(a2, &valuePtr);
}

void sub_1006142F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  sub_100005978((v63 - 168));
  if (*(v63 - 137) < 0)
  {
    operator delete(*(v63 - 160));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void IMSInfo::deserialize(IMSInfo *this, CFDictionaryRef theDict)
{
  v2 = theDict;
  CFDictionaryGetValue(theDict, @"imsi");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v62[0] = 0;
  *(v62 + 7) = 0;
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  v4 = v62[0];
  *this = 0;
  *(this + 1) = v4;
  *(this + 15) = *(v62 + 7);
  *(this + 23) = 0;
  CFDictionaryGetValue(v2, @"impi");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v62[0] = 0;
  *(v62 + 7) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v5 = v62[0];
  *(this + 3) = 0;
  *(this + 4) = v5;
  *(this + 39) = *(v62 + 7);
  *(this + 47) = 0;
  v6 = (this + 48);
  sub_100008764(this + 6);
  Value = CFDictionaryGetValue(v2, @"impuList");
  v8 = Value;
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFArrayGetTypeID() && CFArrayGetCount(v8) >= 1)
    {
      v10 = 0;
      v11 = v2;
      do
      {
        CFArrayGetValueAtIndex(v8, v10);
        v58 = 0;
        v59 = 0uLL;
        ctu::cf::assign();
        v62[0] = v59;
        *(v62 + 7) = *(&v59 + 7);
        v12 = HIBYTE(v59);
        v13 = *(this + 7);
        v14 = *(this + 8);
        if (v13 >= v14)
        {
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v6) >> 3);
          v18 = v17 + 1;
          if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1000CE3D4();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v6) >> 3);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x555555555555555)
          {
            v20 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v20 = v18;
          }

          v61 = this + 48;
          if (v20)
          {
            sub_100005348(this + 48, v20);
          }

          v21 = 24 * v17;
          v22 = v62[0];
          *v21 = v58;
          *(v21 + 8) = v22;
          *(v21 + 15) = *(v62 + 7);
          *(v21 + 23) = v12;
          v16 = 24 * v17 + 24;
          v23 = *(this + 6);
          v24 = *(this + 7) - v23;
          v25 = v21 - v24;
          memcpy((v21 - v24), v23, v24);
          v26 = *(this + 6);
          *(this + 6) = v25;
          *(this + 7) = v16;
          v27 = *(this + 8);
          *(this + 8) = 0;
          *(&v59 + 1) = v26;
          v60 = v27;
          v58 = v26;
          *&v59 = v26;
          sub_1000054E0(&v58);
          v2 = v11;
        }

        else
        {
          v15 = v62[0];
          *v13 = v58;
          *(v13 + 8) = v15;
          *(v13 + 15) = *(v62 + 7);
          *(v13 + 23) = v12;
          v16 = v13 + 24;
        }

        *(this + 7) = v16;
        ++v10;
      }

      while (v10 < CFArrayGetCount(v8));
    }
  }

  CFDictionaryGetValue(v2, @"mdn");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v28 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v29 = HIBYTE(v59);
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  v30 = v62[0];
  *(this + 9) = v28;
  *(this + 10) = v30;
  *(this + 87) = *(v62 + 7);
  *(this + 95) = v29;
  CFDictionaryGetValue(v2, @"realm");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v31 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v32 = HIBYTE(v59);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v33 = v62[0];
  *(this + 12) = v31;
  *(this + 13) = v33;
  *(this + 111) = *(v62 + 7);
  *(this + 119) = v32;
  CFDictionaryGetValue(v2, @"apn");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v34 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v35 = HIBYTE(v59);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  v36 = v62[0];
  *(this + 15) = v34;
  *(this + 16) = v36;
  *(this + 135) = *(v62 + 7);
  *(this + 143) = v35;
  v37 = CFDictionaryGetValue(v2, @"ipVer");
  v38 = v37;
  LODWORD(v58) = 0;
  if (v37)
  {
    v39 = CFGetTypeID(v37);
    if (v39 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v58, v38, v40);
    }
  }

  *(this + 36) = v58;
  CFDictionaryGetValue(v2, @"password");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v41 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v42 = HIBYTE(v59);
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  v43 = v62[0];
  *(this + 19) = v41;
  *(this + 20) = v43;
  *(this + 167) = *(v62 + 7);
  *(this + 175) = v42;
  v44 = CFDictionaryGetValue(v2, @"allowNoDNS");
  v45 = v44;
  LOBYTE(v58) = 0;
  if (v44 && (v46 = CFGetTypeID(v44), v46 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v58, v45, v47);
    v48 = v58;
  }

  else
  {
    v48 = 0;
  }

  *(this + 176) = v48;
  CFDictionaryGetValue(v2, @"mcc");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v49 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v50 = HIBYTE(v59);
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  v51 = v62[0];
  *(this + 23) = v49;
  *(this + 24) = v51;
  *(this + 199) = *(v62 + 7);
  *(this + 207) = v50;
  CFDictionaryGetValue(v2, @"isoMcc");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v52 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v53 = HIBYTE(v59);
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  v54 = v62[0];
  *(this + 26) = v52;
  *(this + 27) = v54;
  *(this + 223) = *(v62 + 7);
  *(this + 231) = v53;
  CFDictionaryGetValue(v2, @"mnc");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v55 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v56 = HIBYTE(v59);
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  v57 = v62[0];
  *(this + 29) = v55;
  *(this + 30) = v57;
  *(this + 247) = *(v62 + 7);
  *(this + 255) = v56;
}

void sub_100614C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100614CC8(uint64_t a1, const __CFDictionary *a2)
{
  if (a2)
  {
    v61 = 0;
    *__p = 0u;
    v60 = 0u;
    *v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    *v54 = 0u;
    v51 = 0u;
    *v52 = 0u;
    memset(v50, 0, sizeof(v50));
    sub_1002B5320(a1, v50);
    if (v61 == 1 && SHIBYTE(v60) < 0)
    {
      operator delete(__p[1]);
    }

    if (LOBYTE(__p[0]) == 1 && SHIBYTE(v58) < 0)
    {
      operator delete(v57[1]);
    }

    if (BYTE8(v55) == 1 && SBYTE7(v55) < 0)
    {
      operator delete(v54[0]);
    }

    if (BYTE8(v53) == 1 && SBYTE7(v53) < 0)
    {
      operator delete(v52[0]);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[3]);
    }

    if (SHIBYTE(v50[2]) < 0)
    {
      operator delete(v50[0]);
    }

    Value = CFDictionaryGetValue(a2, @"displayName");
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v6 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v7 = HIBYTE(v50[2]);
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v8 = v62[0];
        *a1 = v6;
        *(a1 + 8) = v8;
        *(a1 + 15) = *(v62 + 7);
        *(a1 + 23) = v7;
      }
    }

    v9 = CFDictionaryGetValue(a2, @"sipUserName");
    if (v9)
    {
      v10 = CFGetTypeID(v9);
      if (v10 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v11 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v12 = HIBYTE(v50[2]);
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        v13 = v62[0];
        *(a1 + 24) = v11;
        *(a1 + 32) = v13;
        *(a1 + 39) = *(v62 + 7);
        *(a1 + 47) = v12;
      }
    }

    v14 = CFDictionaryGetValue(a2, @"addressUpdateURL");
    if (v14)
    {
      v15 = CFGetTypeID(v14);
      if (v15 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v16 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v17 = HIBYTE(v50[2]);
        if (*(a1 + 72))
        {
          if (*(a1 + 71) < 0)
          {
            operator delete(*(a1 + 48));
          }

          v18 = v62[0];
          *(a1 + 48) = v16;
          *(a1 + 56) = v18;
          *(a1 + 63) = *(v62 + 7);
          *(a1 + 71) = v17;
        }

        else
        {
          v19 = v62[0];
          *(a1 + 48) = v50[0];
          *(a1 + 56) = v19;
          *(a1 + 63) = *(v62 + 7);
          *(a1 + 71) = v17;
          *(a1 + 72) = 1;
        }
      }
    }

    v20 = CFDictionaryGetValue(a2, @"addressUpdateToken");
    if (v20)
    {
      v21 = CFGetTypeID(v20);
      if (v21 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v22 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v23 = HIBYTE(v50[2]);
        if (*(a1 + 104))
        {
          if (*(a1 + 103) < 0)
          {
            operator delete(*(a1 + 80));
          }

          v24 = v62[0];
          *(a1 + 80) = v22;
          *(a1 + 88) = v24;
          *(a1 + 95) = *(v62 + 7);
          *(a1 + 103) = v23;
        }

        else
        {
          v25 = v62[0];
          *(a1 + 80) = v50[0];
          *(a1 + 88) = v25;
          *(a1 + 95) = *(v62 + 7);
          *(a1 + 103) = v23;
          *(a1 + 104) = 1;
        }
      }
    }

    v26 = CFDictionaryGetValue(a2, @"addressStatus");
    v27 = v26;
    if (v26)
    {
      v28 = CFGetTypeID(v26);
      if (v28 == CFNumberGetTypeID())
      {
        LODWORD(v50[0]) = 0;
        ctu::cf::assign(v50, v27, v29);
        *(a1 + 112) = v50[0];
        *(a1 + 116) = 1;
      }
    }

    v30 = CFDictionaryGetValue(a2, @"tcStatus");
    v31 = v30;
    if (v30)
    {
      v32 = CFGetTypeID(v30);
      if (v32 == CFNumberGetTypeID())
      {
        LODWORD(v50[0]) = 0;
        ctu::cf::assign(v50, v31, v33);
        *(a1 + 120) = v50[0];
        *(a1 + 124) = 1;
      }
    }

    v34 = CFDictionaryGetValue(a2, @"proviStatus");
    v35 = v34;
    if (v34)
    {
      v36 = CFGetTypeID(v34);
      if (v36 == CFNumberGetTypeID())
      {
        LODWORD(v50[0]) = 0;
        ctu::cf::assign(v50, v35, v37);
        *(a1 + 128) = v50[0];
        *(a1 + 132) = 1;
      }
    }

    v38 = CFDictionaryGetValue(a2, @"address-ref-id");
    if (v38)
    {
      v39 = CFGetTypeID(v38);
      if (v39 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v40 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v41 = HIBYTE(v50[2]);
        if (*(a1 + 160))
        {
          if (*(a1 + 159) < 0)
          {
            operator delete(*(a1 + 136));
          }

          v42 = v62[0];
          *(a1 + 136) = v40;
          *(a1 + 144) = v42;
          *(a1 + 151) = *(v62 + 7);
          *(a1 + 159) = v41;
        }

        else
        {
          v43 = v62[0];
          *(a1 + 136) = v50[0];
          *(a1 + 144) = v43;
          *(a1 + 151) = *(v62 + 7);
          *(a1 + 159) = v41;
          *(a1 + 160) = 1;
        }
      }
    }

    v44 = CFDictionaryGetValue(a2, @"address-ref-id-expiry");
    if (v44)
    {
      v45 = CFGetTypeID(v44);
      if (v45 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v46 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v47 = HIBYTE(v50[2]);
        if (*(a1 + 192))
        {
          if (*(a1 + 191) < 0)
          {
            operator delete(*(a1 + 168));
          }

          v48 = v62[0];
          *(a1 + 168) = v46;
          *(a1 + 176) = v48;
          *(a1 + 183) = *(v62 + 7);
          *(a1 + 191) = v47;
        }

        else
        {
          v49 = v62[0];
          *(a1 + 168) = v50[0];
          *(a1 + 176) = v49;
          *(a1 + 183) = *(v62 + 7);
          *(a1 + 191) = v47;
          *(a1 + 192) = 1;
        }
      }
    }
  }
}

void sub_100615268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1006152B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = 0;
  if (*(a1 + 200) == 1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = v45;
      v45 = Mutable;
      *&valuePtr = v5;
      sub_1000296E0(&valuePtr);
    }

    v6 = v45;
    if (*(a1 + 23) < 0)
    {
      sub_100005F2C(__p, *a1, *(a1 + 8));
    }

    else
    {
      *__p = *a1;
      v43 = *(a1 + 16);
    }

    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v48 = v43;
    }

    v46 = 0;
    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
    }

    else
    {
      valuePtr = __dst;
      v50 = v48;
    }

    v51 = 0;
    if (ctu::cf::convert_copy())
    {
      v7 = v46;
      v46 = v51;
      v52 = v7;
      sub_100005978(&v52);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(valuePtr);
    }

    v44 = v46;
    v46 = 0;
    sub_100005978(&v46);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v6, @"displayName", v44);
    sub_100005978(&v44);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v45;
    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(v40, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      *v40 = *(a1 + 24);
      v41 = *(a1 + 40);
    }

    if (SHIBYTE(v41) < 0)
    {
      sub_100005F2C(&__dst, v40[0], v40[1]);
    }

    else
    {
      __dst = *v40;
      v48 = v41;
    }

    v46 = 0;
    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
    }

    else
    {
      valuePtr = __dst;
      v50 = v48;
    }

    v51 = 0;
    if (ctu::cf::convert_copy())
    {
      v9 = v46;
      v46 = v51;
      v52 = v9;
      sub_100005978(&v52);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(valuePtr);
    }

    v44 = v46;
    v46 = 0;
    sub_100005978(&v46);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v8, @"sipUserName", v44);
    sub_100005978(&v44);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[0]);
    }

    if (*(a1 + 72) == 1)
    {
      v10 = v45;
      if (*(a1 + 71) < 0)
      {
        sub_100005F2C(v38, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *v38 = *(a1 + 48);
        v39 = *(a1 + 64);
      }

      if (SHIBYTE(v39) < 0)
      {
        sub_100005F2C(&__dst, v38[0], v38[1]);
      }

      else
      {
        __dst = *v38;
        v48 = v39;
      }

      v46 = 0;
      if (SHIBYTE(v48) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v48;
      }

      v51 = 0;
      if (ctu::cf::convert_copy())
      {
        v11 = v46;
        v46 = v51;
        v52 = v11;
        sub_100005978(&v52);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v44 = v46;
      v46 = 0;
      sub_100005978(&v46);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__dst);
      }

      CFDictionaryAddValue(v10, @"addressUpdateURL", v44);
      sub_100005978(&v44);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }
    }

    if (*(a1 + 104) == 1)
    {
      v12 = v45;
      if (*(a1 + 103) < 0)
      {
        sub_100005F2C(v36, *(a1 + 80), *(a1 + 88));
      }

      else
      {
        *v36 = *(a1 + 80);
        v37 = *(a1 + 96);
      }

      if (SHIBYTE(v37) < 0)
      {
        sub_100005F2C(&__dst, v36[0], v36[1]);
      }

      else
      {
        __dst = *v36;
        v48 = v37;
      }

      v46 = 0;
      if (SHIBYTE(v48) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v48;
      }

      v51 = 0;
      if (ctu::cf::convert_copy())
      {
        v13 = v46;
        v46 = v51;
        v52 = v13;
        sub_100005978(&v52);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v44 = v46;
      v46 = 0;
      sub_100005978(&v46);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__dst);
      }

      CFDictionaryAddValue(v12, @"addressUpdateToken", v44);
      sub_100005978(&v44);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36[0]);
      }
    }

    if (*(a1 + 116) == 1)
    {
      v14 = v45;
      v15 = *(a1 + 112);
      *&__dst = 0;
      LODWORD(valuePtr) = v15;
      v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v16)
      {
        v17 = __dst;
        *&__dst = v16;
        *&valuePtr = v17;
        sub_100029A48(&valuePtr);
      }

      v52 = __dst;
      *&__dst = 0;
      sub_100029A48(&__dst);
      CFDictionaryAddValue(v14, @"addressStatus", v52);
      sub_100029A48(&v52);
    }

    if (*(a1 + 124) == 1)
    {
      v18 = v45;
      v19 = *(a1 + 120);
      *&__dst = 0;
      LODWORD(valuePtr) = v19;
      v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v20)
      {
        v21 = __dst;
        *&__dst = v20;
        *&valuePtr = v21;
        sub_100029A48(&valuePtr);
      }

      v52 = __dst;
      *&__dst = 0;
      sub_100029A48(&__dst);
      CFDictionaryAddValue(v18, @"tcStatus", v52);
      sub_100029A48(&v52);
    }

    if (*(a1 + 132) == 1)
    {
      v22 = v45;
      v23 = *(a1 + 128);
      *&__dst = 0;
      LODWORD(valuePtr) = v23;
      v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v24)
      {
        v25 = __dst;
        *&__dst = v24;
        *&valuePtr = v25;
        sub_100029A48(&valuePtr);
      }

      v52 = __dst;
      *&__dst = 0;
      sub_100029A48(&__dst);
      CFDictionaryAddValue(v22, @"proviStatus", v52);
      sub_100029A48(&v52);
    }

    if (*(a1 + 160) == 1)
    {
      v26 = v45;
      if (*(a1 + 159) < 0)
      {
        sub_100005F2C(v34, *(a1 + 136), *(a1 + 144));
      }

      else
      {
        *v34 = *(a1 + 136);
        v35 = *(a1 + 152);
      }

      if (SHIBYTE(v35) < 0)
      {
        sub_100005F2C(&__dst, v34[0], v34[1]);
      }

      else
      {
        __dst = *v34;
        v48 = v35;
      }

      v46 = 0;
      if (SHIBYTE(v48) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v48;
      }

      v51 = 0;
      if (ctu::cf::convert_copy())
      {
        v27 = v46;
        v46 = v51;
        v52 = v27;
        sub_100005978(&v52);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v44 = v46;
      v46 = 0;
      sub_100005978(&v46);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__dst);
      }

      CFDictionaryAddValue(v26, @"address-ref-id", v44);
      sub_100005978(&v44);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[0]);
      }
    }

    if (*(a1 + 192) == 1)
    {
      v28 = v45;
      if (*(a1 + 191) < 0)
      {
        sub_100005F2C(v32, *(a1 + 168), *(a1 + 176));
      }

      else
      {
        *v32 = *(a1 + 168);
        v33 = *(a1 + 184);
      }

      if (SHIBYTE(v33) < 0)
      {
        sub_100005F2C(&__dst, v32[0], v32[1]);
      }

      else
      {
        __dst = *v32;
        v48 = v33;
      }

      v46 = 0;
      if (SHIBYTE(v48) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v48;
      }

      v51 = 0;
      if (ctu::cf::convert_copy())
      {
        v29 = v46;
        v46 = v51;
        v52 = v29;
        sub_100005978(&v52);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v30 = v46;
      v44 = v46;
      v46 = 0;
      sub_100005978(&v46);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__dst);
      }

      CFDictionaryAddValue(v28, @"address-ref-id-expiry", v30);
      sub_100005978(&v44);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32[0]);
      }
    }
  }

  sub_100010180(a2, &v45);
  return sub_1000296E0(&v45);
}

void sub_100615B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_100005978((v49 - 136));
  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v49 - 144));
  _Unwind_Resume(a1);
}

BOOL sub_100615DF4(uint64_t a1, const __CFString *a2, CFTypeRef cf, uint64_t a4, int a5)
{
  if (a2)
  {
    v7 = cf;
    v12 = cf;
    if (cf)
    {
      CFRetain(cf);
      if (a5 && *a1)
      {
        (*(**a1 + 56))(&v11);
        v9 = v12;
        v12 = v11;
        v13 = v9;
        v11 = 0;
        sub_10000A1EC(&v13);
        sub_10000A1EC(&v11);
        v7 = v12;
      }
    }

    else if (a5)
    {
      v7 = 0;
    }

    CFPreferencesSetValue(a2, v7, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    CFPreferencesSynchronize(@"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_10000A1EC(&v12);
  }

  return a2 != 0;
}

void sub_100615F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

const void *sub_100615F34(uint64_t a1, CFStringRef key, int a3)
{
  v11 = 0;
  if (key)
  {
    v5 = CFPreferencesCopyValue(key, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v6 = v11;
    v11 = v5;
    v12 = v6;
    sub_10000A1EC(&v12);
    v7 = v11;
    if (v11 && a3 && *a1)
    {
      (*(**a1 + 64))(&v10);
      v8 = v11;
      v11 = v10;
      v12 = v8;
      v10 = 0;
      sub_10000A1EC(&v12);
      sub_10000A1EC(&v10);
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = 0;
  sub_10000A1EC(&v11);
  return v7;
}

void sub_10061603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

void sub_100616054(uint64_t a1, const __CFString *a2, const void *a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  sub_100615DF4(a1, a2, a3, __p, 0);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10061609C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006160C4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    sub_100004A34(v4);
  }
}

uint64_t sub_1006160F0@<X0>(void *a1@<X8>)
{
  pthread_mutex_lock(&stru_101FB3348);
  if (!xmmword_101FB3388)
  {
    operator new();
  }

  v2 = *(&xmmword_101FB3388 + 1);
  *a1 = xmmword_101FB3388;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return pthread_mutex_unlock(&stru_101FB3348);
}

void sub_1006161D4()
{
  oslog = 0;
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "ps.sto");
  ctu::OsLogLogger::OsLogLogger(&oslog, buf);
  ctu::OsLogContext::~OsLogContext(buf);
  v0 = CFPreferencesCopyMultiple(0, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  theDict = v0;
  if (v0)
  {
    Count = CFDictionaryGetCount(v0);
  }

  else
  {
    Count = 0;
  }

  v2 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v45 = "";
    v46 = 2080;
    v47 = "";
    v48 = 2048;
    v49 = Count;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| ---- local storage has %zu values", buf, 0x20u);
  }

  if (theDict)
  {
    keys = 0;
    v38 = 0;
    v39 = 0;
    sub_100222418(&keys, Count);
    values = 0;
    v35 = 0;
    v36 = 0;
    sub_10007D780(&values, Count);
    CFDictionaryGetKeysAndValues(theDict, keys, values);
    if (Count)
    {
      for (i = 0; Count != i; ++i)
      {
        v4 = CFGetTypeID(values[i]);
        if (v4 == CFStringGetTypeID())
        {
          v5 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v42 = 0uLL;
            v43 = 0;
            ctu::cf::assign();
            *v32 = v42;
            v33 = v43;
            v6 = v42;
            v7 = SHIBYTE(v43);
            v42 = 0uLL;
            v43 = 0;
            ctu::cf::assign();
            v8 = v32;
            if (v7 < 0)
            {
              v8 = v6;
            }

            *__p = v42;
            v31 = v43;
            v9 = v42;
            if (v43 >= 0)
            {
              v9 = __p;
            }

            *buf = 136316162;
            v45 = "";
            v46 = 2080;
            v47 = "";
            v48 = 2048;
            v49 = i;
            v50 = 2080;
            v51 = v8;
            v52 = 2080;
            v53 = v9;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s| %2zu %s \t= %s", buf, 0x34u);
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_34;
          }
        }

        else
        {
          v10 = CFGetTypeID(values[i]);
          if (v10 == CFNumberGetTypeID())
          {
            v11 = oslog;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v42 = 0uLL;
              v43 = 0;
              ctu::cf::assign();
              v33 = v43;
              *v32 = v42;
              v12 = SHIBYTE(v43);
              v13 = v42;
              v14 = values[i];
              LODWORD(v42) = 0;
              ctu::cf::assign(&v42, v14, v15);
              v16 = v32;
              if (v12 < 0)
              {
                v16 = v13;
              }

              *buf = 136316162;
              v45 = "";
              v46 = 2080;
              v47 = "";
              v48 = 2048;
              v49 = i;
              v50 = 2080;
              v51 = v16;
              v52 = 1024;
              LODWORD(v53) = v42;
              v17 = v11;
              v18 = "#I %s%s| %2zu %s \t= %d";
              v19 = 48;
              goto LABEL_33;
            }
          }

          else
          {
            v20 = CFGetTypeID(values[i]);
            TypeID = CFBooleanGetTypeID();
            v22 = oslog;
            v23 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
            if (v20 == TypeID)
            {
              if (v23)
              {
                v42 = 0uLL;
                v43 = 0;
                ctu::cf::assign();
                v33 = v43;
                *v32 = v42;
                v24 = SHIBYTE(v43);
                v25 = v42;
                Value = CFBooleanGetValue(values[i]);
                *buf = 136316162;
                v27 = v32;
                if (v24 < 0)
                {
                  v27 = v25;
                }

                v45 = "";
                v28 = "true";
                if (!Value)
                {
                  v28 = "false";
                }

                v46 = 2080;
                v47 = "";
                v48 = 2048;
                v49 = i;
                v50 = 2080;
                v51 = v27;
                v52 = 2080;
                v53 = v28;
                v17 = v22;
                v18 = "#I %s%s| %2zu %s \t= %s";
                v19 = 52;
                goto LABEL_33;
              }
            }

            else if (v23)
            {
              v42 = 0uLL;
              v43 = 0;
              ctu::cf::assign();
              *v32 = v42;
              v33 = v43;
              v29 = v42;
              if (v43 >= 0)
              {
                v29 = v32;
              }

              *buf = 136315906;
              v45 = "";
              v46 = 2080;
              v47 = "";
              v48 = 2048;
              v49 = i;
              v50 = 2080;
              v51 = v29;
              v17 = v22;
              v18 = "#I %s%s| %2zu %s";
              v19 = 42;
LABEL_33:
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
LABEL_34:
              if (SHIBYTE(v33) < 0)
              {
                operator delete(v32[0]);
              }
            }
          }
        }
      }
    }

    if (values)
    {
      v35 = values;
      operator delete(values);
    }

    if (keys)
    {
      v38 = keys;
      operator delete(keys);
    }
  }

  sub_10001021C(&theDict);
  ctu::OsLogLogger::~OsLogLogger(&oslog);
}

void sub_100616730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, const void *a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  sub_10001021C(&a29);
  ctu::OsLogLogger::~OsLogLogger(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_100616810(uint64_t a1, __n128 *a2)
{
  sub_10016A270(a1, a2);
  sub_10016A270(a1 + 32, a2 + 2);
  sub_10016A270(a1 + 64, a2 + 4);
  sub_10016A270(a1 + 96, a2 + 6);
  sub_10016A270(a1 + 128, a2 + 8);
  sub_10016A270(a1 + 160, a2 + 10);
  sub_10016A270(a1 + 192, a2 + 12);
  sub_10016A270(a1 + 224, a2 + 14);
  return a1;
}

void sub_100616920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1001A9614(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100616944(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100616984(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006169C4(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_100616A1C()
{
  if ((byte_101FB3398 & 1) == 0)
  {
    byte_101FB3398 = 1;
    return __cxa_atexit(sub_10061680C, &stru_101FB3348, &_mh_execute_header);
  }

  return result;
}

void MaxDataRateManager::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_100616BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    sub_101760EE4(a14);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::MaxDataRateManager(uint64_t a1, void *a2, uint64_t a3)
{
  ctu::OsLogContext::OsLogContext(&v19, kCtLoggingSystemName, "max");
  sub_100106AC0((a1 + 8), "MaxDataRateManager", QOS_CLASS_UTILITY, &v19);
  ctu::OsLogContext::~OsLogContext(&v19);
  v21[0] = off_101E2A828;
  v21[1] = sub_100617B7C;
  v21[3] = v21;
  sub_100617BA8((a1 + 48));
  sub_1000A8744(v21);
  *a1 = off_101E6A608;
  *(a1 + 56) = *a2;
  v6 = a2[1];
  *(a1 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_10000501C(&__p, "MaxDataRateManager");
  v7 = *(a1 + 24);
  v13 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a1 + 32);
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 112) = 0u;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  sub_100627878((a1 + 160), &rest::kDefaultMccMncComputedInfos);
  *(a1 + 184) = 0;
  sub_100627AD8((a1 + 192), &rest::kDefaultNRDisableStatuses);
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 304) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  *(a1 + 360) = 0;
  *(a1 + 352) = a1 + 360;
  sub_10000501C(&v19, "MaxDataRateManager");
  PersonalitiesTracker::PersonalitiesTracker();
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19.var0);
  }

  *(a1 + 552) = 0u;
  *(a1 + 544) = a1 + 552;
  subscriber::makeSimSlotRange();
  var0 = v19.var0;
  fRef = v19.var1.fRef;
  if (v19.var0 != v19.var1.fRef)
  {
    v11 = v20;
    do
    {
      if (v11(*var0))
      {
        break;
      }

      var0 = (var0 + 4);
    }

    while (var0 != fRef);
    if (var0 != v19.var1.fRef)
    {
      v18 = *var0;
      Registry::getTelephonyCapabilities(&v16, *(a1 + 56));
      (*(*v16 + 32))(v16);
      sub_100313F94(&v17);
    }
  }

  sub_100627700();
}

void sub_10061785C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, dispatch_object_t object, dispatch_object_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_1006270D0(v43 - 160);
  v45 = *(v42 + 632);
  if (v45)
  {
    sub_100004A34(v45);
  }

  v46 = *(v42 + 616);
  if (v46)
  {
    sub_100004A34(v46);
  }

  v47 = *(v42 + 600);
  if (v47)
  {
    sub_100004A34(v47);
  }

  v48 = *a9;
  *a9 = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = *(v42 + 576);
  if (v49)
  {
    sub_100004A34(v49);
  }

  sub_10006EC28(a17, *a19);
  PersonalitiesTracker::~PersonalitiesTracker((a16 + 160));
  sub_100617D6C(a16 + 96);
  sub_10006DCAC(a13, *(v42 + 296));
  sub_10006DCAC(a14, *(v42 + 272));
  sub_10006DCAC(a15, *(v42 + 248));
  sub_10006DCAC(a16, *(v42 + 224));
  sub_10006DCAC(v42 + 192, *(v42 + 200));
  sub_1001A8E08(a11 + 48, *(v42 + 168));
  sub_10032D3A4(a10, *(v42 + 136));
  sub_10006DCAC(a11 - 8, *(v42 + 112));
  v50 = *(v42 + 96);
  if (v50)
  {
    sub_100004A34(v50);
  }

  v51 = *(v42 + 80);
  if (v51)
  {
    sub_100004A34(v51);
  }

  v52 = *(v42 + 64);
  if (v52)
  {
    sub_100004A34(v52);
  }

  v53 = *a12;
  *a12 = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  MaxDataRateInterface::~MaxDataRateInterface(v42);
  ctu::OsLogLogger::~OsLogLogger((v42 + 40));
  sub_1000C0544((v42 + 8));
  _Unwind_Resume(a1);
}

const char *sub_100617B7C(int a1)
{
  v1 = "max.?";
  if (a1 == 2)
  {
    v1 = "max.2";
  }

  if (a1 == 1)
  {
    return "max.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_100617BA8(capabilities::ct *a1)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_100617D00(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

uint64_t sub_100617D6C(uint64_t a1)
{
  sub_10006DCAC(a1 + 40, *(a1 + 48));

  return sub_100625D94(a1);
}

void MaxDataRateManager::notifyServiceShutdown(uint64_t a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void MaxDataRateManager::notifyServiceBootstrap(MaxDataRateManager *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void MaxDataRateManager::notifyServiceMigration(MaxDataRateManager *this, dict a2, group_session a3)
{
  if (*a2.fObj.fObj)
  {
    xpc_retain(*a2.fObj.fObj);
  }

  else
  {
    xpc_null_create();
  }

  v5 = *a3.var0.fObj;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, this + 1);
  operator new();
}

void MaxDataRateManager::notifyServiceStart(MaxDataRateManager *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void MaxDataRateManager::~MaxDataRateManager(MaxDataRateManager *this)
{
  *this = off_101E6A608;
  v2 = *(this + 79);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 77);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 73);
  *(this + 73) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 72);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10006EC28(this + 544, *(this + 69));
  PersonalitiesTracker::~PersonalitiesTracker((this + 376));
  sub_10006DCAC(this + 352, *(this + 45));
  sub_100625D94(this + 312);
  sub_10006DCAC(this + 288, *(this + 37));
  sub_10006DCAC(this + 264, *(this + 34));
  sub_10006DCAC(this + 240, *(this + 31));
  sub_10006DCAC(this + 216, *(this + 28));
  sub_10006DCAC(this + 192, *(this + 25));
  sub_1001A8E08(this + 160, *(this + 21));
  sub_10032D3A4(this + 128, *(this + 17));
  sub_10006DCAC(this + 104, *(this + 14));
  v7 = *(this + 12);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  MaxDataRateInterface::~MaxDataRateInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  MaxDataRateManager::~MaxDataRateManager(this);

  operator delete();
}

BOOL MaxDataRateManager::getUserPreferenceFromPersistence_sync(uint64_t a1, uint64_t a2, const __CFString **a3, BOOL *a4)
{
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v8 = v7;
  if (a3)
  {
    v10 = *(a1 + 56);
    v9 = (a1 + 56);
    Registry::getTelephonyCapabilities(&__p, v10);
    v11 = (*(*__p + 32))(__p);
    if (v34)
    {
      sub_100004A34(v34);
    }

    if (v11)
    {
      ServiceMap = Registry::getServiceMap(*v9);
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
      __p = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &__p);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
          if (!v20)
          {
LABEL_11:
            v22 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
            {
              LOWORD(__p) = 0;
              _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &__p, 2u);
            }

            v23 = 0;
LABEL_36:
            if ((v21 & 1) == 0)
            {
              sub_100004A34(v19);
            }

            return v23;
          }

LABEL_21:
          __p = 0;
          v34 = 0;
          v35 = 0;
          PersonalityIdFromSlotId();
          if (isReal())
          {
            v36 = 0;
            v37 = 0;
            if (ctu::cf::convert_copy(&v37, a3, 0x8000100, kCFAllocatorDefault, v25))
            {
              v36 = v37;
              cf = 0;
              sub_100005978(&cf);
              v26 = v36;
            }

            else
            {
              v26 = 0;
            }

            v32 = v26;
            v36 = 0;
            sub_100005978(&v36);
            cf = 0;
            (*(*v20 + 64))(&cf, v20, &__p, v26, @"MaxDataRate", 0, 1);
            v27 = cf;
            v23 = cf != 0;
            if (cf)
            {
              LOBYTE(v37) = 0;
              v28 = CFGetTypeID(cf);
              if (v28 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(&v37, v27, v29);
                v30 = v37;
              }

              else
              {
                v30 = 0;
              }

              *a4 = v30;
            }

            sub_10000A1EC(&cf);
            sub_100005978(&v32);
          }

          else
          {
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
            {
              sub_101775D7C();
            }

            v23 = 0;
          }

          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_36;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      if (!v20)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

    v24 = sub_10005D028();
    sub_10000501C(&__p, a3);
    v23 = sub_10005D0D8(v24, &__p, a4);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_101775DB0();
    }

    return 0;
  }

  return v23;
}

void sub_100618710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19)
{
  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

BOOL MaxDataRateManager::getUserPreferenceFromPersistence_sync(MaxDataRateManager *this, const char *a2, BOOL *a3)
{
  v10 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v9 = 0;
  (*(**(this + 9) + 40))(&v8);
  sub_10002FE1C(&v9, &v8);
  sub_10000A1EC(&v8);
  v5 = v9;
  if (v9)
  {
    *a3 = v9 == kCFBooleanTrue;
  }

  v6 = v5 != 0;
  sub_100045C8C(&v9);
  sub_100005978(&v10);
  return v6;
}

void sub_100618884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  sub_10000A1EC(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

unsigned __int8 *MaxDataRateManager::getSwitchSupportFromPersistence_sync(uint64_t a1, uint64_t a2, const __CFString **a3)
{
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v6 = v5;
  if (a3)
  {
    v8 = *(a1 + 56);
    v7 = (a1 + 56);
    Registry::getTelephonyCapabilities(&__p, v8);
    v9 = (*(*__p + 32))(__p);
    if (v30)
    {
      sub_100004A34(v30);
    }

    if (v9)
    {
      ServiceMap = Registry::getServiceMap(*v7);
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
      __p = v12;
      v16 = sub_100009510(&v11[1].__m_.__sig, &__p);
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
          if (!v18)
          {
LABEL_11:
            v20 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_FAULT))
            {
              LOWORD(__p) = 0;
              _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &__p, 2u);
            }

            v21 = 0;
LABEL_36:
            if ((v19 & 1) == 0)
            {
              sub_100004A34(v17);
            }

            return v21;
          }

LABEL_22:
          __p = 0;
          v30 = 0;
          v31 = 0;
          PersonalityIdFromSlotId();
          if (isReal())
          {
            v32 = 0;
            v33 = 0;
            if (ctu::cf::convert_copy(&v33, a3, 0x8000100, kCFAllocatorDefault, v23))
            {
              v32 = v33;
              cf = 0;
              sub_100005978(&cf);
              v24 = v32;
            }

            else
            {
              v24 = 0;
            }

            v28 = v24;
            v32 = 0;
            sub_100005978(&v32);
            cf = 0;
            (*(*v18 + 64))(&cf, v18, &__p, v24, @"MaxDataRate", 0, 1);
            v21 = cf;
            if (cf)
            {
              LOBYTE(v33) = 0;
              v25 = CFGetTypeID(cf);
              if (v25 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v33, v21, v26);
                v21 = v33;
              }

              else
              {
                v21 = 0;
              }
            }

            sub_10000A1EC(&cf);
            sub_100005978(&v28);
          }

          else
          {
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
            {
              sub_101775D7C();
            }

            v21 = 0;
          }

          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_36;
        }
      }

      else
      {
        v18 = 0;
      }

      std::mutex::unlock(v11);
      v17 = 0;
      v19 = 1;
      if (!v18)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    LOBYTE(cf) = 0;
    v22 = sub_10005D028();
    sub_10000501C(&__p, a3);
    sub_100618C9C(v22, &__p, &cf);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

    return cf;
  }

  else
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_101775DB0();
    }

    return 0;
  }
}

void sub_100618C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19)
{
  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100618C9C(uint64_t a1, void **a2, _BYTE *a3)
{
  std::mutex::lock(&stru_101FB1BC0);
  memset(&__p, 0, sizeof(__p));
  v6 = sub_10005D1B0(a1, a2, &__p);
  if (v6)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *a3 = strtoll(p_p, 0, 16);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  return v6;
}

void sub_100618D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  _Unwind_Resume(a1);
}

void MaxDataRateManager::setSwitchSupportInPersistence_sync(uint64_t a1, uint64_t a2, const __CFString **a3, unsigned int a4)
{
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v8 = v7;
  if (a3)
  {
    (*(**(a1 + 624) + 160))(*(a1 + 624));
    v10 = *(a1 + 56);
    v9 = (a1 + 56);
    Registry::getTelephonyCapabilities(&buf, v10);
    v11 = (*(*buf.__r_.__value_.__l.__data_ + 32))(buf.__r_.__value_.__r.__words[0]);
    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }

    if (v11)
    {
      ServiceMap = Registry::getServiceMap(*v9);
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
      buf.__r_.__value_.__r.__words[0] = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &buf);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
          if (!v20)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      if (!v20)
      {
LABEL_11:
        v22 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &buf, 2u);
        }

LABEL_33:
        if ((v21 & 1) == 0)
        {
          sub_100004A34(v19);
        }

        return;
      }

LABEL_19:
      __p = 0;
      v38 = 0;
      v39 = 0;
      PersonalityIdFromSlotId();
      if (isReal())
      {
        v40 = 0;
        v41 = 0;
        if (ctu::cf::convert_copy(&v41, a3, 0x8000100, kCFAllocatorDefault, v24))
        {
          v40 = v41;
          buf.__r_.__value_.__r.__words[0] = 0;
          sub_100005978(&buf.__r_.__value_.__l.__data_);
          v25 = v40;
        }

        else
        {
          v25 = 0;
        }

        v36 = v25;
        v40 = 0;
        sub_100005978(&v40);
        v41 = 0;
        buf.__r_.__value_.__r.__words[0] = a4;
        v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &buf);
        if (v26)
        {
          v41 = v26;
          buf.__r_.__value_.__r.__words[0] = 0;
          sub_100029A48(&buf.__r_.__value_.__l.__data_);
          v27 = v41;
        }

        else
        {
          v27 = 0;
        }

        v40 = v27;
        v41 = 0;
        sub_100029A48(&v41);
        if ((*(*v20 + 48))(v20, &__p, v36, v27, @"MaxDataRate", 0, 1, 0))
        {
          v28 = *v8;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HIBYTE(v39);
            v30 = __p;
            v31 = v38;
            v32 = asString();
            if ((v29 & 0x80u) == 0)
            {
              v33 = v29;
            }

            else
            {
              v33 = v31;
            }

            p_p = &__p;
            if ((v29 & 0x80u) != 0)
            {
              p_p = v30;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            if (v33)
            {
              v35 = p_p;
            }

            else
            {
              v35 = "<invalid>";
            }

            *(buf.__r_.__value_.__r.__words + 4) = v35;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a3;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v43 = v32;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s : failed to store %s : %s", &buf, 0x20u);
          }
        }

        sub_100029A48(&v40);
        sub_100005978(&v36);
      }

      else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        sub_101775D7C();
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_33;
    }

    v23 = sub_10005D028();
    sub_10000501C(&buf, a3);
    LOBYTE(__p) = a4;
    sub_100619254(v23, &buf, &__p);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_101775DB0();
  }
}

void sub_1006191B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_100029A48(&a16);
  sub_100005978(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100619254(uint64_t a1, std::string *a2, unsigned __int8 *a3)
{
  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x20uLL, "0x%x", *a3);
  sub_10000501C(&__p, __str);
  v5 = sub_10033238C(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_100619304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::setUserPreferenceInPersistence_sync(uint64_t a1, uint64_t a2, const __CFString **a3, _BOOL4 a4)
{
  v40 = a4;
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v8 = v7;
  if (a3)
  {
    (*(**(a1 + 624) + 160))(*(a1 + 624));
    v10 = *(a1 + 56);
    v9 = (a1 + 56);
    Registry::getTelephonyCapabilities(&buf, v10);
    v11 = (*(*buf.__r_.__value_.__l.__data_ + 32))(buf.__r_.__value_.__r.__words[0]);
    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }

    if (v11)
    {
      ServiceMap = Registry::getServiceMap(*v9);
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
      buf.__r_.__value_.__r.__words[0] = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &buf);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
          if (!v20)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      if (!v20)
      {
LABEL_11:
        v22 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &buf, 2u);
        }

LABEL_32:
        if ((v21 & 1) == 0)
        {
          sub_100004A34(v19);
        }

        return;
      }

LABEL_19:
      __p = 0;
      v38 = 0;
      v39 = 0;
      PersonalityIdFromSlotId();
      if (isReal())
      {
        v41 = 0;
        v42 = 0;
        if (ctu::cf::convert_copy(&v42, a3, 0x8000100, kCFAllocatorDefault, v24))
        {
          v41 = v42;
          buf.__r_.__value_.__r.__words[0] = 0;
          sub_100005978(&buf.__r_.__value_.__l.__data_);
          v25 = v41;
        }

        else
        {
          v25 = 0;
        }

        v36 = v25;
        v41 = 0;
        sub_100005978(&v41);
        v26 = &kCFBooleanTrue;
        if (!a4)
        {
          v26 = &kCFBooleanFalse;
        }

        v27 = *v26;
        buf.__r_.__value_.__r.__words[0] = 0;
        sub_100045C8C(&buf.__r_.__value_.__l.__data_);
        v42 = v27;
        buf.__r_.__value_.__r.__words[0] = 0;
        sub_100045C8C(&buf.__r_.__value_.__l.__data_);
        if ((*(*v20 + 48))(v20, &__p, v25, v27, @"MaxDataRate", 0, 1, 0))
        {
          v28 = *v8;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HIBYTE(v39);
            v30 = __p;
            v31 = v38;
            v32 = CSIBOOLAsString(v40);
            if ((v29 & 0x80u) == 0)
            {
              v33 = v29;
            }

            else
            {
              v33 = v31;
            }

            p_p = &__p;
            if ((v29 & 0x80u) != 0)
            {
              p_p = v30;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            if (v33)
            {
              v35 = p_p;
            }

            else
            {
              v35 = "<invalid>";
            }

            *(buf.__r_.__value_.__r.__words + 4) = v35;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a3;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v44 = v32;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s : failed to store %s : %s", &buf, 0x20u);
          }
        }

        sub_100045C8C(&v42);
        sub_100005978(&v36);
      }

      else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        sub_101775D7C();
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_32;
    }

    v23 = sub_10005D028();
    sub_10000501C(&buf, a3);
    sub_1006197F4(v23, &buf, &v40);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_101775DB0();
  }
}

void sub_10061975C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100045C8C(&a20);
  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006197F4(uint64_t a1, std::string *a2, unsigned __int8 *a3)
{
  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x20uLL, "0x%x", *a3);
  sub_10000501C(&__p, __str);
  v5 = sub_10033238C(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1006198A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **MaxDataRateManager::setUserPreferenceInPersistence_sync(MaxDataRateManager *this, const char *a2, int a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v8 = v5;
  v6 = &kCFBooleanTrue;
  if (!a3)
  {
    v6 = &kCFBooleanFalse;
  }

  (*(**(this + 9) + 16))(*(this + 9), v5, *v6, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(this + 9) + 48))(*(this + 9), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(this + 78) + 160))(*(this + 78));
  return sub_100005978(&v8);
}

void sub_1006199F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void MaxDataRateManager::removeKeyFromPersistence_sync(uint64_t a1, uint64_t a2, const __CFString **a3)
{
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v6 = v5;
  if (a3)
  {
    v8 = *(a1 + 56);
    v7 = (a1 + 56);
    Registry::getTelephonyCapabilities(buf, v8);
    v9 = (*(**buf + 32))(*buf);
    if (v31)
    {
      sub_100004A34(v31);
    }

    if (v9)
    {
      ServiceMap = Registry::getServiceMap(*v7);
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
          if (!v18)
          {
            goto LABEL_11;
          }

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
      if (!v18)
      {
LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", buf, 2u);
        }

LABEL_40:
        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        return;
      }

LABEL_19:
      *buf = 0;
      v31 = 0;
      v32 = 0;
      PersonalityIdFromSlotId();
      if (isReal())
      {
        v33 = 0;
        v34 = 0;
        if (ctu::cf::convert_copy(&v34, a3, 0x8000100, kCFAllocatorDefault, v22))
        {
          v33 = v34;
          *v35 = 0;
          sub_100005978(v35);
          v23 = v33;
        }

        else
        {
          v23 = 0;
        }

        v29 = v23;
        v33 = 0;
        sub_100005978(&v33);
        v24 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v25 = HIBYTE(v32);
          if (v32 < 0)
          {
            v25 = v31;
          }

          v26 = buf;
          if (v32 < 0)
          {
            v26 = *buf;
          }

          if (v25)
          {
            v27 = v26;
          }

          else
          {
            v27 = "<invalid>";
          }

          *v35 = 136315394;
          *&v35[4] = v27;
          v36 = 2080;
          v37 = a3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s : remove key : %s", v35, 0x16u);
        }

        if ((*(*v18 + 72))(v18, buf, v23, @"MaxDataRate", 0, 1))
        {
          v28 = *v6;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_101775DE4(buf, a3, v28);
          }
        }

        sub_100005978(&v29);
      }

      else if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_101775D7C();
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_40;
    }

    v21 = sub_10005D028();
    sub_10000501C(buf, a3);
    sub_10033220C(v21, buf);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*buf);
    }
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_101775DB0();
  }
}

void sub_100619DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

const void **MaxDataRateManager::removeKeyFromPersistence_sync(MaxDataRateManager *this, const char *a2)
{
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  (*(**(this + 9) + 16))(*(this + 9), v4, 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(this + 9) + 48))(*(this + 9), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  return sub_100005978(&v4);
}

void sub_100619F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void MaxDataRateManager::migrateCSIKeysToPersonalWallet_sync(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v59 = 0;
  v60 = 0;
  v61 = 0;
  PersonalityIdFromSlotId();
  v5 = isReal();
  sub_10000501C(buf, "Enable5G");
  sub_10000501C(v66, "EnableLTE");
  sub_10000501C(v67, "Enable3G");
  v56 = 0;
  v57 = 0;
  v58 = 0;
  sub_10016FB64(&v56, buf, &v68, 3uLL);
  for (i = 0; i != -72; i -= 24)
  {
    if (v67[i + 23] < 0)
    {
      operator delete(*&v67[i]);
    }
  }

  v7 = v56;
  v8 = v57;
  v49 = v3;
  if (v56 != v57)
  {
    v9 = &_mh_execute_header;
    v10 = "#I Erase : key : %s";
    v48 = v4;
    do
    {
      LOBYTE(v50[0]) = 0;
      v54 = 0;
      v55 = 0;
      __p = 0;
      sub_10061A728(a2, &__p);
      v11 = sub_10005D028();
      if (sub_10005D0D8(v11, &__p, v50))
      {
        if (v5)
        {
          v12 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v5;
            v14 = v10;
            v15 = v9;
            if (v61 >= 0)
            {
              v16 = HIBYTE(v61);
            }

            else
            {
              v16 = v60;
            }

            if (v61 >= 0)
            {
              v17 = &v59;
            }

            else
            {
              v17 = v59;
            }

            v18 = v7;
            if (*(v7 + 23) < 0)
            {
              v18 = *v7;
            }

            v19 = CSIBOOLAsString(LOBYTE(v50[0]));
            *buf = 136315650;
            v20 = "<invalid>";
            if (v16)
            {
              v20 = v17;
            }

            *&buf[4] = v20;
            v63 = 2080;
            v64 = v18;
            v65 = 2080;
            v66[0] = v19;
            v9 = v15;
            _os_log_impl(v15, v12, OS_LOG_TYPE_DEFAULT, "#I Migration -- %s : key: %s, value: %s", buf, 0x20u);
            v3 = v49;
            v10 = v14;
            v5 = v13;
            v4 = v48;
          }

          v21 = v7;
          if (*(v7 + 23) < 0)
          {
            v21 = *v7;
          }

          MaxDataRateManager::setUserPreferenceInPersistence_sync(v3, a2, v21, LOBYTE(v50[0]));
        }

        v22 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          if (v55 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315138;
          *&buf[4] = p_p;
          _os_log_impl(v9, v22, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
        }

        v24 = sub_10005D028();
        if (v55 >= 0)
        {
          v25 = &__p;
        }

        else
        {
          v25 = __p;
        }

        sub_10000501C(buf, v25);
        sub_10033220C(v24, buf);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(*buf);
        }
      }

      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p);
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  __p = 0;
  v54 = 0;
  v55 = 0;
  sub_10000501C(buf, "Enable5GSwitchSupport");
  sub_10000501C(v66, "EnableLTESwitchSupport");
  sub_10000501C(v67, "Enable3GSwitchSupport");
  __p = 0;
  v54 = 0;
  v55 = 0;
  sub_10016FB64(&__p, buf, &v68, 3uLL);
  for (j = 0; j != -72; j -= 24)
  {
    if (v67[j + 23] < 0)
    {
      operator delete(*&v67[j]);
    }
  }

  v27 = __p;
  v28 = v54;
  if (__p != v54)
  {
    v29 = &_mh_execute_header;
    do
    {
      v52 = 0;
      v50[1] = 0;
      v51 = 0;
      v50[0] = 0;
      sub_10061A728(a2, v50);
      v30 = sub_10005D028();
      if (v51 >= 0)
      {
        v31 = v50;
      }

      else
      {
        v31 = v50[0];
      }

      sub_10000501C(buf, v31);
      v32 = sub_100618C9C(v30, buf, &v52);
      v33 = v32;
      if (SHIBYTE(v65) < 0)
      {
        operator delete(*buf);
        if (v33)
        {
LABEL_50:
          if (v5)
          {
            v34 = *v4;
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v4;
              v36 = v5;
              v37 = v29;
              if (v61 >= 0)
              {
                v38 = HIBYTE(v61);
              }

              else
              {
                v38 = v60;
              }

              if (v61 >= 0)
              {
                v39 = &v59;
              }

              else
              {
                v39 = v59;
              }

              v40 = v27;
              if (*(v27 + 23) < 0)
              {
                v40 = *v27;
              }

              v41 = asString();
              *buf = 136315650;
              v42 = "<invalid>";
              if (v38)
              {
                v42 = v39;
              }

              *&buf[4] = v42;
              v63 = 2080;
              v64 = v40;
              v65 = 2080;
              v66[0] = v41;
              v29 = v37;
              _os_log_impl(v37, v34, OS_LOG_TYPE_DEFAULT, "#I Migration -- %s : key: %s, value: %s", buf, 0x20u);
              v3 = v49;
              v5 = v36;
              v4 = v35;
            }

            v43 = v27;
            if (*(v27 + 23) < 0)
            {
              v43 = *v27;
            }

            MaxDataRateManager::setSwitchSupportInPersistence_sync(v3, a2, v43, v52);
          }

          v44 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            if (v51 >= 0)
            {
              v45 = v50;
            }

            else
            {
              v45 = v50[0];
            }

            *buf = 136315138;
            *&buf[4] = v45;
            _os_log_impl(v29, v44, OS_LOG_TYPE_DEFAULT, "#I Erase : key : %s", buf, 0xCu);
          }

          v46 = sub_10005D028();
          if (v51 >= 0)
          {
            v47 = v50;
          }

          else
          {
            v47 = v50[0];
          }

          sub_10000501C(buf, v47);
          sub_10033220C(v46, buf);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else if (v32)
      {
        goto LABEL_50;
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[0]);
      }

      v27 += 3;
    }

    while (v27 != v28);
  }

  *buf = &__p;
  sub_1000087B4(buf);
  *buf = &v56;
  sub_1000087B4(buf);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v59);
  }
}

void sub_10061A59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v53 = &a52;
  v54 = -72;
  v55 = &a52;
  while (1)
  {
    v56 = *v55;
    v55 -= 24;
    if (v56 < 0)
    {
      operator delete(*(v53 - 23));
    }

    v53 = v55;
    v54 += 24;
    if (!v54)
    {
      a38 = &a29;
      sub_1000087B4(&a38);
      if (a37 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_10061A728@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result - 1) < 2)
  {
    v2[0] = 0;
    v2[1] = 0;
    sub_100313F94(v2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_10061AA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_10018D34C(&a15);
  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::supportsBB2GMitigation_sync(Registry **this)
{
  Registry::getTelephonyCapabilities(&v3, this[7]);
  v1 = (*(*v3 + 48))(v3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return v1;
}

void sub_10061AB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::handleMigration_sync(MaxDataRateManager *this, int a2, dict a3)
{
  *&buf = a3;
  *(&buf + 1) = "kIsDifferentDevice";
  sub_100006354(&buf, &object);
  v6 = xpc::dyn_cast_or_default(&object, 0, v5);
  xpc_release(object);
  v7 = *(this + 5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Migrator has called to re-evaluate the saved switch states in Max Data Manager", &buf, 2u);
    v7 = *(this + 5);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CSIBOOLAsString(v6);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Is from a different device: %s", &buf, 0xCu);
  }

  MaxDataRateManager::migrate2GSwitchToLegacyRatsSwitch_sync(this);
  MaxDataRateManager::retrieveSavedSwitchSupport_sync(this);
  v22 = 1;
  object = 0;
  v21 = 0;
  MaxDataRateManager::getModel_sync(this, 1, &object);
  v9 = sub_10005D028();
  sub_10000501C(&buf, *(object + 91));
  v10 = sub_10005D0D8(v9, &buf, &v22);
  if (v24 < 0)
  {
    operator delete(buf);
  }

  v11 = *(**(this + 6) + 16);
  if (v10)
  {
    v12 = *v11();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v22;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Not saving the check RAT Selection for 3G Switch, there is already a user preference with value: %d", &buf, 8u);
    }
  }

  else
  {
    v13 = v11();
    v14 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = a2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I There is no 3G user preference stored, but checking for RAT Selection: %d", &buf, 8u);
    }

    if (a2 == 1)
    {
      v15 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I RAT Selection has been set to GSM, looks like user had set to 2G before, setting the user selection to 2G", &buf, 2u);
      }

      MaxDataRateManager::setMaxDataRateMandatory_sync(this, 1, 1, 1);
    }
  }

  v16 = *(this + 68);
  if (v16 != (this + 552))
  {
    do
    {
      MaxDataRateManager::maybeEnableLteSwitchOnMigrationForLatestDevices_sync(this, *(v16 + 8), v6);
      MaxDataRateManager::evaluateSwitchStates_sync(this, *(v16 + 8));
      v17 = *(v16 + 1);
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
          v18 = *(v16 + 2);
          v19 = *v18 == v16;
          v16 = v18;
        }

        while (!v19);
      }

      v16 = v18;
    }

    while (v18 != (this + 552));
  }

  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_10061AE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, std::__shared_weak_count *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

const void **MaxDataRateManager::migrate2GSwitchToLegacyRatsSwitch_sync(MaxDataRateManager *this)
{
  v3 = 0;
  result = MaxDataRateManager::getUserPreferenceFromPersistence_sync(this, "Enable2G", &v3);
  if (result)
  {
    sub_10061D524(*(this + 71) + 120, v3);

    return MaxDataRateManager::removeKeyFromPersistence_sync(this, "Enable2G");
  }

  return result;
}

uint64_t MaxDataRateManager::retrieveSavedSwitchSupport_sync(uint64_t a1)
{
  v2 = *(a1 + 568);
  if (*(v2 + 48))
  {
    v3 = sub_10062FE80(v2 + 24, *(v2 + 8));
    v4 = *(a1 + 568);
  }

  else
  {
    v3 = 0;
    v4 = v2;
  }

  *(v2 + 16) = v3;
  v5 = *(v4 + 168);
  if (v5)
  {
    LODWORD(v5) = (*(*v5 + 48))(v5);
  }

  *(v4 + 136) = v5;
  v29[0] = 1;
  memset(&v29[2], 0, 32);
  v29[1] = a1 + 312;
  LOBYTE(v29[2]) = *(a1 + 344);
  sub_1000517E4(&v29[3], a1 + 352);
  LOBYTE(v29[2]) = *(*(a1 + 568) + 16) == 2;
  subscriber::makeSimSlotRange();
  v7 = v26;
  v6 = v27;
  if (v26 != v27)
  {
    v8 = v28;
    do
    {
      if (v28(*v7))
      {
        break;
      }

      ++v7;
    }

    while (v7 != v27);
    v9 = v27;
    while (v7 != v9)
    {
      v10 = *v7;
      v24 = 0;
      v25 = 0;
      MaxDataRateManager::getModel_sync(a1, v10, &v24);
      v11 = v24;
      if (v24)
      {
        if (*(v24 + 48))
        {
          v12 = sub_10062FE80(v24 + 24, *(v24 + 8));
        }

        else
        {
          v12 = 0;
        }

        *(v11 + 16) = v12;
        if (*(v11 + 168))
        {
          v13 = sub_10062FE80(v11 + 144, *(v11 + 128));
        }

        else
        {
          v13 = 0;
        }

        *(v11 + 136) = v13;
        if (*(v11 + 288))
        {
          v14 = sub_10062FE80(v11 + 264, *(v11 + 248));
        }

        else
        {
          v14 = 0;
        }

        *(v11 + 256) = v14;
        if (*(v11 + 408))
        {
          v15 = sub_10062FE80(v11 + 384, *(v11 + 368));
        }

        else
        {
          v15 = 0;
        }

        *(v11 + 376) = v15;
        v16 = MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, v10);
        *buf = v10;
        v30 = !v16;
        sub_100626598(&v29[3], buf, &v30);
        v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), v10);
        v18 = *v17;
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = asString();
          *buf = 136315138;
          v32 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I 2G Switch support retrieved: %s", buf, 0xCu);
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = asString();
          *buf = 136315138;
          v32 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I 3G Switch support retrieved: %s", buf, 0xCu);
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = asString();
          *buf = 136315138;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I LTE Switch support retrieved: %s", buf, 0xCu);
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v22 = asString();
          *buf = 136315138;
          v32 = v22;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I 5G Switch support retrieved: %s", buf, 0xCu);
        }
      }

      if (v25)
      {
        sub_100004A34(v25);
      }

      do
      {
        ++v7;
      }

      while (v7 != v6 && (v8(*v7) & 1) == 0);
    }
  }

  return sub_10062A978(v29);
}

void sub_10061B344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10062A978(va);
  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getModel_sync@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(result + 552);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = result + 552;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 != result + 552 && *(v4 + 32) <= a2)
  {
    v6 = *(v4 + 40);
    v5 = *(v4 + 48);
    *a3 = v6;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t MaxDataRateManager::setMaxDataRateMandatory_sync(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (MaxDataRateManager::is3GSwitchSupported_sync(a1, a2) == 2 && MaxDataRateManager::isLTESwitchSupported_sync(a1, a2) == 2)
  {
    v9 = *v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I 3G and LTE switches are supported", v49, 2u);
    }

    return MaxDataRateManager::send3GAndLTEUserPreference_sync(a1, a2, a3, a4);
  }

  v10 = 0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v30 = *(a1 + 568);
        if (*(v30 + 16) != 2 || *(v30 + 136) == 2)
        {
          v31 = MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2);
          v32 = *v8;
          v33 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
          if (v31)
          {
            if (v33)
            {
              *v49 = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Setting max data rate to 2G", v49, 2u);
            }

            MaxDataRateManager::setUserPreferenceEnable3G_sync(a1, a2, 0, a4);
            v10 = 1;
            goto LABEL_54;
          }

          if (!v33)
          {
            goto LABEL_53;
          }

          *v49 = 0;
          v17 = "#I Tried setting data rate to 2G when regulated rats are disabled";
          v18 = v32;
          goto LABEL_51;
        }

        v39 = *v8;
        if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *v49 = 0;
        v17 = "#I Tried setting data rate to 2G when legacy rats are disabled";
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_54;
        }

        v11 = *(a1 + 568);
        if (*(v11 + 16) != 2 || *(v11 + 136) == 2)
        {
          v12 = MaxDataRateManager::carrierAndDeviceSupportLTE_sync(a1, a2);
          if ((v12 & 0x100) != 0)
          {
            v13 = v12;
            v14 = *v8;
            v15 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
            if (v13)
            {
              if (v15)
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I LTE capable device, disabling LTE", v49, 2u);
              }

              v10 = MaxDataRateManager::setUserPreferenceEnableLTE_sync(a1, a2, 0, a4);
            }

            else
            {
              if (v15)
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I LTE non-capable device, Setting max data rate to 3G", v49, 2u);
              }

              MaxDataRateManager::setUserPreferenceEnable3G_sync(a1, a2, 1, a4);
              v10 = 1;
            }

            *v49 = 0;
            *&v49[8] = 0;
            ServiceMap = Registry::getServiceMap(*(a1 + 56));
            sub_1012CA814(ServiceMap, v49);
            if (*v49 && (*(**v49 + 16))(*v49))
            {
              MaxDataRateManager::setUserPreferenceEnable5G_sync(a1, a2, 0, a4);
            }

            v45 = *&v49[8];
            if (!*&v49[8])
            {
              goto LABEL_54;
            }

            goto LABEL_76;
          }

LABEL_53:
          v10 = 0;
          goto LABEL_54;
        }

        v39 = *v8;
        if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *v49 = 0;
        v17 = "#I Tried setting data rate to 3G when legacy rats are disabled";
      }

      v18 = v39;
LABEL_51:
      v19 = 2;
      goto LABEL_52;
    }

    goto LABEL_18;
  }

  if ((a3 - 5) < 4)
  {
LABEL_18:
    v16 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    *v49 = 136315138;
    *&v49[4] = asString();
    v17 = "#I Not handling setting maximum data rate to %s";
    v18 = v16;
    goto LABEL_20;
  }

  if (a3 == 3)
  {
    v34 = MaxDataRateManager::carrierAndDeviceSupportLTE_sync(a1, a2);
    if ((v34 & 0x100) == 0)
    {
      goto LABEL_53;
    }

    v35 = v34;
    v36 = *v8;
    v37 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      if (v37)
      {
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I LTE capable device, enabling LTE", v49, 2u);
      }

      Registry::getTelephonyCapabilities(v49, *(a1 + 56));
      v38 = (*(**v49 + 40))(*v49);
      if (*&v49[8])
      {
        sub_100004A34(*&v49[8]);
      }

      if (v38)
      {
        MaxDataRateManager::setUserPreferenceEnable5G_sync(a1, a2, 0, a4);
      }

      v10 = MaxDataRateManager::setUserPreferenceEnableLTE_sync(a1, a2, 1, a4);
      goto LABEL_54;
    }

    if (!v37)
    {
      goto LABEL_53;
    }

    *v49 = 136315138;
    *&v49[4] = asString();
    v17 = "#I Not handling setting maximum data rate to %s on non-LTE capable devices";
    v18 = v36;
LABEL_20:
    v19 = 12;
LABEL_52:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, v49, v19);
    goto LABEL_53;
  }

  if (a3 != 4)
  {
    goto LABEL_54;
  }

  v20 = Registry::getServiceMap(*(a1 + 56));
  v21 = v20;
  if (v22 < 0)
  {
    v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = 5381;
    do
    {
      v22 = v24;
      v25 = *v23++;
      v24 = (33 * v24) ^ v25;
    }

    while (v25);
  }

  std::mutex::lock(v20);
  *v49 = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, v49);
  if (v26)
  {
    v28 = v26[3];
    v27 = v26[4];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v21);
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v27);
      v29 = 0;
      goto LABEL_67;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v29 = 1;
LABEL_67:
  if (v28 && (*(*v28 + 16))(v28))
  {
    v46 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I 5G capable device, enabling 5G", v49, 2u);
    }

    MaxDataRateManager::setUserPreferenceEnableLTE_sync(a1, a2, 1, 2);
    v10 = 1;
    MaxDataRateManager::setUserPreferenceEnable5G_sync(a1, a2, 1, a4);
  }

  else
  {
    v47 = *v8;
    v10 = 0;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v48 = asString();
      *v49 = 136315138;
      *&v49[4] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Not handling setting maximum data rate to %s on non-5G capable devices", v49, 0xCu);
      v10 = 0;
    }
  }

  if (v29)
  {
    goto LABEL_54;
  }

  v45 = v27;
LABEL_76:
  sub_100004A34(v45);
LABEL_54:
  v40 = *v8;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = asString();
    v42 = CSIBOOLAsString(v10);
    *v49 = 136315394;
    *&v49[4] = v41;
    *&v49[12] = 2080;
    *&v49[14] = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Setting max data rate to %s resulted in %s", v49, 0x16u);
  }

  return v10;
}

void sub_10061BB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::maybeEnableLteSwitchOnMigrationForLatestDevices_sync(uint64_t a1, uint64_t a2, char a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v14 = 0;
  v15 = 0;
  Model_sync = MaxDataRateManager::getModel_sync(a1, a2, &v14);
  if (v14)
  {
    v8 = *(v14 + 616);
    if ((capabilities::ct::latestAndGreatestDevice(Model_sync) & 1) == 0)
    {
      goto LABEL_15;
    }

    v9 = *v6;
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 == 3)
    {
      if (a3)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Enabling LTE user preference for new device due to migration", buf, 2u);
        }

        MaxDataRateManager::setMaxDataRateMandatory_sync(a1, a2, 3, 2);
        goto LABEL_15;
      }

      if (!v10)
      {
        goto LABEL_15;
      }

      v13 = asString();
      *buf = 136315138;
      v17 = v13;
      v12 = "#I Restoring from the same device, leaving LTE switch at: %s";
    }

    else
    {
      if (!v10)
      {
        goto LABEL_15;
      }

      v11 = asString();
      *buf = 136315138;
      v17 = v11;
      v12 = "#I Leaving LTE switch migration alone, LTE user preference is: %s";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    goto LABEL_15;
  }

  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_101775E94();
  }

LABEL_15:
  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_10061BD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::evaluateSwitchStates_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v6 = 0;
  v7 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v6);
  if (v6)
  {
    v5[0] = 0;
    v5[1] = 0;
    Registry::getTelephonyCapabilities(&v8, *(a1 + 56));
    (*(*v8 + 32))(v8);
    sub_100313F94(v5);
  }

  if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    sub_101775EFC();
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10061D3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10061FF88(&a21);
  sub_10061FF88(&a37);
  sub_10061FF88(&a53);
  sub_10061FF88(&a69);
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10061D524(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (*(a1 + 112))
  {
    v3 = a1;
    sub_10062FD74(a1 + 88, *(a1 + 8), a2);
    a1 = *(v3 + 48);
    if (a1)
    {
      LODWORD(a1) = (*(*a1 + 48))(a1);
    }

    *(v3 + 16) = a1;
  }

  else
  {
    LODWORD(a1) = *(a1 + 16);
  }

  return a1 != v2;
}

void MaxDataRateManager::handlePersonalityEvent_sync(MaxDataRateManager *this, const void **a2)
{
  v3 = *(this + 66);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
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

    while (1)
    {
      v9 = *v4;
      v10 = *(*v4 + 47);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(*v4 + 32);
      }

      if (v10 == v7)
      {
        v14 = *(v9 + 24);
        v12 = v9 + 24;
        v13 = v14;
        v15 = (v11 >= 0 ? v12 : v13);
        if (!memcmp(v15, v8, v7))
        {
          break;
        }
      }

      v4 += 2;
      if (v4 == v5)
      {
        return;
      }
    }
  }

  if (v4 != v5)
  {
    v16 = *v4;
    v17 = v4[1];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v16 && !*(v16 + 49))
    {
      MaxDataRateManager::evaluateMultiSimStatus_sync(this);
    }

    if (v17)
    {

      sub_100004A34(v17);
    }
  }
}

void sub_10061D6A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::evaluateMultiSimStatus_sync(MaxDataRateManager *this)
{
  v2 = *(this + 66);
  v3 = *v2;
  v4 = v2[1];
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (!*(*v3 + 49))
      {
        v5 += *(*v3 + 48);
      }

      v3 += 16;
    }

    while (v3 != v4);
    v6 = v5 > 1;
  }

  v7 = *(this + 68);
  v8 = this + 552;
  if (v7 == this + 552)
  {
    v14 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = sub_100375B7C(*(v7 + 5) + 960);
      v11 = *(v7 + 1);
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
          v12 = *(v7 + 2);
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v9 += v10;
      v7 = v12;
    }

    while (v12 != v8);
    v7 = *(this + 68);
    v14 = v9 > 1;
  }

  if (v7 != v8)
  {
    do
    {
      v15 = *(v7 + 8);
      v16 = v6 && *(this + 39) != v15 && v14;
      MaxDataRateManager::handleMsimActivated_sync(this, v16, v15);
      v17 = *(v7 + 1);
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
          v18 = *(v7 + 2);
          v13 = *v18 == v7;
          v7 = v18;
        }

        while (!v13);
      }

      v7 = v18;
    }

    while (v18 != v8);
  }
}

void MaxDataRateManager::handleMsimActivated_sync(uint64_t a1, int a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  MaxDataRateManager::getModel_sync(a1, a3, &v10);
  v6 = v10;
  if (v10)
  {
    sub_100375DA8(v10 + 960, a2);
    if (sub_100375DA0(v6 + 960))
    {
      sub_10061D524(v6 + 600, 1);
      v8 = 0;
      v9 = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      sub_10017AE44(ServiceMap, &v8);
      if (v8)
      {
        (*(*v8 + 352))(v8, a3, 2);
      }

      if (v9)
      {
        sub_100004A34(v9);
      }
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10061D8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MaxDataRateManager::handleCarrierBundlesChanged_sync(uint64_t a1, uint64_t a2)
{
  result = rest::operator==();
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 544);
    if (v5 != (a1 + 552))
    {
      v6 = (a1 + 136);
      v7 = (a2 + 8);
      do
      {
        v8 = *v6;
        if (*v6)
        {
          v9 = *(v5 + 8);
          v10 = a1 + 136;
          do
          {
            if (*(v8 + 32) >= v9)
            {
              v10 = v8;
            }

            v8 = *(v8 + 8 * (*(v8 + 32) < v9));
          }

          while (v8);
          if (v10 != v6 && v9 >= *(v10 + 32))
          {
            result = (*(**(a1 + 48) + 16))(*(a1 + 48));
            v11 = result;
            v12 = *v7;
            if (!*v7)
            {
              goto LABEL_31;
            }

            v13 = *(v5 + 8);
            v14 = a2 + 8;
            do
            {
              if (*(v12 + 32) >= v13)
              {
                v14 = v12;
              }

              v12 = *(v12 + 8 * (*(v12 + 32) < v13));
            }

            while (v12);
            if (v14 == v7 || v13 < *(v14 + 32) || (result = rest::operator==(), (result & 1) == 0))
            {
LABEL_31:
              if (*(v10 + 40))
              {
                v15 = *v11;
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v20 = asString();
                  v21 = 2080;
                  v22 = asString();
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle setup event received (%s, %s), evaluating state of switches and user preferences", buf, 0x16u);
                }

                MaxDataRateManager::maybeEnableLteSwitchOnCbChange_sync(a1);
              }
            }
          }
        }

        v16 = v5[1];
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
            v17 = v5[2];
            v18 = *v17 == v5;
            v5 = v17;
          }

          while (!v18);
        }

        v5 = v17;
      }

      while (v17 != (a1 + 552));
    }
  }

  return result;
}

void MaxDataRateManager::maybeEnableLteSwitchOnCbChange_sync(uint64_t a1)
{
  (*(**(a1 + 48) + 16))(*(a1 + 48));
  v3[0] = 0;
  v3[1] = 0;
  Registry::getTelephonyCapabilities(buf, *(a1 + 56));
  (*(**buf + 32))(*buf);
  sub_100313F94(v3);
}

void sub_10061E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, const void *a16)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100045C8C(&a9);
  sub_100045C8C(&a16);
  sub_100005978(&a10);
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(a1);
}

void sub_10061E0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x10061E0E0);
  }

  JUMPOUT(0x10061E0DCLL);
}

void MaxDataRateManager::evaluateSwitchStatesForSlot_sync(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      if (v6(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v5);
    while (v2 != v5)
    {
      v3 = *v2++;
      MaxDataRateManager::evaluateSwitchStates_sync(a1, v3);
      while (v2 != v5 && (v6(*v2) & 1) == 0)
      {
        ++v2;
      }
    }
  }
}

void MaxDataRateManager::handleDeviceTypesChanged_sync(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 120))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v4 = *(a1 + 104);
    v5 = v4;
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 8) == *(v5 + 8);
      if (!v6)
      {
        break;
      }

      v7 = v3[1];
      v8 = v3;
      if (v7)
      {
        do
        {
          v3 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v3 = v8[2];
          v6 = *v3 == v8;
          v8 = v3;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v3 == a2 + 1)
      {
        return;
      }
    }
  }

  else
  {
    v4 = *(a1 + 104);
  }

  v11 = (a1 + 112);
  if (v4 != (a1 + 112))
  {
    v12 = a2 + 1;
    do
    {
      v13 = *v12;
      v14 = *(v4 + 7);
      if (!*v12)
      {
        goto LABEL_32;
      }

      v15 = v12;
      do
      {
        if (*(v13 + 28) >= v14)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * (*(v13 + 28) < v14));
      }

      while (v13);
      if (v15 == v12 || v14 < *(v15 + 7) || *(v15 + 8) != *(v4 + 8))
      {
LABEL_32:
        v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 7));
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = sub_100072578(*(v4 + 8));
          *buf = 136315138;
          v21 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Device type changed to %s, evaluating state of switches", buf, 0xCu);
        }

        MaxDataRateManager::evaluateSwitchStatesForSlot_sync(a1);
      }

      v18 = v4[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v4[2];
          v6 = *v19 == v4;
          v4 = v19;
        }

        while (!v6);
      }

      v4 = v19;
    }

    while (v19 != v11);
  }
}

uint64_t MaxDataRateManager::is5GSwitchSupported_sync(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  cf[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, cf);
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

      goto LABEL_14;
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
    v13 = *v2;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(cf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to get the CapabilitiesHandler when enabling 5G switch", cf, 2u);
    }

    v14 = 0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    return v14;
  }

LABEL_14:
  if (!(*(*v11 + 16))(v11))
  {
    v14 = 1;
    if (v12)
    {
      return v14;
    }

    goto LABEL_10;
  }

  (*(**(a1 + 592) + 96))(cf);
  v16 = cf[0];
  v22 = 0;
  if (cf[0] && (v17 = CFGetTypeID(cf[0]), v17 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v22, v16, v18);
    v19 = v22;
    sub_10000A1EC(cf);
    if (v19)
    {
      v20 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf[0]) = 0;
        v14 = 2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Show5GSwitch is set to true, 5G switch is therefore supported", cf, 2u);
        if (v12)
        {
          return v14;
        }
      }

      else
      {
        v14 = 2;
        if (v12)
        {
          return v14;
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_10000A1EC(cf);
  }

  v21 = *v2;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(cf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I 5G switch is not supported", cf, 2u);
  }

  v14 = 3;
  if ((v12 & 1) == 0)
  {
LABEL_10:
    sub_100004A34(v10);
  }

  return v14;
}

void sub_10061E6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MaxDataRateManager::isLTESwitchSupported_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = MaxDataRateManager::carrierAndDeviceSupportLTE_sync(a1, a2);
  if ((v5 & 0x100) == 0)
  {
    return 0;
  }

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  cf[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, cf);
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
      if (!v15)
      {
        goto LABEL_10;
      }

LABEL_17:
      if ((*(*v15 + 16))(v15))
      {
        (*(**(a1 + 592) + 96))(cf);
        v18 = cf[0];
        v35 = 0;
        if (cf[0])
        {
          v19 = CFGetTypeID(cf[0]);
          if (v19 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(&v35, v18, v20);
          }
        }

        v21 = v35;
        sub_10000A1EC(cf);
        if (v21 == 1)
        {
          v22 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(cf[0]) = 0;
            v23 = "#I Show3GSwitchWith5G is set to true, 4G switch is therefore supported";
            goto LABEL_24;
          }

LABEL_47:
          v6 = 2;
          if (v16)
          {
            return v6;
          }

          goto LABEL_45;
        }

        (*(**(a1 + 592) + 96))(cf);
        v24 = cf[0];
        v35 = 0;
        if (cf[0] && (v25 = CFGetTypeID(cf[0]), v25 == CFBooleanGetTypeID()))
        {
          ctu::cf::assign(&v35, v24, v26);
          v27 = v35;
          sub_10000A1EC(cf);
          if (v27)
          {
            v22 = *v4;
            if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_47;
            }

            LOWORD(cf[0]) = 0;
            v23 = "#I Show4GSwitchWith5G is set to true, 4G switch is therefore supported";
            goto LABEL_24;
          }
        }

        else
        {
          sub_10000A1EC(cf);
        }
      }

      if (MaxDataRateManager::is5GSwitchSupported_sync(a1) == 2)
      {
        v28 = *v4;
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        LOWORD(cf[0]) = 0;
        v29 = "#I 5G switch is set to true, 4G switch is therefore not supported";
      }

      else
      {
        (*(**(a1 + 592) + 96))(cf);
        v30 = cf[0];
        v35 = 0;
        if (cf[0] && (v31 = CFGetTypeID(cf[0]), v31 == CFBooleanGetTypeID()))
        {
          ctu::cf::assign(&v35, v30, v32);
          v33 = v35;
          sub_10000A1EC(cf);
          if (v33)
          {
            v22 = *v4;
            if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_47;
            }

            LOWORD(cf[0]) = 0;
            v23 = "#I Show4GSwitch is set to true, 4G switch is therefore supported";
LABEL_24:
            v6 = 2;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, cf, 2u);
            if (v16)
            {
              return v6;
            }

            goto LABEL_45;
          }
        }

        else
        {
          sub_10000A1EC(cf);
        }

        v28 = *v4;
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
LABEL_44:
          v6 = 3;
          if (v16)
          {
            return v6;
          }

LABEL_45:
          sub_100004A34(v14);
          return v6;
        }

        LOWORD(cf[0]) = 0;
        v29 = "#I 4G switch is not supported";
      }

      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v29, cf, 2u);
      goto LABEL_44;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_10:
  v17 = *v4;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(cf[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to get the CapabilitiesHandler, support for LTE switch is therefore unknown", cf, 2u);
  }

  v6 = 0;
  if ((v16 & 1) == 0)
  {
    goto LABEL_45;
  }

  return v6;
}

void sub_10061EB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MaxDataRateManager::is3GSwitchSupported_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = v4;
  v6 = *(a1 + 112);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = a1 + 112;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v7 == a1 + 112 || *(v7 + 28) > a2)
  {
    goto LABEL_8;
  }

  v11 = *(v7 + 32);
  if (v11 == 3)
  {
    v12 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Device is CDMA core, not allowing 3G switch", &cf, 2u);
    }

    return 1;
  }

  if ((v11 - 1) >= 2)
  {
LABEL_8:
    v8 = *v4;
    v9 = 0;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Device type is still unknown, not allowing 3G switch", &cf, 2u);
      return 0;
    }

    return v9;
  }

  Registry::getTelephonyCapabilities(&cf, *(a1 + 56));
  v13 = (*(*cf + 16))(cf);
  if (v57)
  {
    sub_100004A34(v57);
  }

  if ((v13 & 1) == 0)
  {
    v25 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      return 3;
    }

    LOWORD(cf) = 0;
    v26 = "#I iPad device, not supporting 3G switch";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, &cf, 2u);
    return 3;
  }

  v14 = *(a1 + 568);
  if (*(v14 + 16) == 2 && *(v14 + 136) != 2)
  {
    v25 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      return 3;
    }

    LOWORD(cf) = 0;
    v26 = "#I legacy RATs disabled";
    goto LABEL_29;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v16 = ServiceMap;
  if (v17 < 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(ServiceMap);
  cf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, &cf);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_33:
  if (!v23)
  {
    v33 = *v5;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LOWORD(cf) = 0;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unable to get the CapabilitiesHandler, support for 3G switch is therefore unknown", &cf, 2u);
    }

    goto LABEL_43;
  }

  if ((*(*v23 + 16))(v23))
  {
    (*(**(a1 + 592) + 96))(&cf);
    v27 = cf;
    v58 = 0;
    if (cf)
    {
      v28 = CFGetTypeID(cf);
      if (v28 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v58, v27, v29);
      }
    }

    v30 = v58;
    sub_10000A1EC(&cf);
    if (v30 == 1)
    {
      v31 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf) = 0;
        v32 = "#I Show3GSwitchWith5G is set to true, 3G switch is therefore supported";
LABEL_69:
        v9 = 2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, &cf, 2u);
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    (*(**(a1 + 592) + 96))(&cf);
    v34 = cf;
    v58 = 0;
    if (cf)
    {
      v35 = CFGetTypeID(cf);
      if (v35 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v58, v34, v36);
      }
    }

    v37 = v58;
    sub_10000A1EC(&cf);
    if (v37 == 1)
    {
      v38 = *v5;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf) = 0;
        v39 = "#I Show4GSwitchWith5G is set to true, 3G switch is therefore not supported";
LABEL_55:
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, &cf, 2u);
        goto LABEL_56;
      }

      goto LABEL_56;
    }
  }

  if (MaxDataRateManager::is5GSwitchSupported_sync(a1) == 2)
  {
    v38 = *v5;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf) = 0;
      v39 = "#I 5G switch is set to true, 3G switch is therefore not supported";
      goto LABEL_55;
    }

LABEL_56:
    v9 = 3;
    goto LABEL_85;
  }

  (*(**(a1 + 592) + 96))(&cf);
  v40 = cf;
  v58 = 0;
  if (cf)
  {
    v41 = CFGetTypeID(cf);
    if (v41 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v58, v40, v42);
    }
  }

  v43 = v58;
  sub_10000A1EC(&cf);
  if (v43 != 1)
  {
    (*(**(a1 + 592) + 96))(&cf);
    v44 = cf;
    v58 = 0;
    if (cf)
    {
      v45 = CFGetTypeID(cf);
      if (v45 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v58, v44, v46);
      }
    }

    v47 = v58;
    sub_10000A1EC(&cf);
    if (v47 == 1)
    {
      v31 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf) = 0;
        v32 = "#I Show3GSwitchWith4G is set to true, 3G switch is therefore supported";
        goto LABEL_69;
      }

      goto LABEL_84;
    }

    if (MaxDataRateManager::isLTESwitchSupported_sync(a1, a2) == 2)
    {
      v38 = *v5;
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      LOWORD(cf) = 0;
      v39 = "#I LTE switch is supported, 3G switch is therefore not supported";
      goto LABEL_55;
    }

    (*(**(a1 + 592) + 96))(&cf);
    v48 = cf;
    v58 = 0;
    if (cf && (v49 = CFGetTypeID(cf), v49 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v58, v48, v50);
      v51 = v58;
      sub_10000A1EC(&cf);
      if (v51)
      {
        v38 = *v5;
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        LOWORD(cf) = 0;
        v39 = "#I LTE switch is not supported but LTE is enabled by default, 3G switch is therefore not supported";
        goto LABEL_55;
      }
    }

    else
    {
      sub_10000A1EC(&cf);
    }

    (*(**(a1 + 592) + 96))(&cf);
    v52 = cf;
    v58 = 0;
    if (cf && (v53 = CFGetTypeID(cf), v53 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v58, v52, v54);
      v55 = v58;
      sub_10000A1EC(&cf);
      if (v55)
      {
        v31 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(cf) = 0;
          v32 = "#I Show3GSwitch is set to true, 3G switch is therefore supported";
          goto LABEL_69;
        }

        goto LABEL_84;
      }
    }

    else
    {
      sub_10000A1EC(&cf);
    }

LABEL_43:
    v9 = 0;
    goto LABEL_85;
  }

  v31 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(cf) = 0;
    v32 = "#I Show3GSwitchWithVolte is set to true, 3G switch is therefore supported";
    goto LABEL_69;
  }

LABEL_84:
  v9 = 2;
LABEL_85:
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  return v9;
}

void sub_10061F40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MaxDataRateManager::isRegulatedRatsSwitchSupported_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = v4;
  v6 = *(a1 + 296);
  if (v6)
  {
    v7 = a1 + 296;
    do
    {
      if (*(v6 + 28) >= a2)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 28) < a2));
    }

    while (v6);
    if (v7 != a1 + 296 && *(v7 + 28) <= a2 && *(v7 + 32) == 1)
    {
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 0;
        v9 = "#I [DEBUG] Forcing in country with regulated RATs, regulated RATs switch is therefore supported";
        v10 = 2;
        v11 = &v21;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v11, 2u);
        return v10;
      }

      return 2;
    }
  }

  (*(**(a1 + 592) + 80))(&cf);
  v12 = cf;
  v22 = 0;
  if (cf && (v13 = CFGetTypeID(cf), v13 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v22, v12, v14);
    v15 = v22;
    sub_10000A1EC(&cf);
    if (v15)
    {
      v8 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "#I In country with regulated RATs, regulated RATs switch is therefore supported";
        v10 = 2;
        v11 = buf;
        goto LABEL_16;
      }

      return 2;
    }
  }

  else
  {
    sub_10000A1EC(&cf);
  }

  v16 = *v5;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Not in country with regulated RATs, regulated RATs switch is therefore not supported", v18, 2u);
  }

  return 3;
}

void sub_10061F674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getMaxDataRate_sync(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v22);
  v4 = v22;
  if (!v22)
  {
    v6 = 0;
    goto LABEL_40;
  }

  v5 = *(a1 + 568);
  v6 = *(v5 + 16) != 2 || *(v5 + 136) == 2;
  v7 = MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2);
  v8 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(v4 + 16) & 0xFE) != 2 || *(v4 + 496) != 2)
  {
    if ((*(v4 + 136) & 0xFE) == 2)
    {
      if (*(v4 + 616) == 2)
      {
        goto LABEL_22;
      }

      if (!v6)
      {
        goto LABEL_36;
      }

      v13 = *(v4 + 736);
      if (((v13 != 2) & ~v7) == 0)
      {
        if (v13 == 2)
        {
          v6 = 2;
        }

        else
        {
          v6 = 1;
        }

        if (*(v4 + 256) != 2)
        {
          v6 = 2;
        }

        goto LABEL_36;
      }
    }

    else if ((((*(v4 + 256) & 0xFE) == 2) & v6) == 1)
    {
      if (*(v4 + 736) == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = v7;
      }

      goto LABEL_36;
    }

    v6 = 0;
    goto LABEL_36;
  }

  v9 = *(a1 + 200);
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1 + 200;
  do
  {
    if (*(v9 + 28) >= a2)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 28) < a2));
  }

  while (v9);
  if (v10 == a1 + 200 || *(v10 + 28) > a2 || !NRDisableStatus::isNSADisabledWithReason())
  {
LABEL_27:
    v6 = 4;
    goto LABEL_36;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asString();
    *buf = 136315138;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Squashing 5G user preference to LTE due to NR disable status %s", buf, 0xCu);
  }

LABEL_22:
  v6 = 3;
LABEL_36:
  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = asString();
    v16 = asString();
    v17 = asString();
    v18 = asString();
    v19 = asString();
    v20 = asString();
    *buf = 136316418;
    v25 = v15;
    v26 = 2080;
    v27 = v16;
    v28 = 2080;
    v29 = v17;
    v30 = 2080;
    v31 = v18;
    v32 = 2080;
    v33 = v19;
    v34 = 2080;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Query to get the current max data rate, 5G(%s), LTE(%s), 3G(%s), legacy rats(%s), regulated rats(%s) result: %s", buf, 0x3Eu);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

LABEL_40:
  if (v23)
  {
    sub_100004A34(v23);
  }

  return v6;
}

void sub_10061F9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::dumpState_sync(MaxDataRateManager *this)
{
  v2 = (this + 40);
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Legacy RATs Switch support: %s", buf, 0xCu);
    v3 = *(this + 5);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asString();
    *buf = 136315138;
    v34 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Legacy RATs User preference: %s", buf, 0xCu);
  }

  if (*(this + 73))
  {
    v5 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Legacy RATs temporary enablement timer is running", buf, 2u);
    }
  }

  rest::RATSRestrictionInfo::dumpState((this + 344), v2);
  v6 = *(this + 68);
  if (v6 != (this + 552))
  {
    v7 = (this + 136);
    v8 = (this + 112);
    do
    {
      v9 = (*(**(this + 6) + 16))(*(this + 6), *(v6 + 8));
      v10 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = asString();
        *buf = 136315138;
        v34 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 2G switch support: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = asString();
        *buf = 136315138;
        v34 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 3G Switch support: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = asString();
        *buf = 136315138;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I LTE Switch support: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        *buf = 136315138;
        v34 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 5G Switch support: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = asString();
        *buf = 136315138;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 2G User preference: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = asString();
        *buf = 136315138;
        v34 = v16;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 3G User preference: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = asString();
        *buf = 136315138;
        v34 = v17;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I LTE User preference: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = asString();
        *buf = 136315138;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 5G User preference: %s", buf, 0xCu);
      }

      v19 = *v7;
      if (*v7)
      {
        v20 = *(v6 + 8);
        v21 = (this + 136);
        do
        {
          if (*(v19 + 8) >= v20)
          {
            v21 = v19;
          }

          v19 = *&v19[8 * (*(v19 + 8) < v20)];
        }

        while (v19);
        if (v21 != v7 && v20 >= *(v21 + 8))
        {
          v22 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v23 = asString();
            *buf = 136315138;
            v34 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Bundle technology type: %s", buf, 0xCu);
          }
        }
      }

      v24 = *v8;
      if (!*v8)
      {
        goto LABEL_42;
      }

      v25 = *(v6 + 8);
      v26 = (this + 112);
      do
      {
        if (*(v24 + 7) >= v25)
        {
          v26 = v24;
        }

        v24 = *&v24[8 * (*(v24 + 7) < v25)];
      }

      while (v24);
      if (v26 != v8 && v25 >= *(v26 + 7))
      {
        v27 = *(v26 + 8);
      }

      else
      {
LABEL_42:
        v27 = 0;
      }

      v28 = *v9;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = sub_100072578(v27);
        *buf = 136315138;
        v34 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Device type: %s", buf, 0xCu);
      }

      v30 = *(v6 + 1);
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = *(v6 + 2);
          v32 = *v31 == v6;
          v6 = v31;
        }

        while (!v32);
      }

      v6 = v31;
    }

    while (v31 != (this + 552));
  }
}

uint64_t sub_10061FF88(uint64_t a1)
{
  sub_1006271D0(a1 + 88);
  sub_100627150(a1 + 56);
  sub_1006270D0(a1 + 24);
  return a1;
}

uint64_t MaxDataRateManager::evaluateUserPreference_sync(uint64_t a1)
{
  v2 = *(a1 + 568);
  v3 = *(v2 + 168);
  if (v3)
  {
    LODWORD(v3) = (*(*v3 + 48))(v3);
  }

  *(v2 + 136) = v3;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Legacy RATs User Preference evaluated: %s", buf, 0xCu);
  }

  *buf = 1;
  memset(v32, 0, sizeof(v32));
  *&buf[8] = a1 + 312;
  LOBYTE(v32[0]) = *(a1 + 344);
  sub_1000517E4(v32 + 1, a1 + 352);
  subscriber::makeSimSlotRange();
  v6 = v25;
  v5 = v26;
  if (v25 != v26)
  {
    v7 = v27;
    do
    {
      if (v27(*v6))
      {
        break;
      }

      ++v6;
    }

    while (v6 != v26);
    v8 = v26;
    while (v6 != v8)
    {
      v9 = *v6;
      v23 = 0;
      v24 = 0;
      MaxDataRateManager::getModel_sync(a1, v9, &v23);
      v10 = v23;
      if (v23)
      {
        v11 = *(v23 + 888);
        if (v11)
        {
          LODWORD(v11) = (*(*v11 + 48))(v11);
        }

        *(v10 + 856) = v11;
        v12 = *(v10 + 768);
        if (v12)
        {
          LODWORD(v12) = (*(*v12 + 48))(v12);
        }

        *(v10 + 736) = v12;
        v13 = *(v10 + 648);
        if (v13)
        {
          LODWORD(v13) = (*(*v13 + 48))(v13);
        }

        *(v10 + 616) = v13;
        v14 = *(v10 + 528);
        if (v14)
        {
          LODWORD(v14) = (*(*v14 + 48))(v14);
        }

        *(v10 + 496) = v14;
        v15 = MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, v9);
        *v29 = v9;
        v28 = !v15;
        sub_100626598(v32 + 1, v29, &v28);
        v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), v9);
        v17 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = asString();
          *v29 = 136315138;
          v30 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I 2G User Preference evaluated: %s", v29, 0xCu);
          v17 = *v16;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = asString();
          *v29 = 136315138;
          v30 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I 3G User Preference evaluated: %s", v29, 0xCu);
          v17 = *v16;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = asString();
          *v29 = 136315138;
          v30 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I LTE User Preference evaluated: %s", v29, 0xCu);
          v17 = *v16;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = asString();
          *v29 = 136315138;
          v30 = v21;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I 5G User Preference evaluated: %s", v29, 0xCu);
        }
      }

      if (v24)
      {
        sub_100004A34(v24);
      }

      do
      {
        ++v6;
      }

      while (v6 != v5 && (v7(*v6) & 1) == 0);
    }
  }

  return sub_10062A978(buf);
}

void sub_1006203DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10062A978(va);
  _Unwind_Resume(a1);
}

BOOL MaxDataRateManager::areRegulatedRatsAllowed_sync(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v4);
  v2 = v4 && (*(v4 + 376) != 2 || *(v4 + 856) == 2);
  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

void MaxDataRateManager::resetNetworkSettings(MaxDataRateManager *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

uint64_t MaxDataRateManager::copySupportedSetMaxDataRates(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_100630254(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_1006206D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::copySupportedSetMaxDataRates_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = 0;
  v35 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v34);
  v6 = v34;
  if (!v34)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_39;
  }

  v31 = 0u;
  v32 = 0u;
  v33 = 1065353216;
  if (*(v34 + 256) == 2)
  {
    v7 = *(a1 + 568);
    if (*(v7 + 16) != 2 || *(v7 + 136) == 2)
    {
      *buf = 2;
      sub_1006309D8(&v31, buf);
      if (MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2))
      {
        *buf = 1;
        sub_1006309D8(&v31, buf);
      }
    }
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
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
        goto LABEL_18;
      }

      goto LABEL_17;
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
    goto LABEL_18;
  }

LABEL_17:
  if (((*(*v17 + 16))(v17) & 1) == 0)
  {
    *buf = 0;
    (*(**(a1 + 592) + 96))(v30);
    sub_10002FE1C(buf, v30);
    sub_10000A1EC(v30);
    if (*(a1 + 152) == a2 || !CFBooleanGetValue(*buf))
    {
      v19 = 0;
    }

    else
    {
      v29 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30[0]) = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Hiding LTE switch for non-internal builds as HideLTEForNonPreferredSim is set to true", v30, 2u);
      }

      v19 = 1;
    }

    sub_100045C8C(buf);
    if (v18)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_18:
  v19 = 0;
  if ((v18 & 1) == 0)
  {
LABEL_19:
    sub_100004A34(v16);
  }

LABEL_20:
  if (sub_100375DA0(v6 + 960))
  {
    v20 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Hiding LTE switch for Multi SIM VoLTE-only mode", buf, 2u);
    }
  }

  else
  {
    if (*(v6 + 136) == 2)
    {
      v21 = v19;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      *buf = 3;
      sub_1006309D8(&v31, buf);
      v22 = *(a1 + 568);
      if (*(v22 + 16) != 2 || *(v22 + 136) == 2)
      {
        *buf = 2;
        sub_1006309D8(&v31, buf);
      }
    }
  }

  if (*(v34 + 16) == 2)
  {
    *buf = 4;
    sub_1006309D8(&v31, buf);
    *buf = 3;
    sub_1006309D8(&v31, buf);
  }

  v23 = v32;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v24 = 0;
  if (v23)
  {
    v25 = v23;
    do
    {
      ++v24;
      v25 = *v25;
    }

    while (v25);
  }

  sub_10062674C(a3, v23, 0, v24);
  v26 = *(a3 + 8);
  v27 = 126 - 2 * __clz((v26 - *a3) >> 2);
  if (v26 == *a3)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  sub_100015F94(*a3, v26, buf, v28, 1);
  sub_10063098C(&v31);
LABEL_39:
  if (v35)
  {
    sub_100004A34(v35);
  }
}

void sub_100620B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, std::__shared_weak_count *);
  sub_100045C8C(va1);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  sub_10063098C(va);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getMaxDataRate(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_100630C08(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_100620CE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::setMaxDataRate(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  sub_100630D9C(&v8, a4);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100620E24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

BOOL MaxDataRateManager::isMaxDataRateValid_sync(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  MaxDataRateManager::copySupportedSetMaxDataRates_sync(a1, a2, &v7);
  v4 = v8;
  v5 = v7;
  if (v7 != v8)
  {
    v5 = v7;
    while (*v5 != a3)
    {
      if (++v5 == v8)
      {
        v5 = v8;
        break;
      }
    }
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return v5 != v4;
}

uint64_t MaxDataRateManager::send3GAndLTEUserPreference_sync(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v26 = 0;
  v27 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v26);
  v9 = v26;
  if (v26)
  {
    v10 = off_101E6BF30;
    v33[0] = off_101E6BF30;
    v33[1] = a1;
    v34 = a2 | (a4 << 32);
    v35 = v33;
    *(&v34 + 5) = 0;
    HIBYTE(v34) = 0;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        *buf = 0u;
        v32 = 0u;
        sub_10009CF40(buf, v33);
        sub_10016DBD4(v33);
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1174405120;
        aBlock[2] = sub_1006226DC;
        aBlock[3] = &unk_101E6A6F8;
        v30[32] = a4;
        aBlock[4] = a1;
        aBlock[5] = v8;
        aBlock[6] = v9;
        v29 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10009CF40(v30, buf);
        v21 = _Block_copy(aBlock);
        v25 = v21;
        MaxDataRateManager::maybeShowUnsupportedCarrierWarning_sync(a1, a2, a4, 1, &v25);
        if (v21)
        {
          _Block_release(v21);
        }

        sub_10002B644(v30);
        if (v29)
        {
          sub_100004A34(v29);
        }

        sub_10002B644(buf);
        goto LABEL_38;
      }

      if (a3 != 4 || a4 != 1)
      {
        goto LABEL_40;
      }

      v16 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Saving user preference to 5G", buf, 2u);
      }

      v17 = *(a1 + 568);
      if (*(v17 + 16) != 2 || *(v17 + 136) == 2)
      {
        sub_10061D524(v9 + 720, 1);
      }

      v14 = 1;
      sub_10061D524(v9 + 600, 1);
      goto LABEL_24;
    }

    if (a3 == 1)
    {
      v18 = *(a1 + 568);
      if (*(v18 + 16) == 2 && *(v18 + 136) != 2)
      {
        v23 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v24 = "#I Not saving user preference to 2G. Legacy RATs are disabled";
          goto LABEL_52;
        }
      }

      else
      {
        if (MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2))
        {
          if (a4 != 1)
          {
            goto LABEL_38;
          }

          v19 = *v8;
          v20 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
          v13 = 0;
          if (v20)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Saving user preference to 2G", buf, 2u);
            v13 = 0;
          }

LABEL_11:
          sub_10061D524(v9 + 720, v13);
          sub_10061D524(v9 + 600, 0);
          v14 = 0;
LABEL_24:
          sub_10061D524(v9 + 480, v14);
          goto LABEL_38;
        }

        v23 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v24 = "#I Not saving user preference to 2G. Regulated RATs are disabled";
LABEL_52:
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
        }
      }
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_40;
      }

      v11 = *(a1 + 568);
      if (*(v11 + 16) != 2 || *(v11 + 136) == 2)
      {
        if (a4 != 1)
        {
LABEL_38:
          if (!v35)
          {
LABEL_41:
            v15 = 1;
LABEL_42:
            sub_10002B644(v33);
            goto LABEL_43;
          }

          v10 = *v35;
LABEL_40:
          v10[6]();
          goto LABEL_41;
        }

        v12 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Saving user preference to 3G", buf, 2u);
        }

        v13 = 1;
        goto LABEL_11;
      }

      v23 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = "#I Not saving user preference to 3G. Legacy RATs are disabled";
        goto LABEL_52;
      }
    }

    v15 = 0;
    goto LABEL_42;
  }

  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_101775F64();
  }

  v15 = 0;
LABEL_43:
  if (v27)
  {
    sub_100004A34(v27);
  }

  return v15;
}

void sub_10062134C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::setUserPreferenceEnable3G_sync(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v14 = 0;
  v15 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v14);
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = v8;
  if (v14)
  {
    if (a4 == 1)
    {
      sub_10061D524(v14 + 720, a3);
    }

    v10 = *v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CSIBOOLAsString(a3);
      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Device supports enable 3G option in system selection, sending it down with 3G set to %s", buf, 0xCu);
    }

    *buf = 0uLL;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    sub_10017AE44(ServiceMap, buf);
    group = 0;
    (*(**buf + 360))(*buf, a2, a4, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_101775F98();
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

uint64_t MaxDataRateManager::carrierAndDeviceSupportLTE_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = *(a1 + 136);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = a1 + 136;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 == a1 + 136 || *(v6 + 32) > a2)
  {
LABEL_21:
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_101775FCC();
    }

LABEL_10:
    v7 = 0;
    v8 = 0;
    return v7 | (v8 << 8);
  }

  if (!*(v6 + 41))
  {
    v10 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[1]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle is not set up yet, cannot decide whether carrier supports LTE", &v13[1], 2u);
    }

    goto LABEL_10;
  }

  v13[1] = 0;
  (*(**(a1 + 592) + 96))(v13);
  sub_10002FE1C(&v13[1], v13);
  sub_10000A1EC(v13);
  v13[0] = 0;
  (*(**(a1 + 592) + 96))(&v12);
  sub_10002FE1C(v13, &v12);
  sub_10000A1EC(&v12);
  v12 = 0;
  (*(**(a1 + 592) + 96))(&v11);
  sub_10002FE1C(&v12, &v11);
  sub_10000A1EC(&v11);
  v7 = *v13 != 0 || v12 != 0;
  sub_100045C8C(&v12);
  sub_100045C8C(v13);
  sub_100045C8C(&v13[1]);
  v8 = 1;
  return v7 | (v8 << 8);
}

void sub_100621830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_10000A1EC(va);
  sub_100045C8C(va1);
  sub_100045C8C(va2);
  _Unwind_Resume(a1);
}

BOOL MaxDataRateManager::setUserPreferenceEnableLTE_sync(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v18 = 0;
  v19 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v18);
  v9 = v18;
  if (v18)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1174405120;
    v12[2] = sub_100621E2C;
    v12[3] = &unk_101E6A698;
    v15 = a4;
    v12[4] = a1;
    v12[5] = v8;
    v16 = a3;
    v12[6] = v18;
    v13 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = a2;
    v10 = _Block_copy(v12);
    v17 = v10;
    MaxDataRateManager::maybeShowUnsupportedCarrierWarning_sync(a1, a2, a4, a3, &v17);
    if (v10)
    {
      _Block_release(v10);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }
  }

  else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_101776000();
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  return v9 != 0;
}

void sub_100621A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v17)
  {
    _Block_release(v17);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::setUserPreferenceEnable5G_sync(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = 0;
  v14 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v13);
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = v8;
  if (v13)
  {
    if (a4 == 1)
    {
      sub_10061D524(v13 + 480, a3);
    }

    v10 = *v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CSIBOOLAsString(a3);
      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Device supports enable 5G option in system selection, sending it down with 5G set to %s", buf, 0xCu);
    }

    *buf = 0uLL;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    sub_10017AE44(ServiceMap, buf);
    (*(**buf + 344))(*buf, a2, a4);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_101776034();
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

const void **MaxDataRateManager::maybeShowUnsupportedCarrierWarning_sync(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  if (a3 == 1 && (a4 & 1) != 0)
  {
    cf = 0;
    (*(**(a1 + 592) + 96))(&cf);
    v7 = cf;
    LOBYTE(v20) = 0;
    if (cf && (v8 = CFGetTypeID(cf), v8 == CFBooleanGetTypeID()) && (ctu::cf::assign(&v20, v7, v9), (v20 & 1) != 0))
    {
      sub_100004AA0(&v20, (a1 + 8));
      v11 = v20;
      v10 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
      }

      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 1174405120;
      block[2] = sub_100622274;
      block[3] = &unk_101E6A6C8;
      block[4] = a1;
      block[5] = v11;
      v17 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *a5;
      if (*a5)
      {
        v13 = _Block_copy(v13);
      }

      aBlock = v13;
      dispatch_async(global_queue, block);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }
    }

    else
    {
      (*(*a5 + 16))();
    }

    return sub_10000A1EC(&cf);
  }

  else
  {
    v14 = *(*a5 + 16);

    return v14();
  }
}

void sub_100621E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

void sub_100621E2C(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 68);
  if (v4 == 1 && (a2 & 1) == 0)
  {
    v5 = **(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Not saving LTE enabled setting due to user canceling request", buf, 2u);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v6) == &_xpc_type_dictionary)
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      v6 = 0;
    }

    xpc_release(v6);
    *buf = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      *buf = xpc_null_create();
    }

    object = xpc_null_create();
    sub_10002A37C(119, buf, &object);
    xpc_release(object);
    xpc_release(*buf);
    *buf = 0;
    xpc_release(v7);
    (*(**(v3 + 624) + 160))(*(v3 + 624));
    return;
  }

  if (v4 != 3)
  {
    v8 = **(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CSIBOOLAsString(*(a1 + 69));
      *buf = 136315394;
      *&buf[4] = v9;
      v25 = 2080;
      v26 = asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Saving LTE user preference to %s due to %s", buf, 0x16u);
    }

    sub_10061D524(*(a1 + 48) + 600, *(a1 + 69));
  }

  ServiceMap = Registry::getServiceMap(*(v3 + 56));
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
      goto LABEL_21;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_21:
  if ((*(*(a1 + 48) + 256) & 0xFE) == 2)
  {
    v20 = *(a1 + 64);
    v21 = *(a1 + 68);
    group = 0;
    (*(*v18 + 360))(v18, v20, v21, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  (*(*v18 + 352))(v18, *(a1 + 64), *(a1 + 68));
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_1006221A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, xpc_object_t object, xpc_object_t a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100622248(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100622264(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

const void **sub_100622274(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Showing pop-up for LTE enable warning", buf, 2u);
  }

  v14 = 0;
  (*(**(v2 + 608) + 16))(&v14);
  v13 = 0;
  (*(**(v2 + 608) + 16))(&v13);
  v12 = 0;
  (*(**(v2 + 608) + 16))(&v12);
  v11 = 0;
  (*(**(v2 + 608) + 16))(&v11);
  v10 = 0;
  CFUserNotificationDisplayAlert(0.0, 2uLL, 0, 0, 0, v14, v13, v12, v11, 0, &v10);
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I response flags: %ld", buf, 0xCu);
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = a1[5];
      if (v7)
      {
        v8 = a1[7];
        if (v8)
        {
          _Block_copy(v8);
        }

        *buf = 0uLL;
        sub_100004AA0(buf, (v7 + 8));
        operator new();
      }

      sub_100004A34(v6);
    }
  }

  sub_100005978(&v11);
  sub_100005978(&v12);
  sub_100005978(&v13);
  return sub_100005978(&v14);
}

void sub_1006225D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10062263C(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void sub_100622688(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1006226DC(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 96);
  if (v4 != 1 || (a2 & 1) != 0)
  {
    if (v4 != 3)
    {
      v6 = **(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Saving user preference to LTE", v9, 2u);
      }

      v7 = *(v3 + 568);
      if (*(v7 + 16) != 2 || *(v7 + 136) == 2)
      {
        sub_10061D524(*(a1 + 48) + 720, 1);
      }

      sub_10061D524(*(a1 + 48) + 600, 1);
      sub_10061D524(*(a1 + 48) + 480, 0);
    }

    v8 = *(a1 + 88);
    if (!v8)
    {
      sub_100022DB4();
    }

    (*(*v8 + 48))(v8);
  }

  else
  {
    v5 = **(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Not saving LTE enabled setting due to user canceling request", buf, 2u);
    }
  }
}

uint64_t sub_100622828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10009CF40(a1 + 64, a2 + 64);
}

void sub_10062286C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100622884(uint64_t a1)
{
  sub_10002B644(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t MaxDataRateManager::getLegacyRatsSwitchSupport(MaxDataRateManager *this)
{
  v4 = this;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10063144C;
  v5[3] = &unk_101E6BFA0;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100069D38;
    v10 = &unk_101E6BFE0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100058DDC;
    v10 = &unk_101E6BFC0;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void MaxDataRateManager::getUserPreferenceEnable5G(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100631468(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100622B3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getUserPreferenceEnable5G_sync(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v22 = 0;
  v23 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v22);
  if (v22)
  {
    v5 = *(v22 + 16);
    if ((v5 - 2) >= 2)
    {
      v7 = v5 == 1;
      v6 = "default value";
    }

    else
    {
      v21 = 0;
      if (MaxDataRateManager::getUserPreferenceFromPersistence_sync(a1, a2, *(v22 + 488), &v21))
      {
        v6 = "user preference";
      }

      else
      {
        v8 = *(a1 + 272);
        if (!v8)
        {
          goto LABEL_18;
        }

        v9 = a1 + 272;
        do
        {
          if (*(v8 + 28) >= a2)
          {
            v9 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < a2));
        }

        while (v8);
        if (v9 != a1 + 272 && *(v9 + 28) <= a2 && *(v9 + 32) == 1)
        {
          v21 = *(v9 + 34);
          v6 = "entitlement";
        }

        else
        {
LABEL_18:
          *buf = 0;
          (*(**(a1 + 592) + 96))(&cf);
          sub_10002FE1C(buf, &cf);
          sub_10000A1EC(&cf);
          if (*buf)
          {
            LOBYTE(cf) = 0;
            ctu::cf::assign(&cf, *buf, v10);
            v21 = cf;
            v6 = "carrier bundle";
          }

          else
          {
            v11 = *(**(a1 + 592) + 96);
            v12 = 1;
            v11(&cf);
            v13 = cf;
            v24 = 1;
            if (cf)
            {
              v14 = CFGetTypeID(cf);
              if (v14 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(&v24, v13, v15);
                v12 = v24;
              }

              else
              {
                v12 = 1;
              }
            }

            v21 = v12;
            sub_10000A1EC(&cf);
            v6 = "smart data mode";
          }

          sub_100045C8C(buf);
        }
      }

      if (v21)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    v16 = *v4;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = asString();
      v18 = asString();
      *buf = 136315650;
      *&buf[4] = v17;
      v26 = 2080;
      v27 = v18;
      v28 = 2080;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I User preference: Enable 5G: %s with %s; based on %s", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_101776068();
    }

    v7 = 0;
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  return v7;
}

void sub_100622E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100045C8C(va);
  if (a6)
  {
    sub_100004A34(a6);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::getUserPreferenceEnableLTE(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100631468(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100623028(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getUserPreferenceEnableLTE_sync(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v15 = 0;
  v16 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v15);
  if (v15)
  {
    v5 = *(v15 + 136);
    if ((v5 - 2) >= 2)
    {
      v7 = v5 == 1;
      v6 = "default value";
    }

    else
    {
      v14 = 1;
      if (MaxDataRateManager::getUserPreferenceFromPersistence_sync(a1, a2, *(v15 + 608), &v14))
      {
        v6 = "user preference";
      }

      else
      {
        *buf = 0;
        (*(**(a1 + 592) + 96))(&v13);
        sub_10002FE1C(buf, &v13);
        sub_10000A1EC(&v13);
        if (*buf)
        {
          LOBYTE(v13) = 1;
          ctu::cf::assign(&v13, *buf, v8);
          v14 = v13;
          v6 = "carrier bundle";
        }

        else
        {
          v6 = "default value";
        }

        sub_100045C8C(buf);
      }

      if (v14)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    v9 = *v4;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = asString();
      *buf = 136315650;
      *&buf[4] = v10;
      v18 = 2080;
      v19 = v11;
      v20 = 2080;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User preference: Enable LTE: %s with %s; based on %s", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10177609C();
    }

    v7 = 0;
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  return v7;
}

void sub_10062329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  sub_100045C8C(va);
  if (a5)
  {
    sub_100004A34(a5);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::getUserPreferenceEnable3G(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100631468(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100623424(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getUserPreferenceEnable3G_sync(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v13 = 0;
  v14 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v13);
  if (v13)
  {
    v5 = *(v13 + 256);
    v6 = "default value";
    if ((v5 - 2) >= 2)
    {
      v8 = v5 == 1;
      if (v5 == 1)
      {
        v6 = "default value";
      }
    }

    else
    {
      buf[0] = 1;
      v7 = *(a1 + 568);
      if (*(v7 + 16) == 2 && *(v7 + 136) != 2)
      {
        v6 = "lockdown mode";
        v8 = 3;
      }

      else
      {
        if (MaxDataRateManager::getUserPreferenceFromPersistence_sync(a1, a2, *(v13 + 728), buf))
        {
          v6 = "user preference";
        }

        if (buf[0])
        {
          v8 = 2;
        }

        else
        {
          v8 = 3;
        }
      }
    }

    v9 = *v4;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = asString();
      *buf = 136315650;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2080;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User preference: Enable 3G: %s with %s; based on %s", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_1017760D0();
    }

    v8 = 0;
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  return v8;
}

uint64_t MaxDataRateManager::getUserPreferenceEnable2G(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_100631468(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_100623790(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getUserPreferenceEnableRegulatedRats_sync(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v15 = 0;
  v16 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v15);
  if (v15)
  {
    if (*(*(a1 + 568) + 16) == 2)
    {
      v5 = "lockdown mode";
      v6 = 3;
      goto LABEL_21;
    }

    v7 = *(v15 + 376);
    switch(v7)
    {
      case 3:
        goto LABEL_10;
      case 2:
        v14 = 0;
        if (MaxDataRateManager::getUserPreferenceFromPersistence_sync(a1, a2, *(v15 + 848), &v14))
        {
          v5 = "user preference";
        }

        else
        {
          *buf = 0;
          (*(**(a1 + 592) + 80))(&v13);
          sub_10002FE1C(buf, &v13);
          sub_10000A1EC(&v13);
          if (*buf)
          {
            LOBYTE(v13) = 0;
            ctu::cf::assign(&v13, *buf, v8);
            v14 = v13;
            v5 = "carrier country bundle";
          }

          else
          {
            v5 = "default value";
          }

          sub_100045C8C(buf);
        }

        if (v14)
        {
          v6 = 2;
        }

        else
        {
          v6 = 3;
        }

        break;
      case 1:
LABEL_10:
        v5 = "default value";
        v6 = 2;
        break;
      default:
        v6 = 0;
        v5 = "default value";
        break;
    }

LABEL_21:
    v9 = *v4;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = asString();
      *buf = 136315650;
      *&buf[4] = v10;
      v18 = 2080;
      v19 = v11;
      v20 = 2080;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User preference: Enable 2G: %s with %s; based on %s", buf, 0x20u);
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    sub_101776104();
  }

  v6 = 0;
LABEL_23:
  if (v16)
  {
    sub_100004A34(v16);
  }

  return v6;
}

void sub_100623A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  sub_100045C8C(va);
  if (a5)
  {
    sub_100004A34(a5);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getUserPreferenceEnableLegacyRats(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v2 = result;
    v3[4] = result;
    sub_100631468(&v4, a2);
    v3[0] = 0;
    v3[1] = 0;
    sub_100004AA0(v3, (v2 + 8));
    operator new();
  }

  return result;
}