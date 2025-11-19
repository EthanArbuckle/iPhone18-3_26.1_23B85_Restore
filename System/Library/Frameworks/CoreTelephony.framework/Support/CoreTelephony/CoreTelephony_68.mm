void sub_10045D300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, char *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  a17 = &a24;
  sub_1000E2698(&a17);
  sub_10045D44C(&a13);
  sub_1000049E0(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045D44C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10044FFCC(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_10045D49C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_10045D4E4(uint64_t *a1)
{
  if (*a1)
  {
    sub_1000E26EC(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_10045D524(void **a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  if (v1[2] == v1[1])
  {
    v15 = *(v2 + 48);
    sub_100444744(&v23);
    v16 = std::string::append(&v23, "com.apple.CommCenter.EntitlementSubscriptionDetails.plist", 0x39uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    *&v25 = *(&v16->__r_.__value_.__l + 2);
    *buf = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    cf = 0;
    (*(*v15 + 896))(v15, buf, &cf);
    sub_10002D760(&cf);
    if (SBYTE7(v25) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v3 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    v4 = [NSNumber numberWithInt:4];
    [v3 encodeObject:v4 forKey:@"version"];

    v5 = objc_opt_new();
    v6 = v1[1];
    for (i = v1[2]; v6 != i; v6 += 8)
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *buf = 0u;
      sub_100633230(buf);
      sub_10039F83C(v6, buf);
      memset(&v23, 0, sizeof(v23));
      PB::Writer::Writer(&v23);
      sub_100633CF8(buf, &v23);
      cf = 0;
      cf = CFDataCreate(kCFAllocatorDefault, v23.__r_.__value_.__l.__size_, v23.__r_.__value_.__r.__words[0] - v23.__r_.__value_.__l.__size_);
      v8 = cf;
      [v5 addObject:v8];

      sub_10002D760(&cf);
      PB::Writer::~Writer(&v23);
      sub_100633334(buf);
    }

    [v3 encodeObject:v5 forKey:@"kEntitlementSubscriptionsKey"];
    v9 = [v3 encodedData];
    cf = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 count];
      *buf = 134217984;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I saveEntitlementSubscriptionDetails: Saved [%lu] subscription info", buf, 0xCu);
    }

    v12 = *(v2 + 48);
    sub_100444744(&v23);
    v13 = std::string::append(&v23, "com.apple.CommCenter.EntitlementSubscriptionDetails.plist", 0x39uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    *&v25 = *(&v13->__r_.__value_.__l + 2);
    *buf = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v21 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v12 + 896))(v12, buf, &v21);
    sub_10002D760(&v21);
    if (SBYTE7(v25) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    sub_10002D760(&cf);
  }

  sub_100171CB8(&v20);
  return sub_1000049E0(&v19);
}

void sub_10045D898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15, const void *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10002D760(&a16);

  sub_100171CB8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10045D9B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10045DA4C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10045DACC(void **a1)
{
  v1 = *a1;
  v40 = a1;
  v41 = v1;
  v2 = *v1;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v3 = *(v2 + 48);
  sub_100444744(&v66);
  v4 = std::string::append(&v66, "com.apple.CommCenter.EntitlementSubscriptionDetails.plist", 0x39uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  *&v55 = *(&v4->__r_.__value_.__l + 2);
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(*v3 + 904))(v42, v3, __p);
  v6 = *&v42[0];
  sub_10002D760(v42);
  if (SBYTE7(v55) < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_41:
    v24 = *(v2 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: No data", __p, 2u);
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v55 = 0;
    sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
    v25 = v1[4];
    if (!v25)
    {
      sub_100022DB4();
    }

    (*(*v25 + 48))(v25, __p);
    v66.__r_.__value_.__r.__words[0] = __p;
    sub_10016BF8C(&v66);
    goto LABEL_65;
  }

  operator delete(v66.__r_.__value_.__l.__data_);
  if (!v6)
  {
    goto LABEL_41;
  }

LABEL_5:
  v7 = [NSKeyedUnarchiver alloc];
  v49 = 0;
  v8 = [v7 initForReadingFromData:v6 error:&v49];
  v9 = v49;
  v10 = v9;
  if (!v8 || v9)
  {
    v26 = *(v2 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: No unarchiver or error", __p, 2u);
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v55 = 0;
    sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
    v27 = v1[4];
    if (!v27)
    {
      sub_100022DB4();
    }

    (*(*v27 + 48))(v27, __p);
    v66.__r_.__value_.__r.__words[0] = __p;
    sub_10016BF8C(&v66);
    v11 = 0;
  }

  else
  {
    v11 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v11 intValue] == 4)
      {
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = [NSSet setWithObjects:v12, v13, objc_opt_class(), 0];
        v38 = [v8 decodeObjectOfClasses:v14 forKey:@"kEntitlementSubscriptionsKey"];

        if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          obj = v38;
          v15 = [obj countByEnumeratingWithState:&v45 objects:&v66 count:16];
          if (v15)
          {
            v39 = *v46;
            while (2)
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v46 != v39)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v45 + 1) + 8 * i);
                memset(v44, 0, sizeof(v44));
                BytePtr = CFDataGetBytePtr(v17);
                Length = CFDataGetLength(v17);
                PB::Reader::Reader(v44, BytePtr, Length);
                v43 = 0;
                memset(v42, 0, sizeof(v42));
                sub_100633230(v42);
                if ((sub_10063371C(v42, v44) & 1) == 0)
                {
                  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
                  {
                    sub_101770C18();
                  }

                  __p[0] = 0;
                  __p[1] = 0;
                  *&v55 = 0;
                  sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
                  v35 = v1[4];
                  if (!v35)
                  {
                    sub_100022DB4();
                  }

                  (*(*v35 + 48))(v35, __p);
                  v53 = __p;
                  sub_10016BF8C(&v53);
                  sub_100633334(v42);

                  goto LABEL_63;
                }

                *v64 = 0u;
                v65 = 0u;
                *v62 = 0u;
                v63 = 0u;
                v60 = 0u;
                *v61 = 0u;
                *v58 = 0u;
                *v59 = 0u;
                *v56 = 0u;
                v57 = 0u;
                *__p = 0u;
                v55 = 0u;
                BYTE9(v65) = 1;
                sub_10039FA34(v42, __p);
                v20 = v51;
                if (v51 >= v52)
                {
                  v21 = sub_1001E013C(&v50, __p);
                }

                else
                {
                  sub_10016A078(v51, __p);
                  v21 = v20 + 192;
                }

                v51 = v21;
                if (SBYTE7(v65) < 0)
                {
                  operator delete(v64[0]);
                }

                if (SHIBYTE(v63) < 0)
                {
                  operator delete(v62[1]);
                }

                if (SHIBYTE(v62[0]) < 0)
                {
                  operator delete(v61[0]);
                }

                if (SHIBYTE(v60) < 0)
                {
                  operator delete(v59[1]);
                }

                if (SHIBYTE(v59[0]) < 0)
                {
                  operator delete(v58[0]);
                }

                if (SBYTE7(v57) < 0)
                {
                  operator delete(v56[0]);
                }

                if (SHIBYTE(v55) < 0)
                {
                  operator delete(__p[1]);
                }

                sub_100633334(v42);
              }

              v15 = [obj countByEnumeratingWithState:&v45 objects:&v66 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          [v8 finishDecoding];
          v22 = *(v2 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [obj count];
            LODWORD(__p[0]) = 134217984;
            *(__p + 4) = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: Loaded %lu items", __p, 0xCu);
          }

          __p[0] = 0;
          __p[1] = 0;
          *&v55 = 0;
          sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
          sub_10045E644((v1 + 1));
          *&v42[0] = __p;
          sub_10016BF8C(v42);
        }

        else
        {
          [v8 finishDecoding];
          __p[0] = 0;
          __p[1] = 0;
          *&v55 = 0;
          sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
          v33 = v1[4];
          if (!v33)
          {
            sub_100022DB4();
          }

          (*(*v33 + 48))(v33, __p);
          v66.__r_.__value_.__r.__words[0] = __p;
          sub_10016BF8C(&v66);
          v34 = *(v2 + 40);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v66.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: Failed to decode kEntitlementSubscriptionsKey", &v66, 2u);
          }
        }

LABEL_63:
      }

      else
      {
        [v8 finishDecoding];
        v30 = *(v2 + 40);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v11 intValue];
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: Version mismatch [%d]", __p, 8u);
        }

        __p[0] = 0;
        __p[1] = 0;
        *&v55 = 0;
        sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
        v32 = v1[4];
        if (!v32)
        {
          sub_100022DB4();
        }

        (*(*v32 + 48))(v32, __p);
        v66.__r_.__value_.__r.__words[0] = __p;
        sub_10016BF8C(&v66);
      }
    }

    else
    {
      [v8 finishDecoding];
      __p[0] = 0;
      __p[1] = 0;
      *&v55 = 0;
      sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
      v28 = v1[4];
      if (!v28)
      {
        sub_100022DB4();
      }

      (*(*v28 + 48))(v28, __p);
      v66.__r_.__value_.__r.__words[0] = __p;
      sub_10016BF8C(&v66);
      v29 = *(v2 + 40);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v66.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: Version decoding failure", &v66, 2u);
      }
    }
  }

LABEL_65:
  *&v42[0] = &v50;
  sub_10016BF8C(v42);
  sub_10045E5F4(&v41);
  return sub_1000049E0(&v40);
}

