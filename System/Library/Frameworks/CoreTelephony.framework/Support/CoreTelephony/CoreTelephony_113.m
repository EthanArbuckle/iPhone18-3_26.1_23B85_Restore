void sub_10076F5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_10076F648(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100356BE0(*(a1 + 32) + 32, &v4);
  (*(*v4 + 240))(v6);
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, v6[0], v6[1]);
  }

  else
  {
    *__p = *v6;
    v10 = v7;
  }

  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v12 = v10;
  }

  v13 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v8;
    v8 = v13;
    v14 = v3;
    sub_100005978(&v14);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst);
  }

  *a2 = v8;
  v8 = 0;
  sub_100005978(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10076F790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_100005978(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10076F7F8(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    memset(&v19, 0, sizeof(v19));
    v5 = (a1 + 640);
    if (*(a1 + 663) < 0)
    {
      sub_100005F2C(&v19, *(a1 + 640), *(a1 + 648));
    }

    else
    {
      *&v19.__r_.__value_.__l.__data_ = *v5;
      v19.__r_.__value_.__r.__words[2] = *(a1 + 656);
    }

    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v9 = *(a1 + 664);
      v10 = *(a1 + 672);
      if (v9 != v10)
      {
        while (1)
        {
          memset(&__p, 0, sizeof(__p));
          if (*(v9 + 23) < 0)
          {
            sub_100005F2C(&__p, *v9, *(v9 + 1));
          }

          else
          {
            v11 = *v9;
            __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
            *&__p.__r_.__value_.__l.__data_ = v11;
          }

          if (a1 + 696 == sub_100007A6C(a1 + 688, &__p.__r_.__value_.__l.__data_))
          {
            break;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v9 = (v9 + 24);
          if (v9 == v10)
          {
            goto LABEL_31;
          }
        }

        std::string::operator=(&v19, &__p);
        v12 = *(a1 + 72);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = a1 + 640;
          if (*(a1 + 663) < 0)
          {
            v13 = *v5;
          }

          *buf = 136315394;
          v21 = "getOutgoingInterface";
          v22 = 2080;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: Interface is set to %s (2)", buf, 0x16u);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

LABEL_31:
      v14 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v19.__r_.__value_.__l.__size_;
      }

      if (!v14)
      {
        sub_10022ED7C(a1, &__p);
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        v19 = __p;
      }

      std::string::operator=((a1 + 640), &v19);
    }

    v15 = *(a1 + 72);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    v17 = *(a1 + 663);
    if (v16)
    {
      v18 = a1 + 640;
      if (v17 < 0)
      {
        v18 = *v5;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = "getOutgoingInterface";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: Wi-Fi interface: %s", &__p, 0x16u);
      LOBYTE(v17) = *(a1 + 663);
    }

    if ((v17 & 0x80) != 0)
    {
      sub_100005F2C(a3, *(a1 + 640), *(a1 + 648));
    }

    else
    {
      *a3 = *v5;
      *(a3 + 16) = *(a1 + 656);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = *(a1 + 160);
    if (v6)
    {
      v6 = std::__shared_weak_count::lock(v6);
      v7 = v6;
      if (v6)
      {
        v6 = *(a1 + 152);
      }
    }

    else
    {
      v7 = 0;
    }

    (v6->__vftable[13].__on_zero_shared_weak)(v6);
    if (v7)
    {

      sub_100004A34(v7);
    }
  }
}

void sub_10076FB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076FBA0(void *key@<X1>, const __CFDictionary *a2@<X0>, CFMutableArrayRef *a3@<X8>)
{
  *a3 = 0;
  if (a2)
  {
    if (key)
    {
      Value = CFDictionaryGetValue(a2, key);
      v7 = Value;
      if (Value)
      {
        v8 = CFGetTypeID(Value);
        if (v8 == CFArrayGetTypeID())
        {
          MutableCopy = CFArrayCreateMutableCopy(0, 0, v7);
          *a3 = MutableCopy;
          v10 = 0;
          sub_1000279DC(&v10);
          CFDictionarySetValue(a2, key, MutableCopy);
        }
      }
    }
  }
}

uint64_t sub_10076FC60(uint64_t a1, int a2)
{
  v3 = *(a1 + 232);
  if (!v3)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(v3, @"AllowHandOverFromDataModeList");
  if (!Value)
  {
    return 1;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFArrayGetTypeID())
  {
    return 1;
  }

  v8 = sub_10076FDB8(a2, v6);
  v9 = v8;
  v10 = v8;
  if ((a2 & 0xFFFFFFFE) == 0x10)
  {
    v10 = v8;
    if ((v8 & 1) == 0)
    {
      v10 = sub_10076FDB8(14, v6);
    }
  }

  v11 = *(a1 + 72);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = asString();
    v15 = 2080;
    v16 = asStringBool(v9);
    v17 = 2080;
    v18 = asStringBool(v10);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Current effective data mode : %s; allowed for handover : %s; adjusted: %s", &v13, 0x20u);
  }

  return v10;
}

CFIndex sub_10076FDB8(int a1, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result)
  {
    v4 = result;
    v5 = asString();
    v13 = 0;
    v14 = 0;
    if (ctu::cf::convert_copy(&v14, (v5 + 1), 0x8000100, kCFAllocatorDefault, v6))
    {
      v13 = v14;
      v15 = 0;
      sub_100005978(&v15);
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

    theString2 = v7;
    v13 = 0;
    sub_100005978(&v13);
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      v10 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 == CFStringGetTypeID() && CFStringCompare(v10, theString2, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }

      if (v4 == ++v8)
      {
        sub_100005978(&theString2);
        return 0;
      }
    }

    sub_100005978(&theString2);
    return 1;
  }

  return result;
}

void sub_10076FED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10076FF10(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v4 = *(a1 + 160);
    if (v4)
    {
      v4 = std::__shared_weak_count::lock(v4);
      v5 = v4;
      if (v4)
      {
        v4 = *(a1 + 152);
      }
    }

    else
    {
      v5 = 0;
    }

    v2 = (v4->__vftable[13].__get_deleter)(v4);
    *(a1 + 794) = v2;
    if (v5)
    {
      sub_100004A34(v5);
      v2 = *(a1 + 794);
    }
  }

  return v2 & 1;
}

void sub_10076FFA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076FFB8(uint64_t a1)
{
  if (*(a1 + 794) == 1)
  {
    *(a1 + 794) = 0;
    v2 = *(a1 + 224);
    if (v2 == 5)
    {

      sub_100771D48(a1, 0, (a1 + 448), 0);
    }

    else if (v2 == 2 && (sub_10077009C(a1, "Internet activated") & 1) == 0)
    {
      *(a1 + 592) = 80004;
      v3 = *(a1 + 616);
      sub_10076B24C(a1, "Internet activated");
      v4 = *(a1 + 592);

      sub_100771370(a1, "Internet activated", v3, v4);
    }
  }
}

uint64_t sub_10077009C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "startIPSecConnection";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }

  if (*(a1 + 200))
  {
    goto LABEL_56;
  }

  Copy = 0;
  v68 = 0;
  (*(*(a1 + 32) + 440))(&Copy);
  if (!Copy)
  {
    v21 = *(a1 + 72);
    v20 = 0;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "startIPSecConnection";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E %s: No Settings, failed", buf, 0xCu);
      v20 = 0;
    }

    goto LABEL_53;
  }

  memset(buf, 0, sizeof(buf));
  (*(*Copy + 320))(buf);
  if (!*&buf[16])
  {
    v22 = *(a1 + 72);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    *v87 = 136315138;
    *&v87[4] = "startIPSecConnection";
    v23 = "#E %s: No Resources, failed";
    goto LABEL_41;
  }

  v5 = *buf;
  if (*buf == &buf[8])
  {
LABEL_30:
    v16 = *(a1 + 200);
    if (v16)
    {
      v17 = (*(**(a1 + 168) + 96))(*(a1 + 168));
      if (((*(*v16 + 16))(v16, v17) & 1) == 0)
      {
        v18 = *(a1 + 72);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = (*(**(a1 + 168) + 96))(*(a1 + 168));
          *v87 = 136315394;
          *&v87[4] = "startIPSecConnection";
          *&v87[12] = 1024;
          *&v87[14] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E %s: VirtualInterface setMTU failed: %d", v87, 0x12u);
        }
      }

      sub_10077652C(a1);
      v20 = 1;
      goto LABEL_52;
    }

    v22 = *(a1 + 72);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    *v87 = 136315138;
    *&v87[4] = "startIPSecConnection";
    v23 = "#E %s: No IPSec Interface found, failed";
LABEL_41:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, v87, 0xCu);
    goto LABEL_51;
  }

  v6 = kIPsecInterfaceSettingsResource;
  while (1)
  {
    v8 = *(v5 + 4);
    v7 = *(v5 + 5);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v8 + 16))(v8) != v6)
    {
      if (!v7)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (!v9)
    {
      v24 = *(a1 + 72);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v87 = 136315138;
        *&v87[4] = "startIPSecConnection";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E %s: kIPsecInterfaceSettingsResource object contains wrong data type, failed", v87, 0xCu);
      }

      if (v7)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v9[1];
    v11 = v9[2];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 208);
    *(a1 + 200) = v10;
    *(a1 + 208) = v11;
    if (v12)
    {
      sub_100004A34(v12);
      v10 = *(a1 + 200);
    }

    if (!v10)
    {
      break;
    }

    if (v7)
    {
      sub_100004A34(v7);
LABEL_23:
      sub_100004A34(v7);
    }

LABEL_24:
    v13 = *(v5 + 1);
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = *(v5 + 2);
        v15 = *v14 == v5;
        v5 = v14;
      }

      while (!v15);
    }

    v5 = v14;
    if (v14 == &buf[8])
    {
      goto LABEL_30;
    }
  }

  v25 = *(a1 + 72);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v87 = 136315138;
    *&v87[4] = "startIPSecConnection";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E %s: kIPsecInterfaceSettingsResource object contains empty interface, failed", v87, 0xCu);
  }

  if (v7)
  {
    sub_100004A34(v7);
LABEL_50:
    sub_100004A34(v7);
  }

LABEL_51:
  v20 = 0;
LABEL_52:
  sub_1001178E4(buf, *&buf[8]);
LABEL_53:
  if (v68)
  {
    sub_100004A34(v68);
  }

  if ((v20 & 1) == 0)
  {
LABEL_59:
    v27 = 0;
    return v27 & 1;
  }

LABEL_56:
  if (*(a1 + 184))
  {
    v26 = *(a1 + 72);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "startIPSecConnection";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: Seems IPSec is under connection, failed", buf, 0xCu);
    }

    goto LABEL_59;
  }

  v89 = 0;
  v88 = 0u;
  memset(v87, 0, sizeof(v87));
  v28 = *(a1 + 160);
  if (v28)
  {
    v29 = std::__shared_weak_count::lock(v28);
    if (v29)
    {
      v30 = *(a1 + 152);
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  v31 = *(*v30 - 336);
  v32 = a1 + 32;
  (*(*(a1 + 32) + 440))(&v65, a1 + 32);
  (*(*(a1 + 32) + 40))(a1 + 32);
  (*(*(v30 + v31) + 264))(v87);
  if (v66)
  {
    sub_100004A34(v66);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  if (!*v87)
  {
    sub_10076A498(a1, 2);
    if (sub_1007754C4(a1) & 1) != 0 || (sub_10076FF10(a1, *(a1 + 632)))
    {
      v27 = 1;
    }

    else
    {
      if (!sub_10077590C(a1))
      {
        v55 = *(a1 + 160);
        if (v55)
        {
          v56 = std::__shared_weak_count::lock(v55);
          if (v56)
          {
            v57 = *(a1 + 152);
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {
          v57 = 0;
          v56 = 0;
        }

        v58 = (*(*v32 + 40))(a1 + 32);
        v59 = (*(*v57 + 344))(v57, v58, *(a1 + 632));
        if (v56)
        {
          sub_100004A34(v56);
        }

        if (v59)
        {
          v60 = kCFBooleanTrue;
        }

        else
        {
          v60 = kCFBooleanFalse;
        }

        CFDictionarySetValue(*(a1 + 240), @"InitialContact", v60);
        v61 = *(a1 + 72);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "startIPSecConnection";
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s: fIkeData value is:", buf, 0xCu);
        }

        Copy = "startIPSecConnection";
        *buf = off_101E7C0D0;
        *&buf[8] = a1;
        *&buf[16] = &Copy;
        v70 = buf;
        logger::CFTypeRefLogger();
        sub_100007E44(buf);
        v62 = *(a1 + 72);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "startIPSecConnection";
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I %s: fFirstChildData value is:", buf, 0xCu);
        }

        Copy = "startIPSecConnection";
        *buf = off_101E7C150;
        *&buf[8] = a1;
        *&buf[16] = &Copy;
        v70 = buf;
        logger::CFTypeRefLogger();
        sub_100007E44(buf);
        sub_100356BE0(a1 + 32, buf);
        v63 = (*(**buf + 64))(*buf, 1);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v63 == 1)
        {
          v64 = *(a1 + 72);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "startIPSecConnection";
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I %s: Set traffic class to voice", buf, 0xCu);
          }

          (*(**(a1 + 200) + 48))(*(a1 + 200), 800);
        }

        Copy = 0;
        Copy = CFDictionaryCreateCopy(0, *(a1 + 240));
        sub_1000F0314();
      }

      v27 = *(a1 + 792);
    }

    goto LABEL_99;
  }

  v33 = v87[28];
  v34 = *(a1 + 72);
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  if (v33 != 1)
  {
    if (!v35)
    {
      goto LABEL_98;
    }

    v39 = (*(*v32 + 48))(v32);
    if (*v87)
    {
      v40 = "f";
    }

    else
    {
      v40 = "t";
    }

    if (*v87)
    {
      v41 = asString();
    }

    else
    {
      v41 = "OK";
    }

    if (*&v87[8])
    {
      v51 = *&v87[16];
      if (**&v87[8])
      {
        v52 = "}";
        v53 = "{";
LABEL_96:
        *buf = 136317186;
        *&buf[4] = v39;
        *&buf[12] = 2080;
        *&buf[14] = "startIPSecConnection";
        *&buf[22] = 2080;
        v70 = "canActivate check failed";
        v71 = 2080;
        v72 = v40;
        v73 = 2080;
        v74 = v41;
        v75 = 2080;
        v76 = v53;
        v77 = 2080;
        v78 = *&v87[8];
        v79 = 2080;
        v80 = v51;
        v81 = 2080;
        v82 = v52;
        v48 = "#I DATA.%s: %s: %s: %s(%s%s%s %s%s)";
        v49 = v34;
        v50 = 92;
        goto LABEL_97;
      }
    }

    else
    {
      v51 = *&v87[16];
    }

    v53 = "";
    v52 = "";
    goto LABEL_96;
  }

  if (v35)
  {
    v36 = (*(*v32 + 48))(v32);
    if (*v87)
    {
      v37 = "f";
    }

    else
    {
      v37 = "t";
    }

    if (*v87)
    {
      v38 = asString();
    }

    else
    {
      v38 = "OK";
    }

    v43 = *&v87[8];
    v42 = *&v87[16];
    v44 = asStringBool(v87[24]);
    v45 = asStringBool(v87[25]);
    v46 = asStringBool(v87[26]);
    v47 = asStringBool(v87[27]);
    *buf = 136317698;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = "startIPSecConnection";
    *&buf[22] = 2080;
    v70 = "canActivate check failed";
    v71 = 2080;
    v72 = v37;
    v73 = 2080;
    v74 = v38;
    v75 = 2080;
    v76 = v43;
    v77 = 2080;
    v78 = v42;
    v79 = 2080;
    v80 = v44;
    v81 = 2080;
    v82 = v45;
    v83 = 2080;
    v84 = v46;
    v85 = 2080;
    v86 = v47;
    v48 = "#I DATA.%s: %s: %s: %s(%s{%s %s [ allowed=%s blocked=%s netAvailable=%s home=%s ]})";
    v49 = v34;
    v50 = 112;
LABEL_97:
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
  }

LABEL_98:
  v27 = 0;
LABEL_99:
  if (v89)
  {
    sub_100004A34(v89);
  }

  return v27 & 1;
}

