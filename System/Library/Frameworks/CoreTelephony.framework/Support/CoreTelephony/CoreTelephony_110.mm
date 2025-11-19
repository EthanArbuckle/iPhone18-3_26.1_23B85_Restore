void sub_10073D804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10073D820(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10073D888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

BOOL sub_10073D8AC(uint64_t a1, uint64_t a2)
{
  if (!a2 || (*(*a2 + 16))(a2) || !sub_1000C5B50(a1))
  {
    v11 = *(a1 + 64);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 112);
    if (v12)
    {
      v13 = "non-empty";
    }

    else
    {
      v13 = "empty";
    }

    if (v12)
    {
      v14 = (*(*v12 + 16))(v12);
    }

    else
    {
      v14 = -3;
    }

    *buf = 136315650;
    *&buf[4] = "assignActivator";
    *&buf[12] = 2080;
    *&buf[14] = v13;
    *&buf[22] = 1024;
    v24 = v14;
    v8 = "#I %s: preserve the existing %s activator %d";
    v9 = v11;
    v10 = 28;
    goto LABEL_16;
  }

  if (*(a1 + 112))
  {
    v4 = (*(*a2 + 16))(a2);
    v5 = (*(**(a1 + 112) + 16))(*(a1 + 112));
    v6 = *(a1 + 64);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4 != v5)
    {
      if (result)
      {
        v16 = (*(**(a1 + 112) + 16))(*(a1 + 112));
        v17 = (*(*a2 + 16))(a2);
        *buf = 136315650;
        *&buf[4] = "assignActivator";
        *&buf[12] = 1024;
        *&buf[14] = v16;
        *&buf[18] = 1024;
        *&buf[20] = v17;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: non-empty activator %d to other non-empty %d", buf, 0x18u);
      }

      v18 = *(a1 + 112);
      sub_100004AA0(buf, (a1 + 32));
      if (*buf)
      {
        v19 = *buf + 24;
      }

      else
      {
        v19 = 0;
      }

      v21 = v19;
      v22 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v20 = (*(*v18 + 104))(v18, &v21);
      if (v22)
      {
        sub_100004A34(v22);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v20)
      {
        *(a1 + 112) = a2;
        return 1;
      }

      return 0;
    }

    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "assignActivator";
    v8 = "#I %s: same non-empty activator";
    v9 = v6;
    v10 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    return 0;
  }

  v15 = *(a1 + 64);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "assignActivator";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: empty activator to non-empty", buf, 0xCu);
  }

  result = 0;
  *(a1 + 112) = a2;
  return result;
}

void sub_10073DC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_10073DC70(uint64_t a1)
{
  v2 = PersonalitySpecificImpl::simSlot(a1);
  v3 = *(a1 + 104);
  if (*(a1 + 191) < 0)
  {
    sub_100005F2C(__p, *(a1 + 168), *(a1 + 176));
  }

  else
  {
    *__p = *(a1 + 168);
    v5 = *(a1 + 184);
  }

  sub_10073C774(a1, v2, v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10073DCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10073DD14(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, NSObject **a6, char *a7, int a8)
{
  PersonalitySpecificImpl::PersonalitySpecificImpl();
  *a1 = off_101E77548;
  *(a1 + 24) = off_101E77A68;
  v14 = *(*a4 + 52);
  v15 = a3;
  if (a3 < 0)
  {
    if (a5)
    {
      v15 = (*(*a5 + 16))(a5);
    }

    else
    {
      v15 = -1;
    }
  }

  sub_10000501C(__p, a7);
  v16 = sub_10073C774(a1, v14, v15, __p);
  ctu::OsLogContext::OsLogContext(&v38, kCtLoggingSystemName, v16);
  sub_10073D820((a1 + 32), a6, &v38);
  ctu::OsLogContext::~OsLogContext(&v38);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_101E77548;
  *(a1 + 24) = off_101E77A68;
  v17 = a2[1];
  *(a1 + 72) = *a2;
  *(a1 + 80) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(*a4 + 52);
  v19 = a3;
  if (a3 < 0)
  {
    if (a5)
    {
      v19 = (*(*a5 + 16))(a5);
    }

    else
    {
      v19 = -1;
    }
  }

  sub_10000501C(v32, a7);
  v20 = sub_10073C774(a1, v18, v19, v32);
  sub_10000501C(&v34, v20);
  v21 = *a6;
  v31 = v21;
  if (v21)
  {
    dispatch_retain(v21);
  }

  object = 0;
  ctu::RestModule::RestModule();
  if (v31)
  {
    dispatch_release(v31);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  *(a1 + 104) = a3;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  sub_10000501C((a1 + 168), a7);
  v22 = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 244) = a8;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 342) = 0;
  *(a1 + 360) = 0;
  *(a1 + 352) = 0;
  *(a1 + 392) = a1 + 400;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = a1 + 424;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  do
  {
    v23 = a1 + v22;
    *(v23 + 456) = 0;
    *(v23 + 464) = "";
    *(v23 + 472) = "";
    *(v23 + 480) = 0;
    *(v23 + 484) = 0;
    *(v23 + 488) = 2;
    v24 = (a1 + v22 + 492);
    *(v23 + 508) = 0;
    *(a1 + v22 + 500) = 0;
    v22 += 56;
    *v24 = 0;
  }

  while (v22 != 112);
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 592) = 2;
  *(a1 + 596) = 0;
  *(a1 + 600) = 0;
  *(a1 + 624) = 0;
  CIPFamily::CIPFamily((a1 + 632));
  CIPFamily::CIPFamily((a1 + 648));
  *(a1 + 664) = 0;
  *(a1 + 666) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 713) = 0u;
  Registry::createRestModuleOneTimeUseConnection(&v28, *(a1 + 72));
  ctu::RestModule::connect();
  if (v29)
  {
    sub_100004A34(v29);
  }

  sub_10073D8AC(a1, a5);
  sub_10073DC70(a1);
  return a1;
}

void sub_10073E0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object, dispatch_object_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_10075B4C8(v33 + 664);
  v35 = (v33 + 648);
  v36 = -32;
  do
  {
    CIPFamily::~CIPFamily(v35);
    v35 = (v37 - 16);
    v36 += 16;
  }

  while (v36);
  v38 = *(v33 + 584);
  if (v38)
  {
    sub_100004A34(v38);
  }

  v39 = 0;
  while (1)
  {
    v40 = *(v33 + 560 + v39);
    if (v40)
    {
      sub_100004A34(v40);
    }

    v39 -= 56;
    if (v39 == -112)
    {
      v41 = *(v33 + 440);
      *(v33 + 440) = 0;
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }

      v42 = v33 + 416;
      v43 = -48;
      do
      {
        sub_1001178E4(v42, *(v42 + 8));
        v42 -= 24;
        v43 += 24;
      }

      while (v43);
      v44 = 0;
      while (1)
      {
        v45 = *(v33 + 336 + v44);
        if (v45)
        {
          sub_100004A34(v45);
        }

        v44 -= 16;
        if (v44 == -32)
        {
          v46 = 0;
          while (1)
          {
            v47 = *(v33 + 304 + v46);
            if (v47)
            {
              sub_100004A34(v47);
            }

            v46 -= 16;
            if (v46 == -32)
            {
              v48 = *(v33 + 272);
              if (v48)
              {
                sub_100004A34(v48);
              }

              if (*(v33 + 191) < 0)
              {
                operator delete(*(v33 + 168));
              }

              v49 = (v33 + 152);
              v50 = -48;
              while (1)
              {
                v51 = *(v49 - 1);
                if (v51)
                {
                  *v49 = v51;
                  operator delete(v51);
                }

                v49 -= 3;
                v50 += 24;
                if (!v50)
                {
                  v52 = *(v33 + 96);
                  if (v52)
                  {
                    sub_100004A34(v52);
                  }

                  v53 = *(v33 + 80);
                  if (v53)
                  {
                    sub_100004A34(v53);
                  }

                  ctu::OsLogLogger::~OsLogLogger((v33 + 64));
                  sub_1000C0544((v33 + 32));
                  PersonalitySpecificImpl::~PersonalitySpecificImpl(v33);
                  PersonalitySpecific::~PersonalitySpecific(v33);
                  _Unwind_Resume(a1);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10073E31C(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    return (*(*v1 + 16))();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t sub_10073E350(Registry **a1)
{
  if (((*(*a1 + 17))(a1, 0, 1, 1) & 1) == 0 || !sub_1000939E8(a1))
  {
    goto LABEL_11;
  }

  ServiceMap = Registry::getServiceMap(a1[9]);
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
  if (!v8)
  {
    std::mutex::unlock(v3);
LABEL_11:
    v11 = 0;
    LODWORD(v10) = 0;
    return v11 | (v10 << 8);
  }

  v10 = v8[3];
  v9 = v8[4];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v3);
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
    if (!v10)
    {
      sub_100004A34(v9);
LABEL_16:
      v11 = 0;
      return v11 | (v10 << 8);
    }
  }

  else
  {
    std::mutex::unlock(v3);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  v13 = (*(*v10 + 48))(v10);
  v11 = v13;
  LODWORD(v10) = HIBYTE(v13);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return v11 | (v10 << 8);
}

void sub_10073E4C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10073E4E4(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    v3 = *a2;
    *(a1 + 609) = *(a2 + 9);
    *(a1 + 600) = v3;
    v4 = *(a1 + 64);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if ((*(a1 + 624) & 1) == 0)
    {
      sub_1000D1644();
    }

    v5 = *(a1 + 600);
    if (*(a1 + 608) == 1)
    {
      v6 = *(a1 + 604);
    }

    else
    {
      v6 = -1;
    }

    v11[0] = 67109376;
    v11[1] = v5;
    v12 = 1024;
    v13 = v6;
    v8 = "#I fNetworkAssignedSnssai = [%d , %d]";
    v9 = v4;
    v10 = 14;
    goto LABEL_12;
  }

  if (*(a1 + 624) == 1)
  {
    *(a1 + 624) = 0;
  }

  v7 = *(a1 + 64);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    v8 = "#I reset fNetworkAssignedSnssai";
    v9 = v7;
    v10 = 2;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, v11, v10);
  }
}

uint64_t sub_10073E628(uint64_t a1, std::string::size_type a2, std::string::size_type a3)
{
  v6 = *(a1 + 64);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I matching apnSettingDNN=%s with newDNN=%s", &buf, 0x16u);
  }

  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = *(a3 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a3 + 8);
  }

  if (v10 == v11)
  {
    v13 = v9 >= 0 ? a2 : *a2;
    v14 = v12 >= 0 ? a3 : *a3;
    if (!memcmp(v13, v14, v10))
    {
      return 1;
    }
  }

  if (std::string::find(a2, 64, 0) == -1 || std::string::find(a3, 64, 0) == -1)
  {
    return 0;
  }

  memset(&buf, 0, sizeof(buf));
  v15 = std::string::find(a2, 64, 0);
  std::string::basic_string(&buf, a2, 0, v15, &v40);
  memset(&v40, 0, sizeof(v40));
  v16 = std::string::find(a3, 64, 0);
  std::string::basic_string(&v40, a3, 0, v16, &v38);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  v18 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v40.__r_.__value_.__l.__size_;
  }

  if (size != v18)
  {
    goto LABEL_37;
  }

  v19 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
  v20 = (v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v40 : v40.__r_.__value_.__r.__words[0];
  if (memcmp(v19, v20, size))
  {
    goto LABEL_37;
  }

  if (sub_10073EAE0(a3, "@255:16777215"))
  {
    goto LABEL_46;
  }

  if (!sub_10073EAE0(a2, "@255:16777215") || *(a1 + 624) != 1)
  {
    goto LABEL_37;
  }

  sub_10042A614(&buf.__r_.__value_.__l.__data_, 64, &v35);
  if ((*(a1 + 624) & 1) == 0)
  {
    sub_1000D1644();
  }

  std::to_string(&v34, *(a1 + 600));
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v34;
  }

  else
  {
    v23 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v34.__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&v35, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v36, 58);
  v37 = v36;
  memset(&v36, 0, sizeof(v36));
  if ((*(a1 + 624) & 1) == 0)
  {
    sub_1000D1644();
  }

  if (*(a1 + 608) == 1)
  {
    v27 = *(a1 + 604);
  }

  else
  {
    v27 = 0xFFFFFF;
  }

  std::to_string(&v33, v27);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v33;
  }

  else
  {
    v28 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v33.__r_.__value_.__l.__size_;
  }

  v30 = std::string::append(&v37, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v39 = v30->__r_.__value_.__r.__words[2];
  v38 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v32 = sub_100071DF8(&v38, a3);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (v32)
  {
LABEL_46:
    v21 = 1;
  }

  else
  {
LABEL_37:
    v21 = 0;
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  return v21;
}

void sub_10073EA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v40 - 81) < 0)
  {
    operator delete(*(v40 - 104));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10073EAE0(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  v8[0] = a1;
  v8[1] = v5;
  return sub_10075B544(v8, __s, v4);
}

void sub_10073EB3C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 56)) = a2[9];
  *(a1 + 24) = a2[10];
  ctu::RestModule::disconnect((a1 + 88));
  sub_10075B4C8(a1 + 664);
  for (i = 648; i != 616; i -= 16)
  {
    CIPFamily::~CIPFamily((a1 + i));
  }

  v5 = *(a1 + 584);
  if (v5)
  {
    sub_100004A34(v5);
  }

  for (j = 560; j != 448; j -= 56)
  {
    v7 = *(a1 + j);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  v8 = *(a1 + 440);
  *(a1 + 440) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  for (k = 0; k != -48; k -= 24)
  {
    sub_1001178E4(a1 + k + 416, *(a1 + k + 424));
  }

  for (m = 336; m != 304; m -= 16)
  {
    v11 = *(a1 + m);
    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  do
  {
    v12 = *(a1 + m);
    if (v12)
    {
      sub_100004A34(v12);
    }

    m -= 16;
  }

  while (m != 272);
  v13 = *(a1 + 272);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  for (n = 0; n != -48; n -= 24)
  {
    v15 = *(a1 + n + 144);
    if (v15)
    {
      *(a1 + n + 152) = v15;
      operator delete(v15);
    }
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    sub_100004A34(v17);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 64));
  sub_1000C0544((a1 + 32));

  PersonalitySpecificImpl::~PersonalitySpecificImpl(a1);
}

void sub_10073ED78(uint64_t a1)
{
  sub_10073EB3C(a1, &off_101E77F18);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10073EDA8(uint64_t a1)
{
  sub_10073EB3C(a1 - 24, &off_101E77F18);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10073EDDC(uint64_t a1)
{
  sub_10073EB3C(a1, &off_101E77F18);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_10073EE28(void *a1, uint64_t a2)
{
  v3 = a1[14];
  if (v3)
  {
    (*(*a1 + 16))(&v14, a1);
    v5 = (*(*v3 + 272))(v3, a2, &v14, 3, 0);
    if (v15)
    {
      sub_100004A34(v15);
    }

    v6 = a1[8];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (*(*a1 + 40))(a1);
      v8 = a1[14];
      if (v8)
      {
        v9 = (*(*v8 + 16))(v8);
      }

      else
      {
        v9 = -3;
      }

      v12 = asStringBool(v5);
      *buf = 136315906;
      v17 = v7;
      v18 = 2080;
      v19 = "suspendDataContext";
      v20 = 1024;
      v21 = v9;
      v22 = 2080;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: Suspend context %d result: %s", buf, 0x26u);
    }
  }

  else
  {
    v10 = a1[8];
    v5 = 0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (*(*a1 + 40))(a1);
      *buf = 136315394;
      v17 = v11;
      v18 = 2080;
      v19 = "suspendDataContext";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: Cannot suspend context: activator is empty", buf, 0x16u);
      return 0;
    }
  }

  return v5;
}

void sub_10073F07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10073F0A4(void *a1, uint64_t a2)
{
  v4 = a1[14];
  v5 = a1[8];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = (*(*a1 + 40))(a1);
      v8 = a1[14];
      if (v8)
      {
        v9 = (*(*v8 + 16))(v8);
      }

      else
      {
        v9 = -3;
      }

      *buf = 136315650;
      v14 = v7;
      v15 = 2080;
      v16 = "resumeDataContext";
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: Resume context %d", buf, 0x1Cu);
      v4 = a1[14];
    }

    (*(*a1 + 16))(&v11, a1);
    (*(*v4 + 280))(v4, a2, &v11, 0);
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else if (v6)
  {
    v10 = (*(*a1 + 40))(a1);
    *buf = 136315394;
    v14 = v10;
    v15 = 2080;
    v16 = "resumeDataContext";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: Cannot resume context: activator is empty", buf, 0x16u);
  }
}

void sub_10073F2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10073F300(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315138;
    *&buf[1] = "refreshDataSettings";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: (1) refreshapn", buf, 0xCu);
  }

  if (validContextType())
  {
    v5 = 0;
    v6 = 0;
    sub_1002AEE08();
  }

  v3 = *(a1 + 64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asString();
    buf[0] = 136315394;
    *&buf[1] = "refreshDataSettings";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
  }
}

void sub_10073FA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, int a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if ((a14 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10073FB00(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  valid = validContextType();
  v11 = *(a1 + 64);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if ((valid & 1) == 0)
  {
    if (v12)
    {
      *v36 = 136315394;
      *&v36[4] = "resetActivationBlocker";
      *&v36[12] = 2080;
      v37 = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v36, 0x16u);
    }

    return 0;
  }

  if (v12)
  {
    *v36 = 67109376;
    *&v36[4] = a4;
    *&v36[8] = 1024;
    *&v36[10] = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I resetActivationBlocker doNoResetIP %d, resetOnlyIP %d", v36, 0xEu);
  }

  if (a4)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 344 + a2);
    if (v13 == 1)
    {
      v14 = *(a1 + 64);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = asString();
        *v36 = 136315650;
        *&v36[4] = "resetActivationBlocker";
        *&v36[12] = 2080;
        v37 = a3;
        v38 = 2080;
        v39 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: %s: fIPv4ActivationBlocker[%s]: set to false", v36, 0x20u);
      }

      *(a1 + 344 + a2) = 0;
    }

    if (*(a1 + 346 + a2) == 1)
    {
      v16 = *(a1 + 64);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = asString();
        *v36 = 136315650;
        *&v36[4] = "resetActivationBlocker";
        *&v36[12] = 2080;
        v37 = a3;
        v38 = 2080;
        v39 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: %s: fIPv6ActivationBlocker[%s]: set to false", v36, 0x20u);
      }

      *(a1 + 346 + a2) = 0;
      v13 = 1;
    }
  }

  if (a5)
  {
    return v13;
  }

  v18 = a1 + 16 * a2;
  if (!*(v18 + 312))
  {
    return v13;
  }

  if (a2)
  {
LABEL_20:
    v19 = *(a1 + 64);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = asString();
      *v36 = 136315906;
      *&v36[4] = "resetActivationBlocker";
      *&v36[12] = 2080;
      v37 = a3;
      v38 = 2080;
      v39 = v20;
      v40 = 2080;
      v41 = a3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: %s: ActivationBlocker[%s]: set to false (%s)", v36, 0x2Au);
    }

    v21 = *(v18 + 320);
    *(v18 + 312) = 0;
    *(v18 + 320) = 0;
    if (v21)
    {
      sub_100004A34(v21);
    }

    return 1;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *v36 = v25;
  v29 = sub_100009510(&v24[1].__m_.__sig, v36);
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
      goto LABEL_34;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v24);
  v30 = 0;
  v32 = 1;
