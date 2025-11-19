void sub_1004E7D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, char a54, void *a55)
{
  if (*(v55 - 153) < 0)
  {
    operator delete(*(v55 - 176));
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a42)
  {
    std::__shared_weak_count::__release_weak(a42);
  }

  sub_1000DD0AC(&a54, a55);
  if (*(v55 - 217) < 0)
  {
    operator delete(*(v55 - 240));
  }

  if (*(v55 - 185) < 0)
  {
    operator delete(*(v55 - 208));
  }

  _Unwind_Resume(a1);
}

_BYTE *entitlements::CEHTTPDriver::gba_getSipUri@<X0>(_BYTE *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 16);
  if (*(v2 + 376) == 1)
  {
    if ((*(v2 + 375) & 0x80000000) == 0)
    {
      v3 = *(v2 + 352);
      v4 = *(v2 + 368);
LABEL_8:
      *(a2 + 16) = v4;
      *a2 = v3;
      return this;
    }

    v7 = *(v2 + 352);
    v8 = *(v2 + 360);
  }

  else
  {
    if (*(v2 + 344) != 1)
    {
      return sub_10000501C(a2, "");
    }

    v6 = v2 + 264;
    v5 = *(v2 + 264);
    if (*(v6 + 8) == v5)
    {
      return sub_10000501C(a2, "");
    }

    if ((*(v5 + 23) & 0x80000000) == 0)
    {
      v3 = *v5;
      v4 = *(v5 + 2);
      goto LABEL_8;
    }

    v7 = *v5;
    v8 = *(v5 + 1);
  }

  return sub_100005F2C(a2, v7, v8);
}

void entitlements::CEHTTPDriver::gba_personalizedURL(_BYTE *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = a3->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (size >= 8)
  {
    v7 = v6 + size;
    v8 = v6;
    do
    {
      v9 = memchr(v8, 36, size - 7);
      if (!v9)
      {
        break;
      }

      if (*v9 == 0x6972752D70697324)
      {
        if (v9 != v7)
        {
          v10 = v9 - v6;
          if (v10 != -1)
          {
            entitlements::CEHTTPDriver::gba_getSipUri(a1, __p);
            if ((v14 & 0x80u) == 0)
            {
              v11 = __p;
            }

            else
            {
              v11 = __p[0];
            }

            if ((v14 & 0x80u) == 0)
            {
              v12 = v14;
            }

            else
            {
              v12 = __p[1];
            }

            std::string::replace(a3, v10, 8uLL, v11, v12);
            if (v14 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        return;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 >= 8);
  }
}

void sub_1004E809C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::gba_createAuthHeader(entitlements::CEHTTPDriver *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  sub_10000501C(&v19, "");
  entitlements::CEHTTPDriver::gba_getSipUri(this, v17);
  if ((v18 & 0x80u) == 0)
  {
    v4 = v17;
  }

  else
  {
    v4 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v5 = v18;
  }

  else
  {
    v5 = v17[1];
  }

  v6 = std::string::append(&v19, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v20, "", 1uLL);
  v9 = v8->__r_.__value_.__r.__words[0];
  v22[0] = v8->__r_.__value_.__l.__size_;
  *(v22 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
  v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_10000501C(__p, "X-3GPP-Intended-Identity");
  v21 = __p;
  v11 = sub_100416DA4(a2, __p);
  v12 = v11;
  if (*(v11 + 79) < 0)
  {
    operator delete(*(v11 + 56));
  }

  v13 = v22[0];
  *(v12 + 56) = v9;
  *(v12 + 64) = v13;
  *(v12 + 71) = *(v22 + 7);
  *(v12 + 79) = v10;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (*(this + 352) == 1)
  {
    sub_10000501C(&v20, "Authorization");
    v19.__r_.__value_.__r.__words[0] = &v20;
    v14 = sub_100416DA4(a2, &v20);
    std::string::operator=((v14 + 56), (this + 328));
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t entitlements::CEHTTPDriver::shouldSendSelfRegistrationUpdateInHeader_sync(entitlements::CEHTTPDriver *this)
{
  if (*(this + 30) || *(***(this + 16) + 49) - 1 < 2 || !sub_100A81E98(*(this + 18)))
  {
    return 0;
  }

  v2 = *(this + 14);
  if (!v2)
  {
    return 1;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *(this + 13);
  if (v5)
  {
    v31 = 0;
    sub_100004AA0(&v32, this + 1);
    *v28 = v32;
    (*(*v5 + 40))(__p, v5, v28, @"kEntitlementsSelfRegistrationUpdateImsi", 1);
    sub_100060DE8(&v31, __p);
    sub_10000A1EC(__p);
    if (v28[1])
    {
      sub_100004A34(v28[1]);
    }

    v30 = 0;
    sub_100004AA0(&v32, this + 1);
    *v28 = v32;
    (*(*v5 + 40))(__p, v5, v28, @"kEntitlementsSelfRegistrationUpdateImei", 1);
    sub_100060DE8(&v30, __p);
    sub_10000A1EC(__p);
    if (v28[1])
    {
      sub_100004A34(v28[1]);
    }

    v32 = 0uLL;
    v33 = 0;
    ctu::cf::assign();
    *v28 = v32;
    v29 = v33;
    v32 = 0uLL;
    v33 = 0;
    ctu::cf::assign();
    v27 = v33;
    *__p = v32;
    v6 = *(this + 16);
    v7 = *(v6 + 24);
    v8 = *(v6 + 39);
    v9 = SHIBYTE(v33);
    if (v33 >= 0)
    {
      v10 = HIBYTE(v33);
    }

    else
    {
      v10 = *(&v32 + 1);
    }

    if (v8 >= 0)
    {
      v7 = *(v6 + 39);
    }

    if (v10 == v7)
    {
      v11 = __p[0];
      v12 = v33 >= 0 ? __p : __p[0];
      v13 = v8 >= 0 ? (v6 + 16) : *(v6 + 16);
      if (!memcmp(v12, v13, v10))
      {
        v14 = SHIBYTE(v29);
        if (v29 >= 0)
        {
          v15 = HIBYTE(v29);
        }

        else
        {
          v15 = v28[1];
        }

        v16 = *(v6 + 87);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v6 + 72);
        }

        if (v15 == v16)
        {
          v18 = v28[0];
          v19 = v29 >= 0 ? v28 : v28[0];
          v22 = *(v6 + 64);
          v21 = v6 + 64;
          v20 = v22;
          v23 = (v17 >= 0 ? v21 : v20);
          if (!memcmp(v19, v23, v15))
          {
            if (v9 < 0)
            {
              operator delete(v11);
            }

            if (v14 < 0)
            {
              operator delete(v18);
            }

            sub_100005978(&v30);
            sub_100005978(&v31);
            v24 = 0;
            goto LABEL_43;
          }
        }
      }
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    sub_100005978(&v30);
    sub_100005978(&v31);
  }

  v24 = 1;
LABEL_43:
  sub_100004A34(v4);
  return v24;
}

void sub_1004E864C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_100005978(&a20);
  sub_100005978(&a21);
  sub_100004A34(v27);
  _Unwind_Resume(a1);
}

void sub_1004E86D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10000A1EC(&a9);
  if (a14)
  {
    sub_100004A34(a14);
  }

  JUMPOUT(0x1004E86C4);
}

void entitlements::CEHTTPDriver::createHeaders(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v67 = 0uLL;
  v68 = 0;
  sub_100A83334(*(a1 + 144), &v67);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1004F0DA4(buf, "Accept", "application/json");
  sub_1004F0DF8(&v76 + 4, "Accept-Encoding", "gzip");
  sub_1000DCEE0(v77, "Content-Type", "application/json");
  sub_1004F0E4C(v78, "Content-Encoding", "gzip");
  sub_1004F0EA0(v79, "x-protocol-version", &v67);
  sub_1000DF684(a3, buf, 5);
  for (i = 0; i != -240; i -= 48)
  {
    v7 = &buf[i];
    if (v79[i + 47] < 0)
    {
      operator delete(*(v7 + 27));
    }

    if (v7[215] < 0)
    {
      operator delete(*(v7 + 24));
    }
  }

  if (*(a1 + 172) != 5)
  {
    if (*(a2 + 16))
    {
      sub_100416AAC(a3, *a2, (a2 + 8));
    }

    if (entitlements::CEHTTPDriver::shouldSendSelfRegistrationUpdateInHeader_sync(a1))
    {
      v8 = objc_alloc_init(NSISO8601DateFormatter);
      v9 = [v8 stringFromDate:{+[NSDate date](NSDate, "date")}];

      sub_10000501C(buf, [v9 UTF8String]);
      sub_10000501C(&__p, "x-self-registration-update");
      __str.__r_.__value_.__r.__words[0] = &__p;
      v10 = sub_100416DA4(a3, &__p);
      v11 = v10;
      if (*(v10 + 79) < 0)
      {
        operator delete(*(v10 + 56));
      }

      *(v11 + 56) = *buf;
      *(v11 + 72) = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }
    }

    memset(&__p, 0, sizeof(__p));
    v12 = *(a1 + 144);
    PersonalityInfo::iccid(***(a1 + 128));
    sub_100A8228C(v12, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_10000501C(buf, "User-Agent");
      __str.__r_.__value_.__r.__words[0] = buf;
      v14 = sub_100416DA4(a3, buf);
      std::string::operator=((v14 + 56), &__p);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    *buf = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, buf);
    if (!v21)
    {
      std::mutex::unlock(v16);
      goto LABEL_41;
    }

    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      if (!v23)
      {
        goto LABEL_40;
      }
    }

    else
    {
      std::mutex::unlock(v16);
      if (!v23)
      {
        goto LABEL_41;
      }
    }

    memset(&__str, 0, sizeof(__str));
    (*(*v23 + 64))(&__str, v23);
    v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = __str.__r_.__value_.__l.__size_;
    }

    if (v24)
    {
      sub_10000501C(buf, "Accept-Language");
      v63.__r_.__value_.__r.__words[0] = buf;
      v25 = sub_100416DA4(a3, buf);
      std::string::operator=((v25 + 56), &__str);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v26 = *(a1 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = PersonalityInfo::logPrefix(***(a1 + 128));
        v28 = *(a1 + 160);
        *buf = 136315906;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v72 = v28;
        v73 = 2080;
        v74 = "";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sno language preferences", buf, 0x2Au);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (!v22)
    {
LABEL_41:
      if ((*(a1 + 857) & 1) == 0)
      {
        __assert_rtn("createHeaders", "CarrierEntitlementsHTTPCommandDriver.mm", 3291, "fLocationServiceEnabled->has_value()");
      }

      if (*(***(a1 + 128) + 49) || !sub_100A8345C(*(a1 + 144), *(a1 + 856)))
      {
        v39 = *(a1 + 40);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = PersonalityInfo::logPrefix(***(a1 + 128));
          v41 = *(a1 + 160);
          *buf = 136315906;
          *&buf[4] = v40;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v72 = v41;
          v73 = 2080;
          v74 = "";
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%scurrent location sharing not allowed", buf, 0x2Au);
        }

        goto LABEL_83;
      }

      memset(&__str, 0, sizeof(__str));
      dsema = dispatch_semaphore_create(0);
      v29 = Registry::getServiceMap(*(a1 + 48));
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
      *buf = v31;
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
          goto LABEL_54;
        }
      }

      else
      {
        v37 = 0;
      }

      std::mutex::unlock(v30);
      v36 = 0;
      v38 = 1;
LABEL_54:
      v42 = *(***(a1 + 128) + 52);
      v70[0] = off_101E53200;
      v70[1] = &__str;
      v70[2] = &dsema;
      v70[3] = v70;
      (*(*v37 + 208))(v37, v42, v70);
      sub_10002C178(v70);
      if ((v38 & 1) == 0)
      {
        sub_100004A34(v36);
      }

      v43 = dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_semaphore_wait(dsema, v43);
      v44 = *(a1 + 40);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = PersonalityInfo::logPrefix(***(a1 + 128));
        v46 = *(a1 + 160);
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        *&buf[4] = v45;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v72 = v46;
        v73 = 2080;
        v74 = "";
        v75 = 2080;
        v76 = p_str;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sobtained network MCC %s", buf, 0x34u);
      }

      memset(&v63, 0, sizeof(v63));
      v48 = Registry::getServiceMap(*(a1 + 48));
      v49 = v48;
      if (v50 < 0)
      {
        v51 = (v50 & 0x7FFFFFFFFFFFFFFFLL);
        v52 = 5381;
        do
        {
          v50 = v52;
          v53 = *v51++;
          v52 = (33 * v52) ^ v53;
        }

        while (v53);
      }

      std::mutex::lock(v48);
      *buf = v50;
      v54 = sub_100009510(&v49[1].__m_.__sig, buf);
      if (v54)
      {
        v56 = v54[3];
        v55 = v54[4];
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v49);
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v55);
          v57 = 0;
LABEL_68:
          (*(*v56 + 24))(&v63, v56, &__str);
          if ((v57 & 1) == 0)
          {
            sub_100004A34(v55);
          }

          v58 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v58 = v63.__r_.__value_.__l.__size_;
          }

          if (v58)
          {
            sub_10000501C(buf, "x-country-iso-code");
            v69 = buf;
            v59 = sub_100416DA4(a3, buf);
            std::string::operator=((v59 + 56), &v63);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            v60 = *(a1 + 40);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = PersonalityInfo::logPrefix(***(a1 + 128));
              v62 = *(a1 + 160);
              *buf = 136315906;
              *&buf[4] = v61;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              *&buf[22] = 2080;
              v72 = v62;
              v73 = 2080;
              v74 = "";
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%scurrent location is unknown", buf, 0x2Au);
            }
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (dsema)
          {
            dispatch_release(dsema);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

LABEL_83:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_85;
        }
      }

      else
      {
        v56 = 0;
      }

      std::mutex::unlock(v49);
      v55 = 0;
      v57 = 1;
      goto LABEL_68;
    }

LABEL_40:
    sub_100004A34(v22);
    goto LABEL_41;
  }

LABEL_85:
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }
}

void sub_1004E90CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, dispatch_object_t object, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_1000DD0AC(v46, *(v46 + 8));
  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

const void **entitlements::CEHTTPDriver::trackGetEntitlementRequests(uint64_t a1, uint64_t *a2)
{
  result = sub_10053588C(*a2, 29);
  if (result)
  {
    return result;
  }

  result = sub_1005376EC(*a2);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v101 = 0;
  std::to_string(&v100, *(*(a1 + 144) + 56));
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(buf, v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
  }

  else
  {
    buf[0] = v100;
  }

  v94.__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__p, buf[0].__r_.__value_.__l.__data_, buf[0].__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&buf[0].__r_.__value_.__l.__data_;
    *&v110 = *(&buf[0].__r_.__value_.__l + 2);
  }

  v95.__r_.__value_.__r.__words[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v94.__r_.__value_.__r.__words[0];
    v94.__r_.__value_.__r.__words[0] = v95.__r_.__value_.__r.__words[0];
    v97 = v6;
    sub_100005978(&v97);
  }

  if (SBYTE7(v110) < 0)
  {
    operator delete(__p[0]);
  }

  v101 = v94.__r_.__value_.__r.__words[0];
  v94.__r_.__value_.__r.__words[0] = 0;
  sub_100005978(&v94.__r_.__value_.__l.__data_);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  __p[0] = v101;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  sub_10005B328(&v97, __p, &__p[1], 1uLL);
  v96 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  __p[0] = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, __p);
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
      v17 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v17 = 1;