void sub_1007711EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, dispatch_object_t object, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100771370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1007775E4(a1, a4);
  v9 = *(a1 + 72);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = a4;
    *&buf[8] = 2080;
    *&buf[10] = asString();
    *&buf[18] = 1024;
    *&buf[20] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I IPActivateFailed: iWLanErrorCode=%d, errorCode=%s (%d)", buf, 0x18u);
  }

  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  memset(buf, 0, sizeof(buf));
  *buf = 1;
  sub_1003567A4((a1 + 32), &buf[8]);
  LOBYTE(v58) = 1;
  *(&v58 + 1) = (*(*(a1 + 32) + 192))(a1 + 32, 0);
  LODWORD(v59) = v8;
  *(&v59 + 1) = a4;
  LODWORD(v60) = (*(*(a1 + 32) + 40))(a1 + 32);
  HIDWORD(v60) = PersonalitySpecificImpl::simSlot(a1);
  v10 = *(a1 + 160);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *(a1 + 152);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  (*(*&v12[*(*v12 - 336)] + 296))(&v12[*(*v12 - 336)], buf);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  v13 = *(a1 + 72);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = asString();
    *buf = 136315906;
    *&buf[4] = "handleDataContextIPActivateFailed";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    *&buf[22] = 2080;
    *&buf[24] = v14;
    LOWORD(v58) = 1024;
    *(&v58 + 2) = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: %s: for %s with %d", buf, 0x26u);
  }

  sub_10022DE64(a1, a4);
  if ((a4 - 80001) <= 0xB && ((1 << (a4 + 127)) & 0xDA5) != 0)
  {
    v15 = *(a1 + 72);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = asString();
      *buf = 136315394;
      *&buf[4] = "handleDataContextIPActivateFailed";
      *&buf[12] = 2080;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: DataContextIPActivate failed for %s, do not trying another ePDG", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (*(a1 + 795) != 1)
  {
LABEL_18:
    sub_10076BC00(a1);
    if ((*(*(a1 + 32) + 136))(a1 + 32, a3))
    {
      sub_100356BE0(a1 + 32, buf);
      v17 = *buf;
      (*(*a1 + 16))(&v49, a1);
      (*(*v17 + 56))(v17, a3, 1, &v49);
      if (v50)
      {
        sub_100004A34(v50);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    sub_10022D73C(a1);
    v18 = *(a1 + 72);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "handleDataContextIPActivateFailed";
      *&buf[12] = 1024;
      *&buf[14] = a4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: Reporting error since we are done with this context: %d", buf, 0x12u);
    }

    sub_100356BE0(a1 + 32, buf);
    (*(**buf + 104))(*buf, 1, 3, a4);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v8 == 100)
    {
      sub_100356BE0(a1 + 32, buf);
      v19 = *buf;
      (*(*a1 + 16))(&v47, a1);
      (*(*v19 + 136))(v19, 1, &v47);
      if (v48)
      {
        sub_100004A34(v48);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    sub_100356BE0(a1 + 32, buf);
    v20 = *buf;
    v39 = v8;
    v40 = "tech activate fail";
    v41 = "";
    v42 = 0;
    v43 = 0;
    v44 = 1;
    memset(v46, 0, sizeof(v46));
    v45 = 0;
    sub_10000501C(__p, "tech activate fail");
    (*(*a1 + 16))(&v35, a1);
    BYTE4(v34) = 0;
    HIDWORD(v33) = a4;
    LODWORD(v34) = 0;
    LODWORD(v33) = 2;
    v21 = (*(*v20 + 152))(v20, a3, &v39, __p, 0, 1, &v35, *(a1 + 592), v33, v34);
    if (v36)
    {
      sub_100004A34(v36);
    }

    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&v46[4])
    {
      sub_100004A34(*&v46[4]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if ((v21 & 1) == 0)
    {
      v22 = *(a1 + 160);
      if (v22)
      {
        v23 = std::__shared_weak_count::lock(v22);
        if (v23)
        {
          v24 = *(a1 + 152);
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
        v23 = 0;
      }

      v27 = *(*v24 - 336);
      v28 = (*(*(a1 + 32) + 472))(a1 + 32);
      (*(*&v24[v27] + 184))(&v24[v27], v28);
      if (v23)
      {
        sub_100004A34(v23);
      }
    }

    sub_10077B094(a1, a4);
    return;
  }

  v54 = 0;
  v25 = *(a1 + 160);
  if (v25)
  {
    v25 = std::__shared_weak_count::lock(v25);
    v26 = v25;
    if (v25)
    {
      v25 = *(a1 + 152);
    }
  }

  else
  {
    v26 = 0;
  }

  (v25->__vftable[11].__on_zero_shared_weak)(&v54);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v29 = v54;
  if (!v54)
  {
    sub_100005978(&v54);
    goto LABEL_18;
  }

  v30 = *(a1 + 72);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = asString();
    *buf = 136315394;
    *&buf[4] = "handleDataContextIPActivateFailed";
    *&buf[12] = 2080;
    *&buf[14] = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: DataContextIPActivate failed for %s, trying another ePDG...", buf, 0x16u);
    v29 = v54;
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 1174405120;
  v51[2] = sub_10077B03C;
  v51[3] = &unk_101E7A608;
  v53 = a3;
  v51[4] = a1;
  v52 = v29;
  if (v29)
  {
    CFRetain(v29);
  }

  v55 = 0;
  v56 = 0;
  sub_100004AA0(&v55, (a1 + 40));
  v32 = *(a1 + 56);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 1174405120;
  *&buf[16] = sub_100782608;
  *&buf[24] = &unk_101E7C248;
  *(&v58 + 1) = v55;
  *&v59 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v58 = v51;
  dispatch_async(v32, buf);
  if (v59)
  {
    sub_100004A34(v59);
  }

  if (v56)
  {
    sub_100004A34(v56);
  }

  sub_100005978(&v52);
  sub_100005978(&v54);
}

BOOL sub_100771D48(uint64_t a1, int a2, __int128 *a3, char a4)
{
  if (*(a1 + 184))
  {
    v70 = 0uLL;
    v71 = 0;
    sub_10076F7F8(a1, a2, &v70);
    v8 = HIBYTE(v71);
    if (v71 < 0)
    {
      v8 = *(&v70 + 1);
    }

    if (!v8)
    {
      v22 = *(a1 + 72);
      v19 = 0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = asString();
        *buf = 136315394;
        *&buf[4] = "startMOBIKEHandoverTo";
        *&buf[12] = 2080;
        *&buf[14] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: Cannot find outgoing interface for %s", buf, 0x16u);
        v19 = 0;
      }

      goto LABEL_77;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
        v47 = 0;
        if (!v17)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v47 = 1;
    if (!v17)
    {
LABEL_11:
      v18 = *(a1 + 72);
      v19 = 0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = asString();
        *buf = 136315394;
        *&buf[4] = "startMOBIKEHandoverTo";
        *&buf[12] = 2080;
        *&buf[14] = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: No active data service to do MOBIKE handover to %s", buf, 0x16u);
        v19 = 0;
      }

LABEL_75:
      if ((v47 & 1) == 0)
      {
        sub_100004A34(v16);
      }

LABEL_77:
      if (SHIBYTE(v71) < 0)
      {
        operator delete(v70);
      }

      return v19;
    }

LABEL_19:
    v68 = 0;
    v69 = 0;
    sub_100DF07C8(*(a1 + 80), &v68);
    __dst = 0uLL;
    v67 = 0;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a3, *(a3 + 1));
    }

    else
    {
      __dst = *a3;
      v67 = *(a3 + 2);
    }

    v46 = *(a1 + 632);
    v45 = sub_100086B10(a1);
    v44 = (*(*v17 + 1048))(v17);
    if (v68)
    {
      v43 = CallController::isAnyCallBeingSetup(v68);
    }

    else
    {
      v43 = 0;
    }

    v24 = PersonalitySpecificImpl::simSlot(a1);
    v25 = (*(*v17 + 1040))(v17, v24);
    v26 = *(a1 + 72);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = asString();
      *buf = 136315394;
      *&buf[4] = "startMOBIKEHandoverTo";
      *&buf[12] = 2080;
      *&buf[14] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: Starting MOBIKE handover to %s", buf, 0x16u);
    }

    v65 = 0;
    if (SHIBYTE(v71) < 0)
    {
      sub_100005F2C(__p, v70, *(&v70 + 1));
    }

    else
    {
      *__p = v70;
      v64 = v71;
    }

    if (SHIBYTE(v64) < 0)
    {
      sub_100005F2C(&v73, __p[0], __p[1]);
    }

    else
    {
      v73 = *__p;
      v74 = v64;
    }

    v72 = 0;
    if (SHIBYTE(v74) < 0)
    {
      sub_100005F2C(buf, v73, *(&v73 + 1));
    }

    else
    {
      *buf = v73;
      *&buf[16] = v74;
    }

    v75 = 0;
    if (ctu::cf::convert_copy())
    {
      v28 = v72;
      v72 = v75;
      v61 = v28;
      sub_100005978(&v61);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v65 = v72;
    v72 = 0;
    sub_100005978(&v72);
    if (SHIBYTE(v74) < 0)
    {
      operator delete(v73);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p[0]);
    }

    v29 = sub_100774AE0(a1);
    v73 = 0uLL;
    v74 = 0;
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v73 = *buf;
    v74 = *&buf[16];
    v30 = *(a1 + 72);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = &v73;
      if (v74 < 0)
      {
        v31 = v73;
      }

      *buf = 136315394;
      *&buf[4] = "startMOBIKEHandoverTo";
      *&buf[12] = 2080;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: (ePDG) remoteAddress = %s", buf, 0x16u);
    }

    v61 = 0;
    v62 = 0;
    (*(**(a1 + 184) + 56))(&v61);
    v32 = v61;
    if (v61)
    {
      v33 = *v61;
      v34 = *(a1 + 184);
      v35 = v65;
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 1174405120;
      v48[2] = sub_100774C3C;
      v48[3] = &unk_101E7A558;
      v48[4] = a1;
      v54 = a2;
      v57 = a4;
      if (SHIBYTE(v67) < 0)
      {
        sub_100005F2C(&v49, __dst, *(&__dst + 1));
        v32 = v61;
      }

      else
      {
        v49 = __dst;
        v50 = v67;
      }

      v58 = v44;
      v59 = v43;
      v55 = v46;
      v56 = v25;
      v60 = v33;
      v51 = v45;
      v52 = v32;
      v53 = v62;
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = (*(*v34 + 48))(v34, v35, v29, 4, 2500, v48);
      v19 = v37 == 1000;
      if (v37 != 1000)
      {
        v38 = *(a1 + 72);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = asString();
          *buf = 136315650;
          *&buf[4] = "startMOBIKEHandoverTo";
          *&buf[12] = 2080;
          *&buf[14] = v39;
          *&buf[22] = 1024;
          v77 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: initiateMOBIKE to %s failed with result %u, session got disconnected.", buf, 0x1Cu);
        }

        if ((a4 & 1) == 0)
        {
          v40 = sub_100086B10(a1);
          v41 = (*(*(a1 + 32) + 40))();
          iWLanNotifyCodeAsString(v37, buf);
          sub_100774E9C(a1, v41, &__dst, v46, a2, 0, buf, v40 - v45, v44, v43, v25, v33, *v61);
        }

        sub_1007731C8(a1, *(a1 + 224), v37);
      }

      if (v53)
      {
        sub_100004A34(v53);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49);
      }
    }

    else
    {
      v36 = *(a1 + 72);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_10177D280(v36);
      }

      v19 = 0;
    }

    if (v62)
    {
      sub_100004A34(v62);
    }

    if (SHIBYTE(v74) < 0)
    {
      operator delete(v73);
    }

    sub_100005978(&v65);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(__dst);
    }

    if (v69)
    {
      sub_100004A34(v69);
    }

    goto LABEL_75;
  }

  v21 = *(a1 + 72);
  v19 = 0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "startMOBIKEHandoverTo";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: No active iWLan session to do MOBIKE handover to %s", buf, 0x16u);
    return 0;
  }

  return v19;
}

void sub_1007725EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, const void *a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  if (a28)
  {
    sub_100004A34(a28);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32)
  {
    sub_100004A34(a32);
  }

  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
  }

  sub_100005978(&a39);
  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a48)
  {
    sub_100004A34(a48);
  }

  if ((a14 & 1) == 0)
  {
    sub_100004A34(v48);
  }

  if (*(v49 - 185) < 0)
  {
    operator delete(*(v49 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_100772778(uint64_t a1)
{
  if (*(a1 + 794) == 1)
  {
    *(a1 + 794) = 0;
  }

  if (*(a1 + 632))
  {
    v2 = *(a1 + 72);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 136315138;
    v9 = "handleInternetDeactivated";
    v3 = "#I %s: Not over Cellular, ignore Internet deactivated event.";
    goto LABEL_6;
  }

  v4 = *(a1 + 224);
  if ((v4 - 2) >= 2)
  {
    if (v4 == 5)
    {
      v2 = *(a1 + 72);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "handleInternetDeactivated";
        v3 = "#I %s: in process of MOBIKE handover, ignore Internet deactivated event.";
LABEL_6:
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, &v8, 0xCu);
      }
    }
  }

  else
  {
    v5 = *(a1 + 72);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v7 = 0;
    if (v6)
    {
      v8 = 136315138;
      v9 = "handleInternetDeactivated";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Internet Context down", &v8, 0xCu);
      v7 = *(a1 + 632);
    }

    sub_1007728F4(a1, v7);
  }
}

void sub_1007728F4(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "handleTransportationLost";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Lost data transport on %s", buf, 0x16u);
  }

  v23 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (!v11)
  {
    v13 = 0;
LABEL_11:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (!v13)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_14;
  }

LABEL_12:
  (*(*a1 + 16))(buf, a1);
  v15 = (*(*v13 + 16))(v13, *buf + 24);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

LABEL_14:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (*(a1 + 224) != 3)
  {
    goto LABEL_22;
  }

  if ((v15 & 1) == 0)
  {
    sub_100356BE0(a1 + 32, &v21);
    if ((*(*v21 + 120))(v21, 0))
    {
      v16 = 0;
      goto LABEL_25;
    }
  }

  v17 = sub_1007741EC(a1, a2 != 1, &v23);
  v16 = v17;
  if ((v15 & 1) == 0)
  {
LABEL_25:
    if (v22)
    {
      sub_100004A34(v22);
    }

    if (v16)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v17)
  {
LABEL_28:
    if (v23 == 1)
    {
      sub_10000501C(buf, "Lost data transport");
      (*(*a1 + 256))(a1, a2 != 1, buf);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v18 = *(a1 + 72);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = asString();
        v20 = asString();
        *buf = 136315650;
        *&buf[4] = "handleTransportationLost";
        *&buf[12] = 2080;
        *&buf[14] = v19;
        v25 = 2080;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: Lost data transport on %s, but already on transport type %s.", buf, 0x20u);
      }
    }

    return;
  }

LABEL_22:
  if (a2)
  {
    if (a2 == 1)
    {
      sub_1007731C8(a1, *(a1 + 224), 80001);
    }
  }

  else
  {
    sub_1007731C8(a1, *(a1 + 224), 80011);
  }
}

void sub_100772C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100772D14(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 794));
    v4 = asString();
    v5 = sub_100772ED4(*(a1 + 224));
    v10 = 136315906;
    v11 = "handleDataSIMSwitched";
    v12 = 2080;
    v13 = v3;
    v14 = 2080;
    v15 = v4;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: fInActivatingInternet = %s, fTransportType=%s, fStatus=%s", &v10, 0x2Au);
  }

  if (*(a1 + 794) == 1)
  {
    *(a1 + 794) = 0;
  }

  if (*(a1 + 632))
  {
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "handleDataSIMSwitched";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: Not over Cellular, ignore Internet activated event.", &v10, 0xCu);
    }
  }

  else if (*(a1 + 224) == 2)
  {
    v7 = *(a1 + 72);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v9 = 0;
    if (v8)
    {
      v10 = 136315138;
      v11 = "handleDataSIMSwitched";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: not expecting other SIM Internet", &v10, 0xCu);
      v9 = *(a1 + 632);
    }

    sub_1007728F4(a1, v9);
  }
}

const char *sub_100772ED4(unsigned int a1)
{
  if (a1 > 5)
  {
    return "(unknown)";
  }

  else
  {
    return off_101E7C5F8[a1];
  }
}

void sub_100772F00(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (*(a1 + 632))
    {
      v3 = *(a1 + 72);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "handleUserAllowsIWLanOverCellularChanged";
      v4 = "#I %s: Not over cellular, ignore iWLan disallowed over cellular data event";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &buf, 0xCu);
      return;
    }

    v5 = a1 + 32;
    (*(*(a1 + 32) + 440))(&buf, a1 + 32);
    if (buf)
    {
      (*(*v5 + 440))(&v9, a1 + 32);
      v6 = (*(*v9 + 56))(v9, 1) ^ 1;
      if (v10)
      {
        sub_100004A34(v10);
      }
    }

    else
    {
      v6 = 0;
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (v6)
    {
      v3 = *(a1 + 72);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "handleUserAllowsIWLanOverCellularChanged";
      v4 = "#I %s: Not for IMS, ignore iWLan disallowed over cellular data event";
      goto LABEL_22;
    }

    if (!*(a1 + 184))
    {
      v3 = *(a1 + 72);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "handleUserAllowsIWLanOverCellularChanged";
      v4 = "#I %s: No active iWLan session, ignore iWLan disallowed over cellular data event";
      goto LABEL_22;
    }

    v7 = *(a1 + 224);
    if (v7 <= 5 && ((1 << v7) & 0x2C) != 0)
    {
      v8 = *(a1 + 72);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "handleUserAllowsIWLanOverCellularChanged";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: User disallows iWLan over cellular data", &buf, 0xCu);
        v7 = *(a1 + 224);
      }

      sub_1007731C8(a1, v7, 80011);
    }
  }
}

void sub_100773194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1007731C8(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v44 = 136315394;
    *&v44[4] = "handleDisconnected";
    *&v44[12] = 1024;
    *&v44[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: %d", v44, 0x12u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v8 = ServiceMap;
  v10 = v9;
  if (v9 < 0)
  {
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
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
  *v44 = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, v44);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      if (!v16)
      {
LABEL_26:
        sub_100004A34(v15);
        goto LABEL_27;
      }
    }

    else
    {
      std::mutex::unlock(v8);
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    *v44 = 0;
    *&v44[8] = 0;
    (*(*v16 + 456))(v44, v16);
    v17 = *v44;
    if (*v44)
    {
      v18 = PersonalitySpecificImpl::simSlot(a1);
      if (*(a1 + 224) == 3 && a3 == 70006 || a3 == 70007)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      (*(*v17 + 72))(v17, v18, v21);
    }

    if (*&v44[8])
    {
      sub_100004A34(*&v44[8]);
    }

    if (v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    std::mutex::unlock(v8);
  }

LABEL_27:
  if (a3 == 70007 && *(a1 + 745) == 1)
  {
    v22 = Registry::getServiceMap(*(a1 + 80));
    v23 = v22;
    if (v9 < 0)
    {
      v24 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v25 = 5381;
      do
      {
        v9 = v25;
        v26 = *v24++;
        v25 = (33 * v25) ^ v26;
      }

      while (v26);
    }

    std::mutex::lock(v22);
    *v44 = v9;
    v27 = sub_100009510(&v23[1].__m_.__sig, v44);
    if (v27)
    {
      v29 = v27[3];
      v28 = v27[4];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v23);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v28);
        if (!v29)
        {
LABEL_43:
          sub_100004A34(v28);
          goto LABEL_44;
        }

LABEL_38:
        *v44 = 0;
        *&v44[8] = 0;
        (*(*v29 + 1128))(v44, v29);
        v30 = *v44;
        if (*v44)
        {
          v31 = PersonalitySpecificImpl::simSlot(a1);
          v32 = (*(*(a1 + 32) + 40))(a1 + 32);
          (*(*v30 + 40))(v30, v31, v32);
        }

        if (*&v44[8])
        {
          sub_100004A34(*&v44[8]);
        }

        if (!v28)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      std::mutex::unlock(v23);
      if (v29)
      {
        goto LABEL_38;
      }
    }

    else
    {
      std::mutex::unlock(v23);
    }

LABEL_44:
    *(a1 + 745) = 0;
  }

  *(a1 + 592) = a3;
  if (a2 == 5)
  {
    sub_1007799A0(a1, a3);
  }

  else if (a2 == 3)
  {
    v33 = *(a1 + 752) != 0;
    v34 = (*(*(a1 + 32) + 664))(a1 + 32);
    if (((*(*(a1 + 32) + 672))(a1 + 32) | v34 | v33))
    {
      v35 = *(a1 + 72);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 752) != 0;
        if ((*(*(a1 + 32) + 664))(a1 + 32))
        {
          v36 |= 2u;
        }

        v37 = (*(*(a1 + 32) + 672))(a1 + 32);
        v38 = v36 | 4;
        if (!v37)
        {
          v38 = v36;
        }

        *v44 = 136315394;
        *&v44[4] = "handleDisconnected";
        *&v44[12] = 1024;
        *&v44[14] = v38;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: activate failed due to transitionalStateMask: %u", v44, 0x12u);
      }

      v39 = *(a1 + 616);
      sub_10076B24C(a1, "transitionalStateMask");
      sub_100356BE0(a1 + 32, v44);
      v40 = *v44;
      v41 = otherContextType();
      v42 = (*(*v40 + 496))(v40, v41);
      if (*&v44[8])
      {
        sub_100004A34(*&v44[8]);
      }

      if (v42)
      {
        sub_100777D40(a1);
      }

      else
      {
        sub_100771370(a1, "transitionalStateMask", v39, *(a1 + 592));
      }
    }

    else
    {
      sub_1007799A0(a1, *(a1 + 592));
    }
  }

  else
  {
    v43 = *(a1 + 616);
    sub_10076B24C(a1, "disconnected");
    if (a2 == 4)
    {
      sub_10076BC00(a1);
      sub_100777D40(a1);
    }

    else if (a2 == 2)
    {
      sub_100771370(a1, "disconnected", v43, *(a1 + 592));
    }
  }

  sub_1000869A8(a1);
}

void sub_1007737EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100773870(uint64_t a1, int a2, std::string *a3)
{
  v4 = *(a1 + 224);
  if (v4 == 3)
  {
    if (*(a1 + 632) == a2)
    {
      v6 = *(a1 + 72);
      result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v12 = 136315394;
        v13 = "mOBIKEHandoverTo";
        v14 = 2080;
        v15 = asString();
        v8 = "#I %s: iWLan tunnel is already on %s, no need to handover.";
        v9 = v6;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x16u);
        return 0;
      }
    }

    else
    {
      sub_10076A498(a1, 5);
      if (sub_10076FF10(a1, a2))
      {
        std::string::operator=((a1 + 448), a3);
        return 1;
      }

      else
      {

        return sub_100771D48(a1, a2, a3, 0);
      }
    }
  }

  else
  {
    v10 = *(a1 + 72);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v12 = 136315394;
      v13 = "mOBIKEHandoverTo";
      v14 = 2080;
      v15 = sub_100772ED4(v4);
      v8 = "#I %s: context is in %s state, cannot do MOBIKE.";
      v9 = v10;
      goto LABEL_7;
    }
  }

  return result;
}