LABEL_34:
  if (!v31 || (v33 = PersonalitySpecificImpl::simSlot(a1), !(*(*v31 + 1152))(v31, v33)))
  {
    if ((v32 & 1) == 0)
    {
      sub_100004A34(v30);
    }

    goto LABEL_20;
  }

  v34 = *(a1 + 64);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = asString();
    *v36 = 136315650;
    *&v36[4] = "resetActivationBlocker";
    *&v36[12] = 2080;
    v37 = v35;
    v38 = 2080;
    v39 = a3;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#N %s: ActivationBlocker[%s]: cannot be reset on %s, network scan is in progress", v36, 0x20u);
  }

  if ((v32 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  return v13;
}

void sub_10073FF5C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10073FF90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = *(a1 + 264);
      if (v2)
      {
        return *(v2 + 160);
      }
    }

    else
    {
      v5 = *(a1 + 64);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "getTypeMask";
        v8 = 2080;
        v9 = asString();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#E %s: requested with wrong context type: %s", &v6, 0x16u);
      }
    }
  }

  else
  {
    v4 = *(a1 + 264);
    if (v4)
    {
      return *(v4 + 152);
    }
  }

  return 0;
}

uint64_t sub_100740080(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 136))(a1, a2, 1, 0);
  if (!result)
  {
    v5 = *(*a1 + 672);

    return v5(a1, a2, 27, "abandoned DataSettings detected", "CommCenter");
  }

  return result;
}

const void **sub_10074014C(uint64_t a1, BOOL *a2, BOOL *a3, uint64_t *a4, uint64_t a5)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  if (*(a5 + 23) < 0)
  {
    *(a5 + 8) = 0;
    v10 = *a5;
  }

  else
  {
    *(a5 + 23) = 0;
    v10 = a5;
  }

  *v10 = 0;
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_12:
  v21 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v19 + 96))(v47, v19, v21, 1, @"IPv6APNFallback", 0, 0);
  sub_100010180(&theDict, v47);
  sub_10000A1EC(v47);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"ProtocolMask");
    v23 = Value;
    *buf = 0;
    if (Value)
    {
      v24 = CFGetTypeID(Value);
      if (v24 == CFNumberGetTypeID())
      {
        ctu::cf::assign(buf, v23, v25);
        LOBYTE(v23) = buf[0];
      }

      else
      {
        LOBYTE(v23) = 0;
      }
    }

    if (CFDictionaryContainsKey(theDict, @"ApnName"))
    {
      CFDictionaryGetValue(theDict, @"ApnName");
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v26 = *buf;
      *v47 = *&buf[8];
      *&v47[7] = *&buf[15];
      v27 = buf[23];
      if (*(a5 + 23) < 0)
      {
        operator delete(*a5);
      }

      v28 = *v47;
      *a5 = v26;
      *(a5 + 8) = v28;
      *(a5 + 15) = *&v47[7];
      *(a5 + 23) = v27;
    }

    *a2 = v23 & 1;
    if (v23)
    {
      *a3 = (v23 & 2) != 0;
      v29 = CFDictionaryGetValue(theDict, @"Timeout");
      v30 = v29;
      *buf = 0;
      if (v29 && (v31 = CFGetTypeID(v29), v31 == CFNumberGetTypeID()))
      {
        ctu::cf::assign(buf, v30, v32);
        v33 = *buf;
      }

      else
      {
        v33 = 0;
      }

      *a4 = v33;
    }
  }

  v34 = *(a1 + 64);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = asStringBool(*a2);
    v36 = asStringBool(*a3);
    v37 = *a4;
    if (*(a5 + 23) >= 0)
    {
      v38 = a5;
    }

    else
    {
      v38 = *a5;
    }

    *buf = 136316162;
    *&buf[4] = "readApnFallback";
    *&buf[12] = 2080;
    *&buf[14] = v35;
    *&buf[22] = 2080;
    v42 = v36;
    v43 = 2048;
    v44 = v37;
    v45 = 2080;
    v46 = v38;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s: ipv4 = %s, ipv6 = %s, timeout = %lu, apn=%s", buf, 0x34u);
  }

  return sub_10001021C(&theDict);
}

void sub_1007404D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_10074053C(uint64_t a1, int a2)
{
  if (validContextType())
  {
    v4 = a1 + 24 * a2;
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    while (1)
    {
      if (v5 == v6)
      {
        return 1;
      }

      if (*(v5 + 16) == 1 && ((*(**(v5 + 8) + 248))(*(v5 + 8)) & 1) == 0)
      {
        break;
      }

      v5 += 24;
    }

    v12 = *(a1 + 64);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      (*(**(v5 + 8) + 192))(*(v5 + 8));
      v13 = 136315650;
      v14 = "connectionsReady";
      v15 = 2080;
      v16 = asString();
      v17 = 2080;
      v18 = asString();
      v9 = "#I %s: Observer %s not ready for context type: %s";
      v10 = v12;
      v11 = 32;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *(a1 + 64);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v13 = 136315394;
      v14 = "connectionsReady";
      v15 = 2080;
      v16 = asString();
      v9 = "#E %s: wrong context type: %s";
      v10 = v7;
      v11 = 22;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
      return 0;
    }
  }

  return result;
}

const char *asString(uint64_t *a1)
{
  v1 = *a1;
  if (v1)
  {
    return (*(*v1 + 48))();
  }

  else
  {
    return "nothing";
  }
}

void sub_100740748(uint64_t a1, signed int a2, const DataAPNSettingsObserver *a3, char a4)
{
  if (a3)
  {
    if (validContextType())
    {
      v8 = a1 + 24 * a2;
      v9 = *(v8 + 120);
      v10 = *(v8 + 128);
      v11 = v8 + 120;
      if (v9 == v10)
      {
        goto LABEL_7;
      }

      v12 = 0;
      v13 = v9;
      do
      {
        v12 |= *(v13 + 8) == a3;
        v13 += 24;
      }

      while (v13 != v10);
      if ((v12 & 1) == 0)
      {
LABEL_7:
        v14 = *(v11 + 16);
        if (v10 >= v14)
        {
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
          v18 = v17 + 1;
          if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1000CE3D4();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 3);
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

          if (v20)
          {
            sub_10008A65C(v11, v20);
          }

          v21 = 24 * v17;
          *v21 = a2;
          *(v21 + 8) = a3;
          *(v21 + 16) = 0;
          v15 = 24 * v17 + 24;
          v22 = *(v11 + 8) - *v11;
          v23 = 24 * v17 - v22;
          memcpy((v21 - v22), *v11, v22);
          v24 = *v11;
          *v11 = v23;
          *(v11 + 8) = v15;
          *(v11 + 16) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v10 = a2;
          *(v10 + 8) = a3;
          v15 = v10 + 24;
          *(v10 + 16) = 0;
        }

        *(v11 + 8) = v15;
        v25 = *(a1 + 64);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = asString(a3);
          v27 = asString();
          v28 = -1431655765 * ((*(v11 + 8) - *v11) >> 3);
          v29 = 136316674;
          v30 = "registerObserver";
          v31 = 2048;
          v32 = a1;
          v33 = 2080;
          v34 = v26;
          v35 = 2080;
          v36 = v27;
          v37 = 2048;
          v38 = a3;
          v39 = 1024;
          v40 = v28;
          v41 = 2080;
          v42 = asStringBool(a4);
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: 0x%lx: %s registered with us on %s: 0x%lx, new size=%d, current = %s", &v29, 0x44u);
        }
      }

      sub_100740A20(a1, a2, a3, a4);
    }

    else
    {
      v16 = *(a1 + 64);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315394;
        v30 = "registerObserver";
        v31 = 2080;
        v32 = asString();
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v29, 0x16u);
      }
    }
  }
}

void sub_100740A20(uint64_t a1, unsigned int a2, const DataAPNSettingsObserver *a3, char a4)
{
  if (validContextType())
  {
    if (a4)
    {
      v39 = 0;
      v40[0] = 0;
      v40[1] = 0;
      (*(*a3 + 352))(&v39, a3);
      v7 = v39;
      if (v39 != v40)
      {
        do
        {
          v8 = v7[4];
          v9 = v7[5];
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v8)
          {
            v10 = v8 - 24;
          }

          else
          {
            v10 = 0;
          }

          if (v10 != a1)
          {
            for (i = 0; i != 2; ++i)
            {
              v12 = dword_101836038[i];
              if (sub_10008F964(v10, dword_101836038[i], a3))
              {
                v13 = *(a1 + 64);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  *&buf[4] = "setObserverCurrent";
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E %s: !!! Logic problem: Connection cannot be current on different APNs !!!", buf, 0xCu);
                }

                sub_100740A20(v10, v12, a3, 0);
              }
            }
          }

          if (v9)
          {
            sub_100004A34(v9);
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
              v16 = *v15 == v7;
              v7 = v15;
            }

            while (!v16);
          }

          v7 = v15;
        }

        while (v15 != v40);
      }

      v17 = 0;
      v18 = a2;
      do
      {
        v19 = dword_101836038[v17];
        v20 = (a1 + 120 + 24 * v19);
        v22 = *v20;
        v21 = v20[1];
        while (v22 != v21)
        {
          if (*(v22 + 8) == a3)
          {
            v23 = v19 == v18 && sub_10008F814(a1, v18, a3, 1);
            if (*(v22 + 16) != v23)
            {
              *(v22 + 16) = v23;
              v24 = *(a1 + 64);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = asString();
                (*(*a3 + 192))(a3);
                v26 = asString();
                v27 = asStringBool(v23);
                *buf = 136315906;
                *&buf[4] = "setObserverCurrent";
                *&buf[12] = 2080;
                *&buf[14] = v25;
                v42 = 2080;
                v43 = v26;
                v44 = 2080;
                v45 = v27;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s:  (change states) on %s: connection %s becomes current %s", buf, 0x2Au);
                v18 = a2;
              }
            }
          }

          v22 += 24;
        }

        ++v17;
      }

      while (v17 != 2);
      if (!sub_10008F814(a1, v18, a3, 1))
      {
        sub_100004AA0(buf, (a1 + 32));
        if (*buf)
        {
          v28 = *buf + 24;
        }

        else
        {
          v28 = 0;
        }

        v37 = v28;
        v38 = *&buf[8];
        *buf = 0;
        *&buf[8] = 0;
        (*(*a3 + 64))(a3, v18, &v37);
        if (v38)
        {
          sub_100004A34(v38);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      sub_1001178E4(&v39, v40[0]);
    }

    else
    {
      v29 = a1 + 24 * a2;
      v30 = *(v29 + 120);
      for (j = *(v29 + 128); v30 != j; v30 += 24)
      {
        if (*(v30 + 8) == a3)
        {
          if (*(v30 + 16))
          {
            *(v30 + 16) = a4;
            v32 = *(a1 + 64);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = asString();
              (*(*a3 + 192))(a3);
              v34 = asString();
              v35 = asStringBool(0);
              *buf = 136315906;
              *&buf[4] = "setObserverCurrent";
              *&buf[12] = 2080;
              *&buf[14] = v33;
              v42 = 2080;
              v43 = v34;
              v44 = 2080;
              v45 = v35;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s:  (change states) on %s: connection %s becomes current %s", buf, 0x2Au);
            }
          }
        }
      }
    }
  }
}

void sub_100740EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, void *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_1001178E4(&a16, a17);
  _Unwind_Resume(a1);
}

void sub_100740F54(void *a1, int a2, const DataAPNSettingsObserver *a3)
{
  v6 = 0;
  v7 = a1 + 15;
  do
  {
    v8 = dword_101836038[v6];
    if (v8 == a2 || anyContextType())
    {
      v9 = &v7[3 * v8];
      v11 = *v9;
      v10 = v9[1];
      if (*v9 != v10)
      {
        v12 = v10 - v11 - 31;
        while (*(v11 + 1) != a3)
        {
          v11 += 24;
          v12 -= 24;
          if (v11 == v10)
          {
            goto LABEL_13;
          }
        }

        if (v11 + 24 != v10)
        {
          memmove(v11, v11 + 24, v12);
        }

        v9[1] = &v11[v12 + 7];
        v13 = a1[8];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = asString(a3);
          v15 = asString();
          v16 = -1431655765 * ((v9[1] - *v9) >> 3);
          *buf = 136316418;
          v26 = "unregisterObserver";
          v27 = 2048;
          v28 = a1;
          v29 = 2080;
          v30 = v14;
          v31 = 2048;
          v32 = a3;
          v33 = 2080;
          v34 = v15;
          v35 = 1024;
          v36 = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: 0x%lx: %s (0x%lx) unregistered with us (settings) on %s, new size=%d", buf, 0x3Au);
        }
      }
    }

LABEL_13:
    ++v6;
  }

  while (v6 != 2);
  v17 = 0;
  for (i = 0; i != 2; ++i)
  {
    v19 = &v7[3 * dword_101836038[i]];
    v20 = *v19;
    v21 = v19[1];
    if (v20 == v21)
    {
      goto LABEL_20;
    }

    v22 = 0;
    do
    {
      v22 |= *(v20 + 16);
      v20 += 24;
    }

    while (v20 != v21);
    if ((v22 & 1) == 0)
    {
LABEL_20:
      (*(*a1 + 672))(a1);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v17 |= v23;
  }

  if ((v17 & 1) == 0)
  {
    v24 = a1[55];
    a1[55] = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }
}

uint64_t sub_100741200(uint64_t a1, char a2, char a3, const std::string *a4, std::string *__str)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  std::string::operator=((a1 + 40), __str);
  *(a1 + 2) = *a1;
  std::string::operator=((a1 + 8), a4);
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v8 = *(*result + 8);

    return v8();
  }

  return result;
}

void sub_100741294(uint64_t a1, uint64_t a2, uint64_t a3, NSObject **a4, Registry **a5)
{
  v10 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  Registry::getTimerService(&v21, *a5);
  v11 = v21;
  sub_10000501C(__p, "apnFallback");
  v12 = *a4;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1007414A8;
  aBlock[3] = &unk_101E77F78;
  aBlock[4] = a3;
  v17 = _Block_copy(aBlock);
  sub_100E7CA80(v11, __p, 0, 1000000 * a2, &object, &v17);
  v13 = v23;
  v23 = 0;
  v14 = *(a1 + 32);
  *(a1 + 32) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v23;
    v23 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
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

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }
}

void sub_100741458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 64);
  if (v24)
  {
    sub_100004A34(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007414B8(PersonalitySpecificImpl *a1, BOOL a2, BOOL a3, uint64_t a4, void **a5)
{
  v10 = *(a1 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = asStringBool(a2);
    v12 = asStringBool(a3);
    v13 = a5;
    if (*(a5 + 23) < 0)
    {
      v13 = *a5;
    }

    *buf = 136316162;
    v17 = "reportIPv6APNFallbackAWDMetrics";
    v18 = 2080;
    v19 = v11;
    v20 = 2080;
    v21 = v12;
    v22 = 2048;
    v23 = a4;
    v24 = 2080;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: Reporting IPv6APNFallback metrics: fallbackAPN %s, due to fallback %s, lifetime %lu, app %s", buf, 0x34u);
  }

  PersonalitySpecificImpl::simSlot(a1);
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, a5[1]);
  }

  else
  {
    *__p = *a5;
    v15 = a5[2];
  }

  sub_10079F668();
}

void sub_10074167C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007416A0(uint64_t a1, uint64_t a2, int a3)
{
  valid = validContextType();
  v7 = *(a1 + 64);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (valid)
  {
    if (v8)
    {
      v9 = asString();
      sub_100741BB8(a1, a2);
      v10 = asString();
      v11 = asStringBool(*(a1 + 16 * a2 + 368));
      v12 = asStringBool(*(a1 + 664));
      v13 = (*(*a1 + 136))(a1, a2, 0, 0);
      v14 = asStringBool(v13 & 1);
      v15 = asStringBool(*(a1 + a2 + 240));
      v16 = asStringBool(*(a1 + 666));
      *buf = 136316930;
      v30 = "adjustDataSettingsAPNFallback";
      v31 = 2080;
      v32 = v9;
      v33 = 2080;
      v34 = v10;
      v35 = 2080;
      v36 = v11;
      v37 = 2080;
      v38 = v12;
      v39 = 2080;
      v40 = v14;
      v41 = 2080;
      v42 = v15;
      v43 = 2080;
      v44 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: newState = %s; old state = %s; startTime = %s; isSet = %s; internetMask = %s; ipv6only = %s; tentative = %s", buf, 0x52u);
    }

    if (!a2 && sub_100741BB8(a1, 0) != a3)
    {
      if (a3)
      {
        if (a3 == 3)
        {
          v17 = time(0);
          if ((*(a1 + 368) & 1) == 0)
          {
            *(a1 + 368) = 1;
          }

          *(a1 + 360) = v17;
        }
      }

      else
      {
        if (*(a1 + 368) == 1)
        {
          v18 = time(0) - *(a1 + 360);
          v19 = *(a1 + 64);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v30 = "adjustDataSettingsAPNFallback";
            v31 = 2048;
            v32 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: settings lifetime: %lu", buf, 0x16u);
          }

          if (*(a1 + 368) == 1)
          {
            *(a1 + 368) = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        if ((*(a1 + 664) & 1) == 0 && ((*(*a1 + 136))(a1, 0, 0, 0) & 1) != 0 && *(a1 + 240) == 1)
        {
          sub_10000501C(__p, "");
          sub_1007414B8(a1, 0, 0, v18, __p);
        }

        if (*(a1 + 664) == 1)
        {
          v20 = *(a1 + 666);
          v21 = *(a1 + 64);
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (v20 == 1)
          {
            if (v22)
            {
              v23 = asString();
              *buf = 136315394;
              v30 = "adjustDataSettingsAPNFallback";
              v31 = 2080;
              v32 = v23;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: fAPNFallbackState %s set firm", buf, 0x16u);
            }

            *(a1 + 666) = 0;
            if (*(a1 + 727) < 0)
            {
              sub_100005F2C(__dst, *(a1 + 704), *(a1 + 712));
            }

            else
            {
              *__dst = *(a1 + 704);
              v27 = *(a1 + 720);
            }

            sub_1007414B8(a1, 0, 1, v18, __dst);
          }

          if (v22)
          {
            v24 = asString();
            *buf = 136315394;
            v30 = "adjustDataSettingsAPNFallback";
            v31 = 2080;
            v32 = v24;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: fAPNFallbackState %s reset after deactivation", buf, 0x16u);
          }

          sub_100741C98(a1 + 664);
          sub_10000501C(v25, "");
          sub_1007414B8(a1, 1, 0, v18, v25);
        }
      }
    }
  }

  else if (v8)
  {
    *buf = 136315394;
    v30 = "adjustDataSettingsAPNFallback";
    v31 = 2080;
    v32 = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
  }
}

void sub_100741B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100741BB8(uint64_t a1, int a2)
{
  if (validContextType())
  {
    return *(a1 + 4 * a2 + 232);
  }

  v5 = *(a1 + 64);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v6)
  {
    v7 = 136315394;
    v8 = "getDataSettingsState";
    v9 = 2080;
    v10 = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v7, 0x16u);
    return 0;
  }

  return result;
}