LABEL_25:
  v18 = kCarrierEntitlementsWalletDomain;
  (*(*v16 + 24))(buf, v16, ***(a1 + 128) + 24, @"DaysSinceEpoch", kCarrierEntitlementsWalletDomain, &v97, 3);
  sub_10010B240(&v96, &buf[0].__r_.__value_.__l.__data_);
  sub_10000A1EC(&buf[0].__r_.__value_.__l.__data_);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  v19 = [v96 unsignedLongLongValue];
  v20 = CFAbsoluteTimeGetCurrent() / 0x15180;
  v21 = &kLocationPopupShown_ptr;
  if (v20 == v19)
  {
    buf[0].__r_.__value_.__r.__words[0] = 0;
    v22 = Registry::getServiceMap(*(a1 + 48));
    v23 = v22;
    v24 = v9;
    if (v9 < 0)
    {
      v25 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v26 = 5381;
      do
      {
        v24 = v26;
        v27 = *v25++;
        v26 = (33 * v26) ^ v27;
      }

      while (v27);
    }

    std::mutex::lock(v22);
    __p[0] = v24;
    v28 = sub_100009510(&v23[1].__m_.__sig, __p);
    if (v28)
    {
      v30 = v28[3];
      v29 = v28[4];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v23);
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v29);
        v31 = 0;
LABEL_42:
        (*(*v30 + 24))(&v95, v30, ***(a1 + 128) + 24, @"ActionGetEntitlementToday", v18, &v97, 3);
        sub_10010B240(buf, &v95.__r_.__value_.__l.__data_);
        sub_10000A1EC(&v95.__r_.__value_.__l.__data_);
        if ((v31 & 1) == 0)
        {
          sub_100004A34(v29);
        }

        __p[0] = 0;
        ctu::cf::assign(__p, buf[0].__r_.__value_.__l.__data_, v42);
        v43 = __p[0];
        sub_100029A48(&buf[0].__r_.__value_.__l.__data_);
        v44 = v43 + 1;
        goto LABEL_50;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v23);
    v29 = 0;
    v31 = 1;
    goto LABEL_42;
  }

  v32 = Registry::getServiceMap(*(a1 + 48));
  v33 = v32;
  v34 = v9;
  if (v9 < 0)
  {
    v35 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
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
  __p[0] = v34;
  v38 = sub_100009510(&v33[1].__m_.__sig, __p);
  if (!v38)
  {
    v40 = 0;
    goto LABEL_46;
  }

  v40 = v38[3];
  v39 = v38[4];
  if (!v39)
  {
LABEL_46:
    std::mutex::unlock(v33);
    v39 = 0;
    v41 = 1;
    goto LABEL_47;
  }

  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v33);
  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = &kLocationPopupShown_ptr;
  sub_100004A34(v39);
  v41 = 0;
LABEL_47:
  (*(*v40 + 16))(v40, ***(a1 + 128) + 24, @"DaysSinceEpoch", [v21[239] numberWithUnsignedLongLong:v20], v18, &v97, 3, 0);
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v39);
  }

  v44 = 1;
LABEL_50:
  v45 = Registry::getServiceMap(*(a1 + 48));
  v46 = v45;
  if (v9 < 0)
  {
    v47 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v48 = 5381;
    do
    {
      v9 = v48;
      v49 = *v47++;
      v48 = (33 * v48) ^ v49;
    }

    while (v49);
  }

  std::mutex::lock(v45);
  __p[0] = v9;
  v50 = sub_100009510(&v46[1].__m_.__sig, __p);
  if (v50)
  {
    v52 = v50[3];
    v51 = v50[4];
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v46);
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v51);
      v53 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    v52 = 0;
  }

  std::mutex::unlock(v46);
  v51 = 0;
  v53 = 1;
LABEL_58:
  (*(*v52 + 16))(v52, ***(a1 + 128) + 24, @"ActionGetEntitlementToday", [v21[239] numberWithUnsignedLong:v44], v18, &v97, 3, 0);
  if ((v53 & 1) == 0)
  {
    sub_100004A34(v51);
  }

  if ((atomic_load_explicit(&qword_101FBA7E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA7E8))
  {
    *__p = *"\n";
    *&v110 = 100;
    qword_101FBA7D8 = 0;
    unk_101FBA7E0 = 0;
    qword_101FBA7D0 = 0;
    sub_1004F0F10(&qword_101FBA7D0, __p, &v110 + 8, 3uLL);
    __cxa_atexit(sub_1004EA208, &qword_101FBA7D0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA7E8);
  }

  v54 = qword_101FBA7D0;
  if (qword_101FBA7D0 != qword_101FBA7D8)
  {
    while (*v54 != v44)
    {
      if (++v54 == qword_101FBA7D8)
      {
        goto LABEL_64;
      }
    }

LABEL_66:
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    memset(v111, 0, sizeof(v111));
    *__p = 0u;
    sub_10000C320(__p);
    Count = CFArrayGetCount(v5);
    if (Count)
    {
      v57 = 0;
      v58 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v57);
        if (ValueAtIndex)
        {
          v60 = CFGetTypeID(ValueAtIndex);
          if (v60 == CFStringGetTypeID())
          {
            if ((v58 & 1) == 0)
            {
              sub_10000C030(&v110);
            }

            memset(buf, 0, 24);
            ctu::cf::assign();
            v95 = buf[0];
            sub_10000C030(&v110);
            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v95.__r_.__value_.__l.__data_);
            }

            v58 = 0;
          }
        }

        ++v57;
      }

      while (Count != v57);
    }

    v61 = *(a1 + 40);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v80 = PersonalityInfo::logPrefix(***(a1 + 128));
      v81 = *(a1 + 160);
      sub_10006EE70(&v110 + 8, &v95);
      v82 = (v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v95 : v95.__r_.__value_.__r.__words[0];
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136316418;
      *(buf[0].__r_.__value_.__r.__words + 4) = v80;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2080;
      buf[1].__r_.__value_.__r.__words[0] = v81;
      LOWORD(buf[1].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[1].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[1].__r_.__value_.__r.__words[2]) = 2048;
      *(&buf[1].__r_.__value_.__r.__words[2] + 4) = v44;
      WORD2(buf[2].__r_.__value_.__r.__words[0]) = 2082;
      *(buf[2].__r_.__value_.__r.__words + 6) = v82;
      _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "#E %s%s%s%s***** getEntitlement abuse, issued today %zu times, current contain:[%{public}s]", buf, 0x3Eu);
      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }
    }

    v62 = Registry::getServiceMap(*(a1 + 48));
    v63 = v62;
    if ((v64 & 0x8000000000000000) != 0)
    {
      v65 = (v64 & 0x7FFFFFFFFFFFFFFFLL);
      v66 = 5381;
      do
      {
        v64 = v66;
        v67 = *v65++;
        v66 = (33 * v66) ^ v67;
      }

      while (v67);
    }

    std::mutex::lock(v62);
    buf[0].__r_.__value_.__r.__words[0] = v64;
    v68 = sub_100009510(&v63[1].__m_.__sig, buf);
    if (v68)
    {
      v70 = v68[3];
      v69 = v68[4];
      if (v69)
      {
        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v63);
        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v69);
        v71 = 0;
LABEL_85:
        if (v70)
        {
          *&buf[0].__r_.__value_.__r.__words[1] = 0u;
          memset(&buf[1].__r_.__value_.__r.__words[2], 0, 32);
          v108 = 0u;
          v107 = 0u;
          memset(&buf[3], 0, sizeof(std::string));
          v106 = 23;
          qmemcpy(&buf[0].__r_.__value_.__r.__words[2] + 7, "\tCarrierEntitlements", 20);
          qmemcpy(buf, "Telephony", 9);
          *(&buf[1].__r_.__value_.__s + 23) = 19;
          sub_1000167D4(&buf[2], "too many getEntitlement requests", 0x20uLL);
          sub_10000501C(&v94, "action requested ");
          std::to_string(&v93, v44);
          if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = &v93;
          }

          else
          {
            v72 = v93.__r_.__value_.__r.__words[0];
          }

          if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v93.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v93.__r_.__value_.__l.__size_;
          }

          v74 = std::string::append(&v94, v72, size);
          v75 = *&v74->__r_.__value_.__l.__data_;
          v95.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
          *&v95.__r_.__value_.__l.__data_ = v75;
          v74->__r_.__value_.__l.__size_ = 0;
          v74->__r_.__value_.__r.__words[2] = 0;
          v74->__r_.__value_.__r.__words[0] = 0;
          v76 = std::string::append(&v95, " times within a day", 0x13uLL);
          v77 = v76->__r_.__value_.__r.__words[0];
          v104[0] = v76->__r_.__value_.__l.__size_;
          *(v104 + 7) = *(&v76->__r_.__value_.__r.__words[1] + 7);
          v78 = HIBYTE(v76->__r_.__value_.__r.__words[2]);
          v76->__r_.__value_.__l.__size_ = 0;
          v76->__r_.__value_.__r.__words[2] = 0;
          v76->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(buf[3].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[3].__r_.__value_.__l.__data_);
          }

          buf[3].__r_.__value_.__r.__words[0] = v77;
          buf[3].__r_.__value_.__l.__size_ = v104[0];
          *(&buf[3].__r_.__value_.__r.__words[1] + 7) = *(v104 + 7);
          *(&buf[3].__r_.__value_.__s + 23) = v78;
          if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v95.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          v106 |= 7uLL;
          sub_100D9EC48(__dst, buf);
          v103 = 0;
          (*(*v70 + 16))(v70, __dst, v102);
          sub_10010DF14(v102);
          if (v92 < 0)
          {
            operator delete(v91);
          }

          if (v90 < 0)
          {
            operator delete(v89);
          }

          if (v88 < 0)
          {
            operator delete(v87);
          }

          if (v86 < 0)
          {
            operator delete(v85);
          }

          if (v84 < 0)
          {
            operator delete(__dst[0]);
          }

          if (SBYTE7(v108) < 0)
          {
            operator delete(v107);
          }

          if (SHIBYTE(buf[3].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[3].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(buf[2].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[2].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[1].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[0].__r_.__value_.__l.__data_);
          }
        }

        if ((v71 & 1) == 0)
        {
          sub_100004A34(v69);
        }

        *&v110 = v79;
        if (SHIBYTE(v113) < 0)
        {
          operator delete(*(&v112 + 1));
        }

        std::locale::~locale(v111);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_125;
      }
    }

    else
    {
      v70 = 0;
    }

    std::mutex::unlock(v63);
    v69 = 0;
    v71 = 1;
    goto LABEL_85;
  }

LABEL_64:
  v55 = *(qword_101FBA7D8 - 8);
  if (v44 > v55 && !(v44 % v55))
  {
    goto LABEL_66;
  }

LABEL_125:
  sub_100029A48(&v96);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  return sub_100005978(&v101);
}

void sub_1004E9FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, const void *a37, void *__p, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, const void *a44)
{
  __cxa_guard_abort(&qword_101FBA7E8);
  sub_100029A48(&a37);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  sub_100005978(&a44);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EA208(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1004EA23C(void *a1, uint64_t *a2)
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
        v8 = *(v5 + 608);
        if (v8 && sub_1005358AC(v8))
        {
          sub_100552730(*(v5 + 608));
        }

        v9 = *a2;
        v10 = a2[1];
        v11[0] = v9;
        v11[1] = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        entitlements::CEHTTPDriver::handleHttpResponse_sync(v5, v11);
        if (v10)
        {
          sub_100004A34(v10);
        }
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1004EA328(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004EA34C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004EA3A4(uint64_t a1)
{
  v3 = a1 + 8;
  v2 = *a1;
  v30 = 0;
  v32 = 0u;
  v31 = &v32;
  LODWORD(v30) = *(***(v2 + 128) + 52);
  HIDWORD(v30) = 2;
  v29 = 1;
  v4 = sub_1004F190C(a1 + 8, &v29);
  v28 = 0;
  *buf = &v28;
  v5 = sub_1004FCB34(&v31, &v28) + 5;
  if (v5 != v4)
  {
    sub_1001122C4(v5, *v4, v4[1], v4[1] - *v4);
  }

  v29 = 2;
  v6 = sub_1004F190C(v3, &v29);
  v28 = 1;
  *buf = &v28;
  v7 = sub_1004FCB34(&v31, &v28) + 5;
  if (v7 != v6)
  {
    sub_1001122C4(v7, *v6, v6[1], v6[1] - *v6);
  }

  v8 = ***(v2 + 128);
  if (*(v8 + 49) == 3)
  {
    v23 = *(a1 + 32);
    if (*(v8 + 61) == 1)
    {
      sub_1004F1964(v2, v23);
    }

    else
    {
      sub_1004F1C64(v2, v23);
    }

    goto LABEL_26;
  }

  if (*(v8 + 49))
  {
    goto LABEL_26;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 48));
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
  if (!v15)
  {
    v17 = 0;
LABEL_20:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_21:
    sub_1004F1F78(v25, &v31);
    sub_100004AA0(buf, (v2 + 8));
    v24 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v24);
    }

    v33 = 0;
    operator new();
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (v17)
  {
    goto LABEL_21;
  }

LABEL_13:
  v19 = *(v2 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PersonalityInfo::logPrefix(***(v2 + 128));
    v21 = *(v2 + 160);
    *buf = 136315906;
    *&buf[4] = v20;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v35 = 2080;
    v36 = v21;
    v37 = 2080;
    v38 = "";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing subscriber controller", buf, 0x2Au);
  }

  v22 = *(a1 + 32);
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(v2, v22, &v26);
  sub_10004EC58(&v26, v27[0]);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

LABEL_26:
  sub_10004EC58(&v31, v32);
}

void sub_1004EA7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  sub_10004EC58(v20 | 8, a19);
  _Unwind_Resume(a1);
}

void sub_1004EA844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  rest::write_rest_value();
  sub_10000501C(&v13, "/cc/requests/transfer_secure_intent");
  object = v14;
  v14 = xpc_null_create();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*(a3 + 55) < 0)
  {
    sub_100005F2C(__p, *(a3 + 32), *(a3 + 40));
  }

  else
  {
    *__p = *(a3 + 32);
    v8 = *(a3 + 48);
  }

  v4 = (a3 + 72);
  v5 = *(a3 + 72);
  v9 = *(a3 + 56);
  v6 = *(a3 + 80);
  v10[0] = v5;
  v10[1] = v6;
  if (v6)
  {
    *(v5 + 16) = v10;
    *(a3 + 64) = v4;
    *v4 = 0;
    *(a3 + 80) = 0;
  }

  else
  {
    *(&v9 + 1) = v10;
  }

  v11 = *(a3 + 88);
  v15 = 0;
  operator new();
}

void sub_1004EAA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v30 = v27[3];
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  operator delete(v27);
  sub_1004EAB3C(&a9);
  xpc_release(object);
  object = 0;
  if (a27 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v28 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_1004EAB3C(uint64_t a1)
{
  sub_10004EC58(a1 + 64, *(a1 + 72));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_1004EAB88(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = 0;
  ctu::ns::AutoPool::AutoPool(&v77);
  if (*(a1 + 172) != 1)
  {
    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = PersonalityInfo::logPrefix(***(a1 + 128));
      v22 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v21;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v22;
      LOWORD(v84) = 2080;
      *(&v84 + 2) = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnsupported Authentication Response", buf, 0x2Au);
    }

    goto LABEL_93;
  }

  v76[0] = 0;
  v76[1] = 0;
  v75 = v76;
  v7 = (a3 + 8);
  v6 = *(a3 + 8);
  if (!v6)
  {
    goto LABEL_56;
  }

  v8 = a3 + 8;
  v9 = *(a3 + 8);
  do
  {
    if (*(v9 + 32) >= 5)
    {
      v8 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < 5));
  }

  while (v9);
  if (v8 == v7)
  {
    v11 = a3 + 8;
  }

  else
  {
    v10 = *(v8 + 32);
    v11 = a3 + 8;
    if (v10 < 6)
    {
      LODWORD(v78.__r_.__value_.__l.__data_) = 5;
      *buf = &v78;
      v12 = sub_1004FCB34(a3, &v78);
      v74[0] = 3;
      *buf = v74;
      v13 = sub_1004FCC0C(&v75, v74);
      if (v13 != v12)
      {
        sub_1001122C4(v13 + 5, v12[5], v12[6], v12[6] - v12[5]);
      }

      sub_1000CFAD0(buf, 16);
      v74[0] = 11;
      v78.__r_.__value_.__r.__words[0] = v74;
      v14 = sub_1004FCC0C(&v75, v74);
      v15 = v14[5];
      if (v15)
      {
        v14[6] = v15;
        operator delete(v15);
        v14[5] = 0;
        v14[6] = 0;
        v14[7] = 0;
      }

      *(v14 + 5) = *buf;
      v14[7] = *&buf[16];
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(***(a1 + 128));
        v18 = *(a1 + 160);
        *buf = 136315906;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        *&buf[24] = v18;
        LOWORD(v84) = 2080;
        *(&v84 + 2) = "";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEAP-AKA success", buf, 0x2Au);
      }

      v19 = 1;
      goto LABEL_29;
    }
  }

  do
  {
    if (*(v6 + 32) >= 9)
    {
      v11 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < 9));
  }

  while (v6);
  if (v11 == v7 || *(v11 + 32) > 9)
  {
LABEL_56:
    v44 = *(a1 + 40);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = PersonalityInfo::logPrefix(***(a1 + 128));
      v46 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v45;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v46;
      LOWORD(v84) = 2080;
      *(&v84 + 2) = "";
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sEAP-AKA failed", buf, 0x2Au);
    }

    entitlements::CEHTTPDriver::invalidateConnection_sync(a1);
    *(a1 + 176) = 0;
    goto LABEL_92;
  }

  LODWORD(v78.__r_.__value_.__l.__data_) = 9;
  *buf = &v78;
  v23 = sub_1004FCB34(a3, &v78);
  v74[0] = 4;
  *buf = v74;
  v24 = sub_1004FCC0C(&v75, v74);
  if (v24 != v23)
  {
    sub_1001122C4(v24 + 5, v23[5], v23[6], v23[6] - v23[5]);
  }

  *(*(a1 + 744) + 24) = 1;
  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = PersonalityInfo::logPrefix(***(a1 + 128));
    v27 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v27;
    LOWORD(v84) = 2080;
    *(&v84 + 2) = "";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEAP-AKA sync fail", buf, 0x2Au);
  }

  v19 = 4;