void sub_100773A54(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 632);
  v7 = *(a1 + 72);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6 == a3)
    {
      if (v8)
      {
        *buf = 136315394;
        *&buf[4] = "handleMOBIKEDone";
        *&buf[12] = 2080;
        *&buf[14] = asString();
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Recovered from MOBIKE failure, back to %s now", buf, 0x16u);
      }

      return;
    }

    if (v8)
    {
      *buf = 136315650;
      *&buf[4] = "handleMOBIKEDone";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      *&buf[22] = 2080;
      v28 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: MOBIKE handover from %s to %s succeeded.", buf, 0x20u);
    }

    *(a1 + 632) = a3;
    __src[0] = 0;
    __src[1] = 0;
    v21 = 0;
    sub_10076F7F8(a1, a3, __src);
    if (SHIBYTE(v21) < 0)
    {
      if (__src[1])
      {
        v19 = 0;
        sub_100005F2C(v17, __src[0], __src[1]);
        goto LABEL_22;
      }
    }

    else if (HIBYTE(v21))
    {
      *v17 = *__src;
      v18 = v21;
      v19 = 0;
LABEL_22:
      if (SHIBYTE(v18) < 0)
      {
        sub_100005F2C(__p, v17[0], v17[1]);
      }

      else
      {
        *__p = *v17;
        v24 = v18;
      }

      v22 = 0;
      if (SHIBYTE(v24) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v24;
      }

      v25 = 0;
      if (ctu::cf::convert_copy())
      {
        v13 = v22;
        v22 = v25;
        v26 = v13;
        sub_100005978(&v26);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v19 = v22;
      v22 = 0;
      sub_100005978(&v22);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }

      if (v19)
      {
        if (((*(**(a1 + 200) + 56))(*(a1 + 200)) & 1) == 0)
        {
          v14 = *(a1 + 72);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "handleMOBIKEDone";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface setDelegateInterface failed", buf, 0xCu);
          }
        }
      }

      sub_100005978(&v19);
      goto LABEL_43;
    }

    v11 = *(a1 + 72);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      *buf = 136315394;
      *&buf[4] = "handleMOBIKEDone";
      *&buf[12] = 2080;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Cannot find outgoing interface for %s", buf, 0x16u);
    }

LABEL_43:
    sub_100356BE0(a1 + 32, buf);
    (*(**buf + 336))(*buf, 1, 1);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_100356BE0(a1 + 32, buf);
    if (a3 == 1)
    {
      v15 = 9;
    }

    else
    {
      v15 = 7;
    }

    if (a3)
    {
      v16 = v15;
    }

    else
    {
      v16 = 8;
    }

    (*(**buf + 232))(*buf, v16, 0, 0, 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (SHIBYTE(v21) < 0)
    {
      v10 = __src[0];
      goto LABEL_55;
    }

    return;
  }

  if (v6 == a3)
  {
    if (v8)
    {
      *buf = 136315394;
      *&buf[4] = "handleMOBIKEDone";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Trying to revert back to %s from MOBIKE failure, but still failed, disconnect", buf, 0x16u);
    }

    sub_1007731C8(a1, *(a1 + 224), 80004);
  }

  else
  {
    if (v8)
    {
      *buf = 136315906;
      *&buf[4] = "handleMOBIKEDone";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      *&buf[22] = 2080;
      v28 = asString();
      v29 = 2080;
      v30 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: MOBIKE handover from %s to %s failed, MOBIKE back to %s.", buf, 0x2Au);
    }

    sub_100356BE0(a1 + 32, buf);
    (*(**buf + 336))(*buf, 1, 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v9 = *(a1 + 632);
    sub_10000501C(buf, "Revert back after MOBIKE failure");
    sub_100771D48(a1, v9, buf, 1);
    if ((buf[23] & 0x80000000) != 0)
    {
      v10 = *buf;
LABEL_55:
      operator delete(v10);
    }
  }
}

void sub_100773FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007740CC(uint64_t a1)
{
  sub_100356744(a1 + 32, &v6);
  v2 = (*(*v6 + 72))(v6, 1, 0);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v2)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(*(a1 + 160));
  v3 = (*(**(a1 + 152) + 528))(*(a1 + 152));
  sub_100004A34(v4);
  return v3;
}

BOOL sub_1007741EC(uint64_t a1, int a2, _BYTE *a3)
{
  *a3 = 0;
  v6 = a1 + 32;
  sub_100356744(a1 + 32, buf);
  v7 = (*(**buf + 496))(*buf, 0);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v7)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: MOBIKE cannot be used currently because we are in handover to Cellular";
    goto LABEL_14;
  }

  if ((sub_1007740CC(a1) & 1) == 0)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: iWLan over Cell is not supported";
    goto LABEL_14;
  }

  if (*(a1 + 632) == a2)
  {
    v11 = *(a1 + 72);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      *a3 = 0;
      return 1;
    }

    v12 = asString();
    *buf = 136315394;
    *&buf[4] = "isMOBIKEPossibleTo";
    *&buf[12] = 2080;
    *&buf[14] = v12;
    v13 = "#I %s: iWLan tunnel is already on %s, no need to handover.";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
    goto LABEL_11;
  }

  sub_100356744(v6, &v50);
  (*(*v50 + 264))(buf);
  v16 = *buf;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v50 + 1))
  {
    sub_100004A34(*(&v50 + 1));
  }

  if (!v16)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: switch over is not supported on this context (active settings empty)";
    goto LABEL_14;
  }

  sub_100356744(v6, &v50);
  (*(*v50 + 264))(buf);
  v17 = (*(**buf + 176))(*buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v50 + 1))
  {
    sub_100004A34(*(&v50 + 1));
  }

  if ((v17 & 1) == 0)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: switch over is not supported on this context";
    goto LABEL_14;
  }

  v18 = *(a1 + 184);
  if (!v18)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: No active iWLan session to do MOBIKE handover";
    goto LABEL_14;
  }

  v19 = *(a1 + 224);
  if (v19 != 3)
  {
    if (v19 == 5)
    {
      v11 = *(a1 + 72);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v20 = sub_100772ED4(5u);
      *buf = 136315394;
      *&buf[4] = "isMOBIKEPossibleTo";
      *&buf[12] = 2080;
      *&buf[14] = v20;
      v13 = "#I %s: context is in %s state, it's already in process of MOBIKE handover.";
      goto LABEL_10;
    }

    v21 = *(a1 + 72);
    result = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v23 = sub_100772ED4(v19);
      *buf = 136315394;
      *&buf[4] = "isMOBIKEPossibleTo";
      *&buf[12] = 2080;
      *&buf[14] = v23;
      v10 = "#I %s: context is in %s state, cannot do MOBIKE.";
      goto LABEL_47;
    }

    return result;
  }

  if (((*(*v18 + 40))(v18) & 1) == 0)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: MOBIKE is not supported on this session";
LABEL_14:
    v14 = v8;
    v15 = 12;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v10, buf, v15);
    return 0;
  }

  if (!a2)
  {
    v53 = 0;
    *v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v24 = std::__shared_weak_count::lock(*(a1 + 160));
    (*(**(a1 + 152) + 536))(&v50);
    sub_100004A34(v24);
    v25 = v50;
    if (!v50)
    {
      goto LABEL_73;
    }

    v26 = v51[12];
    v27 = *(a1 + 72);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (!v28)
      {
        goto LABEL_73;
      }

      v49 = (*(*v6 + 48))(v6);
      v48 = asString();
      v29 = "f";
      if (!v50)
      {
        v29 = "t";
      }

      v47 = v29;
      if (v50)
      {
        v30 = asString();
      }

      else
      {
        v30 = "OK";
      }

      v36 = *(&v50 + 1);
      v35 = *v51;
      v37 = asStringBool(v51[8]);
      v38 = asStringBool(v51[9]);
      v39 = asStringBool(v51[10]);
      v40 = asStringBool(v51[11]);
      *buf = 136317954;
      *&buf[4] = v49;
      *&buf[12] = 2080;
      *&buf[14] = "isMOBIKEPossibleTo";
      v55 = 2080;
      v56 = "Internet Connection not available to MOBIKE handover to";
      v57 = 2080;
      v58 = v48;
      v59 = 2080;
      v60 = v47;
      v61 = 2080;
      v62 = v30;
      v63 = 2080;
      v64 = v36;
      v65 = 2080;
      v66 = v35;
      v67 = 2080;
      v68 = v37;
      v69 = 2080;
      v70 = v38;
      v71 = 2080;
      v72 = v39;
      v73 = 2080;
      v74 = v40;
      v41 = "#I DATA.%s: %s: %s: %s: %s(%s{%s %s [ allowed=%s blocked=%s netAvailable=%s home=%s ]})";
      v42 = v27;
      v43 = 122;
      goto LABEL_72;
    }

    if (!v28)
    {
      goto LABEL_73;
    }

    v31 = (*(*v6 + 48))(v6);
    v32 = asString();
    if (v50)
    {
      v33 = "f";
    }

    else
    {
      v33 = "t";
    }

    if (v50)
    {
      v34 = asString();
    }

    else
    {
      v34 = "OK";
    }

    if (*(&v50 + 1))
    {
      v44 = *v51;
      if (**(&v50 + 1))
      {
        v45 = "}";
        v46 = "{";
LABEL_71:
        *buf = 136317442;
        *&buf[4] = v31;
        *&buf[12] = 2080;
        *&buf[14] = "isMOBIKEPossibleTo";
        v55 = 2080;
        v56 = "Internet Connection not available to MOBIKE handover to";
        v57 = 2080;
        v58 = v32;
        v59 = 2080;
        v60 = v33;
        v61 = 2080;
        v62 = v34;
        v63 = 2080;
        v64 = v46;
        v65 = 2080;
        v66 = *(&v50 + 1);
        v67 = 2080;
        v68 = v44;
        v69 = 2080;
        v70 = v45;
        v41 = "#I DATA.%s: %s: %s: %s: %s(%s%s%s %s%s)";
        v42 = v27;
        v43 = 102;
LABEL_72:
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
LABEL_73:
        if (v53)
        {
          sub_100004A34(v53);
        }

        if (v25)
        {
          return 0;
        }

        goto LABEL_76;
      }
    }

    else
    {
      v44 = *v51;
    }

    v46 = "";
    v45 = "";
    goto LABEL_71;
  }

  if (a2 != 1)
  {
    return 0;
  }

  if (*(a1 + 744))
  {
LABEL_76:
    result = 1;
    *a3 = 1;
    return result;
  }

  v21 = *(a1 + 72);
  result = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v22 = asString();
    *buf = 136315394;
    *&buf[4] = "isMOBIKEPossibleTo";
    *&buf[12] = 2080;
    *&buf[14] = v22;
    v10 = "#I %s: No Wifi to MOBIKE handover to %s";
LABEL_47:
    v14 = v21;
    v15 = 22;
    goto LABEL_15;
  }

  return result;
}

void sub_100774A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_100774AE0(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v2, @"RemoteAddress");
  v4 = Value;
  if (!Value)
  {
    return v4;
  }

  v5 = CFGetTypeID(Value);
  if (v5 != CFStringGetTypeID())
  {
    return 0;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = 0u;
  v10 = 0;
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = __p;
    if (v10 < 0)
    {
      v7 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = "getRemoteAddr";
    *&buf[12] = 2080;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG: %s", buf, 0x16u);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_100774C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100774C3C(uint64_t a1, int a2, const __CFDictionary *a3)
{
  v6 = *(a1 + 32);
  v7 = sub_100086B10(v6);
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  if (!a2)
  {
    v8 = *(v6 + 9);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "startMOBIKEHandoverTo_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: MOBIKE handover response data:", buf, 0xCu);
    }

    v16 = "startMOBIKEHandoverTo_block_invoke";
    *buf = off_101E7C050;
    *&buf[8] = v6;
    v20 = &v16;
    v21 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
    if (a3 && (Value = CFDictionaryGetValue(a3, @"NotifyCode"), (v10 = Value) != 0))
    {
      v11 = CFGetTypeID(Value);
      TypeID = CFNumberGetTypeID();
      v14 = -1;
      if (v11 == TypeID)
      {
        *buf = -1;
        ctu::cf::assign(buf, v10, v12);
        v14 = *buf;
      }
    }

    else
    {
      v14 = -1;
    }

    iWLanNotifyCodeAsString(v14, buf);
    *__p = *buf;
    v18 = v20;
  }

  sub_100773A54(v6, a2 != 0, *(a1 + 88));
  if ((*(a1 + 100) & 1) == 0)
  {
    v15 = (*(*(v6 + 4) + 40))();
    sub_100774E9C(v6, v15, a1 + 40, *(a1 + 92), *(a1 + 88), a2 != 0, __p, v7 - *(a1 + 64), *(a1 + 101), HIBYTE(*(a1 + 101)), *(a1 + 96), *(a1 + 103), **(a1 + 72));
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100774E9C(PersonalitySpecificImpl *this, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int a8, char a9, char a10, int a11, char a12, char a13)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v18 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v18 = *(a3 + 16);
  }

  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  if (*(a7 + 23) < 0)
  {
    sub_100005F2C(__p, *a7, *(a7 + 8));
  }

  else
  {
    *__p = *a7;
    v16 = *(a7 + 16);
  }

  PersonalitySpecificImpl::simSlot(this);
  sub_10079F30C();
}

void sub_10077504C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100775088(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_100005F2C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  v5 = *(a2 + 80);
  *(v3 + 9) = *(a2 + 72);
  *(v3 + 10) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1007750EC(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

uint64_t sub_100775140(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting");
    v5 = CFDictionaryGetValue(theDict, @"DeadPeerDetectionReceiveIntervalTriggerReporting");
    if (Value)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      if (v5)
      {
        v18 = 0;
        v9 = CFGetTypeID(Value);
        v11 = 0;
        if (v9 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&v18, Value, v10);
          v11 = v18;
        }

        v18 = 0;
        v12 = CFGetTypeID(v6);
        v14 = 0;
        if (v12 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&v18, v6, v13);
          v14 = v18;
        }

        if (!v11)
        {
          v15 = *(a1 + 72);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136315394;
            v19 = "getShortDPDParams";
            v20 = 1024;
            v21 = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E %s: Invalid short DPD reporting packet count %du", &v18, 0x12u);
          }
        }

        if (!v14)
        {
          v16 = *(a1 + 72);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136315394;
            v19 = "getShortDPDParams";
            v20 = 1024;
            v21 = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E %s: Invalid short DPD reporting interval %du seconds", &v18, 0x12u);
          }
        }

        sub_100086B10(a1);
        v7 = v14 << 32;
        v8 = v11;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

uint64_t *sub_100775338(uint64_t *result)
{
  v1 = *(result + 202);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 203);
    if (v3)
    {
      if (result[102])
      {
        v4 = (sub_100086B10(result) - result[102]) / 0x3E8uLL;

        return sub_1007753D0(v2, v1, v3, v4);
      }
    }
  }

  return result;
}

uint64_t *sub_1007753D0(uint64_t a1, int a2, int a3, int a4)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_1007814FC(v12, 524559);
  v8 = v12[0];
  if (v12[0])
  {
    v9 = *(v12[0] + 32);
    *(v12[0] + 16) = a2;
    v8[5] = a3;
    v8[8] = v9 | 0xE;
    v8[6] = a4;
    v10 = *(a1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "submitShortDeadPeerDetectionMetric";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: Short DPD metric submitted", buf, 0xCu);
    }
  }

  return sub_1007815E4(v12);
}

uint64_t sub_1007754C4(uint64_t a1)
{
  PersonalitySpecificImpl::simSlot(a1);
  PersonalityIdFromSlotIdEx();
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(0);
    v4 = asString();
    v5 = asStringBool(*(a1 + 424));
    buf = 136315906;
    buf_4 = "needToAcquireWanIp";
    v9 = 2080;
    v10 = v3;
    v11 = 2080;
    v12 = v4;
    v13 = 2080;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: needRoutableAddr: %s, transType=%s, WAN IP Addr acquired: %s", &buf, 0x2Au);
  }

  return 0;
}

void sub_10077588C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10077590C(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 240), @"RemoteAddress");
  v3 = Value;
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 != CFStringGetTypeID())
    {
      v3 = 0;
    }
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *v25 = 0u;
  v26 = 0;
  v5 = *(a1 + 72);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v25;
    if (v26 < 0)
    {
      v6 = v25[0];
    }

    *buf = 136315394;
    *&buf[4] = "needToResolveEPDGName";
    *&buf[12] = 2080;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG: %s", buf, 0x16u);
  }

  memset(v24, 0, sizeof(v24));
  CSIPacketAddress::CSIPacketAddress();
  if (CSIPacketAddress::isZeroIP(v24))
  {
    v23 = 0;
    v22 = 0;
    v7 = *(a1 + 160);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(a1 + 152);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v12 = (*(*(a1 + 32) + 40))();
    v13 = *(a1 + 632);
    v14 = sub_10076CF88(a1);
    (*(*v9 + 464))(&v22, v9, v3, v12, v13, &v23, v14);
    if (v8)
    {
      sub_100004A34(v8);
    }

    v15 = v22;
    v10 = v22 == 0;
    if (v22)
    {
      v16 = *(a1 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        *__p = *buf;
        v21 = *&buf[16];
        v17 = *buf;
        if ((buf[23] & 0x80u) == 0)
        {
          v17 = __p;
        }

        *v27 = 136315394;
        *&v27[4] = "needToResolveEPDGName";
        *&v27[12] = 2080;
        *&v27[14] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG Address resolved as: %s", v27, 0x16u);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v15 = v22;
      }

      CFDictionarySetValue(*(a1 + 240), @"RemoteAddress", v15);
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *v27 = *buf;
      *&v27[16] = *&buf[16];
      CSIPacketAddress::CSIPacketAddress();
      if ((v27[23] & 0x80000000) != 0)
      {
        operator delete(*v27);
      }

      if ((CSIPacketAddress::isZeroIP(__p) & 1) != 0 || (CSIPacketAddress::isIPv4(__p) & 1) == 0)
      {
        if ((CSIPacketAddress::isZeroIP(__p) & 1) != 0 || !CSIPacketAddress::isIPv6(__p))
        {
          goto LABEL_38;
        }

        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      *(a1 + 612) = v18;
    }

    else
    {
      *(a1 + 792) = v23;
    }

LABEL_38:
    sub_100005978(&v22);
    goto LABEL_39;
  }

  if (CSIPacketAddress::isIPv4(v24))
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = 0;
    if (!CSIPacketAddress::isIPv6(v24))
    {
      goto LABEL_39;
    }

    v11 = 2;
  }

  *(a1 + 612) = v11;
LABEL_39:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  return v10;
}

void sub_100775CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  sub_100005978(&a12);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100775D6C(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = *(a1 + 152);
    }
  }

  else
  {
    v3 = 0;
  }

  value = 0;
  (v2->__vftable[11].__on_zero_shared_weak)(&value);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = value;
  if (value)
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v9 = *&buf[16];
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = __p;
      if (v9 < 0)
      {
        v6 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = "tryNextEPDGAddress";
      *&buf[12] = 2080;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG: %s", buf, 0x16u);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionarySetValue(*(a1 + 240), @"RemoteAddress", value);
  }

  sub_100005978(&value);
  return v4 != 0;
}

void sub_100775F3C(uint64_t a1)
{
  if (*(a1 + 224) == 2 && *(a1 + 793) == 1)
  {
    *(a1 + 793) = 0;
    *(a1 + 424) = 1;
    if ((sub_10077009C(a1, "Wan IP Acquired") & 1) == 0)
    {
      *(a1 + 592) = 80004;
      v2 = *(a1 + 616);
      sub_10076B24C(a1, "Wan IP Acquired");
      v3 = *(a1 + 592);

      sub_100771370(a1, "Wan IP Acquired", v2, v3);
    }
  }
}