void sub_100741C98(uint64_t a1)
{
  sub_10000501C(&v3, "");
  sub_10000501C(&__p, "");
  sub_100741200(a1, 0, 0, &v3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_100741D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100741D4C(void *a1, uint64_t a2, int a3)
{
  if (validContextType())
  {
    v6 = *(a1 + a2 + 58);
    v7 = v6 != a3;
    v8 = a1[14];
    if (v8)
    {
      v9 = v6 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      (*(*v8 + 352))(v8, 0);
    }

    v10 = a1[8];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "setDataSettingsState";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      v25 = 2080;
      v26 = asString();
      v27 = 2080;
      v28 = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s to %s (for %s)", buf, 0x2Au);
    }

    sub_1007416A0(a1, a2, a3);
    *(a1 + a2 + 58) = a3;
    switch(a3)
    {
      case 3:
        if (v6 != 3)
        {
          sub_100742998(a1);
        }

        sub_100743064(a1, 1);
        break;
      case 2:
        if (v6 != 2)
        {
          sub_100742294(a1, a2);
        }

        v19 = a1[8];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = asString();
          *buf = 136315138;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I fCurrentActivationStart set for %s (initial)", buf, 0xCu);
        }

        break;
      case 0:
        if (v6)
        {
          if (validContextType())
          {
            v11 = &a1[2 * a2];
            if (*(v11 + 768) == 1)
            {
              if (validContextType() && *(v11 + 768) == 1)
              {
                *(v11 + 768) = 0;
              }

              v12 = a1[8];
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = asString();
                *buf = 136315138;
                *&buf[4] = v13;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I fCurrentActivationStart reset for %s", buf, 0xCu);
              }
            }
          }

          *&buf[8] = 0;
          *buf = 0x1FFFFFFFFLL;
          otherContextType();
          v14 = sub_1007421F0(a1);
          (*(*a1 + 72))(a1, 0, a2, v14 | 0x100, 0, buf);
        }

        v15 = a1[14];
        if (v15)
        {
          sub_100004AA0(buf, a1 + 4);
          if (*buf)
          {
            v16 = *buf + 24;
          }

          else
          {
            v16 = 0;
          }

          v22 = v16;
          v23 = *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          v17 = (*(*v15 + 368))(v15, &v22);
          if (v23)
          {
            sub_100004A34(v23);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          if (v17)
          {
            (*(*a1[14] + 296))(a1[14], a2);
          }
        }

        (*(*a1 + 688))(a1, "settings is idle", 0, 0);
        break;
    }
  }

  else
  {
    v18 = a1[8];
    v7 = 0;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "setDataSettingsState";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
      return 0;
    }
  }

  return v7;
}

void sub_1007421C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t sub_1007421F0(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2 || ((*(*v2 + 80))(v2) & 1) != 0)
  {
    return 0;
  }

  v4 = *(**(a1 + 112) + 320);

  return v4();
}

void sub_100742294(uint64_t a1, int a2)
{
  if (validContextType())
  {
    v4 = sub_10075ABA4(a1);
    v5 = a1 + 16 * a2;
    if ((*(v5 + 736) & 1) == 0)
    {
      *(v5 + 736) = 1;
    }

    *(v5 + 728) = v4;
    v6 = a1 + 16 * a2;
    *(v6 + 760) = v4;
    *(v6 + 768) = *(v5 + 736);
    ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
    __t[0].__d_.__rep_ = v10;
    v14 = sub_100009510(&v8[1].__m_.__sig, __t);
    if (!v14)
    {
      std::mutex::unlock(v8);
      return;
    }

    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      sub_100004A34(v15);
      if (!v16)
      {
        return;
      }
    }

    else
    {
      std::mutex::unlock(v8);
      if (!v16)
      {
        return;
      }
    }

    __t[0] = std::chrono::system_clock::now();
    std::chrono::system_clock::to_time_t(__t);
    operator new();
  }
}

void sub_100742850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, const void *a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  __cxa_guard_abort(&qword_101FBAB18);
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a29);
  operator delete(v37);
  _Unwind_Resume(a1);
}

void sub_100742998(uint64_t a1)
{
  if (validContextType())
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 72));
    v3 = ServiceMap;
    if (v4 < 0)
    {
      v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v6 = 5381;
      do
      {
        v4 = v6;
        v7 = *v5++;
        v6 = (33 * v6) ^ v7;
      }

      while (v7);
    }

    std::mutex::lock(ServiceMap);
    __t[0].__d_.__rep_ = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, __t);
    if (!v8)
    {
      std::mutex::unlock(v3);
      return;
    }

    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      sub_100004A34(v9);
      if (!v10)
      {
        return;
      }
    }

    else
    {
      std::mutex::unlock(v3);
      if (!v10)
      {
        return;
      }
    }

    __t[0] = std::chrono::system_clock::now();
    v11 = std::chrono::system_clock::to_time_t(__t);
    operator new();
  }
}

void sub_100742F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, const void *a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  __cxa_guard_abort(&qword_101FBAB38);
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a29);
  operator delete(v37);
  _Unwind_Resume(a1);
}

void sub_100743064(uint64_t a1, int a2)
{
  if (a2)
  {
    *(a1 + 456) = 0;
    *(a1 + 464) = "";
    *(a1 + 472) = "";
    *(a1 + 480) = 0;
    *(a1 + 484) = 0;
    *(a1 + 488) = 0;
    *(a1 + 496) = 0;
    v3 = *(a1 + 504);
    *(a1 + 504) = 0;
    if (v3)
    {
      sub_100004A34(v3);
    }

    *(a1 + 512) = 0;
    *(a1 + 520) = "";
    *(a1 + 528) = "";
    *(a1 + 536) = 0;
    *(a1 + 540) = 0;
    *(a1 + 544) = 1;
    v4 = *(a1 + 560);
    *(a1 + 552) = 0u;
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  *(a1 + 448) = 0;
}

uint64_t sub_1007430F0(void *a1, uint64_t a2)
{
  if (validContextType())
  {
    v4 = (*(*a1 + 1008))(a1, a2);
    v5 = &a1[3 * a2];
    v6 = v5[15];
    v7 = v5[16];
    while (v6 != v7)
    {
      if (*(v6 + 16) == 1)
      {
        v4 |= (*(**(v6 + 8) + 32))(*(v6 + 8), a2);
      }

      v6 += 24;
    }
  }

  else
  {
    v8 = a1[8];
    LOBYTE(v4) = 0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "hasDataAssertions";
      v12 = 2080;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v10, 0x16u);
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

uint64_t sub_10074326C(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 112))
  {
    v6 = 0;
    v7 = a1 + 120;
    do
    {
      v8 = dword_101836038[v6];
      if ((anyContextType() & 1) != 0 || v8 == a2)
      {
        v9 = (v7 + 24 * v8);
        v11 = *v9;
        v10 = v9[1];
        while (v11 != v10)
        {
          if (*(v11 + 8) == a3 && *(v11 + 16) == 1)
          {
            v12 = *(a1 + 112);
            sub_100004AA0(&v16, (a1 + 32));
            if (v16)
            {
              v13 = v16 + 24;
            }

            else
            {
              v13 = 0;
            }

            v18 = v13;
            v19 = v17;
            v16 = 0;
            v17 = 0;
            v14 = (*(*v12 + 72))(v12, v8, &v18);
            if (v19)
            {
              sub_100004A34(v19);
            }

            if (v17)
            {
              sub_100004A34(v17);
            }

            if (v14)
            {
              return 1;
            }
          }

          v11 += 24;
        }
      }

      ++v6;
    }

    while (v6 != 2);
  }

  return 0;
}

void sub_1007433B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007433E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  if (!v3)
  {
    return 0x1FFFFFFFFLL;
  }

  sub_100004AA0(&v9, (a1 + 32));
  if (v9)
  {
    v6 = v9 + 24;
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  v12 = v10;
  v9 = 0;
  v10 = 0;
  v7 = (*(*v3 + 24))(v3, a2, &v11, a3);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return v7;
}

void sub_1007434B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007434F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_100004AA0(&v5, (a1 + 32));
    if (v5)
    {
      v4 = v5 + 24;
    }

    else
    {
      v4 = 0;
    }

    v7 = v4;
    v8 = v6;
    v5 = 0;
    v6 = 0;
    (*(*v2 + 56))(v2, &v7, a2);
    if (v8)
    {
      sub_100004A34(v8);
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }
}

void sub_100743594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007435C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "postDataSettingsGrabRejected";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    *&buf[22] = 1024;
    v28 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: ct=%s, errCode=%d", buf, 0x1Cu);
  }

  if (validContextType())
  {
    (*(*a1 + 1240))(a1, a2, 0);
    v7 = otherContextType();
    memset(buf, 0, sizeof(buf));
    sub_10008A108(buf, a1[3 * a2 + 15], a1[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * a2 + 16] - a1[3 * a2 + 15]) >> 3));
    v8 = sub_1007421F0(a1);
    v9 = a1[8];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        LODWORD(v26) = 136315138;
        *(&v26 + 4) = "postDataSettingsGrabRejected";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: In handover: switch observers to the remaining context", &v26, 0xCu);
      }

      v11 = *buf;
      v12 = *&buf[8];
      while (v11 != v12)
      {
        if (*(v11 + 16) == 1)
        {
          sub_100740A20(a1, v7, *(v11 + 8), 1);
        }

        v11 += 24;
      }
    }

    else
    {
      if (v10)
      {
        LODWORD(v26) = 136315138;
        *(&v26 + 4) = "postDataSettingsGrabRejected";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: Not in handover:", &v26, 0xCu);
      }

      (*(*a1 + 856))(a1, a2, a3, 0);
      v15 = *buf;
      v16 = *&buf[8];
      while (v15 != v16)
      {
        if (*(v15 + 16) == 1)
        {
          v17 = *(v15 + 8);
          sub_100004AA0(&v26, a1 + 4);
          if (v26)
          {
            v18 = v26 + 24;
          }

          else
          {
            v18 = 0;
          }

          v24 = v18;
          v25 = *(&v26 + 1);
          v26 = 0uLL;
          (*(*v17 + 56))(v17, a2, &v24, a3, 0, 0);
          if (v25)
          {
            sub_100004A34(v25);
          }

          if (*(&v26 + 1))
          {
            sub_100004A34(*(&v26 + 1));
          }

          v19 = *(v15 + 8);
          sub_100004AA0(&v26, a1 + 4);
          if (v26)
          {
            v20 = v26 + 24;
          }

          else
          {
            v20 = 0;
          }

          v22 = v20;
          v23 = *(&v26 + 1);
          v26 = 0uLL;
          v21 = (*(*v19 + 64))(v19, a2, &v22);
          if (v23)
          {
            sub_100004A34(v23);
          }

          if (*(&v26 + 1))
          {
            sub_100004A34(*(&v26 + 1));
          }

          if (v21)
          {
            sub_100740A20(a1, a2, *(v15 + 8), 0);
          }
        }

        v15 += 24;
      }
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    v13 = a1[8];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = asString();
      *buf = 136315394;
      *&buf[4] = "postDataSettingsGrabRejected";
      *&buf[12] = 2080;
      *&buf[14] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }
}

void sub_1007439D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100743A34(uint64_t a1, int a2, char a3, uint64_t *a4)
{
  if (validContextType())
  {
    for (i = *a4; i != a4[1]; i += 13)
    {
      if (*(i + 2))
      {
        v33 = 0;
        ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
              goto LABEL_16;
            }

LABEL_20:
            v23 = PersonalitySpecificImpl::simSlot(a1);
            v22 = (*(*v20 + 992))(v20, v23, &v33);
            if ((v21 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v20 = 0;
        }

        std::mutex::unlock(v13);
        v19 = 0;
        v21 = 1;
        if (v20)
        {
          goto LABEL_20;
        }

LABEL_16:
        v22 = 1;
        if ((v21 & 1) == 0)
        {
LABEL_21:
          sub_100004A34(v19);
        }

LABEL_22:
        if ((v22 & 1) == 0)
        {
          v29 = v33;
          v30 = *(a1 + 64);
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          if (v29 == 1)
          {
            if (v31)
            {
              *buf = 136315138;
              *&buf[4] = "handleBeforeActivate";
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#N %s: Internet is not allowed by data plan manager (1)", buf, 0xCu);
            }

            v11 = 4294967294;
          }

          else
          {
            if (v31)
            {
              *buf = 136315138;
              *&buf[4] = "handleBeforeActivate";
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#N %s: Internet is not allowed by data plan manager (2)", buf, 0xCu);
            }

            v11 = 0xFFFFFFFFLL;
          }

          v10 = 0x1200000000;
          return v11 | v10;
        }

        break;
      }
    }

    if (a3)
    {
      goto LABEL_29;
    }

    v24 = *a4;
    v25 = a4[1];
    if (*a4 != v25)
    {
      while ((*(v24 + 1) & 1) != 0)
      {
        v24 += 13;
        if (v24 == v25)
        {
          goto LABEL_29;
        }
      }
    }

    if (*(*(a1 + 264) + 144) == 4)
    {
LABEL_29:
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *(a1 + 24 * a2 + 120), *(a1 + 24 * a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * a2 + 128) - *(a1 + 24 * a2 + 120)) >> 3));
      v26 = *buf;
      v27 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          if (*(v26 + 16) == 1)
          {
            (*(**(v26 + 8) + 88))(*(v26 + 8));
          }

          v26 += 24;
        }

        while (v26 != v27);
        v26 = *buf;
      }

      if (v26)
      {
        *&buf[8] = v26;
        operator delete(v26);
      }

      v10 = 0;
      v11 = 0;
      return v11 | v10;
    }

    v32 = *(a1 + 64);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleBeforeActivate";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#N %s: Cannot activate over not provisioned baseband", buf, 0xCu);
    }

    v10 = 0x1200000000;
  }

  else
  {
    v9 = *(a1 + 64);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "handleBeforeActivate";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }

    v10 = &_mh_execute_header;
  }

  v11 = 0xFFFFFFFFLL;
  return v11 | v10;
}

void sub_100743E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100743E88(uint64_t a1, const DataAPNSettingsObserver *a2, int *a3)
{
  if (a2)
  {
    v5 = 0;
    v6 = a1 + 120;
    while (1)
    {
      v7 = dword_101836038[v5];
      v19 = 0;
      v20 = 0;
      v21 = 0;
      sub_10008A108(&v19, *(v6 + 24 * v7), *(v6 + 24 * v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 24 * v7 + 8) - *(v6 + 24 * v7)) >> 3));
      v8 = v19;
      v9 = v20;
      if (v19 == v20)
      {
        v12 = 1;
        if (!v19)
        {
          goto LABEL_14;
        }
      }

      else
      {
        while (1)
        {
          v10 = v8[1];
          if (v10 != a2)
          {
            (*(*v10 + 264))(v10);
            if ((v11 & 0x100) != 0)
            {
              break;
            }
          }

          v8 += 3;
          if (v8 == v9)
          {
            v12 = 1;
            goto LABEL_12;
          }
        }

        *a3 = v7;
        v13 = *(a1 + 64);
        v12 = 0;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = asString(a2);
          v15 = asString(v8[1]);
          *buf = 136315650;
          v23 = "observerFits";
          v24 = 2080;
          v25 = v14;
          v26 = 2080;
          v27 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: Connection %s does not fit Settings that have an exclusive connection %s", buf, 0x20u);
          v12 = 0;
        }

LABEL_12:
        v8 = v19;
        if (!v19)
        {
          goto LABEL_14;
        }
      }

      v20 = v8;
      operator delete(v8);
LABEL_14:
      if (++v5 == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = v12;
      }

      if ((v16 & 1) == 0)
      {
        return v12;
      }
    }
  }

  return 1;
}

void sub_100744074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074409C(uint64_t a1, const DataAPNSettingsObserver *a2, __int128 *a3, uint64_t *a4)
{
  *buf = 0;
  if ((sub_100743E88(a1, a2, buf) & 1) == 0)
  {
    sub_1007449D0(a1, a2, *buf, 0xFFFFFFF7FFFFFFFFLL, 0);
    return;
  }

  v5 = *(a1 + 112);
  if (v5 && (*(*v5 + 344))(v5))
  {
    v6 = *(a1 + 64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "activateDataSettings";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: we are in the middle of a retry scheduled activation, drop that activation in favor of this newer one", buf, 0xCu);
    }

    (*(**(a1 + 112) + 352))(*(a1 + 112), 0);
  }

  v75 = 2;
  v63 = sub_1000C2A4C(a1, a2, 0);
  v7 = 0;
  v8 = 2;
  do
  {
    v9 = dword_101836038[v7];
    v10 = (a1 + 120 + 24 * v9);
    v11 = *v10;
    v12 = v10[1];
    while (v11 != v12)
    {
      v13 = *(v11 + 8);
      if (v13 && sub_10008F814(a1, v9, v13, 1) && sub_10008F964(a1, v9, *(v11 + 8)))
      {
        v14 = *(a1 + 64);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = asString();
          v16 = asString(*(v11 + 8));
          v17 = asString();
          *buf = 136315906;
          *&buf[4] = "activateDataSettings";
          v77 = 2080;
          v78 = v15;
          v79 = 2080;
          v80 = v16;
          v81 = 2080;
          v82 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N %s: Already active APN on %s (for observer %s); choosing that context type when the preferred context type is %s", buf, 0x2Au);
        }

        v8 = v9;
        break;
      }

      v11 += 24;
    }

    valid = validContextType();
    if (++v7 == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = valid;
    }
  }

  while (v19 != 1);
  v75 = v8;
  if ((validContextType() & 1) == 0)
  {
    v8 = v63;
    v75 = v63;
  }

  if (validContextType())
  {
    v20 = sub_10008F814(a1, v8, a2, 1);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 64);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 24))
    {
      v22 = "handOver ";
    }

    else
    {
      v22 = "";
    }

    v23 = asString();
    v24 = asStringBool(v20);
    *buf = 136315906;
    *&buf[4] = "activateDataSettings";
    v77 = 2080;
    v78 = v22;
    v79 = 2080;
    v80 = v23;
    v81 = 2080;
    v82 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: initially requested %s, for ct=%s, valid = %s", buf, 0x2Au);
  }

  if (!v20 || (sub_100740A20(a1, v8, a2, 1), !sub_10008F964(a1, v8, a2)))
  {
    sub_1007449D0(a1, a2, v8, 0xFFFFFFF7FFFFFFFFLL, 0);
    return;
  }

  v25 = *(a1 + 64);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a2 + 192))(a2);
    v26 = asString();
    v27 = *(a3 + 1);
    v28 = asString();
    *buf = 136315650;
    *&buf[4] = v26;
    v77 = 2080;
    v78 = v27;
    v79 = 2080;
    v80 = v28;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I activate service: %s, reason: %s, context type %s", buf, 0x20u);
  }

  v74[0] = 0;
  v74[1] = 0;
  CIPFamily::CIPFamily(v74);
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v30 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  *buf = v31;
  v35 = sub_100009510(&v30[1].__m_.__sig, buf);
  v36 = a3;
  if (!v35)
  {
    v38 = 0;
LABEL_45:
    std::mutex::unlock(v30);
    v37 = 0;
    v39 = 1;
    if (!v38)
    {
      goto LABEL_42;
    }

LABEL_46:
    v43 = PersonalitySpecificImpl::simSlot(a1);
    v41 = (*(*v38 + 768))(v38, v43);
    v44 = PersonalitySpecificImpl::simSlot(a1);
    v40 = (*(*v38 + 1040))(v38, v44);
    v45 = PersonalitySpecificImpl::simSlot(a1);
    v42 = (*(*v38 + 1072))(v38, v45);
    goto LABEL_47;
  }

  v38 = v35[3];
  v37 = v35[4];
  if (!v37)
  {
    goto LABEL_45;
  }

  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v30);
  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = a3;
  sub_100004A34(v37);
  v39 = 0;
  if (v38)
  {
    goto LABEL_46;
  }

