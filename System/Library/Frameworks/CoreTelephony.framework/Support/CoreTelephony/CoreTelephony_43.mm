void sub_1002AF49C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002AF4B8(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *sub_1002AF4F0(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFNumberGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return sub_1002AF4B8(a1, v5);
}

double sub_1002AF554@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = 0u;
  v6 = 0u;
  type metadata accessor for CTMLSProtobuf();
  static CTMLSProtobuf.pack(_:)(a1, &v5);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (BYTE8(v6) == 1)
  {
    result = v5.n128_f64[0];
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1002AF5FC@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  type metadata accessor for CTMLSProtobuf();
  result = static CTMLSProtobuf.unpack(_:)(a1, v5);
  *(a2 + 288) = 0;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (v6 == 1)
  {
    result = sub_1002AF704(a2 + 8, v5 + 8);
    *(a2 + 288) = 1;
    if (v6)
    {
      return sub_1002AF7A0(v5 + 8);
    }
  }

  return result;
}

uint64_t sub_1002AF704(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 272) = -1;
  sub_1002AF73C(a1, a2);
  return a1;
}

uint64_t sub_1002AF73C(uint64_t a1, uint64_t a2)
{
  result = sub_1002AF7A0(a1);
  v5 = *(a2 + 272);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E38610[v5])(&v6, a2);
    *(a1 + 272) = v5;
  }

  return result;
}

uint64_t sub_1002AF7A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 272);
  if (v2 != -1)
  {
    result = (off_101E38600[v2])(&v3, result);
  }

  *(v1 + 272) = -1;
  return result;
}

uint64_t sub_1002AF808(uint64_t a1)
{
  if (*(a1 + 256) == 1)
  {
    v2 = *(a1 + 224);
    if (v2)
    {
      *(a1 + 232) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 200);
    if (v3)
    {
      *(a1 + 208) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 176);
    if (v4)
    {
      *(a1 + 184) = v4;
      operator delete(v4);
    }

    if (*(a1 + 175) < 0)
    {
      operator delete(*(a1 + 152));
    }

    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    *(a1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    *(a1 + 56) = v7;
    operator delete(v7);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002AF8D8(uint64_t a1)
{
  if (*(a1 + 264) == 1)
  {
    v2 = *(a1 + 232);
    if (v2)
    {
      *(a1 + 240) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 208);
    if (v3)
    {
      *(a1 + 216) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 184);
    if (v4)
    {
      *(a1 + 192) = v4;
      operator delete(v4);
    }

    if (*(a1 + 183) < 0)
    {
      operator delete(*(a1 + 160));
    }

    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }
  }

  if (*(a1 + 128) == 1)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      *(a1 + 104) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      *(a1 + 80) = v6;
      operator delete(v6);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      *(a1 + 56) = v7;
      operator delete(v7);
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

__n128 sub_1002AF9B4(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    result = a2[6];
    *(a1 + 96) = result;
    *(a1 + 112) = *(a2 + 14);
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
    *(a2 + 12) = 0;
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 128) = 1;
  }

  return result;
}

void BasebandSettings::bandCapability(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002B0DA4(&v4, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void BasebandSettings::activeBands(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002B0DA4(&v4, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void BasebandSettings::copySupportedAndActiveBands(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100063614(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1002AFDF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void BasebandSettings::copyBands_sync(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = 0;
  v22 = 0;
  BasebandSettings::getModel_sync(a1, a2, &v21);
  if (v21)
  {
    v7 = (*(*v21 + 32))(v21, a3);
    *v20 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v9 = *v20;
      *v20 = Mutable;
      *buf = v9;
      sub_1000296E0(buf);
    }

    v12 = *v7;
    v10 = v7 + 1;
    v11 = v12;
    if (v12 != v10)
    {
      do
      {
        v13 = sub_1014470D4(*(v11 + 8));
        if (v13)
        {
          *buf = 0;
          *buf = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, v11 + 5);
          sub_100209DF4(*v20, v13, *buf);
          sub_100029A48(buf);
        }

        else
        {
          v14 = *(a1 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = asString();
            *buf = 136315138;
            *&buf[4] = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N CF key mapping not found for %s", buf, 0xCu);
          }
        }

        v16 = v11[1];
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
            v17 = v11[2];
            v18 = *v17 == v11;
            v11 = v17;
          }

          while (!v18);
        }

        v11 = v17;
      }

      while (v17 != v10);
    }

    sub_100010180(a4, v20);
    sub_1000296E0(v20);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v19 = subscriber::asString();
      sub_10176927C(v19, buf);
    }

    *a4 = 0;
  }

  if (v22)
  {
    sub_100004A34(v22);
  }
}

void sub_1002B0044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::setSupportedAndActiveBands(uint64_t a1, int a2, const void **a3, uint64_t a4)
{
  v6[4] = a1;
  v7 = a2;
  sub_100010024(&v8, a3);
  sub_100014110(&v9, a4);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_1002B01F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void BasebandSettings::setActiveBandsFromMask_sync(uint64_t a1, uint64_t a2, CFDictionaryRef *a3, uint64_t a4)
{
  if (*a3)
  {
    Value = CFDictionaryGetValue(*a3, kCTRegistrationBandActive);
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFDictionaryGetTypeID()))
    {
      Count = CFDictionaryGetCount(v8);
      if (Count)
      {
        v11 = Count;
        keys = 0uLL;
        v26 = 0;
        sub_10007D780(&keys, Count);
        values = 0uLL;
        v24 = 0;
        sub_10007D780(&values, v11);
        CFDictionaryGetKeysAndValues(v8, keys.n128_u64[0], values.n128_u64[0]);
        v29[0] = 0;
        v29[1] = 0;
        v28 = v29;
        if (v11 >= 1)
        {
          for (i = 0; i != v11; ++i)
          {
            v13 = *(keys.n128_u64[0] + 8 * i);
            if (v13)
            {
              v14 = CFGetTypeID(*(keys.n128_u64[0] + 8 * i));
              if (v14 != CFStringGetTypeID())
              {
                v13 = 0;
              }
            }

            v15 = *(values.n128_u64[0] + 8 * i);
            if (v15)
            {
              v16 = CFGetTypeID(*(values.n128_u64[0] + 8 * i));
              if (v16 == CFNumberGetTypeID())
              {
                valuePtr = 0;
                CFNumberGetValue(v15, kCFNumberLongLongType, &valuePtr);
                v17 = sub_101447100(v13);
                v21 = v17;
                if (v17 <= 0xA && (((1 << v17) & 0x2A5) != 0 || v17 == 10 && capabilities::ct::supports5G(v17)))
                {
                  v18 = valuePtr;
                  v27 = &v21;
                  sub_1002B167C(&v28, &v21)[5] = v18;
                }
              }
            }
          }
        }

        v19 = *(a1 + 128);
        sub_1002B0DA4(v20, &v28);
        (*(*v19 + 56))(v19, a2, v20);
        sub_10006DCAC(v20, v20[1]);
        sub_100022FB0(a4, 0);
        sub_10006DCAC(&v28, v29[0]);
        if (values.n128_u64[0])
        {
          values.n128_u64[1] = values.n128_u64[0];
          operator delete(values.n128_u64[0]);
        }

        if (keys.n128_u64[0])
        {
          keys.n128_u64[1] = keys.n128_u64[0];
          operator delete(keys.n128_u64[0]);
        }

        return;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        keys = 0uLL;
        v26 = 0;
        ctu::cf::assign();
        sub_1017692B4(&values, &keys);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      keys = 0uLL;
      v26 = 0;
      ctu::cf::assign();
      sub_101769304(&values, &keys);
    }

    sub_100022FB0(a4, 0x1600000001);
    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101769354();
  }

  sub_100022FB0(a4, 0x1600000001);
}

void sub_1002B0564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **BasebandSettings::setActiveBands(unint64_t a1, unsigned __int32 a2, CFDictionaryRef *a3, uint64_t a4)
{
  if (*a3)
  {
    Value = CFDictionaryGetValue(*a3, kCTRegistrationBandActive);
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFDictionaryGetTypeID()))
    {
      theDict = v8;
      CFRetain(v8);
      if (CFDictionaryGetCount(v8))
      {
        v13.n128_u64[0] = a1;
        v13.n128_u32[2] = a2;
        v14 = theDict;
        CFRetain(theDict);
        sub_100014110(&v15, a4);
        v11 = 0uLL;
        sub_100004AA0(&v11, (a1 + 8));
        operator new();
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        v13 = 0uLL;
        v14 = 0;
        ctu::cf::assign();
        sub_101769388(&v11, &v13);
      }
    }

    else
    {
      theDict = 0;
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        v13 = 0uLL;
        v14 = 0;
        ctu::cf::assign();
        sub_101769304(&v11, &v13);
      }
    }

    sub_100022FB0(a4, 0x1600000001);
    return sub_10001021C(&theDict);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101769354();
    }

    return sub_100022FB0(a4, 0x1600000001);
  }
}

void sub_1002B0880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  _Unwind_Resume(a1);
}

void BasebandSettings::getSupportedAndActiveBands(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100063614(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1002B0A24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void BasebandSettings::getBands_sync(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = 0;
  v31 = 0;
  BasebandSettings::getModel_sync(a1, a2, &v30);
  if (v30)
  {
    v7 = (*(*v30 + 32))(v30, a3);
    v29 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v9 = v29;
      v29 = Mutable;
      __p[0] = v9;
      sub_1000296E0(__p);
    }

    v12 = *v7;
    v10 = v7 + 1;
    v11 = v12;
    if (v12 != v10)
    {
      do
      {
        v13 = sub_1014470D4(*(v11 + 8));
        if (v13)
        {
          v28 = 0;
          v14 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (v14)
          {
            v15 = v28;
            v28 = v14;
            __p[0] = v15;
            sub_1000279DC(__p);
          }

          memset(__p, 0, sizeof(__p));
          convertMaskToBandsForRat();
          v16 = __p[1];
          for (i = __p[0]; i != v16; ++i)
          {
            v18 = *i;
            v27 = 0;
            v32 = 0;
            valuePtr = v18;
            v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
            if (v19)
            {
              v20 = v32;
              v32 = v19;
              valuePtr = v20;
              sub_100029A48(&valuePtr);
            }

            v27 = v32;
            v32 = 0;
            sub_100029A48(&v32);
            CFArrayAppendValue(v28, v27);
            sub_100029A48(&v27);
          }

          sub_1002B24E0(v29, v13, v28);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          sub_1000279DC(&v28);
        }

        else
        {
          v21 = *(a1 + 40);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = asString();
            LODWORD(__p[0]) = 136315138;
            *(__p + 4) = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N CF key mapping not found for %s", __p, 0xCu);
          }
        }

        v23 = v11[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v11[2];
            v25 = *v24 == v11;
            v11 = v24;
          }

          while (!v25);
        }

        v11 = v24;
      }

      while (v24 != v10);
    }

    sub_100010180(a4, &v29);
    sub_1000296E0(&v29);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v26 = subscriber::asString();
      sub_10176927C(v26, __p);
    }

    *a4 = 0;
  }

  if (v31)
  {
    sub_100004A34(v31);
  }
}

void sub_1002B0D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002B0DA4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002B0DFC(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1002B0DFC(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002B0E84(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1002B0E84(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_10002E2F4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1002B0F20(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v7 = 0;
  v8 = 0;
  BasebandSettings::getModel_sync(v2, *(v1 + 8), &v7);
  if (v7)
  {
    (*(*v7 + 40))(v7, 1, v1 + 16);
  }

  else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    v3 = subscriber::asString();
    sub_1017693D8(v3, v9);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_1002B1048(&v6);
  return sub_1000049E0(&v5);
}

uint64_t *sub_1002B1048(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10006DCAC(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return result;
}

uint64_t *sub_1002B109C(uint64_t *a1)
{
  v1 = *a1;
  v40 = a1;
  v41 = v1;
  v2 = *v1;
  v43 = 0;
  v44 = 0;
  BasebandSettings::getModel_sync(v2, *(v1 + 8), &v43);
  if (v43)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v3 = (*(*v43 + 32))(v43, 2);
    v4 = sub_1002B0DA4(&v48, v3);
    v7 = *(v1 + 24);
    v6 = (v1 + 24);
    v5 = v7;
    if (v7)
    {
      v8 = v6;
      v9 = v5;
      do
      {
        if (v9[8] >= 5)
        {
          v8 = v9;
        }

        v9 = *&v9[2 * (v9[8] < 5)];
      }

      while (v9);
      if (v8 != v6 && v8[8] <= 5)
      {
        v10 = *(v8 + 5);
        v42 = 5;
        *buf = &v42;
        v4 = sub_1002B167C(&v48, &v42);
        *(v4 + 5) = v10;
        v5 = *v6;
      }

      if (v5)
      {
        v11 = v6;
        v12 = v5;
        do
        {
          v13 = v12[8];
          if ((v13 & 0x80000000) == 0)
          {
            v11 = v12;
          }

          v12 = *(v12 + ((v13 >> 28) & 8));
        }

        while (v12);
        if (v11 == v6 || v11[8] > 0)
        {
          goto LABEL_17;
        }

        v29 = *(v2 + 40);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = asString();
          v31 = *(v11 + 5);
          *buf = 136315394;
          *&buf[4] = v30;
          v46 = 2048;
          v47 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Setting %s active bands 0x%016llx", buf, 0x16u);
        }

        v32 = *(v11 + 5);
        v42 = 0;
        *buf = &v42;
        v4 = sub_1002B167C(&v48, &v42);
        *(v4 + 5) = v32;
        v5 = *v6;
        if (*v6)
        {
LABEL_17:
          v14 = v6;
          v15 = v5;
          do
          {
            if (v15[8] >= 2)
            {
              v14 = v15;
            }

            v15 = *&v15[2 * (v15[8] < 2)];
          }

          while (v15);
          if (v14 != v6 && v14[8] <= 2)
          {
            v16 = *(v2 + 40);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = asString();
              v18 = *(v14 + 5);
              *buf = 136315394;
              *&buf[4] = v17;
              v46 = 2048;
              v47 = v18;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Setting %s active bands 0x%016llx", buf, 0x16u);
            }

            v19 = *(v14 + 5);
            v42 = 2;
            *buf = &v42;
            v4 = sub_1002B167C(&v48, &v42);
            *(v4 + 5) = v19;
            v5 = *v6;
          }

          if (v5)
          {
            v20 = v6;
            v21 = v5;
            do
            {
              if (v21[8] >= 7)
              {
                v20 = v21;
              }

              v21 = *&v21[2 * (v21[8] < 7)];
            }

            while (v21);
            if (v20 != v6 && v20[8] <= 7)
            {
              v22 = *(v2 + 40);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = asString();
                v24 = *(v20 + 5);
                *buf = 136315394;
                *&buf[4] = v23;
                v46 = 2048;
                v47 = v24;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Setting %s active bands 0x%016llx", buf, 0x16u);
              }

              v25 = *(v20 + 5);
              v42 = 7;
              *buf = &v42;
              v4 = sub_1002B167C(&v48, &v42);
              *(v4 + 5) = v25;
              v5 = *v6;
            }

            if (v5)
            {
              v26 = v6;
              do
              {
                if (v5[8] >= 9)
                {
                  v26 = v5;
                }

                v5 = *&v5[2 * (v5[8] < 9)];
              }

              while (v5);
              if (v26 != v6 && v26[8] <= 9)
              {
                v27 = *(v26 + 5);
                v42 = 9;
                *buf = &v42;
                v4 = sub_1002B167C(&v48, &v42);
                *(v4 + 5) = v27;
              }
            }
          }
        }
      }
    }

    if (capabilities::ct::supports5G(v4))
    {
      v33 = *v6;
      if (*v6)
      {
        v34 = v6;
        do
        {
          if (v33[8] >= 10)
          {
            v34 = v33;
          }

          v33 = *&v33[2 * (v33[8] < 10)];
        }

        while (v33);
        if (v34 != v6 && v34[8] <= 10)
        {
          v35 = *(v2 + 40);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = asString();
            v37 = *(v34 + 5);
            *buf = 136315394;
            *&buf[4] = v36;
            v46 = 2048;
            v47 = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Setting %s active bands 0x%016llx", buf, 0x16u);
          }

          v38 = *(v34 + 5);
          v42 = 10;
          *buf = &v42;
          sub_1002B167C(&v48, &v42)[5] = v38;
        }
      }
    }

    (*(*v43 + 40))(v43, 2, &v48);
    sub_10006DCAC(&v48, v49);
  }

  else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    v28 = subscriber::asString();
    sub_101769410(v28, &v48);
  }

  if (v44)
  {
    sub_100004A34(v44);
  }

  sub_1002B1048(&v41);
  return sub_1000049E0(&v40);
}