uint64_t sub_100775FF4(uint64_t result, const void *a2)
{
  if (*(result + 224) == 2)
  {
    v2 = result;
    if (*(result + 792) == 1)
    {
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *__p = 0u;
      v15 = 0;
      v4 = *(v2 + 72);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = __p;
        if (v15 < 0)
        {
          v5 = __p[0];
        }

        *buf = 136315394;
        *&buf[4] = "handleePDGResolved";
        *&buf[12] = 2080;
        *&buf[14] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG: %s", buf, 0x16u);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }

      *(v2 + 792) = 0;
      if (a2)
      {
        CFDictionarySetValue(*(v2 + 240), @"RemoteAddress", a2);
        result = sub_10077009C(v2, "ePDG resolved");
        if (result)
        {
          return result;
        }

        v6 = 80004;
        goto LABEL_25;
      }

      *(v2 + 592) = 80004;
      Value = CFDictionaryGetValue(*(v2 + 240), @"RemoteAddress");
      v8 = Value;
      if (Value)
      {
        v9 = CFGetTypeID(Value);
        if (v9 == CFStringGetTypeID())
        {
          v10 = v8;
        }

        else
        {
          v10 = 0;
        }

        v11 = *(v2 + 72);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        if (v10)
        {
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *__p = *buf;
          v15 = *&buf[16];
          v12 = __p;
          if ((buf[23] & 0x80u) != 0)
          {
            v12 = *buf;
          }

          *v16 = 136315394;
          v17 = "handleePDGResolved";
          v18 = 2080;
          v19 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to resolve DNS name for ePDG %s", v16, 0x16u);
          if (SHIBYTE(v15) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_24;
        }
      }

      else
      {
        v11 = *(v2 + 72);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
LABEL_24:
          v6 = 80005;
LABEL_25:
          *(v2 + 592) = v6;
          v13 = *(v2 + 616);
          sub_10076B24C(v2, "ePDG resolved");
          return sub_100771370(v2, "ePDG resolved", v13, *(v2 + 592));
        }
      }

      *v16 = 136315394;
      v17 = "handleePDGResolved";
      v18 = 2080;
      v19 = "???";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to resolve DNS name for ePDG %s", v16, 0x16u);
      goto LABEL_24;
    }
  }

  return result;
}

void sub_1007762C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007762FC(uint64_t a1, uint64_t a2)
{
  sub_100356BE0(a1 + 32, v12);
  v4 = (*(**v12 + 80))(*v12, 1, 1, 0);
  if (*&v12[8])
  {
    sub_100004A34(*&v12[8]);
  }

  if ((v4 & 0x40000) != 0)
  {
    if ((*(*a1 + 384))(a1, 0))
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 184);
        if (v8)
        {
          v9 = *(a1 + 224);
          v10 = v9 > 5;
          LODWORD(v8) = 0x2Cu >> v9;
          if (v10)
          {
            LOBYTE(v8) = 0;
          }
        }

        v11 = asStringBool(v8 & 1);
        *v12 = 136315394;
        *&v12[4] = "handleiWLanPolicyChanged";
        *&v12[12] = 2080;
        *&v12[14] = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N %s: We do not want to disconnect the Emergency context when iWLan policy changed, tunnel active: %s", v12, 0x16u);
      }
    }
  }

  else if ((v4 & ~a2) != 0)
  {
    if (*(a1 + 184))
    {
      v5 = *(a1 + 224);
      if (v5 <= 5 && ((1 << v5) & 0x2C) != 0)
      {
        v6 = *(a1 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 136315138;
          *&v12[4] = "handleiWLanPolicyChanged";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: iWLan policy changed to not allowed, treat it as network disconnected", v12, 0xCu);
          v5 = *(a1 + 224);
        }

        sub_1007731C8(a1, v5, 80009);
      }
    }
  }
}

void sub_100776504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077652C(uint64_t a1)
{
  if ((*(**(a1 + 168) + 64))(*(a1 + 168)))
  {
    v2 = 1;
    v3 = "config";
    goto LABEL_18;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  *v19 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v19);
  if (!v10)
  {
    v2 = 0;
    goto LABEL_10;
  }

  v2 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_10:
    std::mutex::unlock(v5);
    v11 = 0;
    v12 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v12 = 0;
LABEL_11:
  v3 = "unknown";
  if (v2)
  {
    (*(*a1 + 16))(v19, a1);
    v2 = (*(*v2 + 64))(v2, v19);
    if (*&v19[8])
    {
      sub_100004A34(*&v19[8]);
    }

    if (v2)
    {
      v3 = "mobile hotspot";
    }
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

LABEL_18:
  v13 = (*(**(a1 + 200) + 24))(*(a1 + 200), v2);
  v14 = *(a1 + 72);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (!v15)
    {
      return;
    }

    v16 = asStringBool(v2);
    *v19 = 136315650;
    *&v19[4] = "setDscp";
    *&v19[12] = 2080;
    *&v19[14] = v16;
    v20 = 2080;
    v21 = v3;
    v17 = "#I %s: VirtualInterface setDscpMappingCopy succeeded for value: %s (%s)";
  }

  else
  {
    if (!v15)
    {
      return;
    }

    v18 = asStringBool(v2);
    *v19 = 136315650;
    *&v19[4] = "setDscp";
    *&v19[12] = 2080;
    *&v19[14] = v18;
    v20 = 2080;
    v21 = v3;
    v17 = "#E %s: VirtualInterface setDscpMappingCopy failed for value: %s (%s)";
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, v19, 0x20u);
}

void sub_1007767E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100776824(void *a1)
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
        v6 = *(v3 + 776);
        *(v3 + 776) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = *(v3 + 72);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = sub_100772ED4(*(v3 + 224));
          v9 = 136315138;
          v10 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fEPDGResponseTimer fired, fStatus = %s", &v9, 0xCu);
        }

        if (*(v3 + 224) == 2)
        {
          sub_1007731C8(v3, 2, 70007);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10077695C(uint64_t result, uint64_t a2)
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

void sub_100776978(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_100776988(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(a3 + 24);
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asString();
    if (v7)
    {
      v10 = "handOver ";
    }

    else
    {
      v10 = "";
    }

    *buf = 136315906;
    *&buf[4] = "activateDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v9;
    *&buf[22] = 2080;
    *&buf[24] = v10;
    *&buf[32] = 2080;
    v65 = asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: family=%s %sfor %s", buf, 0x2Au);
  }

  v11 = *(a1 + 224);
  if (v11 > 3)
  {
    if (v11 == 4)
    {
      v35 = *(a1 + 72);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "activateDataContext";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: Still in disconnecting", buf, 0xCu);
      }

      v33 = 4294967287;
      goto LABEL_100;
    }

    if (v11 != 5)
    {
LABEL_9:
      v12 = *(a1 + 616) | a2;
      *(a1 + 616) = v12;
      *(a1 + 608) = v12;
      v13 = *(a1 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_100772ED4(v11);
        v15 = asString();
        *buf = 136315650;
        *&buf[4] = "activateDataContext";
        *&buf[12] = 2080;
        *&buf[14] = v14;
        *&buf[22] = 2080;
        *&buf[24] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: (1) in %s fIPFamilyRequested changed to %s", buf, 0x20u);
      }

      if (v7)
      {
        v16 = *(a3 + 28);
        if (v16)
        {
          v17 = *(a1 + 616);
          v18 = v17 & 0xFFFFFFFE;
          if (v16)
          {
            v18 = *(a1 + 616);
          }

          if ((v16 & 2) != 0)
          {
            v19 = v18;
          }

          else
          {
            v19 = v18 & 0xFFFFFFFD;
          }

          if (v19 && v19 != v17)
          {
            v20 = *(a1 + 72);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = asString();
              v22 = asString();
              *buf = 136315650;
              *&buf[4] = "activateDataContext";
              *&buf[12] = 2080;
              *&buf[14] = v21;
              *&buf[22] = 2080;
              *&buf[24] = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: Adjusting requested family from %s to %s", buf, 0x20u);
              v20 = *(a1 + 72);
            }

            *(a1 + 616) = v19;
            *(a1 + 608) = v19;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v23 = sub_100772ED4(*(a1 + 224));
              v24 = asString();
              *buf = 136315650;
              *&buf[4] = "activateDataContext";
              *&buf[12] = 2080;
              *&buf[14] = v23;
              *&buf[22] = 2080;
              *&buf[24] = v24;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: (2) in %s fIPFamilyRequested changed to %s", buf, 0x20u);
            }
          }
        }
      }

      PDPMetricInfo::clear((a1 + 440));
      if (*(a3 + 71) < 0)
      {
        v38 = *(a3 + 56);
        if (v38)
        {
          sub_100005F2C(buf, *(a3 + 48), v38);
          goto LABEL_47;
        }
      }

      else if (*(a3 + 71))
      {
        *buf = *(a3 + 48);
        *&buf[16] = *(a3 + 64);
        goto LABEL_47;
      }

      sub_10000501C(buf, v6);
LABEL_47:
      if (*(a1 + 471) < 0)
      {
        operator delete(*(a1 + 448));
      }

      *(a1 + 448) = *buf;
      *(a1 + 464) = *&buf[16];
      *(a1 + 600) = sub_100086B10(a1);
      if (v7)
      {
        sub_10022CF24(a1, 1);
      }

      else
      {
        v39 = a1 + 32;
        v40 = (*(*(a1 + 32) + 40))(a1 + 32);
        memset(buf, 0, 24);
        sub_10000501C(buf, v6);
        v62[0] = 0;
        v62[1] = 0;
        v63 = 0;
        sub_10000501C(v62, *(a3 + 16));
        v60[0] = 0;
        v60[1] = 0;
        v61 = 0;
        sub_1003567A4((a1 + 32), v60);
        if ((buf[23] & 0x80000000) != 0)
        {
          sub_100005F2C(__dst, *buf, *&buf[8]);
        }

        else
        {
          *__dst = *buf;
          v59 = *&buf[16];
        }

        if (SHIBYTE(v63) < 0)
        {
          sub_100005F2C(v56, v62[0], v62[1]);
        }

        else
        {
          *v56 = *v62;
          v57 = v63;
        }

        if (SHIBYTE(v61) < 0)
        {
          sub_100005F2C(__p, v60[0], v60[1]);
        }

        else
        {
          *__p = *v60;
          v55 = v61;
        }

        sub_10079E110(v40, __dst, v56, a2, __p, 1);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56[0]);
        }

        if (SHIBYTE(v59) < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(v61) < 0)
        {
          operator delete(v60[0]);
        }

        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62[0]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        sub_10022CF24(a1, 1);
        if (capabilities::ct::supports5G(v41))
        {
          (*(*v39 + 440))(buf, a1 + 32);
          if (*buf)
          {
            (*(*v39 + 440))(v62, a1 + 32);
            v42 = (*(*v62[0] + 208))(v62[0]);
            if (v62[1])
            {
              sub_100004A34(v62[1]);
            }
          }

          else
          {
            v42 = 0;
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          if (v42)
          {
            v43 = *(a1 + 72);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Non-HO, need to allocate PDU sessionId before activating iwlan context", buf, 2u);
            }

            sub_100004AA0(buf, (a1 + 40));
            v44 = *&buf[8];
            if (*&buf[8])
            {
              atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
              sub_100004A34(v44);
              atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            operator new();
          }
        }
      }

      (*(*(a1 + 32) + 440))(buf, a1 + 32);
      v45 = *buf;
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v45)
      {
        (*(*(a1 + 32) + 440))(buf, a1 + 32);
        v46 = (*(**buf + 280))(*buf, 1, 1, 0);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      else
      {
        v46 = 3;
      }

      if (sub_10076D078(a1, v46, v7))
      {
        *(a1 + 796) = v7;
        sub_10022D3B4(a1, 1);
        if (sub_10077009C(a1, v6))
        {
          goto LABEL_93;
        }

        *(a1 + 592) = 80004;
        v33 = sub_1007775E4(a1, 80004);
        v50 = *(a1 + 72);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(a1 + 592);
          v52 = asString();
          *buf = 136315906;
          *&buf[4] = v6;
          *&buf[12] = 1024;
          *&buf[14] = v51;
          *&buf[18] = 2080;
          *&buf[20] = v52;
          *&buf[28] = 1024;
          *&buf[30] = v33;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I startIPSecConnection failed (%s): fPDPMetricInfo.iWLanError=%d, errorCode=%s (%d)", buf, 0x22u);
        }

        sub_10076B24C(a1, v6);
      }

      else
      {
        *(a1 + 592) = 80007;
        v33 = sub_1007775E4(a1, 80007);
        v47 = *(a1 + 72);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(a1 + 592);
          v49 = asString();
          *buf = 67109634;
          *&buf[4] = v48;
          *&buf[8] = 2080;
          *&buf[10] = v49;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I TechDataContext::getSettings failed (2): fPDPMetricInfo.iWLanError=%d, errorCode=%s (%d)", buf, 0x18u);
        }

        sub_10076B24C(a1, "TechDataContext::getSettings failed");
      }

LABEL_100:
      v34 = 0xFFFFFFFFLL;
      return v34 | (v33 << 32);
    }
  }

  else
  {
    if (v11 == 2)
    {
LABEL_93:
      v34 = 0;
      v33 = 0;
      return v34 | (v33 << 32);
    }

    if (v11 != 3)
    {
      goto LABEL_9;
    }
  }

  v25 = *(a1 + 620) & a2;
  v26 = *(a1 + 72);
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (!v25)
  {
    if (v27)
    {
      v36 = asString();
      v37 = asString();
      *buf = 136315650;
      *&buf[4] = "activateDataContext";
      *&buf[12] = 2080;
      *&buf[14] = v36;
      *&buf[22] = 2080;
      *&buf[24] = v37;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: None of the requested ipFamily %s is in conneted %s", buf, 0x20u);
    }

    v33 = 4294967293;
    goto LABEL_100;
  }

  if (v27)
  {
    if (v25 == a2)
    {
      v28 = "";
    }

    else
    {
      v28 = "part of ";
    }

    v29 = asString();
    v30 = asString();
    *buf = 136315906;
    *&buf[4] = "activateDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v28;
    *&buf[22] = 2080;
    *&buf[24] = v29;
    *&buf[32] = 2080;
    v65 = v30;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: %sthe requested ipFamily %s is already connected %s", buf, 0x2Au);
    v26 = *(a1 + 72);
  }

  *(a1 + 616) |= v25;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v31 = sub_100772ED4(*(a1 + 224));
    v32 = asString();
    *buf = 136315650;
    *&buf[4] = "activateDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v31;
    *&buf[22] = 2080;
    *&buf[24] = v32;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: in %s fIPFamilyRequested changed to %s", buf, 0x20u);
  }

  v33 = 0;
  v34 = 1;
  return v34 | (v33 << 32);
}