void sub_10045E458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  a17 = &a43;
  sub_10016BF8C(&a17);
  sub_10045E5F4(&a16);
  sub_1000049E0(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045E5F4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100171E70(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_10045E644(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t *sub_10045E68C(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  if (*(v1 + 23) < 0)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      sub_100005F2C(__dst, *v1, v3);
      goto LABEL_6;
    }

LABEL_8:
    CFPreferencesSetValue(@"SequoiaPurchaseIccid", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    goto LABEL_22;
  }

  if (!*(v1 + 23))
  {
    goto LABEL_8;
  }

  v2 = *v1;
  v10 = *(v1 + 16);
  *__dst = v2;
LABEL_6:
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v14 = v10;
  }

  v12 = 0;
  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(&v15, __p[0], __p[1]);
  }

  else
  {
    v15 = *__p;
    v16 = v14;
  }

  v17 = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = v12;
    v12 = v17;
    v18 = v4;
    sub_100005978(&v18);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  v5 = v12;
  v11 = v12;
  v12 = 0;
  sub_100005978(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  CFPreferencesSetValue(@"SequoiaPurchaseIccid", v5, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v11);
LABEL_22:
  sub_1000929F0();
  sub_10045E8BC(&v8);
  return sub_1000049E0(&v7);
}

void sub_10045E840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_10045E8BC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045E8BC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10045E914(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  sub_1000929F0();
  v10 = 0;
  *&v11 = CFPreferencesCopyValue(@"SequoiaPurchaseIccid", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100222990(&v10, &v11);
  if (v10)
  {
    v11 = 0uLL;
    v12 = 0;
    ctu::cf::assign();
    v8 = v11;
    v9 = v12;
    v2 = *(v1 + 24);
    if (!v2)
    {
      sub_100022DB4();
    }

    (*(*v2 + 48))(v2, &v8);
    if (SHIBYTE(v9) < 0)
    {
      v3 = &v8;
LABEL_8:
      operator delete(*v3);
    }
  }

  else
  {
    sub_10000501C(&v11, "");
    v4 = *(v1 + 24);
    if (!v4)
    {
      sub_100022DB4();
    }

    (*(*v4 + 48))(v4, &v11);
    if (SHIBYTE(v12) < 0)
    {
      v3 = &v11;
      goto LABEL_8;
    }
  }

  sub_100005978(&v10);
  sub_10045EAC4(&v7);
  return sub_1000049E0(&v6);
}

void sub_10045EA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  sub_100005978(&a15);
  sub_10045EAC4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045EAC4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10001C200(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10045EB0C(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_10045EBB8();
  }

  return v2;
}

char *sub_10045EC38(char *__dst, __int128 *a2, __int128 *a3)
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

void sub_10045ECB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045ECD0(uint64_t a1, uint64_t a2)
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

void *sub_10045ED68(void *a1)
{
  *a1 = off_101E4DEA0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  sub_10045A6D4((a1 + 2));
  return a1;
}

void sub_10045EDC0(void *a1)
{
  *a1 = off_101E4DEA0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  sub_10045A6D4((a1 + 2));

  operator delete();
}

void sub_10045EEB8(_Unwind_Exception *a1)
{
  sub_10045A6D4(v1 + 16);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10045EEDC(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101E4DEA0;
  a2[1] = v4;
  sub_10045ECD0((a2 + 2), (a1 + 2));
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  return sub_100034C50((a2 + 6), a1[6], a1[7], a1[7] - a1[6]);
}

void sub_10045EF60(void *a1)
{
  sub_10045F310(a1 + 8);

  operator delete(a1);
}

void sub_10045EF9C(void *a1, uint64_t *a2)
{
  v4 = a2[1];
  v3 = *a2;
  v26 = v4;
  v5 = *(a2 + 1);
  v27 = v5;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  if ((v3 & 1) == 0)
  {
LABEL_10:
    v12 = 0x4000;
    goto LABEL_11;
  }

  v6 = a1[1];
  v7 = v5;
  if (v4 == v5)
  {
LABEL_7:
    v11 = *(v6 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I force clear local cache of cellular plan information", buf, 2u);
    }

    *(v6 + 88) = *(v6 + 80);
    goto LABEL_10;
  }

  v8 = a1[6];
  v9 = a1[7] - v8;
  while (1)
  {
    v10 = *(v4 + 24);
    if (*(v4 + 32) - v10 == v9 && !memcmp(v10, v8, v9))
    {
      break;
    }

    v4 += 56;
    if (v4 == v7)
    {
      goto LABEL_7;
    }
  }

  v13 = *(v6 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I manatee date is up to date. refresh last upload timestamp", buf, 2u);
  }

  (***(v6 + 48))(v28);
  ServiceMap = Registry::getServiceMap(*v28);
  v15 = ServiceMap;
  if (v16 < 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  *buf = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, buf);
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  std::mutex::unlock(v15);
  *buf = v22;
  v31 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v21);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v24 = sub_100456F58(buf, Current);
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  if (!v24)
  {
    v25 = *(v6 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_101770C4C(v28, &v28[1], v25);
    }
  }

  v12 = 0;
LABEL_11:
  sub_100449E18((a1 + 2), v12);
  *buf = &v26;
  sub_10027B3D0(buf);
}

void sub_10045F204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10027B3D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10045F244(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045F290(uint64_t a1, uint64_t a2)
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

uint64_t sub_10045F310(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  return sub_10045A6D4(a1 + 8);
}

uint64_t *sub_10045F354(const void **a1)
{
  v3 = a1;
  v1 = *a1;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, *a1);
  CFPreferencesSetValue(@"kCKUploadCount", v4, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  sub_100029A48(&v4);
  if (v1)
  {
    operator delete();
  }

  return sub_1000049E0(&v3);
}

void sub_10045F400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    operator delete();
  }

  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045F440(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  sub_1000929F0();
  v8 = 0;
  v7 = CFPreferencesCopyValue(@"kCKUploadCount", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100209D88(&v8, &v7);
  v3 = v8;
  if (v8)
  {
    LODWORD(v7) = 0;
    ctu::cf::assign(&v7, v8, v2);
    v3 = v7;
  }

  sub_100449E18(v1, v3);
  sub_100029A48(&v8);
  sub_10045F518(&v6);
  return sub_1000049E0(&v5);
}

void sub_10045F4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_100029A48(&a12);
  sub_10045F518(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045F518(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10045A6D4(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10045F560(const void **a1)
{
  v3 = a1;
  v1 = *a1;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, *a1);
  CFPreferencesSetValue(@"kCKUploadDate", v4, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  sub_100029A48(&v4);
  if (v1)
  {
    operator delete();
  }

  return sub_1000049E0(&v3);
}

void sub_10045F60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    operator delete();
  }

  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10045F64C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10045F6E4(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10045F764(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  sub_1000929F0();
  v7 = 0;
  v8 = CFPreferencesCopyValue(@"kCKUploadDate", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100209D88(&v7, &v8);
  v3 = v7;
  if (v7)
  {
    v8 = 0;
    ctu::cf::assign(&v8, v7, v2);
    v3 = v8;
  }

  sub_10045F884(v1, v3);
  sub_100029A48(&v7);
  sub_10045F83C(&v6);
  return sub_1000049E0(&v5);
}

void sub_10045F810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  sub_100029A48(&a11);
  sub_10045F83C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045F83C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100450134(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10045F884(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *sub_10045F8D8(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100449E18(v3, 20);
  sub_10045F518(&v3);
  return sub_1000049E0(&v2);
}

void sub_10045F920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10045F518(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045F93C(CFArrayRef **a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  (***(*v1 + 6))(&buf);
  ServiceMap = Registry::getServiceMap(buf);
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
  v23 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v23);
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
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (v11)
  {
    v13 = v1[1];
    if (v13 && CFArrayGetCount(v13))
    {
      v14 = [NSKeyedArchiver archivedDataWithRootObject:v1[1] requiringSecureCoding:1 error:0];
      v15 = v14;
      v23 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      v16 = kCFPreferencesCurrentUser;
      v17 = kCFPreferencesAnyHost;
      (*(*v11 + 16))(v11, @"AddOnRemotePlanList", v15, @"no_backup/com.apple.CommCenter.AddOnRemotePlanList.plist", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v18 = *(v2 + 5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFArrayGetCount(v1[1]);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = Count;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Saved (%lu) add on remote devices", &buf, 0xCu);
      }

      sub_10002D760(&v23);
    }

    else
    {
      v16 = kCFPreferencesCurrentUser;
      v17 = kCFPreferencesAnyHost;
      (*(*v11 + 16))(v11, @"AddOnRemotePlanList", 0, @"no_backup/com.apple.CommCenter.AddOnRemotePlanList.plist", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    }

    (*(*v11 + 48))(v11, @"no_backup/com.apple.CommCenter.AddOnRemotePlanList.plist", v16, v17);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_100200094(&v22);
  return sub_1000049E0(&v21);
}

void sub_10045FC30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  sub_10002D760(va2);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  sub_100200094(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045FCA0(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_1004501B4(v6, (v1 + 1));
  sub_10045051C(v7, (v1 + 4));
  sub_10044B388(v2, v6);
  if (v17 == 1)
  {
    sub_1001349A0(v16, v16[1]);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }
  }

  sub_1004504C0(v6, v6[1]);
  sub_10045FDB8(&v5);
  return sub_1000049E0(&v4);
}

void sub_10045FD78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_10044D3E8(va2);
  sub_10045FDB8(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045FDB8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 168) == 1)
    {
      sub_1001349A0(v1 + 144, *(v1 + 152));
      if (*(v1 + 135) < 0)
      {
        operator delete(*(v1 + 112));
      }

      if (*(v1 + 111) < 0)
      {
        operator delete(*(v1 + 88));
      }

      if (*(v1 + 87) < 0)
      {
        operator delete(*(v1 + 64));
      }

      if (*(v1 + 63) < 0)
      {
        operator delete(*(v1 + 40));
      }
    }

    sub_1004504C0(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_10045FE64(uint64_t a1, uint64_t a2)
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

uint64_t sub_10045FEFC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10045FF7C(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10045FE64(v6, (v1 + 1));
  sub_10044B8A8(v2, v6);
  sub_100450584(v6);
  sub_100460030(&v5);
  return sub_1000049E0(&v4);
}

void sub_100460004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_100450584(va2);
  sub_100460030(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100460030(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100450584(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_100460080(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_100450860(v6, (v1 + 1));
  sub_10044D660(v2, v6);
  sub_100450B8C(v6, v6[1]);
  sub_100460110(&v5);
  return sub_1000049E0(&v4);
}

void sub_1004600E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  sub_100450B8C(&a12, a13);
  sub_100460110(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100460110(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100450B8C(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_100460164(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004601FC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10046027C(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_100460164(v6, (v1 + 1));
  sub_10044DFA0(v2, v6);
  sub_100450604(v6);
  sub_100460330(&v5);
  return sub_1000049E0(&v4);
}

void sub_100460304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_100450604(va2);
  sub_100460330(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100460330(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100450604(v1 + 8);
    operator delete();
  }

  return result;
}

void sub_100460408(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "LoadPrivateNetworkSettings", "", v5, 2u);
    }
  }
}

uint64_t sub_100460480(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004604CC(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_100460560();
  }

  return result;
}

void sub_1004605E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001352A0(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1004605FC(char *__dst, __int128 *a2, __int128 *a3)
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

  v6 = *a3;
  *(__dst + 5) = *(a3 + 2);
  *(__dst + 24) = v6;
  if (*(a3 + 47) < 0)
  {
    sub_100005F2C(__dst + 48, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    *(__dst + 8) = *(a3 + 5);
    *(__dst + 3) = v7;
  }

  if (*(a3 + 71) < 0)
  {
    sub_100005F2C(__dst + 72, *(a3 + 6), *(a3 + 7));
  }

  else
  {
    v8 = a3[3];
    *(__dst + 11) = *(a3 + 8);
    *(__dst + 72) = v8;
  }

  return __dst;
}

void sub_1004606B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004606E4(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100460798();
  }

  return v2;
}

char *sub_100460824(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = 0u;
  *(__dst + 344) = 0u;
  *(__dst + 360) = 0u;
  *(__dst + 312) = 0u;
  *(__dst + 328) = 0u;
  *(__dst + 280) = 0u;
  *(__dst + 296) = 0u;
  *(__dst + 248) = 0u;
  *(__dst + 264) = 0u;
  *(__dst + 216) = 0u;
  *(__dst + 232) = 0u;
  *(__dst + 184) = 0u;
  *(__dst + 200) = 0u;
  *(__dst + 152) = 0u;
  *(__dst + 168) = 0u;
  *(__dst + 120) = 0u;
  *(__dst + 136) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 104) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 40) = 0u;
  sub_100450684((__dst + 24));
  return __dst;
}

void sub_1004608B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100460954(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "SavePrivateNetworkProfiles", "", v5, 2u);
    }
  }
}

uint64_t sub_1004609CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100460AA0(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "LoadPrivateNetworkProfiles", "", v5, 2u);
    }
  }
}

uint64_t sub_100460B18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100460B64(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_100460C08();
  }

  return result;
}

void sub_100460C94(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100450ADC(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_100460CB0(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 19) = 0;
  *(__dst + 136) = 0u;
  *(__dst + 120) = 0u;
  *(__dst + 104) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 40) = 0u;
  *(__dst + 24) = 0u;
  sub_10000501C(__dst + 80, "");
  sub_10000501C(__dst + 104, "");
  *(__dst + 64) = 0;
  *(__dst + 33) = 0;
  *(__dst + 19) = 0;
  *(__dst + 18) = 0;
  *(__dst + 17) = __dst + 144;
  return __dst;
}

void sub_100460D60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100460DB4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100460DE4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_100460EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100460F00(uint64_t a1)
{
  (*(**(a1 + 48) + 40))(v2);
  sub_10016E3EC(a1 + 112, v2);
  if (LOBYTE(v2[0]) == 1 && v3 < 0)
  {
    operator delete(v2[1]);
  }

  if (*(a1 + 112) == 1)
  {
    *(a1 + 145) = 1;
  }
}

void sub_100460FB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100460FC4(uint64_t a1, NSObject **a2, void *a3)
{
  *a1 = off_101E4E1A0;
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, "cp.w.sim");
  sub_100461168(v6, a2, &v12);
  ctu::OsLogContext::~OsLogContext(&v12);
  *a1 = off_101E4E0B0;
  v7 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CellularPlanSimCommandOperations");
  v9 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 144) = 0;
  return a1;
}

void sub_1004610F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
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

  v21 = *(v18 + 56);
  if (v21)
  {
    sub_100004A34(v21);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544(v19);
  _Unwind_Resume(a1);
}

void *sub_100461168(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1004611D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1004611F4(uint64_t a1)
{
  *a1 = off_101E4E0B0;
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    *(a1 + 112) = 0;
  }

  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
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
    sub_100004A34(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1004612EC(uint64_t a1)
{
  sub_1004611F4(a1);

  operator delete();
}

void sub_100461324(uint64_t a1)
{
  (*(**(a1 + 48) + 56))(&v1);
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_100461390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004613B0(uint64_t a1)
{
  *(a1 + 145) = 0;
  *(a1 + 147) = 0;
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    *(a1 + 112) = 0;
  }

  v2 = *(a1 + 48);
  v4[0] = 0;
  (*(*v2 + 32))(v2, v4);
  if (v4[0] == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  result = *(a1 + 104);
  *(a1 + 104) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1004614A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004614D0(uint64_t a1, unsigned __int8 *a2)
{
  v5 = (a1 + 112);
  v4 = *(a1 + 112);
  v6 = *a2;
  if (v4 != 1 || (v6 & 1) == 0)
  {
    if (v4 == v6)
    {
      return;
    }

    goto LABEL_18;
  }

  v7 = *(a1 + 143);
  if (v7 >= 0)
  {
    v8 = *(a1 + 143);
  }

  else
  {
    v8 = *(a1 + 128);
  }

  v9 = a2[31];
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 2);
  }

  if (v8 != v9 || (v7 >= 0 ? (v11 = (a1 + 120)) : (v11 = *(a1 + 120)), v10 >= 0 ? (v12 = a2 + 8) : (v12 = *(a2 + 1)), memcmp(v11, v12, v8)))
  {
LABEL_18:
    sub_10016E810(v5, a2);
    if (*v5 == 1)
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I new sim selected setting reset as required", v14, 2u);
      }

      (*(**(a1 + 48) + 32))(*(a1 + 48), v5);
      *(a1 + 144) = 256;
      sub_100461610(a1);
    }
  }
}

void sub_100461610(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 88);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I acquiring online assertion", buf, 2u);
  }

  sub_10000501C(buf, "/cc/assertions/baseband_online");
  ctu::rest::AssertionHandle::create();
  if (v29 < 0)
  {
    operator delete(*buf);
  }

  v5 = v26;
  v26 = 0uLL;
  v6 = *(a1 + 88);
  *(a1 + 80) = v5;
  if (v6)
  {
    sub_100004A34(v6);
    if (*(&v26 + 1))
    {
      sub_100004A34(*(&v26 + 1));
    }
  }

  sub_100004AA0(buf, (a1 + 8));
  v8 = *buf;
  v7 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_1004621CC;
  aBlock[3] = &unk_101E4E120;
  aBlock[4] = a1;
  aBlock[5] = v8;
  v25 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (v9)
  {
    v11 = _Block_copy(v9);
  }

  else
  {
    v11 = 0;
  }

  *buf = off_101E4E318;
  v28 = v11;
  v30 = buf;
  ctu::rest::AssertionHandle::setHandler_impl();
  sub_10000FF50(buf);
  (*(**(a1 + 48) + 48))(buf);
  v12 = *buf;
  sub_10000501C(__p, "online on sim select");
  v13 = (*(**(a1 + 48) + 64))(*(a1 + 48));
  v14 = *(a1 + 24);
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1174405120;
  v18[2] = sub_1004622C8;
  v18[3] = &unk_101E4E150;
  v18[4] = a1;
  v18[5] = v8;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = _Block_copy(v18);
  sub_100D23364(v12, __p, 1, 1000000 * v13, &object, &v20);
  v15 = v26;
  *&v26 = 0;
  v16 = *(a1 + 96);
  *(a1 + 96) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
    v17 = v26;
    *&v26 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28)
  {
    sub_100004A34(v28);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_100461A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100461B00(uint64_t a1, int a2)
{
  if (*(a1 + 144) != a2)
  {
    *(a1 + 144) = a2;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I sim state ready changed : %d", v7, 8u);
      if (*(a1 + 144))
      {
        goto LABEL_12;
      }
    }

    else if (a2)
    {
      goto LABEL_12;
    }

    v5 = *(a1 + 104);
    if (v5)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7[0]) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I reset camp timer on sim going not ready", v7, 2u);
        v5 = *(a1 + 104);
        *(a1 + 104) = 0;
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(a1 + 104) = 0;
      }

      (*(*v5 + 8))(v5);
    }

LABEL_12:
    sub_100461C50(a1);
  }
}

void sub_100461C50(uint64_t a1)
{
  if (*(a1 + 145) == 1 && *(a1 + 144) == 1)
  {
    if (!(*(**(a1 + 48) + 72))(*(a1 + 48)))
    {
      if (*(a1 + 146) != 1)
      {
        return;
      }

      v4 = *(a1 + 40);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v5 = "#I no reset is required clearing";
      goto LABEL_14;
    }

    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I need to reset and sim is ready", buf, 2u);
    }

    if (*(a1 + 147) == 1)
    {
      v3 = *(a1 + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I sending sim reset", buf, 2u);
      }

      (*(**(a1 + 48) + 16))(*(a1 + 48));
      v4 = *(a1 + 40);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v5 = "#I reset saved iccid";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
LABEL_15:
      sub_1004613B0(a1);
      return;
    }

    if (!*(a1 + 104))
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I start wait for camp timer", buf, 2u);
      }

      (*(**(a1 + 48) + 48))(buf);
      v7 = *buf;
      sub_10000501C(__p, "wait for camp timer");
      v8 = *(a1 + 24);
      object = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = sub_100462070;
      v12[3] = &unk_101E4E100;
      v12[4] = a1;
      aBlock = _Block_copy(v12);
      sub_100D23364(v7, __p, 1, 20000000, &object, &aBlock);
      v9 = v19;
      v19 = 0;
      v10 = *(a1 + 104);
      *(a1 + 104) = v9;
      if (v10)
      {
        (*(*v10 + 8))(v10);
        v11 = v19;
        v19 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
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

      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18)
      {
        sub_100004A34(v18);
      }
    }
  }
}

void sub_100461F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

  v23 = *(v21 - 40);
  if (v23)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_100461FE4(uint64_t a1)
{
  if (*(a1 + 145) == 1)
  {
    v6 = v1;
    v7 = v2;
    if ((*(a1 + 146) & 1) == 0)
    {
      v4 = *(a1 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I cb setup calculate reset", v5, 2u);
      }

      *(a1 + 146) = 1;
      sub_100461C50(a1);
    }
  }
}

uint64_t sub_100462070(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 147) = 1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I attempt reset on timer expiry", v4, 2u);
  }

  sub_100461C50(v1);
  result = *(v1 + 104);
  *(v1 + 104) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_100462114(uint64_t a1)
{
  result = (*(**(a1 + 48) + 80))(*(a1 + 48));
  if (result)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I sending sim reprovision", v4, 2u);
    }

    return (*(**(a1 + 48) + 24))(*(a1 + 48));
  }

  return result;
}

void sub_1004621CC(void *a1, int a2)
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
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9[0] = 67109120;
          v9[1] = a2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I bb online granted: %d", v9, 8u);
        }
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10046229C(uint64_t result, uint64_t a2)
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

void sub_1004622B8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004622C8(void *a1)
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
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I assertion timer expired", v9, 2u);
        }

        v7 = v3[11];
        v3[10] = 0;
        v3[11] = 0;
        if (v7)
        {
          sub_100004A34(v7);
        }

        v8 = v3[12];
        v3[12] = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100462444(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100462518);
  __cxa_rethrow();
}