void sub_1002B1604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  sub_10006DCAC(v13 - 64, *(v13 - 56));
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_1002B1048(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B167C(uint64_t a1, int *a2)
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

uint64_t *sub_1002B1750(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v13 = 0;
  v14 = 0;
  BasebandSettings::getModel_sync(v2, *(v1 + 8), &v13);
  if (v13)
  {
    *v12 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      *v12 = Mutable;
      v15 = 0;
      sub_1000296E0(&v15);
    }

    v15 = 0;
    BasebandSettings::copyBands_sync(v2, *(v1 + 8), 1, &v15);
    v11 = 0;
    BasebandSettings::copyBands_sync(v2, *(v1 + 8), 2, &v11);
    if (v15)
    {
      sub_1002972A4(*v12, kCTRegistrationBandSupported, v15);
    }

    if (v11)
    {
      sub_1002972A4(*v12, kCTRegistrationBandActive, v11);
    }

    sub_100010180(&v10, v12);
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

    (*(*v4 + 48))(v4, &v10);
    sub_10001021C(&v10);
    sub_10001021C(&v11);
    sub_10001021C(&v15);
    sub_1000296E0(v12);
  }

  else
  {
    v5 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_101769448();
    }

    v15 = 0;
    v6 = *(v1 + 40);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, &v15);
    sub_10001021C(&v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_100064C94(&v9);
  return sub_1000049E0(&v8);
}

void sub_1002B1968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100064C94(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B19F4(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_100010024(&v7, (v1 + 16));
  sub_100014110(v8, v1 + 24);
  BasebandSettings::setActiveBandsFromMask_sync(v2, v3, &v7, v8);
  sub_100014380(v8);
  sub_10001021C(&v7);
  sub_1002B1ADC(&v6);
  return sub_1000049E0(&v5);
}

void sub_1002B1AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, char a12)
{
  sub_100014380(&a12);
  sub_10001021C(&a11);
  sub_1002B1ADC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B1ADC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100014380(v1 + 24);
    sub_10001021C((v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t *sub_1002B1B34(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x4002000000;
  v13 = sub_1002B1D24;
  v16[0] = 0;
  v16[1] = 0;
  v14 = sub_1002B1D60;
  v15 = v16;
  v3 = *(v1 + 16);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1002B1D6C;
  v9[3] = &unk_101E38628;
  v9[4] = &v10;
  v9[5] = v2;
  v17 = _NSConcreteStackBlock;
  v18 = 0x40000000;
  v19 = sub_1002B2178;
  v20 = &unk_101E38650;
  v21 = v9;
  context = &v17;
  CFDictionaryApplyFunction(v3, sub_1002B2220, &context);
  v4 = *(v2 + 128);
  v5 = *(v1 + 8);
  sub_1002B0DA4(&v17, (v11 + 5));
  (*(*v4 + 56))(v4, v5, &v17);
  sub_10006DCAC(&v17, v18);
  sub_100022FB0(v1 + 24, 0);
  _Block_object_dispose(&v10, 8);
  sub_10006DCAC(&v15, v16[0]);
  sub_1002B1ADC(&v8);
  return sub_1000049E0(&v7);
}

void sub_1002B1CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  sub_10006DCAC(v24 - 80, *(v24 - 72));
  _Block_object_dispose(&a17, 8);
  sub_10006DCAC(v23 + 40, a23);
  sub_1002B1ADC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1002B1D24(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void sub_1002B1D6C(uint64_t a1, uint64_t a2, const void **a3)
{
  v5 = *(a1 + 40);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v27 = *(a2 + 16);
  }

  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(v31, __dst[0], __dst[1]);
  }

  else
  {
    *v31 = *__dst;
    v32 = v27;
  }

  v30 = 0;
  if (SHIBYTE(v32) < 0)
  {
    sub_100005F2C(__p, v31[0], v31[1]);
  }

  else
  {
    *__p = *v31;
    v36 = v32;
  }

  v33 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v30;
    v30 = v33;
    v34 = v6;
    sub_100005978(&v34);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v30;
  v28 = v30;
  v30 = 0;
  sub_100005978(&v30);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  v8 = sub_101447100(v7);
  v9 = sub_100005978(&v28);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0]);
  }

  v29 = v8;
  if (v8 > 0xA || ((1 << v8) & 0x2A5) == 0 && (v8 != 10 || (capabilities::ct::supports5G(v9) & 1) == 0))
  {
    v21 = *(v5 + 40);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v24 = asString();
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v24;
    v23 = "#N RAT %s is not valid, skipping";
    goto LABEL_40;
  }

  v10 = *a3;
  if (!v10 || (v11 = CFGetTypeID(v10), v11 != CFArrayGetTypeID()))
  {
    v21 = *(v5 + 40);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v22 = asString();
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v22;
    v23 = "#N RAT %s value is not an array, skipping";
LABEL_40:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, __p, 0xCu);
    return;
  }

  Count = CFArrayGetCount(v10);
  if (Count >= 1)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
      if (ValueAtIndex)
      {
        LODWORD(v31[0]) = 0;
        if (ctu::cf::assign(v31, ValueAtIndex, v16))
        {
          v13 |= convertBandToMaskForRat();
        }

        else
        {
          v20 = *(v5 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__p[0]) = 134217984;
            *(__p + 4) = v14;
            v18 = v20;
            v19 = "#N Could not convert band at index %ld to an integer";
            goto LABEL_31;
          }
        }
      }

      else
      {
        v17 = *(v5 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p[0]) = 134217984;
          *(__p + 4) = v14;
          v18 = v17;
          v19 = "#N Could not convert band at index %ld to CFNumberRef";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, __p, 0xCu);
        }
      }

      if (Count == ++v14)
      {
        goto LABEL_42;
      }
    }
  }

  v13 = 0;
LABEL_42:
  v25 = *(*(a1 + 32) + 8);
  __p[0] = &v29;
  sub_1002B167C(v25 + 40, &v29)[5] = v13;
}

void sub_1002B210C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, const void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1002B2178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v8 = 0uLL;
  v9 = 0;
  ctu::cf::assign();
  v7 = 0;
  *__p = 0uLL;
  v5 = *(v4 + 16);
  *&v8 = a3;
  v5(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002B21F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1002B223C(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v13 = 0;
  v14 = 0;
  BasebandSettings::getModel_sync(v2, *(v1 + 8), &v13);
  if (v13)
  {
    *v12 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      *v12 = Mutable;
      v15 = 0;
      sub_1000296E0(&v15);
    }

    v15 = 0;
    BasebandSettings::getBands_sync(v2, *(v1 + 8), 1, &v15);
    v11 = 0;
    BasebandSettings::getBands_sync(v2, *(v1 + 8), 2, &v11);
    if (v15)
    {
      sub_1002972A4(*v12, kCTRegistrationBandSupported, v15);
    }

    if (v11)
    {
      sub_1002972A4(*v12, kCTRegistrationBandActive, v11);
    }

    sub_100010180(&v10, v12);
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

    (*(*v4 + 48))(v4, &v10);
    sub_10001021C(&v10);
    sub_10001021C(&v11);
    sub_10001021C(&v15);
    sub_1000296E0(v12);
  }

  else
  {
    v5 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_10176947C();
    }

    v15 = 0;
    v6 = *(v1 + 40);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, &v15);
    sub_10001021C(&v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_100064C94(&v9);
  return sub_1000049E0(&v8);
}

void sub_1002B2454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100064C94(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B24E0(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_1002B2560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100DA3324(&a9);
  sub_100DA3324(&a10);
  _Unwind_Resume(a1);
}

void sub_1002B2584(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0xCu);
}

const char *sub_1002B25C0(int a1)
{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kAlternate";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kDefault";
  }
}

BOOL *sub_1002B25EC(Registry **a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  cf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &cf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  cf = 0;
  (*(*v11 + 96))(&cf, v11, a2, 2, @"UseLTEAlternateBarMapping", kCFBooleanFalse, 0);
  v13 = cf;
  v17 = 0;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v17, v13, v15);
      v13 = v17;
    }

    else
    {
      v13 = 0;
    }
  }

  sub_10000A1EC(&cf);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  return v13;
}

void sub_1002B2760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

double *sub_1002B2790(int a1, double *a2)
{
  sub_100912600(a2, 15.0, 14.0);
  if (a1)
  {
    v4 = -95.0;
    v5 = -96.0;
  }

  else
  {
    v4 = -80.0;
    v5 = -81.0;
  }

  return sub_1009125F8(a2, v4, v5);
}

uint64_t sub_1002B2800(double *a1)
{
  sub_1009125F8(a1, -60.0, -61.0);

  return sub_100912600(a1, -7.0, -8.0);
}

uint64_t sub_1002B2850@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0u;
  v2 = (a2 + 40);
  *(a2 + 56) = 0u;
  *(a2 + 16) = xmmword_1017EA570;
  *(a2 + 72) = xmmword_1017EA5A0;
  *(a2 + 32) = 0x402C000000000000;
  *a2 = 0x402E000000000000;
  *(a2 + 88) = unk_1017EA5B0;
  if (result)
  {
    *v2 = xmmword_1017EA5E0;
    *(a2 + 56) = unk_1017EA5F0;
    v3 = 0xC058800000000000;
  }

  else
  {
    *v2 = xmmword_1017EA5C0;
    *(a2 + 56) = unk_1017EA5D0;
    v3 = 0xC054C00000000000;
  }

  *(a2 + 8) = v3;
  return result;
}

double sub_1002B28D0@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1017EA580;
  *(a1 + 16) = xmmword_1017EA590;
  *(a1 + 40) = xmmword_1017EA600;
  *(a1 + 56) = unk_1017EA610;
  result = -14.0;
  *(a1 + 72) = xmmword_1017EA620;
  *(a1 + 32) = 0xC008000000000000;
  *(a1 + 88) = unk_1017EA630;
  return result;
}

void PSControlSIM::PSControlSIM(void (***a1)(), uint64_t a2, void *a3)
{
  v3 = a3[1];
  v4[0] = *a3;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003486B0(a1, a2, v4, "ps.sim");
}

void sub_1002B2E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  v22 = *(v20 - 40);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(v20 - 64);
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  v24 = *(v19 + 1208);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v19 + 1192);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v19 + 1176);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v19 + 1160);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v19 + 1144);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v19 + 1128);
  if (v29)
  {
    sub_100004A34(v29);
  }

  sub_1002B7314(v19 + 1096, *(v19 + 1104));
  sub_1002B73A8(v19 + 1072, *(v19 + 1080));
  v30 = *(v19 + 1064);
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_100348C6C(v19);
  _Unwind_Resume(a1);
}

void PSControlSIM::~PSControlSIM(PSControlSIM *this)
{
  *this = off_101E386A8;
  v2 = *(this + 151);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 149);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 147);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 145);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 143);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 141);
  if (v7)
  {
    sub_100004A34(v7);
  }

  sub_1002B7314(this + 1096, *(this + 138));
  sub_1002B73A8(this + 1072, *(this + 135));
  v8 = *(this + 133);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_100348C6C(this);
}

{
  PSControlSIM::~PSControlSIM(this);

  operator delete();
}

void PSControlSIM::initialize(PSControlSIM *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(this + 10);
    if (v3)
    {
      v4 = PersonalityInfo::logPrefix(v3);
    }

    else
    {
      v4 = "-1";
    }

    v5 = asStringBool(*(this + 142) != 0);
    *buf = 136315650;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper support: %s", buf, 0x20u);
  }

  sub_1003492DC(this);
  sub_100004AA0(buf, this + 1);
  v7 = *buf;
  v6 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_100004AA0(v9, this + 1);
  v8 = *(this + 3);
  v9[2] = v8;
  v9[3] = this;
  v9[4] = v7;
  v9[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_retain(v8);
  memset(buf, 0, 32);
  v9[6] = v8;
  v9[7] = this;
  v9[8] = v7;
  v9[9] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_retain(v8);
    v10 = v8;
    v11 = this;
    v12 = v7;
    v13 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_retain(v8);
    v15 = v8;
    v17 = v7;
    v18 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_retain(v8);
    v21 = v7;
    v22 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_retain(v8);
    v25 = v7;
    v26 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    dispatch_retain(v8);
    v10 = v8;
    v11 = this;
    v12 = v7;
    v13 = 0;
    dispatch_retain(v8);
    v15 = v8;
    v17 = v7;
    v18 = 0;
    dispatch_retain(v8);
    v21 = v7;
    v22 = 0;
    dispatch_retain(v8);
    v25 = v7;
    v26 = 0;
  }

  v16 = this;
  v14 = 0;
  v19 = v8;
  v20 = this;
  v23 = v8;
  v24 = this;
  dispatch_retain(v8);
  v27 = v8;
  v28 = this;
  v29 = v7;
  v30 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_retain(v8);
    v33 = v7;
    v34 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    dispatch_retain(v8);
    v33 = v7;
    v34 = 0;
  }

  v31 = v8;
  v32 = this;
  dispatch_retain(v8);
  operator new();
}