LABEL_29:
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_1009F667C(buf, 0, 23, a2, v19, &v75);
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
  {
    PersonalityInfo::logPrefix(***(a1 + 128));
    sub_1009F70CC(buf, v74);
    sub_101772C1C();
  }

  sub_1009F5428(buf, &v78);
  __p = v78;
  v28 = v76[0];
  if (v76[0])
  {
    v29 = v76;
    do
    {
      v30 = *(v28 + 32);
      v31 = v30 >= 0xB;
      v32 = v30 < 0xB;
      if (v31)
      {
        v29 = v28;
      }

      v28 = v28[v32];
    }

    while (v28);
    if (v29 != v76 && *(v29 + 32) <= 0xBu)
    {
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = PersonalityInfo::logPrefix(***(a1 + 128));
        v35 = *(a1 + 160);
        LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
        *(v78.__r_.__value_.__r.__words + 4) = v34;
        WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
        *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
        HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
        v79 = v35;
        v80 = 2080;
        v81 = "";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPerforming MAC calculation", &v78, 0x2Au);
      }

      v36 = *v7;
      if (!*v7)
      {
        goto LABEL_54;
      }

      v37 = a3 + 8;
      v38 = *v7;
      do
      {
        if (*(v38 + 32) >= 6)
        {
          v37 = v38;
        }

        v38 = *(v38 + 8 * (*(v38 + 32) < 6));
      }

      while (v38);
      if (v37 == v7 || *(v37 + 32) > 6)
      {
        goto LABEL_54;
      }

      v39 = a3 + 8;
      do
      {
        if (*(v36 + 32) >= 7)
        {
          v39 = v36;
        }

        v36 = *(v36 + 8 * (*(v36 + 32) < 7));
      }

      while (v36);
      if (v39 == v7 || *(v39 + 32) >= 8)
      {
LABEL_54:
        v40 = *(a1 + 40);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = PersonalityInfo::logPrefix(***(a1 + 128));
          v42 = *(a1 + 160);
          LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
          *(v78.__r_.__value_.__r.__words + 4) = v41;
          WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
          *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
          HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
          v79 = v42;
          v80 = 2080;
          v81 = "";
          v43 = "#W %s%s%s%sMAC encoding required without necessary values";
LABEL_88:
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v43, &v78, 0x2Au);
          goto LABEL_89;
        }

        goto LABEL_89;
      }

      memset(&__str, 0, sizeof(__str));
      v71 = 6;
      v78.__r_.__value_.__r.__words[0] = &v71;
      v47 = sub_1004FCB34(a3, &v71);
      v70 = 7;
      v78.__r_.__value_.__r.__words[0] = &v70;
      v48 = sub_1004FCB34(a3, &v70);
      sub_1006C6F80((a1 + 184), &__p, v47 + 5, v48 + 5, &__str.__r_.__value_.__l.__data_);
      v49 = *&__str.__r_.__value_.__l.__data_;
      v50 = *(a1 + 40);
      if (__str.__r_.__value_.__r.__words[0] == __str.__r_.__value_.__l.__size_)
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v52 = PersonalityInfo::logPrefix(***(a1 + 128));
          v53 = *(a1 + 160);
          LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
          *(v78.__r_.__value_.__r.__words + 4) = v52;
          WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
          *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
          HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
          v79 = v53;
          v80 = 2080;
          v81 = "";
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sEmpty Mac Data", &v78, 0x2Au);
        }
      }

      else
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v68 = PersonalityInfo::logPrefix(***(a1 + 128));
          LODWORD(v78.__r_.__value_.__l.__data_) = 136315650;
          *(v78.__r_.__value_.__r.__words + 4) = v68;
          WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
          *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
          HIWORD(v78.__r_.__value_.__r.__words[2]) = 2048;
          v79 = __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0];
          _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "#D %s%sMac Data Size %zu", &v78, 0x20u);
        }

        LOBYTE(v70) = 11;
        v78.__r_.__value_.__r.__words[0] = &v70;
        v51 = (sub_1004FCC0C(&v75, &v70) + 5);
        if (v51 != &__str)
        {
          sub_1001122C4(v51, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]);
        }

        sub_1009F667C(&v78, 0, 23, a2, v19, &v75);
        sub_1004EBC3C(buf, &v78);
        v78.__r_.__value_.__r.__words[0] = off_101EA3468;
        sub_10004EC58(v82, v82[1]);
        sub_100285458(&v78);
        sub_1009F5428(buf, &v78);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v78;
      }

      if (__str.__r_.__value_.__r.__words[0])
      {
        __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v49 == *(&v49 + 1))
      {
        goto LABEL_89;
      }
    }
  }

  if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
  {
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v62 = PersonalityInfo::logPrefix(***(a1 + 128));
      v63 = *(a1 + 160);
      LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
      *(v78.__r_.__value_.__r.__words + 4) = v62;
      WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
      *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
      v79 = v63;
      v80 = 2080;
      v81 = "";
      v43 = "#W %s%s%s%sNo Auth Payload to send";
      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v54 = [NSData alloc];
  v55 = [v54 initWithBytes:__p.__r_.__value_.__r.__words[0] length:__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]];
  v56 = v55;
  if (!v55 || ![v55 base64EncodedStringWithOptions:0])
  {
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v60 = PersonalityInfo::logPrefix(***(a1 + 128));
      v61 = *(a1 + 160);
      LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
      *(v78.__r_.__value_.__r.__words + 4) = v60;
      WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
      *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
      v79 = v61;
      v80 = 2080;
      v81 = "";
      v43 = "#W %s%s%s%sInvalid result data";
      goto LABEL_88;
    }

LABEL_89:
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *buf = off_101EA3468;
    sub_10004EC58(&v87 + 8, v88);
    sub_100285458(buf);
LABEL_92:
    sub_10004EC58(&v75, v76[0]);
LABEL_93:
    buf[0] = 0;
    buf[4] = 0;
    v69[0] = 0;
    v69[1] = 0;
    entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(a1, 0, buf, v69);
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
    goto LABEL_94;
  }

  [v56 base64EncodedStringWithOptions:0];
  memset(&v78, 0, sizeof(v78));
  ctu::cf::assign();
  __str = v78;
  size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  v58 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v59 = *(a1 + 40);
  if (!size)
  {
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v64 = PersonalityInfo::logPrefix(***(a1 + 128));
      v65 = *(a1 + 160);
      LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
      *(v78.__r_.__value_.__r.__words + 4) = v64;
      WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
      *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
      v79 = v65;
      v80 = 2080;
      v81 = "";
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sError encoding result to base64", &v78, 0x2Au);
    }

    if (v58 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_89;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    v66 = PersonalityInfo::logPrefix(***(a1 + 128));
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    LODWORD(v78.__r_.__value_.__l.__data_) = 136315650;
    *(v78.__r_.__value_.__r.__words + 4) = v66;
    WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
    *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
    v79 = p_str;
    _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "#D %s%sBase64 postAuth payload: %s", &v78, 0x20u);
  }

  std::string::operator=((a1 + 464), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *buf = off_101EA3468;
  sub_10004EC58(&v87 + 8, v88);
  sub_100285458(buf);
  sub_10004EC58(&v75, v76[0]);
  entitlements::CEHTTPDriver::mergeRequestedQuery_sync(a1, 1);
  entitlements::CEHTTPDriver::initiateRequestQuery_sync(a1, 1);
LABEL_94:
  ctu::ns::AutoPool::~AutoPool(&v77);
}

void sub_1004EB91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, char a30, uint64_t a31, uint64_t buf, int a33, __int16 a34, int a35, __int16 a36, __int16 a37, uint64_t a38, __int16 a39, int a40, __int16 a41, __int16 a42, __int16 a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  sub_1004EBC88(v43 - 224);
  sub_10004EC58(&a27, a28);
  ctu::ns::AutoPool::~AutoPool(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EBC3C(uint64_t a1, uint64_t a2)
{
  sub_1004F3488(a1, a2);
  *(a1 + 80) = *(a2 + 80);
  if (a1 != a2)
  {
    sub_1004F3524((a1 + 88), *(a2 + 88), (a2 + 96));
  }

  return a1;
}

void *sub_1004EBC88(uint64_t a1)
{
  *a1 = off_101EA3468;
  sub_10004EC58(a1 + 88, *(a1 + 96));

  return sub_100285458(a1);
}

void sub_1004EBCE4(void *a1, _BOOL4 a2, const std::string *a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        entitlements::CEHTTPDriver::handleGBAAuthResponse(v7, a2, a3);
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_1004EBD88(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004EBDAC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void entitlements::CEHTTPDriver::handleGBAAuthResponse(uint64_t a1, _BOOL4 a2, const std::string *a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 128));
    v8 = *(a1 + 160);
    v9 = asStringBool(a2);
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = a3->__r_.__value_.__r.__words[0];
    }

    *buf = 136316418;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v8;
    v23 = 2080;
    v24 = "";
    v25 = 2080;
    v26 = v9;
    v27 = 2080;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sGBA auth complete with success:%s, response [%s]", buf, 0x3Eu);
  }

  if (*(a1 + 744))
  {
    if (a2)
    {
      sub_1001696A4((a1 + 328), a3);
      v11 = *(a1 + 112);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 104);
          if (v14)
          {
            memset(buf, 0, sizeof(buf));
            size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
            if ((size & 0x80u) != 0)
            {
              size = a3->__r_.__value_.__l.__size_;
            }

            if (size)
            {
              sub_1001696A4(buf, a3);
            }

            sub_100004AA0(&v21, (a1 + 8));
            v20 = v21;
            (*(*v14 + 32))(v14, &v20, buf);
            if (*(&v20 + 1))
            {
              sub_100004A34(*(&v20 + 1));
            }

            if (buf[24] == 1 && (buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          sub_100004A34(v13);
        }
      }

      entitlements::CEHTTPDriver::mergeRequestedQuery_sync(a1, 1);
      entitlements::CEHTTPDriver::initiateRequestQuery_sync(a1, 1);
    }

    else
    {
      entitlements::CEHTTPDriver::serverIssueNeedToBackoff(a1, 1);
      buf[0] = 0;
      buf[4] = 0;
      v19[0] = 0;
      v19[1] = 0;
      entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(a1, 1, buf, v19);
      entitlements::CEHTTPDriver::invalidateConnection_sync(a1);
      entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(***(a1 + 128));
      v18 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v18;
      v23 = 2080;
      v24 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sGBA auth complete while transaction is already canceled", buf, 0x2Au);
    }
  }
}

void sub_1004EC094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleDumpState_sync(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 16));
    v4 = *(this + 20);
    (**this)(&__p, this);
    v5 = *(__p + 7);
    *buf = 136316162;
    v9 = v3;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v4;
    v14 = 2080;
    v15 = "";
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s=|= HttpCommand Driver Info %zu =", buf, 0x34u);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  sub_1009C3098(this);
}

void sub_1004ECB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::handleDataSupportChanged(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 16));
    v4 = *(this + 20);
    v5 = 136315906;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    v9 = 2080;
    v10 = v4;
    v11 = 2080;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sData Support Changed", &v5, 0x2Au);
  }

  entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
}

void entitlements::CEHTTPDriver::handleSubscriberState(entitlements::CEHTTPDriver *this, char a2)
{
  *(this + 168) = 0;
  v4 = *(this + 5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(***(this + 16));
      v7 = *(this + 20);
      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = " ";
      v14 = 2080;
      v15 = v7;
      v16 = 2080;
      v17 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sSubscriber state 'READY'", &v10, 0x2Au);
    }

    sub_1009C1ADC(this);
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
  }

  else
  {
    if (v5)
    {
      v8 = PersonalityInfo::logPrefix(***(this + 16));
      v9 = *(this + 20);
      v10 = 136315906;
      v11 = v8;
      v12 = 2080;
      v13 = " ";
      v14 = 2080;
      v15 = v9;
      v16 = 2080;
      v17 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sSubscriber state 'not ready' lead to dropping authentication settings", &v10, 0x2Au);
    }

    if (*(this + 352) == 1)
    {
      if (*(this + 351) < 0)
      {
        operator delete(*(this + 41));
      }

      *(this + 352) = 0;
    }
  }
}

void entitlements::CEHTTPDriver::handleIMSInfoReady(entitlements::CEHTTPDriver *this, char a2)
{
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(this + 16));
    v6 = *(this + 20);
    v7 = 136315906;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    v13 = 2080;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%shandleIMSInfoReady", &v7, 0x2Au);
  }

  if ((a2 & 1) == 0)
  {
    *(this + 168) = 0;
  }

  sub_1009C1ADC(this);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
}

uint64_t entitlements::CEHTTPDriver::handlePAssociatedUri_sync(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 128));
    v6 = *(a1 + 160);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = "";
    v17 = 2080;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sP-Associated-Uri: %s", &v9, 0x34u);
  }

  return sub_1009C2CA8();
}

void sub_1004ED118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::storedGBAAuthentication(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 128));
    v6 = *(a1 + 160);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v6;
    v14 = 2080;
    v15 = "";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sstoredGBAAuthentication: auth:[%s]", &v8, 0x34u);
  }

  sub_1009C4534(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
}