void sub_100462484(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004624D8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100462518(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100462544(void *a1)
{
  *a1 = off_101E4E318;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_100462594(void *a1)
{
  *a1 = off_101E4E318;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void sub_1004626AC(const void **a1)
{
  sub_1004627B8(a1 + 1);

  operator delete(a1);
}

uint64_t sub_1004626FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100462748(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  *a1 = v3;
  return a1;
}

void *sub_100462780(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  *a1 = v3;
  return a1;
}

void sub_1004627B8(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_1004627DC(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  Registry::getTimerService(&v6, *(a1 + 56));
  if (v6)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      (*(*v2 + 16))(v2);
    }

    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Starting timer to clear credentials", buf, 2u);
    }

    sub_100004AA0(buf, (a1 + 8));
    v4 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
    }

    operator new();
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_101770C8C(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_100462A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 72);
  if (v25)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_100462AF8(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Clearing expired credentials", v8, 2u);
        }

        v7 = *(v3 + 104);
        *(v3 + 104) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v9[0] = off_101E4E3C8;
        v9[3] = v9;
        sub_1003BE924(v3, v9);
        sub_10028ED7C(v9);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100462C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10028ED7C(va);
  sub_100004A34(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100462C3C(uint64_t result, uint64_t a2)
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

void sub_100462C58(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_100462CF4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4E428))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *sub_100462D40(int a1)
{
  if ((a1 - 1) > 0x17)
  {
    return "kInitializeController";
  }

  else
  {
    return off_101E4E448[a1 - 1];
  }
}

double sub_100462D68(uint64_t a1, void *a2, __int128 *a3, int a4, __int128 *a5, int a6, __int128 *a7, uint64_t a8, char a9)
{
  v10 = sub_1002C9360(a1, a2, a3, a4, a5, a7, a8);
  *v10 = &off_101E4E518;
  *(v10 + 232) = a6;
  *(v10 + 236) = a9;
  *&result = 0x9FFFFFFFFLL;
  *(v10 + 240) = xmmword_101807C20;
  *(v10 + 256) = 2;
  return result;
}

uint64_t sub_100462DF8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 256) = *(a2 + 8);
  *(result + 248) = v2;
  return result;
}

uint64_t sub_100462E1C(uint64_t a1, int a2)
{
  result = sub_1002C977C(a1, a2);
  if (*(a1 + 232) == 3)
  {
    v4 = 30;
  }

  else
  {
    v4 = -1;
  }

  *(a1 + 240) = v4;
  return result;
}

void sub_100462E58(void **a1)
{
  sub_1002C9F20(a1);

  operator delete();
}

uint64_t sub_100462EA4(uint64_t a1, int a2, void *a3, NSObject **a4, const char *a5, uint64_t *a6)
{
  ctu::OsLogContext::OsLogContext(&v22, kCtLoggingSystemName, "lazuli.timer");
  ctu::OsLogLogger::OsLogLogger(v23, &v22);
  ctu::OsLogLogger::OsLogLogger(a1, v23);
  ctu::OsLogLogger::~OsLogLogger(v23);
  ctu::OsLogContext::~OsLogContext(&v22);
  *(a1 + 8) = a2;
  v12 = *a4;
  *(a1 + 16) = *a4;
  if (v12)
  {
    dispatch_retain(v12);
  }

  v13 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = strlen(a5);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  *(a1 + 63) = v14;
  v16 = (a1 + 40);
  if (v14)
  {
    memmove(v16, a5, v14);
  }

  *(v16 + v15) = 0;
  v17 = *(a1 + 32);
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_100A94378();
  if (v21)
  {
    sub_100004A34(v21);
  }

  v19 = *a6;
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_100463034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, char a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (*(v14 + 63) < 0)
  {
    operator delete(*v15);
  }

  v17 = *(v14 + 32);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(v14 + 16);
  if (v18)
  {
    dispatch_release(v18);
  }

  ctu::OsLogLogger::~OsLogLogger(v14);
  _Unwind_Resume(a1);
}

void sub_1004630A8(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 24))
  {
    sub_10025ABF0((a1 + 88), a2);
    Registry::getTimerService(&__p, *(a1 + 24));
    v5 = __p;
    if (*(a1 + 63) < 0)
    {
      sub_100005F2C(&__dst, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __dst = *(a1 + 40);
      v20 = *(a1 + 56);
    }

    if (a3)
    {
      v7 = (*(a1 + 72) * 0.99);
    }

    else
    {
      v7 = *(a1 + 72);
    }

    v8 = *(a1 + 16);
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100463340;
    aBlock[3] = &unk_101E4E650;
    aBlock[4] = a1;
    v17 = _Block_copy(aBlock);
    sub_100D23364(v5, &__dst, 2, 1000000 * v7, &object, &v17);
    v9 = v21;
    v21 = 0;
    v10 = *(a1 + 80);
    *(a1 + 80) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
      v11 = v21;
      v21 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    if (v17)
    {
      _Block_release(v17);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst);
    }

    if (v14)
    {
      sub_100004A34(v14);
    }

    sub_1004633F0(a1, 0);
    v12 = *(a1 + 8);
    sub_1004634CC(a1, 0, &__p);
    sub_100A9B39C(a1 + 24, v12, &__p);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v6 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_101770CD0(a1, v6);
    }
  }
}

void sub_1004632D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100463340(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1004633F0(v1, 3);
  v2 = *(v1 + 8);
  sub_1004634CC(v1, 3, __p);
  sub_100A9B39C(v1 + 24, v2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  result = *(v1 + 112);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

void sub_1004633D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004633F0(NSObject **a1, int a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    sub_1004634CC(a1, a2, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1004634CC@<X0>(void *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v47 = 0;
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
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  __src = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  sub_10000C320(&v30);
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  sub_100A9A300(a1[9], v28);
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  sub_100A94180(a1[8], v26);
  v6 = sub_10000C030(&v31);
  v7 = sub_10000C030(v6);
  v8 = sub_10000C030(v7);
  if ((a2 - 1) > 2)
  {
    v9 = "(started)";
  }

  else
  {
    v9 = off_101E4E670[a2 - 1];
  }

  strlen(v9);
  sub_10000C030(v8);
  v10 = sub_10000C030(&v31);
  v11 = sub_10000C030(v10);
  v12 = sub_10000C030(v11);
  v13 = sub_10000C030(v12);
  sub_10000C030(v13);
  if (a2)
  {
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    v14 = a1[4];
    v23 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = sub_100A94378();
    sub_100A9A300(v15 - a1[8], __p);
    if (v23)
    {
      sub_100004A34(v23);
    }

    v16 = sub_10000C030(&v31);
    v17 = sub_10000C030(v16);
    sub_10000C030(v17);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((BYTE8(v37) & 0x10) != 0)
  {
    v19 = v37;
    if (v37 < *(&__src + 1))
    {
      *&v37 = *(&__src + 1);
      v19 = *(&__src + 1);
    }

    v20 = __src;
  }

  else
  {
    if ((BYTE8(v37) & 8) == 0)
    {
      v18 = 0;
      a3[23] = 0;
      goto LABEL_24;
    }

    v20 = *(&v32 + 1);
    v19 = *(&v33 + 1);
  }

  v18 = v19 - v20;
  if ((v19 - v20) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a3[23] = v18;
  if (v18)
  {
    memmove(a3, v20, v18);
  }

LABEL_24:
  a3[v18] = 0;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  *&v31 = v21;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(*(&v35 + 1));
  }

  std::locale::~locale(&v32);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100463918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1004639A0(uint64_t a1)
{
  sub_10016DBD4(a1 + 88);
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  sub_1004634CC(a1, 2, __p);
  sub_100A9B39C(a1 + 24, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100463A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100463A54(void *a1)
{
  v2 = a1[4];
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = sub_100A94378();
  if (v8)
  {
    sub_100004A34(v8);
  }

  v4 = a1[8];
  v5 = v4 <= v3;
  v6 = v4 - v3;
  if (v5)
  {
    return v6 + a1[9];
  }

  else
  {
    return 0;
  }
}

void sub_100463AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100463AE0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[63] < 0)
  {
    return sub_100005F2C(a2, *(result + 5), *(result + 6));
  }

  *a2 = *(result + 40);
  *(a2 + 16) = *(result + 7);
  return result;
}

void sub_100463B08(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    sub_100464388(a1 + 64, a2 + 64);
  }

  if (*(a2 + 32) == 1)
  {
    sub_100464758(a1, a2);
  }

  if (*(a2 + 56) == 1)
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  if (*(a2 + 648) == 1)
  {
    sub_100464844((a1 + 120), a2 + 120);
  }

  if (*(a2 + 1168) == 1)
  {
    sub_100464EB8(a1 + 720, a2 + 720);
  }

  if (*(a2 + 712) == 1)
  {
    sub_100465A80(a1 + 656, (a2 + 656));
  }

  if (*(a2 + 1216) == 1)
  {
    v5 = *(a2 + 1176);
    v6 = *(a2 + 1192);
    *(a1 + 1201) = *(a2 + 1201);
    *(a1 + 1176) = v5;
    *(a1 + 1192) = v6;
  }

  *(a1 + 1224) = *(a2 + 1224);
}

void sub_100463BEC(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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
      v16 = 0;
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
LABEL_7:
    v17 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_101770E14(v17);
    }

    *a4 = 0;
    *(a4 + 1232) = 0;
    if (v16)
    {
      return;
    }

LABEL_60:
    sub_100004A34(v14);
    return;
  }

LABEL_13:
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  v19 = [NSString stringWithUTF8String:v18];
  v20 = [v19 stringByReplacingOccurrencesOfString:@"”" withString:@""];
  v21 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v22 = [v20 stringByTrimmingCharactersInSet:v21];

  if ([v22 rangeOfString:@"</wap-provisioningdoc>"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [v22 stringByAppendingString:@"</wap-provisioningdoc>"];

    v22 = v23;
  }

  v24 = [v22 dataUsingEncoding:4];

  v25 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Decoding provisioning XML document using BlastDoor", buf, 2u);
  }

  v77 = 0;
  v78 = 0;
  v76 = 0;
  (*(*v15 + 16))(&v76, v15);
  bzero(buf, 0x4D0uLL);
  v37 = 0;
  v38[0] = &v78;
  (*(*v76 + 80))(buf);
  sub_1003A5C24(&v37);
  v26 = v78;
  if (v78)
  {
    v27 = *a2;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_101770D58(v26, v27);
    }

LABEL_44:
    *a4 = 0;
    *(a4 + 1232) = 0;
    goto LABEL_45;
  }

  if ((v75 & 1) == 0)
  {
    v32 = *a2;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_101770DD0(v32);
    }

    goto LABEL_44;
  }

  bzero(&v37, 0x4D0uLL);
  sub_1004642F0(&v37, buf);
  if (v75 == 1)
  {
    if (v74 == 1)
    {
      sub_10038E6A4(v73);
    }

    if (v72 == 1)
    {
      sub_100009970(&v70, v71);
    }

    if (v69 == 1)
    {
      sub_10038E7C0(v68);
    }

    if (v67 == 1)
    {
      v79 = v66;
      sub_1002CB430(&v79);
      sub_100009970(&v64, v65);
    }

    if (v63 == 1 && v62 < 0)
    {
      operator delete(__p);
    }

    v75 = 0;
  }

  *a4 = 0;
  *(a4 + 32) = 0;
  if (v40 == 1)
  {
    *a4 = v37;
    *(a4 + 8) = *v38;
    *(a4 + 24) = v39;
    v38[0] = 0;
    v38[1] = 0;
    v39 = 0;
    *(a4 + 32) = 1;
  }

  *(a4 + 40) = v41;
  *(a4 + 56) = v42;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0;
  if (v48 == 1)
  {
    v29 = v43;
    v28 = v44;
    *(a4 + 72) = v44;
    v30 = a4 + 72;
    *(a4 + 64) = v29;
    v31 = v45;
    *(a4 + 80) = v45;
    if (v31)
    {
      *(v28 + 2) = v30;
      v43 = &v44;
      v44 = 0;
      v45 = 0;
    }

    else
    {
      *(a4 + 64) = v30;
    }

    *(a4 + 88) = v46;
    *(a4 + 104) = v47;
    v47 = 0;
    v46 = 0uLL;
    *(a4 + 112) = 1;
  }

  sub_100466B4C((a4 + 120), v49);
  *(a4 + 656) = 0;
  *(a4 + 712) = 0;
  if (v54 == 1)
  {
    *(a4 + 656) = v50[0];
    *(a4 + 667) = *(v50 + 11);
    *(a4 + 688) = v51;
    v33 = a4 + 696;
    v34 = v52;
    *(a4 + 696) = v52;
    v35 = v53;
    *(a4 + 704) = v53;
    if (v35)
    {
      *(v34 + 2) = v33;
      v51 = &v52;
      v52 = 0;
      v53 = 0;
    }

    else
    {
      *(a4 + 688) = v33;
    }

    *(a4 + 712) = 1;
  }

  sub_100466B90((a4 + 720), v55);
  v36 = v57;
  *(a4 + 1176) = v56;
  *(a4 + 1192) = v36;
  *(a4 + 1208) = v58;
  *(a4 + 1224) = v59;
  *(a4 + 1232) = 1;
  if (v55[448] == 1)
  {
    sub_10038E6A4(v55);
  }

  if (v54 == 1)
  {
    sub_100009970(&v51, v52);
  }

  if (v49[528] == 1)
  {
    sub_10038E7C0(v49);
  }

  if (v48 == 1)
  {
    v79 = &v46;
    sub_1002CB430(&v79);
    sub_100009970(&v43, v44);
  }

  if (v40 == 1 && SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

LABEL_45:
  if (v75 == 1)
  {
    if (v74 == 1)
    {
      sub_10038E6A4(v73);
    }

    if (v72 == 1)
    {
      sub_100009970(&v70, v71);
    }

    if (v69 == 1)
    {
      sub_10038E7C0(v68);
    }

    if (v67 == 1)
    {
      v37 = v66;
      sub_1002CB430(&v37);
      sub_100009970(&v64, v65);
    }

    if (v63 == 1 && v62 < 0)
    {
      operator delete(__p);
    }
  }

  if (v77)
  {
    sub_100004A34(v77);
  }

  sub_1003A5A8C(&v78);

  if ((v16 & 1) == 0)
  {
    goto LABEL_60;
  }
}

void sub_100464268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_1003A5C24(&a9);
  v14 = *(v12 - 104);
  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_1003A5A8C((v12 - 96));

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004642F0(uint64_t a1, uint64_t a2)
{
  sub_100465B34(a1, a2);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  sub_100465BE4(a1 + 64, a2 + 64);
  sub_100465CE0(a1 + 120, a2 + 120);
  sub_1004662D4(a1 + 656, (a2 + 656));
  sub_1004663A4(a1 + 720, a2 + 720);
  v5 = *(a2 + 1176);
  v6 = *(a2 + 1192);
  *(a1 + 1201) = *(a2 + 1201);
  *(a1 + 1176) = v5;
  *(a1 + 1192) = v6;
  return a1;
}

void sub_100464388(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (a1 != a2 && *(a1 + 48))
    {
      sub_1001730B8(a1, *a2, (a2 + 8));
      v4 = *(a2 + 24);
      v5 = *(a2 + 32);

      sub_1004644EC(a1 + 24, v4, v5, 0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 3));
    }
  }

  else if (*(a1 + 48))
  {

    sub_100464494(a1);
  }

  else
  {
    v6 = sub_100074920(a1, a2);
    v6[3] = 0;
    v6[4] = 0;
    v6 += 3;
    v6[2] = 0;
    sub_1002CB1BC(v6, *(a2 + 24), *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    *(a1 + 48) = 1;
  }
}

void sub_100464494(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    v4[0] = (a1 + 24);
    sub_1002CB430(v4);
    sub_100009970(a1, *(a1 + 8));
    *(a1 + 48) = 0;
  }
}