LABEL_42:
  v40 = 0;
  v41 = 0;
  v42 = 1;
LABEL_47:
  v46 = *(v36 + 24);
  if (v8 == 1)
  {
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v47 = v42;
  }

  if (v8 == 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = v41;
  }

  if (v8 == 1)
  {
    v49 = 14;
  }

  else
  {
    v49 = v40;
  }

  if (sub_100744C1C(a1, v8, v74, v49, v48, v47, v46 & 1))
  {
    v50 = v36[1];
    v68 = *v36;
    v69[0] = v50;
    *(v69 + 10) = *(v36 + 26);
    if (*(v36 + 71) < 0)
    {
      sub_100005F2C(&v70, *(v36 + 6), *(v36 + 7));
    }

    else
    {
      v70 = v36[3];
      v71 = *(v36 + 8);
    }

    v72 = *(v36 + 72);
    v66 = 0;
    v67 = 0;
    __p = 0;
    sub_100090CF8(&__p, *a4, a4[1], 0x4EC4EC4EC4EC4EC5 * (a4[1] - *a4));
    v55 = sub_100745590(a1, v74, a2, &v75, 1, &v68, &__p);
    v53 = v55;
    v54 = HIDWORD(v55);
    v52 = v56;
    if (__p)
    {
      v66 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }
  }

  else
  {
    v51 = *(a1 + 64);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "activateDataSettings";
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %s: DataSettings does not want us to proceed with the IP family, bailing", buf, 0xCu);
      v51 = *(a1 + 64);
    }

    v73 = 0;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "activateDataSettings";
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %s: throttling the activation on validateIPFamily failure", buf, 0xCu);
    }

    (*(*a1 + 800))(a1, v8, 0, &v73);
    v52 = 0;
    v53 = -1;
    v54 = 4294967293;
  }

  v57 = *(a1 + 64);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a2 + 192))(a2);
    v58 = asString();
    v59 = v75;
    v60 = asString();
    *buf = 136315650;
    *&buf[4] = v58;
    v77 = 2080;
    v78 = v60;
    v79 = 1024;
    LODWORD(v80) = v53;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I activate service: %s, ct %s, result %d", buf, 0x1Cu);
  }

  else
  {
    v59 = v75;
  }

  sub_1007449D0(a1, a2, v59, v53 | (v54 << 32), v52);
  if ((v39 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  CIPFamily::~CIPFamily(v74);
}

void sub_10074494C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33)
{
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  CIPFamily::~CIPFamily(&a33);
  _Unwind_Resume(a1);
}

void sub_1007449D0(void *a1, const DataAPNSettingsObserver *a2, int a3, uint64_t a4, unint64_t a5)
{
  v9 = a1[8];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "handleDataActivateResult_Sync";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    *&buf[22] = 1024;
    v20 = a4;
    v21 = 2080;
    v22 = asStringBool(a2 != 0);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: (impl): cct=%s, result=%d, observer=%s", buf, 0x26u);
  }

  v10 = 0;
  v11 = a5;
  do
  {
    v12 = dword_101836038[v10];
    valid = validContextType();
    if (v12 == a3)
    {
      v14 = 0;
    }

    else
    {
      v14 = valid;
    }

    if ((v14 & 1) == 0)
    {
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, a1[3 * v12 + 15], a1[3 * v12 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * v12 + 16] - a1[3 * v12 + 15]) >> 3));
      v15 = *buf;
      v16 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          v17 = *(v15 + 8);
          if (v17 == a2)
          {
            if ((*(v15 + 16) & 1) == 0)
            {
              sub_100740A20(a1, v12, a2, 1);
              v17 = *(v15 + 8);
            }

            a5 = a5 & 0xFFFFFFFF00000000 | v11;
            (*(*v17 + 112))(v17, a4, a5);
          }

          v15 += 24;
        }

        while (v15 != v16);
        v15 = *buf;
      }

      if (v15)
      {
        *&buf[8] = v15;
        operator delete(v15);
      }

      if (a4 > 0xFFFFFFFD)
      {
        sub_10075752C(a1, a2, v12);
      }
    }

    ++v10;
  }

  while (v10 != 2);
}

uint64_t sub_100744C1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, BOOL a5, BOOL a6, _BOOL4 a7)
{
  if (validContextType())
  {
    *(a3 + 8) = 3;
    *(a3 + 12) = 0;
    v53[0] = 0;
    v53[1] = 0;
    CIPFamily::CIPFamily(v53, a3);
    BOOLean = 0;
    *buf = CFPreferencesCopyAppValue(@"DualIPBringUp", @"com.apple.commcenter");
    sub_10017A3BC(&BOOLean, buf);
    if (BOOLean && CFBooleanGetValue(BOOLean))
    {
      v14 = *(a1 + 64);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "validateIPFamily";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: The Key DualIPBringUp found and TRUE bringing up both IPv4 and IPv6", buf, 0xCu);
      }

      *(a1 + a2 + 240) = 0;
    }

    else
    {
      v17 = sub_100747D7C(a1, a2);
      v18 = sub_100747E14(a1, a2, a4);
      sub_1000C558C(a1, a2, buf);
      CIPFamily::operator=();
      CIPFamily::~CIPFamily(buf);
      *(a1 + a2 + 240) = v17 ^ 1;
      v19 = *(a3 + 8);
      if (!(((v19 & 1) == 0) | v17 & 1))
      {
        v20 = *(a1 + 64);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "validateIPFamily";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: Trying to activate kDataProtocolFamilyIPv4 but IPv4 is not allowed", buf, 0xCu);
          v19 = *(a3 + 8);
        }

        v19 &= ~1u;
        *(a3 + 8) = v19;
        *(a3 + 12) = 0;
      }

      if ((v19 & 2) != 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = 1;
      }

      if ((v21 & 1) == 0)
      {
        v22 = *(a1 + 64);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "validateIPFamily";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: Trying to activate kDataProtocolFamilyIPv6 but IPv6 is not allowed", buf, 0xCu);
          v19 = *(a3 + 8);
        }

        *(a3 + 8) = v19 & 0xFFFFFFFD;
        *(a3 + 12) = 0;
      }

      if (CIPFamily::operator!())
      {
        isDefault = CIPFamily::isDefault(v53);
        if (isDefault && (*(a1 + a2 + 346) & 1) == 0 && *(a1 + a2 + 344) == 1 && (DataUtils::supportDualIPAPNDefault(isDefault) & 1) == 0)
        {
          v27 = *(a1 + 64);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "validateIPFamily";
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: Special case: APN with default IPv4 family is trying to activate in IPv6-only network", buf, 0xCu);
          }

          v28 = 2;
        }

        else
        {
          v24 = CIPFamily::isDefault(v53);
          if (!v24 || *(a1 + a2 + 346) != 1 || (*(a1 + a2 + 344) & 1) != 0 || (DataUtils::supportDualIPAPNDefault(v24) & 1) != 0)
          {
            v25 = *(a1 + 64);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              CIPFamily::asString(buf, v53);
              v26 = v60[9] >= 0 ? buf : *buf;
              *v54 = 136315394;
              *&v54[4] = "validateIPFamily";
              v55 = 2080;
              v56 = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: No protocol available - validation failed (1); allowedIPFamily = %s", v54, 0x16u);
              if ((v60[9] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            goto LABEL_60;
          }

          v29 = *(a1 + 64);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "validateIPFamily";
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: Special case: APN with default IPv6 family is trying to activate in IPv4-only network", buf, 0xCu);
          }

          v28 = 1;
        }

        *(a3 + 8) = v28;
        *(a3 + 12) = 0;
        CIPFamily::operator=();
        CIPFamily::setDefault(v53);
      }
    }

    v30 = PersonalitySpecificImpl::simSlot(a1);
    if (alwaysUseIpv4v6((a1 + 72), v30))
    {
      v31 = *(a1 + 64);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "validateIPFamily";
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s: The Key alwaysUseIpv4v6 found and TRUE bringing up both IPv4 and IPv6", buf, 0xCu);
      }

      *(a3 + 8) = 3;
      *(a3 + 12) = 0;
      CIPFamily::operator=();
    }

    v32 = *(a3 + 8);
    if ((v32 & 1) != 0 && *(a1 + a2 + 344) == 1)
    {
      v33 = *(a1 + 64);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "validateIPFamily";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s: Trying to activate kDataProtocolFamilyIPv4 but IPv4 is not allowed", buf, 0xCu);
        v32 = *(a3 + 8);
      }

      v32 &= ~1u;
      *(a3 + 8) = v32;
      *(a3 + 12) = 0;
    }

    if ((v32 & 2) != 0 && *(a1 + a2 + 346) == 1)
    {
      v34 = *(a1 + 64);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "validateIPFamily";
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s: Trying to activate kDataProtocolFamilyIPv6 but IPv6 is blocked", buf, 0xCu);
        v32 = *(a3 + 8);
      }

      *(a3 + 8) = v32 & 0xFFFFFFFD;
      *(a3 + 12) = 0;
    }

    v35 = CIPFamily::operator!();
    if (v35)
    {
      v36 = *(a1 + 64);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "validateIPFamily";
        v37 = "#I %s: No protocol available - validation failed (2)";
LABEL_59:
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
      }
    }

    else
    {
      if (!a7)
      {
        goto LABEL_70;
      }

      v35 = *(a1 + 112);
      if (!v35)
      {
        goto LABEL_70;
      }

      v35 = (*(*v35 + 384))(v35);
      v38 = *(a3 + 8);
      v39 = v38 & v35;
      if ((v38 & v35) == 0 || v39 == v38)
      {
        goto LABEL_70;
      }

      v40 = *(a1 + 64);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "validateIPFamily";
        v59 = 1024;
        *v60 = v38;
        *&v60[4] = 1024;
        *&v60[6] = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s: useOnlyAlreadyActive: IP family adjusted from %d to %d", buf, 0x18u);
      }

      *(a3 + 8) = v39;
      *(a3 + 12) = 0;
      v35 = CIPFamily::operator!();
      if (!v35)
      {
LABEL_70:
        v41 = *(a3 + 8);
        if (v41 == *(DataUtils::defaultIPFamily(v35) + 8) && CIPFamily::isDefault(v53))
        {
          CIPFamily::setDefault(a3);
        }

        v42 = *(a1 + 64);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          CIPFamily::asString(v54, a3);
          if (v57 >= 0)
          {
            v43 = v54;
          }

          else
          {
            v43 = *v54;
          }

          v44 = __p;
          CIPFamily::asString(__p, v53);
          if (v51 < 0)
          {
            v44 = __p[0];
          }

          v45 = asString();
          v46 = asStringBool(a5);
          v47 = asStringBool(a6);
          v48 = asStringBool(a7);
          *buf = 136316674;
          *&buf[4] = "validateIPFamily";
          v59 = 2082;
          *v60 = v43;
          *&v60[8] = 2082;
          v61 = v44;
          v62 = 2080;
          v63 = v45;
          v64 = 2080;
          v65 = v46;
          v66 = 2080;
          v67 = v47;
          v68 = 2080;
          v69 = v48;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s: ipFamily = %{public}s, allowedIPFamily = %{public}s, currentMode=%s, isHomeCountry=%s, isRoaming=%s, useOnlyAlreadyActive=%s", buf, 0x48u);
          if (v51 < 0)
          {
            operator delete(__p[0]);
          }

          if (v57 < 0)
          {
            operator delete(*v54);
          }
        }

        v16 = 1;
        goto LABEL_84;
      }

      v36 = *(a1 + 64);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "validateIPFamily";
        v37 = "#I %s: No protocol available - validation failed (3)";
        goto LABEL_59;
      }
    }

LABEL_60:
    v16 = 0;
LABEL_84:
    sub_100045C8C(&BOOLean);
    CIPFamily::~CIPFamily(v53);
    return v16;
  }

  v15 = *(a1 + 64);
  v16 = 0;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "validateIPFamily";
    v59 = 2080;
    *v60 = asString();
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    return 0;
  }

  return v16;
}

void sub_100745508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  sub_100045C8C(&a15);
  CIPFamily::~CIPFamily(&a16);
  _Unwind_Resume(a1);
}

unint64_t sub_100745590(Registry **a1, unsigned int *a2, uint64_t a3, int *a4, int a5, uint64_t a6, uint64_t *a7)
{
  v13 = a1[14];
  if (v13 && (*(*v13 + 344))(v13))
  {
    v14 = a1[8];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "activateDataSettings";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: we are in the middle of a retry scheduled activation, drop that activation in favor of this newer one", buf, 0xCu);
    }

    (*(*a1[14] + 352))(a1[14], 0);
  }

  v15 = a1[8];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a6 + 24) ? "handOver " : "";
    v17 = asString();
    CIPFamily::asString(v86, a2);
    v18 = v87 >= 0 ? v86 : *v86;
    *buf = 136315906;
    *&buf[4] = "activateDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = v16;
    *&buf[22] = 2080;
    *&buf[24] = v17;
    LOWORD(v77) = 2082;
    *(&v77 + 2) = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: requested %sfor %s, family %{public}s", buf, 0x2Au);
    if (v87 < 0)
    {
      operator delete(*v86);
    }
  }

  if (((*(*a1 + 149))(a1, *a4) & 1) == 0)
  {
    v23 = a1[8];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "activateDataSettings";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: can not activate with current baseband activated state", buf, 0xCu);
    }

    v24 = 0xFFFFFFFDFFFFFFFFLL;
    goto LABEL_23;
  }

  v19 = *a4;
  v72 = 0;
  v73 = 0;
  __p = 0;
  sub_100090CF8(&__p, *a7, a7[1], 0x4EC4EC4EC4EC4EC5 * (a7[1] - *a7));
  v20 = sub_100743A34(a1, v19, 1, &__p);
  v22 = v21;
  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v74 = v20;
    LOBYTE(v75) = v22;
    *(&v75 + 1) = 0;
    HIBYTE(v75) = 0;
    return v74;
  }

  v26 = sub_100741BB8(a1, *a4);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      LOBYTE(v75) = 0;
      return 0;
    }

    if (v26 == 3)
    {
      v24 = 1;
      goto LABEL_23;
    }

LABEL_32:
    v24 = 0xFFFFFFF7FFFFFFFFLL;
    goto LABEL_23;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v24 = 2;
LABEL_23:
      v74 = v24;
      LOBYTE(v75) = 0;
      return v74;
    }

    goto LABEL_32;
  }

  if (a3)
  {
    v57 = (*(*a3 + 376))(a3);
    v27 = (*(*a3 + 24))(a3, 0);
  }

  else
  {
    v27 = 0;
    v57 = 999;
  }

  v28 = a1[14];
  if (!v28)
  {
    v38 = (*(*a1 + 17))(a1, 0, 1, 0);
    *buf = 0;
    *&buf[8] = 0;
    sub_10005D2A4(a1[9], buf);
    v39 = *buf;
    if (*buf)
    {
      v56 = v38;
      v40 = (*(*a1 + 28))(a1, v57);
      (*(*a1 + 2))(&v69, a1);
      a1[14] = (*(*v39 + 1112))(v39, v40, v27, &v69, v56 & 1);
      if (v70)
      {
        sub_100004A34(v70);
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v28 = a1[14];
    if (!v28)
    {
      v24 = 0x11FFFFFFFFLL;
      goto LABEL_23;
    }

    v41 = a1[8];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = (*(*v28 + 16))(v28);
      *buf = 136315394;
      *&buf[4] = "activateDataSettings";
      *&buf[12] = 1024;
      *&buf[14] = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) attached to PDP %d", buf, 0x12u);
      v28 = a1[14];
    }
  }

  v29 = a1[8];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = (*(*v28 + 16))(v28);
    *buf = 136315394;
    *&buf[4] = "activateDataSettings";
    *&buf[12] = 1024;
    *&buf[14] = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: using PDP %d", buf, 0x12u);
    v28 = a1[14];
  }

  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  memset(buf, 0, sizeof(buf));
  (*(*v28 + 328))(buf, v28);
  v31 = (*(*a1 + 118))(a1, *a4, v57);
  v33 = v32;
  v34 = v31 & 0xFFFFFFFF00000000;
  if ((v31 & 0x80000000) != 0)
  {
    if (v31 == -2)
    {
      v43 = a1[8];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *v86 = 136315138;
        *&v86[4] = "activateDataSettings";
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#E %s: !!! grabDataContext should not return kDataActivationResultFailedDoNotPost", v86, 0xCu);
      }

      v35 = v34 | 0xFFFFFFFE;
      goto LABEL_60;
    }

    if (v31 == -1)
    {
      v35 = v31 | 0xFFFFFFFFLL;
LABEL_60:
      v74 = v35;
      LOBYTE(v75) = v33;
LABEL_61:
      *(&v75 + 1) = 0;
      HIBYTE(v75) = 0;
      goto LABEL_62;
    }
  }

  else if (v31)
  {
    if (v31 == 2)
    {
      (*(*a1 + 155))(a1, *a4, 1);
      v36 = otherContextType();
      if (sub_100741BB8(a1, v36) == 1)
      {
        v37 = otherContextType();
        (*(*a1 + 155))(a1, v37, 0);
      }

      v35 = v34 | 2;
      goto LABEL_60;
    }
  }

  else
  {
    v31 = (*(*a1 + 153))(a1, *a4);
  }

  if (a1[14])
  {
    if (capabilities::ct::supports5G(v31))
    {
      v45 = a1[14];
      v46 = *a4;
      (*(*a1 + 2))(&v67, a1);
      (*(*v45 + 432))(v45, v46, &v67);
      if (v68)
      {
        sub_100004A34(v68);
      }
    }

    sub_1007476FC(a1);
    v75 = 0;
    v74 = 0x1FFFFFFFFLL;
    if (!(*(*a1 + 9))(a1, 1, *a4, *(a6 + 24) | 0x100, 0, &v74))
    {
      goto LABEL_62;
    }

    CIPFamily::operator=();
    v47 = a1[14];
    v48 = a2[2];
    v49 = *a4;
    (*(*a1 + 2))(&v65, a1);
    sub_10075B588(v62, a6);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    sub_100090CF8(&v59, *a7, a7[1], 0x4EC4EC4EC4EC4EC5 * (a7[1] - *a7));
    v50 = (*(*v47 + 256))(v47, v48, v49, &v65, v62, &v59);
    v52 = v51;
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v64 < 0)
    {
      operator delete(v63);
    }

    v53 = HIDWORD(v50);
    if (v66)
    {
      sub_100004A34(v66);
    }

    if (v50 < 0xFFFFFFFE)
    {
      if (v50)
      {
        if (v50 == 2)
        {
          v54 = a1[14];
          if (v54)
          {
            (*(*v54 + 336))(v54, buf);
          }

          LODWORD(v50) = 2;
        }

        goto LABEL_100;
      }

      (*(*a1 + 155))(a1, *a4, 2);
      goto LABEL_95;
    }

    if (a5)
    {
      *v86 = v50;
      v86[8] = v52;
      *&v86[9] = 0;
      v86[11] = 0;
      if (sub_1007478A0(a1, a2, a3, *a4, v86))
      {
        *a4 = otherContextType();
        LODWORD(v50) = *v86;
        LODWORD(v53) = *&v86[4];
        v52 = v86[8];
        if (*v86 < 0xFFFFFFFE)
        {
          if (!*v86)
          {
            (*(*a1 + 155))(a1);
LABEL_95:
            LODWORD(v50) = 0;
            goto LABEL_100;
          }

          if (*v86 != 2)
          {
            goto LABEL_100;
          }
        }

        v55 = a1[14];
        if (!v55)
        {
LABEL_100:
          v74 = v50 | (v53 << 32);
          LOBYTE(v75) = v52;
          goto LABEL_61;
        }
      }

      else
      {
        v55 = a1[14];
        if (!v55)
        {
          goto LABEL_100;
        }
      }
    }

    else
    {
      v55 = a1[14];
      if (!v55)
      {
        goto LABEL_100;
      }
    }

    (*(*v55 + 336))(v55, buf);
    goto LABEL_100;
  }

  v74 = 0x11FFFFFFFFLL;
  LOBYTE(v75) = 0;