void sub_1007774D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  sub_10000FF50(&a42);
  v45 = *(v43 - 136);
  if (v45)
  {
    sub_100004A34(v45);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007775E4(uint64_t a1, int a2)
{
  (*(**(a1 + 168) + 136))(&v11);
  if (v12)
  {
    v4 = v12;
    do
    {
      v5 = *(v4 + 7);
      if (v5 <= a2)
      {
        if (v5 >= a2)
        {
          sub_10006DCAC(&v11, v12);
          return 97;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  sub_10006DCAC(&v11, v12);
  (*(**(a1 + 168) + 128))(&v11);
  if (v12)
  {
    v6 = v12;
    do
    {
      v7 = *(v6 + 7);
      if (v7 <= a2)
      {
        if (v7 >= a2)
        {
          sub_10006DCAC(&v11, v12);
          return 98;
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  sub_10006DCAC(&v11, v12);
  sub_10022DBF0(a1, &v11);
  if (v12)
  {
    v8 = v12;
    do
    {
      v9 = *(v8 + 7);
      if (v9 <= a2)
      {
        if (v9 >= a2)
        {
          sub_10006DCAC(&v11, v12);
          return 100;
        }

        ++v8;
      }

      v8 = *v8;
    }

    while (v8);
  }

  sub_10006DCAC(&v11, v12);
  return 4294967293;
}

BOOL sub_100777794(uint64_t a1, int a2, char *a3)
{
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "deactivateDataContext";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    *&buf[22] = 2080;
    v21 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: for %s reason %s", buf, 0x20u);
  }

  if (a2 == 18)
  {
    if (*(a1 + 632))
    {
      v7 = *(a1 + 72);
      result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136315138;
      *&buf[4] = "deactivateDataContext";
      v9 = "#I %s: we are not using cell, no need to drop due to no Data";
      goto LABEL_20;
    }
  }

  else if (a2 == 19 && !*(a1 + 632))
  {
    v7 = *(a1 + 72);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "deactivateDataContext";
    v9 = "#I %s: we are using cell, no need to drop due to no WiFI";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
    return 0;
  }

  if (!*(a1 + 616))
  {
    v7 = *(a1 + 72);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "deactivateDataContext";
    v9 = "#I %s: is already down";
    goto LABEL_20;
  }

  *(a1 + 616) = 0;
  v10 = *(a1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "deactivateDataContext";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: fIPFamilyRequested reset", buf, 0xCu);
  }

  v11 = asString();
  sub_100016890((a1 + 472), v11);
  sub_100016890((a1 + 496), a3);
  v12 = *(a1 + 224);
  if (v12 > 5)
  {
    goto LABEL_23;
  }

  if (((1 << v12) & 0x13) == 0)
  {
    if (((1 << v12) & 0x28) != 0)
    {
      sub_10076A498(a1, 4);
      v12 = *(a1 + 224);
    }

LABEL_23:
    *(a1 + 592) = 1000;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 0x40000000;
    v15[2] = sub_100777B80;
    v15[3] = &unk_101E7A5B8;
    v15[4] = a1;
    v16 = a2;
    v17 = v12;
    v18 = 0;
    v19 = 0;
    sub_100004AA0(&v18, (a1 + 40));
    v14 = *(a1 + 56);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_100782608;
    v21 = &unk_101E7C248;
    v23 = v18;
    v24 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v15;
    dispatch_async(v14, buf);
    if (v24)
    {
      sub_100004A34(v24);
    }

    if (v19)
    {
      sub_100004A34(v19);
    }

    sub_1000869A8(a1);
    return 1;
  }

  v13 = *(a1 + 72);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "deactivateDataContext";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: IKE Connection has stopped already", buf, 0xCu);
  }

  return 1;
}

void sub_100777B74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

double sub_100777B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = asString();
  sub_10076B24C(v2, v3);
  v5 = *(a1 + 44);
  if (v5 == 4)
  {

    return sub_100777D40(v2);
  }

  else if (v5 == 2)
  {

    return sub_100777C0C(v2);
  }

  return result;
}

double sub_100777C0C(uint64_t a1)
{
  if (!*(a1 + 224))
  {
    v2 = *(a1 + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v4) = 136315138;
      *(&v4 + 4) = "handleDataContextIPAborted";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: Done with this context", &v4, 0xCu);
    }

    sub_100356BE0(a1 + 32, &v4);
    (*(*v4 + 320))(v4, 1);
    if (*(&v4 + 1))
    {
      sub_100004A34(*(&v4 + 1));
    }

    sub_100009970(a1 + 688, *(a1 + 696));
    *(a1 + 688) = a1 + 696;
    result = 0.0;
    *(a1 + 696) = 0u;
  }

  return result;
}

void sub_100777D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_100777D40(uint64_t a1)
{
  if (*(a1 + 620))
  {
    v2 = a1 + 32;
    sub_100356BE0(a1 + 32, buf);
    v3 = *buf;
    v4 = *(a1 + 620);
    (*(*a1 + 16))(&v14, a1);
    (*(*v3 + 56))(v3, v4, 1, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    *(a1 + 620) = 0;
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asString();
      *buf = 136315394;
      *&buf[4] = "handleDataContextIPDeactivated";
      *&buf[12] = 2080;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Done with this context for %s", buf, 0x16u);
    }

    sub_100008764((a1 + 720));
    if (*(a1 + 663) < 0)
    {
      **(a1 + 640) = 0;
      *(a1 + 648) = 0;
    }

    else
    {
      *(a1 + 640) = 0;
      *(a1 + 663) = 0;
    }

    sub_100009970(a1 + 688, *(a1 + 696));
    *(a1 + 688) = a1 + 696;
    *(a1 + 696) = 0u;
    (*(*(a1 + 32) + 632))(a1 + 32);
    v9 = *(a1 + 160);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = *(a1 + 152);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = *(*v11 - 336);
    v13 = (*(*v2 + 472))(a1 + 32);
    (*(*&v11[v12] + 184))(&v11[v12], v13);
    if (v10)
    {
      sub_100004A34(v10);
    }

    sub_100009970(a1 + 688, *(a1 + 696));
    *(a1 + 688) = a1 + 696;
    result = 0.0;
    *(a1 + 696) = 0u;
  }

  else
  {
    v7 = *(a1 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleDataContextIPDeactivated";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Context is already deactivated", buf, 0xCu);
    }
  }

  return result;
}

void sub_100778040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1007780AC(uint64_t a1, int a2, CFTypeRef cf)
{
  if (a2 != 5376)
  {
    return;
  }

  if (!cf)
  {
    v9 = *(a1 + 72);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "checkNetworkUnreachable";
    v10 = "#E %s: notificationData is empty in kNEIPSecNotifyIKESocketError message";
LABEL_13:
    v12 = v9;
    v13 = 12;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v10, buf, v13);
    return;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFDictionaryGetTypeID())
  {
    v11 = *(a1 + 72);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    *&buf[4] = "checkNetworkUnreachable";
    *&buf[12] = 2048;
    *&buf[14] = CFGetTypeID(cf);
    v10 = "#E %s: unexpected CFTypeRef in notificationData: %lu";
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(cf, @"IKESocketError");
  if (!Value)
  {
    v9 = *(a1 + 72);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "checkNetworkUnreachable";
    v10 = "#E %s: empty value for key kNEIPSecIKESocketError in kNEIPSecNotifyIKESocketError message";
    goto LABEL_13;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 == CFStringGetTypeID())
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v15 = 0;
    v14 = *buf;
    return;
  }

  v11 = *(a1 + 72);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "checkNetworkUnreachable";
    *&buf[12] = 2048;
    *&buf[14] = CFGetTypeID(v7);
    v10 = "#E %s: unexpected CFTypeRef in socketError: %lu";
LABEL_16:
    v12 = v11;
    v13 = 22;
    goto LABEL_17;
  }
}

void sub_100778584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100778630(void *a1)
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
          v8 = 136315138;
          v9 = "checkNetworkUnreachable_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: fDPDBackoffTimer timer fired", &v8, 0xCu);
        }

        v7 = *(v3 + 760);
        *(v3 + 760) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100778734(uint64_t a1, int a2, unsigned int a3, const void *a4)
{
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "ikeCallBackHandler";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: notification type=0x%04x ikeChildId=0x%04x", buf, 0x18u);
  }

  if (a4)
  {
    v9 = *(a1 + 72);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "ikeCallBackHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: notification data is:", buf, 0xCu);
    }

    v50 = "ikeCallBackHandler";
    *buf = off_101E7C288;
    *&buf[8] = a1;
    *&buf[16] = &v50;
    v53 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
  }

  if (!*(a1 + 184))
  {
    v14 = *(a1 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "ikeCallBackHandler";
    v15 = "#I %s: fIKESession is empty, ignoring the notification";
    v16 = v14;
    v17 = 12;
    goto LABEL_39;
  }

  sub_1007780AC(a1, a3, a4);
  if (a2)
  {
    v10 = *(a1 + 192);
    v11 = *(a1 + 72);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 == a2)
    {
      if (v12)
      {
        *buf = 136315650;
        *&buf[4] = "ikeCallBackHandler";
        *&buf[12] = 2080;
        *&buf[14] = "FirstChild";
        *&buf[22] = 1024;
        LODWORD(v53) = a3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: TechDataContext::TechDataContextCallback: for %s, type=0x%04x", buf, 0x1Cu);
      }

      if (a3 == 4353)
      {
        v31 = sub_1007798F8(a4);
        sub_1007731C8(a1, *(a1 + 224), v31);
      }

      else if (a3 == 4355)
      {
        if (*(a1 + 224) != 4)
        {
          v13 = *(a1 + 712);
          if ((v13 & 4) == 0)
          {
            *(a1 + 712) = v13 | 4;
            sub_100778F7C(a1);
          }
        }
      }

      else if ((a3 & 0xF000) == 0x1000 && (a3 & 0xF00) == 0x200)
      {
        if (a4)
        {
          TypeID = CFDictionaryGetTypeID();
          if (CFGetTypeID(a4) == TypeID)
          {
            v33 = CFGetTypeID(a4);
            if (v33 != CFDictionaryGetTypeID())
            {
              a4 = 0;
            }

            if (CFDictionaryContainsKey(a4, @"TrafficSelectorsLocal"))
            {
              *buf = a4;
              sub_1002A2218((a1 + 432), buf);
              v34 = *(a1 + 712);
              if ((v34 & 8) == 0)
              {
                *(a1 + 712) = v34 | 8;
                sub_100778F7C(a1);
              }
            }
          }
        }
      }

      return;
    }

    if (!v12)
    {
      return;
    }

    *buf = 136315394;
    *&buf[4] = "ikeCallBackHandler";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    v15 = "#I %s: TechDataContext::TechDataContextCallback: Can't find the specific ChildSA, type=0x%04x";
    v16 = v11;
    v17 = 18;
LABEL_39:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    return;
  }

  if ((a3 & 0xF000) != 0x1000)
  {
    return;
  }

  v18 = (a3 >> 8) & 0xF;
  if (v18 > 1)
  {
    switch(v18)
    {
      case 2u:
        if (a4)
        {
          v37 = CFArrayGetTypeID();
          if (CFGetTypeID(a4) == v37)
          {
            v38 = CFGetTypeID(a4);
            if (v38 == CFArrayGetTypeID())
            {
              v39 = a4;
            }

            else
            {
              v39 = 0;
            }

            sub_100779EDC(a1, v39);
          }
        }

        break;
      case 7u:
        v40 = *(a1 + 72);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "ikeCallBackHandler";
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s: Short DPDs notification received", buf, 0xCu);
        }

        (*(*a1 + 672))(a1);
        break;
      case 8u:
        if (a4)
        {
          v19 = CFDictionaryGetTypeID();
          if (CFGetTypeID(a4) == v19)
          {
            v20 = CFGetTypeID(a4);
            v21 = v20 == CFDictionaryGetTypeID() ? a4 : 0;
            Value = CFDictionaryGetValue(v21, @"N1ModeInformation");
            v23 = Value;
            if (Value)
            {
              v24 = CFGetTypeID(Value);
              if (v24 == CFDataGetTypeID())
              {
                v25 = *(a1 + 72);
                v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
                if (v26)
                {
                  Length = CFDataGetLength(v23);
                  *buf = 134217984;
                  *&buf[4] = Length;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I received snssaiInfo with size %ld", buf, 0xCu);
                }

                if (capabilities::ct::supports5G(v26))
                {
                  v29 = *(a1 + 32);
                  v28 = a1 + 32;
                  (*(v29 + 440))(buf, v28);
                  if (*buf)
                  {
                    (*(*v28 + 440))(&v50, v28);
                    if ((*(*v50 + 208))(v50))
                    {
                      v30 = CFDataGetLength(v23) < 10;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    if (v51)
                    {
                      sub_100004A34(v51);
                    }
                  }

                  else
                  {
                    v30 = 0;
                  }

                  if (*&buf[8])
                  {
                    sub_100004A34(*&buf[8]);
                  }

                  if (v30)
                  {
                    sub_100356BE0(v28, buf);
                    v47 = *buf;
                    BytePtr = CFDataGetBytePtr(v23);
                    v49 = CFDataGetLength(v23);
                    (*(*v47 + 392))(v47, BytePtr, v49);
                    if (*&buf[8])
                    {
                      sub_100004A34(*&buf[8]);
                    }
                  }
                }
              }
            }
          }
        }

        break;
    }

    return;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      return;
    }

    v35 = *(a1 + 224);
    if (a3 == 1)
    {
      v45 = sub_1007798F8(a4);
      sub_1007731C8(a1, v35, v45);
      return;
    }

    if (a3 != 3)
    {
LABEL_59:
      sub_10076A498(a1, a3);
      return;
    }

    if (v35 == 4)
    {
      return;
    }

    if (v35 == 5)
    {
      v36 = *(a1 + 72);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "ikeCallBackHandler";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: Back to connected from MOBIKE handover.", buf, 0xCu);
      }

      goto LABEL_59;
    }

    v46 = *(a1 + 712);
    if ((v46 & 2) == 0)
    {
      *(a1 + 712) = v46 | 2;
      sub_100778F7C(a1);
    }
  }

  else
  {
    v41 = *(a1 + 72);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "ikeCallBackHandler";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s: IPSec helper is gone", buf, 0xCu);
    }

    v42 = *(a1 + 224);
    v43 = sub_1007798F8(a4);
    *(a1 + 592) = v43;
    if (v42 == 5 || v42 == 3)
    {
      sub_1007799A0(a1, v43);
    }

    else if (v42 == 2)
    {
      v44 = *(a1 + 616);
      sub_10076B24C(a1, "terminate while connecting");
      sub_100771370(a1, "terminate while connecting", v44, *(a1 + 592));
    }
  }
}

void sub_100778F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100778F7C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "checkConnectedConditions";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  if ((~*(a1 + 712) & 0xFLL) != 0)
  {
    return;
  }

  v3 = *(a1 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(*(a1 + 32) + 40))();
    *buf = 136315394;
    *&buf[4] = "checkConnectedConditions";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: All Conditions met, install ChildSA Policies, and configure pdp_ip%d", buf, 0x12u);
  }

  v5 = sub_10077D918(a1);
  v6 = *(a1 + 72);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 192);
      *buf = 136315394;
      *&buf[4] = "checkConnectedConditions";
      *&buf[12] = 1024;
      *&buf[14] = v8;
      v9 = "#I %s: installFirstChildSAPolicies for ikeChildId=0x%04x ok";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v9, buf, 0x12u);
    }
  }

  else if (v7)
  {
    v10 = *(a1 + 192);
    *buf = 136315394;
    *&buf[4] = "checkConnectedConditions";
    *&buf[12] = 1024;
    *&buf[14] = v10;
    v9 = "#I %s: installFirstChildSAPolicies for ikeChildId=0x%04x failed";
    goto LABEL_11;
  }

  v11 = *(a1 + 776);
  *(a1 + 776) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  sub_10076A498(a1, 3);
  *(a1 + 628) = 0;
  v12 = *(a1 + 616);
  *(a1 + 624) = v12;
  v13 = *(a1 + 72);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "checkConnectedConditions";
    *&buf[12] = 1024;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: fIPConfigRequestedFamily = %d", buf, 0x12u);
    v12 = *(a1 + 616);
  }

  if (v12)
  {
    sub_100356BE0(a1 + 32, buf);
    v14 = *buf;
    (*(*a1 + 16))(&v52, a1);
    v15 = (*(*v14 + 32))(v14, 1, 1, &v52, 0, 1);
    if (v53)
    {
      sub_100004A34(v53);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v16 = *(a1 + 616);
    if (v16 != 1 || v15)
    {
      if (v15)
      {
LABEL_54:
        v27 = *(a1 + 72);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = asString();
          *buf = 136315394;
          *&buf[4] = "checkConnectedConditions";
          *&buf[12] = 2080;
          *&buf[14] = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: Error bringing interface online for %s", buf, 0x16u);
          v16 = *(a1 + 616);
        }

        *(a1 + 592) = 80003;
        sub_10076B24C(a1, "IP online");
        sub_100771370(a1, "IP online", v16, *(a1 + 592));
        return;
      }
    }

    else
    {
      v17 = *(a1 + 72);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "checkConnectedConditions";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: create IPv4 fIPConfigTimer", buf, 0xCu);
      }

      sub_100004AA0(buf, (a1 + 40));
      v19 = *buf;
      v18 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
      }

      Registry::getTimerService(buf, *(a1 + 80));
      v20 = *buf;
      sub_10000501C(v49, "IPv4 Configuration timer");
      v21 = *(a1 + 56);
      v48 = v21;
      if (v21)
      {
        dispatch_retain(v21);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_10077E784;
      aBlock[3] = &unk_101E7A688;
      aBlock[4] = a1;
      aBlock[5] = v19;
      v46 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = _Block_copy(aBlock);
      sub_100D23364(v20, v49, 0, 10000000, &v48, &v47);
      v22 = v51;
      v51 = 0;
      v23 = *(a1 + 752);
      *(a1 + 752) = v22;
      if (v23)
      {
        (*(*v23 + 8))(v23);
        v24 = v51;
        v51 = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }
      }

      if (v47)
      {
        _Block_release(v47);
      }

      if (v48)
      {
        dispatch_release(v48);
      }

      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v46)
      {
        std::__shared_weak_count::__release_weak(v46);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }
    }
  }

  if ((*(a1 + 616) & 2) == 0)
  {
    return;
  }

  sub_100356BE0(a1 + 32, buf);
  v25 = *buf;
  (*(*a1 + 16))(&v43, a1);
  v26 = (*(*v25 + 32))(v25, 2, 1, &v43, 0, 1);
  if (v44)
  {
    sub_100004A34(v44);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v26)
  {
    v16 = *(a1 + 616);
    goto LABEL_54;
  }

  v29 = *(a1 + 72);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "checkConnectedConditions";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: create IPv4v6 fIPConfigTimer", buf, 0xCu);
  }

  sub_100004AA0(buf, (a1 + 40));
  v31 = *buf;
  v30 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v30);
  }

  Registry::getTimerService(buf, *(a1 + 80));
  v32 = *buf;
  sub_10000501C(__p, "IPv4v6 Configuration timer");
  v33 = *(a1 + 56);
  object = v33;
  if (v33)
  {
    dispatch_retain(v33);
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1174405120;
  v37[2] = sub_10077E8A4;
  v37[3] = &unk_101E7A6B8;
  v37[4] = a1;
  v37[5] = v31;
  v38 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = _Block_copy(v37);
  sub_100D23364(v32, __p, 0, 10000000, &object, &v39);
  v34 = v51;
  v51 = 0;
  v35 = *(a1 + 752);
  *(a1 + 752) = v34;
  if (v35)
  {
    (*(*v35 + 8))(v35);
    v36 = v51;
    v51 = 0;
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }
  }

  if (v39)
  {
    _Block_release(v39);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }
}

void sub_1007797E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007798F8(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = CFGetTypeID(a1);
  v4 = v3 == CFDictionaryGetTypeID() ? a1 : 0;
  Value = CFDictionaryGetValue(v4, @"NotifyCode");
  if (!Value)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  v9 = CFNumberGetTypeID();
  result = 0xFFFFFFFFLL;
  if (v7 == v9)
  {
    v11 = -1;
    ctu::cf::assign(&v11, v6, v8);
    return v11;
  }

  return result;
}

void sub_1007799A0(uint64_t a1, int a2)
{
  v4 = sub_1007775E4(a1, a2);
  v5 = *(a1 + 72);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = a2;
    *&buf[8] = 2080;
    *&buf[10] = asString();
    *&buf[18] = 1024;
    *&buf[20] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I NetworkDisconnected: iWLanErrorCode=%d, errorCode=%s (%d)", buf, 0x18u);
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  memset(buf, 0, sizeof(buf));
  *buf = 1;
  sub_1003567A4((a1 + 32), &buf[8]);
  LOBYTE(v24) = 0;
  *(&v24 + 1) = (*(*(a1 + 32) + 192))(a1 + 32, 0);
  LODWORD(v25) = v4;
  *(&v25 + 1) = a2;
  LODWORD(v26) = (*(*(a1 + 32) + 40))(a1 + 32);
  HIDWORD(v26) = PersonalitySpecificImpl::simSlot(a1);
  v6 = *(a1 + 160);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 152);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  (*(*&v8[*(*v8 - 336)] + 296))(&v8[*(*v8 - 336)], buf);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  if (v4 == 100)
  {
    sub_100356BE0(a1 + 32, buf);
    v9 = *buf;
    (*(*a1 + 16))(&v21, a1);
    (*(*v9 + 136))(v9, 1, &v21);
    if (v22)
    {
      sub_100004A34(v22);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_10076B24C(a1, "disconnect on network reset");
    sub_100777D40(a1);
  }

  else
  {
    if (*(a1 + 746) != 1 || *(a1 + 747) != 1)
    {
      goto LABEL_25;
    }

    sub_100356BE0(a1 + 32, buf);
    v10 = *buf;
    v11 = otherContextType();
    v12 = (*(*v10 + 496))(v10, v11);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v12)
    {
      v13 = *(a1 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "handleDataContextIpNetworkDisconnected";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: we are already in handover to other context", buf, 0xCu);
      }
    }

    else
    {
LABEL_25:
      *(a1 + 746) = 1;
      sub_100356BE0(a1 + 32, buf);
      v14 = *buf;
      v15 = *(a1 + 620);
      v16 = *(a1 + 616);
      (*(*a1 + 16))(&v19, a1);
      v17 = (*(*v14 + 128))(v14, v16 & v15, 1, &v19, 4, 17);
      if (v20)
      {
        sub_100004A34(v20);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if ((v17 & 1) == 0)
      {
        if (*(a1 + 747) != 1 || (~*(a1 + 712) & 0xFLL) != 0 || *(a1 + 752))
        {
          sub_10076B24C(a1, "disconnect on handover");
          sub_100777D40(a1);
        }

        else
        {
          v18 = *(a1 + 72);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "handleDataContextIpNetworkDisconnected";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: Not possible to handover, tell SD to de-register", buf, 0xCu);
          }

          sub_100083E9C(&event::data::controlServiceOnLowPowerModeTransition, 1);
        }
      }
    }
  }
}