void sub_1002B3708(_Unwind_Exception *a1)
{
  sub_1000062D4(v1 - 128);
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  _Unwind_Resume(a1);
}

void PSControlSIM::start(PSControlSIM *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(this + 10);
    if (v3)
    {
      v4 = PersonalityInfo::logPrefix(v3);
    }

    else
    {
      v4 = "-1";
    }

    *v19 = 136315394;
    *&v19[4] = v4;
    v20 = 2080;
    v21 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstarting", v19, 0x16u);
  }

  sub_10034A4A8(this);
  v5 = *(this + 12);
  if (v5 != (this + 104))
  {
    do
    {
      (*(**(v5 + 5) + 24))(*(v5 + 5));
      v6 = *(v5 + 1);
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
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != (this + 104));
  }

  (*(*this + 344))(this, 0, 0);
  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  *v19 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, v19);
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
      goto LABEL_21;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_21:
  (*(*v17 + 32))(v17);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_1002B3A5C(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void PSControlSIM::shutdown(PSControlSIM *this, group_session a2)
{
  v4 = *(this + 12);
  v5 = this + 104;
  if (v4 != this + 104)
  {
    do
    {
      (*(**(v4 + 5) + 32))(*(v4 + 5));
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  v9 = *a2.var0.fObj;
  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(v9);
  }

  sub_10034ADB0(this);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }
}

void sub_1002B3B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void PSControlSIM::msim_activated(PSControlSIM *this, int a2)
{
  v2 = *(this + 144);
  if (v2)
  {
    VoLteControl::handleMsimActivated(v2, a2);
  }
}

uint64_t PSControlSIM::personality_activated(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1002B3CCC((a1 + 80), a3);
  v5 = *(a1 + 96);
  if (v5 != (a1 + 104))
  {
    do
    {
      (*(*v5[5] + 112))(v5[5], a2);
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

    while (v7 != (a1 + 104));
  }

  v9 = *(*a1 + 344);

  return v9(a1, 0, 0);
}

void sub_1002B3CCC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }
}

uint64_t PSControlSIM::personality_cfg_updated(uint64_t a1, uint64_t *a2)
{
  sub_1002B3CCC((a1 + 80), a2);
  result = sub_10034B824(a1);
  v4 = *(a1 + 96);
  v5 = (a1 + 104);
  if (v4 != v5)
  {
    do
    {
      result = (*(*v4[5] + 136))(v4[5]);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  return result;
}

void PSControlSIM::personality_wallet_updated(uint64_t a1, uint64_t *a2)
{
  sub_1002B3CCC((a1 + 80), a2);
  v3 = *(a1 + 96);
  v4 = (a1 + 104);
  if (v3 != v4)
  {
    do
    {
      (*(*v3[5] + 144))(v3[5]);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }
}

uint64_t PSControlSIM::personality_gone(uint64_t this)
{
  v1 = *(this + 96);
  v2 = (this + 104);
  if (v1 != (this + 104))
  {
    do
    {
      this = (*(*v1[5] + 128))(v1[5]);
      v3 = v1[1];
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
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }

  return this;
}

uint64_t PSControlSIM::personality_detached(uint64_t this)
{
  v1 = *(this + 96);
  v2 = (this + 104);
  if (v1 != (this + 104))
  {
    do
    {
      this = (*(*v1[5] + 120))(v1[5]);
      v3 = v1[1];
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
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }

  return this;
}

const void **PSControlSIM::setEnabled_sync(uint64_t a1, int a2, uint64_t a3, const void **a4)
{
  v6 = *(a1 + 104);
  result = (a1 + 104);
  v5 = v6;
  if (v6)
  {
    v8 = result;
    do
    {
      if (*(v5 + 32) >= a2)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < a2));
    }

    while (v5);
    if (v8 != result && *(v8 + 8) <= a2)
    {
      v9 = v8[5];
      sub_100010024(&v10, a4);
      (*(*v9 + 64))(v9, a3, &v10);
      return sub_10001021C(&v10);
    }
  }

  return result;
}

void sub_1002B3FF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **PSControlSIM::isEnabled_sync@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a2)
  {
    v8 = *(**(v6 + 40) + 48);

    return v8();
  }

  else
  {
LABEL_8:
    v9 = 0;
    *a3 = 0;
    sub_100010180((a3 + 8), &v9);
    return sub_1000296E0(&v9);
  }
}

void sub_1002B40C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

void PSControlSIM::isAllowed_sync(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1[13];
  if (!v4)
  {
    goto LABEL_25;
  }

  v6 = a1 + 13;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == a1 + 13 || *(v6 + 8) > a2)
  {
    goto LABEL_25;
  }

  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((a2 - 2) >= 4 && a2)
  {
    if (a2 != 1)
    {
      goto LABEL_23;
    }

    v19 = 0;
    v20 = 0;
    v10 = a1[142];
    v11 = sub_10034E448(a1, 1);
    (*(*v10 + 208))(&v19, v10, v11);
    v17 = 0;
    v18 = 0;
    (*(*a1[142] + 200))(&v17);
    v12 = a1[140];
    if (v12)
    {
      (*(*v12 + 56))(&v15);
      v13 = BYTE2(v15);
      sub_10001021C(&v16);
      v14 = v19;
      if ((v19 & 1) == 0 || (v13 & 1) == 0 && v17 != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = v19;
      if ((v19 & 1) == 0)
      {
LABEL_21:
        sub_10001021C(&v18);
        goto LABEL_22;
      }
    }

    *a3 = v14;
    sub_100010024((a3 + 8), &v20);
    sub_10001021C(&v18);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v9 = sub_10034E448(a1, a2);
    (*(*v8 + 56))(&v19, v8, v9);
    if (v19 != 1)
    {
LABEL_22:
      sub_10001021C(&v20);
LABEL_23:
      if (v7)
      {
        sub_100004A34(v7);
      }

LABEL_25:
      v19 = 0;
      *a3 = 0;
      sub_100010180((a3 + 8), &v19);
      sub_1000296E0(&v19);
      return;
    }

    *a3 = v19;
    sub_100010024((a3 + 8), &v20);
  }

  sub_10001021C(&v20);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1002B4330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001021C(va);
  sub_10001021C((v5 + 8));
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t PSControlSIM::serviceRefresh(uint64_t this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 354) & 1) == 0)
  {
    v3 = *(this + 96);
    v4 = (this + 104);
    if (v3 != (this + 104))
    {
      do
      {
        this = (*(*v3[5] + 104))(v3[5], a2, a3);
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
            v9 = *v8 == v3;
            v3 = v8;
          }

          while (!v9);
        }

        v3 = v8;
      }

      while (v8 != v4);
    }
  }

  return this;
}

void PSControlSIM::resetEntitlementFailuresAndThrottling(uint64_t a1, uint64_t a2)
{
  sub_100348350(a1 + 360);
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v16 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  (**v12)(&v14, v12, **(a1 + 80) + 24);
  (*(*v14 + 384))(v14, a2);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1002B4598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSControlSIM::handleEntitlementUpdate(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  result = sub_10112CDBC(a2, (**(a1 + 80) + 24));
  if ((result & 1) == 0)
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = **(a1 + 80);
      if (v11)
      {
        v12 = PersonalityInfo::logPrefix(v11);
      }

      else
      {
        v12 = "-1";
      }

      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluate Entitlement Update ================================", buf, 0x16u);
    }

    v15 = *(a4 + 8);
    v14 = a4 + 8;
    v13 = v15;
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v14;
    v17 = v13;
    do
    {
      if (*(v17 + 28) >= 7)
      {
        v16 = v17;
      }

      v17 = *(v17 + 8 * (*(v17 + 28) < 7));
    }

    while (v17);
    if (v16 == v14 || *(v16 + 28) >= 8)
    {
LABEL_14:
      v16 = v14;
    }

    if (!v13)
    {
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v13;
    do
    {
      if (*(v19 + 28) >= 8)
      {
        v18 = v19;
      }

      v19 = *(v19 + 8 * (*(v19 + 28) < 8));
    }

    while (v19);
    if (v18 == v14 || *(v18 + 28) >= 9)
    {
LABEL_22:
      v18 = v14;
    }

    if (!v13)
    {
      goto LABEL_30;
    }

    v20 = v14;
    v21 = v13;
    do
    {
      if (*(v21 + 28) >= 6)
      {
        v20 = v21;
      }

      v21 = *(v21 + 8 * (*(v21 + 28) < 6));
    }

    while (v21);
    if (v20 == v14 || *(v20 + 28) >= 7)
    {
LABEL_30:
      v20 = v14;
    }

    if (!v13)
    {
      goto LABEL_38;
    }

    v22 = v14;
    v23 = v13;
    do
    {
      if (*(v23 + 28) >= 19)
      {
        v22 = v23;
      }

      v23 = *(v23 + 8 * (*(v23 + 28) < 19));
    }

    while (v23);
    if (v22 == v14 || *(v22 + 28) >= 20)
    {
LABEL_38:
      v22 = v14;
    }

    v26 = *(a5 + 8);
    v25 = a5 + 8;
    v24 = v26;
    if (!v26)
    {
      goto LABEL_46;
    }

    v27 = v25;
    v28 = v24;
    do
    {
      if (*(v28 + 32) >= 19)
      {
        v27 = v28;
      }

      v28 = *(v28 + 8 * (*(v28 + 32) < 19));
    }

    while (v28);
    if (v27 == v25 || *(v27 + 32) >= 20)
    {
LABEL_46:
      v27 = v25;
    }

    if (!v13)
    {
      goto LABEL_54;
    }

    v29 = v14;
    do
    {
      if (*(v13 + 28) >= 15)
      {
        v29 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 28) < 15));
    }

    while (v13);
    if (v29 == v14 || *(v29 + 28) >= 16)
    {
LABEL_54:
      v29 = v14;
    }

    if (!v24)
    {
      goto LABEL_62;
    }

    v30 = v25;
    do
    {
      if (*(v24 + 32) >= 15)
      {
        v30 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < 15));
    }

    while (v24);
    if (v30 == v25 || *(v30 + 32) >= 16)
    {
LABEL_62:
      v30 = v25;
    }

    v31 = *(a1 + 1120);
    if (v31)
    {
      if (v16 == v14)
      {
        v32 = 3;
      }

      else
      {
        v32 = *(v16 + 32);
      }

      sub_100206144(v31, v32);
    }

    v33 = *(a1 + 1136);
    if (v33)
    {
      if (v18 == v14)
      {
        v34 = 3;
      }

      else
      {
        v34 = *(v18 + 32);
      }

      sub_10020F184(v33, v34);
    }

    v35 = *(a1 + 1152);
    if (v35)
    {
      if (v20 == v14)
      {
        v36 = 3;
      }

      else
      {
        v36 = *(v20 + 32);
      }

      VoLteControl::handleEntitlementUpdate(v35, (*a3 >> 6) & 1, v36);
    }

    v37 = *(a1 + 1200);
    if (v37)
    {
      if (v22 == v14)
      {
        v38 = 3;
      }

      else
      {
        v38 = *(v22 + 32);
      }

      v39 = *a3;
      if (v27 == v25)
      {
        memset(buf, 0, 42);
        v45 = 0u;
        v46 = 0u;
      }

      else
      {
        memset(buf, 0, 24);
        sub_100172BAC(buf, *(v27 + 40), *(v27 + 48), (*(v27 + 48) - *(v27 + 40)) >> 6);
        v40 = *(v27 + 72);
        *&buf[24] = *(v27 + 64);
        *&buf[32] = v40;
        if (v40)
        {
          atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
        }

        *&buf[40] = *(v27 + 80);
        v41 = *(v27 + 96);
        *&v45 = *(v27 + 88);
        *(&v45 + 1) = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        v42 = *(v27 + 112);
        *&v46 = *(v27 + 104);
        *(&v46 + 1) = v42;
        if (v42)
        {
          atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
        }
      }

      sub_10012E73C(v37, (v39 >> 19) & 1, v38, buf);
      if (*(&v46 + 1))
      {
        sub_100004A34(*(&v46 + 1));
      }

      if (*(&v45 + 1))
      {
        sub_100004A34(*(&v45 + 1));
      }

      if (*&buf[32])
      {
        sub_100004A34(*&buf[32]);
      }

      v43 = buf;
      sub_10013DFEC(&v43);
    }

    result = *(a1 + 1168);
    if (result && v29 != v14 && v30 != v25)
    {
      return sub_10098376C(result, *(v29 + 32), (v30 + 40));
    }
  }

  return result;
}

void sub_1002B49FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002B7454(va);
  _Unwind_Resume(a1);
}

void PSControlSIM::handleSetEntitlementResponse(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = **(a1 + 80);
      if (v8)
      {
        v9 = PersonalityInfo::logPrefix(v8);
      }

      else
      {
        v9 = "-1";
      }

      *buf = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluate Set Entitlement Response ================================", buf, 0x16u);
    }

    v10 = *(a1 + 1120);
    if (v10)
    {
      v11 = *(a4 + 8);
      v15 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100206304(v10, a3);
      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    v12 = *(a1 + 1152);
    if (v12)
    {
      v13 = *(a4 + 8);
      v14 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      VoLteControl::handleSetEntitlementResponse(v12, a3);
      if (v14)
      {
        sub_100004A34(v14);
      }
    }
  }
}