LABEL_62:
  for (i = 0; i != -160; i -= 80)
  {
    if (*(&v84 + i + 15) < 0)
    {
      operator delete(*(&v83 + i + 8));
    }
  }

  return v74;
}

void sub_1007461FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  v61 = 0;
  while (1)
  {
    if (*(&a60 + v61) < 0)
    {
      operator delete(*(&a55 + v61));
    }

    v61 -= 80;
    if (v61 == -160)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_1007462DC(void *a1)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  (*(*a1 + 728))(&v28);
  if (!v30)
  {
    v13 = a1[8];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: remove rd: resources empty", buf, 2u);
    }

    v14 = 1;
    goto LABEL_56;
  }

  v2 = v28;
  if (v28 == &v29)
  {
    v4 = 0;
LABEL_43:
    v20 = a1[8];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E Update HO interface: remove rd: No IPSec Interface found, failed", buf, 2u);
    }

LABEL_45:
    v14 = 0;
    if (v4)
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v3 = 0;
  v4 = 0;
  v5 = kIPsecInterfaceSettingsResource;
  do
  {
    v7 = v2[4];
    v6 = v2[5];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v7 + 16))(v7) == v5)
    {
      if (!v8)
      {
        v21 = a1[8];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E Update HO interface: remove rd: resource object contains wrong data type, failed", buf, 2u);
          if (!v6)
          {
            goto LABEL_45;
          }
        }

        else if (!v6)
        {
          goto LABEL_45;
        }

        v9 = v4;
LABEL_59:
        sub_100004A34(v6);
LABEL_60:
        v14 = 0;
        v4 = v9;
        if (v9)
        {
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = v8[1];
      v9 = v8[2];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4)
      {
        sub_100004A34(v4);
      }

      if (!v3)
      {
        v22 = a1[8];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Update HO interface: remove rd: resource object contains empty interface, failed", buf, 2u);
        }

        if (v6)
        {
          sub_100004A34(v6);
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      if (v6)
      {
        sub_100004A34(v6);
        v4 = v9;
LABEL_19:
        sub_100004A34(v6);
        goto LABEL_20;
      }

      v4 = v9;
    }

    else if (v6)
    {
      goto LABEL_19;
    }

LABEL_20:
    v10 = v2[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v2[2];
        v12 = *v11 == v2;
        v2 = v11;
      }

      while (!v12);
    }

    v2 = v11;
  }

  while (v11 != &v29);
  if (!v3)
  {
    goto LABEL_43;
  }

  v15 = a1[8];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v3 + 128))(buf, v3);
    v16 = v27;
    v17 = *buf;
    (*(*v3 + 136))(__p, v3);
    v18 = buf;
    if (v16 < 0)
    {
      v18 = v17;
    }

    if (v25 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    *v31 = 136315394;
    v32 = v18;
    v33 = 2080;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: removeHOInterface: %s / %s", v31, 0x16u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 < 0)
    {
      operator delete(*buf);
    }
  }

  (*(*v3 + 120))(v3);
  v14 = 1;
  if (!v4)
  {
    goto LABEL_56;
  }

LABEL_55:
  sub_100004A34(v4);
LABEL_56:
  sub_1001178E4(&v28, v29);
  return v14;
}

void sub_10074676C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  sub_1001178E4(&a19, a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1007467C8(uint64_t a1, _BOOL4 a2, unsigned int a3, __int16 a4, _BOOL4 a5, uint64_t a6)
{
  if (((*(*a1 + 1080))(a1) & 1) == 0)
  {
    sub_1007462DC(a1);
    return 1;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  v80 = a2;
  if (!v18)
  {
    v20 = 0;
LABEL_11:
    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
  if (!v20)
  {
LABEL_15:
    sub_1007462DC(a1);
    v23 = 0;
    if (v21)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_12:
  v22 = PersonalitySpecificImpl::simSlot(a1);
  if (((*(*v20 + 1264))(v20, v22) & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = 1;
  if (v21)
  {
    goto LABEL_17;
  }

LABEL_16:
  sub_100004A34(v19);
LABEL_17:
  if (!v23)
  {
    return 1;
  }

  v78 = a5;
  v79 = a3;
  v24 = sub_1007421F0(a1);
  v25 = *(a1 + 64);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = asStringBool(v80);
    v27 = asString();
    v28 = asStringBool();
    v29 = asStringBool(v24);
    v30 = asStringBool(v78);
    *buf = 136316162;
    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = v27;
    *&buf[22] = 2080;
    v97 = v28;
    v98 = 2080;
    v99 = v29;
    v100 = 2080;
    v101 = v30;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: value=%s ct = %s handover = %s activatorHandover=%s completed = %s", buf, 0x34u);
  }

  if ((a4 & 0x100) == 0)
  {
    v31 = *(a1 + 64);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = asStringBool();
      *buf = 136315138;
      *&buf[4] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: update handover to %s", buf, 0xCu);
    }

    LOBYTE(a4) = v24;
  }

  v87 = 0;
  v88 = 0;
  v89 = 0;
  (*(*a1 + 728))(&v87, a1, 1);
  if (!v89)
  {
    v44 = *(a1 + 64);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: resources empty", buf, 2u);
    }

    v43 = 1;
    goto LABEL_154;
  }

  v33 = v87;
  if (v87 == &v88)
  {
    v81 = 0;
LABEL_70:
    v50 = *(a1 + 64);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 0;
    v51 = "#E Update HO interface: No IPSec Interface found, failed";
    goto LABEL_72;
  }

  v34 = 0;
  v81 = 0;
  v35 = kIPsecInterfaceSettingsResource;
  while (1)
  {
    v36 = v33[4];
    v37 = v33[5];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v36 + 16))(v36) != v35)
    {
      if (!v37)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (!v38)
    {
      v52 = *(a1 + 64);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#E Update HO interface: kIPsecInterfaceSettingsResource object contains wrong data type, failed", buf, 2u);
      }

      *a6 = 0x1FFFFFFFFLL;
      *(a6 + 8) = 0;
      if (v37)
      {
        sub_100004A34(v37);
      }

      v43 = 0;
      goto LABEL_151;
    }

    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = v38[1];
    v39 = v38[2];
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v81)
    {
      sub_100004A34(v81);
    }

    if (!v34)
    {
      break;
    }

    if (!v37)
    {
      v81 = v39;
      goto LABEL_43;
    }

    sub_100004A34(v37);
    v81 = v39;
LABEL_42:
    sub_100004A34(v37);
LABEL_43:
    v40 = v33[1];
    if (v40)
    {
      do
      {
        v41 = v40;
        v40 = *v40;
      }

      while (v40);
    }

    else
    {
      do
      {
        v41 = v33[2];
        v42 = *v41 == v33;
        v33 = v41;
      }

      while (!v42);
    }

    v33 = v41;
    if (v41 == &v88)
    {
      if (!v34)
      {
        goto LABEL_70;
      }

      if ((a4 & 1) == 0)
      {
        v45 = *(a1 + 64);
        if (v80)
        {
          if (!v78)
          {
            if (os_log_type_enabled(*(a1 + 64), OS_LOG_TYPE_DEFAULT))
            {
              (*(*v34 + 128))(buf, v34);
              v46 = buf[23];
              v47 = *buf;
              (*(*v34 + 136))(__dst, v34);
              v48 = buf;
              if (v46 < 0)
              {
                v48 = v47;
              }

              if (v103 >= 0)
              {
                v49 = __dst;
              }

              else
              {
                v49 = *__dst;
              }

              *v95 = 136315394;
              *&v95[4] = v48;
              *&v95[12] = 2080;
              *&v95[14] = v49;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: removeHOInterface (initial cleaning): %s / %s", v95, 0x16u);
              if (SHIBYTE(v103) < 0)
              {
                operator delete(*__dst);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            (*(*v34 + 120))(v34);
            v45 = *(a1 + 64);
          }

          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v74 = asStringBool(v78);
            *buf = 136315138;
            *&buf[4] = v74;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: createHOInterface (completed %s)", buf, 0xCu);
          }

          v75 = (*(*v34 + 104))(v34, *(a1 + 48));
          v50 = *(a1 + 64);
          v76 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
          if (v75)
          {
            if (v76)
            {
              (*(*v34 + 128))(buf, v34);
              v77 = buf[23] >= 0 ? buf : *buf;
              *__dst = 136315138;
              *&__dst[4] = v77;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: VirtualInterface created: %s", __dst, 0xCu);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            goto LABEL_95;
          }

          if (!v76)
          {
LABEL_73:
            v43 = 0;
            *a6 = 0x1FFFFFFFFLL;
            *(a6 + 8) = 0;
            goto LABEL_151;
          }

          *buf = 0;
          v51 = "#E Update HO interface: VirtualInterface create failed";
LABEL_72:
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 2u);
          goto LABEL_73;
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v34 + 128))(buf, v34);
          v55 = buf[23];
          v56 = *buf;
          (*(*v34 + 136))(__dst, v34);
          v57 = buf;
          if (v55 < 0)
          {
            v57 = v56;
          }

          if (v103 >= 0)
          {
            v58 = __dst;
          }

          else
          {
            v58 = *__dst;
          }

          *v95 = 136315394;
          *&v95[4] = v57;
          *&v95[12] = 2080;
          *&v95[14] = v58;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: removeHOInterface (interface shutdown): %s / %s", v95, 0x16u);
          if (SHIBYTE(v103) < 0)
          {
            operator delete(*__dst);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        (*(*v34 + 120))(v34);
      }

LABEL_95:
      if (!v78)
      {
LABEL_150:
        v43 = 1;
        goto LABEL_151;
      }

      memset(v95, 0, 24);
      sub_10009B690(a1, v79, 1, v95);
      v86 = 0;
      if (v95[23] < 0)
      {
        sub_100005F2C(__p, *v95, *&v95[8]);
      }

      else
      {
        *__p = *v95;
        v85 = *&v95[16];
      }

      if (SHIBYTE(v85) < 0)
      {
        sub_100005F2C(__dst, __p[0], __p[1]);
      }

      else
      {
        *__dst = *__p;
        v103 = v85;
      }

      v90 = 0;
      if (SHIBYTE(v103) < 0)
      {
        sub_100005F2C(buf, *__dst, *&__dst[8]);
      }

      else
      {
        *buf = *__dst;
        *&buf[16] = v103;
      }

      v91 = 0;
      if (ctu::cf::convert_copy())
      {
        v59 = v90;
        v90 = v91;
        *v92 = v59;
        sub_100005978(v92);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v86 = v90;
      v90 = 0;
      sub_100005978(&v90);
      if (SHIBYTE(v103) < 0)
      {
        operator delete(*__dst);
      }

      if (SHIBYTE(v85) < 0)
      {
        operator delete(__p[0]);
      }

      v60 = v86;
      v61 = *(a1 + 64);
      v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
      if (v60)
      {
        if (v62)
        {
          v63 = v95;
          if ((v95[23] & 0x80u) != 0)
          {
            v63 = *v95;
          }

          *buf = 136315138;
          *&buf[4] = v63;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: rawInterface=%s", buf, 0xCu);
        }

        v64 = *(a1 + 112);
        if (v64)
        {
          v82 = v34;
          v83 = v81;
          if (v81)
          {
            atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = (*(*v64 + 40))(v64, &v82, v95);
          if (v83)
          {
            sub_100004A34(v83);
          }

          if ((v43 & 1) == 0)
          {
            v65 = *(a1 + 64);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#E Update HO interface: cannot configure virtual interface", buf, 2u);
            }

            *a6 = 0x1FFFFFFFFLL;
            *(a6 + 8) = 0;
          }

          v66 = (*(*v34 + 112))(v34, v86);
          v67 = *(a1 + 64);
          if ((v66 & 1) == 0)
          {
            if (os_log_type_enabled(*(a1 + 64), OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#E Update HO interface: delegate interface failed", buf, 2u);
              v67 = *(a1 + 64);
            }

            v43 = 0;
            *a6 = 0x1FFFFFFFFLL;
            *(a6 + 8) = 0;
          }

          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            (*(*v34 + 128))(buf, v34);
            v68 = buf[23];
            v69 = *buf;
            (*(*v34 + 136))(__dst, v34);
            v70 = buf;
            if (v68 < 0)
            {
              v70 = v69;
            }

            if (v103 >= 0)
            {
              v71 = __dst;
            }

            else
            {
              v71 = *__dst;
            }

            *v92 = 136315394;
            *&v92[4] = v70;
            v93 = 2080;
            v94 = v71;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I Update HO interface: setHODelegateInterface: %s / %s", v92, 0x16u);
            if (SHIBYTE(v103) < 0)
            {
              operator delete(*__dst);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

LABEL_147:
          sub_100005978(&v86);
          if (v95[23] < 0)
          {
            operator delete(*v95);
          }

          if (v43)
          {
            goto LABEL_150;
          }

LABEL_151:
          v54 = v81;
          goto LABEL_152;
        }

        v61 = *(a1 + 64);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v72 = "#E Update HO interface: no data activator";
          goto LABEL_145;
        }
      }

      else if (v62)
      {
        *buf = 0;
        v72 = "#E Update HO interface: rawInterface empty !";
LABEL_145:
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, v72, buf, 2u);
      }

      v43 = 0;
      *a6 = 0x1FFFFFFFFLL;
      *(a6 + 8) = 0;
      goto LABEL_147;
    }
  }

  v53 = *(a1 + 64);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#E Update HO interface: kIPsecInterfaceSettingsResource object contains empty interface, failed", buf, 2u);
  }

  *a6 = 0x1FFFFFFFFLL;
  *(a6 + 8) = 0;
  if (v37)
  {
    sub_100004A34(v37);
    sub_100004A34(v37);
  }

  v43 = 0;
  v54 = v39;
LABEL_152:
  if (v54)
  {
    sub_100004A34(v54);
  }

LABEL_154:
  sub_1001178E4(&v87, v88);
  return v43;
}

void sub_1007475B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1001178E4(&a24, a27);
  _Unwind_Resume(a1);
}

void sub_1007476FC(PersonalitySpecificImpl *a1)
{
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    v11 = 0;
    v2 = (*(*a1 + 136))(a1, 0, 1, 0);
    v3 = *(a1 + 14);
    v4 = PersonalitySpecificImpl::simSlot(a1);
    LODWORD(v2) = (*(*v3 + 440))(v3, v4, 1, v2, &v11);
    v5 = *(a1 + 8);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (!v6)
      {
        return;
      }

      v7 = asStringBool(v11);
      *buf = 136315394;
      v13 = "ipcInterfaceConfig";
      v14 = 2080;
      v15 = v7;
      v8 = "#I %s: success, updated: %s";
      v9 = v5;
      v10 = 22;
    }

    else
    {
      if (!v6)
      {
        return;
      }

      *buf = 136315138;
      v13 = "ipcInterfaceConfig";
      v8 = "#E %s: failure";
      v9 = v5;
      v10 = 12;
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
  }
}

uint64_t sub_1007478A0(void *a1, CIPFamily *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1[8];
  v37 = a4;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = __p;
    CIPFamily::asString(__p, a2);
    if (v52 < 0)
    {
      v8 = __p[0];
    }

    v5 = v37;
    v9 = asStringBool(a3 != 0);
    v10 = asString();
    v11 = asStringBool(*a5 < 2u);
    *buf = 136316162;
    v54 = "handleDataContextActivateError_Sync";
    v55 = 2082;
    v56 = v8;
    v57 = 2080;
    v58 = v9;
    v59 = 2080;
    v60 = v10;
    v61 = 2080;
    v62 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: family=%{public}s observer=%s, ct=%s, newResult=%s", buf, 0x34u);
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100757390(a1, a3, v5);
  v12 = sub_10075596C(a1, v37);
  LODWORD(__p[0]) = v12;
  v13 = validContextType() ^ 1;
  if (v12 == v37)
  {
    LOBYTE(v13) = 1;
  }

  if (v13)
  {
    return 0;
  }

  result = validContextType();
  if (!result)
  {
    return result;
  }

  v15 = a1[8];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = asString();
    v17 = asString();
    *buf = 136315650;
    v54 = "handleDataContextActivateError_Sync";
    v55 = 2080;
    v56 = v16;
    v57 = 2080;
    v58 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: Activate %s failed, will try on %s", buf, 0x20u);
  }

  v18 = &a1[3 * v37 + 15];
  v19 = *v18;
  v36 = v18[1];
  if (*v18 == v36)
  {
    return 0;
  }

  v20 = 0;
  v32 = &a1[3 * v12 + 15];
  do
  {
    if (*(v19 + 16) == 1)
    {
      if (validContextType())
      {
        v21 = *v32;
        v22 = v32[1];
        if (*v32 != v22)
        {
          v23 = a1;
          do
          {
            v24 = *(v19 + 8);
            if (*(v21 + 8) == v24)
            {
              *(v19 + 16) = 0;
              *(v21 + 16) = 1;
              v25 = v23[8];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                (*(*v24 + 192))(v24);
                v26 = asString();
                v27 = asString();
                v28 = asString();
                *buf = 136315906;
                v54 = "handleDataContextActivateError_Sync";
                v55 = 2080;
                v56 = v26;
                v57 = 2080;
                v58 = v27;
                v59 = 2080;
                v60 = v28;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: Switching observer %s from %s to %s (change states)", buf, 0x2Au);
              }

              ++v20;
              v23 = a1;
            }

            v21 += 24;
          }

          while (v21 != v22);
        }
      }
    }

    v19 += 24;
  }

  while (v19 != v36);
  if (!v20)
  {
    return 0;
  }

  v29 = a1[8];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = asString();
    *buf = 136315394;
    v54 = "handleDataContextActivateError_Sync";
    v55 = 2080;
    v56 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: scheduling fallbackType %s", buf, 0x16u);
  }

  v39[0] = 1;
  v40 = "fallback activation (sync)";
  v41 = "CommCenter";
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v50 = 0;
  sub_10074BD70(a1, v12, v38);
  *a5 = sub_100745590(a1, a2, a3, __p, 0, v39, v38);
  *(a5 + 8) = v31;
  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v47);
  }

  return 1;
}