void sub_100779E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    sub_100004A34(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100779EDC(uint64_t a1, const __CFArray *a2)
{
  if (a2)
  {
    CSIPacketAddress::CSIPacketAddress(buf);
    CSIPacketAddress::operator=();
    CSIPacketAddress::operator=();
    *(a1 + 288) = *(a1 + 280);
    CSIPacketAddress::CSIPacketAddress(buf);
    CSIPacketAddress::operator=();
    CSIPacketAddress::operator=();
    *(a1 + 360) = *(a1 + 352);
    *(a1 + 620) = 0;
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v61 = 0;
      v60 = 0;
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v7 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v8 = CFGetTypeID(ValueAtIndex);
          if (v8 == CFDictionaryGetTypeID())
          {
            v9 = v7;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        Value = CFDictionaryGetValue(v9, @"Name");
        v11 = Value;
        if (!Value || (v12 = CFGetTypeID(Value), v12 != CFStringGetTypeID()))
        {
          v16 = *(a1 + 72);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "onlineWithConfigInfo";
            *&buf[12] = 2048;
            *&buf[14] = i;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: No Name in item %ld", buf, 0x16u);
          }

          continue;
        }

        if (CFStringCompare(v11, @"AssignedIPv4Address", 0) == kCFCompareEqualTo || CFStringCompare(v11, @"AssignedIPv4NetMask", 0) == kCFCompareEqualTo)
        {
          CFDictionaryGetValue(v9, @"Address");
          memset(buf, 0, 24);
          ctu::cf::assign();
          *__p = *buf;
          __p[2] = *&buf[16];
          CSIPacketAddress::CSIPacketAddress();
          CSIPacketAddress::operator=();
          goto LABEL_87;
        }

        if (CFStringCompare(v11, @"AssignedIPv4DNS", 0) == kCFCompareEqualTo)
        {
          memset(v68, 0, sizeof(v68));
          CFDictionaryGetValue(v9, @"Address");
          memset(buf, 0, 24);
          ctu::cf::assign();
          *__p = *buf;
          __p[2] = *&buf[16];
          CSIPacketAddress::CSIPacketAddress();
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          if ((CSIPacketAddress::isZeroIP(v68) & 1) == 0)
          {
            v17 = *(a1 + 72);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              CSIPacketAddress::operator std::string();
              v18 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v18 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 1024;
              *&buf[14] = v61;
              *&buf[18] = 2082;
              *&buf[20] = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: fIPV4Dns[%d] = %{public}s", buf, 0x1Cu);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }

            v19 = *(a1 + 288);
            if (v19 >= *(a1 + 296))
            {
              v20 = sub_1001BD180(a1 + 280, v68);
            }

            else
            {
              CSIPacketAddress::CSIPacketAddress(*(a1 + 288), v68);
              v20 = v19 + 24;
              *(a1 + 288) = v19 + 24;
            }

            ++v61;
            *(a1 + 288) = v20;
          }

          continue;
        }

        if (CFStringCompare(v11, @"AssignedIPv6Address", 0))
        {
          if (CFStringCompare(v11, @"AssignedIPv6DNS", 0) == kCFCompareEqualTo)
          {
            memset(v68, 0, sizeof(v68));
            CFDictionaryGetValue(v9, @"Address");
            memset(buf, 0, 24);
            ctu::cf::assign();
            *__p = *buf;
            __p[2] = *&buf[16];
            CSIPacketAddress::CSIPacketAddress();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            if ((CSIPacketAddress::isZeroIP(v68) & 1) == 0)
            {
              v26 = *(a1 + 72);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                CSIPacketAddress::operator std::string();
                v27 = __p;
                if (SHIBYTE(__p[2]) < 0)
                {
                  v27 = __p[0];
                }

                *buf = 136315650;
                *&buf[4] = "onlineWithConfigInfo";
                *&buf[12] = 1024;
                *&buf[14] = v60;
                *&buf[18] = 2082;
                *&buf[20] = v27;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: fIPV6Dns[%d] = %{public}s", buf, 0x1Cu);
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v28 = *(a1 + 360);
              if (v28 >= *(a1 + 368))
              {
                v29 = sub_1001BD180(a1 + 352, v68);
              }

              else
              {
                CSIPacketAddress::CSIPacketAddress(*(a1 + 360), v68);
                v29 = v28 + 24;
                *(a1 + 360) = v28 + 24;
              }

              ++v60;
              *(a1 + 360) = v29;
            }

            continue;
          }

          if (CFStringCompare(v11, @"AssignedPCSCFIPv4", 0) && CFStringCompare(v11, @"AssignedIPv4PCSCF_STD", 0))
          {
            if (CFStringCompare(v11, @"AssignedPCSCFIPv6", 0) && CFStringCompare(v11, @"AssignedIPv6PCSCF_STD", 0))
            {
              v13 = *(a1 + 72);
              if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                continue;
              }

              memset(buf, 0, 24);
              ctu::cf::assign();
              *v68 = *buf;
              *&v68[16] = *&buf[16];
              v14 = *buf;
              if (buf[23] >= 0)
              {
                v14 = v68;
              }

              *buf = 136315650;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 2080;
              *&buf[14] = v14;
              *&buf[22] = 2048;
              *&buf[24] = i;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: got unrecognized name %s in item %ld in config Array", buf, 0x20u);
              if ((v68[23] & 0x80000000) == 0)
              {
                continue;
              }

              v15 = *v68;
              goto LABEL_89;
            }

            memset(__p, 0, 24);
            CFDictionaryGetValue(v9, @"Address");
            memset(buf, 0, 24);
            ctu::cf::assign();
            *__p = *buf;
            __p[2] = *&buf[16];
            v30 = *&buf[8];
            if (buf[23] >= 0)
            {
              v30 = buf[23];
            }

            if (v30)
            {
              sub_100005308((a1 + 720), __p);
              v31 = *(a1 + 72);
              if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_87;
              }

              v32 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v32 = __p[0];
              }

              *buf = 136315394;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 2080;
              *&buf[14] = v32;
              v24 = v31;
              v25 = "#I %s: IPv6Service: added IPv6 pcscf %s";
              goto LABEL_68;
            }

            v40 = *(a1 + 72);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              memset(v68, 0, sizeof(v68));
              ctu::cf::assign();
              *v64 = *v68;
              v65 = *&v68[16];
              v41 = *v68;
              v42 = v68[23];
              memset(v68, 0, sizeof(v68));
              ctu::cf::assign();
              v43 = v64;
              if (v42 < 0)
              {
                v43 = v41;
              }

              *v62 = *v68;
              v63 = *&v68[16];
              v44 = *v68;
              if ((v68[23] & 0x80u) == 0)
              {
                v44 = v62;
              }

              *buf = 136315650;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 2080;
              *&buf[14] = v43;
              *&buf[22] = 2080;
              *&buf[24] = v44;
              v38 = v40;
              v39 = "#I %s: IPv6Service: %s is present but %s empty, ignoring";
LABEL_83:
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0x20u);
              if (SHIBYTE(v63) < 0)
              {
                operator delete(v62[0]);
              }

              if (SHIBYTE(v65) < 0)
              {
                operator delete(v64[0]);
              }
            }
          }

          else
          {
            memset(__p, 0, 24);
            CFDictionaryGetValue(v9, @"Address");
            memset(buf, 0, 24);
            ctu::cf::assign();
            *__p = *buf;
            __p[2] = *&buf[16];
            v21 = *&buf[8];
            if (buf[23] >= 0)
            {
              v21 = buf[23];
            }

            if (v21)
            {
              sub_100005308((a1 + 720), __p);
              v22 = *(a1 + 72);
              if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_87;
              }

              v23 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v23 = __p[0];
              }

              *buf = 136315394;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 2080;
              *&buf[14] = v23;
              v24 = v22;
              v25 = "#I %s: added IPv4 pcscf %s";
LABEL_68:
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
              goto LABEL_87;
            }

            v33 = *(a1 + 72);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              memset(v68, 0, sizeof(v68));
              ctu::cf::assign();
              *v64 = *v68;
              v65 = *&v68[16];
              v34 = *v68;
              v35 = v68[23];
              memset(v68, 0, sizeof(v68));
              ctu::cf::assign();
              v36 = v64;
              if (v35 < 0)
              {
                v36 = v34;
              }

              *v62 = *v68;
              v63 = *&v68[16];
              v37 = *v68;
              if ((v68[23] & 0x80u) == 0)
              {
                v37 = v62;
              }

              *buf = 136315650;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 2080;
              *&buf[14] = v36;
              *&buf[22] = 2080;
              *&buf[24] = v37;
              v38 = v33;
              v39 = "#I %s: %s is present but %s empty, ignoring";
              goto LABEL_83;
            }
          }
        }

        else
        {
          CFDictionaryGetValue(v9, @"Address");
          memset(buf, 0, 24);
          ctu::cf::assign();
          *__p = *buf;
          __p[2] = *&buf[16];
          CSIPacketAddress::CSIPacketAddress();
          CSIPacketAddress::operator=();
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          CFDictionaryGetValue(v9, @"Netmask");
          memset(buf, 0, 24);
          ctu::cf::assign();
          *__p = *buf;
          __p[2] = *&buf[16];
          CSIPacketAddress::CSIPacketAddress();
          CSIPacketAddress::operator=();
        }

LABEL_87:
        if (SHIBYTE(__p[2]) < 0)
        {
          v15 = __p[0];
LABEL_89:
          operator delete(v15);
        }
      }
    }

    if ((CSIPacketAddress::isZeroIP((a1 + 256)) & 1) == 0 || (CSIPacketAddress::isZeroIP((a1 + 328)) & 1) == 0)
    {
      isZeroIP = CSIPacketAddress::isZeroIP((a1 + 256));
      v46 = *(a1 + 72);
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
      if (isZeroIP)
      {
        if (v47)
        {
          *buf = 136315138;
          *&buf[4] = "onlineWithConfigInfo";
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4Service: IPv4 address is empty", buf, 0xCu);
        }
      }

      else
      {
        if (v47)
        {
          CSIPacketAddress::operator std::string();
          v48 = buf[23] >= 0 ? buf : *buf;
          *v68 = 136315394;
          *&v68[4] = "onlineWithConfigInfo";
          *&v68[12] = 2080;
          *&v68[14] = v48;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4Service: IPv4 address is %s", v68, 0x16u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        *(a1 + 620) |= 1u;
      }

      if (CSIPacketAddress::isZeroIP((a1 + 328)))
      {
        v49 = *(a1 + 72);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "onlineWithConfigInfo";
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6Service: IPv6 address is empty", buf, 0xCu);
        }
      }

      else
      {
        v50 = CSIPacketAddress::maskToPrefix((a1 + 376));
        CSIPacketAddress::setPrefixLen((a1 + 328), v50);
        v51 = *(a1 + 72);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          CSIPacketAddress::operator std::string();
          v52 = buf[23] >= 0 ? buf : *buf;
          *v68 = 136315394;
          *&v68[4] = "onlineWithConfigInfo";
          *&v68[12] = 2080;
          *&v68[14] = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6Service: Original IPv6 address is %s", v68, 0x16u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        memset(buf, 0, 24);
        sub_10077AE30(buf);
        CSIPacketAddress::setIPv6InterfaceID((a1 + 328), buf);
        v53 = *(a1 + 72);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          CSIPacketAddress::operator std::string();
          v54 = (v68[23] & 0x80u) == 0 ? v68 : *v68;
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "onlineWithConfigInfo";
          WORD2(__p[1]) = 2080;
          *(&__p[1] + 6) = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6Service: Auto generated IPv6 address is %s", __p, 0x16u);
          if (v68[23] < 0)
          {
            operator delete(*v68);
          }
        }

        *(a1 + 620) |= 2u;
      }

      v55 = *(a1 + 616) & *(a1 + 620);
      *(a1 + 616) = v55;
      v56 = *(a1 + 72);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = asString();
        v58 = asString();
        *buf = 136315650;
        *&buf[4] = "onlineWithConfigInfo";
        *&buf[12] = 2080;
        *&buf[14] = v57;
        *&buf[22] = 2080;
        *&buf[24] = v58;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I %s: fIPFamilyRequested changed to %s; fIPFamilyConnected is %s", buf, 0x20u);
        v55 = *(a1 + 616);
      }

      if (v55)
      {
        v59 = *(a1 + 712);
        if ((v59 & 1) == 0)
        {
          *(a1 + 712) = v59 | 1;
          sub_100778F7C(a1);
        }
      }

      else
      {
        sub_10076B24C(a1, "empty fIPFamilyRequested when online");
      }
    }
  }
}

void sub_10077ACA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10077AD7C(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(a1 + 752);
  v3 = (*(*(a1 + 32) + 664))(a1 + 32);
  if (v2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2 != 0;
  }

  if ((*(*v1 + 672))(v1))
  {
    return v5 | 4u;
  }

  else
  {
    return v5;
  }
}

void sub_10077AE30(CSIPacketAddress *a1@<X8>)
{
  *v8 = 0;
  v9 = 0;
  v7.__padding_ = 0;
  sub_100344DA8(&v7);
  v2 = std::random_device::operator()(&v7);
  v3 = v2 + ((v2 / 0x7FFFFFFF) | ((v2 / 0x7FFFFFFF) << 31));
  if (v3 <= 1)
  {
    v3 = 1;
  }

  v6 = v3;
  v5 = -256;
  for (i = 8; i != 16; ++i)
  {
    v8[i] = sub_1007832D8(&v5, &v6, &v5);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  CSIPacketAddress::CSIPacketAddress(a1);
  CSIPacketAddress::setIPv6Address(a1, v8, 0x10uLL);
  std::random_device::~random_device(&v7);
}

uint64_t sub_10077AF4C(_DWORD *a1)
{
  v1 = a1[56];
  if (v1 == 5 || v1 == 3)
  {
    return (a1[154] & a1[155]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10077AF74(void *a1)
{
  v1 = (a1 + *(*a1 - 224));
  v2 = v1[56];
  if (v2 == 5 || v2 == 3)
  {
    return (v1[154] & v1[155]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10077B03C(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 792) = 1;
  *(v2 + 616) = *(a1 + 48);
  sub_10076A498(v2, 2);
  v3 = *(a1 + 40);

  return sub_100775FF4(v2, v3);
}

void sub_10077B094(PersonalitySpecificImpl *this, int a2)
{
  if ((*(this + 797) & 1) != 0 || a2 != 14 && a2 != 80005 && a2 != 24)
  {
    return;
  }

  __p = 0;
  v24 = 0;
  v25 = 0;
  PersonalitySpecificImpl::simSlot(this);
  PersonalityIdFromSlotIdEx();
  v22 = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v22 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v22 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_13;
  }

  v5 = xpc_null_create();
LABEL_12:
  v22 = v5;
LABEL_13:
  xpc_release(v4);
  v20 = xpc_int64_create(106);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  ctu::cf::assign();
  *buf = *v26;
  v29 = v27;
  v6 = v26[0];
  if (v27 >= 0)
  {
    v6 = buf;
  }

  v19[0] = &v22;
  v19[1] = v6;
  sub_10000F688(v19, &v20, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v20);
  v20 = 0;
  *buf = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v7) == &_xpc_type_dictionary)
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  *buf = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *buf = xpc_null_create();
  }

  xpc_release(v8);
  ServiceMap = Registry::getServiceMap(*(this + 10));
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
  v26[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, v26);
  if (!v15)
  {
    v16 = 0;
LABEL_36:
    std::mutex::unlock(v10);
    v17 = 0;
    v18 = 1;
    if (!v16)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v16 = v15[3];
  v17 = v15[4];
  if (!v17)
  {
    goto LABEL_36;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v18 = 0;
  if (!v16)
  {
    goto LABEL_41;
  }

LABEL_37:
  v26[0] = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v26[0] = xpc_null_create();
  }

  (*(*v16 + 40))(v16, 45, v26, buf);
  xpc_release(v26[0]);
LABEL_41:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  xpc_release(*buf);
  xpc_release(v22);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }
}

void sub_10077B594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t object, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10077B6AC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "handleDataContextIPActivated";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v3 = sub_10077BFD8(a1);
  v4 = *(a1 + 72);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    *&buf[4] = "handleDataContextIPActivated";
    v6 = "#I %s: installIPSecConnection successful";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    *&buf[4] = "handleDataContextIPActivated";
    v6 = "#I %s: installIPSecConnection failed";
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
LABEL_9:
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  v14 = a1 + 32;
  if (!v13)
  {
    std::mutex::unlock(v8);
    goto LABEL_24;
  }

  v16 = v13[3];
  v15 = v13[4];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v8);
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
    if (!v16)
    {
LABEL_23:
      sub_100004A34(v15);
      goto LABEL_24;
    }
  }

  else
  {
    std::mutex::unlock(v8);
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  (*(*v16 + 1128))(buf, v16);
  v17 = *buf;
  if (*buf)
  {
    v18 = PersonalitySpecificImpl::simSlot(a1);
    v19 = (*(*v14 + 40))(a1 + 32);
    (*(*v17 + 16))(v17, v18, v19);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v15)
  {
    goto LABEL_23;
  }

LABEL_24:
  (*(*v14 + 440))(buf, a1 + 32);
  if (*buf)
  {
    (*(*v14 + 440))(&v34, a1 + 32);
    v20 = (v34->__vftable[1].__on_zero_shared)(v34, 1);
    if (v35)
    {
      sub_100004A34(v35);
    }
  }

  else
  {
    v20 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v20)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    sub_10004EFD0(&v34, *(a1 + 720), *(a1 + 728), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 728) - *(a1 + 720)) >> 3));
    __p = 0;
    v32 = 0;
    v33 = 0;
    PersonalitySpecificImpl::simSlot(a1);
    PersonalityIdFromSlotIdEx();
    v21 = *(a1 + 72);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleDataContextIPActivated";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N %s: No viable personality is found in PersonalityShop", buf, 0xCu);
    }

    v22 = v34;
    v23 = v35;
    v24 = *(a1 + 72);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v22 == v23)
    {
      if (v25)
      {
        *buf = 136315138;
        *&buf[4] = "handleDataContextIPActivated";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s: No proxy address found", buf, 0xCu);
      }
    }

    else
    {
      if (v25)
      {
        v26 = *(a1 + 796);
        *&buf[4] = "handleDataContextIPActivated";
        *buf = 136315650;
        if (v26)
        {
          v27 = " in handover";
        }

        else
        {
          v27 = "";
        }

        *&buf[12] = 2048;
        *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3);
        v38 = 2080;
        v39 = v27;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s: %lu Proxies%s. Posting event", buf, 0x20u);
      }

      sub_100356BE0(v14, buf);
      (*(**buf + 352))(*buf, 1, &v34, *(a1 + 796));
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }

    *buf = &v34;
    sub_1000087B4(buf);
  }

  sub_100009970(a1 + 688, *(a1 + 696));
  *(a1 + 688) = a1 + 696;
  *(a1 + 696) = 0u;
  sub_100356BE0(v14, buf);
  v28 = *buf;
  (*(*a1 + 16))(&v29, a1);
  (*(*v28 + 144))(v28, 1, &v29);
  if (v30)
  {
    sub_100004A34(v30);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10077BED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  __p = &a19;
  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_10077BFD8(uint64_t a1)
{
  v2 = (a1 + 200);
  if (!*(a1 + 200) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_10177D2C4()))
  {
    __TUAssertTrigger();
  }

  if (!*(a1 + 184))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 240), @"OutgoingInterface");
  v4 = Value;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID() && ((*(**v2 + 56))(*v2, v4) & 1) == 0)
    {
      v15 = *(a1 + 72);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "installIPSecConnection";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface setDelegateInterface failed", buf, 0xCu);
      }

      return 0;
    }
  }

  if (CSIPacketAddress::isZeroIP((a1 + 256)))
  {
    goto LABEL_40;
  }

  v45 = 0;
  CSIPacketAddress::operator std::string();
  if (SHIBYTE(v44) < 0)
  {
    sub_100005F2C(__p, v43[0], v43[1]);
  }

  else
  {
    *__p = *v43;
    v48 = v44;
  }

  v46 = 0;
  if (SHIBYTE(v48) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v48;
  }

  v49 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v46;
    v46 = v49;
    v38[0] = v6;
    sub_100005978(v38);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v45 = v46;
  v46 = 0;
  sub_100005978(&v46);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  v42 = 0;
  CSIPacketAddress::operator std::string();
  if (SHIBYTE(v41) < 0)
  {
    sub_100005F2C(__p, v40[0], v40[1]);
  }

  else
  {
    *__p = *v40;
    v48 = v41;
  }

  v46 = 0;
  if (SHIBYTE(v48) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v48;
  }

  v49 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v46;
    v46 = v49;
    v38[0] = v7;
    sub_100005978(v38);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v42 = v46;
  v46 = 0;
  sub_100005978(&v46);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if ((*(**v2 + 64))(*v2, v45, v42))
  {
    sub_100005978(&v42);
    sub_100005978(&v45);
LABEL_40:
    if (CSIPacketAddress::isZeroIP((a1 + 328)))
    {
      v8 = kCFAllocatorDefault;
      goto LABEL_81;
    }

    v45 = 0;
    CSIPacketAddress::operator std::string();
    if (SHIBYTE(v37) < 0)
    {
      sub_100005F2C(__p, v36[0], v36[1]);
    }

    else
    {
      *__p = *v36;
      v48 = v37;
    }

    v46 = 0;
    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v48;
    }

    v49 = 0;
    v8 = kCFAllocatorDefault;
    if (ctu::cf::convert_copy())
    {
      v16 = v46;
      v46 = v49;
      v38[0] = v16;
      sub_100005978(v38);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v45 = v46;
    v46 = 0;
    sub_100005978(&v46);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[0]);
    }

    v42 = 0;
    CSIPacketAddress::operator std::string();
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(__p, v34[0], v34[1]);
    }

    else
    {
      *__p = *v34;
      v48 = v35;
    }

    v46 = 0;
    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v48;
    }

    v49 = 0;
    if (ctu::cf::convert_copy())
    {
      v17 = v46;
      v46 = v49;
      v38[0] = v17;
      sub_100005978(v38);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v42 = v46;
    v46 = 0;
    sub_100005978(&v46);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    if ((*(**v2 + 64))(*v2, v45, v42))
    {
      sub_100005978(&v42);
      sub_100005978(&v45);
LABEL_81:
      __p[0] = 0;
      Mutable = CFArrayCreateMutable(v8, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v19 = __p[0];
        __p[0] = Mutable;
        *buf = v19;
        sub_1000279DC(buf);
        v20 = *(a1 + 280);
        v21 = *(a1 + 288);
        while (v20 != v21)
        {
          sub_10077E9C4(__p[0], v20);
          v20 = (v20 + 24);
        }

        v22 = *(a1 + 352);
        v23 = *(a1 + 360);
        while (v22 != v23)
        {
          sub_10077E9C4(__p[0], v22);
          v22 = (v22 + 24);
        }

        if (CFArrayGetCount(__p[0]) >= 1)
        {
          v24 = *(a1 + 72);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "installIPSecConnection";
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface setDNSServers with dnses", buf, 0xCu);
          }

          v38[0] = "installIPSecConnection";
          *buf = off_101E7C308;
          *&buf[8] = a1;
          *&buf[16] = v38;
          v51 = buf;
          logger::CFTypeRefLogger();
          sub_100007E44(buf);
          if (((*(**v2 + 72))(*v2, __p[0]) & 1) == 0)
          {
            v32 = *(a1 + 72);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "installIPSecConnection";
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface setDNSServers failed with dnses", buf, 0xCu);
            }

            v38[0] = "installIPSecConnection";
            *buf = off_101E7C388;
            *&buf[8] = a1;
            *&buf[16] = v38;
            v51 = buf;
            logger::CFTypeRefLogger();
            sub_100007E44(buf);
            goto LABEL_116;
          }
        }
      }

      if ((*(**v2 + 80))(*v2, 1))
      {
        if ((*(**v2 + 40))())
        {
          v25 = 1;
LABEL_117:
          sub_1000279DC(__p);
          return v25;
        }

        v26 = *(a1 + 72);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "installIPSecConnection";
          v27 = "#I %s: VirtualInterface updateAdHocService failed";
          goto LABEL_112;
        }
      }

      else
      {
        v26 = *(a1 + 72);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "installIPSecConnection";
          v27 = "#I %s: VirtualInterface setRankNever failed";
LABEL_112:
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
        }
      }