void sub_1002B4B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSControlSIM::updateRegisteredLocationStatus_sync(PSControlSIM *this, int a2)
{
  v4 = (this + 144);
  if (*(this + 344) == 1)
  {
    v5 = *(this + 167);
    if (v5 >= 0)
    {
      v6 = *(this + 167);
    }

    else
    {
      v6 = *(this + 19);
    }

    v7 = *(this + 143);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(this + 16);
    }

    if (v6 != v7)
    {
LABEL_20:
      v13 = this + 353;
      v14 = *(this + 184) | a2;
      *v54 = 0;
      v55 = 0;
      v15 = *(this + 140);
      if (v15)
      {
        (*(*v15 + 56))(v54);
      }

      else
      {
        *v54 = 0;
        v54[2] = 0;
        v55 = 0;
        *buf = 0;
        sub_10001021C(buf);
      }

      v19 = v54[0];
      if (!v54[0] || !v54[2] && (!v54[1] || v14 == 0))
      {
        v20 = *(this + 5);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = **(this + 10);
          if (v21)
          {
            v22 = PersonalityInfo::logPrefix(v21);
            v19 = v54[0];
          }

          else
          {
            v22 = "-1";
          }

          v26 = asStringBool(v19);
          v27 = asStringBool(v54[1]);
          v28 = asStringBool(v54[2]);
          v29 = asStringBool(v14 != 0);
          *buf = 136316418;
          *&buf[4] = v22;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          *&buf[24] = v26;
          LOWORD(v60[0]) = 2080;
          *(v60 + 2) = v27;
          HIWORD(v60[2]) = 2080;
          *&v60[3] = v28;
          LOWORD(v60[5]) = 2080;
          *(&v60[5] + 2) = v29;
          v30 = "#I %s%sservice is not allowed - getPSAS ignored (show:%s, available:%s, allowed:%s, forced:%s)";
          v31 = v20;
          v32 = 62;
          goto LABEL_72;
        }

LABEL_73:
        v35 = 0;
LABEL_74:
        sub_10001021C(&v55);
        return v35;
      }

      if (sub_100347EC0(this + 360))
      {
        if (sub_10034AFC4(this))
        {
          v23 = *(this + 5);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_73;
          }

          v24 = **(this + 10);
          if (v24)
          {
            v25 = PersonalityInfo::logPrefix(v24);
          }

          else
          {
            v25 = "-1";
          }

          *buf = 136315394;
          *&buf[4] = v25;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v30 = "#I %s%sservice allowed without entitlement check - getPSAS bypassed";
        }

        else
        {
          v36 = *(this + 132);
          if (!v36)
          {
            goto LABEL_59;
          }

          v37 = *(v36 + 95);
          if (v37 < 0)
          {
            v37 = *(v36 + 80);
          }

          if (v37)
          {
            v38 = *(this + 143);
            if (v38 < 0)
            {
              v38 = *(this + 16);
            }

            if (v38)
            {
              if ((*(this + 344) & 1) == 0)
              {
                v69 = 0;
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                v61 = 0u;
                v62 = 0u;
                memset(v60, 0, sizeof(v60));
                memset(buf, 0, sizeof(buf));
                sub_1002B5320(v4, buf);
                sub_1002B74B0(buf);
              }

              std::string::operator=(v4, this + 5);
              std::string::operator=(this + 7, (*(this + 132) + 72));
              memset(v53, 0, sizeof(v53));
              std::string::operator=(v53, v4);
              std::string::operator=(&v53[1], this + 7);
              v39 = 384;
              if (!v14)
              {
                v39 = 0;
              }

              v52 = v39;
              memset(buf, 0, sizeof(buf));
              *&v62 = 0;
              v61 = 0u;
              memset(v60, 0, sizeof(v60));
              buf[3] = v14 != 0;
              buf[8] = 0;
              v40 = *(this + 5);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = **(this + 10);
                if (v41)
                {
                  v42 = PersonalityInfo::logPrefix(v41);
                }

                else
                {
                  v42 = "-1";
                }

                v48 = "*";
                *v56 = 136315650;
                *&v56[4] = v42;
                *&v56[12] = 2080;
                *&v56[14] = " ";
                if (v14)
                {
                  v48 = "paired with getEntitlements ";
                }

                v57 = 2080;
                v58 = v48;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Call Update Registered Location %s================================", v56, 0x20u);
              }

              ServiceMap = Registry::getServiceMap(*(this + 6));
              sub_1005A6380(ServiceMap, &v50);
              (**v50)(v56);
              (*(**v56 + 360))(*v56, 0, buf, v53, &v52);
              if (*&v56[8])
              {
                sub_100004A34(*&v56[8]);
              }

              if (v51)
              {
                sub_100004A34(v51);
              }

              v35 = 1;
              *v13 = 1;
              sub_100270CFC(buf);
              sub_1000D6F38(v53);
              goto LABEL_74;
            }

            v23 = *(this + 5);
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_73;
            }

            v45 = **(this + 10);
            if (v45)
            {
              v46 = PersonalityInfo::logPrefix(v45);
            }

            else
            {
              v46 = "-1";
            }

            *buf = 136315394;
            *&buf[4] = v46;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v30 = "#I %s%sdevice DisplayName required and is not ready yet - skip getPSAS";
          }

          else
          {
LABEL_59:
            v23 = *(this + 5);
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_73;
            }

            v43 = **(this + 10);
            if (v43)
            {
              v44 = PersonalityInfo::logPrefix(v43);
            }

            else
            {
              v44 = "-1";
            }

            *buf = 136315394;
            *&buf[4] = v44;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v30 = "#I %s%sIMPI is not ready yet - skip getPSAS";
          }
        }
      }

      else
      {
        v23 = *(this + 5);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_73;
        }

        v33 = **(this + 10);
        if (v33)
        {
          v34 = PersonalityInfo::logPrefix(v33);
        }

        else
        {
          v34 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v34;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v30 = "#I %s%sgetPSAS request blocked by throttle control";
      }

      v31 = v23;
      v32 = 22;
LABEL_72:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_73;
    }

    if (v5 >= 0)
    {
      v9 = this + 144;
    }

    else
    {
      v9 = *(this + 18);
    }

    if (v8 >= 0)
    {
      v10 = this + 120;
    }

    else
    {
      v10 = *(this + 15);
    }

    v11 = memcmp(v9, v10, v6) != 0;
  }

  else
  {
    v11 = 0;
  }

  if (*(this + 353) != 1 || v11)
  {
    goto LABEL_20;
  }

  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = **(this + 10);
    if (v17)
    {
      v18 = PersonalityInfo::logPrefix(v17);
    }

    else
    {
      v18 = "-1";
    }

    *buf = 136315394;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sgetPSAS call in progress - skip", buf, 0x16u);
  }

  return 1;
}

void sub_1002B5290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B5320(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 200) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
    sub_10016A270(a1 + 48, a2 + 3);
    sub_10016A270(a1 + 80, a2 + 5);
    v6 = a2[7];
    *(a1 + 125) = *(a2 + 125);
    *(a1 + 112) = v6;
    sub_10016A270(a1 + 136, (a2 + 136));
    sub_10016A270(a1 + 168, (a2 + 168));
  }

  else
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v8;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 0;
    *(a1 + 72) = 0;
    if (*(a2 + 72) == 1)
    {
      v9 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = v9;
      *(a2 + 7) = 0;
      *(a2 + 8) = 0;
      *(a2 + 6) = 0;
      *(a1 + 72) = 1;
    }

    *(a1 + 80) = 0;
    *(a1 + 104) = 0;
    if (*(a2 + 104) == 1)
    {
      v10 = a2[5];
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 80) = v10;
      *(a2 + 11) = 0;
      *(a2 + 12) = 0;
      *(a2 + 10) = 0;
      *(a1 + 104) = 1;
    }

    v11 = a2[7];
    v12 = *(a2 + 125);
    *(a1 + 136) = 0;
    *(a1 + 125) = v12;
    *(a1 + 112) = v11;
    *(a1 + 160) = 0;
    if (*(a2 + 160) == 1)
    {
      v13 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 19);
      *(a1 + 136) = v13;
      *(a2 + 18) = 0;
      *(a2 + 19) = 0;
      *(a2 + 17) = 0;
      *(a1 + 160) = 1;
    }

    *(a1 + 168) = 0;
    *(a1 + 192) = 0;
    if (*(a2 + 192) == 1)
    {
      v14 = *(a2 + 168);
      *(a1 + 184) = *(a2 + 23);
      *(a1 + 168) = v14;
      *(a2 + 22) = 0;
      *(a2 + 23) = 0;
      *(a2 + 21) = 0;
      *(a1 + 192) = 1;
    }

    *(a1 + 200) = 1;
  }

  return a1;
}

uint64_t PSControlSIM::handleIMSInfoAvailable(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(a1 + 80);
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(v5);
    }

    else
    {
      v6 = "-1";
    }

    if (*a2)
    {
      sub_100C1D90C(*a2, __p);
      if (v36 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315650;
      v38 = v6;
      v39 = 2080;
      v40 = " ";
      v41 = 2080;
      v42 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sIMSInfo: %s", buf, 0x20u);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136315650;
      v38 = v6;
      v39 = 2080;
      v40 = " ";
      v41 = 2080;
      v42 = "not available";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sIMSInfo: %s", buf, 0x20u);
    }
  }

  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_62;
  }

  v9 = *(a1 + 344);
  if (v9 == 1)
  {
    v10 = *(a1 + 191);
    if (v10 < 0)
    {
      if (!*(a1 + 176))
      {
        goto LABEL_31;
      }
    }

    else if (!*(a1 + 191))
    {
      goto LABEL_31;
    }

    if (v10 >= 0)
    {
      v11 = *(a1 + 191);
    }

    else
    {
      v11 = *(a1 + 176);
    }

    v12 = *(v8 + 95);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v8 + 80);
    }

    if (v11 != v12)
    {
      goto LABEL_49;
    }

    v14 = v10 >= 0 ? (a1 + 168) : *(a1 + 168);
    v15 = v13 >= 0 ? (v8 + 72) : *(v8 + 72);
    if (memcmp(v14, v15, v11))
    {
      goto LABEL_49;
    }
  }

LABEL_31:
  v16 = *(a1 + 1056);
  if (!v16)
  {
    goto LABEL_62;
  }

  v17 = *(v16 + 95);
  if (v17 < 0)
  {
    if (!*(v16 + 80))
    {
      goto LABEL_62;
    }
  }

  else if (!*(v16 + 95))
  {
    goto LABEL_62;
  }

  if (v17 >= 0)
  {
    v18 = *(v16 + 95);
  }

  else
  {
    v18 = *(v16 + 80);
  }

  v19 = *(v8 + 95);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v8 + 80);
  }

  if (v18 != v19 || ((v23 = *(v16 + 72), v21 = (v16 + 72), v22 = v23, v17 >= 0) ? (v24 = v21) : (v24 = v22), v20 >= 0 ? (v25 = (v8 + 72)) : (v25 = *(v8 + 72)), memcmp(v24, v25, v18)))
  {
LABEL_49:
    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
LABEL_61:
      (*(*a1 + 312))(a1);
      sub_10034B824(a1);
      v8 = *a2;
      goto LABEL_62;
    }

    v27 = **(a1 + 80);
    if (v27)
    {
      v28 = PersonalityInfo::logPrefix(v27);
      if (*(a1 + 344))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v28 = "-1";
      if (v9)
      {
LABEL_52:
        v29 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v29 = *v29;
        }

        goto LABEL_56;
      }
    }

    v29 = "not present";
LABEL_56:
    v30 = *(a1 + 1056);
    if (v30)
    {
      v31 = (v30 + 72);
      if (*(v30 + 95) < 0)
      {
        v31 = *v31;
      }
    }

    else
    {
      v31 = "not present";
    }

    *buf = 136315906;
    v38 = v28;
    v39 = 2080;
    v40 = " ";
    v41 = 2080;
    v42 = v29;
    v43 = 2080;
    v44 = v31;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sIMPI changed, prev: fAddr911Status->fSipUserName = '%s', fIMSSIMInfo->impi = '%s'", buf, 0x2Au);
    goto LABEL_61;
  }

LABEL_62:
  v32 = a2[1];
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1056) = v8;
  v33 = *(a1 + 1064);
  *(a1 + 1064) = v32;
  if (v33)
  {
    sub_100004A34(v33);
  }

  return (*(*a1 + 344))(a1, 0, 0);
}