uint64_t sub_1004ED28C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 152);
  *a2 = *(result + 144);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004ED2A8(uint64_t a1)
{
  *a1 = off_101E519D0;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004ED2EC(uint64_t a1)
{
  *a1 = off_101E519D0;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004ED350@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_1004ED36C(uint64_t a1)
{
  *a1 = off_101E51A40;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004ED3D0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_1004ED3EC(uint64_t a1)
{
  *a1 = off_101E51AB0;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004ED450(uint64_t a1)
{
  *a1 = off_101E51B20;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004ED494(uint64_t a1)
{
  *a1 = off_101E51B20;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004ED4F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004ED514(uint64_t a1)
{
  *a1 = off_101E51B90;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004ED558(uint64_t a1)
{
  *a1 = off_101E51B90;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004ED5BC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004ED5D8(uint64_t a1)
{
  *a1 = off_101E51C00;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004ED61C(uint64_t a1)
{
  *a1 = off_101E51C00;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004ED680@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004ED69C(uint64_t a1)
{
  *a1 = off_101E51C70;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004ED6E0(uint64_t a1)
{
  *a1 = off_101E51C70;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004ED744@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004ED760(uint64_t a1)
{
  *a1 = off_101E51CE0;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004ED7A4(uint64_t a1)
{
  *a1 = off_101E51CE0;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004ED808@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004ED824(uint64_t a1)
{
  *a1 = off_101E51D50;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004ED868(uint64_t a1)
{
  *a1 = off_101E51D50;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004ED8CC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004ED8E8(uint64_t a1)
{
  *a1 = off_101E51DC0;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004ED92C(uint64_t a1)
{
  *a1 = off_101E51DC0;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004ED990@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004ED9AC(uint64_t a1)
{
  *a1 = off_101E51E30;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004ED9F0(uint64_t a1)
{
  *a1 = off_101E51E30;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004EDA54@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004EDA70(uint64_t a1)
{
  *a1 = off_101E51EA0;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004EDAB4(uint64_t a1)
{
  *a1 = off_101E51EA0;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004EDB18@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004EDB34(uint64_t a1)
{
  *a1 = off_101E51F10;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_1004EDB78(uint64_t a1)
{
  *a1 = off_101E51F10;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004EDBDC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_1004EDBF8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1004EDBF8(a1, *a2);
    sub_1004EDBF8(a1, a2[1]);
    sub_10006DCAC((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_1004EDC58(uint64_t *a1)
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
        v6 = v2[3];
        if (v6)
        {
          sub_100004A34(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

__n128 sub_1004EDCD0(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = sub_100015184(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_1004EDD68(uint64_t a1)
{
  if (*(a1 + 232) == 1 && *(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1004EDE30(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 104;
  *a1 = *a2;
  v5 = (a1 + 104);
  sub_10012BF3C((a1 + 8), (a2 + 8));
  sub_10012BF3C((a1 + 40), (a2 + 40));
  sub_10012BF3C((a1 + 72), (a2 + 72));
  sub_100220EF0(v5, v4);

  sub_10012BF3C((a1 + 568), (a2 + 568));
}

BOOL sub_1004EDEB4(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    sub_10001C610(&v5);
    v3 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_10001C0A0(&v7);
  return v3;
}

void sub_1004EDFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EE060(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = *(v2 + 8);
  }

  v4 = v3 != 0;
  v5 = *(a2 + 28);
  *(a2 + 28) = v5 | 4;
  *(a2 + 17) = v4;
  v6 = *(v2 + 47);
  if (v6 < 0)
  {
    v6 = *(v2 + 32);
  }

  *(a2 + 18) = v6 != 0;
  v7 = *(v2 + 48);
  *(a2 + 28) = v5 | 0x1C;
  *(a2 + 20) = v7;
  return result;
}

void *sub_1004EE0B4(void *a1, __int128 *a2)
{
  v4 = *a1;
  if (*(*a1 + 23) < 0)
  {
    operator delete(*v4);
  }

  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = a1[1];
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  v7 = *(a2 + 24);
  *(v6 + 16) = *(a2 + 5);
  *v6 = v7;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

void sub_1004EE13C(uint64_t a1, int a2, _DWORD **a3, uint64_t a4)
{
  sub_10053DF18(**a1, a2, &v17);
  v7 = (*(*v17 + 40))(v17);
  if (*(&v17 + 1))
  {
    sub_100004A34(*(&v17 + 1));
  }

  v15 = xpc_string_create(v7);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  *&v17 = a4;
  *(&v17 + 1) = "action_type";
  sub_10000F688(&v17, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  v13 = xpc_int64_create(**a3);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  *&v17 = a4;
  *(&v17 + 1) = "action_status";
  sub_10000F688(&v17, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v10 = **a3 == 6000 && (v8 = *(a1 + 8), *(v8 + 4) == 1) && *v8 == 200 && (v9 = *(a1 + 16), *(v9 + 4) == 1) && *v9 == 0;
  v11 = xpc_BOOL_create(v10);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  *&v17 = a4;
  *(&v17 + 1) = "is_action_success";
  sub_10000F688(&v17, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
}

void sub_1004EE320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004EE338(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10006DCAC(a1 + 80, *(a1 + 88));
  sub_10006EC28(a1 + 56, *(a1 + 64));
  sub_10006DCAC(a1 + 32, *(a1 + 40));
  sub_10006DCAC(a1 + 8, *(a1 + 16));
  return a1;
}

BOOL sub_1004EE3B4(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    sub_10001C610(&v5);
    v3 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_10001C0A0(&v7);
  return v3;
}

void sub_1004EE4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

void sub_1004EE560(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(a2 + 148) |= 0x80u;
  v5 = *(a2 + 64);
  if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v5, v4);
  if (*(a1 + 68) == 1)
  {
    v6 = *(a1 + 64);
    if (v6 <= 3)
    {
      v7 = dword_1018120B0[v6];
      *(a2 + 148) |= 4u;
      *(a2 + 20) = v7;
    }
  }

  if (*(a1 + 76) == 1)
  {
    v8 = *(a1 + 72);
    *(a2 + 148) |= 2u;
    *(a2 + 16) = v8;
  }

  if (*(a1 + 48) == 1)
  {
    v9 = *(a1 + 40);
    *(a2 + 148) |= 0x20u;
    *(a2 + 56) = v9;
  }

  if (*(a1 + 84) == 1)
  {
    v10 = *(a1 + 80);
    *(a2 + 148) |= 8u;
    *(a2 + 48) = v10;
  }

  v11 = **(a1 + 56);
  v13 = *v11;
  v12 = v11[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    v14 = *v13;
    if (*v13 != 6000 || (v15 = *(v13 + 3)) != 0 && *v15 == 1)
    {
      v16 = *(a2 + 36);
      v17 = *(a2 + 32);
      if (v17 >= v16)
      {
        if (v16 == *(a2 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v16 + 1);
          v16 = *(a2 + 36);
        }

        *(a2 + 36) = v16 + 1;
        sub_1004F0BF8();
      }

      v18 = *(a2 + 24);
      *(a2 + 32) = v17 + 1;
      v19 = *(v18 + 8 * v17);
      v344 = *(v18 + 8 * v17);
      v19[15] |= 3u;
      v19[2] = 1;
      v19[3] = v14;
      v20 = *(v13 + 3);
      if (v20)
      {
        *&v340 = v20;
        *(&v340 + 1) = &v344;
        *&v341 = a2;
        if ((sub_100071FDC(v20, 5) & 0x100000000) != 0)
        {
          v21 = v344;
          v22 = v344[11];
          v23 = v344[10];
          if (v23 >= v22)
          {
            if (v22 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v22 + 1);
              v22 = v21[11];
            }

            v21[11] = v22 + 1;
            sub_1004F0CC0();
          }

          v24 = *(v344 + 4);
          v344[10] = v23 + 1;
          v25 = *(v24 + 8 * v23);
          v25[5] |= 1u;
          v25[2] = 4;
          v26 = sub_100A392D0(v20, 5);
          if ((v26 & 0x100000000) != 0)
          {
            v25[5] |= 2u;
            v25[3] = v26;
          }
        }

        if ((sub_100071FDC(v20, 2) & 0x100000000) != 0)
        {
          v27 = v344;
          v28 = v344[11];
          v29 = v344[10];
          if (v29 >= v28)
          {
            if (v28 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v28 + 1);
              v28 = v27[11];
            }

            v27[11] = v28 + 1;
            sub_1004F0CC0();
          }

          v30 = *(v344 + 4);
          v344[10] = v29 + 1;
          v31 = *(v30 + 8 * v29);
          v31[5] |= 1u;
          v31[2] = 0;
          v32 = sub_100A392D0(v20, 2);
          if ((v32 & 0x100000000) != 0)
          {
            v31[5] |= 2u;
            v31[3] = v32;
          }
        }

        if ((sub_100071FDC(v20, 3) & 0x100000000) != 0)
        {
          v33 = v344;
          v34 = v344[11];
          v35 = v344[10];
          if (v35 >= v34)
          {
            if (v34 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v34 + 1);
              v34 = v33[11];
            }

            v33[11] = v34 + 1;
            sub_1004F0CC0();
          }

          v36 = *(v344 + 4);
          v344[10] = v35 + 1;
          v37 = *(v36 + 8 * v35);
          v37[5] |= 1u;
          v37[2] = 1;
          v38 = sub_100A392D0(v20, 3);
          if ((v38 & 0x100000000) != 0)
          {
            v37[5] |= 2u;
            v37[3] = v38;
          }
        }

        if ((sub_100071FDC(v20, 6) & 0x100000000) != 0)
        {
          v39 = v344;
          v40 = v344[11];
          v41 = v344[10];
          if (v41 >= v40)
          {
            if (v40 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v40 + 1);
              v40 = v39[11];
            }

            v39[11] = v40 + 1;
            sub_1004F0CC0();
          }

          v42 = *(v344 + 4);
          v344[10] = v41 + 1;
          v43 = *(v42 + 8 * v41);
          v43[5] |= 1u;
          v43[2] = 2;
          v44 = sub_100A392D0(v20, 6);
          if ((v44 & 0x100000000) != 0)
          {
            v43[5] |= 2u;
            v43[3] = v44;
          }
        }

        if ((sub_100071FDC(v20, 7) & 0x100000000) != 0)
        {
          v45 = v344;
          v46 = v344[11];
          v47 = v344[10];
          if (v47 >= v46)
          {
            if (v46 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v46 + 1);
              v46 = v45[11];
            }

            v45[11] = v46 + 1;
            sub_1004F0CC0();
          }

          v48 = *(v344 + 4);
          v344[10] = v47 + 1;
          v49 = *(v48 + 8 * v47);
          v49[5] |= 1u;
          v49[2] = 3;
          v50 = sub_100A392D0(v20, 7);
          if ((v50 & 0x100000000) != 0)
          {
            v49[5] |= 2u;
            v49[3] = v50;
          }
        }

        if ((sub_100071FDC(v20, 8) & 0x100000000) != 0)
        {
          v51 = v344;
          v52 = v344[11];
          v53 = v344[10];
          if (v53 >= v52)
          {
            if (v52 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v52 + 1);
              v52 = v51[11];
            }

            v51[11] = v52 + 1;
            sub_1004F0CC0();
          }

          v54 = *(v344 + 4);
          v344[10] = v53 + 1;
          v55 = *(v54 + 8 * v53);
          v55[5] |= 1u;
          v55[2] = 5;
          v56 = sub_100A392D0(v20, 8);
          if ((v56 & 0x100000000) != 0)
          {
            v55[5] |= 2u;
            v55[3] = v56;
          }
        }

        if ((sub_100071FDC(v20, 10) & 0x100000000) != 0)
        {
          v57 = v344;
          v58 = v344[11];
          v59 = v344[10];
          if (v59 >= v58)
          {
            if (v58 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v58 + 1);
              v58 = v57[11];
            }

            v57[11] = v58 + 1;
            sub_1004F0CC0();
          }

          v60 = *(v344 + 4);
          v344[10] = v59 + 1;
          v61 = *(v60 + 8 * v59);
          v61[5] |= 1u;
          v61[2] = 6;
          v62 = sub_100A392D0(v20, 10);
          if ((v62 & 0x100000000) != 0)
          {
            v61[5] |= 2u;
            v61[3] = v62;
          }
        }

        if ((sub_100071FDC(v20, 11) & 0x100000000) != 0)
        {
          v63 = v344;
          v64 = v344[11];
          v65 = v344[10];
          if (v65 >= v64)
          {
            if (v64 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v64 + 1);
              v64 = v63[11];
            }

            v63[11] = v64 + 1;
            sub_1004F0CC0();
          }

          v66 = *(v344 + 4);
          v344[10] = v65 + 1;
          v67 = *(v66 + 8 * v65);
          v67[5] |= 1u;
          v67[2] = 7;
          v68 = sub_100A392D0(v20, 11);
          if ((v68 & 0x100000000) != 0)
          {
            v67[5] |= 2u;
            v67[3] = v68;
          }
        }

        if ((sub_100071FDC(v20, 12) & 0x100000000) != 0)
        {
          v69 = v344;
          v70 = v344[11];
          v71 = v344[10];
          if (v71 >= v70)
          {
            if (v70 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v70 + 1);
              v70 = v69[11];
            }

            v69[11] = v70 + 1;
            sub_1004F0CC0();
          }

          v72 = *(v344 + 4);
          v344[10] = v71 + 1;
          v73 = *(v72 + 8 * v71);
          v73[5] |= 1u;
          v73[2] = 8;
          v74 = sub_100A392D0(v20, 12);
          if ((v74 & 0x100000000) != 0)
          {
            v73[5] |= 2u;
            v73[3] = v74;
          }
        }

        if ((sub_100071FDC(v20, 13) & 0x100000000) != 0)
        {
          v75 = v344;
          v76 = v344[11];
          v77 = v344[10];
          if (v77 >= v76)
          {
            if (v76 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v76 + 1);
              v76 = v75[11];
            }

            v75[11] = v76 + 1;
            sub_1004F0CC0();
          }

          v78 = *(v344 + 4);
          v344[10] = v77 + 1;
          v79 = *(v78 + 8 * v77);
          v79[5] |= 1u;
          v79[2] = 9;
          v80 = sub_100A392D0(v20, 13);
          if ((v80 & 0x100000000) != 0)
          {
            v79[5] |= 2u;
            v79[3] = v80;
          }
        }

        if ((sub_100071FDC(v20, 14) & 0x100000000) != 0)
        {
          v81 = v344;
          v82 = v344[11];
          v83 = v344[10];
          if (v83 >= v82)
          {
            if (v82 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v82 + 1);
              v82 = v81[11];
            }

            v81[11] = v82 + 1;
            sub_1004F0CC0();
          }

          v84 = *(v344 + 4);
          v344[10] = v83 + 1;
          v85 = *(v84 + 8 * v83);
          v85[5] |= 1u;
          v85[2] = 10;
          v86 = sub_100A392D0(v20, 14);
          if ((v86 & 0x100000000) != 0)
          {
            v85[5] |= 2u;
            v85[3] = v86;
          }
        }

        sub_1004F072C(&v340, 15, 11);
        if ((sub_100071FDC(v20, 16) & 0x100000000) != 0)
        {
          v87 = v344;
          v88 = v344[11];
          v89 = v344[10];
          if (v89 >= v88)
          {
            if (v88 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v88 + 1);
              v88 = v87[11];
            }

            v87[11] = v88 + 1;
            sub_1004F0CC0();
          }

          v90 = *(v344 + 4);
          v344[10] = v89 + 1;
          v91 = *(v90 + 8 * v89);
          v91[5] |= 1u;
          v91[2] = 12;
          v92 = sub_100A392D0(v20, 16);
          if ((v92 & 0x100000000) != 0)
          {
            v91[5] |= 2u;
            v91[3] = v92;
          }
        }
      }
    }
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v93 = **(a1 + 56);
  v95 = *(v93 + 16);
  v94 = *(v93 + 24);
  if (v94)
  {
    atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v95)
  {
    v96 = *(a2 + 36);
    v97 = *(a2 + 32);
    if (v97 >= v96)
    {
      if (v96 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v96 + 1);
        v96 = *(a2 + 36);
      }

      *(a2 + 36) = v96 + 1;
      sub_1004F0BF8();
    }

    v98 = *(a2 + 24);
    *(a2 + 32) = v97 + 1;
    v99 = *(v98 + 8 * v97);
    v100 = v99[15];
    v99[2] = 2;
    v101 = *v95;
    v99[15] = v100 | 3;
    v99[3] = v101;
    v102 = *(v95 + 24);
    if (v102)
    {
      v343 = 0;
      v341 = 0u;
      v342 = 0u;
      v340 = 0u;
      sub_100172EF0(&v340, v102);
      sub_1003ED180(&v341 + 1, v102 + 24);
      v343 = v99;
      v103 = *(&v340 + 1);
      if (*(&v340 + 1))
      {
        v104 = &v340 + 2;
        do
        {
          if (v103[7] >= 5)
          {
            v104 = v103;
          }

          v103 = *&v103[2 * (v103[7] < 5)];
        }

        while (v103);
        if (v104 != (&v340 + 8) && v104[7] <= 5)
        {
          v105 = v99[11];
          v106 = v99[10];
          if (v106 >= v105)
          {
            if (v105 == v99[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v99 + 8), v105 + 1);
              v105 = v99[11];
            }

            v99[11] = v105 + 1;
            sub_1004F0CC0();
          }

          v107 = *(v99 + 4);
          v99[10] = v106 + 1;
          v108 = *(v107 + 8 * v106);
          v108[5] |= 1u;
          v108[2] = 4;
          v109 = sub_1004F0AE0(&v340, 5);
          if ((v109 & 0x100000000) != 0)
          {
            v108[5] |= 2u;
            v108[3] = v109;
          }
        }

        v110 = *(&v340 + 1);
        if (*(&v340 + 1))
        {
          v111 = &v340 + 2;
          do
          {
            if (v110[7] >= 2)
            {
              v111 = v110;
            }

            v110 = *&v110[2 * (v110[7] < 2)];
          }

          while (v110);
          if (v111 != (&v340 + 8) && v111[7] <= 2)
          {
            v112 = v343;
            v113 = v343[11];
            v114 = v343[10];
            if (v114 >= v113)
            {
              if (v113 == v343[12])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v113 + 1);
                v113 = v112[11];
              }

              v112[11] = v113 + 1;
              sub_1004F0CC0();
            }

            v115 = *(v343 + 4);
            v343[10] = v114 + 1;
            v116 = *(v115 + 8 * v114);
            v116[5] |= 1u;
            v116[2] = 0;
            v117 = sub_1004F0AE0(&v340, 2);
            if ((v117 & 0x100000000) != 0)
            {
              v116[5] |= 2u;
              v116[3] = v117;
            }
          }

          v118 = *(&v340 + 1);
          if (*(&v340 + 1))
          {
            v119 = &v340 + 2;
            do
            {
              if (v118[7] >= 3)
              {
                v119 = v118;
              }

              v118 = *&v118[2 * (v118[7] < 3)];
            }

            while (v118);
            if (v119 != (&v340 + 8) && v119[7] <= 3)
            {
              v120 = v343;
              v121 = v343[11];
              v122 = v343[10];
              if (v122 >= v121)
              {
                if (v121 == v343[12])
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v121 + 1);
                  v121 = v120[11];
                }

                v120[11] = v121 + 1;
                sub_1004F0CC0();
              }

              v123 = *(v343 + 4);
              v343[10] = v122 + 1;
              v124 = *(v123 + 8 * v122);
              v124[5] |= 1u;
              v124[2] = 1;
              v125 = sub_1004F0AE0(&v340, 3);
              if ((v125 & 0x100000000) != 0)
              {
                v124[5] |= 2u;
                v124[3] = v125;
              }
            }

            v126 = *(&v340 + 1);
            if (*(&v340 + 1))
            {
              v127 = &v340 + 2;
              do
              {
                if (v126[7] >= 6)
                {
                  v127 = v126;
                }

                v126 = *&v126[2 * (v126[7] < 6)];
              }

              while (v126);
              if (v127 != (&v340 + 8) && v127[7] <= 6)
              {
                v128 = v343;
                v129 = v343[11];
                v130 = v343[10];
                if (v130 >= v129)
                {
                  if (v129 == v343[12])
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v129 + 1);
                    v129 = v128[11];
                  }

                  v128[11] = v129 + 1;
                  sub_1004F0CC0();
                }

                v131 = *(v343 + 4);
                v343[10] = v130 + 1;
                v132 = *(v131 + 8 * v130);
                v132[5] |= 1u;
                v132[2] = 2;
                v133 = sub_1004F0AE0(&v340, 6);
                if ((v133 & 0x100000000) != 0)
                {
                  v132[5] |= 2u;
                  v132[3] = v133;
                }
              }

              v134 = *(&v340 + 1);
              if (*(&v340 + 1))
              {
                v135 = &v340 + 2;
                do
                {
                  if (v134[7] >= 7)
                  {
                    v135 = v134;
                  }

                  v134 = *&v134[2 * (v134[7] < 7)];
                }

                while (v134);
                if (v135 != (&v340 + 8) && v135[7] <= 7)
                {
                  v136 = v343;
                  v137 = v343[11];
                  v138 = v343[10];
                  if (v138 >= v137)
                  {
                    if (v137 == v343[12])
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v137 + 1);
                      v137 = v136[11];
                    }

                    v136[11] = v137 + 1;
                    sub_1004F0CC0();
                  }

                  v139 = *(v343 + 4);
                  v343[10] = v138 + 1;
                  v140 = *(v139 + 8 * v138);
                  v140[5] |= 1u;
                  v140[2] = 3;
                  v141 = sub_1004F0AE0(&v340, 7);
                  if ((v141 & 0x100000000) != 0)
                  {
                    v140[5] |= 2u;
                    v140[3] = v141;
                  }
                }

                v142 = *(&v340 + 1);
                if (*(&v340 + 1))
                {
                  v143 = &v340 + 2;
                  do
                  {
                    if (v142[7] >= 8)
                    {
                      v143 = v142;
                    }

                    v142 = *&v142[2 * (v142[7] < 8)];
                  }

                  while (v142);
                  if (v143 != (&v340 + 8) && v143[7] <= 8)
                  {
                    v144 = v343;
                    v145 = v343[11];
                    v146 = v343[10];
                    if (v146 >= v145)
                    {
                      if (v145 == v343[12])
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v145 + 1);
                        v145 = v144[11];
                      }

                      v144[11] = v145 + 1;
                      sub_1004F0CC0();
                    }

                    v147 = *(v343 + 4);
                    v343[10] = v146 + 1;
                    v148 = *(v147 + 8 * v146);
                    v148[5] |= 1u;
                    v148[2] = 5;
                    v149 = sub_1004F0AE0(&v340, 8);
                    if ((v149 & 0x100000000) != 0)
                    {
                      v148[5] |= 2u;
                      v148[3] = v149;
                    }
                  }

                  v150 = *(&v340 + 1);
                  if (*(&v340 + 1))
                  {
                    v151 = &v340 + 2;
                    do
                    {
                      if (v150[7] >= 10)
                      {
                        v151 = v150;
                      }

                      v150 = *&v150[2 * (v150[7] < 10)];
                    }

                    while (v150);
                    if (v151 != (&v340 + 8) && v151[7] <= 10)
                    {
                      v152 = v343;
                      v153 = v343[11];
                      v154 = v343[10];
                      if (v154 >= v153)
                      {
                        if (v153 == v343[12])
                        {
                          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v153 + 1);
                          v153 = v152[11];
                        }

                        v152[11] = v153 + 1;
                        sub_1004F0CC0();
                      }

                      v155 = *(v343 + 4);
                      v343[10] = v154 + 1;
                      v156 = *(v155 + 8 * v154);
                      v156[5] |= 1u;
                      v156[2] = 6;
                      v157 = sub_1004F0AE0(&v340, 10);
                      if ((v157 & 0x100000000) != 0)
                      {
                        v156[5] |= 2u;
                        v156[3] = v157;
                      }
                    }

                    v158 = *(&v340 + 1);
                    if (*(&v340 + 1))
                    {
                      v159 = &v340 + 2;
                      do
                      {
                        if (v158[7] >= 11)
                        {
                          v159 = v158;
                        }

                        v158 = *&v158[2 * (v158[7] < 11)];
                      }

                      while (v158);
                      if (v159 != (&v340 + 8) && v159[7] <= 11)
                      {
                        v160 = v343;
                        v161 = v343[11];
                        v162 = v343[10];
                        if (v162 >= v161)
                        {
                          if (v161 == v343[12])
                          {
                            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v161 + 1);
                            v161 = v160[11];
                          }

                          v160[11] = v161 + 1;
                          sub_1004F0CC0();
                        }

                        v163 = *(v343 + 4);
                        v343[10] = v162 + 1;
                        v164 = *(v163 + 8 * v162);
                        v164[5] |= 1u;
                        v164[2] = 7;
                        v165 = sub_1004F0AE0(&v340, 11);
                        if ((v165 & 0x100000000) != 0)
                        {
                          v164[5] |= 2u;
                          v164[3] = v165;
                        }
                      }

                      v166 = *(&v340 + 1);
                      if (*(&v340 + 1))
                      {
                        v167 = &v340 + 2;
                        do
                        {
                          if (v166[7] >= 12)
                          {
                            v167 = v166;
                          }

                          v166 = *&v166[2 * (v166[7] < 12)];
                        }

                        while (v166);
                        if (v167 != (&v340 + 8) && v167[7] <= 12)
                        {
                          v168 = v343;
                          v169 = v343[11];
                          v170 = v343[10];
                          if (v170 >= v169)
                          {
                            if (v169 == v343[12])
                            {
                              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v169 + 1);
                              v169 = v168[11];
                            }

                            v168[11] = v169 + 1;
                            sub_1004F0CC0();
                          }

                          v171 = *(v343 + 4);
                          v343[10] = v170 + 1;
                          v172 = *(v171 + 8 * v170);
                          v172[5] |= 1u;
                          v172[2] = 8;
                          v173 = sub_1004F0AE0(&v340, 12);
                          if ((v173 & 0x100000000) != 0)
                          {
                            v172[5] |= 2u;
                            v172[3] = v173;
                          }
                        }

                        v174 = *(&v340 + 1);
                        if (*(&v340 + 1))
                        {
                          v175 = &v340 + 2;
                          do
                          {
                            if (v174[7] >= 13)
                            {
                              v175 = v174;
                            }

                            v174 = *&v174[2 * (v174[7] < 13)];
                          }

                          while (v174);
                          if (v175 != (&v340 + 8) && v175[7] <= 13)
                          {
                            v176 = v343;
                            v177 = v343[11];
                            v178 = v343[10];
                            if (v178 >= v177)
                            {
                              if (v177 == v343[12])
                              {
                                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v177 + 1);
                                v177 = v176[11];
                              }

                              v176[11] = v177 + 1;
                              sub_1004F0CC0();
                            }

                            v179 = *(v343 + 4);
                            v343[10] = v178 + 1;
                            v180 = *(v179 + 8 * v178);
                            v180[5] |= 1u;
                            v180[2] = 9;
                            v181 = sub_1004F0AE0(&v340, 13);
                            if ((v181 & 0x100000000) != 0)
                            {
                              v180[5] |= 2u;
                              v180[3] = v181;
                            }
                          }

                          v182 = *(&v340 + 1);
                          if (*(&v340 + 1))
                          {
                            v183 = &v340 + 2;
                            do
                            {
                              if (v182[7] >= 14)
                              {
                                v183 = v182;
                              }

                              v182 = *&v182[2 * (v182[7] < 14)];
                            }

                            while (v182);
                            if (v183 != (&v340 + 8) && v183[7] <= 14)
                            {
                              v184 = v343;
                              v185 = v343[11];
                              v186 = v343[10];
                              if (v186 >= v185)
                              {
                                if (v185 == v343[12])
                                {
                                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v185 + 1);
                                  v185 = v184[11];
                                }

                                v184[11] = v185 + 1;
                                sub_1004F0CC0();
                              }

                              v187 = *(v343 + 4);
                              v343[10] = v186 + 1;
                              v188 = *(v187 + 8 * v186);
                              v188[5] |= 1u;
                              v188[2] = 10;
                              v189 = sub_1004F0AE0(&v340, 14);
                              if ((v189 & 0x100000000) != 0)
                              {
                                v188[5] |= 2u;
                                v188[3] = v189;
                              }
                            }

                            v190 = *(&v340 + 1);
                            if (*(&v340 + 1))
                            {
                              v191 = &v340 + 2;
                              do
                              {
                                if (v190[7] >= 15)
                                {
                                  v191 = v190;
                                }

                                v190 = *&v190[2 * (v190[7] < 15)];
                              }

                              while (v190);
                              if (v191 != (&v340 + 8) && v191[7] <= 15)
                              {
                                v192 = v343;
                                v193 = v343[11];
                                v194 = v343[10];
                                if (v194 >= v193)
                                {
                                  if (v193 == v343[12])
                                  {
                                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v193 + 1);
                                    v193 = v192[11];
                                  }

                                  v192[11] = v193 + 1;
                                  sub_1004F0CC0();
                                }

                                v195 = *(v343 + 4);
                                v343[10] = v194 + 1;
                                v196 = *(v195 + 8 * v194);
                                v196[5] |= 1u;
                                v196[2] = 11;
                                v197 = sub_1004F0AE0(&v340, 15);
                                if ((v197 & 0x100000000) != 0)
                                {
                                  v196[5] |= 2u;
                                  v196[3] = v197;
                                }
                              }

                              v198 = *(&v340 + 1);
                              if (*(&v340 + 1))
                              {
                                v199 = &v340 + 2;
                                do
                                {
                                  if (v198[7] >= 16)
                                  {
                                    v199 = v198;
                                  }

                                  v198 = *&v198[2 * (v198[7] < 16)];
                                }

                                while (v198);
                                if (v199 != (&v340 + 8) && v199[7] <= 16)
                                {
                                  v200 = v343;
                                  v201 = v343[11];
                                  v202 = v343[10];
                                  if (v202 >= v201)
                                  {
                                    if (v201 == v343[12])
                                    {
                                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v201 + 1);
                                      v201 = v200[11];
                                    }

                                    v200[11] = v201 + 1;
                                    sub_1004F0CC0();
                                  }

                                  v203 = *(v343 + 4);
                                  v343[10] = v202 + 1;
                                  v204 = *(v203 + 8 * v202);
                                  v204[5] |= 1u;
                                  v204[2] = 12;
                                  v205 = sub_1004F0AE0(&v340, 16);
                                  if ((v205 & 0x100000000) != 0)
                                  {
                                    v204[5] |= 2u;
                                    v204[3] = v205;
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
            }
          }
        }
      }

      sub_10006DCAC(&v341 + 8, v342);
      sub_10006DCAC(&v340, *(&v340 + 1));
    }
  }

  if (v94)
  {
    sub_100004A34(v94);
  }

  v206 = **(a1 + 56);
  v208 = *(v206 + 208);
  v207 = *(v206 + 216);
  if (v207)
  {
    atomic_fetch_add_explicit(&v207->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v208)
  {
    v209 = *(a2 + 36);
    v210 = *(a2 + 32);
    if (v210 >= v209)
    {
      if (v209 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v209 + 1);
        v209 = *(a2 + 36);
      }

      *(a2 + 36) = v209 + 1;
      sub_1004F0BF8();
    }

    v211 = *(a2 + 24);
    *(a2 + 32) = v210 + 1;
    v212 = *(v211 + 8 * v210);
    LODWORD(v211) = v212[15];
    v212[2] = 6;
    v213 = *v208;
    v212[15] = v211 | 3;
    v212[3] = v213;
  }

  if (v207)
  {
    sub_100004A34(v207);
  }

  v214 = **(a1 + 56);
  v216 = *(v214 + 176);
  v215 = *(v214 + 184);
  if (v215)
  {
    atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v216)
  {
    v217 = *(a2 + 36);
    v218 = *(a2 + 32);
    if (v218 >= v217)
    {
      if (v217 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v217 + 1);
        v217 = *(a2 + 36);
      }

      *(a2 + 36) = v217 + 1;
      sub_1004F0BF8();
    }

    v219 = *(a2 + 24);
    *(a2 + 32) = v218 + 1;
    v220 = *(v219 + 8 * v218);
    LODWORD(v219) = v220[15];
    v220[2] = 9;
    v221 = *v216;
    v220[15] = v219 | 3;
    v220[3] = v221;
  }

  if (v215)
  {
    sub_100004A34(v215);
  }

  v222 = **(a1 + 56);
  v224 = *(v222 + 448);
  v223 = *(v222 + 456);
  if (v223)
  {
    atomic_fetch_add_explicit(&v223->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v224)
  {
    v225 = *(a2 + 36);
    v226 = *(a2 + 32);
    if (v226 >= v225)
    {
      if (v225 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v225 + 1);
        v225 = *(a2 + 36);
      }

      *(a2 + 36) = v225 + 1;
      sub_1004F0BF8();
    }

    v227 = *(a2 + 24);
    *(a2 + 32) = v226 + 1;
    v228 = *(v227 + 8 * v226);
    v229 = v228[15];
    v228[2] = 32;
    v230 = *v224;
    v228[15] = v229 | 3;
    v228[3] = v230;
    if (v230 == 6000)
    {
      v231 = *(v224 + 3);
      if (v231)
      {
        if (*(v231 + 32) == 1)
        {
          *(a2 + 148) |= 0x40u;
          *(a2 + 52) = 1;
        }
      }
    }
  }

  if (v223)
  {
    sub_100004A34(v223);
  }

  v232 = **(a1 + 56);
  v234 = *(v232 + 464);
  v233 = *(v232 + 472);
  if (v233)
  {
    atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v234)
  {
    v235 = *(a2 + 36);
    v236 = *(a2 + 32);
    if (v236 >= v235)
    {
      if (v235 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v235 + 1);
        v235 = *(a2 + 36);
      }

      *(a2 + 36) = v235 + 1;
      sub_1004F0BF8();
    }

    v237 = *(a2 + 24);
    *(a2 + 32) = v236 + 1;
    v238 = *(v237 + 8 * v236);
    v239 = v238[15];
    v238[2] = 12;
    v240 = *v234;
    v238[15] = v239 | 3;
    v238[3] = v240;
    if (v240 == 6000)
    {
      v241 = *(v234 + 3);
      if (v241)
      {
        if (*(v241 + 32) == 1)
        {
          *(a2 + 148) |= 0x40u;
          *(a2 + 52) = 1;
        }
      }
    }
  }

  if (v233)
  {
    sub_100004A34(v233);
  }

  v242 = **(a1 + 56);
  v244 = *(v242 + 192);
  v243 = *(v242 + 200);
  if (v243)
  {
    atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v244)
  {
    v245 = *(a2 + 36);
    v246 = *(a2 + 32);
    if (v246 >= v245)
    {
      if (v245 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v245 + 1);
        v245 = *(a2 + 36);
      }

      *(a2 + 36) = v245 + 1;
      sub_1004F0BF8();
    }

    v247 = *(a2 + 24);
    *(a2 + 32) = v246 + 1;
    v248 = *(v247 + 8 * v246);
    LODWORD(v247) = v248[15];
    v248[2] = 10;
    v249 = *v244;
    v248[15] = v247 | 3;
    v248[3] = v249;
  }

  if (v243)
  {
    sub_100004A34(v243);
  }

  v250 = **(a1 + 56);
  v252 = *(v250 + 32);
  v251 = *(v250 + 40);
  if (v251)
  {
    atomic_fetch_add_explicit(&v251->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v252)
  {
    v253 = *(a2 + 36);
    v254 = *(a2 + 32);
    if (v254 >= v253)
    {
      if (v253 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v253 + 1);
        v253 = *(a2 + 36);
      }

      *(a2 + 36) = v253 + 1;
      sub_1004F0BF8();
    }

    v255 = *(a2 + 24);
    *(a2 + 32) = v254 + 1;
    v256 = *(v255 + 8 * v254);
    v257 = v256[15];
    v256[2] = 3;
    v258 = *v252;
    v256[15] = v257 | 3;
    v256[3] = v258;
    v259 = *(v252 + 3);
    if (v259)
    {
      v260 = *(v259 + 8);
      if (v260)
      {
        v261 = v259 + 8;
        do
        {
          if (*(v260 + 32) >= 8)
          {
            v261 = v260;
          }

          v260 = *(v260 + 8 * (*(v260 + 32) < 8));
        }

        while (v260);
        if (v261 != v259 + 8 && *(v261 + 32) <= 8)
        {
          v262 = v256[11];
          v263 = v256[10];
          if (v263 >= v262)
          {
            if (v262 == v256[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v256 + 8), v262 + 1);
              v262 = v256[11];
            }

            v256[11] = v262 + 1;
            sub_1004F0CC0();
          }

          v264 = *(v256 + 4);
          v256[10] = v263 + 1;
          v265 = *(v264 + 8 * v263);
          v265[5] |= 1u;
          v265[2] = 5;
          v266 = sub_1004F0AE0(v259, 8);
          if ((v266 & 0x100000000) != 0)
          {
            v265[5] |= 2u;
            v265[3] = v266;
          }
        }
      }
    }
  }

  if (v251)
  {
    sub_100004A34(v251);
  }

  v267 = **(a1 + 56);
  v269 = *(v267 + 48);
  v268 = *(v267 + 56);
  if (v268)
  {
    atomic_fetch_add_explicit(&v268->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v269)
  {
    v270 = *(a2 + 36);
    v271 = *(a2 + 32);
    if (v271 >= v270)
    {
      if (v270 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v270 + 1);
        v270 = *(a2 + 36);
      }

      *(a2 + 36) = v270 + 1;
      sub_1004F0BF8();
    }

    v272 = *(a2 + 24);
    *(a2 + 32) = v271 + 1;
    v273 = *(v272 + 8 * v271);
    v274 = v273[15];
    v273[2] = 4;
    v275 = *v269;
    v273[15] = v274 | 3;
    v273[3] = v275;
    v276 = *(v269 + 3);
    if (v276)
    {
      v277 = *(v276 + 8);
      if (v277)
      {
        v278 = v276 + 8;
        do
        {
          if (*(v277 + 32) >= 8)
          {
            v278 = v277;
          }

          v277 = *(v277 + 8 * (*(v277 + 32) < 8));
        }

        while (v277);
        if (v278 != v276 + 8 && *(v278 + 32) <= 8)
        {
          v279 = v273[11];
          v280 = v273[10];
          if (v280 >= v279)
          {
            if (v279 == v273[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v273 + 8), v279 + 1);
              v279 = v273[11];
            }

            v273[11] = v279 + 1;
            sub_1004F0CC0();
          }

          v281 = *(v273 + 4);
          v273[10] = v280 + 1;
          v282 = *(v281 + 8 * v280);
          v282[5] |= 1u;
          v282[2] = 5;
          v283 = sub_1004F0AE0(v276, 8);
          if ((v283 & 0x100000000) != 0)
          {
            v282[5] |= 2u;
            v282[3] = v283;
          }
        }
      }
    }
  }

  if (v268)
  {
    sub_100004A34(v268);
  }

  v284 = **(a1 + 56);
  v286 = *(v284 + 64);
  v285 = *(v284 + 72);
  if (v285)
  {
    atomic_fetch_add_explicit(&v285->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v286)
  {
    v287 = *(a2 + 36);
    v288 = *(a2 + 32);
    if (v288 >= v287)
    {
      if (v287 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v287 + 1);
        v287 = *(a2 + 36);
      }

      *(a2 + 36) = v287 + 1;
      sub_1004F0BF8();
    }

    v289 = *(a2 + 24);
    *(a2 + 32) = v288 + 1;
    v290 = *(v289 + 8 * v288);
    LODWORD(v289) = v290[15];
    v290[2] = 5;
    v291 = *v286;
    v290[15] = v289 | 3;
    v290[3] = v291;
  }

  if (v285)
  {
    sub_100004A34(v285);
  }

  v292 = **(a1 + 56);
  v294 = *(v292 + 80);
  v293 = *(v292 + 88);
  if (v293)
  {
    atomic_fetch_add_explicit(&v293->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v294)
  {
    v295 = *(a2 + 36);
    v296 = *(a2 + 32);
    if (v296 >= v295)
    {
      if (v295 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v295 + 1);
        v295 = *(a2 + 36);
      }

      *(a2 + 36) = v295 + 1;
      sub_1004F0BF8();
    }

    v297 = *(a2 + 24);
    *(a2 + 32) = v296 + 1;
    v298 = *(v297 + 8 * v296);
    LODWORD(v297) = v298[15];
    v298[2] = 7;
    v299 = *v294;
    v298[15] = v297 | 3;
    v298[3] = v299;
  }

  if (v293)
  {
    sub_100004A34(v293);
  }

  v300 = **(a1 + 56);
  v302 = *(v300 + 96);
  v301 = *(v300 + 104);
  if (v301)
  {
    atomic_fetch_add_explicit(&v301->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v302)
  {
    v303 = *(a2 + 36);
    v304 = *(a2 + 32);
    if (v304 >= v303)
    {
      if (v303 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v303 + 1);
        v303 = *(a2 + 36);
      }

      *(a2 + 36) = v303 + 1;
      sub_1004F0BF8();
    }

    v305 = *(a2 + 24);
    *(a2 + 32) = v304 + 1;
    v306 = *(v305 + 8 * v304);
    LODWORD(v305) = v306[15];
    v306[2] = 8;
    v307 = *v302;
    v306[15] = v305 | 3;
    v306[3] = v307;
  }

  if (v301)
  {
    sub_100004A34(v301);
  }

  v308 = **(a1 + 56);
  v310 = *(v308 + 224);
  v309 = *(v308 + 232);
  if (v309)
  {
    atomic_fetch_add_explicit(&v309->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v310)
  {
    v311 = *(a2 + 36);
    v312 = *(a2 + 32);
    if (v312 >= v311)
    {
      if (v311 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v311 + 1);
        v311 = *(a2 + 36);
      }

      *(a2 + 36) = v311 + 1;
      sub_1004F0BF8();
    }

    v313 = *(a2 + 24);
    *(a2 + 32) = v312 + 1;
    v314 = *(v313 + 8 * v312);
    LODWORD(v313) = v314[15];
    v314[2] = 13;
    v315 = *v310;
    v314[15] = v313 | 3;
    v314[3] = v315;
  }

  if (v309)
  {
    sub_100004A34(v309);
  }

  v316 = **(a1 + 56);
  v318 = *(v316 + 240);
  v317 = *(v316 + 248);
  if (v317)
  {
    atomic_fetch_add_explicit(&v317->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v318)
  {
    v319 = *(a2 + 36);
    v320 = *(a2 + 32);
    if (v320 >= v319)
    {
      if (v319 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v319 + 1);
        v319 = *(a2 + 36);
      }

      *(a2 + 36) = v319 + 1;
      sub_1004F0BF8();
    }

    v321 = *(a2 + 24);
    *(a2 + 32) = v320 + 1;
    v322 = *(v321 + 8 * v320);
    LODWORD(v321) = v322[15];
    v322[2] = 14;
    v323 = *v318;
    v322[15] = v321 | 3;
    v322[3] = v323;
  }

  if (v317)
  {
    sub_100004A34(v317);
  }

  v324 = **(a1 + 56);
  v326 = *(v324 + 320);
  v325 = *(v324 + 328);
  if (v325)
  {
    atomic_fetch_add_explicit(&v325->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v326)
  {
    v327 = *(a2 + 36);
    v328 = *(a2 + 32);
    if (v328 >= v327)
    {
      if (v327 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v327 + 1);
        v327 = *(a2 + 36);
      }

      *(a2 + 36) = v327 + 1;
      sub_1004F0BF8();
    }

    v329 = *(a2 + 24);
    *(a2 + 32) = v328 + 1;
    v330 = *(v329 + 8 * v328);
    LODWORD(v329) = v330[15];
    v330[2] = 22;
    v331 = *v326;
    v330[15] = v329 | 3;
    v330[3] = v331;
  }

  if (v325)
  {
    sub_100004A34(v325);
  }

  v332 = **(a1 + 56);
  v334 = *(v332 + 288);
  v333 = *(v332 + 296);
  if (v333)
  {
    atomic_fetch_add_explicit(&v333->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v334)
  {
    v335 = *(a2 + 36);
    v336 = *(a2 + 32);
    if (v336 >= v335)
    {
      if (v335 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v335 + 1);
        v335 = *(a2 + 36);
      }

      *(a2 + 36) = v335 + 1;
      sub_1004F0BF8();
    }

    v337 = *(a2 + 24);
    *(a2 + 32) = v336 + 1;
    v338 = *(v337 + 8 * v336);
    LODWORD(v337) = v338[15];
    v338[2] = 15;
    v339 = *v334;
    v338[15] = v337 | 3;
    v338[3] = v339;
  }

  if (v333)
  {
    sub_100004A34(v333);
  }
}

void sub_1004F069C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F072C(uint64_t a1, int a2, int a3)
{
  if ((sub_100071FDC(*a1, a2) & 0x100000000) != 0)
  {
    v6 = **(a1 + 8);
    v7 = v6[11];
    v8 = v6[10];
    if (v8 >= v7)
    {
      if (v7 == v6[12])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 8), v7 + 1);
        v7 = v6[11];
      }

      v6[11] = v7 + 1;
      sub_1004F0CC0();
    }

    v9 = *(v6 + 4);
    v6[10] = v8 + 1;
    v10 = *(v9 + 8 * v8);
    v10[5] |= 1u;
    v10[2] = a3;
    v11 = sub_100A392D0(*a1, a2);
    if ((v11 & 0x100000000) != 0)
    {
      v10[5] |= 2u;
      v10[3] = v11;
      if (a2 == 15)
      {
        v31 = 0;
        v32[0] = 0;
        v32[1] = 0;
        sub_1003ED1D8(&v31, *a1 + 56);
        v12 = v32[0];
        if (v32[0])
        {
          v13 = v32;
          v14 = v32[0];
          do
          {
            if (v14[8] >= 15)
            {
              v13 = v14;
            }

            v14 = *&v14[2 * (v14[8] < 15)];
          }

          while (v14);
          if (v13 != v32 && v13[8] <= 15)
          {
            v15 = *(v13 + 5);
            if (v15)
            {
              if (*(v15 + 24) == 1)
              {
                v16 = *v15;
                v17 = v15[1];
                if (*v15 != v17)
                {
                  while (1)
                  {
                    v18 = *(a1 + 16);
                    v19 = v18[33];
                    v20 = v18[32];
                    if (v20 >= v19)
                    {
                      if (v19 == v18[34])
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 30), v19 + 1);
                        v19 = v18[33];
                      }

                      v18[33] = v19 + 1;
                      sub_1004F0C5C();
                    }

                    v21 = *(v18 + 15);
                    v18[32] = v20 + 1;
                    v22 = *(v21 + 8 * v20);
                    if (*(v16 + 4) != 1)
                    {
                      goto LABEL_31;
                    }

                    v23 = *v16;
                    if (!*v16)
                    {
                      break;
                    }

                    if (v23 == 1)
                    {
                      if (!awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanType_IsValid(1, v12))
                      {
                        goto LABEL_54;
                      }

LABEL_30:
                      *(v22 + 40) |= 1u;
                      *(v22 + 8) = v23;
                    }

LABEL_31:
                    if (*(v16 + 9) == 1)
                    {
                      v24 = *(v16 + 8);
                      *(v22 + 40) |= 2u;
                      *(v22 + 12) = v24;
                    }

                    if (*(v16 + 16) == 1)
                    {
                      v25 = v16[3];
                      *(v22 + 40) |= 4u;
                      *(v22 + 32) = v25;
                    }

                    if (*(v16 + 48) == 1)
                    {
                      v26 = *(v16 + 3);
                      v27 = *(v16 + 4);
                      while (1)
                      {
                        if (v26 == v27)
                        {
                          goto LABEL_49;
                        }

                        v28 = *v26;
                        if (*v26 == 1)
                        {
                          break;
                        }

                        if (v28)
                        {
                          goto LABEL_48;
                        }

                        if ((awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanSupportedRAT_IsValid(0, v12) & 1) == 0)
                        {
                          goto LABEL_53;
                        }

                        v29 = *(v22 + 24);
                        if (v29 == *(v22 + 28))
                        {
                          goto LABEL_45;
                        }

                        v28 = 0;
LABEL_47:
                        v30 = *(v22 + 16);
                        *(v22 + 24) = v29 + 1;
                        *(v30 + 4 * v29) = v28;
LABEL_48:
                        ++v26;
                      }

                      if (!awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanSupportedRAT_IsValid(1, v12))
                      {
LABEL_53:
                        __assert_rtn("add_supportedrats", "CCMetricsCarrierEntitlements.pb.h", 1343, "::awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanSupportedRAT_IsValid(value)");
                      }

                      v29 = *(v22 + 24);
                      if (v29 != *(v22 + 28))
                      {
                        v28 = 1;
                        goto LABEL_47;
                      }

LABEL_45:
                      sub_10080B50C(v22 + 16, v29 + 1);
                      v29 = *(v22 + 24);
                      goto LABEL_47;
                    }

LABEL_49:
                    v16 += 16;
                    if (v16 == v17)
                    {
                      v12 = v32[0];
                      goto LABEL_51;
                    }
                  }

                  if ((awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanType_IsValid(0, v12) & 1) == 0)
                  {
LABEL_54:
                    __assert_rtn("set_plan_type", "CCMetricsCarrierEntitlements.pb.h", 1279, "::awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanType_IsValid(value)");
                  }

                  goto LABEL_30;
                }
              }
            }
          }
        }

LABEL_51:
        sub_10006EC28(&v31, v12);
      }
    }
  }
}

uint64_t sub_1004F0AA4(uint64_t a1)
{
  sub_10006DCAC(a1 + 24, *(a1 + 32));
  sub_10006DCAC(a1, *(a1 + 8));
  return a1;
}

unint64_t sub_1004F0AE0(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v2 = a1 + 32;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      if (*(v3 + 28) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 28) < a2));
    }

    while (v3);
    if (v5 != v2 && *(v5 + 28) <= a2)
    {
      v9 = *(v5 + 32);
      v7 = v9 & 0xFFFFFF00;
      LODWORD(v3) = v9;
      v6 = &_mh_execute_header;
      return v6 | v7 | v3;
    }

    v6 = 0;
    LODWORD(v3) = 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  return v6 | v7 | v3;
}

void sub_1004F0B4C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = sub_10000D79C(a1);
  if (v5)
  {
    v6 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v6 = *v6;
    }

    v7 = v4 - v6;
  }

  else
  {
    v7 = 0;
  }

  *&a2->__r_.__value_.__l.__data_ = *(a1 + 64);
  a2->__r_.__value_.__r.__words[2] = *(a1 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  std::string::resize(a2, v7 + v5, 0);
  std::string::erase(a2, 0, v7);
  sub_10000BD98(a1);
}

void sub_1004F0BDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004F0D24(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10009A404(result, a2);
  }

  return result;
}