LABEL_116:
      v25 = 0;
      goto LABEL_117;
    }

    v9 = *(a1 + 72);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_108;
    }

    CSIPacketAddress::operator std::string();
    v28 = SHIBYTE(v48);
    v29 = __p[0];
    CSIPacketAddress::operator std::string();
    v30 = __p;
    if (v28 < 0)
    {
      v30 = v29;
    }

    if (v39 >= 0)
    {
      v31 = v38;
    }

    else
    {
      v31 = v38[0];
    }

    *buf = 136315650;
    *&buf[4] = "installIPSecConnection";
    *&buf[12] = 2080;
    *&buf[14] = v30;
    *&buf[22] = 2080;
    v51 = v31;
    v14 = "#I %s: VirtualInterface addAddress for v6 with (%s, %s) failed";
    goto LABEL_104;
  }

  v9 = *(a1 + 72);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v10 = SHIBYTE(v48);
    v11 = __p[0];
    CSIPacketAddress::operator std::string();
    v12 = __p;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v39 >= 0)
    {
      v13 = v38;
    }

    else
    {
      v13 = v38[0];
    }

    *buf = 136315650;
    *&buf[4] = "installIPSecConnection";
    *&buf[12] = 2080;
    *&buf[14] = v12;
    *&buf[22] = 2080;
    v51 = v13;
    v14 = "#I %s: VirtualInterface addAddress for v4 with (%s, %s) failed";
LABEL_104:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v14, buf, 0x20u);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_108:
  sub_100005978(&v42);
  sub_100005978(&v45);
  return 0;
}

void sub_10077C9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, const void *a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, const void *a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a30);
  sub_100005978(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_10077CB80(uint64_t a1, int a2)
{
  v3 = 400;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v4 = (*(a1 + 620) & 2) == 0;
      v3 = 328;
LABEL_11:
      if (v4)
      {
        v3 = 400;
      }

      return a1 + v3;
    }

    if (a2 != 3)
    {
      return a1 + v3;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return a1 + v3;
    }

    v4 = (*(a1 + 620) & 1) == 0;
    v3 = 256;
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10177D36C();
  }

  v3 = 400;
  return a1 + v3;
}

uint64_t sub_10077CC80(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (*(a1 + 620))
        {
          return a1 + 280;
        }

        goto LABEL_12;
      }

      return sGetEmptyAddrs();
    }

LABEL_8:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10177D36C();
    }

    return sGetEmptyAddrs();
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      return sGetEmptyAddrs();
    }

    goto LABEL_8;
  }

  if ((*(a1 + 620) & 2) == 0)
  {
LABEL_12:

    return sGetEmptyAddrs();
  }

  return a1 + 352;
}

void sub_10077CD2C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = "";
  *(a1 + 16) = "";
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  *(a1 + 32) = 1;
}

void sub_10077CDFC(uint64_t a1, int a2, int a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v20 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v20);
  if (!v12)
  {
    std::mutex::unlock(v7);
    return;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v7);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    if (!v14)
    {
LABEL_21:
      sub_100004A34(v13);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v7);
    if (!v14)
    {
      return;
    }
  }

  v20 = 0;
  v21 = 0;
  (*(*v14 + 1128))(&v20, v14);
  v15 = v20;
  if (v20)
  {
    v16 = a1 + 32;
    if (a2 && a3)
    {
      v17 = PersonalitySpecificImpl::simSlot(a1);
      v18 = (*(*v16 + 40))(a1 + 32);
      v19 = (*v15 + 32);
    }

    else
    {
      if (a2 || *(a1 + 745) != 1)
      {
        goto LABEL_18;
      }

      v17 = PersonalitySpecificImpl::simSlot(a1);
      v18 = (*(*v16 + 40))(a1 + 32);
      v19 = (*v15 + 40);
    }

    (*v19)(v15, v17, v18);
  }

LABEL_18:
  *(a1 + 745) = 0;
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v13)
  {
    goto LABEL_21;
  }
}

void sub_10077D040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077D0C0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 628);
    v4 = *(a1 + 624);
    *buf = 136315650;
    *&buf[4] = "checkIPConfigTimer";
    *&buf[12] = 1024;
    *&buf[14] = v3;
    *&buf[18] = 1024;
    *&buf[20] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: succeededFamily = %d, requestedFamily = %d", buf, 0x18u);
  }

  v5 = *(a1 + 628);
  v6 = *(a1 + 624);
  v7 = *(a1 + 72);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 == v6)
  {
    if (v8)
    {
      *buf = 136315138;
      *&buf[4] = "checkIPConfigTimer";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: All requested ipFamilies are configed", buf, 0xCu);
    }

    v9 = *(a1 + 752);
    *(a1 + 752) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    sub_10077B6AC(a1);
    sub_100004AA0(buf, (a1 + 40));
    v11 = *buf;
    v10 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1174405120;
    v13[2] = sub_10077D3A4;
    v13[3] = &unk_101E7A658;
    v13[4] = a1;
    v13[5] = v11;
    v14 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 0;
    v16 = 0;
    sub_100004AA0(&v15, (a1 + 40));
    v12 = *(a1 + 56);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_100782608;
    v18 = &unk_101E7C248;
    v20 = v15;
    v21 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v13;
    dispatch_async(v12, buf);
    if (v21)
    {
      sub_100004A34(v21);
    }

    if (v16)
    {
      sub_100004A34(v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else if (v8)
  {
    *buf = 136315138;
    *&buf[4] = "checkIPConfigTimer";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: still waiting for another IPFamily's config", buf, 0xCu);
  }
}

void sub_10077D398(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10077D3A4(void *a1)
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
        sub_100356BE0(v3 + 32, &v8);
        v6 = v8;
        v7 = otherContextType();
        (*(*v6 + 344))(v6, v7);
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10077D47C(uint64_t a1, CSIPacketAddress *a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315138;
    *&__p[4] = "ipv6ServiceUp";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: start", __p, 0xCu);
  }

  if ((~*(a1 + 712) & 0xFLL) == 0)
  {
    if (*(a1 + 752))
    {
      if ((CSIPacketAddress::isZeroIP(a2) & 1) == 0)
      {
        CSIPacketAddress::operator=();
      }

      v5 = *(a1 + 72);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        CSIPacketAddress::operator std::string();
        if (v9 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = *__p;
        }

        *buf = 136315394;
        v11 = "ipv6ServiceUp";
        v12 = 2080;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6 Interface is up with address %s", buf, 0x16u);
        if (v9 < 0)
        {
          operator delete(*__p);
        }
      }

      *(a1 + 628) |= 2u;
      sub_10077D0C0(a1);
    }

    else
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315138;
        *&__p[4] = "ipv6ServiceUp";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6 has configured or fIPConfigTimer has been triggered already", __p, 0xCu);
      }
    }
  }
}

void sub_10077D670(uint64_t a1, CSIPacketAddress *a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315138;
    *&__p[4] = "ipv4ServiceUp";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: start", __p, 0xCu);
  }

  if ((~*(a1 + 712) & 0xFLL) == 0)
  {
    if (*(a1 + 752))
    {
      if ((CSIPacketAddress::isZeroIP(a2) & 1) == 0)
      {
        CSIPacketAddress::operator=();
      }

      v5 = *(a1 + 72);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        CSIPacketAddress::operator std::string();
        if (v9 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = *__p;
        }

        *buf = 136315394;
        v11 = "ipv4ServiceUp";
        v12 = 2080;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4 Interface is up with address %s", buf, 0x16u);
        if (v9 < 0)
        {
          operator delete(*__p);
        }
      }

      *(a1 + 628) |= 1u;
      sub_10077D0C0(a1);
    }

    else
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315138;
        *&__p[4] = "ipv4ServiceUp";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4 has configured or fIPv4ConfigTimer has been triggered already", __p, 0xCu);
      }
    }
  }
}

uint64_t sub_10077D918(uint64_t a1)
{
  v2 = a1 + 200;
  if (!*(a1 + 200) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_10177D3F0()))
  {
    __TUAssertTrigger();
  }

  if (*(a1 + 184) && *(a1 + 192))
  {
    v3 = *(a1 + 432);
    if (v3)
    {
      theArray = 0;
      *buf = CFDictionaryGetValue(v3, @"TrafficSelectorsLocal");
      sub_1001FA5E0(&theArray, buf);
      v70 = 0;
      *buf = CFDictionaryGetValue(*(a1 + 432), @"TrafficSelectorsRemote");
      sub_1001FA5E0(&v70, buf);
      if (theArray && v70)
      {
        Count = CFArrayGetCount(theArray);
        v5 = CFArrayGetCount(v70);
        if (Count)
        {
          v6 = v5;
          if (v5)
          {
            v7 = *(a1 + 216);
            if (!v7)
            {
              sub_1006FB7A0();
            }

            (*(*v7 + 16))(v7);
            v8 = CFDictionaryGetValue(*(a1 + 240), @"RemoteAddress");
            v9 = v8;
            if (v8)
            {
              v10 = CFGetTypeID(v8);
              if (v10 == CFStringGetTypeID())
              {
                v11 = v9;
              }

              else
              {
                v11 = 0;
              }
            }

            else
            {
              v11 = 0;
            }

            Mutable = 0;
            Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            v75 = 0;
            v75 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            theDict = 0;
            v16 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            theDict = v16;
            if (v11 && Mutable && v75 && v16)
            {
              CFDictionarySetValue(v16, @"ConditionType", @"RemoteAddressSubnet");
              CFDictionarySetValue(theDict, @"Address", v11);
              CFArrayAppendValue(Mutable, theDict);
              CFDictionarySetValue(v75, @"Result", @"Skip");
              v17 = v75;
              __p[0] = 0;
              *buf = 0;
              v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
              if (v18)
              {
                v19 = __p[0];
                __p[0] = v18;
                *buf = v19;
                sub_100029A48(buf);
              }

              value = __p[0];
              __p[0] = 0;
              sub_100029A48(__p);
              CFDictionarySetValue(v17, @"SkipOrder", value);
              sub_100029A48(&value);
              v20 = *(a1 + 72);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "installFirstChildSAPolicies";
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: NEPolicy to add:", buf, 0xCu);
                v20 = *(a1 + 72);
              }

              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "installFirstChildSAPolicies";
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: conditionsArray:", buf, 0xCu);
              }

              __p[0] = "installFirstChildSAPolicies";
              *buf = off_101E7C408;
              *&buf[8] = a1;
              v78 = __p;
              v79 = buf;
              logger::CFTypeRefLogger();
              sub_100007E44(buf);
              v21 = *(a1 + 72);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "installFirstChildSAPolicies";
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: resultDictionary:", buf, 0xCu);
              }

              __p[0] = "installFirstChildSAPolicies";
              *buf = off_101E7C488;
              *&buf[8] = a1;
              v78 = __p;
              v79 = buf;
              logger::CFTypeRefLogger();
              sub_100007E44(buf);
              (*(**(a1 + 216) + 32))(*(a1 + 216), 10, Mutable, v75, 0);
              sub_1000296E0(&theDict);
              sub_1000296E0(&v75);
              v22 = sub_1000279DC(&Mutable);
              if (capabilities::ct::getRadioModuleType(v22) == 2 && Count >= 1)
              {
                for (i = 0; i != Count; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
                  v25 = ValueAtIndex;
                  if (ValueAtIndex)
                  {
                    v26 = CFGetTypeID(ValueAtIndex);
                    if (v26 == CFDictionaryGetTypeID())
                    {
                      v27 = CFDictionaryGetValue(v25, @"TSProtocol");
                      v28 = v27;
                      if (v27 && (v29 = CFGetTypeID(v27), v29 == CFNumberGetTypeID()))
                      {
                        *buf = 0;
                        ctu::cf::assign(buf, v28, v30);
                        v62 = *buf;
                      }

                      else
                      {
                        v62 = 0;
                      }

                      v31 = CFDictionaryGetValue(v25, @"TSType");
                      v32 = v31;
                      if (v31)
                      {
                        v33 = CFGetTypeID(v31);
                        v34 = v33 == CFStringGetTypeID() ? v32 : 0;
                        cf1 = v34;
                      }

                      else
                      {
                        cf1 = 0;
                      }

                      v35 = CFDictionaryGetValue(v25, @"TSStartAddress");
                      v36 = v35;
                      if (v35)
                      {
                        v37 = CFGetTypeID(v35);
                        if (v37 == CFStringGetTypeID() && cf1 && v6 >= 1)
                        {
                          for (j = 0; j != v6; ++j)
                          {
                            v39 = CFArrayGetValueAtIndex(v70, j);
                            v40 = v39;
                            if (v39)
                            {
                              v41 = CFGetTypeID(v39);
                              if (v41 == CFDictionaryGetTypeID())
                              {
                                v42 = CFDictionaryGetValue(v40, @"TSProtocol");
                                v43 = v42;
                                if (v42 && (v44 = CFGetTypeID(v42), v44 == CFNumberGetTypeID()))
                                {
                                  *buf = 0;
                                  ctu::cf::assign(buf, v43, v45);
                                  v46 = *buf;
                                }

                                else
                                {
                                  v46 = 0;
                                }

                                v47 = CFDictionaryGetValue(v40, @"TSType");
                                v48 = v47;
                                if (v47)
                                {
                                  v49 = CFGetTypeID(v47);
                                  if (v49 == CFStringGetTypeID() && v62 == v46 && CFEqual(cf1, v48))
                                  {
                                    value = 0;
                                    v50 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                                    v68 = 0;
                                    value = v50;
                                    v51 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                    v67 = 0;
                                    v68 = v51;
                                    v52 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                    v66 = 0;
                                    v67 = v52;
                                    (*(**v2 + 88))(v64);
                                    if (SHIBYTE(v65) < 0)
                                    {
                                      sub_100005F2C(__p, v64[0], v64[1]);
                                    }

                                    else
                                    {
                                      *__p = *v64;
                                      v74 = v65;
                                    }

                                    theDict = 0;
                                    if (SHIBYTE(v74) < 0)
                                    {
                                      sub_100005F2C(buf, __p[0], __p[1]);
                                    }

                                    else
                                    {
                                      *buf = *__p;
                                      v78 = v74;
                                    }

                                    v75 = 0;
                                    if (ctu::cf::convert_copy())
                                    {
                                      v53 = theDict;
                                      theDict = v75;
                                      Mutable = v53;
                                      sub_100005978(&Mutable);
                                    }

                                    if (SHIBYTE(v78) < 0)
                                    {
                                      operator delete(*buf);
                                    }

                                    v66 = theDict;
                                    theDict = 0;
                                    sub_100005978(&theDict);
                                    if (SHIBYTE(v74) < 0)
                                    {
                                      operator delete(__p[0]);
                                    }

                                    if (SHIBYTE(v65) < 0)
                                    {
                                      operator delete(v64[0]);
                                    }

                                    if (value && v68 && v67 && v66)
                                    {
                                      v54 = CFDictionaryGetValue(*(a1 + 240), @"InternalInterface");
                                      v55 = v54;
                                      if (v54 && (v56 = CFGetTypeID(v54), v56 == CFStringGetTypeID()))
                                      {
                                        CFDictionarySetValue(v67, @"ConditionType", @"BoundInterface");
                                        v57 = @"InterfaceName";
                                      }

                                      else
                                      {
                                        CFDictionarySetValue(v67, @"ConditionType", @"LocalAddressSubnet");
                                        v57 = @"Address";
                                        v55 = v36;
                                      }

                                      CFDictionarySetValue(v67, v57, v55);
                                      CFArrayAppendValue(value, v67);
                                      CFDictionarySetValue(v68, @"Result", @"IPTunnel");
                                      CFDictionarySetValue(v68, @"TunnelInterface", v66);
                                      v58 = *(a1 + 72);
                                      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 136315138;
                                        *&buf[4] = "installFirstChildSAPolicies";
                                        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I %s: NEPolicy to add:", buf, 0xCu);
                                        v58 = *(a1 + 72);
                                      }

                                      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 136315138;
                                        *&buf[4] = "installFirstChildSAPolicies";
                                        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I %s: conditionsArray:", buf, 0xCu);
                                      }

                                      __p[0] = "installFirstChildSAPolicies";
                                      *buf = off_101E7C508;
                                      *&buf[8] = a1;
                                      v78 = __p;
                                      v79 = buf;
                                      logger::CFTypeRefLogger();
                                      sub_100007E44(buf);
                                      v59 = *(a1 + 72);
                                      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 136315138;
                                        *&buf[4] = "installFirstChildSAPolicies";
                                        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I %s: resultDictionary:", buf, 0xCu);
                                      }

                                      __p[0] = "installFirstChildSAPolicies";
                                      *buf = off_101E7C588;
                                      *&buf[8] = a1;
                                      v78 = __p;
                                      v79 = buf;
                                      logger::CFTypeRefLogger();
                                      sub_100007E44(buf);
                                      (*(**(a1 + 216) + 32))(*(a1 + 216), 100, value, v68, 0);
                                    }

                                    sub_100005978(&v66);
                                    sub_1000296E0(&v67);
                                    sub_1000296E0(&v68);
                                    sub_1000279DC(&value);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              (*(**(a1 + 216) + 24))(*(a1 + 216));
              v13 = 1;
              goto LABEL_106;
            }

            v60 = *(a1 + 72);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "installFirstChildSAPolicies";
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to create conditions and result", buf, 0xCu);
            }

            sub_1000296E0(&theDict);
            sub_1000296E0(&v75);
            sub_1000279DC(&Mutable);
LABEL_105:
            v13 = 0;
LABEL_106:
            sub_100010250(&v70);
            sub_100010250(&theArray);
            return v13;
          }
        }

        v14 = *(a1 + 72);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_105;
        }

        *buf = 136315138;
        *&buf[4] = "installFirstChildSAPolicies";
        v15 = "#I %s: Empty Local or Remote Traffic Selectors dictionary";
      }

      else
      {
        v14 = *(a1 + 72);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_105;
        }

        *buf = 136315138;
        *&buf[4] = "installFirstChildSAPolicies";
        v15 = "#I %s: No Local or Remote Traffic Selectors";
      }

      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      goto LABEL_105;
    }

    v12 = *(a1 + 72);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "installFirstChildSAPolicies";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: No Traffic Selectors dictionary", buf, 0xCu);
    }
  }

  return 0;
}