uint64_t PSControlSIM::handleMigration(uint64_t this, uint64_t a2, uint64_t a3)
{
  v5 = this;
  if (a2)
  {
    this = (*(*this + 312))(this);
  }

  v6 = *(v5 + 96);
  v7 = (v5 + 104);
  if (v6 != v7)
  {
    do
    {
      this = (*(*v6[5] + 152))(v6[5], a2, a3);
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

    while (v9 != v7);
  }

  return this;
}

void PSControlSIM::handleCTFollowUpComplete_sync(PSControlSIM *this, const __CFDictionary *a2)
{
  v2 = *(this + 140);
  if (v2)
  {
    sub_100208760(v2, a2);
  }
}

void PSControlSIM::handleDumpState(PSControlSIM *this)
{
  sub_10034E7A4(this);
  memset(&__p, 0, sizeof(__p));
  if (*(this + 132))
  {
    std::operator+<char>();
    v2 = std::string::append(&v32, " domain:", 8uLL);
    v3 = *&v2->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = v3;
    v2->__r_.__value_.__l.__size_ = 0;
    v2->__r_.__value_.__r.__words[2] = 0;
    v2->__r_.__value_.__r.__words[0] = 0;
    v4 = *(this + 132);
    v7 = *(v4 + 144);
    v5 = v4 + 144;
    v6 = v7;
    v8 = *(v5 + 23);
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 8);
    }

    v11 = std::string::append(&__dst, v9, v10);
    v12 = v11->__r_.__value_.__r.__words[0];
    v36[0] = v11->__r_.__value_.__l.__size_;
    *(v36 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v12;
    __p.__r_.__value_.__l.__size_ = v36[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v36 + 7);
    *(&__p.__r_.__value_.__s + 23) = v13;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (*(*(this + 132) + 128) != *(*(this + 132) + 120))
    {
      std::string::append(&__p, " impu:", 6uLL);
      v14 = *(this + 132);
      v15 = *(v14 + 120);
      for (i = *(v14 + 128); v15 != i; v15 = (v15 + 24))
      {
        memset(&__dst, 0, sizeof(__dst));
        if (*(v15 + 23) < 0)
        {
          sub_100005F2C(&__dst, *v15, *(v15 + 1));
        }

        else
        {
          v17 = *v15;
          __dst.__r_.__value_.__r.__words[2] = *(v15 + 2);
          *&__dst.__r_.__value_.__l.__data_ = v17;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        memset(&v32, 0, sizeof(v32));
        sub_1000677C4(&v32, size + 1);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v32;
        }

        else
        {
          v19 = v32.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          memmove(v19, p_dst, size);
        }

        *(&v19->__r_.__value_.__l.__data_ + size) = 32;
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v32;
        }

        else
        {
          v21 = v32.__r_.__value_.__r.__words[0];
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v32.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v21, v22);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v23 = *(this + 5);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = **(this + 10);
    if (v24)
    {
      v25 = PersonalityInfo::logPrefix(v24);
    }

    else
    {
      v25 = "-1";
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315650;
    *(__dst.__r_.__value_.__r.__words + 4) = v25;
    WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
    *(&__dst.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(__dst.__r_.__value_.__r.__words[2]) = 2080;
    v35 = p_p;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s| fIMSSIMInfo: {%s}", &__dst, 0x20u);
  }

  v27 = *(this + 12);
  v28 = this + 104;
  if (v27 != v28)
  {
    do
    {
      (*(**(v27 + 5) + 40))(*(v27 + 5));
      v29 = *(v27 + 1);
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = *(v27 + 2);
          v31 = *v30 == v27;
          v27 = v30;
        }

        while (!v31);
      }

      v27 = v30;
    }

    while (v30 != v28);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1002B5D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSControlSIM::checkOnDemandProvisioningIfNeeded(uint64_t a1, int a2)
{
  v4 = *(a1 + 104);
  v2 = a1 + 104;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    return (*(**(v5 + 40) + 168))();
  }

  else
  {
    return 0;
  }
}

BOOL PSControlSIM::updateVoWiFiProvisioningState(uint64_t a1, signed int a2, int a3, char *a4)
{
  v36 = a2;
  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = a1 + 104;
    do
    {
      if (*(v8 + 32) >= a2)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 32) < a2));
    }

    while (v8);
    if (v9 != a1 + 104 && *(v9 + 32) <= a2)
    {
      v10 = (*(**(v9 + 40) + 88))(*(v9 + 40));
      std::mutex::lock((a1 + 648));
      *buf = &v36;
      v11 = sub_1002BBF6C(a1 + 712, &v36);
      *(v11 + 8) = v10;
      *(v11 + 36) = BYTE4(v10);
      std::mutex::unlock((a1 + 648));
    }
  }

  memset(__p, 0, sizeof(__p));
  v35 = 0;
  std::mutex::lock((a1 + 448));
  LODWORD(__p[0]) = *(a1 + 536);
  BYTE4(__p[0]) = *(a1 + 540);
  sub_10012BF3C(&__p[1], (a1 + 544));
  std::mutex::unlock((a1 + 448));
  if (!v36)
  {
    BYTE4(__p[0]) = sub_100207364(*(a1 + 1120));
    LODWORD(__p[0]) = a3;
    v12 = *(a1 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v13 = **(a1 + 80);
    if (v13)
    {
      v14 = PersonalityInfo::logPrefix(v13);
    }

    else
    {
      v14 = "-1";
    }

    v21 = asString();
    v22 = asStringBool(SBYTE4(__p[0]));
    *buf = 136315906;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v38 = v21;
    v39 = 2080;
    v40 = v22;
    v18 = "#I %s%sVoWiFi configuration is: %s (preferred in roaming: %s)";
    v19 = v12;
    v20 = 42;
    goto LABEL_33;
  }

  if (v36 == 1)
  {
    if (a3)
    {
      if (a4[23] < 0)
      {
        sub_100005F2C(buf, *a4, *(a4 + 1));
      }

      else
      {
        *buf = *a4;
        *&buf[16] = *(a4 + 2);
      }
    }

    else
    {
      sub_10000501C(buf, "");
    }

    if (v35 == 1)
    {
      if (SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      *&__p[1] = *buf;
      __p[3] = *&buf[16];
    }

    else
    {
      *&__p[1] = *buf;
      __p[3] = *&buf[16];
      LOBYTE(v35) = 1;
    }

    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = **(a1 + 80);
      if (v16)
      {
        v17 = PersonalityInfo::logPrefix(v16);
      }

      else
      {
        v17 = "-1";
      }

      if (a4[23] < 0)
      {
        a4 = *a4;
      }

      *buf = 136315650;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v38 = a4;
      v18 = "#I %s%sThumperAccountId is set to %s";
      v19 = v15;
      v20 = 32;
LABEL_33:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }
  }

LABEL_34:
  if (a2 <= 1)
  {
    std::mutex::lock((a1 + 448));
    *(a1 + 536) = __p[0];
    *(a1 + 540) = BYTE4(__p[0]);
    sub_10012BF3C((a1 + 544), &__p[1]);
    std::mutex::unlock((a1 + 448));
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v24 = ServiceMap;
  if (v25 < 0)
  {
    v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
    v27 = 5381;
    do
    {
      v25 = v27;
      v28 = *v26++;
      v27 = (33 * v27) ^ v28;
    }

    while (v28);
  }

  std::mutex::lock(ServiceMap);
  *buf = v25;
  v29 = sub_100009510(&v24[1].__m_.__sig, buf);
  if (v29)
  {
    v31 = v29[3];
    v30 = v29[4];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v24);
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
      v32 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v24);
  v30 = 0;
  v32 = 1;
LABEL_44:
  (*(*v31 + 32))(v31);
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  if (v35 == 1 && SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  return a2 < 2;
}

void sub_1002B62B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSControlSIM::submitSwitchMetric_sync(uint64_t a1, int a2)
{
  v4 = *(a1 + 104);
  result = a1 + 104;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2)
    {
      return (*(**(v5 + 40) + 176))();
    }
  }

  return result;
}

uint64_t PSControlSIM::submitAllAnalyticsSwitchMetric_sync(uint64_t this)
{
  v1 = *(this + 96);
  v2 = (this + 104);
  if (v1 != (this + 104))
  {
    do
    {
      this = (*(*v1[5] + 184))(v1[5]);
      v3 = v1[1];
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
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }

  return this;
}

void PSControlSIM::updatePSDeviceList(PSControlSIM *this, int a2)
{
  v2 = *(this + 142);
  if (v2)
  {
    sub_100215448(v2, a2);
  }
}

uint64_t PSControlSIM::canSwitchOnCurrentOperator_EXTERNAL(uint64_t a1, int a2)
{
  if (a2 == 2 && (v2 = *(a1 + 1152)) != 0)
  {
    return VoLteControl::canSwitchVoltePreferenceOnCurrentOperator(v2);
  }

  else
  {
    return 1;
  }
}

const void **PSControlSIM::addDevice_sync(PSControlSIM *this, const __CFString *a2)
{
  v4 = *(this + 5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = **(this + 10);
    v7 = v6 ? PersonalityInfo::logPrefix(v6) : "-1";
    ctu::cf::assign();
    *__p = 0u;
    v13 = 0;
    buf = 136315650;
    buf_4 = v7;
    buf_12 = 2080;
    buf_14 = " ";
    v18 = 2080;
    v19 = __p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%saddDevice %s", &buf, 0x20u);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (capabilities::ct::supportsGemini(v5))
  {
    theString1 = 0;
    v8 = *(this + 98);
    v9 = *(this + 99);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100308DC0(v8);
    if (v9)
    {
      sub_100004A34(v9);
    }

    sub_100005978(&theString1);
  }

  result = *(this + 142);
  if (result)
  {
    return sub_10021C1BC(result, 0, a2);
  }

  return result;
}

void sub_1002B6728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

const void **PSControlSIM::removeDevice_sync(PSControlSIM *this, const __CFString *a2)
{
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(this + 10);
    v6 = v5 ? PersonalityInfo::logPrefix(v5) : "-1";
    ctu::cf::assign();
    *__p = 0u;
    v9 = 0;
    buf = 136315650;
    buf_4 = v6;
    buf_12 = 2080;
    buf_14 = " ";
    v14 = 2080;
    v15 = __p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sremoveDevice %s", &buf, 0x20u);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = *(this + 142);
  if (result)
  {
    return sub_10021F9CC(result, 0, a2);
  }

  return result;
}

void sub_1002B68E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **PSControlSIM::getFullAccountDetails@<X0>(const void **result@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  if (a2 == 1)
  {
    result = result[142];
    if (result)
    {
      (*(*result + 19))(&v4);
      if (&v4 != a3)
      {
        *a3 = v4;
        v4 = 0;
        v5 = 0;
        sub_10001021C(&v5);
      }

      return sub_10001021C(&v4);
    }
  }

  return result;
}

void PSControlSIM::getIMSConfigValue(Registry **this, const __CFString *a2, const void *a3)
{
  v18[0] = @"IMSConfig";
  v18[1] = a2;
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_10005B328(&__p, v18, &v19, 2uLL);
  ServiceMap = Registry::getServiceMap(this[6]);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v18[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v18);
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
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 104))(v13, *(*this[10] + 52), 1, &__p, a3, 0);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_1002B6B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSControlSIM::isWiFiLocationRequired(PSControlSIM *this)
{
  result = *(this + 140);
  if (result)
  {
    return sub_100208314(result);
  }

  return result;
}

uint64_t PSControlSIM::canDialNumber(uint64_t a1, void **a2)
{
  if (*(a1 + 1120))
  {

    return sub_10034FCB4(a1, a2);
  }

  else
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = **(a1 + 80);
      if (v5)
      {
        v6 = PersonalityInfo::logPrefix(v5);
      }

      else
      {
        v6 = "-1";
      }

      v7 = 136315394;
      v8 = v6;
      v9 = 2080;
      v10 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sWarning: fWiFiCalling is not valid. Default canDialNumber to true", &v7, 0x16u);
    }

    return 1;
  }
}

void PSControlSIM::networkSlicingDiscovered_sync(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = 0;
  v10 = 0;
  sub_10034F010(a1, 4, &v9);
  v7 = v9;
  if (v9)
  {
    v8 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1006FED4C(v7, a2, a3, a4);
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1002B6D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

void sub_1002B6D64(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  sub_100004AA0(&v8, (a1 + 8));
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_100010024(&v7, a4);
  sub_1002B7564((a1 + 8));
}

void sub_1002B6E30(uint64_t a1)
{
  sub_100004AA0(&v3, (a1 + 8));
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  sub_1002B791C((a1 + 8));
}

void sub_1002B6ED0(uint64_t a1)
{
  sub_100004AA0(&v3, (a1 + 8));
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  sub_1002B7B98((a1 + 8));
}

void sub_1002B6F54(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
    CFRetain(cf);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1002B708C(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_100004AA0(&v6, (a1 + 8));
  v4 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
    v2 = cf;
  }

  if (v2)
  {
    CFRetain(v2);
  }

  sub_1002B7EA0((a1 + 8));
}

void sub_1002B713C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_1002B7150(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_100004AA0(&v6, (a1 + 8));
  v4 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
    v2 = cf;
  }

  if (v2)
  {
    CFRetain(v2);
  }

  sub_1002B80B4((a1 + 8));
}

void sub_1002B7200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_1002B7214(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1002B7220(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  sub_1002B84C8(v9, a3);
  v7 = a4[1];
  v9[3] = *a4;
  v9[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002B826C((a1 + 8));
}

void sub_1002B72E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B7314(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1002B7314(a1, *a2);
    sub_1002B7314(a1, *(a2 + 1));
    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1002B73A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002B73A8(a1, *a2);
    sub_1002B73A8(a1, a2[1]);
    sub_1002B7404((a2 + 4));

    operator delete(a2);
  }
}

void sub_1002B7404(uint64_t a1)
{
  sub_1003E9A5C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1002B7454(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v6 = a1;
  sub_10013DFEC(&v6);
  return a1;
}

uint64_t sub_1002B74B0(uint64_t a1)
{
  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002B7564(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1002B765C(const void ***a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1002B76D4(v3);
  sub_1002B7868(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1002B76AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1002B7868(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1002B76D4(const void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(a1 + 6);
        v7 = *(a1 + 28);
        sub_100010024(&v11, a1 + 4);
        LODWORD(v6) = (*(*v3 + 368))(v3, v6, v7, &v11);
        sub_10001021C(&v11);
        if (v6)
        {
          (*(*v3 + 304))(v3, 0);
          v8 = *(a1 + 6);
          v9 = *(a1 + 28);
          sub_100010024(&v10, a1 + 4);
          (*(*v3 + 376))(v3, v8, v9, &v10);
          sub_10001021C(&v10);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1002B7838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10001021C(&a9);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B7868(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10001021C((v1 + 32));
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1002B78C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }
}

void sub_1002B791C(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1002B7A00(uint64_t *a1)
{
  sub_1002B7A60(a1);
  v2 = 0;
  if (a1)
  {
    sub_1002B78C4(&v2, a1);
  }
}

void sub_1002B7A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1002B78C4(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B7A60(uint64_t *a1)
{
  v1 = *a1;
  v6 = v1;
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *v1;
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  if (!*(v1 + 8))
  {
    sub_100004A34(v4);
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  (*(*v3 + 392))(v3, *(v1 + 24));
  v1 = v6;
  sub_100004A34(v5);
  v6 = 0;
  if (v1)
  {
LABEL_8:
    sub_1002B7B40(&v6, v1);
  }
}

void sub_1002B7B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  v12 = a10;
  a10 = 0;
  if (v12)
  {
    sub_1002B7B40(&a10, v12);
  }

  _Unwind_Resume(a1);
}

void sub_1002B7B40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }
}

void sub_1002B7B98(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1002B7CAC(uint64_t a1, uint64_t *a2)
{
  v8 = a2;
  v2 = *a2;
  v3 = *(*a2 + 16);
  if (v3)
  {
    v4 = *v2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(v2 + 8))
      {
        (*(*v4 + 304))(v4, 0);
        sub_10034CA3C(v4, *(v2 + 24), *(v2 + 28));
      }

      sub_100004A34(v6);
    }
  }

  v9 = 0;
  sub_1002B7DA8(&v9, v2);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
    sub_1002B78C4(&v8, v7);
  }
}

void sub_1002B7D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v11);
  a10 = 0;
  sub_1002B7DA8(&a10, v10);
  v13 = a9;
  a9 = 0;
  if (v13)
  {
    sub_1002B78C4(&a9, v13);
  }

  _Unwind_Resume(a1);
}

void sub_1002B7DA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }
}

void sub_1002B7E00(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(**v1 + 328))(*v1, v1[1]);
  sub_10004B740(&v4);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    sub_1002B78C4(&v3, v2);
  }
}

void sub_1002B7E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B740(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1002B7EA0(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1002B7F80(void *a1)
{
  v2 = *a1;
  v8 = v2;
  v3 = v2[2];
  if (v3)
  {
    v4 = *v2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (v2[1])
      {
        (*(*v4 + 416))(v4, v2[3]);
      }

      sub_100004A34(v6);
    }
  }

  sub_1002B8058(&v8);
  v7 = 0;
  sub_1002B78C4(&v7, a1);
}

void sub_1002B802C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v11);
  sub_1002B8058(&a10);
  a9 = 0;
  sub_1002B78C4(&a9, v10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B8058(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100005978((v1 + 24));
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1002B80B4(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1002B8194(void *a1)
{
  v2 = *a1;
  v8 = v2;
  v3 = v2[2];
  if (v3)
  {
    v4 = *v2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (v2[1])
      {
        (*(*v4 + 424))(v4, v2[3]);
      }

      sub_100004A34(v6);
    }
  }

  sub_1002B8058(&v8);
  v7 = 0;
  sub_1002B78C4(&v7, a1);
}

void sub_1002B8240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v11);
  sub_1002B8058(&a10);
  a9 = 0;
  sub_1002B78C4(&a9, v10);
  _Unwind_Resume(a1);
}

void sub_1002B826C(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1002B8388(void *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  sub_10004F058(a1);
}

void sub_1002B83AC(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(**v1 + 336))(*v1, v1 + 1, v1 + 4, v1 + 7);
  sub_1002B8458(&v4);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    sub_1002B78C4(&v3, v2);
  }
}