void sub_100747D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100747D7C(uint64_t a1, int a2)
{
  if (!a2 && (*(a1 + 664) & 1) != 0)
  {
    return 1;
  }

  v7 = v2;
  v8 = v3;
  sub_1000C558C(a1, a2, v6);
  v5 = v6[8];
  CIPFamily::~CIPFamily(v6);
  return v5 & 1;
}

uint64_t sub_100747DD8(uint64_t a1, int a2)
{
  sub_1000C558C(a1, a2, v4);
  v2 = v4[2];
  CIPFamily::~CIPFamily(v4);
  return v2;
}

uint64_t sub_100747E14(void *a1, uint64_t a2, int a3)
{
  if ((validContextType() & 1) == 0)
  {
    v11 = a1[8];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "isIPv6Allowed";
      v39 = 2080;
      *v40 = asString();
      v8 = "#E %s: wrong context type: %s";
      v9 = v11;
      v10 = 22;
      goto LABEL_11;
    }

    return 0;
  }

  if (!a2 && *(a1 + 664) == 1 && (*(a1 + 665) & 1) == 0)
  {
    v7 = a1[8];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "isIPv6Allowed";
    v8 = "#I %s: IPv6 is not allowed in cellular fallback";
    goto LABEL_8;
  }

  sub_1000C558C(a1, a2, buf);
  v6 = buf[8];
  CIPFamily::~CIPFamily(buf);
  if ((v6 & 2) == 0)
  {
    v7 = a1[8];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "isIPv6Allowed";
      v8 = "#I %s: IPv6 is not allowed";
LABEL_8:
      v9 = v7;
      v10 = 12;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }

    return 0;
  }

  if ((*(*a1 + 1040))(a1, a2))
  {
    v14 = a1[8];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "isIPv6Allowed";
      v15 = "#I %s: IPv6 is allowed in emergency mode";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      return 1;
    }

    return 1;
  }

  if (a3 <= 0)
  {
    v7 = a1[8];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "isIPv6Allowed";
    v8 = "#I %s: IPv6 is not allowed in no data mode";
    goto LABEL_8;
  }

  sub_1000C54B4(a1, buf);
  v16 = *&buf[8];
  CIPFamily::~CIPFamily(buf);
  if (v16 == 3)
  {
    v14 = a1[8];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "isIPv6Allowed";
      v15 = "#I %s: Legacy behavior: IPv6SupportedDataModeMask is not applicable when IPv4v6 APN config is used";
      goto LABEL_21;
    }

    return 1;
  }

  cf = 0;
  ServiceMap = Registry::getServiceMap(a1[9]);
  v18 = ServiceMap;
  if (v19 < 0)
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

  std::mutex::lock(ServiceMap);
  *buf = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, buf);
  if (!v23)
  {
    v25 = 0;
    goto LABEL_34;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (!v24)
  {
LABEL_34:
    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    goto LABEL_35;
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v24);
  v26 = 0;
LABEL_35:
  v27 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v25 + 96))(&cf, v25, v27, 1, @"IPv6SupportedDataModeMask", 0, 0);
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  v28 = cf;
  if (cf)
  {
    *buf = 0;
    v29 = CFGetTypeID(cf);
    if (v29 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v28, v30);
      v31 = *buf;
    }

    else
    {
      v31 = 0;
    }

    if ((v31 & 0x2000) != 0)
    {
      v32 = v31 | 0x18000;
    }

    else
    {
      v32 = v31;
    }

    v34 = a1[8];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "isIPv6Allowed";
      v39 = 1024;
      *v40 = v31;
      *&v40[4] = 1024;
      *&v40[6] = v32;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s: Read Carrier Bundle value of v6SupportedDataModeMask = %d, effective = %d", buf, 0x18u);
    }

    *(a1 + a2 + 256) = 1;
    *(a1 + a2 + 62) = v32;
  }

  else
  {
    v32 = 110620;
    *(a1 + a2 + 256) = 0;
    *(a1 + a2 + 62) = -1;
    v33 = a1[8];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "isIPv6Allowed";
      v39 = 1024;
      *v40 = 110620;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to get value of v6SupportedDataModeMask from bundle, using %d", buf, 0x12u);
    }

    *(a1 + a2 + 62) = 110620;
  }

  v12 = (v32 & (1 << (a3 - 1))) != 0;
  if ((v32 & (1 << (a3 - 1))) == 0)
  {
    v35 = a1[8];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = asString();
      *buf = 136315394;
      *&buf[4] = "isIPv6Allowed";
      v39 = 2080;
      *v40 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6 is allowed but can not be supported in current DataMode %s", buf, 0x16u);
    }
  }

  sub_10000A1EC(&cf);
  return v12;
}

void sub_1007483D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100748418(uint64_t a1, int a2)
{
  if ((validContextType() & 1) == 0)
  {
    v10 = *(a1 + 64);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "getAppType";
      v14 = 2080;
      v15 = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v12, 0x16u);
    }

    return 3;
  }

  v4 = a1 + 24 * a2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 128);
  if (v5 == v6)
  {
    return 3;
  }

  LODWORD(v7) = 3;
  do
  {
    (*(**(v5 + 8) + 192))(*(v5 + 8));
    AppType = DataiRatControllerInterface::getAppType();
    if (v7 <= AppType)
    {
      v9 = AppType;
    }

    else
    {
      v9 = v7;
    }

    if (v7 == 3)
    {
      v9 = AppType;
    }

    if (AppType == 3)
    {
      v7 = v7;
    }

    else
    {
      v7 = v9;
    }

    v5 += 24;
  }

  while (v5 != v6);
  return v7;
}

void sub_10074856C(uint64_t a1, int a2, uint64_t a3)
{
  if (validContextType())
  {
    memset(v9, 0, sizeof(v9));
    sub_10008A108(v9, *(a1 + 24 * a2 + 120), *(a1 + 24 * a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * a2 + 128) - *(a1 + 24 * a2 + 120)) >> 3));
    v6 = v9[0];
    v7 = v9[1];
    if (v9[0] != v9[1])
    {
      do
      {
        (*(*v6[1] + 104))(v6[1], a3);
        v6 += 3;
      }

      while (v6 != v7);
      v6 = v9[0];
    }

    if (v6)
    {
      v9[1] = v6;
      operator delete(v6);
    }
  }

  else
  {
    v8 = *(a1 + 64);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9[0]) = 136315394;
      *(v9 + 4) = "handleDataContextMOBIKEDone";
      WORD2(v9[1]) = 2080;
      *(&v9[1] + 6) = asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v9, 0x16u);
    }
  }
}

void sub_1007486F8(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100748808;
  v4[3] = &unk_101E77F98;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10075B7D8;
  block[3] = &unk_101E78C28;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_100748808(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "retryPendingActivations_block_invoke";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: retrying for %s", buf, 0x16u);
  }

  v4 = *(v2 + 55);
  if (v4)
  {
    *(v2 + 55) = 0;
    (*(*v4 + 8))(v4);
    v5 = sub_1000C2A4C(v2, 0, 0);
    sub_10000501C(buf, "Check if need to switchOver after out of pending");
    v6 = (*(*v2 + 1248))(v2, v5, buf);
    v7 = v6;
    if (buf[23] < 0)
    {
      operator delete(*buf);
      if (v7)
      {
        return;
      }
    }

    else if (v6)
    {
      return;
    }

    sub_100748B24(v2, v5);
  }

  if (validContextType())
  {
    v8 = (v2 + 24 * *(a1 + 40));
    memset(buf, 0, sizeof(buf));
    sub_10008A108(buf, v8[15], v8[16], 0xAAAAAAAAAAAAAAABLL * ((v8[16] - v8[15]) >> 3));
    v9 = *buf;
    v10 = *&buf[8];
    if (*buf != *&buf[8])
    {
      do
      {
        v11 = v9[1];
        v14[0] = 1;
        v15 = "reactivate pending";
        v16 = "CommCenter";
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v23 = 0;
        v24 = 0;
        __p = 0;
        v25 = 0;
        (*(*v11 + 120))(v11, v14);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p);
        }

        v9 += 3;
      }

      while (v9 != v10);
      v9 = *buf;
    }

    if (v9)
    {
      *&buf[8] = v9;
      operator delete(v9);
    }
  }

  else
  {
    v12 = *(v2 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = asString();
      *buf = 136315394;
      *&buf[4] = "retryPendingActivations_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }
}

void sub_100748ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100748B24(PersonalitySpecificImpl *a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "handoverFailed";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }

  if (validContextType())
  {
    v5 = 0;
    *&buf[8] = 0uLL;
    *buf = &buf[8];
    do
    {
      v6 = (a1 + 24 * dword_101836038[v5] + 120);
      __p = 0;
      v39 = 0;
      v40 = 0;
      sub_10008A108(&__p, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v7 = __p;
      v8 = v39;
      if (__p != v39)
      {
        v9 = (__p + 8);
        do
        {
          if (*(v9 + 8) == 1)
          {
            sub_10075B8AC(buf, v9);
          }

          v10 = (v9 + 2);
          v9 += 3;
        }

        while (v10 != v8);
        v7 = __p;
      }

      if (v7)
      {
        v39 = v7;
        operator delete(v7);
      }

      ++v5;
    }

    while (v5 != 2);
    if (sub_10074B638(a1) != a2)
    {
      (*(*a1 + 856))(a1, a2, 1, 0);
      v20 = *buf;
      if (*buf != &buf[8])
      {
        do
        {
          v21 = v20[4];
          sub_100004AA0(&__p, a1 + 4);
          if (__p)
          {
            v22 = __p + 24;
          }

          else
          {
            v22 = 0;
          }

          v36 = v22;
          v37 = v39;
          __p = 0;
          v39 = 0;
          (*(*v21 + 288))(v21, a2, &v36, 1, 0);
          if (v37)
          {
            sub_100004A34(v37);
          }

          if (v39)
          {
            sub_100004A34(v39);
          }

          v23 = v20[1];
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
              v24 = v20[2];
              v25 = *v24 == v20;
              v20 = v24;
            }

            while (!v25);
          }

          v20 = v24;
        }

        while (v24 != &buf[8]);
      }

      goto LABEL_57;
    }

    if (validContextType())
    {
      ServiceMap = Registry::getServiceMap(*(a1 + 9));
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
      __p = v13;
      v17 = sub_100009510(&v12[1].__m_.__sig, &__p);
      if (v17)
      {
        v19 = v17[3];
        v18 = v17[4];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v12);
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v18);
          if (!v19)
          {
LABEL_56:
            sub_100004A34(v18);
            goto LABEL_57;
          }

LABEL_40:
          v34 = 0;
          v35 = 0;
          (*(*v19 + 456))(&v34, v19);
          if (v34)
          {
            v26 = *buf;
            if (*buf != &buf[8])
            {
              do
              {
                v27 = v34;
                v28 = PersonalitySpecificImpl::simSlot(a1);
                v29 = (*(**(v26 + 4) + 192))(*(v26 + 4));
                v30 = (*(*a1 + 328))(a1, a2);
                (*(*a1 + 528))(&__p, a1, a2);
                if (v40 >= 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                (*(*v27 + 56))(v27, v28, v29, a2, v30, p_p);
                if (SHIBYTE(v40) < 0)
                {
                  operator delete(__p);
                }

                v32 = *(v26 + 1);
                if (v32)
                {
                  do
                  {
                    v33 = v32;
                    v32 = *v32;
                  }

                  while (v32);
                }

                else
                {
                  do
                  {
                    v33 = *(v26 + 2);
                    v25 = *v33 == v26;
                    v26 = v33;
                  }

                  while (!v25);
                }

                v26 = v33;
              }

              while (v33 != &buf[8]);
            }
          }

          if (v35)
          {
            sub_100004A34(v35);
          }

          if (!v18)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }

        std::mutex::unlock(v12);
        if (v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        std::mutex::unlock(v12);
      }
    }

LABEL_57:
    sub_10006DCAC(buf, *&buf[8]);
  }
}

void sub_100749024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, void *a21)
{
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_10006DCAC(&a20, a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1007490E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    return 1;
  }

  if ((validContextType() & 1) == 0)
  {
    v7 = *(a1 + 64);
    v2 = 0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9[0]) = 136315394;
      *(v9 + 4) = "isObserverCurrentOnSomething";
      WORD2(v9[1]) = 2080;
      *(&v9[1] + 6) = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v9, 0x16u);
      return 0;
    }

    return v2;
  }

  v5 = otherContextType();
  memset(v9, 0, sizeof(v9));
  sub_10008A108(v9, *(a1 + 24 * v5 + 120), *(a1 + 24 * v5 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * v5 + 128) - *(a1 + 24 * v5 + 120)) >> 3));
  if (v9[0] == v9[1])
  {
LABEL_9:
    v2 = 0;
    if (!v9[0])
    {
      return v2;
    }

LABEL_10:
    v9[1] = v9[0];
    operator delete(v9[0]);
    return v2;
  }

  v6 = v9[0];
  while (v6[1] != *(a2 + 8) || (v6[2] & 1) == 0)
  {
    v6 += 3;
    if (v6 == v9[1])
    {
      goto LABEL_9;
    }
  }

  v2 = 1;
  if (v9[0])
  {
    goto LABEL_10;
  }

  return v2;
}

uint64_t sub_100749264(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  __p = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &__p);
  if (!v8)
  {
    std::mutex::unlock(v3);
    goto LABEL_9;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    std::mutex::unlock(v3);
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_9:
    v11 = 2;
    goto LABEL_41;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  if (!v10)
  {
    v11 = 2;
LABEL_40:
    sub_100004A34(v9);
    goto LABEL_41;
  }

LABEL_11:
  v29 = 0;
  v30 = 0;
  (*(*v10 + 456))(&v29, v10);
  if (v29)
  {
    v12 = 0;
    __p = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v13 = a1 + 120 + 24 * dword_101836038[v12];
      v14 = *v13;
      v15 = *(v13 + 8);
      while (v14 != v15)
      {
        if (sub_1007490E0(a1, v14))
        {
          sub_1000C44A0(&__p, v14);
        }

        v14 = (v14 + 24);
      }

      ++v12;
    }

    while (v12 != 2);
    v16 = __p;
    v17 = v27;
    if (__p == v27)
    {
      goto LABEL_33;
    }

    LODWORD(v18) = 3;
    do
    {
      (*(*v16[1] + 192))(v16[1]);
      AppType = DataiRatControllerInterface::getAppType();
      if (v18 <= AppType)
      {
        v20 = AppType;
      }

      else
      {
        v20 = v18;
      }

      if (v18 == 3)
      {
        v20 = AppType;
      }

      if (AppType == 3)
      {
        v18 = v18;
      }

      else
      {
        v18 = v20;
      }

      v16 += 3;
    }

    while (v16 != v17);
    if (v18 >= 3)
    {
LABEL_33:
      v11 = 2;
    }

    else
    {
      v21 = v29;
      v22 = PersonalitySpecificImpl::simSlot(a1);
      v11 = (*(*v21 + 96))(v21, v22, v18);
      v23 = *(a1 + 64);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = asString();
        *buf = 136315394;
        v32 = "getPreferredTransportType";
        v33 = 2080;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: iRAT recommends %s", buf, 0x16u);
      }
    }

    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 2;
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  if (v9)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (validContextType())
  {
    return v11;
  }

  else
  {
    return 1;
  }
}

void sub_100749568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007495D4(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    return (*(*v1 + 80))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100749608(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return (*(*v1 + 80))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10074963C(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    return (*(*v1 + 96))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100749670(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return (*(*v1 + 96))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1007496A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1[14])
  {
    goto LABEL_13;
  }

  if ((validContextType() & 1) == 0)
  {
    v14 = a1[8];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "isMOBIKEPossibleTo";
      v20 = 2080;
      v21 = asString();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v8 = a1[14];
  (*(*a1 + 16))(&v16, a1);
  v9 = (*(*v8 + 232))(v8, a2, a3, &v16, a4);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (!v9)
  {
LABEL_13:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  v10 = &a1[3 * a2];
  v11 = v10[15];
  v12 = v10[16];
  v13 = 1;
  while (v11 != v12)
  {
    if (*(v11 + 16) == 1)
    {
      v13 &= (*(**(v11 + 8) + 304))(*(v11 + 8), a2);
    }

    v11 += 24;
  }

  return v13 & 1;
}

void sub_100749874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074989C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[14];
  if (!v4)
  {
    return 0;
  }

  (*(*a1 + 16))(&v10);
  v8 = (*(*v4 + 224))(v4, a2, a3, &v10, a4);
  if (v11)
  {
    sub_100004A34(v11);
  }

  return v8;
}

void sub_100749958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100749978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004AA0(&v8, (a1 + 32));
  v7 = v8;
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_100749AEC;
  v10[3] = &unk_101E77FB8;
  v10[4] = a1;
  v10[5] = v7;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10075B814(v12, a3);
  v12[4] = a2;
  sub_100741294(a1 + 664, a2, v10, (a1 + 48), (a1 + 72));
  sub_1003B7318(v12);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_100749AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  sub_1003B7318(v19 + 56);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  _Unwind_Resume(a1);
}

void sub_100749AEC(void *a1)
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
        v6 = a1[10];
        if (!v6)
        {
          sub_100022DB4();
        }

        if ((*(*v6 + 48))(v6))
        {
          v7 = v3[14];
          if (v7)
          {
            v8 = v3[8];
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v15 = "apnFallbackTimerSet_block_invoke";
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: APNFallback timeout: going back to IPv6 only", buf, 0xCu);
              v7 = v3[14];
            }

            (*(*v3 + 16))(&v11, v3);
            (*(*v7 + 264))(v7, 0, &v11, 31, "CommCenter");
            if (v12)
            {
              sub_100004A34(v12);
            }
          }
        }

        else
        {
          v9 = v3[8];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v15 = "apnFallbackTimerSet_block_invoke";
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: APNFallback timeout: cannot go back to IPv6 only, postponing ...", buf, 0xCu);
          }

          v10 = a1[11];
          sub_10075B814(v13, (a1 + 7));
          sub_100749978(v3, v10, v13);
          sub_1003B7318(v13);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100749CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_100749D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10075B814(a1 + 56, a2 + 56);
}