void sub_1004644EC(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_100464668(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_1002CB244(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_1004646D0(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 56;
        sub_1002CB3DC(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1004646D0(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_1002CB2F0(a1, __str + v11, a3, *(a1 + 8));
  }
}

void sub_100464668(void **a1)
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
        v3 -= 56;
        sub_1002CB3DC(v3);
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

std::string *sub_1004646D0(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str != a3)
  {
    p_size = &__str[1].__r_.__value_.__l.__size_;
    do
    {
      std::string::operator=(this, v5);
      if (this != v5)
      {
        sub_1001730B8(&this[1], v5[1].__r_.__value_.__l.__data_, p_size);
      }

      this[2].__r_.__value_.__s.__data_[0] = v5[2].__r_.__value_.__s.__data_[0];
      v5 = (v5 + 56);
      this = (this + 56);
      p_size += 7;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_100464758(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      v4 = *a2;
      v3 = (a2 + 8);
      *a1 = v4;
      v5 = (a1 + 8);

      std::string::operator=(v5, v3);
    }
  }

  else if (*(a1 + 32))
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 32) = 0;
  }

  else
  {

    sub_1004647EC(a1, a2);
  }
}

void *sub_1004647EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    result = sub_100005F2C(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    result[2] = *(a2 + 24);
    *result = v4;
  }

  *(a1 + 32) = 1;
  return result;
}

char *sub_100464844(char *result, uint64_t a2)
{
  if (result[528] == *(a2 + 528))
  {
    if (result[528])
    {

      return sub_1004648A0(result, a2);
    }
  }

  else if (result[528])
  {
    result = sub_10038E7C0(result);
    result[528] = 0;
  }

  else
  {
    result = sub_1004649DC(result, a2);
    result[528] = 1;
  }

  return result;
}

uint64_t sub_1004648A0(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  sub_10012BF3C((a1 + 24), (a2 + 24));
  if (a1 != a2)
  {
    sub_1001730B8((a1 + 56), *(a2 + 56), (a2 + 64));
    sub_1001730B8((a1 + 80), *(a2 + 80), (a2 + 88));
  }

  std::string::operator=((a1 + 104), (a2 + 104));
  std::string::operator=((a1 + 128), (a2 + 128));
  v4 = *(a2 + 168);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v4;
  std::string::operator=((a1 + 176), (a2 + 176));
  std::string::operator=((a1 + 200), (a2 + 200));
  std::string::operator=((a1 + 224), (a2 + 224));
  std::string::operator=((a1 + 248), (a2 + 248));
  std::string::operator=((a1 + 272), (a2 + 272));
  std::string::operator=((a1 + 296), (a2 + 296));
  std::string::operator=((a1 + 320), (a2 + 320));
  std::string::operator=((a1 + 344), (a2 + 344));
  std::string::operator=((a1 + 368), (a2 + 368));
  std::string::operator=((a1 + 392), (a2 + 392));
  std::string::operator=((a1 + 416), (a2 + 416));
  std::string::operator=((a1 + 440), (a2 + 440));
  std::string::operator=((a1 + 464), (a2 + 464));
  v5 = *(a2 + 520);
  v6 = *(a2 + 504);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 504) = v6;
  *(a1 + 520) = v5;
  return a1;
}

char *sub_1004649DC(char *__dst, __int128 *a2)
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

  sub_10006F264((__dst + 24), (a2 + 24));
  sub_100074920(__dst + 7, a2 + 56);
  sub_100074920(__dst + 10, (a2 + 5));
  if (*(a2 + 127) < 0)
  {
    sub_100005F2C(__dst + 104, *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v5 = *(a2 + 104);
    *(__dst + 15) = *(a2 + 15);
    *(__dst + 104) = v5;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100005F2C(__dst + 128, *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v6 = a2[8];
    *(__dst + 18) = *(a2 + 18);
    *(__dst + 8) = v6;
  }

  v7 = *(a2 + 152);
  *(__dst + 21) = *(a2 + 21);
  *(__dst + 152) = v7;
  if (*(a2 + 199) < 0)
  {
    sub_100005F2C(__dst + 176, *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v8 = a2[11];
    *(__dst + 24) = *(a2 + 24);
    *(__dst + 11) = v8;
  }

  if (*(a2 + 223) < 0)
  {
    sub_100005F2C(__dst + 200, *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v9 = *(a2 + 200);
    *(__dst + 27) = *(a2 + 27);
    *(__dst + 200) = v9;
  }

  if (*(a2 + 247) < 0)
  {
    sub_100005F2C(__dst + 224, *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v10 = a2[14];
    *(__dst + 30) = *(a2 + 30);
    *(__dst + 14) = v10;
  }

  if (*(a2 + 271) < 0)
  {
    sub_100005F2C(__dst + 248, *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v11 = *(a2 + 248);
    *(__dst + 33) = *(a2 + 33);
    *(__dst + 248) = v11;
  }

  if (*(a2 + 295) < 0)
  {
    sub_100005F2C(__dst + 272, *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v12 = a2[17];
    *(__dst + 36) = *(a2 + 36);
    *(__dst + 17) = v12;
  }

  if (*(a2 + 319) < 0)
  {
    sub_100005F2C(__dst + 296, *(a2 + 37), *(a2 + 38));
  }

  else
  {
    v13 = *(a2 + 296);
    *(__dst + 39) = *(a2 + 39);
    *(__dst + 296) = v13;
  }

  if (*(a2 + 343) < 0)
  {
    sub_100005F2C(__dst + 320, *(a2 + 40), *(a2 + 41));
  }

  else
  {
    v14 = a2[20];
    *(__dst + 42) = *(a2 + 42);
    *(__dst + 20) = v14;
  }

  if (*(a2 + 367) < 0)
  {
    sub_100005F2C(__dst + 344, *(a2 + 43), *(a2 + 44));
  }

  else
  {
    v15 = *(a2 + 344);
    *(__dst + 45) = *(a2 + 45);
    *(__dst + 344) = v15;
  }

  if (*(a2 + 391) < 0)
  {
    sub_100005F2C(__dst + 368, *(a2 + 46), *(a2 + 47));
  }

  else
  {
    v16 = a2[23];
    *(__dst + 48) = *(a2 + 48);
    *(__dst + 23) = v16;
  }

  if (*(a2 + 415) < 0)
  {
    sub_100005F2C(__dst + 392, *(a2 + 49), *(a2 + 50));
  }

  else
  {
    v17 = *(a2 + 392);
    *(__dst + 51) = *(a2 + 51);
    *(__dst + 392) = v17;
  }

  if (*(a2 + 439) < 0)
  {
    sub_100005F2C(__dst + 416, *(a2 + 52), *(a2 + 53));
  }

  else
  {
    v18 = a2[26];
    *(__dst + 54) = *(a2 + 54);
    *(__dst + 26) = v18;
  }

  if (*(a2 + 463) < 0)
  {
    sub_100005F2C(__dst + 440, *(a2 + 55), *(a2 + 56));
  }

  else
  {
    v19 = *(a2 + 440);
    *(__dst + 57) = *(a2 + 57);
    *(__dst + 440) = v19;
  }

  if (*(a2 + 487) < 0)
  {
    sub_100005F2C(__dst + 464, *(a2 + 58), *(a2 + 59));
  }

  else
  {
    v20 = a2[29];
    *(__dst + 60) = *(a2 + 60);
    *(__dst + 29) = v20;
  }

  v21 = *(a2 + 488);
  v22 = *(a2 + 504);
  *(__dst + 260) = *(a2 + 260);
  *(__dst + 488) = v21;
  *(__dst + 504) = v22;
  return __dst;
}

void sub_100464D00(_Unwind_Exception *a1)
{
  if (*(v1 + 463) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 439) < 0)
  {
    operator delete(*(v1 + 416));
  }

  if (*(v1 + 415) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 391) < 0)
  {
    operator delete(*(v1 + 368));
  }

  if (*(v1 + 367) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 343) < 0)
  {
    operator delete(*(v1 + 320));
  }

  if (*(v1 + 319) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 295) < 0)
  {
    operator delete(*(v1 + 272));
  }

  if (*(v1 + 271) < 0)
  {
    operator delete(*(v1 + 248));
  }

  if (*(v1 + 247) < 0)
  {
    operator delete(*(v1 + 224));
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  sub_100009970(v1 + 80, *(v1 + 88));
  sub_100009970(v1 + 56, *(v1 + 64));
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_100464EB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 448) == *(a2 + 448))
  {
    if (*(a1 + 448))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
      sub_100464F78((a1 + 24), (a2 + 24));
      sub_100465174(a1 + 120, a2 + 120);
      sub_100465434(a1 + 264, a2 + 264);
      sub_10046562C((a1 + 368), (a2 + 368));

      sub_10012BF3C((a1 + 416), (a2 + 416));
    }
  }

  else if (*(a1 + 448))
  {
    sub_10038E6A4(a1);
    *(a1 + 448) = 0;
  }

  else
  {
    sub_1004657FC(a1, a2);
    *(a1 + 448) = 1;
  }
}

void sub_100464F78(std::string *__dst, std::string *__str)
{
  if (__dst[3].__r_.__value_.__s.__data_[16] == __str[3].__r_.__value_.__s.__data_[16])
  {
    if (__dst[3].__r_.__value_.__s.__data_[16])
    {
      std::string::operator=(__dst, __str);
      std::string::operator=(__dst + 1, __str + 1);
      std::string::operator=(__dst + 2, __str + 2);
      v4 = __str[3].__r_.__value_.__r.__words[1];
      __dst[3].__r_.__value_.__r.__words[0] = __str[3].__r_.__value_.__r.__words[0];
      LOWORD(__dst[3].__r_.__value_.__r.__words[1]) = v4;
    }
  }

  else if (__dst[3].__r_.__value_.__s.__data_[16])
  {

    sub_100465028(__dst);
  }

  else
  {

    sub_10046508C(__dst, __str);
  }
}

void sub_100465028(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
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

    *(a1 + 88) = 0;
  }
}

char *sub_10046508C(char *__dst, __int128 *a2)
{
  v3 = __dst;
  if (*(a2 + 23) < 0)
  {
    __dst = sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    __dst = sub_100005F2C(v3 + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    __dst = sub_100005F2C(v3 + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 3) = v6;
  }

  v7 = *(a2 + 9);
  *(v3 + 40) = *(a2 + 40);
  *(v3 + 9) = v7;
  v3[88] = 1;
  return __dst;
}

void sub_100465140(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100465174(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136) == *(a2 + 136))
  {
    if (*(a1 + 136))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
      std::string::operator=((a1 + 24), (a2 + 24));
      std::string::operator=((a1 + 48), (a2 + 48));
      std::string::operator=((a1 + 72), (a2 + 72));
      std::string::operator=((a1 + 96), (a2 + 96));
      *(a1 + 120) = *(a2 + 120);
    }
  }

  else if (*(a1 + 136))
  {

    sub_100465230(a1);
  }

  else
  {
    sub_100465308(a1, a2);
    *(a1 + 136) = 1;
  }
}

void sub_100465230(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 136) = 0;
  }
}

uint64_t sub_1004652A4(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_100465308(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

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

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v8;
  }

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void sub_1004653E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_100465434(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
    {
      v4 = *a2;
      v5 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = v4;
      *(a1 + 16) = v5;
      std::string::operator=((a1 + 40), (a2 + 40));

      sub_10012BF3C((a1 + 64), (a2 + 64));
    }
  }

  else if (*(a1 + 96))
  {

    sub_1004654F0(a1);
  }

  else
  {

    sub_100465550(a1, a2);
  }
}

void sub_1004654F0(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    *(a1 + 96) = 0;
  }
}

uint64_t sub_100465550(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 16);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  result = sub_10006F264(a1 + 64, a2 + 4);
  *(a1 + 96) = 1;
  return result;
}

void sub_1004655C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004655DC(uint64_t a1)
{
  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

__n128 sub_10046562C(char *__dst, std::string *__str)
{
  if (__dst[40] == __str[1].__r_.__value_.__s.__data_[16])
  {
    if (__dst[40])
    {
      std::string::operator=(__dst, __str);
      result = *&__str[1].__r_.__value_.__l.__data_;
      *(__dst + 24) = result;
    }
  }

  else if (__dst[40])
  {
    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    __dst[40] = 0;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      *(__dst + 2) = *(&__str->__r_.__value_.__l + 2);
      *__dst = v5;
    }

    result = *&__str[1].__r_.__value_.__l.__data_;
    *(__dst + 24) = result;
    __dst[40] = 1;
  }

  return result;
}

uint64_t sub_1004656D0(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }
  }

  return a1;
}

uint64_t sub_10046572C(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  return a1;
}

uint64_t sub_10046579C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
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
  }

  return a1;
}

uint64_t sub_1004657FC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  sub_1004658C4((a1 + 24), a2 + 24);
  sub_100465924((a1 + 120), a2 + 120);
  sub_10046598C((a1 + 264), a2 + 264);
  sub_1004659EC((a1 + 368), a2 + 23);
  sub_10006F264(a1 + 416, a2 + 26);
  return a1;
}

void sub_10046586C(_Unwind_Exception *a1)
{
  if (*(v1 + 408) == 1 && *(v1 + 391) < 0)
  {
    operator delete(*(v1 + 368));
  }

  sub_1004656D0(v1 + 264);
  sub_10046572C(v1 + 120);
  sub_10046579C(v1 + 24);
  _Unwind_Resume(a1);
}

char *sub_1004658C4(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[88] = 0;
  if (*(a2 + 88) == 1)
  {
    sub_10046508C(__dst, a2);
  }

  return __dst;
}

void sub_100465904(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    sub_1000CFBA0(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100465924(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[136] = 0;
  if (*(a2 + 136) == 1)
  {
    sub_100465308(a1, a2);
    a1[136] = 1;
  }

  return a1;
}

void sub_10046596C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 136) == 1)
  {
    sub_1004652A4(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10046598C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[96] = 0;
  if (*(a2 + 96) == 1)
  {
    sub_100465550(a1, a2);
  }

  return a1;
}

void sub_1004659CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1)
  {
    sub_1004655DC(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1004659EC(char *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[40] = 0;
  if (*(a2 + 40) == 1)
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

    *(__dst + 24) = *(a2 + 24);
    __dst[40] = 1;
  }

  return __dst;
}

void sub_100465A60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100465A80(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v3 = *a2;
      *(a1 + 11) = *(a2 + 11);
      *a1 = v3;
      if (a1 != a2)
      {
        v4 = (a1 + 32);
        v5 = a2 + 5;
        v6 = *(a2 + 4);

        sub_1001730B8(v4, v6, v5);
      }
    }
  }

  else if (*(a1 + 56))
  {
    sub_100009970(a1 + 32, *(a1 + 40));
    *(a1 + 56) = 0;
  }

  else
  {
    v7 = *a2;
    *(a1 + 11) = *(a2 + 11);
    *a1 = v7;
    sub_100074920((a1 + 32), (a2 + 2));
    *(a1 + 56) = 1;
  }
}

__n128 sub_100465B34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      *a1 = *a2;
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      result = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = result;
      *(a2 + 31) = 0;
      *(a2 + 8) = 0;
    }
  }

  else if (*(a1 + 32))
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 32) = 0;
  }

  else
  {
    *a1 = *a2;
    result = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = result;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a1 + 32) = 1;
  }

  return result;
}

void sub_100465BE4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      sub_100173768(a1, a2);
      sub_100464668((a1 + 24));
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
    }
  }

  else if (*(a1 + 48))
  {

    sub_100464494(a1);
  }

  else
  {
    sub_100465C84(a1, a2);
    *(a1 + 48) = 1;
  }
}