void sub_1002B8430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1002B8458(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1002B8458(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 64);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_10006DCAC(v1 + 32, *(v1 + 40));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void *sub_1002B84C8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002B8520(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1002B8520(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002B85A8(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1002B85A8(void *a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_10010CB50(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_1002B86C4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1002B8798);
  __cxa_rethrow();
}

void sub_1002B8704(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002B8758(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002B8798(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_1002B87C4(uint64_t a1, int *a2)
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

void sub_1002B88A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1002B8A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002B8A80(uint64_t a1)
{
  sub_1002BAA18((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_1002B8AC0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002B8B04(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_1002B8BFC(a1, v3);
}

void sub_1002B8BCC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B8BFC(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_1002B8CF8(a1, a2);
}

void sub_1002B8CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B8D90(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1002B8DD4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_1002B8E18(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1002B90F8(a1, a2, 1, 2);
}

void sub_1002B8F3C(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1002B9190(&v2, a2);
}

uint64_t sub_1002B8F9C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1002B8FE0(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1002B8D90(a1);
  result = sub_1002BA07C(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1002B8DD4(v10 + 2);
        sub_1002B97C0(v15, a2);
        v10 = v22;
      }

      if (*(sub_1002B8DD4(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1002B8D90(a1);
        v18 = sub_1002BA07C(v17);
        v19 = sub_1002B8DD4(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_1002B8D90(a1);
      result = sub_1002BA07C(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

atomic_uint **sub_1002B90F8(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_1002B8D90(a1);
  v10 = sub_1002BA07C(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1002B8D90(a1);
    v11 = *(sub_1002BA07C(v12) + 8);
  }

  v14 = v11;
  return sub_1002B8FE0(a1, a2, a3, &v14, a4);
}

void sub_1002B9190(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002B91FC(&v2);
}

void sub_1002B926C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1002B92AC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1002B93C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002B9550(a1, a2);
  sub_1002B95BC((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_1002B9550(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_1002B95BC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1002B9624(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002B9690(&v2);
}

void sub_1002B9700(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1002B9740(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_1002B97C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1002B982C(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1002B982C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002B9870(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E389D8;
  operator new();
}

void sub_1002B9980(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_1002B99E8(uint64_t a1)
{
  sub_1002B9D94(a1);

  operator delete();
}

uint64_t sub_1002B9A20(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1002B9E0C(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1002B9ACC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B9AFC(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_1002B9B28(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_1002B9B54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_1002B9BAC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002B9C18(&v2);
}

void sub_1002B9C88(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1002B9CB0(v1);
  __cxa_rethrow();
}

uint64_t sub_1002B9CB0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1002BAA18((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1002B9D24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1002BAA18((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1002B9D94(uint64_t a1)
{
  *a1 = off_101E389D8;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1002B9E0C(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1002B982C(result + 4); ; i += 6)
    {
      result = sub_1002B982C(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_1002B9EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1002B9F14(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002B9F80(&v2);
}

void sub_1002B9FF0(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1002BA034(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1002BA07C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_1002BA0C0(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_1002BA960(v4, result);
    sub_1002BA960(v3, a2);
    sub_1002BA960(a2, v4);
    return sub_1002BAA18(v4);
  }

  return result;
}

uint64_t sub_1002BA13C(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN12PSControlSIM10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN12PSControlSIM10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1002BA238(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  v7 = *a4;
  v6 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v9;
    v18 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    v17 = v5[2];
    v18 = 0;
  }

  v15 = off_101E38B20;
  v16 = v8;
  v13 = v7;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002BA3D4();
}

void sub_1002BA38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_1002BAA18(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002BA59C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = **(a1 + 48);
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002BA6B0(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    sub_1002BAA18(v7);
    operator delete();
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = *(a1 + 48);
  if (result)
  {
    operator delete();
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_1002BA698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002BA6B0(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1002BA744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002BA76C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN12PSControlSIM10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN12PSControlSIM10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1002BA850(uint64_t *a1, void *a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        PSControlSIM::handleSetEntitlementResponse(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_1002BA930(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BA960(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1002BA9F4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_1002BAA18(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void *sub_1002BAA68(void *a1)
{
  *a1 = off_101E38B50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002BAAB4(void *a1)
{
  *a1 = off_101E38B50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1002BAB20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_1002BABD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002BAC74(void *a1)
{
  *a1 = off_101E38BA0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1002BACC0(void *a1)
{
  *a1 = off_101E38BA0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void *sub_1002BAD98(void *a1)
{
  *a1 = off_101E38BE0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002BADE4(void *a1)
{
  *a1 = off_101E38BE0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1002BAEC4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E38BE0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002BAF04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1002BAF14(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1002BAF54(uint64_t *a1, xpc_object_t *a2)
{
  sub_1003F14D8(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        v7 = sub_100007A6C(v4 + 1072, (**(v4 + 80) + 24));
        if (v4 + 1080 != v7)
        {
          v8[2] = 0;
          v9 = 0;
          if ((*(v7 + 151) & 0x8000000000000000) != 0)
          {
            if (*(v7 + 136))
            {
LABEL_7:
              operator new();
            }
          }

          else if (*(v7 + 151))
          {
            goto LABEL_7;
          }

          v8[0] = 0;
          v8[1] = 0;
          PSControlSIM::handleIMSInfoAvailable(v4, v8);
          if (v9)
          {
            sub_100004A34(v9);
          }
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1002BB0CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BB118(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1002BB1B4();
  }

  return v2;
}

uint64_t sub_1002BB22C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1002B7404(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_1002BB278(char *__dst, __int128 *a2)
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
  *(__dst + 5) = *(a2 + 5);
  *(__dst + 24) = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v6 = a2[3];
  *(__dst + 8) = *(a2 + 8);
  *(__dst + 3) = v6;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v7 = *(a2 + 72);
  *(__dst + 11) = *(a2 + 11);
  *(__dst + 72) = v7;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 9) = 0;
  v8 = a2[6];
  *(__dst + 14) = *(a2 + 14);
  *(__dst + 6) = v8;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v9 = *(a2 + 120);
  *(__dst + 17) = *(a2 + 17);
  *(__dst + 120) = v9;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(__dst + 18) = 0;
  *(__dst + 19) = 0;
  *(__dst + 20) = 0;
  *(__dst + 9) = a2[9];
  *(__dst + 20) = *(a2 + 20);
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v10 = *(a2 + 168);
  *(__dst + 23) = *(a2 + 23);
  *(__dst + 168) = v10;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 21) = 0;
  *(__dst + 24) = 0;
  *(__dst + 25) = 0;
  *(__dst + 26) = 0;
  *(__dst + 12) = a2[12];
  *(__dst + 26) = *(a2 + 26);
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(__dst + 54) = *(a2 + 54);
  return __dst;
}

uint64_t sub_1002BB3A0(uint64_t a1)
{
  sub_1003E9A5C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002BB424(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1002BB4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002BB4B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002BB4B8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1003E9A5C(v2);
    operator delete();
  }

  return a1;
}

void sub_1002BB504(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002BB53C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1003E9A5C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1002BB580(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1002BB5C0(void *a1)
{
  *a1 = off_101E38CD8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002BB60C(void *a1)
{
  *a1 = off_101E38CD8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1002BB6EC(uint64_t result, uint64_t a2)
{
  *a2 = off_101E38CD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002BB72C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1002BB73C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1002BB77C(uint64_t *a1, xpc_object_t *a2)
{
  sub_1002BB888(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        if (*(v4 + 1136))
        {
          v7 = sub_100007A6C(v4 + 1096, (**(v4 + 80) + 24));
          if (v4 + 1104 != v7)
          {
            sub_100215798(*(v4 + 1136), v7 + 80);
          }
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1002BB83C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002BB888(uint64_t a1, xpc_object_t *a2)
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

  sub_1002B7314(a1, *(a1 + 8));
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

    sub_100008EA4(&v16, object, 0);
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

    sub_100008EA4(v15, object, count);
    xpc_release(object[0]);
    for (i = v17; i != v15[1] || v16 != v15[0]; i = ++v17)
    {
      v14 = 0;
      object[0] = &v16;
      object[1] = i;
      sub_10003EAD4(object, &v14);
      if (xpc_get_type(v14) == &_xpc_type_dictionary)
      {
        *__p = 0u;
        v13 = 0u;
        *v10 = 0u;
        v11 = 0u;
        *v8 = 0u;
        v9 = 0u;
        *object = 0u;
        v6 = v14;
        if (v14)
        {
          xpc_retain(v14);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1002BBB64(object, &v6);
        xpc_release(v6);
        sub_1002BBCAC(a1, object);
        if (SBYTE7(v13) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v11) < 0)
        {
          operator delete(v10[0]);
        }

        if (SHIBYTE(v9) < 0)
        {
          operator delete(v8[1]);
        }

        if (SHIBYTE(v8[0]) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v14);
    }

    xpc_release(v15[0]);
    xpc_release(v16);
  }

  xpc_release(v3);
}

void sub_1002BBAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 48));
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_1002BBB64(uint64_t a1, xpc_object_t *a2)
{
  v2 = *a2;
  v6 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    v6 = v2;
  }

  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    v3 = &v6;
    v4 = "first";
    sub_100006354(&v3, &object);
    read_rest_value();
    xpc_release(object);
    v3 = &v6;
    v4 = "second";
    sub_100006354(&v3, &object);
    rest::read_rest_value();
    xpc_release(object);
    v2 = v6;
  }

  xpc_release(v2);
}

void sub_1002BBC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BBCAC(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1002BBD38();
  }

  return result;
}

void sub_1002BBDB0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002BBE74(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1002BBDCC(char *__dst, __int128 *a2)
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
  *(__dst + 5) = *(a2 + 5);
  *(__dst + 24) = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v6 = a2[3];
  *(__dst + 8) = *(a2 + 8);
  *(__dst + 3) = v6;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(__dst + 18) = *(a2 + 18);
  v7 = a2[5];
  *(__dst + 12) = *(a2 + 12);
  *(__dst + 5) = v7;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 10) = 0;
  __dst[104] = *(a2 + 104);
  return __dst;
}

void sub_1002BBE74(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 135) < 0)
    {
      operator delete(__p[14]);
    }

    if (*(__p + 103) < 0)
    {
      operator delete(__p[10]);
    }

    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1002BBF08(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_1002BBF6C(uint64_t a1, int *a2)
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

uint64_t sub_1002BC040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v52[0] = off_101E2A828;
  v52[1] = sub_1000A7AE8;
  v52[3] = v52;
  sub_1002BC678((a1 + 216));
  sub_1000A8744(v52);
  v12 = *(a3 + 8);
  v44 = *a3;
  v45 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a4[1];
  v42 = *a4;
  v43 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a5[1];
  v40 = *a5;
  v41 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004D102C(a1, a2, &v44, &v42, &v40);
  if (v41)
  {
    sub_100004A34(v41);
  }

  if (v43)
  {
    sub_100004A34(v43);
  }

  if (v45)
  {
    sub_100004A34(v45);
  }

  *a1 = &off_101E38D58;
  *(a1 + 8) = off_101E38EE0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  std::to_string(&v50, a6);
  v15 = std::string::insert(&v50, 0, "MT MMS ", 7uLL);
  v36 = a6;
  v16 = *&v15->__r_.__value_.__l.__data_;
  v39 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v46 = 0;
  log = 0;
  ctu::OsLogContext::OsLogContext(&v46, kCtLoggingSystemName, "mms.fetch");
  v17 = log;
  v18 = os_signpost_id_generate(log);
  if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = log;
    if (os_signpost_enabled(log))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MobileTerminatedMMS", "receive_time=%{signpost.description:attribute}ld", &buf, 0xCu);
    }
  }

  *&buf = off_101E38F78;
  p_buf = &buf;
  v48[0] = v18;
  v48[1] = os_retain(v17);
  sub_1000148FC(&v49, &buf);
  sub_10001499C(&buf);
  ctu::OsLogContext::~OsLogContext(&v46);
  Registry::createXpcJetsamAssertion();
  sub_100014DA8(v48);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  *(a1 + 224) = 0;
  *&v50.__r_.__value_.__l.__data_ = *off_101E38F08;
  v50.__r_.__value_.__r.__words[2] = @"MaxMmsFetchRetries";
  v54 = 0;
  buf = 0uLL;
  sub_10005B328(&buf, &v50, &v51, 3uLL);
  v46 = 0;
  ServiceMap = Registry::getServiceMap(*a3);
  v21 = ServiceMap;
  if ((v22 & 0x8000000000000000) != 0)
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

  std::mutex::lock(ServiceMap);
  v50.__r_.__value_.__r.__words[0] = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, &v50);
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
      goto LABEL_28;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v29 = 1;
LABEL_28:
  (*(*v28 + 104))(&v37, v28, a2, 1, &buf, 0, 0);
  sub_10010B240(&v46, &v37);
  sub_10000A1EC(&v37);
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  data = 10;
  if (v46)
  {
    LODWORD(v50.__r_.__value_.__l.__data_) = 10;
    ctu::cf::assign(&v50, v46, v30);
    v32 = v36;
    data = v50.__r_.__value_.__l.__data_;
  }

  else
  {
    v32 = v36;
  }

  *(a1 + 44) = data;
  v33 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v33)
  {
    sub_100004A34(v33);
  }

  *(a1 + 232) = v32;
  *(a1 + 240) = 0;
  if (*a4)
  {
    v34 = sub_1013D8420(*a4, "X-Mms-Expiry");
    if (v34)
    {
      *(a1 + 240) = sub_101265AA4(v34, *(a1 + 232));
    }
  }

  sub_100029A48(&v46);
  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  return a1;
}

void sub_1002BC50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100029A48(&a24);
  v41 = *(v39 - 144);
  if (v41)
  {
    *(v39 - 136) = v41;
    operator delete(v41);
  }

  v42 = *(v37 + 304);
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (*(v37 + 295) < 0)
  {
    operator delete(*(v37 + 272));
  }

  if (*(v37 + 271) < 0)
  {
    operator delete(*v38);
  }

  sub_1004D1284(v37);
  v43 = *(v37 + 216);
  *(v37 + 216) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  _Unwind_Resume(a1);
}

capabilities::ct *sub_1002BC678(capabilities::ct *a1)
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

void sub_1002BC7D0(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

MMSOperationInterface *sub_1002BC840(MMSOperationInterface *this)
{
  *this = &off_101E38D58;
  *(this + 1) = off_101E38EE0;
  v2 = *(this + 38);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  sub_1004D1284(this);
  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return this;
}

void sub_1002BC910(MMSOperationInterface *a1)
{
  sub_1002BC840(a1);

  operator delete();
}

void sub_1002BC948(uint64_t a1)
{
  sub_1002BC840((a1 - 8));

  operator delete();
}

BOOL sub_1002BC984(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_1004D2664(a1, &v4);
  v2 = sub_1004D1694(a1) && v4 && sub_1013D87F0(v4, "X-Mms-Content-Location") != 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

void sub_1002BC9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BCA14(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1004D24E8(a1, a2, a3);
  if (v6 && (a3 & 1) == 0)
  {
    sub_101135D4C(a2, *(a1 + 232));
  }

  return v6;
}

void sub_1002BCA64(uint64_t a1, uint64_t *a2)
{
  if ((*(**(a1 + 168) + 184))(*(a1 + 168)))
  {
    v4 = sub_1013D87F0(*a2, "X-Mms-Transaction-ID");
    v5 = sub_1004D15AC(a1);
    v6 = *(*(**(a1 + 216) + 16))(*(a1 + 216), v5);
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v16 = sub_1004D149C(a1);
        v17 = 2080;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Queueing Ack for MsgId: %u, transactionId: %s", buf, 0x12u);
      }

      v7 = *(a1 + 136);
      v8 = sub_1004D15AC(a1);
      v9 = *(a1 + 128);
      v13 = *(a1 + 120);
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(a1 + 176);
      v11 = *(a1 + 168);
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v7 + 24))(v7, v8, &v13, v4, &v11);
      if (v12)
      {
        sub_100004A34(v12);
      }

      if (v14)
      {
        sub_100004A34(v14);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1017694B0(a1);
    }
  }
}

void sub_1002BCC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1002BCC70(uint64_t a1)
{
  if (sub_1002BCD04(a1))
  {
    v2 = *(a1 + 136);
    sub_100004AA0(&v3, (a1 + 16));
    (*(*v2 + 16))(v2, 1, &v3);
    if (v4)
    {
      sub_100004A34(v4);
    }
  }
}

void sub_1002BCCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BCD04(uint64_t a1)
{
  v2 = sub_1004D15AC(a1);
  v3 = (*(**(a1 + 216) + 16))(*(a1 + 216), v2);
  v4 = time(0);
  v5 = *(a1 + 240);
  if (v5 && v4 > *(a1 + 232) + v5)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176952C(a1);
    }

    sub_10000501C(v58, "");
    sub_1002BDC34(a1, 0xE2u, 5u, v58);
    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    return 1;
  }

  v56 = 0;
  v57 = 0;
  sub_1004D2664(a1, &v56);
  if (!v56)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_1004D149C(a1);
      sub_101769704(&buf, v6);
    }

    sub_10000501C(v54, "");
    sub_1002BDC34(a1, 0xC0u, 2u, v54);
    if (v55 < 0)
    {
      operator delete(v54[0]);
    }

    goto LABEL_83;
  }

  memset(&v53, 0, sizeof(v53));
  sub_10000501C(&v53, "");
  if (sub_1013D8788(v56, "X-Mms-MMS-Version"))
  {
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = v53;
    }
  }

  else
  {
    sub_10000501C(&buf, "");
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v53 = buf;
  v7 = sub_1013D87F0(v56, "X-Mms-Content-Location");
  if (!v7)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v31 = sub_1004D149C(a1);
      sub_1017696C8("X-Mms-Content-Location", &buf, v31);
    }

    v32 = *(a1 + 136);
    v33 = sub_1004D15AC(a1);
    v51 = v56;
    v52 = v57;
    if (v57)
    {
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10000501C(__p, "");
    (*(*v32 + 48))(v32, v33, &v51, "Unrecognized", __p);
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    if (v52)
    {
      sub_100004A34(v52);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v48, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      v48 = v53;
    }

    sub_1002BDC34(a1, 0xE5u, 6u, &v48);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    goto LABEL_81;
  }

  sub_10000501C(&buf, v7);
  v8 = (a1 + 248);
  if (*(a1 + 271) < 0)
  {
    operator delete(*v8);
  }

  *v8 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 264) = *(&buf.__r_.__value_.__l + 2);
  if (!(*(**(a1 + 168) + 248))(*(a1 + 168)))
  {
    goto LABEL_41;
  }

  v9 = *(a1 + 271);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 271);
    if (*(a1 + 271))
    {
      goto LABEL_27;
    }

LABEL_87:
    sub_10013C334();
  }

  v10 = *(a1 + 256);
  if (!v10)
  {
    goto LABEL_87;
  }

LABEL_27:
  v11 = v10 - 1;
  v12 = (a1 + 248);
  if ((v9 & 0x80000000) != 0)
  {
    v12 = *v8;
  }

  if (v12[v11] == 61)
  {
    v13 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1004D149C(a1);
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Content-Location does not include UID value, manually appending, MsgId: %u", &buf, 8u);
    }

    v15 = sub_1013D87F0(v56, "X-Mms-Transaction-ID");
    if (!v15)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v40 = sub_1004D149C(a1);
        sub_10176968C("X-Mms-Transaction-ID", &buf, v40);
      }

      goto LABEL_81;
    }

    sub_10000501C(&buf, v15);
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
      size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    std::string::append((a1 + 248), p_buf, size);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

LABEL_41:
  v18 = std::string::find((a1 + 248), 63, 0);
  std::string::basic_string(&buf, (a1 + 248), 0, v18, &v46);
  v19 = (a1 + 272);
  if (*(a1 + 295) < 0)
  {
    operator delete(*v19);
  }

  *v19 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 288) = *(&buf.__r_.__value_.__l + 2);
  v20 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 295) < 0)
    {
      v19 = *v19;
    }

    v21 = (a1 + 248);
    if (*(a1 + 271) < 0)
    {
      v21 = *v8;
    }

    v22 = sub_1004D149C(a1);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v19;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v21;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
    v61 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Calculated fMmscUrl for MMSFetchOperation: %s (full path was: %s), MsgId: %u", &buf, 0x1Cu);
  }

  v46 = 0;
  v47 = 0;
  v23 = sub_1004D15AC(a1);
  sub_1004D1140(a1, v23, &v46);
  if (v46 && *(a1 + 168) && ((v24 = (*(*v46 + 40))(), v25 = *(v24 + 23), v26 = *v24, v27 = (*(**(a1 + 168) + 40))(*(a1 + 168)), v25 >= 0) ? (v28 = v24) : (v28 = v26), *(v27 + 23) >= 0 ? (v29 = v27) : (v29 = *v27), !strcasecmp(v28, v29)))
  {
    v36 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v37 = sub_1013D8840(v56, "X-Mms-Message-Size");
      v38 = sub_1004D149C(a1);
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v37;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Recieved MMS notification indicates expected mms size: %u, MsgId: %u", &buf, 0xEu);
    }

    v39 = *(a1 + 176);
    v43 = *(a1 + 168);
    v44 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1004D17E0(a1, &v43);
    if (v44)
    {
      sub_100004A34(v44);
    }

    if (*(a1 + 184))
    {
      sub_1004D1B44(a1);
      sub_1004D19AC(a1);
    }

    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v41 = sub_1004D149C(a1);
      sub_10176961C(&buf, v41);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v42, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      v42 = v53;
    }

    sub_1002BDC34(a1, 0x18u, 0xCu, &v42);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    v34 = v42.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_1004D149C(a1);
      sub_101769654(&buf, v30);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v53;
    }

    sub_1002BDC34(a1, 0x18u, 7u, &__dst);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    v34 = __dst.__r_.__value_.__r.__words[0];
  }

  operator delete(v34);
LABEL_76:
  if (v47)
  {
    sub_100004A34(v47);
  }

LABEL_81:
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

LABEL_83:
  if (v57)
  {
    sub_100004A34(v57);
  }

  return 1;
}

void sub_1002BD9E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002BDC34(uint64_t a1, unsigned int a2, unsigned int a3, const char *a4)
{
  v8 = sub_1004D15AC(a1);
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
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
  *&v51 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v51);
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
        goto LABEL_7;
      }

      goto LABEL_12;
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
LABEL_7:
    v19 = *(*(**(a1 + 216) + 16))(*(a1 + 216), v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1017695E4(v19, v20, v21, v22, v23, v24, v25, v26);
      if (v18)
      {
        return;
      }

      goto LABEL_47;
    }

LABEL_46:
    if (v18)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_12:
  v51 = 0uLL;
  v52 = 0;
  MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp((a1 + 120), &v51);
  v50 = 0;
  v27 = xpc_dictionary_create(0, 0, 0);
  v28 = v27;
  if (v27)
  {
    v50 = v27;
  }

  else
  {
    v28 = xpc_null_create();
    v50 = v28;
    if (!v28)
    {
      v29 = xpc_null_create();
      v28 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v28) == &_xpc_type_dictionary)
  {
    xpc_retain(v28);
    goto LABEL_20;
  }

  v29 = xpc_null_create();
LABEL_19:
  v50 = v29;
LABEL_20:
  xpc_release(v28);
  v30 = subscriber::simSlotAsInstance();
  object = xpc_int64_create(v30);
  if (!object)
  {
    object = xpc_null_create();
  }

  v46 = &v50;
  v47 = "subs_id";
  sub_10000F688(&v46, &object, &v49);
  xpc_release(v49);
  v49 = 0;
  xpc_release(object);
  object = 0;
  v44 = xpc_int64_create(a3);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  v46 = &v50;
  v47 = "dwErrCode";
  sub_10000F688(&v46, &v44, &v45);
  xpc_release(v45);
  v45 = 0;
  xpc_release(v44);
  v44 = 0;
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  v42 = xpc_string_create(a4);
  if (!v42)
  {
    v42 = xpc_null_create();
  }

  v46 = &v50;
  v47 = "wMmsVersion";
  sub_10000F688(&v46, &v42, &v43);
  xpc_release(v43);
  v43 = 0;
  xpc_release(v42);
  v42 = 0;
  v40 = xpc_int64_create(a2);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  v46 = &v50;
  v47 = "wResultCode";
  sub_10000F688(&v46, &v40, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(v40);
  v40 = 0;
  if (v52 >= 0)
  {
    v31 = &v51;
  }

  else
  {
    v31 = v51;
  }

  v38 = xpc_string_create(v31);
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v46 = &v50;
  v47 = "bundleId";
  sub_10000F688(&v46, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
  if (SHIBYTE(v52) < 0)
  {
    sub_100005F2C(__p, v51, *(&v51 + 1));
  }

  else
  {
    *__p = v51;
    v35 = v52;
  }

  isThirdPartyMessagingApp = MessageCenterModel::isThirdPartyMessagingApp(__p);
  v36 = xpc_BOOL_create(isThirdPartyMessagingApp);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  v46 = &v50;
  v47 = "isThirdParty";
  sub_10000F688(&v46, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  v33 = v50;
  if (v50)
  {
    xpc_retain(v50);
  }

  else
  {
    v33 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "metricCCMMSFinishRet", &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v50);
  if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v51);
  if (v18)
  {
    return;
  }

LABEL_47:
  sub_100004A34(v16);
}

void sub_1002BE0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002BE1C4(uint64_t a1)
{
  v2 = time(0);
  v3 = *(a1 + 240);
  return v3 && v2 > *(a1 + 232) + v3;
}

void sub_1002BE20C(uint64_t a1, uint64_t *a2)
{
  v88 = 1;
  v4 = sub_1004D15AC(a1);
  v5 = (*(**(a1 + 216) + 16))(*(a1 + 216), v4);
  v6 = v5;
  if (*a2)
  {
    v84 = 0;
    v85 = 0;
    sub_1004D1B78(a1, &v88, a2, &v84);
    v7 = *(a1 + 192);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    if (v7)
    {
      sub_100004A34(v7);
    }

    if (v84)
    {
      v8 = v85;
      v58[0] = v84;
      v58[1] = v85;
      if (v85)
      {
        atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v88 = sub_1002BEE70(a1, v58);
      if (v8)
      {
        sub_100004A34(v8);
      }

      v9 = sub_1002BFAA4(a1);
      v10 = *v6;
      if (v9)
      {
        v11 = v88;
      }

      else
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Retry not possible", buf, 2u);
          v10 = *v6;
        }

        v11 = 1;
        v88 = 1;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = sub_10174D998(v11);
        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I MMS fetch response: %s", buf, 0xCu);
        v11 = v88;
      }

      if (v11 == 2)
      {
        sub_10000501C(v48, "");
        sub_1002BDC34(a1, 0xC0u, 0, v48);
        if ((v49 & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        v22 = *v48;
      }

      else
      {
        if (!v11)
        {
          v79 = 0;
          v80 = 0;
          sub_1004D2664(a1, &v79);
          if (v79)
          {
            v20 = *(a1 + 136);
            v21 = sub_1004D15AC(a1);
            v56 = v79;
            v57 = v80;
            if (v80)
            {
              atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (*(a1 + 295) < 0)
            {
              sub_100005F2C(__dst, *(a1 + 272), *(a1 + 280));
            }

            else
            {
              *__dst = *(a1 + 272);
              v55 = *(a1 + 288);
            }

            (*(*v20 + 48))(v20, v21, &v56, "Retrieved", __dst);
            if (SHIBYTE(v55) < 0)
            {
              operator delete(__dst[0]);
            }

            if (v57)
            {
              sub_100004A34(v57);
            }

            memset(buf, 0, sizeof(buf));
            v90 = 0;
            sub_10000501C(buf, "");
            if (sub_1013D8788(v79, "X-Mms-MMS-Version"))
            {
              if (SHIBYTE(v90) < 0)
              {
                sub_100005F2C(&v52, *buf, *&buf[8]);
              }

              else
              {
                v52 = *buf;
                v53 = v90;
              }
            }

            else
            {
              sub_10000501C(&v52, "");
            }

            if (SHIBYTE(v90) < 0)
            {
              operator delete(*buf);
            }

            v90 = v53;
            *buf = v52;
            if (SHIBYTE(v53) < 0)
            {
              sub_100005F2C(v50, *buf, *&buf[8]);
            }

            else
            {
              *v50 = *buf;
              v51 = v90;
            }

            sub_1002BDC34(a1, 0x80u, 0, v50);
            if (SHIBYTE(v51) < 0)
            {
              operator delete(v50[0]);
            }

            if (SHIBYTE(v90) < 0)
            {
              operator delete(*buf);
            }
          }

          if (v80)
          {
            sub_100004A34(v80);
          }

LABEL_75:
          v26 = *(a1 + 136);
          v27 = v88;
          sub_100004AA0(&v44, (a1 + 16));
          (*(*v26 + 16))(v26, v27, &v44);
          v28 = v45;
          if (!v45)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        sub_10000501C(__p, "");
        sub_1002BDC34(a1, 0x18u, 3u, __p);
        if ((v47 & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        v22 = __p[0];
      }

      operator delete(v22);
      goto LABEL_75;
    }

    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_1004D149C(a1);
      sub_10176973C(v91, v16);
    }

    if (v88 == 2 || !sub_100BB1A2C(*a2) && (!sub_100BB1C10(*a2) || !(*(**(a1 + 168) + 232))(*(a1 + 168))))
    {
LABEL_114:
      v42 = *(a1 + 136);
      v43 = v88;
      sub_100004AA0(&v59, (a1 + 16));
      (*(*v42 + 16))(v42, v43, &v59);
      v28 = v60;
      if (!v60)
      {
LABEL_77:
        v15 = v85;
        if (!v85)
        {
          return;
        }

        goto LABEL_78;
      }

LABEL_76:
      sub_100004A34(v28);
      goto LABEL_77;
    }

    v52 = 0uLL;
    sub_1004D2664(a1, &v52);
    if (v52)
    {
      v17 = *(a1 + 136);
      v18 = sub_1004D15AC(a1);
      v83 = v52;
      if (*(&v52 + 1))
      {
        atomic_fetch_add_explicit((*(&v52 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (*(a1 + 295) < 0)
      {
        sub_100005F2C(&v81, *(a1 + 272), *(a1 + 280));
      }

      else
      {
        v81 = *(a1 + 272);
        v82 = *(a1 + 288);
      }

      (*(*v17 + 48))(v17, v18, &v83, "Unrecognized", &v81);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81);
      }

      if (*(&v83 + 1))
      {
        sub_100004A34(*(&v83 + 1));
      }
    }

    if (!sub_100BB1C10(*a2))
    {
LABEL_112:
      v88 = 1;
      if (*(&v52 + 1))
      {
        sub_100004A34(*(&v52 + 1));
      }

      goto LABEL_114;
    }

    v79 = 0;
    v80 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 120));
    sub_1002BFC84(ServiceMap, &v79);
    if (!v79)
    {
      v29 = *v6;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1017695E4(v29, v30, v31, v32, v33, v34, v35, v36);
      }

      goto LABEL_110;
    }

    memset(buf, 0, sizeof(buf));
    v90 = 0;
    MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp((a1 + 120), buf);
    v78 = 0;
    v24 = xpc_dictionary_create(0, 0, 0);
    v25 = v24;
    if (v24)
    {
      v78 = v24;
    }

    else
    {
      v25 = xpc_null_create();
      v78 = v25;
      if (!v25)
      {
        v37 = xpc_null_create();
        v25 = 0;
        goto LABEL_87;
      }
    }

    if (xpc_get_type(v25) == &_xpc_type_dictionary)
    {
      xpc_retain(v25);
LABEL_88:
      xpc_release(v25);
      sub_1004D15AC(a1);
      v38 = subscriber::simSlotAsInstance();
      v76 = xpc_int64_create(v38);
      if (!v76)
      {
        v76 = xpc_null_create();
      }

      v74 = &v78;
      v75 = "subs_id";
      sub_10000F688(&v74, &v76, &v77);
      xpc_release(v77);
      v77 = 0;
      xpc_release(v76);
      v76 = 0;
      v72 = xpc_int64_create(16);
      if (!v72)
      {
        v72 = xpc_null_create();
      }

      v74 = &v78;
      v75 = "dwErrCode";
      sub_10000F688(&v74, &v72, &v73);
      xpc_release(v73);
      v73 = 0;
      xpc_release(v72);
      v72 = 0;
      object = xpc_int64_create(7);
      if (!object)
      {
        object = xpc_null_create();
      }

      v74 = &v78;
      v75 = "ucState";
      sub_10000F688(&v74, &object, &v71);
      xpc_release(v71);
      v71 = 0;
      xpc_release(object);
      object = 0;
      v68 = xpc_int64_create(229);
      if (!v68)
      {
        v68 = xpc_null_create();
      }

      v74 = &v78;
      v75 = "wResultCode";
      sub_10000F688(&v74, &v68, &v69);
      xpc_release(v69);
      v69 = 0;
      xpc_release(v68);
      v68 = 0;
      if (v90 >= 0)
      {
        v39 = buf;
      }

      else
      {
        v39 = *buf;
      }

      v66 = xpc_string_create(v39);
      if (!v66)
      {
        v66 = xpc_null_create();
      }

      v74 = &v78;
      v75 = "bundleId";
      sub_10000F688(&v74, &v66, &v67);
      xpc_release(v67);
      v67 = 0;
      xpc_release(v66);
      v66 = 0;
      if (SHIBYTE(v90) < 0)
      {
        sub_100005F2C(v62, *buf, *&buf[8]);
      }

      else
      {
        *v62 = *buf;
        v63 = v90;
      }

      isThirdPartyMessagingApp = MessageCenterModel::isThirdPartyMessagingApp(v62);
      v64 = xpc_BOOL_create(isThirdPartyMessagingApp);
      if (!v64)
      {
        v64 = xpc_null_create();
      }

      v74 = &v78;
      v75 = "isThirdParty";
      sub_10000F688(&v74, &v64, &v65);
      xpc_release(v65);
      v65 = 0;
      xpc_release(v64);
      v64 = 0;
      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[0]);
      }

      v41 = v79;
      sub_100D8FA00(&v61, &v78);
      (*(*v41 + 16))(v41, "metricCCMMSRetState", &v61);
      xpc_release(v61);
      v61 = 0;
      xpc_release(v78);
      if (SHIBYTE(v90) < 0)
      {
        operator delete(*buf);
      }

LABEL_110:
      if (v80)
      {
        sub_100004A34(v80);
      }

      goto LABEL_112;
    }

    v37 = xpc_null_create();
LABEL_87:
    v78 = v37;
    goto LABEL_88;
  }

  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = sub_1004D149C(a1);
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MMSFetchOperation failed, No http response. MsgId: %u", buf, 8u);
    v13 = v88;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(a1 + 136);
  sub_100004AA0(&v86, (a1 + 16));
  (*(*v14 + 16))(v14, v13, &v86);
  v15 = v87;
  if (v87)
  {
LABEL_78:
    sub_100004A34(v15);
  }
}

void sub_1002BEC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, xpc_object_t object, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BEE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004D15AC(a1);
  v5 = (*(**(a1 + 216) + 16))(*(a1 + 216), v4);
  v6 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1004D149C(a1);
    sub_10012314C(*a2, 0, 0, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 67109378;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v7;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MsgId %u public message: %s", &buf, 0x12u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_1004D149C(a1);
    sub_10012314C(*a2, 1, 0, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 67109379;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v9;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2085;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MsgId %u sensitive message: %{sensitive}s", &buf, 0x12u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1004D149C(a1);
    sub_10012345C(*a2, __p);
    v12 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109379;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v11;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2085;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MsgId %u Body: %{sensitive}s", &buf, 0x12u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = sub_1013D8420(*a2, "X-Mms-Retrieve-Status");
  if (v13)
  {
    v14 = v13[17];
    if (v14 != 128)
    {
      memset(__p, 0, 24);
      (*(*v13 + 72))(v13, __p);
      v15 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v40 = SHIBYTE(__p[2]);
        v41 = __p[0];
        v42 = sub_1004D149C(a1);
        v43 = __p;
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109634;
        if (v40 < 0)
        {
          v43 = v41;
        }

        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v14;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = v43;
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v42;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "MMSFetchOperation fetch / retrieve failed: Status 0x%.2x (%s), MsgId: %u", &buf, 0x18u);
      }

      if (sub_100123770(v14))
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      return v16;
    }
  }

  else
  {
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_1004D149C(a1);
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "X-Mms-Retrieve-Status";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I No value for header '%s', assuming status OK, MsgId: %u", __p, 0x12u);
    }
  }

  v19 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = sub_1004D149C(a1);
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I MMSFetchOperation: fetch / retrieve status OK. MsgId: %u", __p, 8u);
  }

  v81 = 0;
  v82 = 0;
  v21 = sub_1004D15AC(a1);
  sub_1004D1140(a1, v21, &v81);
  v22 = sub_1013D8420(*a2, "From");
  v23 = (*(*v81 + 328))(v81);
  if (v22)
  {
    v24 = v23;
    if (v23 != -1)
    {
      v25 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sub_1004D149C(a1);
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I MMSFetchOperation: from header & number prefix requires international symbol, MsgId: %u", __p, 8u);
      }

      memset(&buf, 0, sizeof(buf));
      v99 = 0;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      *v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_10000D518(__p);
      std::ostream::operator<<();
      v78 = 0;
      v79 = 0;
      v80 = 0;
      sub_10000D684(__p, &v78);
      if (!(*(*v22 + 72))(v22, &buf))
      {
        goto LABEL_103;
      }

      if (v80 >= 0)
      {
        v27 = HIBYTE(v80);
      }

      else
      {
        v27 = v79;
      }

      std::string::basic_string(&v83, &buf, 0, v27, v76);
      v28 = SHIBYTE(v83.__r_.__value_.__r.__words[2]);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v83.__r_.__value_.__l.__size_;
      }

      v30 = HIBYTE(v80);
      if (v80 < 0)
      {
        v30 = v79;
      }

      if (size == v30 && ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v31 = &v83) : (v31 = v83.__r_.__value_.__r.__words[0]), v80 >= 0 ? (v32 = &v78) : (v32 = v78), !memcmp(v31, v32, size)))
      {
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
          v35 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = buf.__r_.__value_.__l.__size_;
        }

        v36 = p_buf + v35;
        if (v35 >= 1)
        {
          v37 = v35;
          v38 = p_buf;
          do
          {
            v39 = memchr(v38, 64, v37);
            if (!v39)
            {
              break;
            }

            if (*v39 == 64)
            {
              if (v39 != v36 && v39 - p_buf != -1)
              {
                goto LABEL_54;
              }

              break;
            }

            v38 = (v39 + 1);
            v37 = v36 - v38;
          }

          while (v36 - v38 >= 1);
          if (v35 >= 10)
          {
            v44 = p_buf;
            do
            {
              v45 = memchr(v44, 47, v35 - 9);
              if (!v45)
              {
                break;
              }

              if (*v45 == 0x4C503D455059542FLL && v45[4] == 20045)
              {
                goto LABEL_83;
              }

              v44 = (v45 + 1);
              v35 = v36 - v44;
            }

            while (v36 - v44 > 9);
          }
        }

        v45 = v36;
LABEL_83:
        v33 = v45 != v36 && v45 - p_buf != -1;
        if ((v28 & 0x80000000) == 0)
        {
LABEL_55:
          if (!v33)
          {
            goto LABEL_103;
          }

          goto LABEL_91;
        }
      }

      else
      {
LABEL_54:
        v33 = 0;
        if ((v28 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }
      }

      operator delete(v83.__r_.__value_.__l.__data_);
      if (!v33)
      {
LABEL_103:
        if (SHIBYTE(v80) < 0)
        {
          operator delete(v78);
        }

        if (SHIBYTE(v88) < 0)
        {
          operator delete(v87[1]);
        }

        std::locale::~locale(&__p[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        goto LABEL_109;
      }

LABEL_91:
      sub_10000501C(&v83, "");
      sub_1002BFD48(&__p[1], &v83);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      v48 = sub_10000C030(__p);
      sub_10000C030(v48);
      v49 = *a2;
      sub_10000D684(__p, &v83);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v83;
      }

      else
      {
        v50 = v83.__r_.__value_.__r.__words[0];
      }

      sub_100122FF4(v49, v50);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      v51 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        sub_10000D684(__p, v76);
        v52 = v77;
        v53 = v76[0];
        v54 = sub_1004D149C(a1);
        v55 = v76;
        LODWORD(v83.__r_.__value_.__l.__data_) = 67109634;
        if (v52 < 0)
        {
          v55 = v53;
        }

        HIDWORD(v83.__r_.__value_.__r.__words[0]) = v24;
        LOWORD(v83.__r_.__value_.__r.__words[1]) = 2080;
        *(&v83.__r_.__value_.__r.__words[1] + 2) = v55;
        WORD1(v83.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(v83.__r_.__value_.__r.__words[2]) = v54;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Prepended '+' to address for prefix %u to form address [%s], MsgId: %u", &v83, 0x18u);
        if (v77 < 0)
        {
          operator delete(v76[0]);
        }
      }

      goto LABEL_103;
    }
  }

LABEL_109:
  if (sub_1013D87F0(*a2, "X-Mms-Transaction-ID"))
  {
    v56 = *(a2 + 8);
    v75[0] = *a2;
    v75[1] = v56;
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1002BCA64(a1, v75);
    if (v56)
    {
      sub_100004A34(v56);
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 120));
  v58 = ServiceMap;
  v59 = "27MessageCenterModelInterface";
  if (("27MessageCenterModelInterface" & 0x8000000000000000) != 0)
  {
    v60 = ("27MessageCenterModelInterface" & 0x7FFFFFFFFFFFFFFFLL);
    v61 = 5381;
    do
    {
      v59 = v61;
      v62 = *v60++;
      v61 = (33 * v61) ^ v62;
    }

    while (v62);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v59;
  v63 = sub_100009510(&v58[1].__m_.__sig, __p);
  if (v63)
  {
    v65 = v63[3];
    v64 = v63[4];
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v58);
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v64);
      v66 = 0;
      if (!v65)
      {
        goto LABEL_129;
      }

LABEL_123:
      v67 = *v5;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = sub_1004D149C(a1);
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v68;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I MMSFetchOperation Succeeded: Telling MCM to Receive from network. MsgId: %u", __p, 8u);
      }

      v69 = sub_1004D15AC(a1);
      v70 = *(a2 + 8);
      v73 = *a2;
      v74 = v70;
      if (v70)
      {
        atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v71 = sub_1004D149C(a1);
      (*(*v65 + 280))(v65, v69, &v73, v71);
      if (v74)
      {
        sub_100004A34(v74);
      }

      goto LABEL_129;
    }
  }

  else
  {
    v65 = 0;
  }

  std::mutex::unlock(v58);
  v64 = 0;
  v66 = 1;
  if (v65)
  {
    goto LABEL_123;
  }

LABEL_129:
  if ((v66 & 1) == 0)
  {
    sub_100004A34(v64);
  }

  if (v82)
  {
    sub_100004A34(v82);
  }

  return 0;
}