void sub_100749D78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100749D90(uint64_t a1)
{
  sub_1003B7318(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100749DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "apnFallback";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v7 = *(a3 + 24);
  if (!v7)
  {
    sub_100022DB4();
  }

  if ((*(*v7 + 48))(v7))
  {
    if (((*(*a1 + 136))(a1, 0, 0, 0) & 1) != 0 && (*(a1 + 664) & 1) == 0 && sub_100741BB8(a1, 0) == 3)
    {
      v22 = 0;
      v21 = 0;
      memset(&v20, 0, sizeof(v20));
      sub_10074014C(a1, &v22 + 1, &v22, &v21, &v20);
      if (HIBYTE(v22) == 1 && *(a1 + 112))
      {
        v8 = v22;
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__dst, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v20;
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        sub_100741200(a1 + 664, 1, v8, &__dst, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v10 = v21;
        if (v21)
        {
          sub_10075B814(v29, a3);
          sub_100749978(a1, v10, v29);
          sub_1003B7318(v29);
        }

        v11 = *(a1 + 64);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = asString();
          sub_10074A21C(a1 + 664, &v17);
          v13 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v17 : v17.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          v24 = "apnFallback";
          v25 = 2080;
          v26 = v12;
          v27 = 2080;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: fAPNFallbackState %s set to %s", buf, 0x20u);
          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }
        }

        v14 = *(a1 + 112);
        (*(*a1 + 16))(&v15, a1);
        (*(*v14 + 264))(v14, 0, &v15, 30, "CommCenter");
        if (v16)
        {
          sub_100004A34(v16);
        }
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v9 = *(a1 + 64);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "apnFallback";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: APNFallback is not allowed", buf, 0xCu);
    }
  }
}

void sub_10074A19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074A21C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10000501C(&v47, "[ipv4=");
  v4 = asStringBool(*a1);
  sub_10000501C(v45, v4);
  if ((v46 & 0x80u) == 0)
  {
    v5 = v45;
  }

  else
  {
    v5 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v6 = v46;
  }

  else
  {
    v6 = v45[1];
  }

  v7 = std::string::append(&v47, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v48, ", ipv6=", 7uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = asStringBool(*(a1 + 1));
  sub_10000501C(v43, v11);
  if ((v44 & 0x80u) == 0)
  {
    v12 = v43;
  }

  else
  {
    v12 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v13 = v44;
  }

  else
  {
    v13 = v43[1];
  }

  v14 = std::string::append(&v49, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v50, ", tentative=", 0xCuLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = asStringBool(*(a1 + 2));
  sub_10000501C(__p, v18);
  if ((v42 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v20 = v42;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v51, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v52, ", apn=", 6uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = *(a1 + 31);
  if (v25 >= 0)
  {
    v26 = (a1 + 8);
  }

  else
  {
    v26 = *(a1 + 8);
  }

  if (v25 >= 0)
  {
    v27 = *(a1 + 31);
  }

  else
  {
    v27 = *(a1 + 16);
  }

  v28 = std::string::append(&v53, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v54, ", app=", 7uLL);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v34 = *(a1 + 40);
  v33 = a1 + 40;
  v32 = v34;
  v35 = *(v33 + 23);
  if (v35 >= 0)
  {
    v36 = v33;
  }

  else
  {
    v36 = v32;
  }

  if (v35 >= 0)
  {
    v37 = *(v33 + 23);
  }

  else
  {
    v37 = *(v33 + 8);
  }

  v38 = std::string::append(&v55, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v56, "]", 2uLL);
  *a2 = *v40;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_10074A578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (*(v59 - 41) < 0)
  {
    operator delete(*(v59 - 64));
  }

  if (*(v59 - 73) < 0)
  {
    operator delete(*(v59 - 96));
  }

  if (*(v59 - 105) < 0)
  {
    operator delete(*(v59 - 128));
  }

  if (*(v59 - 137) < 0)
  {
    operator delete(*(v59 - 160));
  }

  if (*(v59 - 169) < 0)
  {
    operator delete(*(v59 - 192));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074A6BC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 || *(a1 + 664) != 1)
  {

    sub_10000501C(a3, "");
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    sub_10074014C(a1, &v8 + 1, &v8, &v7, a3);
    v5 = *(a1 + 64);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v6 = a3;
      }

      else
      {
        v6 = *a3;
      }

      *buf = 136315394;
      v10 = "getApnFallbackName";
      v11 = 2080;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: APNFallback name set to '%s'", buf, 0x16u);
    }
  }
}

void sub_10074A7FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074A818(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  sub_10074A6BC(a1, a2, __p);
  v5 = HIBYTE(v9);
  if (v9 < 0)
  {
    v5 = __p[1];
  }

  if (v5)
  {
    *a3 = *__p;
    *(a3 + 16) = v9;
    __p[1] = 0;
    v9 = 0;
    __p[0] = 0;
  }

  else
  {
    v6 = *(a1 + 264);
    if (v6)
    {
      if (*(v6 + 71) < 0)
      {
        sub_100005F2C(a3, *(v6 + 48), *(v6 + 56));
      }

      else
      {
        v7 = *(v6 + 48);
        *(a3 + 16) = *(v6 + 64);
        *a3 = v7;
      }
    }

    else
    {
      sub_10000501C(a3, "");
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10074A8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074A900(void *a1)
{
  v1 = a1[14];
  if (v1)
  {
    (*(*a1 + 16))(&v3);
    (*(*v1 + 248))(v1, &v3);
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v2 = a1[8];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "notifyConnectionReady";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: data activator empty", buf, 0xCu);
    }
  }
}

void sub_10074AA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074AA34(Registry **a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(a1[9]);
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
  v18 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v18);
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

      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = 1;
    if (v13)
    {
      return v14;
    }

    goto LABEL_12;
  }

LABEL_11:
  v15 = PersonalitySpecificImpl::simSlot(a1);
  v16 = (*(*a1 + 17))(a1, a2, 1, 0);
  v14 = (*(*v12 + 1144))(v12, a2, v15, v16);
  if ((v13 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v11);
  }

  return v14;
}

void sub_10074ABB4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074ABCC(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[14];
  if (v3)
  {
    (*(*a1 + 16))(&v5);
    (*(*v3 + 216))(v3, a2, &v5);
    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_10074AC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074AC9C(PersonalitySpecificImpl *a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004AA0(&__p, a1 + 4);
    v5 = __p;
    v6 = v47;
    __p = 0;
    v47 = 0;
    if (v5)
    {
      v7 = (*(v5[3] + 48))();
    }

    else
    {
      v7 = "nothing";
    }

    v8 = asString();
    *buf = 136315650;
    *&buf[4] = "handleDataContextActivated";
    *&buf[12] = 2080;
    *&buf[14] = v7;
    *&buf[22] = 2080;
    v52 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s activated with %s", buf, 0x20u);
    if (v6)
    {
      sub_100004A34(v6);
    }

    if (v47)
    {
      sub_100004A34(v47);
    }
  }

  if (validContextType())
  {
    *&buf[8] = 0uLL;
    *buf = &buf[8];
    v9 = (a1 + 120);
    v10 = 0;
    if ((*(*a1 + 1240))(a1, a2, 3))
    {
      do
      {
        v11 = &v9[3 * dword_101836038[v10]];
        v12 = v11[1];
        if (*v11 != v12)
        {
          v13 = *v11 + 8;
          do
          {
            if (*(v13 + 8) == 1)
            {
              sub_10075B8AC(buf, v13);
            }

            v14 = v13 + 16;
            v13 += 24;
          }

          while (v14 != v12);
        }

        ++v10;
      }

      while (v10 != 2);
    }

    else
    {
      do
      {
        v15 = &v9[3 * dword_101836038[v10]];
        v16 = v15[1];
        if (*v15 != v16)
        {
          v17 = (*v15 + 8);
          do
          {
            if (*(v17 + 8) == 1 && *v17 && (*(**v17 + 128))(*v17))
            {
              sub_10075B8AC(buf, v17);
            }

            v18 = v17 + 2;
            v17 += 3;
          }

          while (v18 != v16);
        }

        ++v10;
      }

      while (v10 != 2);
    }

    v19 = sub_1007421F0(a1);
    v20 = *buf;
    if (*buf != &buf[8])
    {
      v21 = v19;
      do
      {
        sub_100740A20(a1, a2, v20[4], 1);
        v22 = *v20[4];
        if (v21)
        {
          v23 = (v22 + 48);
        }

        else
        {
          v23 = (v22 + 40);
        }

        (*v23)();
        v24 = v20[1];
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
            v25 = v20[2];
            v26 = *v25 == v20;
            v20 = v25;
          }

          while (!v26);
        }

        v20 = v25;
      }

      while (v25 != &buf[8]);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 9));
    v28 = ServiceMap;
    if (v29 < 0)
    {
      v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
      v31 = 5381;
      do
      {
        v29 = v31;
        v32 = *v30++;
        v31 = (33 * v31) ^ v32;
      }

      while (v32);
    }

    std::mutex::lock(ServiceMap);
    __p = v29;
    v33 = sub_100009510(&v28[1].__m_.__sig, &__p);
    if (v33)
    {
      v35 = v33[3];
      v34 = v33[4];
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v34);
        if (!v35)
        {
LABEL_64:
          sub_100004A34(v34);
          goto LABEL_65;
        }

LABEL_48:
        v49 = 0;
        v50 = 0;
        (*(*v35 + 456))(&v49, v35);
        if (v49)
        {
          v38 = *buf;
          if (*buf != &buf[8])
          {
            do
            {
              v39 = v49;
              v40 = PersonalitySpecificImpl::simSlot(a1);
              v41 = (*(**(v38 + 4) + 192))(*(v38 + 4));
              v42 = (*(*a1 + 328))(a1, a2);
              (*(*a1 + 528))(&__p, a1, a2);
              if (v48 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              (*(*v39 + 56))(v39, v40, v41, a2, v42, p_p);
              if (v48 < 0)
              {
                operator delete(__p);
              }

              v44 = *(v38 + 1);
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
                  v45 = *(v38 + 2);
                  v26 = *v45 == v38;
                  v38 = v45;
                }

                while (!v26);
              }

              v38 = v45;
            }

            while (v45 != &buf[8]);
          }
        }

        if (v50)
        {
          sub_100004A34(v50);
        }

        if (!v34)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      std::mutex::unlock(v28);
      if (v35)
      {
        goto LABEL_48;
      }
    }

    else
    {
      std::mutex::unlock(v28);
    }

LABEL_65:
    sub_10006DCAC(buf, *&buf[8]);
    return;
  }

  v36 = *(a1 + 8);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = asString();
    *buf = 136315394;
    *&buf[4] = "handleDataContextActivated";
    *&buf[12] = 2080;
    *&buf[14] = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
  }
}

void sub_10074B294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, void *a19)
{
  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_10006DCAC(&a18, a19);
  _Unwind_Resume(a1);
}

void sub_10074B344(PersonalitySpecificImpl *a1, int a2, int a3, unsigned int a4)
{
  v7 = 0;
  v8 = 0;
  v9 = a1 + 120;
  do
  {
    v10 = &v9[24 * dword_101836038[v8]];
    v12 = *v10;
    v11 = *(v10 + 1);
    while (v12 != v11)
    {
      if (*(v12 + 16) == 1)
      {
        v7 |= (*(**(v12 + 8) + 192))(*(v12 + 8)) == a2;
      }

      v12 += 24;
    }

    ++v8;
  }

  while (v8 != 2);
  if (v7)
  {
    v13 = sub_1000C2A4C(a1, 0, 0);
    if (a3)
    {
      v14 = sub_10074B638(a1);
      if (v13 == a4)
      {
        v15 = v14;
        if (v13 != v14)
        {
          sub_10000501C(__p, "Switch to forced context type");
          v16 = (*(*a1 + 1248))(a1, a4, __p);
          v17 = v16;
          if (SHIBYTE(v25) < 0)
          {
            operator delete(*__p);
            if (v17)
            {
              return;
            }
          }

          else if (v16)
          {
            return;
          }

          v18 = *(a1 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = asString();
            v20 = asString();
            *__p = 136315650;
            *&__p[4] = "recalculateForceContextType";
            v23 = 2080;
            v24 = v19;
            v25 = 2080;
            v26 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: handover to forced type %s failed (2), deactivate current context %s", __p, 0x20u);
          }

          (*(*a1 + 672))(a1, v15, 35, "Handover to Forced Type Failed. (2)", "CommCenter");
          sub_100748B24(a1, a4);
        }
      }
    }

    else
    {
      sub_10000501C(__p, "Switch back to iRat type when context is not forced");
      (*(*a1 + 1248))(a1, v13, __p);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_10074B610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074B638(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (!v1)
  {
    return 2;
  }

  sub_100004AA0(&v5, (a1 + 32));
  if (v5)
  {
    v2 = v5 + 24;
  }

  else
  {
    v2 = 0;
  }

  v7 = v2;
  v8 = v6;
  v5 = 0;
  v6 = 0;
  v3 = (*(*v1 + 184))(v1, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  return v3;
}

void sub_10074B6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074B70C(uint64_t a1)
{
  result = *(a1 + 112);
  if (result)
  {
    return (*(*result + 384))();
  }

  return result;
}

void sub_10074B744(void *a1, uint64_t a2)
{
  if (validContextType())
  {
    (*(*a1 + 1240))(a1, a2, 0);
    v4 = otherContextType();
    memset(v19, 0, sizeof(v19));
    sub_10008A108(v19, a1[3 * a2 + 15], a1[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * a2 + 16] - a1[3 * a2 + 15]) >> 3));
    v5 = sub_1007421F0(a1);
    v6 = a1[8];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "handleDataContextDeactivated";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: In handover: switch observers to the remaining context when possible", &buf, 0xCu);
      }

      v8 = *v19;
      v9 = *&v19[8];
      while (v8 != v9)
      {
        if (*(v8 + 16) == 1)
        {
          sub_100740A20(a1, v4, *(v8 + 8), 1);
        }

        v8 += 24;
      }
    }

    else
    {
      if (v7)
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "handleDataContextDeactivated";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: Not in handover:", &buf, 0xCu);
      }

      v11 = *v19;
      v12 = *&v19[8];
      while (v11 != v12)
      {
        if (*(v11 + 16) == 1)
        {
          v13 = *(v11 + 8);
          sub_100004AA0(&buf, a1 + 4);
          if (buf)
          {
            v14 = buf + 24;
          }

          else
          {
            v14 = 0;
          }

          v16 = v14;
          v17 = *(&buf + 1);
          buf = 0uLL;
          v15 = (*(*v13 + 64))(v13, a2, &v16);
          if (v17)
          {
            sub_100004A34(v17);
          }

          if (*(&buf + 1))
          {
            sub_100004A34(*(&buf + 1));
          }

          if (v15)
          {
            sub_100740A20(a1, a2, *(v11 + 8), 0);
          }
        }

        v11 += 24;
      }
    }

    (*(*a1 + 1208))(a1, a2);
    if (*v19)
    {
      *&v19[8] = *v19;
      operator delete(*v19);
    }
  }

  else
  {
    v10 = a1[8];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315394;
      *&v19[4] = "handleDataContextDeactivated";
      *&v19[12] = 2080;
      *&v19[14] = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v19, 0x16u);
    }
  }
}

uint64_t sub_10074BAB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7)
{
  if (validContextType())
  {
    memset(buf, 0, sizeof(buf));
    sub_10008A108(buf, a1[3 * a2 + 15], a1[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * a2 + 16] - a1[3 * a2 + 15]) >> 3));
    v14 = *buf;
    v15 = *&buf[8];
    while (v14 != v15)
    {
      if (*(v14 + 16) == 1)
      {
        v16 = *(v14 + 8);
        if (v16)
        {
          (*(*v16 + 72))(v16, a4, a5, a6);
        }
      }

      v14 += 24;
    }

    sub_10074BD70(a1, a3, v21);
    sub_10074BD70(a1, a2, v20);
    sub_10074BEDC(v21, v20, &__p);
    if (&__p != a7)
    {
      sub_10075B5F0(a7, __p, v23, 0x4EC4EC4EC4EC4EC5 * (v23 - __p));
    }

    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    if (v21[0])
    {
      v21[1] = v21[0];
      operator delete(v21[0]);
    }

    v18 = sub_10074BF70(a1, a2, a3);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    v17 = a1[8];
    v18 = 0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "handleDataContextNetworkDisconnect";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
      return 0;
    }
  }

  return v18;
}

void sub_10074BCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074BD70(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (validContextType())
  {
    v6 = a1 + 24 * a2;
    v7 = *(v6 + 120);
    v8 = *(v6 + 128);
    while (v7 != v8)
    {
      if (*(v7 + 16) == 1)
      {
        *v12 = (*(**(v7 + 8) + 264))(*(v7 + 8));
        *&v12[8] = v9;
        LOBYTE(v13) = v10;
        sub_100090374(a3, v12);
      }

      v7 += 24;
    }
  }

  else
  {
    v11 = *(a1 + 64);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 136315394;
      *&v12[4] = "getActiveConnectionsTraits";
      v13 = 2080;
      v14 = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v12, 0x16u);
    }
  }
}

void sub_10074BEC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074BEDC(uint64_t *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_100090CF8(a3, *a1, a1[1], 0x4EC4EC4EC4EC4EC5 * (a1[1] - *a1));
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    sub_100090374(a3, v5);
    v5 = (v5 + 13);
  }
}