__n128 sub_100465C84(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = (a2 + 8);
  v3 = *(a2 + 8);
  a1[1] = v3;
  v4 = a1 + 1;
  v5 = *(a2 + 16);
  a1[2] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = v4;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  result = *(a2 + 24);
  *(a1 + 3) = result;
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

double sub_100465CE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 528) == *(a2 + 528))
  {
    if (*(a1 + 528))
    {

      sub_100465D38(a1, a2);
    }
  }

  else if (*(a1 + 528))
  {
    *(sub_10038E7C0(a1) + 528) = 0;
  }

  else
  {

    *&result = sub_100466058(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_100465D38(uint64_t a1, __int128 *a2)
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
  sub_10016A270(a1 + 24, (a2 + 24));
  sub_100173768(a1 + 56, a2 + 7);
  sub_100173768(a1 + 80, a2 + 10);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v5;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v6 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 128) = v6;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  v7 = *(a2 + 21);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v7;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v8 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v8;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v9 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 200) = v9;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v10 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 224) = v10;
  *(a2 + 247) = 0;
  *(a2 + 224) = 0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  v11 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v11;
  *(a2 + 271) = 0;
  *(a2 + 248) = 0;
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v12 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v12;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  v13 = (a1 + 296);
  if (*(a1 + 319) < 0)
  {
    operator delete(*v13);
  }

  v14 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *v13 = v14;
  *(a2 + 319) = 0;
  *(a2 + 296) = 0;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v15 = a2[20];
  *(a1 + 336) = *(a2 + 42);
  *(a1 + 320) = v15;
  *(a2 + 343) = 0;
  *(a2 + 320) = 0;
  v16 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *v16 = v17;
  *(a2 + 367) = 0;
  *(a2 + 344) = 0;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v18 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v18;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  v19 = (a1 + 392);
  if (*(a1 + 415) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 51);
  *v19 = v20;
  *(a2 + 415) = 0;
  *(a2 + 392) = 0;
  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  v21 = a2[26];
  *(a1 + 432) = *(a2 + 54);
  *(a1 + 416) = v21;
  *(a2 + 439) = 0;
  *(a2 + 416) = 0;
  v22 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 57);
  *v22 = v23;
  *(a2 + 463) = 0;
  *(a2 + 440) = 0;
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  v24 = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a1 + 464) = v24;
  *(a2 + 487) = 0;
  *(a2 + 464) = 0;
  v25 = *(a2 + 488);
  v26 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 260);
  *(a1 + 488) = v25;
  *(a1 + 504) = v26;
  return a1;
}

__n128 sub_100466058(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = *(a2 + 7);
  v4 = a2 + 4;
  v5 = *(a2 + 8);
  *(a1 + 64) = v5;
  v6 = a1 + 64;
  v7 = *(a2 + 9);
  *(a1 + 72) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 7) = v4;
    *v4 = 0;
    *(a2 + 9) = 0;
  }

  else
  {
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 10);
  v8 = a2 + 11;
  v9 = *(a2 + 11);
  *(a1 + 88) = v9;
  v10 = a1 + 88;
  v11 = *(a2 + 12);
  *(a1 + 96) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a2 + 10) = v8;
    *v8 = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    *(a1 + 80) = v10;
  }

  v12 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v12;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  v13 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 128) = v13;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 16) = 0;
  v14 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v14;
  v15 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v15;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  v16 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 200) = v16;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  v17 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 224) = v17;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  v18 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v18;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  v19 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v19;
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  v20 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *(a1 + 296) = v20;
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  v21 = a2[20];
  *(a1 + 336) = *(a2 + 42);
  *(a1 + 320) = v21;
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  v22 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *(a1 + 344) = v22;
  *(a2 + 43) = 0;
  *(a2 + 44) = 0;
  *(a2 + 45) = 0;
  v23 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v23;
  *(a2 + 46) = 0;
  *(a2 + 47) = 0;
  *(a2 + 48) = 0;
  v24 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 51);
  *(a1 + 392) = v24;
  *(a2 + 49) = 0;
  *(a2 + 50) = 0;
  *(a2 + 51) = 0;
  v25 = a2[26];
  *(a1 + 432) = *(a2 + 54);
  *(a1 + 416) = v25;
  *(a2 + 52) = 0;
  *(a2 + 53) = 0;
  *(a2 + 54) = 0;
  v26 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 57);
  *(a1 + 440) = v26;
  *(a2 + 55) = 0;
  *(a2 + 56) = 0;
  *(a2 + 57) = 0;
  v27 = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a1 + 464) = v27;
  *(a2 + 58) = 0;
  *(a2 + 59) = 0;
  *(a2 + 60) = 0;
  result = *(a2 + 488);
  v29 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 260);
  *(a1 + 488) = result;
  *(a1 + 504) = v29;
  *(a1 + 528) = 1;
  return result;
}

void sub_1004662D4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v3 = *a2;
      *(a1 + 11) = *(a2 + 11);
      *a1 = v3;
      v4 = a1 + 32;
      v5 = a2 + 2;

      sub_100173768(v4, v5);
    }
  }

  else if (*(a1 + 56))
  {
    sub_100009970(a1 + 32, *(a1 + 40));
    *(a1 + 56) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 11) = *(a2 + 11);
    *a1 = v6;
    *(a1 + 32) = *(a2 + 4);
    v7 = a2 + 5;
    v8 = *(a2 + 5);
    *(a1 + 40) = v8;
    v9 = a1 + 40;
    v10 = *(a2 + 6);
    *(a1 + 48) = v10;
    if (v10)
    {
      *(v8 + 16) = v9;
      *(a2 + 4) = v7;
      *v7 = 0;
      *(a2 + 6) = 0;
    }

    else
    {
      *(a1 + 32) = v9;
    }

    *(a1 + 56) = 1;
  }
}

uint64_t sub_1004663A4(uint64_t result, uint64_t a2)
{
  if (*(result + 448) == *(a2 + 448))
  {
    if (*(result + 448))
    {

      return sub_1004663FC(result, a2);
    }
  }

  else if (*(result + 448))
  {
    result = sub_10038E6A4(result);
    *(result + 448) = 0;
  }

  else
  {

    return sub_100466480(result, a2);
  }

  return result;
}

uint64_t sub_1004663FC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  sub_1004666AC(a1 + 24, (a2 + 24));
  sub_1004667F4(a1 + 120, (a2 + 120));
  sub_10046698C(a1 + 264, (a2 + 264));
  sub_100466A9C(a1 + 368, a2 + 23);
  sub_10016A270(a1 + 416, a2 + 26);
  return a1;
}

uint64_t sub_100466480(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(result + 24) = 0;
  *(result + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    v3 = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    *(result + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v4 = a2[3];
    *(result + 64) = *(a2 + 8);
    *(result + 48) = v4;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v5 = *(a2 + 72);
    *(result + 88) = *(a2 + 11);
    *(result + 72) = v5;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 9) = 0;
    v6 = *(a2 + 12);
    *(result + 104) = *(a2 + 52);
    *(result + 96) = v6;
    *(result + 112) = 1;
  }

  *(result + 120) = 0;
  *(result + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v7 = *(a2 + 120);
    *(result + 136) = *(a2 + 136);
    *(result + 120) = v7;
    v8 = a2[9];
    *(result + 160) = *(a2 + 20);
    *(result + 144) = v8;
    *(a2 + 19) = 0;
    *(a2 + 20) = 0;
    *(a2 + 18) = 0;
    v9 = *(a2 + 168);
    *(result + 184) = *(a2 + 23);
    *(result + 168) = v9;
    *(a2 + 22) = 0;
    *(a2 + 23) = 0;
    *(a2 + 21) = 0;
    v10 = a2[12];
    *(result + 208) = *(a2 + 26);
    *(result + 192) = v10;
    *(a2 + 24) = 0;
    *(a2 + 25) = 0;
    *(a2 + 26) = 0;
    v11 = *(a2 + 216);
    *(result + 232) = *(a2 + 29);
    *(result + 216) = v11;
    *(a2 + 27) = 0;
    *(a2 + 28) = 0;
    *(a2 + 29) = 0;
    *(result + 240) = a2[15];
    *(result + 256) = 1;
  }

  *(result + 264) = 0;
  *(result + 360) = 0;
  if (*(a2 + 360) == 1)
  {
    v12 = *(a2 + 264);
    v13 = *(a2 + 280);
    *(result + 296) = *(a2 + 148);
    *(result + 264) = v12;
    *(result + 280) = v13;
    v14 = a2[19];
    *(result + 320) = *(a2 + 40);
    *(result + 304) = v14;
    *(a2 + 39) = 0;
    *(a2 + 40) = 0;
    *(a2 + 38) = 0;
    *(result + 328) = 0;
    *(result + 352) = 0;
    if (*(a2 + 352) == 1)
    {
      v15 = *(a2 + 328);
      *(result + 344) = *(a2 + 43);
      *(result + 328) = v15;
      *(a2 + 42) = 0;
      *(a2 + 43) = 0;
      *(a2 + 41) = 0;
      *(result + 352) = 1;
    }

    *(result + 360) = 1;
  }

  *(result + 368) = 0;
  *(result + 408) = 0;
  if (*(a2 + 408) == 1)
  {
    v16 = a2[23];
    *(result + 384) = *(a2 + 48);
    *(result + 368) = v16;
    *(a2 + 47) = 0;
    *(a2 + 48) = 0;
    *(a2 + 46) = 0;
    *(result + 392) = *(a2 + 392);
    *(result + 408) = 1;
  }

  *(result + 416) = 0;
  *(result + 440) = 0;
  if (*(a2 + 440) == 1)
  {
    v17 = a2[26];
    *(result + 432) = *(a2 + 54);
    *(result + 416) = v17;
    *(a2 + 53) = 0;
    *(a2 + 54) = 0;
    *(a2 + 52) = 0;
    *(result + 440) = 1;
  }

  *(result + 448) = 1;
  return result;
}

__n128 sub_1004666AC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
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
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = result;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
      v7 = *(a2 + 9);
      *(a1 + 80) = *(a2 + 40);
      *(a1 + 72) = v7;
    }
  }

  else if (*(a1 + 88))
  {

    sub_100465028(a1);
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    result = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = result;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v10 = *(a2 + 9);
    *(a1 + 80) = *(a2 + 40);
    *(a1 + 72) = v10;
    *(a1 + 88) = 1;
  }

  return result;
}

__n128 sub_1004667F4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 136) == *(a2 + 136))
  {
    if (*(a1 + 136))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      v6 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = v6;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
      if (*(a1 + 95) < 0)
      {
        operator delete(*(a1 + 72));
      }

      v7 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 72) = v7;
      *(a2 + 95) = 0;
      *(a2 + 72) = 0;
      if (*(a1 + 119) < 0)
      {
        operator delete(*(a1 + 96));
      }

      v8 = a2[6];
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 96) = v8;
      *(a2 + 119) = 0;
      *(a2 + 96) = 0;
      result = *(a2 + 120);
      *(a1 + 120) = result;
    }
  }

  else if (*(a1 + 136))
  {

    sub_100465230(a1);
  }

  else
  {
    v10 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v10;
    v11 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v11;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v12 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v12;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v13 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v13;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    v14 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v14;
    *(a2 + 12) = 0;
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
    result = *(a2 + 120);
    *(a1 + 120) = result;
    *(a1 + 136) = 1;
  }

  return result;
}

void sub_10046698C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 32) = *(a2 + 16);
      *a1 = v4;
      *(a1 + 16) = v5;
      if (*(a1 + 63) < 0)
      {
        operator delete(*(a1 + 40));
      }

      v6 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 40) = v6;
      *(a2 + 63) = 0;
      *(a2 + 40) = 0;
      sub_10016A270(a1 + 64, a2 + 4);
    }
  }

  else if (*(a1 + 96))
  {

    sub_1004654F0(a1);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 32) = *(a2 + 16);
    *a1 = v7;
    *(a1 + 16) = v8;
    v9 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v9;
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a2 + 5) = 0;
    *(a1 + 64) = 0;
    *(a1 + 88) = 0;
    if (*(a2 + 88) == 1)
    {
      v10 = a2[4];
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 64) = v10;
      *(a2 + 9) = 0;
      *(a2 + 10) = 0;
      *(a2 + 8) = 0;
      *(a1 + 88) = 1;
    }

    *(a1 + 96) = 1;
  }
}

__n128 sub_100466A9C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 40))
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
      result = *(a2 + 24);
      *(a1 + 24) = result;
    }
  }

  else if (*(a1 + 40))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 40) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    result = *(a2 + 24);
    *(a1 + 24) = result;
    *(a1 + 40) = 1;
  }

  return result;
}

_BYTE *sub_100466B4C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[528] = 0;
  if (*(a2 + 528) == 1)
  {
    sub_100466058(a1, a2);
  }

  return a1;
}

_BYTE *sub_100466B90(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[448] = 0;
  if (*(a2 + 448) == 1)
  {
    sub_100466480(a1, a2);
  }

  return a1;
}

const char *sub_100466BD4(unsigned int *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 == 5)
  {
    return "kAuthFailure";
  }

  if (*a2 == 9)
  {
    return "kAuthFailure";
  }

  v5 = *a1;
  if (*a1 == 3)
  {
    if (subscriber::isSimSettled())
    {
      return "kAuthSuccess";
    }

    v5 = *a1;
  }

  if (v5 > 3)
  {
    return "kUnknown";
  }

  else
  {
    return off_101E4E688[v5];
  }
}