void sub_10077E628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, int a34, const void *a35, const void *a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  sub_100010250(&a35);
  sub_100010250(&a36);
  _Unwind_Resume(a1);
}

void sub_10077E784(void *a1)
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
          v8 = 136315138;
          v9 = "checkConnectedConditions_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4 fIPConfigTimer expired", &v8, 0xCu);
        }

        v7 = *(v3 + 752);
        *(v3 + 752) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        sub_10077B6AC(v3);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10077E8A4(void *a1)
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
          v8 = 136315138;
          v9 = "checkConnectedConditions_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4 or IPv6 fIPConfigTimer expired", &v8, 0xCu);
        }

        v7 = *(v3 + 752);
        *(v3 + 752) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        sub_10077B6AC(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10077E9C4(__CFArray *a1, CSIPacketAddress *this)
{
  result = CSIPacketAddress::isZeroIP(this);
  if ((result & 1) == 0)
  {
    CSIPacketAddress::operator std::string();
    if (SHIBYTE(v7) < 0)
    {
      sub_100005F2C(__p, v6[0], v6[1]);
    }

    else
    {
      *__p = *v6;
      v11 = v7;
    }

    v9 = 0;
    if (SHIBYTE(v11) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v13 = v11;
    }

    v14 = 0;
    if (ctu::cf::convert_copy())
    {
      v4 = v9;
      v9 = v14;
      v15 = v4;
      sub_100005978(&v15);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__dst);
    }

    v5 = v9;
    v8 = v9;
    v9 = 0;
    sub_100005978(&v9);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }

    CFArrayAppendValue(a1, v5);
    return sub_100005978(&v8);
  }

  return result;
}

void sub_10077EAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10077EB54(void *a1, int a2)
{
  v4 = a1 + 4;
  if ((*(a1[4] + 136))(a1 + 4, 3))
  {
    v5 = a1[9];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "handOverToOtherOnline";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Handover to other context, uninstall policies", &v8, 0xCu);
    }

    v6 = a1[27];
    if (v6)
    {
      a1[27] = 0;
      (*(*v6 + 8))(v6);
    }
  }

  return sub_100356AD4(v4, a2);
}

uint64_t sub_10077EC9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "handOverToOtherDone";
    v11 = 2080;
    v12 = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Handover is done on %s", &v9, 0x16u);
  }

  v5 = *(a1 + 32);
  *(a1 + 792) = 0;
  if (!(*(v5 + 136))(a1 + 32, a2) || *(a1 + 746) != 1)
  {
    return sub_100356C44((a1 + 32), a2);
  }

  sub_10076B24C(a1, "Handover is done");
  (*(*(a1 + 32) + 648))(a1 + 32, *(a1 + 620), 0);
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    v9 = 136315394;
    v10 = "handOverToOtherDone";
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: Finish the deactivation on %s", &v9, 0x16u);
  }

  sub_100777D40(a1);
  sub_1000869A8(a1);
  return 1;
}

uint64_t sub_10077EE9C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "handOverToOtherFailed";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: Handover to BB Context failed", &v6, 0xCu);
  }

  if ((*(*(a1 + 32) + 136))(a1 + 32, 3) && *(a1 + 746) == 1)
  {
    if (*(a1 + 747) == 1)
    {
      v3 = *(a1 + 72);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "handOverToOtherFailed";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: Handover failed, tell SD to de-register", &v6, 0xCu);
      }

      sub_100083E9C(&event::data::controlServiceOnLowPowerModeTransition, 1);
    }

    else
    {
      sub_10076B24C(a1, "handover to cellular failed");
      v4 = *(a1 + 72);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "handOverToOtherFailed";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Finish the deactivation", &v6, 0xCu);
      }

      sub_100777D40(a1);
    }
  }

  return 1;
}

uint64_t sub_10077F0B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 72);
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

    v6 = 136315394;
    v7 = "activationOfOtherDone";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: Activation of other context is done for %s", &v6, 0x16u);
  }

  return 1;
}

uint64_t sub_10077F230(uint64_t a1)
{
  if (*(a1 + 224) == 2)
  {
    if (*(a1 + 792) & 1) != 0 || (*(a1 + 793))
    {
      v1 = 1;
    }

    else
    {
      v1 = *(a1 + 794);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_10077F268(void *a1)
{
  v1 = a1 + *(*a1 - 512);
  if (*(v1 + 56) == 2)
  {
    if (v1[792] & 1) != 0 || (v1[793])
    {
      v2 = 1;
    }

    else
    {
      v2 = v1[794];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10077F2BC(uint64_t a1)
{
  if (*(a1 + 192) == 2)
  {
    if (*(a1 + 760) & 1) != 0 || (*(a1 + 761))
    {
      v1 = 1;
    }

    else
    {
      v1 = *(a1 + 762);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_10077F2F4(uint64_t a1, int a2, std::string **a3)
{
  v4 = a2;
  *(a1 + 744) = a2;
  v6 = (a1 + 664);
  if (v6 == a3)
  {
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_100008234(v6, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    if ((*(a1 + 744) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v7 = *(a1 + 768);
  *(a1 + 768) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

LABEL_7:
  if (*(a1 + 632) != 1)
  {
    v9 = *(a1 + 72);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = asStringBool(*(a1 + 744));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
    v11 = "#I %s: Not over wifi, ignore wifi changed to %s.";
    goto LABEL_13;
  }

  v8 = *(a1 + 224);
  if (v8 == 5)
  {
    v9 = *(a1 + 72);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v10 = asStringBool(*(a1 + 744));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
    v11 = "#I %s: in process of MOBIKE handover, ignore wifi changed to %s.";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &buf, 0x16u);
    return;
  }

  if (v8 & 0xFFFFFFFE) != 2 || (v4)
  {
    v19 = *(a1 + 663);
    if (v19 < 0)
    {
      if (!*(a1 + 648))
      {
        goto LABEL_90;
      }
    }

    else if (!*(a1 + 663))
    {
      goto LABEL_90;
    }

    v20 = (a1 + 640);
    v21 = *a3;
    v22 = a3[1];
    if (*a3 != v22)
    {
      if (v19 >= 0)
      {
        v23 = *(a1 + 663);
      }

      else
      {
        v23 = *(a1 + 648);
      }

      if (v19 >= 0)
      {
        v24 = (a1 + 640);
      }

      else
      {
        v24 = *(a1 + 640);
      }

      while (1)
      {
        size = HIBYTE(v21->__r_.__value_.__r.__words[2]);
        v26 = size;
        if ((size & 0x80u) != 0)
        {
          size = v21->__r_.__value_.__l.__size_;
        }

        if (size == v23)
        {
          v27 = v26 >= 0 ? v21 : v21->__r_.__value_.__r.__words[0];
          if (!memcmp(v27, v24, v23))
          {
            break;
          }
        }

        if (++v21 == v22)
        {
          v21 = v22;
          break;
        }
      }
    }

    v28 = *(a1 + 72);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = a1 + 640;
      if ((v19 & 0x80000000) != 0)
      {
        v29 = *v20;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: Looking for %s in updated interface list", &buf, 0x16u);
      v22 = a3[1];
    }

    if (v21 != v22)
    {
      v30 = *(a1 + 72);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      if (*(a1 + 663) < 0)
      {
        v20 = *v20;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v20;
      v16 = "#I %s: Interface %s is still present in updated interface list";
      v17 = v30;
      v18 = 22;
      goto LABEL_52;
    }

    if (*(a1 + 184) && (*(a1 + 224) & 0xFFFFFFFE) == 2)
    {
      v31 = *(a1 + 72);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = a1 + 640;
        if (*(a1 + 663) < 0)
        {
          v32 = *v20;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s: interface %s is gone, treat it as network down", &buf, 0x16u);
      }

      sub_1007728F4(a1, *(a1 + 632));
    }

    v33 = *(a1 + 72);
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    v35 = *(a1 + 663);
    if (v34)
    {
      if (v35 < 0)
      {
        v20 = *v20;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v20;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s: Interface %s is gone, clear fActiveInterfaceName", &buf, 0x16u);
      LOBYTE(v35) = *(a1 + 663);
    }

    if ((v35 & 0x80) != 0)
    {
      **(a1 + 640) = 0;
      *(a1 + 648) = 0;
    }

    else
    {
      *(a1 + 640) = 0;
      *(a1 + 663) = 0;
    }
  }

  else
  {
    v13 = *(a1 + 72);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: wifi is gone", &buf, 0xCu);
    }

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 0x40000000;
    v57 = sub_10077FC34;
    v58 = &unk_101E7A6E8;
    v59 = a1;
    if (capabilities::ct::getBasebandBootStrategy(v14) != 2)
    {
      goto LABEL_25;
    }

    if (*(a1 + 768))
    {
      v15 = *(a1 + 72);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      v16 = "#I %s: the situation is already being handled in the timer";
      v17 = v15;
      v18 = 12;
LABEL_52:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &buf, v18);
      goto LABEL_90;
    }

    if (*(a1 + 224) != 3)
    {
LABEL_25:
      v57(v56);
      goto LABEL_90;
    }

    v36 = *(a1 + 72);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: WiFi disconnected but iRat and IPsec session has not figured out that yet. Let them some time to take control.", &buf, 0xCu);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    sub_1005A61F8(ServiceMap, &buf);
    isWatch = GestaltUtilityInterface::isWatch(buf.__r_.__value_.__l.__data_);
    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }

    if (isWatch)
    {
      v39 = 2500000;
      v40 = *(a1 + 72);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s: Wifi down timer change to 2500ms", &buf, 0xCu);
      }
    }

    else
    {
      v39 = 500000;
    }

    Registry::getTimerService(&buf, *(a1 + 80));
    v41 = buf.__r_.__value_.__r.__words[0];
    sub_10000501C(__p, "WiFi down timer");
    v42 = *(a1 + 56);
    object = v42;
    if (v42)
    {
      dispatch_retain(v42);
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 0x40000000;
    v51[2] = sub_10077FC80;
    v51[3] = &unk_101E7A710;
    v51[4] = v56;
    v51[5] = a1;
    aBlock = _Block_copy(v51);
    sub_100D23364(v41, __p, 1, v39, &object, &aBlock);
    v43 = *v60;
    *v60 = 0;
    v44 = *(a1 + 768);
    *(a1 + 768) = v43;
    if (v44)
    {
      (*(*v44 + 8))(v44);
      v45 = *v60;
      *v60 = 0;
      if (v45)
      {
        (*(*v45 + 8))(v45);
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

    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }
  }

LABEL_90:
  if ((*(a1 + 663) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 648))
    {
      return;
    }
  }

  else if (*(a1 + 663))
  {
    return;
  }

  v46 = *(a1 + 664);
  v47 = *(a1 + 672);
  if (v46 != v47)
  {
    v48 = (a1 + 640);
    while (1)
    {
      memset(&buf, 0, sizeof(buf));
      if (*(v46 + 23) < 0)
      {
        sub_100005F2C(&buf, *v46, *(v46 + 1));
      }

      else
      {
        v49 = *v46;
        buf.__r_.__value_.__r.__words[2] = *(v46 + 2);
        *&buf.__r_.__value_.__l.__data_ = v49;
      }

      if (a1 + 696 == sub_100007A6C(a1 + 688, &buf.__r_.__value_.__l.__data_))
      {
        break;
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v46 = (v46 + 24);
      if (v46 == v47)
      {
        return;
      }
    }

    std::string::operator=((a1 + 640), &buf);
    v50 = *(a1 + 72);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 663) < 0)
      {
        v48 = *v48;
      }

      *v60 = 136315394;
      *&v60[4] = "handleWifiAvailable";
      v61 = 2080;
      v62 = v48;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s: Interface is set to %s (1)", v60, 0x16u);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10077FBAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077FC34(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1007728F4(v1, *(v1 + 632));
  if (*(v1 + 663) < 0)
  {
    **(v1 + 640) = 0;
    *(v1 + 648) = 0;
  }

  else
  {
    *(v1 + 640) = 0;
    *(v1 + 663) = 0;
  }
}

uint64_t sub_10077FC80(uint64_t result)
{
  if (*(*(result + 40) + 224) == 3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_10077FCAC(uint64_t a1)
{
  v2 = a1 + 32;
  (*(*(a1 + 32) + 440))(&buf, a1 + 32);
  if (buf)
  {
    (*(*v2 + 440))(&v14, v2);
    v3 = (*(*v14 + 56))(v14, 1);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (v3 && *(a1 + 632) == 1)
  {
    v4 = *(a1 + 160);
    if (v4)
    {
      v4 = std::__shared_weak_count::lock(v4);
      v5 = v4;
      if (v4)
      {
        v4 = *(a1 + 152);
      }
    }

    else
    {
      v5 = 0;
    }

    if (((v4->__vftable[10].__on_zero_shared_weak)(v4) & 1) != 0 || !*(a1 + 184))
    {
      v9 = 0;
      if (!v5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v6 = *(a1 + 224);
      v7 = v6 > 5;
      v8 = 0x2Cu >> v6;
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      if (!v5)
      {
LABEL_22:
        if (v9)
        {
          v10 = *(a1 + 72);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = "handleEnterLowPower";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: WoW is not supported, treat low power mode as network disconnected", &buf, 0xCu);
          }

          *(a1 + 747) = 1;
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 0x40000000;
          v13[2] = sub_10077FFF4;
          v13[3] = &unk_101E7A730;
          v13[4] = a1;
          v14 = 0;
          v15 = 0;
          sub_100004AA0(&v14, (a1 + 40));
          v11 = *(a1 + 56);
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 1174405120;
          v17 = sub_100782608;
          v18 = &unk_101E7C248;
          v20 = v14;
          v21 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v19 = v13;
          dispatch_async(v11, &buf);
          if (v21)
          {
            sub_100004A34(v21);
          }

          if (v15)
          {
            sub_100004A34(v15);
          }
        }

        return *(a1 + 747);
      }
    }

    sub_100004A34(v5);
    goto LABEL_22;
  }

  return *(a1 + 747);
}

void sub_10077FFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100780028(void *a1)
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
        v6 = *(v3 + 784);
        *(v3 + 784) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = *(v3 + 72);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315138;
          v9 = "handleExitLowPower_block_invoke";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: KeepaliveOnWakePostponeTimer expired", &v8, 0xCu);
        }

        sub_10008725C(v3, 0);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10078014C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (*(*(a1 + 32) + 48))(a1 + 32);
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ------- %s (iWLAN) -------", buf, 0xCu);
    v2 = *(a1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_100772ED4(*(a1 + 224));
    v5 = asStringBool(*(a1 + 795));
    v6 = asStringBool(*(a1 + 792));
    v7 = asStringBool(*(a1 + 793));
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v5;
    *&buf[22] = 2080;
    v39 = v6;
    v40 = 2080;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fStatus = %s fIsEPDGResolutionFallbackEnabled = %s fInDNSResolving = %s fInWanIpAcqusition = %s", buf, 0x2Au);
    v2 = *(a1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asStringBool(*(a1 + 744));
    v9 = asStringBool(*(a1 + 745));
    v10 = asStringBool(*(a1 + 746));
    v11 = asStringBool(*(a1 + 747));
    *buf = 136315906;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    *&buf[22] = 2080;
    v39 = v10;
    v40 = 2080;
    v41 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fWiFiAvailable = %s fWaitingForKeepAliveReponse = %s fInDisconnectingHandover = %s fInHandlingLowPowerForNoWow = %s", buf, 0x2Au);
    v2 = *(a1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    if ((buf[23] & 0x80u) == 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    *v36 = 136315138;
    v37 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV4Address = %s", v36, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v2 = *(a1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v13 = (buf[23] & 0x80u) == 0 ? buf : *buf;
    *v36 = 136315138;
    v37 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV4NetMask = %s", v36, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v14 = *(a1 + 280);
  for (i = *(a1 + 288); v14 != i; v14 += 24)
  {
    v16 = *(a1 + 72);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      v17 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *v36 = 136315138;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV4Dns = %s", v36, 0xCu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v18 = *(a1 + 72);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    if ((buf[23] & 0x80u) == 0)
    {
      v19 = buf;
    }

    else
    {
      v19 = *buf;
    }

    *v36 = 136315138;
    v37 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV6Address = %s", v36, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v18 = *(a1 + 72);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v20 = (buf[23] & 0x80u) == 0 ? buf : *buf;
    *v36 = 136315138;
    v37 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV6NetMask = %s", v36, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v21 = *(a1 + 352);
  for (j = *(a1 + 360); v21 != j; v21 += 24)
  {
    v23 = *(a1 + 72);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      v24 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *v36 = 136315138;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV6Dns = %s", v36, 0xCu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v25 = *(a1 + 72);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = asStringBool(*(a1 + 424));
    *buf = 136315138;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fWanIPAddrAcquired = %s", buf, 0xCu);
    v25 = *(a1 + 72);
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v27 = (a1 + 640);
    if (*(a1 + 663) < 0)
    {
      v27 = *v27;
    }

    *buf = 136315138;
    *&buf[4] = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fActiveInterfaceName = %s fActiveInterfaces = {", buf, 0xCu);
  }

  v28 = *(a1 + 664);
  for (k = *(a1 + 672); v28 != k; v28 = (v28 + 24))
  {
    memset(buf, 0, sizeof(buf));
    if (*(v28 + 23) < 0)
    {
      sub_100005F2C(buf, *v28, *(v28 + 1));
    }

    else
    {
      v30 = *v28;
      *&buf[16] = *(v28 + 2);
      *buf = v30;
    }

    v31 = *(a1 + 72);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if ((buf[23] & 0x80u) == 0)
      {
        v32 = buf;
      }

      else
      {
        v32 = *buf;
      }

      *v36 = 136315138;
      v37 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s", v36, 0xCu);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v33 = *(a1 + 72);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = sub_10076CF88(a1);
    v35 = asStringBool(v34);
    *buf = 136315138;
    *&buf[4] = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t isOverCellularXlat = %s", buf, 0xCu);
    v33 = *(a1 + 72);
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
  }

  sub_100357590(a1 + 32);
}

void sub_1007808A0(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if ((a2 & 1) != 0 || (v5 = std::__shared_weak_count::lock(*(a1 + 160)), v6 = (*(**(a1 + 152) + 520))(*(a1 + 152)), sub_100004A34(v5), v6))
  {
    v8 = *(a1 + 72);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "getNetworkInterface";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: Using iCloud/IPsec configuration", &v11, 0xCu);
    }

    v9 = *(a1 + 200);
    if (v9)
    {
      (*(*v9 + 88))(v9);
      return;
    }

    goto LABEL_11;
  }

  if (!capabilities::ct::supportsVoiceCall(v7))
  {
LABEL_11:
    v10 = *(a1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "getNetworkInterface";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: No configuration found", &v11, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  sub_100357038(a1 + 32, a3);
}

_BYTE *sub_100780AC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    return (*(*v2 + 88))();
  }

  else
  {
    return sub_10000501C(a2, "");
  }
}

char *sub_100780B24@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[663] < 0)
  {
    return sub_100005F2C(a2, *(result + 80), *(result + 81));
  }

  *a2 = *(result + 40);
  *(a2 + 16) = *(result + 82);
  return result;
}

char *sub_100780B54@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[639] < 0)
  {
    return sub_100005F2C(a2, *(result + 77), *(result + 78));
  }

  *a2 = *(result + 616);
  *(a2 + 16) = *(result + 79);
  return result;
}