_BYTE *sub_1004F0DA4(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 24, a3);
  return a1;
}

void sub_1004F0DDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1004F0DF8(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 24, a3);
  return a1;
}

void sub_1004F0E30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1004F0E4C(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 24, a3);
  return a1;
}

void sub_1004F0E84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004F0EA0(uint64_t a1, char *a2, __int128 *a3)
{
  sub_10000501C(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

void sub_1004F0EF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004F0F10(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D0358(result, a4);
  }

  return result;
}

void sub_1004F0F68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004F0F84(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    sub_10001C610(&v5);
    v3 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_10001C0A0(&v7);
  return v3;
}

void sub_1004F10B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004F1130(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(a2 + 76) |= 0x10u;
  v5 = *(a2 + 64);
  if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v5, v4);
  if (sub_10053588C(**(a1 + 40), 0))
  {
    v6 = sub_1005376EC(**(a1 + 40));
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v74;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v74 != v10)
          {
            objc_enumerationMutation(v6);
          }

          AwdEntitlementRequestType = entitlements::getAwdEntitlementRequestType(*(*(&v73 + 1) + 8 * i), v8);
          if (AwdEntitlementRequestType != -1)
          {
            v13 = AwdEntitlementRequestType;
            v14 = *(a2 + 56);
            if (v14 == *(a2 + 60))
            {
              sub_10080B50C(a2 + 48, v14 + 1);
              v14 = *(a2 + 56);
            }

            v15 = *(a2 + 48);
            *(a2 + 56) = v14 + 1;
            *(v15 + 4 * v14) = v13;
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v9);
    }

    v16 = *(a2 + 24);
    if (v16 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v16 + 1);
      v16 = *(a2 + 24);
    }

    v17 = *(a2 + 16);
    *(a2 + 24) = v16 + 1;
    *(v17 + 4 * v16) = 1;
  }

  if (sub_10053588C(**(a1 + 40), 1))
  {
    v18 = sub_1005376A8(**(a1 + 40));
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v19)
    {
      v21 = v19;
      v22 = *v70;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v70 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = entitlements::getAwdEntitlementRequestType(*(*(&v69 + 1) + 8 * j), v20);
          if (v24 != -1)
          {
            v25 = v24;
            v26 = *(a2 + 40);
            if (v26 == *(a2 + 44))
            {
              sub_10080B50C(a2 + 32, v26 + 1);
              v26 = *(a2 + 40);
            }

            v27 = *(a2 + 32);
            *(a2 + 40) = v26 + 1;
            *(v27 + 4 * v26) = v25;
          }
        }

        v21 = [v18 countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v21);
    }

    v28 = *(a2 + 24);
    if (v28 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v28 + 1);
      v28 = *(a2 + 24);
    }

    v29 = *(a2 + 16);
    *(a2 + 24) = v28 + 1;
    *(v29 + 4 * v28) = 2;
  }

  if (sub_10053588C(**(a1 + 40), 2))
  {
    v30 = *(a2 + 24);
    if (v30 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v30 + 1);
      v30 = *(a2 + 24);
    }

    v31 = *(a2 + 16);
    *(a2 + 24) = v30 + 1;
    *(v31 + 4 * v30) = 3;
  }

  if (sub_10053588C(**(a1 + 40), 3))
  {
    v32 = *(a2 + 24);
    if (v32 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v32 + 1);
      v32 = *(a2 + 24);
    }

    v33 = *(a2 + 16);
    *(a2 + 24) = v32 + 1;
    *(v33 + 4 * v32) = 4;
  }

  if (sub_10053588C(**(a1 + 40), 11))
  {
    v34 = *(a2 + 24);
    if (v34 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v34 + 1);
      v34 = *(a2 + 24);
    }

    v35 = *(a2 + 16);
    *(a2 + 24) = v34 + 1;
    *(v35 + 4 * v34) = 9;
  }

  if (sub_10053588C(**(a1 + 40), 13))
  {
    v36 = *(a2 + 24);
    if (v36 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v36 + 1);
      v36 = *(a2 + 24);
    }

    v37 = *(a2 + 16);
    *(a2 + 24) = v36 + 1;
    *(v37 + 4 * v36) = 6;
  }

  if (sub_10053588C(**(a1 + 40), 5))
  {
    v38 = *(a2 + 24);
    if (v38 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v38 + 1);
      v38 = *(a2 + 24);
    }

    v39 = *(a2 + 16);
    *(a2 + 24) = v38 + 1;
    *(v39 + 4 * v38) = 7;
  }

  if (sub_10053588C(**(a1 + 40), 6))
  {
    v40 = *(a2 + 24);
    if (v40 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v40 + 1);
      v40 = *(a2 + 24);
    }

    v41 = *(a2 + 16);
    *(a2 + 24) = v40 + 1;
    *(v41 + 4 * v40) = 8;
  }

  if (sub_10053588C(**(a1 + 40), 4))
  {
    v42 = *(a2 + 24);
    if (v42 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v42 + 1);
      v42 = *(a2 + 24);
    }

    v43 = *(a2 + 16);
    *(a2 + 24) = v42 + 1;
    *(v43 + 4 * v42) = 5;
  }

  if (sub_10053588C(**(a1 + 40), 12))
  {
    v44 = *(a2 + 24);
    if (v44 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v44 + 1);
      v44 = *(a2 + 24);
    }

    v45 = *(a2 + 16);
    *(a2 + 24) = v44 + 1;
    *(v45 + 4 * v44) = 10;
  }

  if (sub_10053588C(**(a1 + 40), 28))
  {
    v46 = *(a2 + 24);
    if (v46 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v46 + 1);
      v46 = *(a2 + 24);
    }

    v47 = *(a2 + 16);
    *(a2 + 24) = v46 + 1;
    *(v47 + 4 * v46) = 11;
  }

  if (sub_10053588C(**(a1 + 40), 29))
  {
    v48 = *(a2 + 24);
    if (v48 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v48 + 1);
      v48 = *(a2 + 24);
    }

    v49 = *(a2 + 16);
    *(a2 + 24) = v48 + 1;
    *(v49 + 4 * v48) = 12;
  }

  if (sub_10053588C(**(a1 + 40), 19))
  {
    v50 = *(a2 + 24);
    if (v50 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v50 + 1);
      v50 = *(a2 + 24);
    }

    v51 = *(a2 + 16);
    *(a2 + 24) = v50 + 1;
    *(v51 + 4 * v50) = 21;
  }

  if (sub_10053588C(**(a1 + 40), 8))
  {
    v52 = *(a2 + 24);
    if (v52 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v52 + 1);
      v52 = *(a2 + 24);
    }

    v53 = *(a2 + 16);
    *(a2 + 24) = v52 + 1;
    *(v53 + 4 * v52) = 16;
  }

  if (sub_10053588C(**(a1 + 40), 18))
  {
    v54 = *(a2 + 24);
    if (v54 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v54 + 1);
      v54 = *(a2 + 24);
    }

    v55 = *(a2 + 16);
    *(a2 + 24) = v54 + 1;
    *(v55 + 4 * v54) = 15;
  }

  if (sub_10053588C(**(a1 + 40), 21))
  {
    v56 = *(a2 + 24);
    if (v56 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v56 + 1);
      v56 = *(a2 + 24);
    }

    v57 = *(a2 + 16);
    *(a2 + 24) = v56 + 1;
    *(v57 + 4 * v56) = 23;
  }

  if (sub_10053588C(**(a1 + 40), 9))
  {
    v58 = *(a2 + 24);
    if (v58 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v58 + 1);
      v58 = *(a2 + 24);
    }

    v59 = *(a2 + 16);
    *(a2 + 24) = v58 + 1;
    *(v59 + 4 * v58) = 17;
  }

  if (sub_10053588C(**(a1 + 40), 10))
  {
    v60 = *(a2 + 24);
    if (v60 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v60 + 1);
      v60 = *(a2 + 24);
    }

    v61 = *(a2 + 16);
    *(a2 + 24) = v60 + 1;
    *(v61 + 4 * v60) = 18;
  }

  if (sub_10053588C(**(a1 + 40), 16))
  {
    v62 = *(a2 + 24);
    if (v62 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v62 + 1);
      v62 = *(a2 + 24);
    }

    v63 = *(a2 + 16);
    *(a2 + 24) = v62 + 1;
    *(v63 + 4 * v62) = 19;
  }

  if (sub_10053588C(**(a1 + 40), 17))
  {
    v64 = *(a2 + 24);
    if (v64 == *(a2 + 28))
    {
      sub_10080B50C(a2 + 16, v64 + 1);
      v64 = *(a2 + 24);
    }

    v65 = *(a2 + 16);
    *(a2 + 24) = v64 + 1;
    *(v65 + 4 * v64) = 20;
  }

  result = sub_10053588C(**(a1 + 40), 20);
  if (result)
  {
    v67 = *(a2 + 24);
    if (v67 == *(a2 + 28))
    {
      result = sub_10080B50C(a2 + 16, v67 + 1);
      v67 = *(a2 + 24);
    }

    v68 = *(a2 + 16);
    *(a2 + 24) = v67 + 1;
    *(v68 + 4 * v67) = 22;
  }

  return result;
}