const void **sub_100466C6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v58 = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v31 = a2;
  if (Mutable)
  {
    v5 = v58;
    v58 = Mutable;
    *&v62 = v5;
    sub_1000279DC(&v62);
  }

  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    cf = kVinylProfileIccidKey;
    v37 = kVinylProfileServiceProviderNameKey;
    v38 = kVinylProfileNicknameKey;
    v36 = kVinylProfileIsActiveKey;
    v35 = kVinylProfileStateKey;
    v33 = kVinylProfileDisableNotAllowedKey;
    v34 = kVinylProfileIsBootstrapKey;
    v32 = kVinylProfileDeleteNotAllowedKey;
    v8 = kVinylProfileMccKey;
    v9 = kVinylProfileMncKey;
    v10 = kVinylProfileGID1Key;
    v11 = kVinylProfileGID2Key;
    v12 = kVinylProfileAssociatedImeiKey;
    do
    {
      v57 = 0;
      v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v13)
      {
        v14 = v57;
        v57 = v13;
        *&v62 = v14;
        sub_1000296E0(&v62);
      }

      if (*(v6 + 39) < 0)
      {
        sub_100005F2C(&__dst, *(v6 + 16), *(v6 + 24));
      }

      else
      {
        __dst = *(v6 + 16);
        v55 = *(v6 + 32);
      }

      if (SHIBYTE(v55) < 0)
      {
        sub_100005F2C(&v60, __dst, *(&__dst + 1));
      }

      else
      {
        v60 = __dst;
        v61 = v55;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v15 = v59;
        v59 = v64;
        v65[0] = v15;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, cf, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__dst);
      }

      if (*(v6 + 63) < 0)
      {
        sub_100005F2C(&v52, *(v6 + 40), *(v6 + 48));
      }

      else
      {
        v52 = *(v6 + 40);
        v53 = *(v6 + 56);
      }

      if (SHIBYTE(v53) < 0)
      {
        sub_100005F2C(&v60, v52, *(&v52 + 1));
      }

      else
      {
        v60 = v52;
        v61 = v53;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v16 = v59;
        v59 = v64;
        v65[0] = v16;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v38, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52);
      }

      if (*(v6 + 87) < 0)
      {
        sub_100005F2C(__p, *(v6 + 64), *(v6 + 72));
      }

      else
      {
        *__p = *(v6 + 64);
        v51 = *(v6 + 80);
      }

      if (SHIBYTE(v51) < 0)
      {
        sub_100005F2C(&v60, __p[0], __p[1]);
      }

      else
      {
        v60 = *__p;
        v61 = v51;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v17 = v59;
        v59 = v64;
        v65[0] = v17;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v37, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(v6 + 90))
      {
        v18 = kCFBooleanTrue;
      }

      else
      {
        v18 = kCFBooleanFalse;
      }

      sub_1002E0298(v57, v36, v18);
      v19 = asString();
      v65[0] = 0;
      *&v60 = 0;
      if (ctu::cf::convert_copy(&v60, v19, 0x8000100, kCFAllocatorDefault, v20))
      {
        v21 = v65[0];
        v65[0] = v60;
        *&v62 = v21;
        sub_100005978(&v62);
      }

      v64 = v65[0];
      v65[0] = 0;
      sub_100005978(v65);
      sub_1001768B8(v57, v35, v64);
      sub_100005978(&v64);
      if (*(v6 + 89))
      {
        v22 = kCFBooleanTrue;
      }

      else
      {
        v22 = kCFBooleanFalse;
      }

      sub_1002E0298(v57, v34, v22);
      if (*(v6 + 92))
      {
        v23 = kCFBooleanTrue;
      }

      else
      {
        v23 = kCFBooleanFalse;
      }

      sub_1002E0298(v57, v33, v23);
      if (*(v6 + 91))
      {
        v24 = kCFBooleanTrue;
      }

      else
      {
        v24 = kCFBooleanFalse;
      }

      sub_1002E0298(v57, v32, v24);
      if (*(v6 + 119) < 0)
      {
        sub_100005F2C(v48, *(v6 + 96), *(v6 + 104));
      }

      else
      {
        *v48 = *(v6 + 96);
        v49 = *(v6 + 112);
      }

      if (SHIBYTE(v49) < 0)
      {
        sub_100005F2C(&v60, v48[0], v48[1]);
      }

      else
      {
        v60 = *v48;
        v61 = v49;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v25 = v59;
        v59 = v64;
        v65[0] = v25;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v8, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48[0]);
      }

      if (*(v6 + 143) < 0)
      {
        sub_100005F2C(v46, *(v6 + 120), *(v6 + 128));
      }

      else
      {
        *v46 = *(v6 + 120);
        v47 = *(v6 + 136);
      }

      if (SHIBYTE(v47) < 0)
      {
        sub_100005F2C(&v60, v46[0], v46[1]);
      }

      else
      {
        v60 = *v46;
        v61 = v47;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v26 = v59;
        v59 = v64;
        v65[0] = v26;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v9, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46[0]);
      }

      if (*(v6 + 167) < 0)
      {
        sub_100005F2C(v44, *(v6 + 144), *(v6 + 152));
      }

      else
      {
        *v44 = *(v6 + 144);
        v45 = *(v6 + 160);
      }

      if (SHIBYTE(v45) < 0)
      {
        sub_100005F2C(&v60, v44[0], v44[1]);
      }

      else
      {
        v60 = *v44;
        v61 = v45;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v27 = v59;
        v59 = v64;
        v65[0] = v27;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v10, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44[0]);
      }

      if (*(v6 + 191) < 0)
      {
        sub_100005F2C(v42, *(v6 + 168), *(v6 + 176));
      }

      else
      {
        *v42 = *(v6 + 168);
        v43 = *(v6 + 184);
      }

      if (SHIBYTE(v43) < 0)
      {
        sub_100005F2C(&v60, v42[0], v42[1]);
      }

      else
      {
        v60 = *v42;
        v61 = v43;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v28 = v59;
        v59 = v64;
        v65[0] = v28;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v11, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42[0]);
      }

      if (*(v6 + 215) < 0)
      {
        sub_100005F2C(v40, *(v6 + 192), *(v6 + 200));
      }

      else
      {
        *v40 = *(v6 + 192);
        v41 = *(v6 + 208);
      }

      if (SHIBYTE(v41) < 0)
      {
        sub_100005F2C(&v60, v40[0], v40[1]);
      }

      else
      {
        v60 = *v40;
        v61 = v41;
      }

      v59 = 0;
      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(&v62, v60, *(&v60 + 1));
      }

      else
      {
        v62 = v60;
        v63 = v61;
      }

      v64 = 0;
      if (ctu::cf::convert_copy())
      {
        v29 = v59;
        v59 = v64;
        v65[0] = v29;
        sub_100005978(v65);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      v56 = v59;
      v59 = 0;
      sub_100005978(&v59);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      sub_1001768B8(v57, v12, v56);
      sub_100005978(&v56);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      sub_10039D64C(v58, v57);
      sub_1000296E0(&v57);
      v6 += 216;
    }

    while (v6 != v7);
  }

  sub_10002A7D8(v31, &v58);
  return sub_1000279DC(&v58);
}

void sub_100467AE8(uint64_t a1@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  v67 = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    v67 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    v67 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_9;
  }

  v12 = xpc_null_create();
LABEL_8:
  v67 = v12;
LABEL_9:
  xpc_release(v11);
  v13 = objc_autoreleasePoolPush();
  v65 = xpc_int64_create(*(a1 + 16));
  if (!v65)
  {
    v65 = xpc_null_create();
  }

  v63 = &v67;
  v64 = kVinylFwUpdateStatus;
  sub_10000F688(&v63, &v65, &v66);
  xpc_release(v66);
  v66 = 0;
  xpc_release(v65);
  v65 = 0;
  if (*(a1 + 16) == 1)
  {
    v61 = xpc_data_create(a1, 0x10uLL);
    if (!v61)
    {
      v61 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateCsn;
    sub_10000F688(&v63, &v61, &v62);
    xpc_release(v62);
    v62 = 0;
    xpc_release(v61);
    v61 = 0;
    v59 = xpc_int64_create(*(a1 + 17));
    if (!v59)
    {
      v59 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateOperationMode;
    sub_10000F688(&v63, &v59, &v60);
    xpc_release(v60);
    v60 = 0;
    xpc_release(v59);
    v59 = 0;
    v57 = xpc_data_create((a1 + 18), 0x20uLL);
    if (!v57)
    {
      v57 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateCurrentVersion;
    sub_10000F688(&v63, &v57, &v58);
    xpc_release(v58);
    v58 = 0;
    xpc_release(v57);
    v57 = 0;
    v55 = xpc_data_create((a1 + 50), 8uLL);
    if (!v55)
    {
      v55 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateMainFwNonce;
    sub_10000F688(&v63, &v55, &v56);
    xpc_release(v56);
    v56 = 0;
    xpc_release(v55);
    v55 = 0;
    v53 = xpc_data_create((a1 + 58), 8uLL);
    if (!v53)
    {
      v53 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateGoldFwNonce;
    sub_10000F688(&v63, &v53, &v54);
    xpc_release(v54);
    v54 = 0;
    xpc_release(v53);
    v53 = 0;
    v51 = xpc_data_create((a1 + 66), 8uLL);
    if (!v51)
    {
      v51 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateMainFwMac;
    sub_10000F688(&v63, &v51, &v52);
    xpc_release(v52);
    v52 = 0;
    xpc_release(v51);
    v51 = 0;
    v49 = xpc_data_create((a1 + 74), 0x20uLL);
    if (!v49)
    {
      v49 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateMainFwVersion;
    sub_10000F688(&v63, &v49, &v50);
    xpc_release(v50);
    v50 = 0;
    xpc_release(v49);
    v49 = 0;
    v47 = xpc_data_create((a1 + 106), 0x18uLL);
    if (!v47)
    {
      v47 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateMainFwChallenge;
    sub_10000F688(&v63, &v47, &v48);
    xpc_release(v48);
    v48 = 0;
    xpc_release(v47);
    v47 = 0;
    object = xpc_data_create((a1 + 130), 3uLL);
    if (!object)
    {
      object = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateMainFwSize;
    sub_10000F688(&v63, &object, &v46);
    xpc_release(v46);
    v46 = 0;
    xpc_release(object);
    object = 0;
    v43 = xpc_data_create((a1 + 133), 8uLL);
    if (!v43)
    {
      v43 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateGoldFwMac;
    sub_10000F688(&v63, &v43, &v44);
    xpc_release(v44);
    v44 = 0;
    xpc_release(v43);
    v43 = 0;
    v41 = xpc_data_create((a1 + 141), 0x20uLL);
    if (!v41)
    {
      v41 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateGoldFwVersion;
    sub_10000F688(&v63, &v41, &v42);
    xpc_release(v42);
    v42 = 0;
    xpc_release(v41);
    v41 = 0;
    v39 = xpc_data_create((a1 + 173), 0x18uLL);
    if (!v39)
    {
      v39 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateGoldFwChallenge;
    sub_10000F688(&v63, &v39, &v40);
    xpc_release(v40);
    v40 = 0;
    xpc_release(v39);
    v39 = 0;
    v37 = xpc_data_create((a1 + 197), 3uLL);
    if (!v37)
    {
      v37 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateGoldFwSize;
    sub_10000F688(&v63, &v37, &v38);
    xpc_release(v38);
    v38 = 0;
    xpc_release(v37);
    v37 = 0;
    v35 = xpc_int64_create(*(a1 + 200));
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateProfileVersion;
    sub_10000F688(&v63, &v35, &v36);
    xpc_release(v36);
    v36 = 0;
    xpc_release(v35);
    v35 = 0;
    v33 = xpc_data_create((a1 + 202), 8uLL);
    if (!v33)
    {
      v33 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateCurrentMac;
    sub_10000F688(&v63, &v33, &v34);
    xpc_release(v34);
    v34 = 0;
    xpc_release(v33);
    v33 = 0;
    v31 = xpc_data_create((a1 + 210), 3uLL);
    if (!v31)
    {
      v31 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateLoaderVersion;
    sub_10000F688(&v63, &v31, &v32);
    xpc_release(v32);
    v32 = 0;
    xpc_release(v31);
    v31 = 0;
    v29 = xpc_data_create((a1 + 213), 0x20uLL);
    if (!v29)
    {
      v29 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateKeyId;
    sub_10000F688(&v63, &v29, &v30);
    xpc_release(v30);
    v30 = 0;
    xpc_release(v29);
    v29 = 0;
    v27 = xpc_int64_create(*(a1 + 252));
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateEuiccChipId;
    sub_10000F688(&v63, &v27, &v28);
    xpc_release(v28);
    v28 = 0;
    xpc_release(v27);
    v27 = 0;
    v25 = xpc_int64_create(*(a1 + 245));
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateBootstrapProfiles;
    sub_10000F688(&v63, &v25, &v26);
    xpc_release(v26);
    v26 = 0;
    xpc_release(v25);
    v25 = 0;
    v23 = xpc_int64_create(*(a1 + 248));
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    v63 = &v67;
    v64 = kVinylFwUpdateUserProfiles;
    sub_10000F688(&v63, &v23, &v24);
    xpc_release(v24);
    v24 = 0;
    xpc_release(v23);
    v23 = 0;
    if (*(a1 + 247) == 1)
    {
      v21 = xpc_int64_create(*(a1 + 246));
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      v63 = &v67;
      v64 = kVinylFwUpdateBootstrapProfiles2Phase;
      sub_10000F688(&v63, &v21, &v22);
      xpc_release(v22);
      v22 = 0;
      xpc_release(v21);
      v21 = 0;
      v19 = xpc_data_create(*(a1 + 256), *(a1 + 264) - *(a1 + 256));
      if (!v19)
      {
        v19 = xpc_null_create();
      }

      v63 = &v67;
      v64 = kVinylFwUpdateBootstrapProfileIdentifiers;
      sub_10000F688(&v63, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
    }

    v14 = sub_100466BD4(a2, a3, a4);
    sub_10046861C("%s", &v17, v14);
    v63 = &v67;
    v64 = kVinylFwUpdatePairingState;
    sub_10000F688(&v63, &v17, &v18);
    xpc_release(v18);
    v18 = 0;
    xpc_release(v17);
    v17 = 0;
  }

  objc_autoreleasePoolPop(v13);
  v16 = v67;
  if (v67)
  {
    xpc_retain(v67);
  }

  else
  {
    v16 = xpc_null_create();
  }

  xpc::bridge(&v63, &v16, v15);
  sub_100010180(a5, &v63);
  sub_10000A1EC(&v63);
  xpc_release(v16);
  xpc_release(v67);
}

void sub_1004685C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  sub_10000A1EC((v11 - 104));
  xpc_release(object);
  xpc_release(*(v11 - 72));
  _Unwind_Resume(a1);
}

xpc_object_t sub_10046861C@<X0>(const char *a1@<X0>, void *a2@<X8>, char a3)
{
  result = xpc_string_create_with_format_and_arguments(a1, &a3);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

uint64_t sub_100468668(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

void sub_100468680(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v25 = 0;
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v25 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v25 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v25 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      LOBYTE(v11) = v6;
      if (*(v6 + 23) < 0)
      {
        v11 = *v6;
      }

      sub_10046861C("%s", &v23, v11);
      v21 = &v25;
      v22 = "kIccid";
      sub_10000F688(&v21, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      v19 = xpc_int64_create(*(v6 + 6));
      if (!v19)
      {
        v19 = xpc_null_create();
      }

      v21 = &v25;
      v22 = "kStatus";
      sub_10000F688(&v21, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      v12 = v6 + 4;
      if (*(v6 + 55) < 0)
      {
        v12 = *v12;
      }

      sub_10046861C("%s", &v17, v12);
      v21 = &v25;
      v22 = "kSlotUuid";
      sub_10000F688(&v21, &v17, &v18);
      xpc_release(v18);
      v18 = 0;
      xpc_release(v17);
      v17 = 0;
      v13 = v6 + 7;
      if (*(v6 + 79) < 0)
      {
        v13 = *v13;
      }

      sub_10046861C("%s", &v15, v13);
      v21 = &v25;
      v22 = "kLabelId";
      sub_10000F688(&v21, &v15, &v16);
      xpc_release(v16);
      v16 = 0;
      xpc_release(v15);
      v15 = 0;
      xpc_array_append_value(v5, v25);
      xpc_release(v25);
      v6 += 11;
    }

    while (v6 != v7);
  }

  v25 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v25 = xpc_null_create();
  }

  xpc::bridge(&v21, &v25, v14);
  sub_10006DD00(a2, &v21);
  sub_10000A1EC(&v21);
  xpc_release(v25);
  xpc_release(v5);
}

void sub_10046898C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000A1EC(va);
  xpc_release(*(v11 - 88));
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void sub_100468A20(CFArrayRef *a1, uint64_t *a2)
{
  v3 = *a1;
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v27 = kCtLoggingSystemName;
      do
      {
        v32 = 0;
        memset(v31, 0, sizeof(v31));
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, v7);
        v9 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFDictionaryGetTypeID())
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

        memset(&__str, 0, sizeof(__str));
        CFDictionaryGetValue(v11, @"kIccid");
        memset(&v33, 0, sizeof(v33));
        ctu::cf::assign();
        __str = v33;
        std::string::operator=(v31, &__str);
        Value = CFDictionaryGetValue(v11, @"kStatus");
        v13 = Value;
        LODWORD(v33.__r_.__value_.__l.__data_) = 0;
        if (Value)
        {
          v14 = CFGetTypeID(Value);
          if (v14 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v33, v13, v15);
          }
        }

        if ((cellplan::deserializeRemotePlanSimSubscriptionStatus() & 1) == 0)
        {
          *&v31[24] = 0;
          v16 = ctu::OsLogContext::OsLogContext(&v33, v27, "vinyl.helper");
          size = v33.__r_.__value_.__l.__size_;
          ctu::OsLogContext::~OsLogContext(v16);
          if (os_log_type_enabled(size, OS_LOG_TYPE_ERROR))
          {
            sub_101770E58(&buf, v29, size);
          }
        }

        CFDictionaryGetValue(v11, @"kSlotUuid");
        memset(&v33, 0, sizeof(v33));
        ctu::cf::assign();
        v34[0] = v33.__r_.__value_.__l.__size_;
        v18 = v33.__r_.__value_.__r.__words[0];
        *(v34 + 7) = *(&v33.__r_.__value_.__r.__words[1] + 7);
        v19 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        if ((v31[55] & 0x80000000) != 0)
        {
          operator delete(*&v31[32]);
        }

        *&v31[32] = v18;
        *&v31[40] = v34[0];
        *&v31[47] = *(v34 + 7);
        v31[55] = v19;
        CFDictionaryGetValue(v11, @"kLabelId");
        memset(&v33, 0, sizeof(v33));
        ctu::cf::assign();
        v34[0] = v33.__r_.__value_.__l.__size_;
        v20 = v33.__r_.__value_.__r.__words[0];
        *(v34 + 7) = *(&v33.__r_.__value_.__r.__words[1] + 7);
        v21 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        if ((v31[79] & 0x80000000) != 0)
        {
          operator delete(*&v31[56]);
        }

        *&v31[56] = v20;
        *&v31[64] = v34[0];
        *&v31[71] = *(v34 + 7);
        v31[79] = v21;
        v22 = a2[1];
        if (v22 >= a2[2])
        {
          v24 = sub_10046A178(a2, v31);
        }

        else
        {
          if ((v31[23] & 0x80000000) != 0)
          {
            sub_100005F2C(a2[1], *v31, *&v31[8]);
          }

          else
          {
            v23 = *v31;
            *(v22 + 16) = *&v31[16];
            *v22 = v23;
          }

          *(v22 + 24) = *&v31[24];
          if ((v31[55] & 0x80000000) != 0)
          {
            sub_100005F2C((v22 + 32), *&v31[32], *&v31[40]);
          }

          else
          {
            v25 = *&v31[32];
            *(v22 + 48) = *&v31[48];
            *(v22 + 32) = v25;
          }

          if ((v31[79] & 0x80000000) != 0)
          {
            sub_100005F2C((v22 + 56), *&v31[56], *&v31[64]);
          }

          else
          {
            v26 = *&v31[56];
            *(v22 + 72) = *&v31[72];
            *(v22 + 56) = v26;
          }

          *(v22 + 80) = v32;
          v24 = v22 + 88;
          a2[1] = v22 + 88;
        }

        a2[1] = v24;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if ((v31[79] & 0x80000000) != 0)
        {
          operator delete(*&v31[56]);
        }

        if ((v31[55] & 0x80000000) != 0)
        {
          operator delete(*&v31[32]);
        }

        if ((v31[23] & 0x80000000) != 0)
        {
          operator delete(*v31);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

void sub_100468DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (*(v21 + 55) < 0)
  {
    operator delete(*(v21 + 32));
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  *(v20 + 8) = v21;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1001FA910(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100468E6C(char **a1, char **a2, char **a3, void *a4)
{
  if (*a1 != a1[1] && *a2 != a2[1] && *a3 != a3[1])
  {
    v8 = sub_1002E19DC(0);
    __p = 0;
    __dst = 0;
    v20 = 0;
    sub_10005F5A8(&__p, 0, *a1, a1[1], a1[1] - *a1);
    sub_10005F5A8(&__p, __dst, *a2, a2[1], a2[1] - *a2);
    sub_10005F5A8(&__p, __dst, *a3, a3[1], a3[1] - *a3);
    __src = 0;
    v16 = 0;
    if (sub_1002E1A8C(v8, 0, 0x10u, __p, __dst - __p, 1))
    {
      ctu::OsLogContext::OsLogContext(v14, kCtLoggingSystemName, "vinyl.helper");
      v9 = v15;
      ctu::OsLogContext::~OsLogContext(v14);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_101770E98();
      }
    }

    else
    {
      if (!sub_1002E1D88(v8, &__src, &v16))
      {
        a4[1] = *a4;
        if (__src)
        {
          sub_1001122C4(a4, __src, __src + v16, v16);
          free(__src);
        }

        v11 = 1;
        goto LABEL_15;
      }

      ctu::OsLogContext::OsLogContext(v14, kCtLoggingSystemName, "vinyl.helper");
      v13 = v15;
      ctu::OsLogContext::~OsLogContext(v14);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_101770F00();
      }
    }

    v11 = 0;
LABEL_15:
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    if (v8)
    {
      sub_1002E1A20(v8);
    }

    return v11;
  }

  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "vinyl.helper");
  v10 = __dst;
  ctu::OsLogContext::~OsLogContext(&__p);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_101770F68();
  }

  return 0;
}

void sub_10046909C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v15)
  {
    sub_1002E1A20(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004690E0(uint64_t *a1, uint64_t a2, void *a3, _WORD *a4)
{
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  *&v28[4] = 0;
  v5 = *(a1 + 2);
  v6 = *a1;
  v27 = 0;
  *v28 = (v5 - v6);
  if (v5 == v6)
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v9 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_101771434();
    }

    return 255;
  }

  if (DERDecoderInitialize())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v8 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_101770FA4();
    }

    return 255;
  }

  if (DERDecoderGetDataAt())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v10 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10177100C();
    }

    return 255;
  }

  if (DERDecoderInitialize())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v12 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1017710E4();
    }

    return 255;
  }

  if (DERDecoderParseSequence())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v13 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177114C();
    }

    return 255;
  }

  if (DERDecoderGetDataAt())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v14 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1017711B4();
    }

    return 255;
  }

  if (DERDecoderInitialize())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v15 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10177121C();
    }

    return 255;
  }

  if (DERDecoderGetDataAt())
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v16 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_101771284();
    }

    return 255;
  }

  if (*v28 != 2)
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v18 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1017712EC(v28, v18, v19, v20, v21, v22, v23, v24);
    }

    return 255;
  }

  *a4 = bswap32(**&v28[4]) >> 16;
  result = DERDecoderGetEncodingWithTag();
  if (result)
  {
    ctu::OsLogContext::OsLogContext(v25, kCtLoggingSystemName, "vinyl.helper");
    v17 = v26;
    ctu::OsLogContext::~OsLogContext(v25);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10177135C();
    }

    return 255;
  }

  if (*&v28[4] && *v28)
  {
    sub_10018A52C(a3, *&v28[4], (*&v28[4] + *v28), *v28);
    return 0;
  }

  return result;
}