void sub_10074BF54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074BF70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!(*(*a1 + 1080))(a1) || sub_100750BB8(v5, a2, a3) != a3)
  {
    return 0;
  }

  if ((validContextType() & 1) == 0)
  {
    v58 = v5[8];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v74 = "canDoHandover";
      v75 = 2080;
      v76 = asString();
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }

    return 0;
  }

  __p = 0;
  v71 = 0;
  v72 = 0;
  sub_10008A108(&__p, v5[3 * a2 + 15], v5[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((v5[3 * a2 + 16] - v5[3 * a2 + 15]) >> 3));
  v6 = __p;
  v7 = v71;
  if (__p == v71)
  {
    v57 = 0;
    if (!__p)
    {
      return v57;
    }

LABEL_75:
    v71 = v6;
    operator delete(v6);
    return v57;
  }

  v8 = 1;
  v63 = v5;
  v60 = v71;
  do
  {
    if ((sub_1007490E0(v5, v6) & 1) == 0)
    {
      goto LABEL_66;
    }

    v69 = 0;
    *v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    (*(*v6[1] + 272))(&v66);
    v9 = v66;
    if (v66)
    {
      v61 = v66;
      v62 = v6;
      v10 = v67[12];
      v11 = v5[8];
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          v13 = (*(*v5 + 40))(v5);
          v14 = asString();
          if (v66)
          {
            v15 = "f";
          }

          else
          {
            v15 = "t";
          }

          if (v66)
          {
            v16 = asString();
          }

          else
          {
            v16 = "OK";
          }

          v22 = *(&v66 + 1);
          v21 = *v67;
          v23 = asStringBool(v67[8]);
          v24 = asStringBool(v67[9]);
          v25 = asStringBool(v67[10]);
          v26 = asStringBool(v67[11]);
          *buf = 136317954;
          v74 = v13;
          v75 = 2080;
          v76 = "canDoHandover";
          v77 = 2080;
          v78 = "cannot be activated";
          v79 = 2080;
          v80 = v14;
          v81 = 2080;
          v82 = v15;
          v83 = 2080;
          v84 = v16;
          v85 = 2080;
          v86 = v22;
          v87 = 2080;
          v88 = v21;
          v89 = 2080;
          v90 = v23;
          v91 = 2080;
          v92 = v24;
          v93 = 2080;
          v94 = v25;
          v95 = 2080;
          v96 = v26;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: %s: %s: %s(%s{%s %s [ allowed=%s blocked=%s netAvailable=%s home=%s ]})", buf, 0x7Au);
          v5 = v63;
        }

        goto LABEL_30;
      }

      if (!v12)
      {
LABEL_30:
        v30 = *(&v68 + 1);
        v31 = v69;
        if (v69)
        {
          atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v30)
        {
          while (1)
          {
            v32 = *(v30 + 28);
            v33 = v5[8];
            v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
            if (v32 == 1)
            {
              if (v34)
              {
                log = v33;
                v35 = (*(*v5 + 40))(v5);
                v36 = asString();
                v37 = "f";
                if (!*v30)
                {
                  v37 = "t";
                }

                v64 = v37;
                if (*v30)
                {
                  v38 = asString();
                }

                else
                {
                  v38 = "OK";
                }

                v44 = *(v30 + 8);
                v43 = *(v30 + 16);
                v45 = asStringBool(*(v30 + 24));
                v46 = asStringBool(*(v30 + 25));
                v47 = asStringBool(*(v30 + 26));
                v48 = asStringBool(*(v30 + 27));
                *buf = 136317954;
                v74 = v35;
                v75 = 2080;
                v76 = "canDoHandover";
                v77 = 2080;
                v78 = "cannot be activated (chained):";
                v79 = 2080;
                v80 = v36;
                v81 = 2080;
                v82 = v64;
                v83 = 2080;
                v84 = v38;
                v85 = 2080;
                v86 = v44;
                v87 = 2080;
                v88 = v43;
                v89 = 2080;
                v90 = v45;
                v91 = 2080;
                v92 = v46;
                v93 = 2080;
                v94 = v47;
                v95 = 2080;
                v96 = v48;
                _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: %s: %s: %s(%s{%s %s [ allowed=%s blocked=%s netAvailable=%s home=%s ]})", buf, 0x7Au);
                v5 = v63;
              }

              goto LABEL_54;
            }

            if (v34)
            {
              break;
            }

LABEL_54:
            v54 = *(v30 + 40);
            v53 = *(v30 + 48);
            if (v53)
            {
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v31)
            {
              sub_100004A34(v31);
            }

            v31 = v53;
            v30 = v54;
            if (!v54)
            {
              goto LABEL_61;
            }
          }

          v39 = (*(*v5 + 40))(v5);
          v40 = asString();
          if (*v30)
          {
            v41 = "f";
          }

          else
          {
            v41 = "t";
          }

          if (*v30)
          {
            v42 = asString();
          }

          else
          {
            v42 = "OK";
          }

          v49 = *(v30 + 8);
          if (v49)
          {
            v50 = *(v30 + 16);
            if (*v49)
            {
              v51 = "{";
              v52 = "}";
LABEL_53:
              *buf = 136317442;
              v74 = v39;
              v75 = 2080;
              v76 = "canDoHandover";
              v77 = 2080;
              v78 = "cannot be activated (chained):";
              v79 = 2080;
              v80 = v40;
              v81 = 2080;
              v82 = v41;
              v83 = 2080;
              v84 = v42;
              v85 = 2080;
              v86 = v51;
              v87 = 2080;
              v88 = v49;
              v89 = 2080;
              v90 = v50;
              v91 = 2080;
              v92 = v52;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: %s: %s: %s(%s%s%s %s%s)", buf, 0x66u);
              goto LABEL_54;
            }
          }

          else
          {
            v50 = *(v30 + 16);
          }

          v52 = "";
          v51 = "";
          goto LABEL_53;
        }

        v53 = v31;
LABEL_61:
        v6 = v62;
        v7 = v60;
        v9 = v61;
        if (v53)
        {
          sub_100004A34(v53);
        }

        goto LABEL_63;
      }

      v17 = (*(*v5 + 40))(v5);
      v18 = asString();
      if (v66)
      {
        v19 = "f";
      }

      else
      {
        v19 = "t";
      }

      if (v66)
      {
        v20 = asString();
      }

      else
      {
        v20 = "OK";
      }

      if (*(&v66 + 1))
      {
        v27 = *v67;
        if (**(&v66 + 1))
        {
          v28 = "{";
          v29 = "}";
LABEL_29:
          *buf = 136317442;
          v74 = v17;
          v75 = 2080;
          v76 = "canDoHandover";
          v77 = 2080;
          v78 = "cannot be activated";
          v79 = 2080;
          v80 = v18;
          v81 = 2080;
          v82 = v19;
          v83 = 2080;
          v84 = v20;
          v85 = 2080;
          v86 = v28;
          v87 = 2080;
          v88 = *(&v66 + 1);
          v89 = 2080;
          v90 = v27;
          v91 = 2080;
          v92 = v29;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: %s: %s: %s(%s%s%s %s%s)", buf, 0x66u);
          goto LABEL_30;
        }
      }

      else
      {
        v27 = *v67;
      }

      v29 = "";
      v28 = "";
      goto LABEL_29;
    }

LABEL_63:
    if (v69)
    {
      sub_100004A34(v69);
    }

    v8 = 0;
    v55 = 0;
    v56 = 0;
    if (v9)
    {
      goto LABEL_68;
    }

LABEL_66:
    v6 += 3;
  }

  while (v6 != v7);
  v55 = 1;
  v56 = v8;
LABEL_68:
  v6 = __p;
  v57 = v55 & (v56 ^ 1u);
  if (__p)
  {
    goto LABEL_75;
  }

  return v57;
}

uint64_t sub_10074C7F4(void *a1, uint64_t a2)
{
  if ((validContextType() & 1) == 0)
  {
    v9 = a1[8];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "isContextStateIdle";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }

    return 1;
  }

  v4 = a1[14];
  if (!v4)
  {
    return 1;
  }

  sub_100004AA0(buf, a1 + 4);
  if (*buf)
  {
    v5 = *buf + 24;
  }

  else
  {
    v5 = 0;
  }

  v11 = v5;
  v12 = *&buf[8];
  *buf = 0;
  *&buf[8] = 0;
  v6 = (*(*v4 + 368))(v4, &v11);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (!v6)
  {
    return 1;
  }

  v7 = a1[14];
  (*(*a1 + 16))(buf, a1);
  v8 = (*(*v7 + 88))(v7, a2, buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  return v8;
}

void sub_10074C9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074C9F4(void *a1, uint64_t a2)
{
  if (validContextType())
  {
    v4 = otherContextType();
    v5 = sub_1007421F0(a1);
    v6 = sub_1007421F0(a1);
    (*(*a1 + 1240))(a1, a2, 0);
    v7 = a1[8];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_100004AA0(&v29, a1 + 4);
      v8 = v29;
      v29 = 0uLL;
      if (v8)
      {
        (*(*(v8 + 24) + 48))();
      }

      *buf = 136315394;
      *&buf[4] = "handleDataContextAborted";
      *&buf[12] = 2080;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: from %s", buf, 0x16u);
      if (*(&v8 + 1))
      {
        sub_100004A34(*(&v8 + 1));
      }

      if (*(&v29 + 1))
      {
        sub_100004A34(*(&v29 + 1));
      }
    }

    memset(buf, 0, sizeof(buf));
    sub_10008A108(buf, a1[3 * a2 + 15], a1[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * a2 + 16] - a1[3 * a2 + 15]) >> 3));
    v10 = a1[8];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v11)
      {
        LODWORD(v29) = 136315138;
        *(&v29 + 4) = "handleDataContextAborted";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: In handover: switch observers to the remaining context", &v29, 0xCu);
      }

      v12 = *buf;
      v13 = *&buf[8];
      while (v12 != v13)
      {
        if (*(v12 + 16) == 1)
        {
          sub_100740A20(a1, v4, *(v12 + 8), 1);
        }

        v12 += 24;
      }
    }

    else
    {
      if (v11)
      {
        LODWORD(v29) = 136315138;
        *(&v29 + 4) = "handleDataContextAborted";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: Not in handover:", &v29, 0xCu);
      }

      v14 = *buf;
      v15 = *&buf[8];
      while (v14 != v15)
      {
        if (*(v14 + 16) == 1)
        {
          v16 = *(v14 + 8);
          if (v16)
          {
            sub_100004AA0(&v29, a1 + 4);
            if (v29)
            {
              v17 = v29 + 24;
            }

            else
            {
              v17 = 0;
            }

            v27 = v17;
            v28 = *(&v29 + 1);
            v29 = 0uLL;
            (*(*v16 + 80))(v16, a2, &v27);
            if (v28)
            {
              sub_100004A34(v28);
            }

            if (*(&v29 + 1))
            {
              sub_100004A34(*(&v29 + 1));
            }

            sub_100740A20(a1, a2, *(v14 + 8), 0);
          }
        }

        v14 += 24;
      }

      if (v6)
      {
        v18 = a1[8];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v29) = 136315138;
          *(&v29 + 4) = "handleDataContextAborted";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: handover to this:", &v29, 0xCu);
        }

        if (sub_10074C7F4(a1, v4) && sub_100741BB8(a1, v4))
        {
          (*(*a1 + 1240))(a1, v4, 0);
          v29 = 0uLL;
          v30 = 0;
          sub_10008A108(&v29, a1[3 * v4 + 15], a1[3 * v4 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * v4 + 16] - a1[3 * v4 + 15]) >> 3));
          v20 = *(&v29 + 1);
          v19 = v29;
          if (v29 != *(&v29 + 1))
          {
            do
            {
              if (*(v19 + 16) == 1)
              {
                v21 = *(v19 + 8);
                if (v21)
                {
                  sub_100004AA0(&v23, a1 + 4);
                  if (v23)
                  {
                    v22 = v23 + 24;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v25 = v22;
                  v26 = v24;
                  v23 = 0;
                  v24 = 0;
                  (*(*v21 + 64))(v21, v4, &v25);
                  if (v26)
                  {
                    sub_100004A34(v26);
                  }

                  if (v24)
                  {
                    sub_100004A34(v24);
                  }

                  sub_100740A20(a1, v4, *(v19 + 8), 0);
                }
              }

              v19 += 24;
            }

            while (v19 != v20);
            v19 = v29;
          }

          if (v19)
          {
            *(&v29 + 1) = v19;
            operator delete(v19);
          }
        }
      }
    }

    (*(*a1 + 1216))(a1, a2);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    v9 = a1[8];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "handleDataContextAborted";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }
}

void sub_10074CF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10074D044(uint64_t a1, int a2, int a3)
{
  if (validContextType())
  {
    v6 = a1 + 24 * a2;
    v7 = *(v6 + 120);
    v8 = *(v6 + 128);
    while (v7 != v8)
    {
      if ((*(v7 + 16) & 1) != 0 || (v11 = otherContextType(), sub_100741BB8(a1, v11) == 3) && (v12 = otherContextType(), sub_10008F964(a1, v12, *(v7 + 8))))
      {
        v9 = (*(**(v7 + 8) + 264))(*(v7 + 8));
        if ((v10 & 0x10000) != 0)
        {
          if ((v9 & 0x10000000000) == 0)
          {
            return 1;
          }
        }

        else if ((v9 & 0x10000000000) == 0 && !a3)
        {
          return 1;
        }
      }

      v7 += 24;
    }
  }

  else
  {
    v13 = *(a1 + 64);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v15 = 136315394;
    v16 = "hasIllegalConnectionsWhileInternationalDataRoamingNotAllowed";
    v17 = 2080;
    v18 = asString();
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v15, 0x16u);
  }

  return 0;
}

uint64_t sub_10074D1D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[14];
  if (v10)
  {
    (*(*v10 + 352))(v10, 0);
  }

  if (anyContextType())
  {
    LODWORD(a2) = 0;
    for (i = 0; i != 2; ++i)
    {
      LODWORD(a2) = (*(*a1 + 672))(a1, dword_101836038[i], a3, a4, a5) | a2;
    }

    return a2 & 1;
  }

  v12 = a1[8];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_100741BB8(a1, a2);
    *buf = 136315906;
    *&buf[4] = "deactivateDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    v64 = 2080;
    v65 = asString();
    v66 = 2080;
    v67 = asString();
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: state %s ct %s reason %s", buf, 0x2Au);
  }

  if (!validContextType())
  {
    goto LABEL_62;
  }

  v13 = sub_100741BB8(a1, a2);
  if ((v13 - 2) < 2)
  {
    v26 = a1[14];
    if (v26)
    {
      sub_100004AA0(buf, a1 + 4);
      if (*buf)
      {
        v27 = *buf + 24;
      }

      else
      {
        v27 = 0;
      }

      v57 = v27;
      v58 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v28 = (*(*v26 + 368))(v26, &v57);
      if (v58)
      {
        sub_100004A34(v58);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v28)
      {
        v29 = a1[8];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = asString();
          sub_100741BB8(a1, a2);
          v31 = asString();
          v32 = asString();
          *buf = 136316162;
          *&buf[4] = "deactivateDataSettings";
          *&buf[12] = 2080;
          *&buf[14] = v30;
          v64 = 2080;
          v65 = a4;
          v66 = 2080;
          v67 = v31;
          v68 = 2080;
          v69 = v32;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: requested, because of %s('%s'), in state %s on %s (2)", buf, 0x34u);
        }

        v33 = a1[14];
        (*(*a1 + 16))(&v55, a1);
        LOBYTE(a2) = (*(*v33 + 264))(v33, a2, &v55, a3, a5);
        v34 = v56;
        if (!v56)
        {
          return a2 & 1;
        }

LABEL_37:
        sub_100004A34(v34);
        return a2 & 1;
      }
    }

    v35 = a1[8];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = asString();
      *buf = 136315394;
      *&buf[4] = "deactivateDataSettings";
      *&buf[12] = 2080;
      *&buf[14] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#E %s: !!! deactivation without current active PDPActivator (%s)", buf, 0x16u);
    }

    (*(*a1 + 1240))(a1, a2, 0);
    (*(*a1 + 464))(a1, a2);
    goto LABEL_54;
  }

  if (v13 == 1)
  {
    v37 = a1[14];
    v38 = a1[8];
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    if (v37)
    {
      if (v39)
      {
        v40 = asString();
        sub_100741BB8(a1, a2);
        v41 = asString();
        v42 = asString();
        *buf = 136316162;
        *&buf[4] = "deactivateDataSettings";
        *&buf[12] = 2080;
        *&buf[14] = v40;
        v64 = 2080;
        v65 = a4;
        v66 = 2080;
        v67 = v41;
        v68 = 2080;
        v69 = v42;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: requested, because of %s('%s'), in state %s on %s (3)", buf, 0x34u);
        v37 = a1[14];
      }

      sub_100004AA0(buf, a1 + 4);
      if (*buf)
      {
        v43 = *buf + 24;
      }

      else
      {
        v43 = 0;
      }

      v53 = v43;
      v54 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      (*(*v37 + 48))(v37, &v53);
      if (v54)
      {
        sub_100004A34(v54);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    else if (v39)
    {
      v44 = asString();
      *buf = 136315394;
      *&buf[4] = "deactivateDataSettings";
      *&buf[12] = 2080;
      *&buf[14] = v44;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#E %s: !!! deactivation (on grab) without current active PDPActivator (%s)", buf, 0x16u);
    }

    (*(*a1 + 464))(a1, a2);
    goto LABEL_54;
  }

  if (v13)
  {
LABEL_54:
    LOBYTE(a2) = 1;
    return a2 & 1;
  }

  v14 = a1[14];
  if (!v14)
  {
    goto LABEL_58;
  }

  sub_100004AA0(buf, a1 + 4);
  if (*buf)
  {
    v15 = *buf + 24;
  }

  else
  {
    v15 = 0;
  }

  v61 = v15;
  v62 = *&buf[8];
  *buf = 0;
  *&buf[8] = 0;
  v16 = (*(*v14 + 368))(v14, &v61);
  if (v62)
  {
    sub_100004A34(v62);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v17 = a1[14];
  if (!v16)
  {
    if (v17)
    {
      v45 = a1[8];
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_62;
      }

      v46 = asString();
      *buf = 136315394;
      *&buf[4] = "deactivateDataSettings";
      *&buf[12] = 2080;
      *&buf[14] = v46;
      v23 = "#I %s: this is not our activator (%s)";
LABEL_60:
      v24 = v45;
      v25 = 22;
      goto LABEL_61;
    }

LABEL_58:
    v45 = a1[8];
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v47 = asString();
    *buf = 136315394;
    *&buf[4] = "deactivateDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = v47;
    v23 = "#I %s: activator is empty (%s)";
    goto LABEL_60;
  }

  v18 = (*(*v17 + 80))(v17, a2);
  v19 = a1[8];
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v21 = asString();
      v22 = asString();
      *buf = 136315650;
      *&buf[4] = "deactivateDataSettings";
      *&buf[12] = 2080;
      *&buf[14] = v21;
      v64 = 2080;
      v65 = v22;
      v23 = "#I %s: nothing to deactivate for %s (%s)";
      v24 = v19;
      v25 = 32;
LABEL_61:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    }

LABEL_62:
    LOBYTE(a2) = 0;
    return a2 & 1;
  }

  if (v20)
  {
    v49 = asString();
    sub_100741BB8(a1, a2);
    v50 = asString();
    v51 = asString();
    *buf = 136316162;
    *&buf[4] = "deactivateDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = v49;
    v64 = 2080;
    v65 = a4;
    v66 = 2080;
    v67 = v50;
    v68 = 2080;
    v69 = v51;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: requested, because of %s('%s'), in state %s on %s (1)", buf, 0x34u);
  }

  v52 = a1[14];
  (*(*a1 + 16))(&v59, a1);
  LOBYTE(a2) = (*(*v52 + 264))(v52, a2, &v59, a3, a5);
  v34 = v60;
  if (v60)
  {
    goto LABEL_37;
  }

  return a2 & 1;
}