uint64_t *sub_1004F190C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000A58E4("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 32);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return (v2 + 5);
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1004F1964(uint64_t a1, uint64_t a2)
{
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      if (!v12)
      {
        goto LABEL_7;
      }

LABEL_13:
      PersonalityInfo::iccid(***(a1 + 128));
      sub_100004AA0(buf, (a1 + 8));
      v17 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
      }

      v19[5] = 0;
      operator new();
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_7:
  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(***(a1 + 128));
    v16 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v16;
    v23 = 2080;
    v24 = "";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing controller", buf, 0x2Au);
  }

  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(a1, a2, &v18);
  sub_10004EC58(&v18, v19[0]);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1004F1C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F1C64(uint64_t a1, uint64_t a2)
{
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      if (!v12)
      {
        goto LABEL_7;
      }

LABEL_13:
      PersonalityInfo::iccid(***(a1 + 128));
      sub_100004AA0(buf, (a1 + 8));
      v17 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
      }

      v19[5] = 0;
      operator new();
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_7:
  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(***(a1 + 128));
    v16 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v16;
    v23 = 2080;
    v24 = "";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing controller", buf, 0x2Au);
  }

  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(a1, a2, &v18);
  sub_10004EC58(&v18, v19[0]);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1004F1F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004F1F78(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1004F1FD0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1004F1FD0(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1004F2058(v5, v5 + 1, v4 + 8);
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

uint64_t sub_1004F2058(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10002E2F4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1004F20E8();
  }

  return result;
}

void sub_1004F2170(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004F218C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1004F218C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1004F21F0(void *a1)
{
  *a1 = off_101E51FE0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F223C(void *a1)
{
  *a1 = off_101E51FE0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F232C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E51FE0;
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

void sub_1004F237C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F238C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F23CC(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[2])
      {
        v7 = a2 + 1;
        v8 = a2[1];
        v9 = v8;
        if (a2[2])
        {
          *(v8 + 16) = &v9;
          *a2 = v7;
          *v7 = 0;
          a2[2] = 0;
        }

        v11[0] = 0;
        v11[1] = 0;
        sub_100004AA0(v11, (v5 + 8));
        operator new();
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1004F256C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1004F25B8(unsigned __int8 **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(*v1 + 744))
  {
    v3 = v1[8];
    sub_1004F1F78(v7, (v1 + 16));
    entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(v2, v3, v7);
    sub_10004EC58(v7, v7[1]);
  }

  sub_1004F265C(&v6);
  return sub_1000049E0(&v5);
}

void sub_1004F262C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  sub_10004EC58(&a12, a13);
  sub_1004F265C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004F265C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10004EC58(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return result;
}

uint64_t sub_1004F26B0(uint64_t a1)
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

void *sub_1004F2730(void *a1)
{
  *a1 = off_101E52070;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F277C(void *a1)
{
  *a1 = off_101E52070;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F2860(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52070;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004F28A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F28B8(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F28F8(void *a1, void *a2)
{
  v3 = a1[4];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[3])
      {
        v7 = a2 + 1;
        v8 = a2[1];
        v9 = v8;
        if (a2[2])
        {
          *(v8 + 16) = &v9;
          *a2 = v7;
          *v7 = 0;
          a2[2] = 0;
        }

        sub_1004F2A0C((v5 + 8));
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1004F29C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004F2A0C(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1004F2B1C(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004F2B94(v3);
  sub_1004F2D04(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004F2B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1004F2D04(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004F2B94(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 9) == 1)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 128));
      if ((*(a1 + 9) & 1) == 0)
      {
        sub_1000D1644();
      }

      v5 = *(v2 + 160);
      *buf = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = v5;
      v14 = 2080;
      v15 = "";
      v16 = 2080;
      v17 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sFailed EAP AKA with error:%s", buf, 0x34u);
    }
  }

  if (*(v2 + 744))
  {
    v6 = *(a1 + 10);
    sub_1004F1F78(v7, a1 + 16);
    entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(v2, v6, v7);
    sub_10004EC58(v7, v7[1]);
  }
}

uint64_t *sub_1004F2D04(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10004EC58(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return result;
}

uint64_t sub_1004F2D58(uint64_t a1)
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

void *sub_1004F2DD8(void *a1)
{
  *a1 = off_101E52100;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F2E24(void *a1)
{
  *a1 = off_101E52100;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F2F08(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52100;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004F2F50(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F2F60(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F2FA0(void *a1, void *a2)
{
  v3 = a1[4];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[3])
      {
        v7 = a2 + 1;
        v8 = a2[1];
        v9 = v8;
        if (a2[2])
        {
          *(v8 + 16) = &v9;
          *a2 = v7;
          *v7 = 0;
          a2[2] = 0;
        }

        sub_1004F30BC((v5 + 8));
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1004F3070(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004F30BC(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1004F31CC(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004F3244(v3);
  sub_1004F33B4(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004F321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1004F33B4(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004F3244(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 12) == 1)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 128));
      if ((*(a1 + 12) & 1) == 0)
      {
        sub_1000D1644();
      }

      v5 = *(v2 + 160);
      *buf = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = v5;
      v14 = 2080;
      v15 = "";
      v16 = 2080;
      v17 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sFailed EAP AKA with error:%s", buf, 0x34u);
    }
  }

  if (*(v2 + 744))
  {
    v6 = *(a1 + 16);
    sub_1004F1F78(v7, a1 + 24);
    entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(v2, v6, v7);
    sub_10004EC58(v7, v7[1]);
  }
}

uint64_t *sub_1004F33B4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10004EC58(v1 + 24, *(v1 + 32));
    operator delete();
  }

  return result;
}

uint64_t sub_1004F3408(uint64_t a1)
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

uint64_t sub_1004F3488(uint64_t a1, uint64_t a2)
{
  sub_1004F34D4(a1, a2);
  *(a1 + 48) = *(a2 + 48);
  if (a1 != a2)
  {
    sub_1001122C4((a1 + 56), *(a2 + 56), *(a2 + 64), *(a2 + 64) - *(a2 + 56));
  }

  return a1;
}

uint64_t sub_1004F34D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    sub_1001122C4((a1 + 16), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t **sub_1004F3524(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 32) = *(v9 + 32);
          if (v8 != v9)
          {
            sub_1001122C4(v8 + 5, v9[5], v9[6], v9[6] - v9[5]);
            v8 = v14;
          }

          sub_1004F36A4(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_1004F3714(&v12);
  }

  if (a2 != a3)
  {
    sub_1004F376C();
  }

  return result;
}

void sub_1004F3690(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004F3714(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004F36A4(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 32))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_1000070DC(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_1004F3714(uint64_t a1)
{
  sub_10004EC58(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10004EC58(*a1, v2);
  }

  return a1;
}

void sub_1004F3880(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004F218C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1004F389C(uint64_t a1)
{
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  sub_100005978((a1 + 168));
  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 40);
  sub_1000087B4(&v4);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1004F39FC(uint64_t a1)
{
  *a1 = off_101E519D0;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004F3BCC(uint64_t a1)
{
  sub_10006DCAC(a1 + 24, *(a1 + 32));
  sub_1000FB1B0(a1);
  return a1;
}

void sub_1004F3CB4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F3D20(&v2);
}

void sub_1004F3D90(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F3DB8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10004A724((result + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1004F3E2C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F3F50(uint64_t a1)
{
  *a1 = off_101E51A40;
  sub_10004A724((a1 + 16));

  operator delete();
}

void sub_1004F41D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F423C(&v2);
}

void sub_1004F42AC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F42E8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F43F4(uint64_t a1)
{
  *a1 = off_101E51AB0;
  sub_10004A724((a1 + 16));

  operator delete();
}

void *sub_1004F4674(void *result, uint64_t a2)
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

uint64_t sub_1004F46E0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1004F4748(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F47B4(&v2);
}

void sub_1004F4824(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

void sub_1004F48F4(uint64_t a1)
{
  *a1 = off_101E51B20;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004F4AC4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1004F4BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004F4D40(a1, a2);
  sub_1004F4DAC((v4 + 3), a2 + 24);
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

void *sub_1004F4D40(void *result, uint64_t a2)
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

uint64_t sub_1004F4DAC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1004F4E14(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F4E80(&v2);
}

void sub_1004F4EF0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F4F30(uint64_t result)
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

void sub_1004F4FB0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F501C(&v2);
}

void sub_1004F508C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F50CC(uint64_t result)
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

uint64_t sub_1004F5148(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1004F518C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F51F8(&v2);
}

void sub_1004F5268(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F52A8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F53CC(uint64_t a1)
{
  *a1 = off_101E51B90;
  sub_10004A724((a1 + 16));

  operator delete();
}

void sub_1004F564C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F56B8(&v2);
}

void sub_1004F5728(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F5768(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F588C(uint64_t a1)
{
  *a1 = off_101E51C00;
  sub_10004A724((a1 + 16));

  operator delete();
}

void sub_1004F5B0C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F5B78(&v2);
}

void sub_1004F5BE8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F5C28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F5D4C(uint64_t a1)
{
  *a1 = off_101E51C70;
  sub_10004A724((a1 + 16));

  operator delete();
}

void sub_1004F5FCC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F6038(&v2);
}

void sub_1004F60A8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F60E8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F620C(uint64_t a1)
{
  *a1 = off_101E51CE0;
  sub_10004A724((a1 + 16));

  operator delete();
}

void sub_1004F648C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F64F8(&v2);
}

void sub_1004F6568(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F65A8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F66CC(uint64_t a1)
{
  *a1 = off_101E51D50;
  sub_10004A724((a1 + 16));

  operator delete();
}

void sub_1004F694C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F69B8(&v2);
}

void sub_1004F6A28(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F6A68(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F6B8C(uint64_t a1)
{
  *a1 = off_101E51DC0;
  sub_10004A724((a1 + 16));

  operator delete();
}

void sub_1004F6E0C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F6E78(&v2);
}

void sub_1004F6EE8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F6F28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F704C(uint64_t a1)
{
  *a1 = off_101E51E30;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1004F721C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1004F7310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004F7498(a1, a2);
  sub_1004F7504((v4 + 3), a2 + 24);
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

void *sub_1004F7498(void *result, uint64_t a2)
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

uint64_t sub_1004F7504(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1004F756C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F75D8(&v2);
}

void sub_1004F7648(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F7688(uint64_t result)
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

void sub_1004F7708(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F7774(&v2);
}

void sub_1004F77E4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F7824(uint64_t result)
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

uint64_t sub_1004F78A0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1004F78E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F7950(&v2);
}

void sub_1004F79C0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F7A00(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F7B24(uint64_t a1)
{
  *a1 = off_101E51EA0;
  sub_10004A724((a1 + 16));

  operator delete();
}

void sub_1004F7DA4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F7E10(&v2);
}

void sub_1004F7E80(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F7EC0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F7FE4(uint64_t a1)
{
  *a1 = off_101E51F10;
  sub_10004A724((a1 + 16));

  operator delete();
}

void sub_1004F8264(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F82D0(&v2);
}

void sub_1004F8340(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F8380(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void *sub_1004F83FC(void *a1)
{
  *a1 = off_101E52B90;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F8448(void *a1)
{
  *a1 = off_101E52B90;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F8528(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52B90;
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

void sub_1004F8568(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F8578(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F85B8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v10 = *v3;
  v11 = v5;
  if (v3[2])
  {
    v5[2] = &v11;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v10 = &v11;
  }

  sub_1004F86DC(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3])
      {
        entitlements::CEHTTPDriver::handleConnectionStateChange_sync(v7, &v10);
      }

      sub_100004A34(v9);
    }
  }

  sub_1004EDBF8(&v10, v11);
}

void sub_1004F8668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_100004A34(v11);
  sub_1004EDBF8(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1004F8690(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004F86DC(uint64_t a1, xpc_object_t *a2)
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

  sub_1004EDBF8(a1, *(a1 + 8));
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

    sub_100008EA4(v10, object, count);
    xpc_release(object[0]);
    for (i = v12; i != v10[1] || v11 != v10[0]; i = ++v12)
    {
      v9 = 0;
      object[0] = &v11;
      object[1] = i;
      sub_10003EAD4(object, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        object[0] = 0;
        v8 = 0u;
        object[1] = &v8;
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1004F8990(object, &v6);
        xpc_release(v6);
        sub_1004F8B44(a1, object);
        sub_10006DCAC(&object[1], v8);
      }

      xpc_release(v9);
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_1004F88F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(*(v18 - 64));
  xpc_release(v17);
  _Unwind_Resume(a1);
}

void sub_1004F8990(int *a1, xpc_object_t *a2)
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
    read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1004F8AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004F8B44(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1004F8C00();
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

void *sub_1004F8C98(void *a1)
{
  *a1 = off_101E52C10;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F8CE4(void *a1)
{
  *a1 = off_101E52C10;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F8DC4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52C10;
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

void sub_1004F8E04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F8E14(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F8E54(uint64_t *a1, xpc_object_t *a2)
{
  sub_10011E228(a1[1], a2);
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
        entitlements::CEHTTPDriver::handleDataAttached_sync(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1004F8EE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004F8F30(void *a1)
{
  *a1 = off_101E52C90;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F8F7C(void *a1)
{
  *a1 = off_101E52C90;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F905C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52C90;
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

void sub_1004F909C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F90AC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F90EC(uint64_t *a1, xpc_object_t *a2)
{
  sub_10032DFE4(a1[1], a2);
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
        entitlements::CEHTTPDriver::handleConnectionAvailability_sync(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1004F917C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004F91C8(void *a1)
{
  *a1 = off_101E52D10;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F9214(void *a1)
{
  *a1 = off_101E52D10;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F92F4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52D10;
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

void sub_1004F9334(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F9344(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F9384(void *a1, xpc *a2)
{
  v4 = a1[1];
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    if (*(v4 + 1))
    {
      *(v4 + 1) = 0;
    }
  }

  else
  {
    if ((*(v4 + 1) & 1) == 0)
    {
      *v4 = 256;
    }

    *v4 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3])
      {
        entitlements::CEHTTPDriver::sendRequestIfPending_sync(v7);
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_1004F9458(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004F94A4(void *a1)
{
  *a1 = off_101E52D90;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F94F0(void *a1)
{
  *a1 = off_101E52D90;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F95D0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52D90;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004F9610(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F9620(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F9660(void *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  read_rest_value();
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        entitlements::CEHTTPDriver::handleDataContextError_sync(v3, v6);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1004F96E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004F9730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1004F9874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void *sub_1004F98D0(void *result, uint64_t a2)
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

uint64_t sub_1004F993C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1004F99A4(uint64_t result, _WORD *a2, int a3)
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
  if (result != ("N3ctu12DispatchSlotIZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_5EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_5EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1004F9AA0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = v2;
    v7 = v3;
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v3);
    std::__shared_weak_count::__release_weak(v3);
    std::__shared_weak_count::__release_weak(v3);
    std::__shared_weak_count::__release_weak(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    v6 = *(*a1 + 16);
    v7 = 0;
  }

  v4 = off_101E52E98;
  v5 = v1;
  operator new();
}

uint64_t sub_1004F9C98(uint64_t a1)
{
  sub_100B8B714(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100B8BC24(v2);
    operator delete();
  }

  if (*(a1 + 40))
  {
    operator delete();
  }

  result = *(a1 + 48);
  if (result)
  {

    operator delete();
  }

  return result;
}

void sub_1004F9D3C(uint64_t a1, uint64_t a2, unsigned int a3)
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
    if (v7 == ("ZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_5" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_5" & 0x7FFFFFFFFFFFFFFFLL)))
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

void sub_1004F9E20(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *a1;
      v5 = std::__shared_weak_count::lock(v3);
      if (v5)
      {
        v6 = v5;
        if (*(a1 + 8))
        {
          entitlements::CEHTTPDriver::handleBBActivationEvent_sync(v4);
        }

        sub_100004A34(v6);
      }
    }
  }
}

void *sub_1004F9EB0(void *a1)
{
  *a1 = off_101E52EC8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F9EFC(void *a1)
{
  *a1 = off_101E52EC8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1004F9F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_1004FA018(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004FA0BC(void *a1)
{
  *a1 = off_101E52F18;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1004FA108(void *a1)
{
  *a1 = off_101E52F18;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_1004FA1E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1004FA324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t sub_1004FA380(uint64_t result, _WORD *a2, int a3)
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
  if (result != ("N3ctu12DispatchSlotIZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_6EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_6EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1004FA47C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = v2;
    v7 = v3;
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v3);
    std::__shared_weak_count::__release_weak(v3);
    std::__shared_weak_count::__release_weak(v3);
    std::__shared_weak_count::__release_weak(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    v6 = *(*a1 + 16);
    v7 = 0;
  }

  v4 = off_101E52FD0;
  v5 = v1;
  sub_1004FA57C();
}

void sub_1004FA55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void, void, uint64_t))
{
  sub_100B8F984(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004FA6F0(uint64_t a1)
{
  sub_10014A300(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100B8F984(v2);
    operator delete();
  }

  if (*(a1 + 40))
  {
    operator delete();
  }

  if (*(a1 + 48))
  {
    operator delete();
  }

  result = *(a1 + 56);
  if (result)
  {

    operator delete();
  }

  return result;
}

void sub_1004FA7B0(uint64_t a1, uint64_t a2, unsigned int a3)
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
    if (v7 == ("ZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_6" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_6" & 0x7FFFFFFFFFFFFFFFLL)))
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

void sub_1004FA894(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        entitlements::CEHTTPDriver::handleBBActivationEvent_sync(v3);
      }

      sub_100004A34(v5);
    }
  }
}

void *sub_1004FA91C(void *a1)
{
  *a1 = off_101E53000;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004FA968(void *a1)
{
  *a1 = off_101E53000;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004FAA48(uint64_t result, uint64_t a2)
{
  *a2 = off_101E53000;
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

void sub_1004FAA88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004FAA98(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004FAAD8(void *a1, rest::PairedDeviceInfoList *a2, const xpc::object *a3)
{
  v4 = a1[1];
  v16 = 0;
  v17 = 0uLL;
  rest::read_rest_value(&v16, a2, a3);
  v5 = *v4;
  v6 = v16;
  v14 = v16;
  v15 = v17;
  v17 = 0uLL;
  v16 = 0;
  if (v14 == v15)
  {
    v8 = 0;
  }

  else
  {
    v7 = v6 + 216;
    do
    {
      v8 = *(v7 - 8) == 3;
      v9 = *(v7 - 8) == 3 || v7 == v15;
      v7 += 216;
    }

    while (!v9);
  }

  *v4 = v8;
  v18 = &v14;
  sub_10032DC68(&v18);
  if (v5 != *v4)
  {
    v10 = a1[4];
    if (v10)
    {
      v11 = a1[2];
      v12 = std::__shared_weak_count::lock(v10);
      if (v12)
      {
        v13 = v12;
        if (a1[3])
        {
          entitlements::CEHTTPDriver::handleDeviceInProximityChange_sync(v11, v5);
        }

        sub_100004A34(v13);
      }
    }
  }

  v18 = &v16;
  sub_10032DC68(&v18);
}

void sub_1004FABCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_100004A34(v13);
  *(v14 - 40) = &a13;
  sub_10032DC68((v14 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1004FABF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004FAC44(void *a1)
{
  *a1 = off_101E53080;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004FAC90(void *a1)
{
  *a1 = off_101E53080;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004FAD70(uint64_t result, uint64_t a2)
{
  *a2 = off_101E53080;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004FADB0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004FADC0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004FAE00(void *a1)
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
        v5 = a1[3];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        v6[0] = 0;
        v6[1] = 0;
        sub_100004AA0(v6, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1004FAF2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1004FAF78(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        v6 = *(v1 + 24);
        *(v3 + 600) = v6;
        if (v6 == 1)
        {
          v7 = *(v3 + 40);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = PersonalityInfo::logPrefix(***(v3 + 128));
            v9 = *(v3 + 160);
            *buf = 136315906;
            v14 = v8;
            v15 = 2080;
            v16 = " ";
            v17 = 2080;
            v18 = v9;
            v19 = 2080;
            v20 = "";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sBaseband activated, initiating any pending transactions", buf, 0x2Au);
          }

          entitlements::CEHTTPDriver::sendRequestIfPending_sync(v3);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10007B284(&v12);
  return sub_1000049E0(&v11);
}

void sub_1004FB0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007B284(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1004FB184(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E53100;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1004FB1D8(uint64_t a1)
{
  if (*(a1 + 616) == 1 && *(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
  }

  if (*(a1 + 584) == 1)
  {
    sub_100220C2C(a1 + 128);
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t sub_1004FB298(uint64_t *a1, uint64_t a2)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  *v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  sub_10000D518(&v13);
  v4 = *(a2 + 23);
  v5 = (v4 & 0x80u) != 0;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v5)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = "<invalid>";
  }

  strlen(v7);
  v8 = sub_10000C030(&v13);
  v9 = sub_10000C030(v8);
  sub_10000C030(v9);
  sub_10006EE70(&v13 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}