uint64_t sub_100469644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a1 != *(a1 + 8) && *a2 != *(a2 + 8) && *a3 != *(a3 + 8))
  {
    v8 = sub_1002E19DC(0);
    __src = 0;
    v18 = 0;
    if (sub_1002E1A8C(v8, 0, 0x10u, *a1, *(a1 + 8) - *a1, 1))
    {
      ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
      v9 = v21;
      ctu::OsLogContext::~OsLogContext(v20);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_101771470();
      }

LABEL_17:
      v11 = 0;
      goto LABEL_18;
    }

    if (sub_1002E1A8C(v8, 2, 0, *a2, *(a2 + 8) - *a2, 0))
    {
      ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
      v13 = v21;
      ctu::OsLogContext::~OsLogContext(v20);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1017714D8();
      }

      goto LABEL_17;
    }

    if (sub_1002E1A8C(v8, 2, 1u, *a3, *(a3 + 8) - *a3, 1))
    {
      ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
      v14 = v21;
      ctu::OsLogContext::~OsLogContext(v20);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_101771540();
      }

      goto LABEL_17;
    }

    v15 = sub_1002E19DC(0);
    if (sub_1002E1E4C(v8, v15, 1, 9u))
    {
      ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
      v16 = v21;
      ctu::OsLogContext::~OsLogContext(v20);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1017715A8();
      }
    }

    else
    {
      if (!sub_1002E1D88(v15, &__src, &v18))
      {
        a4[1] = *a4;
        if (__src)
        {
          sub_1001122C4(a4, __src, __src + v18, v18);
          free(__src);
        }

        v11 = 1;
        if (!v15)
        {
          goto LABEL_18;
        }

LABEL_27:
        sub_1002E1A20(v15);
LABEL_18:
        if (v8)
        {
          sub_1002E1A20(v8);
        }

        return v11;
      }

      ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
      v17 = v21;
      ctu::OsLogContext::~OsLogContext(v20);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_101771610();
      }
    }

    v11 = 0;
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  ctu::OsLogContext::OsLogContext(v20, kCtLoggingSystemName, "vinyl.helper");
  v10 = v21;
  ctu::OsLogContext::~OsLogContext(v20);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_101770F68();
  }

  return 0;
}

void sub_100469984(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1002E1A20(v2);
  }

  if (v1)
  {
    sub_1002E1A20(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004699D8(uint64_t a1, void *a2)
{
  if (*a1 == *(a1 + 8))
  {
    ctu::OsLogContext::OsLogContext(v12, kCtLoggingSystemName, "vinyl.helper");
    v6 = v13;
    ctu::OsLogContext::~OsLogContext(v12);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_101770F68();
    }

    return 0;
  }

  v4 = sub_1002E19DC(0);
  __src = 0;
  v10 = 0;
  if (sub_1002E1A8C(v4, 2, 0, *a1, *(a1 + 8) - *a1, 0))
  {
    ctu::OsLogContext::OsLogContext(v12, kCtLoggingSystemName, "vinyl.helper");
    v5 = v13;
    ctu::OsLogContext::~OsLogContext(v12);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1017714D8();
    }
  }

  else
  {
    if (!sub_1002E1D88(v4, &__src, &v10))
    {
      a2[1] = *a2;
      if (__src)
      {
        sub_1001122C4(a2, __src, __src + v10, v10);
        free(__src);
      }

      v7 = 1;
      if (v4)
      {
        goto LABEL_12;
      }

      return v7;
    }

    ctu::OsLogContext::OsLogContext(v12, kCtLoggingSystemName, "vinyl.helper");
    v8 = v13;
    ctu::OsLogContext::~OsLogContext(v12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_101770F00();
    }
  }

  v7 = 0;
  if (v4)
  {
LABEL_12:
    sub_1002E1A20(v4);
  }

  return v7;
}

void sub_100469B8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1002E1A20(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100469BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = (a1 + 23);
  v5 = *(a1 + 23);
  v7 = (a1 + 8);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5 && *a3 != *(a3 + 8) && *a2 != *(a2 + 8) && *a4 != *(a4 + 8))
  {
    v13 = sub_1002E19DC(0);
    __src = 0;
    v34 = 0;
    if (sub_1002E1A8C(v13, 2, 0, *a2, *(a2 + 8) - *a2, 0))
    {
      ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, "vinyl.helper");
      v14 = v32;
      ctu::OsLogContext::~OsLogContext(&v31);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_101771678();
      }

LABEL_17:
      v16 = 0;
LABEL_18:
      if (v13)
      {
        sub_1002E1A20(v13);
      }

      return v16;
    }

    if (sub_1002E1A8C(v13, 2, 1u, *a3, *(a3 + 8) - *a3, 0))
    {
      ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, "vinyl.helper");
      v18 = v32;
      ctu::OsLogContext::~OsLogContext(&v31);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1017716E0();
      }

      goto LABEL_17;
    }

    v19 = sub_1002E19DC(0);
    if (sub_1002E1E4C(v13, v19, 0, 0x10u))
    {
      ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, "vinyl.helper");
      v20 = v32;
      ctu::OsLogContext::~OsLogContext(&v31);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1017715A8();
      }

LABEL_26:
      v16 = 0;
LABEL_27:
      if (v19)
      {
        sub_1002E1A20(v19);
      }

      goto LABEL_18;
    }

    if (sub_1002E1A8C(v19, 1, 1u, *a4, *(a4 + 8) - *a4, 0))
    {
      ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, "vinyl.helper");
      v21 = v32;
      ctu::OsLogContext::~OsLogContext(&v31);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_101771748();
      }

      goto LABEL_26;
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    if (*v6 < 0)
    {
      sub_100005F2C(__p, *a1, *(a1 + 8));
    }

    else
    {
      *__p = *a1;
      v30 = *(a1 + 16);
    }

    subscriber::encodeIccid();
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (v31 == v32)
    {
      ctu::OsLogContext::OsLogContext(&v27, kCtLoggingSystemName, "vinyl.helper");
      v23 = v28;
      ctu::OsLogContext::~OsLogContext(&v27);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1017717B0(v6, v7, v23);
      }

      goto LABEL_40;
    }

    if (sub_1002E1A8C(v19, 1, 0x1Au, v31, v32 - v31, 0))
    {
      ctu::OsLogContext::OsLogContext(&v27, kCtLoggingSystemName, "vinyl.helper");
      v22 = v28;
      ctu::OsLogContext::~OsLogContext(&v27);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1017716E0();
      }

LABEL_40:
      v16 = 0;
      goto LABEL_41;
    }

    v24 = sub_1002E19DC(0);
    if (sub_1002E1E4C(v19, v24, 0, 0x10u))
    {
      ctu::OsLogContext::OsLogContext(&v27, kCtLoggingSystemName, "vinyl.helper");
      v25 = v28;
      ctu::OsLogContext::~OsLogContext(&v27);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1017715A8();
      }
    }

    else
    {
      if (!sub_1002E1D88(v24, &__src, &v34))
      {
        a5[1] = *a5;
        if (__src)
        {
          sub_1001122C4(a5, __src, __src + v34, v34);
          free(__src);
        }

        v16 = 1;
        if (!v24)
        {
          goto LABEL_41;
        }

LABEL_50:
        sub_1002E1A20(v24);
LABEL_41:
        if (v31)
        {
          v32 = v31;
          operator delete(v31);
        }

        goto LABEL_27;
      }

      ctu::OsLogContext::OsLogContext(&v27, kCtLoggingSystemName, "vinyl.helper");
      v26 = v28;
      ctu::OsLogContext::~OsLogContext(&v27);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_101770F00();
      }
    }

    v16 = 0;
    if (!v24)
    {
      goto LABEL_41;
    }

    goto LABEL_50;
  }

  ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, "vinyl.helper");
  v15 = v32;
  ctu::OsLogContext::~OsLogContext(&v31);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_101770F68();
  }

  return 0;
}

void sub_10046A0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (v20)
  {
    sub_1002E1A20(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v19)
  {
    sub_1002E1A20(v19);
  }

  if (v18)
  {
    sub_1002E1A20(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046A178(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1000CE3D4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10046A3A4(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  sub_10046A2C0((88 * v2), a2);
  v15 = (88 * v2 + 88);
  v7 = a1[1];
  v8 = 88 * v2 + *a1 - v7;
  sub_10046A400(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10046A600(&v13);
  return v12;
}

void sub_10046A2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10046A600(va);
  _Unwind_Resume(a1);
}

char *sub_10046A2C0(char *__dst, __int128 *a2)
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

  *(__dst + 6) = *(a2 + 6);
  if (*(a2 + 55) < 0)
  {
    sub_100005F2C(__dst + 32, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(__dst + 6) = *(a2 + 6);
    *(__dst + 2) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C(__dst + 56, *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(__dst + 9) = *(a2 + 9);
    *(__dst + 56) = v6;
  }

  *(__dst + 20) = *(a2 + 20);
  return __dst;
}

void sub_10046A370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046A3A4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10046A400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 24);
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      v10 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v10;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = 0;
      *(a4 + 80) = *(v7 + 80);
      v7 += 88;
      a4 += 88;
    }

    while (v7 != a3);
    v15 = a4;
    LOBYTE(v13) = 1;
    while (v5 != a3)
    {
      sub_10046A50C(a1, v5);
      v5 += 88;
    }
  }

  return sub_10046A574(v12);
}

void sub_10046A50C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10046A574(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10046A5AC(a1);
  }

  return a1;
}

void sub_10046A5AC(uint64_t *a1)
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
      v3 -= 88;
      sub_10046A50C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10046A600(uint64_t a1)
{
  sub_10046A638(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10046A638(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    sub_10046A50C(v5, v4 - 88);
  }
}

void *sub_10046A680(void *result, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  *result = off_101E4E6B8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  result[3] = *a2;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_10046A6D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v46[0] = 0;
  v46[1] = 0;
  sub_1004717B4(v46, 524524);
  v44 = 0;
  v45 = 0;
  v43 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  if ((*(a2 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_11;
    }

LABEL_19:
    v18 = kCtLoggingSystemName;
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.awd");
    v23 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v24 = "Bootstrap iccid of slot 1 is empty!";
    v25 = v23;
    v26 = 2;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, v24, buf, v26);
    goto LABEL_26;
  }

  if (!a2[1])
  {
    goto LABEL_19;
  }

LABEL_11:
  if (((*(*v14 + 64))(v14, a2, &v45, &v44, &v43) & 1) == 0)
  {
    v18 = kCtLoggingSystemName;
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.awd");
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = a2;
    v24 = "Invalid subscriber ID: %s";
    v25 = v27;
    v26 = 12;
    goto LABEL_25;
  }

  v17 = v44;
  v16 = v45;
  v18 = kCtLoggingSystemName;
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.awd");
  v19 = v16 - v17;
  v20 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    *buf = 136315650;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = v19;
    v48 = 2048;
    v49 = v44;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Bootstrap(%s) data usage queried. domestic: %lld, roaming: %lld", buf, 0x20u);
  }

  v21 = v46[0];
  if (v46[0])
  {
    v22 = v44;
    *(v46[0] + 52) |= 6u;
    *(v21 + 16) = v19;
    *(v21 + 24) = v22;
  }

LABEL_26:
  v41 = 0;
  v42 = 0;
  v40 = 0;
  if ((*(a3 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a3 + 23))
    {
      goto LABEL_28;
    }

LABEL_36:
    ctu::OsLogContext::OsLogContext(buf, v18, "cp.awd");
    v34 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v35 = "Bootstrap iccid of slot 2 is empty!";
    v36 = v34;
    v37 = 2;
LABEL_42:
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, v35, buf, v37);
    goto LABEL_43;
  }

  if (!a3[1])
  {
    goto LABEL_36;
  }

LABEL_28:
  if (((*(*v14 + 64))(v14, a3, &v42, &v41, &v40) & 1) == 0)
  {
    ctu::OsLogContext::OsLogContext(buf, v18, "cp.awd");
    v38 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      goto LABEL_43;
    }

    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    *buf = 136315138;
    *&buf[4] = a3;
    v35 = "Invalid subscriber ID: %s";
    v36 = v38;
    v37 = 12;
    goto LABEL_42;
  }

  v29 = v41;
  v28 = v42;
  ctu::OsLogContext::OsLogContext(buf, v18, "cp.awd");
  v30 = v28 - v29;
  v31 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    *buf = 136315650;
    *&buf[4] = a3;
    *&buf[12] = 2048;
    *&buf[14] = v30;
    v48 = 2048;
    v49 = v41;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Bootstrap(%s) data usage queried. domestic: %lld, roaming: %lld", buf, 0x20u);
  }

  v32 = v46[0];
  if (v46[0])
  {
    v33 = v41;
    *(v46[0] + 52) |= 0x18u;
    *(v32 + 32) = v30;
    *(v32 + 40) = v33;
  }

LABEL_43:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  return sub_10047189C(v46);
}

void sub_10046ABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(v7);
  }

  sub_10047189C(va);
  _Unwind_Resume(a1);
}

const void **sub_10046AC24(int a1, int a2, UInt8 *bytes)
{
  v3 = bytes;
  v4 = bytes[23];
  if (v4 < 0)
  {
    v5 = v3;
    v3 = *v3;
    v4 = *(v5 + 1);
  }

  v6 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v3, v4, kCFAllocatorNull);
  v12 = v6;
  __p = 0;
  v10 = 0;
  v11 = 0;
  v8 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  CodingUtility::SHA1();
  sub_10002D760(&v8);
  VinylSlotIdToInt();
  sub_1007A0C50();
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  return sub_10002D760(&v12);
}

void sub_10046ACE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10002D760(&a10);
  sub_10002D760((v16 - 24));
  _Unwind_Resume(a1);
}

void sub_10046AD18(capabilities::ct *a1)
{
  if (capabilities::ct::supportsRemoteCellularPlan(a1))
  {
    sub_10079D8A0();
  }
}

void sub_10046ADA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 8);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10046AE34(uint64_t a1)
{
  v2 = capabilities::ct::supportsSequoia(a1);
  if (v2)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10046B0DC;
    v25 = &unk_101E4E7F0;
    v26 = a1;
    sub_10079D8A0();
  }

  if (capabilities::ct::supportedVinylSlotCount(v2))
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 8);
        if (v6)
        {
          ServiceMap = Registry::getServiceMap(*(a1 + 24));
          v8 = ServiceMap;
          if ((v9 & 0x8000000000000000) != 0)
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
          v27 = v9;
          v13 = sub_100009510(&v8[1].__m_.__sig, &v27);
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
              if (!v15)
              {
LABEL_25:
                sub_100004A34(v14);
                goto LABEL_26;
              }

LABEL_16:
              v16 = *(a1 + 16);
              v20 = *(a1 + 8);
              v21 = v16;
              if (v16)
              {
                atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v6 + 24))(&object, v6);
              v17[0] = _NSConcreteStackBlock;
              v17[1] = 3321888768;
              v17[2] = sub_10046B304;
              v17[3] = &unk_101E4E810;
              v17[4] = v6;
              v18 = v5;
              atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_10046B170(v15, "commCenterCellularPlanProfilesStatus", 1, &v20, &object, v17);
              if (object)
              {
                dispatch_release(object);
              }

              if (v21)
              {
                std::__shared_weak_count::__release_weak(v21);
              }

              if (v18)
              {
                sub_100004A34(v18);
              }

              if (!v14)
              {
                goto LABEL_26;
              }

              goto LABEL_25;
            }

            std::mutex::unlock(v8);
            if (v15)
            {
              goto LABEL_16;
            }
          }

          else
          {
            std::mutex::unlock(v8);
          }
        }

LABEL_26:
        sub_100004A34(v5);
      }
    }
  }
}

void sub_10046B084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, dispatch_object_t object, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

void sub_10046B0DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 8);
      if (v5)
      {
        (**v5)(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10046B170(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, dispatch_object_t *a5, void *a6)
{
  v11 = a6;
  v12 = v11;
  if (a2 && v11 && *a5)
  {
    v13 = objc_retainBlock(v11);
    v14 = v13;
    object = *a5;
    *a5 = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3321888768;
    v17[2] = sub_100471A98;
    v17[3] = &unk_101E4E878;
    v15 = a4[1];
    v17[4] = *a4;
    v18 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = objc_retainBlock(v13);
    (*(*a1 + 40))(a1, a2, a3, &object, v17);
    if (object)
    {
      dispatch_release(object);
    }

    v16 = v19;
    v19 = 0;

    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_10046B2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, dispatch_object_t object)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046B32C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10046B348(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_10046B358(uint64_t a1, BOOL *a2, uint64_t *a3, uint64_t *a4)
{
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10046BAA8;
  v47[3] = &unk_101E4E840;
  v47[4] = a3;
  v47[5] = a4;
  v47[6] = a2;
  sub_10046B8E8(0x800D5u, v47);
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v37 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v37);
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
      if (!v16)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
LABEL_7:
    ctu::OsLogContext::OsLogContext(&v37, kCtLoggingSystemName, "cp.awd");
    v18 = v38;
    ctu::OsLogContext::~OsLogContext(&v37);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_101771840(v18);
      if (v17)
      {
        return;
      }

      goto LABEL_46;
    }

LABEL_45:
    if (v17)
    {
      return;
    }

    goto LABEL_46;
  }

LABEL_12:
  memset(&v46, 0, sizeof(v46));
  memset(&v45, 0, sizeof(v45));
  memset(&v44, 0, sizeof(v44));
  v42 = "+";
  v43 = "_";
  v37 = &v46;
  v38 = &v43;
  v39 = &v45;
  v40 = &v44;
  v41 = &v42;
  sub_10046BD14(&v37, a3);
  std::string::append(&v46, "/", 1uLL);
  std::string::append(&v45, "/", 1uLL);
  std::string::append(&v44, "/", 1uLL);
  sub_10046BD14(&v37, a4);
  v36 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v36 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v36 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v20) == &_xpc_type_dictionary)
  {
    xpc_retain(v20);
    goto LABEL_20;
  }

  v21 = xpc_null_create();
LABEL_19:
  v36 = v21;
LABEL_20:
  xpc_release(v20);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v46;
  }

  else
  {
    v22 = v46.__r_.__value_.__r.__words[0];
  }

  v34 = xpc_string_create(v22);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  v32 = &v36;
  v33 = "profiles_from_to";
  sub_10000F688(&v32, &v34, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v34);
  v34 = 0;
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v45;
  }

  else
  {
    v23 = v45.__r_.__value_.__r.__words[0];
  }

  v30 = xpc_string_create(v23);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v32 = &v36;
  v33 = "profiles_from_to_sim_type";
  sub_10000F688(&v32, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v44;
  }

  else
  {
    v24 = v44.__r_.__value_.__r.__words[0];
  }

  v28 = xpc_string_create(v24);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v32 = &v36;
  v33 = "profiles_from_to_is_bootstrap";
  sub_10000F688(&v32, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_BOOL_create(*a2);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v32 = &v36;
  v33 = "is_buddy_flow";
  sub_10000F688(&v32, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v25 = v36;
  v26 = 0;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    v25 = xpc_null_create();
  }

  (*(*v16 + 16))(v16, "commCenterCellularPlanProfileSwitch", &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v36);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if (v17)
  {
    return;
  }

LABEL_46:
  sub_100004A34(v15);
}

void sub_10046B828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v40);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10046B8E8(unsigned int a1, void *a2)
{
  v3 = a2;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a1);
  if (v9)
  {
    v7 = 0;
    v8 = 0;
    sub_10001C610(&v7);
    v5 = v7 != 0;
    if (v7)
    {
      operator new();
    }

    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  sub_10001C0A0(&v9);

  return v5;
}

void sub_10046BA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);

  _Unwind_Resume(a1);
}

uint64_t sub_10046BAA8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    do
    {
      v7 = *(a2 + 44);
      v8 = *(a2 + 40);
      if (v8 >= v7)
      {
        if (v7 == *(a2 + 48))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 32), v7 + 1);
          v7 = *(a2 + 44);
        }

        *(a2 + 44) = v7 + 1;
        sub_100471624();
      }

      v9 = *(a2 + 32);
      *(a2 + 40) = v8 + 1;
      v10 = *(v9 + 8 * v8);
      *(v10 + 48) |= 0x20u;
      v11 = *(v10 + 32);
      if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v11, v5);
      v13 = v5[1].__r_.__value_.__s.__data_[0];
      *(v10 + 48) |= 4u;
      *(v10 + 24) = v13;
      if (v5[1].__r_.__value_.__s.__data_[1])
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      result = awd::metrics::CommCenterCellularSimType_IsValid(v14, v12);
      if ((result & 1) == 0)
      {
        sub_101771884();
      }

      *(v10 + 48) |= 0x40u;
      *(v10 + 40) = v14;
      v5 = (v5 + 32);
    }

    while (v5 != v6);
  }

  v15 = *(v3 + 40);
  v16 = *v15;
  v17 = v15[1];
  if (*v15 != v17)
  {
    do
    {
      v18 = *(a2 + 68);
      v19 = *(a2 + 64);
      if (v19 >= v18)
      {
        if (v18 == *(a2 + 72))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 56), v18 + 1);
          v18 = *(a2 + 68);
        }

        *(a2 + 68) = v18 + 1;
        sub_100471624();
      }

      v20 = *(a2 + 56);
      *(a2 + 64) = v19 + 1;
      v21 = *(v20 + 8 * v19);
      *(v21 + 48) |= 0x20u;
      v22 = *(v21 + 32);
      if (v22 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v22, v16);
      v24 = v16[1].__r_.__value_.__s.__data_[0];
      *(v21 + 48) |= 4u;
      *(v21 + 24) = v24;
      if (v16[1].__r_.__value_.__s.__data_[1])
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      result = awd::metrics::CommCenterCellularSimType_IsValid(v25, v23);
      if ((result & 1) == 0)
      {
        sub_101771884();
      }

      *(v21 + 48) |= 0x40u;
      *(v21 + 40) = v25;
      v16 = (v16 + 32);
    }

    while (v16 != v17);
  }

  v26 = **(v3 + 48);
  *(a2 + 88) |= 0x20u;
  *(a2 + 80) = v26;
  return result;
}

void sub_10046BD14(std::string **a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v33 = 0u;
      v34 = 0u;
      sub_100471688(&v33, (v2 + v5));
      __dst[0] = 0;
      __dst[1] = 0;
      v32 = 0;
      if (SBYTE7(v34) < 0)
      {
        sub_100005F2C(__dst, v33, *(&v33 + 1));
      }

      else
      {
        *__dst = v33;
        v32 = v34;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      if (BYTE8(v34))
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }

      sub_10000501C(&v28, v7);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      if (BYTE9(v34))
      {
        v8 = "ESIM";
      }

      else
      {
        v8 = "PSIM";
      }

      sub_10000501C(&v25, v8);
      if (v32 >= 0)
      {
        v9 = HIBYTE(v32);
      }

      else
      {
        v9 = __dst[1];
      }

      memset(&v22, 0, sizeof(v22));
      sub_1000677C4(&v22, v9 + 1);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v22;
      }

      else
      {
        v10 = v22.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (v32 >= 0)
        {
          v11 = __dst;
        }

        else
        {
          v11 = __dst[0];
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 95;
      if (v27 >= 0)
      {
        v12 = &v25;
      }

      else
      {
        v12 = v25;
      }

      if (v27 >= 0)
      {
        v13 = HIBYTE(v27);
      }

      else
      {
        v13 = v26;
      }

      v14 = std::string::append(&v22, v12, v13);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v24 = v14->__r_.__value_.__r.__words[2];
      *__p = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (v24 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      if (v24 >= 0)
      {
        v17 = HIBYTE(v24);
      }

      else
      {
        v17 = __p[1];
      }

      std::string::append(*a1, v16, v17);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (v27 >= 0)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v25;
      }

      if (v27 >= 0)
      {
        v19 = HIBYTE(v27);
      }

      else
      {
        v19 = v26;
      }

      std::string::append(a1[2], v18, v19);
      if (v30 >= 0)
      {
        v20 = &v28;
      }

      else
      {
        v20 = v28;
      }

      if (v30 >= 0)
      {
        v21 = HIBYTE(v30);
      }

      else
      {
        v21 = v29;
      }

      std::string::append(a1[3], v20, v21);
      if (v6 != ((a2[1] - *a2) >> 5) - 1)
      {
        std::string::append(*a1, "+", 1uLL);
        std::string::append(a1[2], "+", 1uLL);
        std::string::append(a1[3], "+", 1uLL);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(v25);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v28);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(__dst[0]);
      }

      if (SBYTE7(v34) < 0)
      {
        operator delete(v33);
      }

      ++v6;
      v2 = *a2;
      v5 += 32;
    }

    while (v6 < (a2[1] - *a2) >> 5);
  }
}