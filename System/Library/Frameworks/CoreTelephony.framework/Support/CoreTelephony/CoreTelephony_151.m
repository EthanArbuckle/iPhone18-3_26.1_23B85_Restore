void sub_101314F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101314F94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 196) == a2)
  {
    (*(**(a1 + 104) + 200))(&v7);
    v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v7 + 52));
    if (*(&v7 + 1))
    {
      sub_100004A34(*(&v7 + 1));
    }

    v5 = *v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asString();
      LODWORD(v7) = 136315138;
      *(&v7 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Data Connection %s is Up", &v7, 0xCu);
    }

    (*(**(a1 + 104) + 48))(*(a1 + 104), 1, a2);
    sub_101315D6C(a1);
  }
}

void sub_1013150F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131511C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *(a1 + 196);
  if (v4)
  {
    if (v4 == 1)
    {
      std::string::operator=(a2, (a1 + 168));
    }

    goto LABEL_19;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
LABEL_12:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_13:
    (*(**(a1 + 104) + 200))(&v19);
    v15 = PersonalityIDToSimSlot();
    (*(*v13 + 128))(buf, v13, v15, 0);
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a2->__r_.__value_.__l.__data_);
    }

    *&a2->__r_.__value_.__l.__data_ = *buf;
    a2->__r_.__value_.__r.__words[2] = v22;
    HIBYTE(v22) = 0;
    buf[0] = 0;
    if (v20)
    {
      sub_100004A34(v20);
    }

    goto LABEL_17;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_17:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

LABEL_19:
  (*(**(a1 + 104) + 200))(buf);
  v16 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*buf + 52));
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v17 = *v16;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = a2->__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I IMSNetworkInterface: %s", buf, 0xCu);
  }
}

void sub_1013153CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_101315438(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_101315444(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_101315450(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v25 = 0;
  v26 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
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
  v23 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v23);
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
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_9:
  (*(**(a1 + 104) + 200))(&v23);
  (*(*v18 + 40))(&v25, v18, v23 + 24);
  if (v24)
  {
    sub_100004A34(v24);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  if (v25)
  {
    v20 = 0;
    if (!a4 && a3 && a5)
    {
      v20 = (*(*v25 + 56))();
    }
  }

  else
  {
    v20 = 0;
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  if (a4 == 1)
  {
    v21 = a2;
  }

  else
  {
    v21 = 0;
  }

  return (v21 | v20) & 1;
}

void sub_101315620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101315660(uint64_t a1, int a2)
{
  v4 = sub_101315450(a1, *(a1 + 152), *(a1 + 153), *(a1 + 160), *(a1 + 216));
  if (a2)
  {
    (*(**(a1 + 104) + 200))(v13);
    v5 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*v13 + 52));
    if (*&v13[8])
    {
      sub_100004A34(*&v13[8]);
    }

    v6 = *v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asStringBool(v4);
      v8 = asStringBool(*(a1 + 152));
      v9 = asStringBool(*(a1 + 153));
      v10 = asString();
      v11 = asStringBool(*(a1 + 216));
      *v13 = 136316162;
      *&v13[4] = v7;
      *&v13[12] = 2080;
      *&v13[14] = v8;
      v14 = 2080;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Connectivity(%s): [WiFiAvailable(%s), CellInternetAvailable(%s), CurrentIMSIRatTransportType(%s), UserAllowsIWLanOverCell(%s)]", v13, 0x34u);
    }
  }

  return v4;
}

void sub_101315800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101315828(void **a1, int a2, int a3, int a4, int a5)
{
  (*(*a1[13] + 200))(buf);
  v6 = (*(*a1[7] + 16))(a1[7], *(*buf + 52));
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asStringBool(*(a1 + 152));
    v9 = asStringBool(a2);
    v10 = asStringBool(*(a1 + 153));
    v11 = asStringBool(a3);
    v12 = asString();
    v13 = asString();
    v14 = asStringBool(*(a1 + 216));
    v15 = asStringBool(a5);
    *buf = 136316930;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    v39 = 2080;
    v40 = v10;
    v41 = 2080;
    v42 = v11;
    v43 = 2080;
    v44 = v12;
    v45 = 2080;
    v46 = v13;
    v47 = 2080;
    v48 = v14;
    v49 = 2080;
    v50 = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Change Wifi Connectivity: WiFi: %s -> %s, cellInternetAvailable: %s -> %s, iRatTransportType: %s -> %s, userAllowsIWLanOverCell: %s -> %s", buf, 0x52u);
  }

  *buf = 0;
  *&buf[8] = 0;
  ServiceMap = Registry::getServiceMap(a1[9]);
  v17 = ServiceMap;
  if ((v18 & 0x8000000000000000) != 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(ServiceMap);
  v36 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &v36);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v17);
  v23 = 0;
  v25 = 1;
LABEL_13:
  (*(*a1[13] + 200))(&v36);
  (*(*v24 + 40))(buf, v24, v36 + 24);
  if (v37)
  {
    sub_100004A34(v37);
  }

  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  v26 = "NOT Supported";
  if (*buf && (*(**buf + 56))(*buf))
  {
    v26 = "Supported";
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v27 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Over Cellular is %s", buf, 0xCu);
  }

  v28 = ((*a1)[19])(a1, 0);
  v29 = sub_101315450(a1, a2, a3, a4, a5);
  v30 = v29;
  *(a1 + 152) = a2;
  *(a1 + 153) = a3;
  result = capabilities::ct::supportsCellRadio(v29);
  if (result)
  {
    *(a1 + 40) = a4;
  }

  *(a1 + 216) = a5;
  if (v28 != v30)
  {
    return sub_101315C78(a1);
  }

  return result;
}

void sub_101315C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101315C78(void **a1)
{
  v2 = ((*a1)[19])(a1, 0);
  v3 = *a1[13];
  if (v2)
  {
    (*(v3 + 16))();
    v4 = *(*a1[13] + 32);

    return v4();
  }

  else
  {
    v6 = *(v3 + 24);

    return v6();
  }
}

void sub_101315D6C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  v15 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v15);
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
    if (!v10)
    {
LABEL_16:
      sub_100004A34(v9);
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

  v15 = 0;
  v16 = 0;
  (*(*v10 + 456))(&v15, v10);
  v11 = v15;
  if (v15)
  {
    (*(**(a1 + 104) + 200))(&v13);
    v12 = PersonalityIDToSimSlot();
    (*(*v11 + 56))(v11, v12, 17, 1, *(a1 + 196), "ims");
    if (v14)
    {
      sub_100004A34(v14);
    }
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v9)
  {
    goto LABEL_16;
  }
}

void sub_101315F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_101315F70(uint64_t a1, int a2)
{
  if (*(a1 + 196) == a2)
  {
    (*(**(a1 + 104) + 200))(&v7);
    v3 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v7 + 52));
    if (*(&v7 + 1))
    {
      sub_100004A34(*(&v7 + 1));
    }

    v4 = *v3;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = asString();
      LODWORD(v7) = 136315138;
      *(&v7 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Data Connection %s is Down", &v7, 0xCu);
    }

    *(a1 + 196) = 2;
    v6 = *(a1 + 208);
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    if (v6)
    {
      sub_100004A34(v6);
    }

    (*(**(a1 + 104) + 56))(*(a1 + 104));
    sub_101315D6C(a1);
  }
}

void sub_1013160D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013160F4(uint64_t a1, int a2, uint64_t a3)
{
  memset(&__p, 0, sizeof(__p));
  if (a2 && *a3 != *(a3 + 8))
  {
    std::string::operator=(&__p, *a3);
    (*(**(a1 + 104) + 200))(buf);
    v5 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*buf + 52));
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v6 = *v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v7 = *v7;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = p_p;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fWifiInterfaceName changes from %s to %s", buf, 0x16u);
    }

    std::string::operator=((a1 + 168), &__p);
  }

  sub_101315828(a1, a2, *(a1 + 153), *(a1 + 160), *(a1 + 216));
  if ((a2 & 1) == 0)
  {
    sub_101315F70(a1, 1);
    if (!*(a1 + 160))
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v10);
          v11 = *(a1 + 24);
          if (v11)
          {
            if (std::__shared_weak_count::lock(v11))
            {
              operator new();
            }
          }

          sub_100013CC4();
        }
      }

      sub_100013CC4();
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_101316388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013163E0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (*(a1 + 64) == a2)
  {
    (*(**(a1 + 104) + 200))(v18);
    v6 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*v18 + 52));
    if (*&v18[8])
    {
      sub_100004A34(*&v18[8]);
    }

    v7 = *v6;
    v8 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = asString();
      *v18 = 136315138;
      *&v18[4] = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Got iRatChange event with dataTransportType %s", v18, 0xCu);
    }

    if (a4 == 2)
    {
      if (capabilities::ct::supportsCellRadio(v8))
      {
        a4 = 2;
      }

      else
      {
        v10 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v11 = asString();
          v12 = asString();
          *v18 = 136315394;
          *&v18[4] = v11;
          *&v18[12] = 2080;
          *&v18[14] = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Forcing TransportType on this device: %s-->%s", v18, 0x16u);
        }

        a4 = 1;
      }
    }

    sub_101315828(a1, *(a1 + 152), *(a1 + 153), a4, *(a1 + 216));
    if (validContextType() && validContextType() && a4 != *(a1 + 196))
    {
      v13 = (*(**(a1 + 104) + 152))(*(a1 + 104));
      v14 = *v6;
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I handleiRatChange_sync: There is an active call, do nothing", v18, 2u);
        }
      }

      else
      {
        if (v15)
        {
          v16 = asString();
          v17 = asString();
          *v18 = 136315394;
          *&v18[4] = v16;
          *&v18[12] = 2080;
          *&v18[14] = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I iRat transport type type Changed to %s, but current transport type is %s, try to bring down IMS", v18, 0x16u);
        }

        (*(**(a1 + 104) + 128))(*(a1 + 104), 0);
      }
    }
  }
}

void sub_1013166BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013166E4(uint64_t a1)
{
  result = validContextType();
  if (result && *(a1 + 160) != *(a1 + 196))
  {
    (*(**(a1 + 104) + 200))(v7);
    v3 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*v7 + 52));
    if (*&v7[8])
    {
      sub_100004A34(*&v7[8]);
    }

    v4 = *v3;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = asString();
      v6 = asString();
      *v7 = 136315394;
      *&v7[4] = v5;
      *&v7[12] = 2080;
      *&v7[14] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I iRat transport type has Changed to %s, but current transport type is %s, bring down IMS", v7, 0x16u);
    }

    return (*(**(a1 + 104) + 128))(*(a1 + 104), 0);
  }

  return result;
}

void sub_10131685C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101316884(uint64_t a1)
{
  (*(**(a1 + 104) + 200))(&v4);
  sd::isSimPersonality();
  isFaceTimeAllowedOverCellByUser = DataUtils::isFaceTimeAllowedOverCellByUser();
  if (v5)
  {
    sub_100004A34(v5);
  }

  result = sub_101315828(a1, *(a1 + 152), *(a1 + 153), *(a1 + 160), isFaceTimeAllowedOverCellByUser);
  if ((isFaceTimeAllowedOverCellByUser & 1) == 0 && !*(a1 + 196))
  {
    return (*(**(a1 + 104) + 128))(*(a1 + 104), 0);
  }

  return result;
}

void sub_101316958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101316978(uint64_t a1)
{
  v2 = ConnectionAvailabilityContainer::available();
  v3 = *(a1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NOT available.";
    if (v2)
    {
      v4 = "available.";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Cellular Internet is %s", &v6, 0xCu);
  }

  return sub_101315828(a1, *(a1 + 152), v2, *(a1 + 160), *(a1 + 216));
}

void sub_101316A64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v2 = a2 + 8;
  v3 = v4;
  if (v4)
  {
    v6 = v2;
    do
    {
      v7 = *(v3 + 32);
      if ((v7 & 0x80000000) == 0)
      {
        v6 = v3;
      }

      v3 = *(v3 + ((v7 >> 28) & 8));
    }

    while (v3);
    if (v6 != v2 && *(v6 + 32) <= 0)
    {
      v8 = *(v6 + 44);
      v9 = *(a1 + 192);
      if (v8 != v9)
      {
        v10 = *(a1 + 48);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = asString();
          v13 = 2080;
          v14 = asString();
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Cellular Internet %s->%s", &v11, 0x16u);
          v9 = *(a1 + 192);
          v8 = *(v6 + 44);
        }

        *(a1 + 192) = v8;
        if (v8 == 2)
        {
          sub_101314F94(a1, 0);
        }

        else if (v9 == 2)
        {
          sub_101315F70(a1, 0);
        }
      }
    }
  }
}

void sub_101316BBC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 1) != 0 && !*(a1 + 196))
  {
    (*(**(a1 + 104) + 200))(&v6);
    v3 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v6 + 52));
    if (*(&v6 + 1))
    {
      sub_100004A34(*(&v6 + 1));
    }

    v4 = *v3;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CSIErrorString();
      LODWORD(v6) = 136315138;
      *(&v6 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Activate error for internet Pdn = %s", &v6, 0xCu);
    }

    sub_101315F70(a1, 0);
  }
}

void sub_101316CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101316D1C(uint64_t a1)
{
  (*(**(a1 + 104) + 200))(buf);
  v2 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(buf[0].__locale_ + 13));
  if (buf[1].__locale_)
  {
    sub_100004A34(buf[1].__locale_);
  }

  v3 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].__locale_) = 136315394;
    *(&buf[0].__locale_ + 4) = "IMSConnectivityHelperWifi";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "IMSConnectivityHelperWifi";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I 5wi.wifi:: ----------------- %s %s ==>> -------------------", buf, 0x16u);
  }

  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  *__src = 0u;
  memset(buf, 0, sizeof(buf));
  sub_10000D518(buf);
  v4 = sub_10000C030(buf);
  v5 = sub_10000C030(v4);
  (*(**(a1 + 104) + 200))(__p);
  v6 = *__p + 24;
  v7 = *(*__p + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(*__p + 32);
  }

  if (v8 < 0)
  {
    v6 = *(*__p + 24);
  }

  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = "<invalid>";
  }

  strlen(v9);
  v10 = sub_10000C030(v5);
  v11 = sub_10000C030(v10);
  v12 = sub_10000C030(v11);
  v13 = sub_10000C030(v12);
  v14 = asStringBool(*(a1 + 152));
  strlen(v14);
  v15 = sub_10000C030(v13);
  v16 = sub_10000C030(v15);
  v17 = sub_10000C030(v16);
  v18 = sub_10000C030(v17);
  v19 = asStringBool(*(a1 + 153));
  strlen(v19);
  v20 = sub_10000C030(v18);
  v21 = sub_10000C030(v20);
  v22 = sub_10000C030(v21);
  v23 = sub_10000C030(v22);
  v24 = asString();
  strlen(v24);
  v25 = sub_10000C030(v23);
  v26 = sub_10000C030(v25);
  v27 = sub_10000C030(v26);
  v28 = sub_10000C030(v27);
  v29 = sub_10000C030(v28);
  v30 = sub_10000C030(v29);
  v31 = sub_10000C030(v30);
  sub_10000C030(v31);
  v32 = std::ostream::operator<<();
  v33 = sub_10000C030(v32);
  v34 = sub_10000C030(v33);
  v35 = sub_10000C030(v34);
  v36 = asString();
  strlen(v36);
  v37 = sub_10000C030(v35);
  v38 = sub_10000C030(v37);
  v39 = sub_10000C030(v38);
  v40 = sub_10000C030(v39);
  v41 = asStringBool(*(a1 + 216));
  strlen(v41);
  v42 = sub_10000C030(v40);
  std::ios_base::getloc((v42 + *(*v42 - 24)));
  v43 = std::locale::use_facet(v52, &std::ctype<char>::id);
  (v43->__vftable[2].~facet_0)(v43, 10);
  std::locale::~locale(v52);
  std::ostream::put();
  std::ostream::flush();
  if (*&__p[8])
  {
    sub_100004A34(*&__p[8]);
  }

  v44 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    if ((BYTE8(v58) & 0x10) != 0)
    {
      v46 = v58;
      if (v58 < __src[1])
      {
        *&v58 = __src[1];
        v46 = __src[1];
      }

      locale = __src[0];
    }

    else
    {
      if ((BYTE8(v58) & 8) == 0)
      {
        v45 = 0;
        v51 = 0;
LABEL_28:
        __p[v45] = 0;
        v48 = __p;
        if (v51 < 0)
        {
          v48 = *__p;
        }

        LODWORD(v52[0].__locale_) = 136315138;
        *(&v52[0].__locale_ + 4) = v48;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I 5wi.wifi:: %s", v52, 0xCu);
        if (v51 < 0)
        {
          operator delete(*__p);
        }

        v44 = *v2;
        goto LABEL_33;
      }

      locale = buf[3].__locale_;
      v46 = *(&v54 + 1);
    }

    v45 = v46 - locale;
    if ((v46 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v45 >= 0x17)
    {
      operator new();
    }

    v51 = v46 - locale;
    if (v45)
    {
      memmove(__p, locale, v45);
    }

    goto LABEL_28;
  }

LABEL_33:
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315394;
    *&__p[4] = "IMSConnectivityHelperWifi";
    *&__p[12] = 2080;
    *&__p[14] = "IMSConnectivityHelperWifi";
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I 5wi.wifi:: ------------ <<== %s %s ------------------------", __p, 0x16u);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[1]);
  }

  std::locale::~locale(&buf[2]);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_101317454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, char a15, uint64_t a16)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_10131752C(void *a1)
{
  *a1 = off_101F2DCB0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101317578(void *a1)
{
  *a1 = off_101F2DCB0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101317650(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F2DCB0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101317688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101317698(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

const char *sub_1013176D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 1);
        if (v5 < 0)
        {
          v7 = "5wi.wifi.x.X";
          goto LABEL_12;
        }

        v6 = *v4;
        if ((v6 - 2) < 2)
        {
          v7 = "5wi.wifi.M";
LABEL_12:
          sub_100004A34(v3);
          return v7;
        }

        if (v6 == 1)
        {
          v7 = off_101F2DD10[v5 & 0xF];
          goto LABEL_12;
        }
      }

      v7 = "5wi.wifi.?";
      goto LABEL_12;
    }
  }

  return "5wi.wifi.?";
}

uint64_t sub_101317778(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101317890(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[4], v1, sub_101317964);
  __cxa_rethrow();
}

void sub_1013178D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101317924(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101317964(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_101317990(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 32))
      {
LABEL_14:
        sub_100004A34(v5);
        goto LABEL_15;
      }

      ServiceMap = Registry::getServiceMap(v3[9]);
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
          goto LABEL_12;
        }
      }

      else
      {
        v14 = 0;
      }

      std::mutex::unlock(v7);
      v13 = 0;
      v15 = 1;
LABEL_12:
      v16 = (*(*v14 + 16))(v14);
      (*(*v3 + 33))(v3, v16, v1 + 8);
      if ((v15 & 1) == 0)
      {
        sub_100004A34(v13);
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  sub_101317B4C(&v19);
  return sub_1000049E0(&v18);
}

void sub_101317B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  sub_100004A34(v2);
  sub_101317B4C(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101317B4C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = (v1 + 8);
    sub_1000087B4(&v3);
    operator delete();
  }

  return result;
}

uint64_t *sub_101317BB8(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        v6 = *(v3 + 104);
        v10 = 2;
        v11 = 0;
        (*(*v6 + 72))(v6, &v10);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v9);
  return sub_1000049E0(&v8);
}

void sub_101317C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101317C84(uint64_t **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        sub_101315F70(v3, *(v3 + 196));
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_101317CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101317D20(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 40))
      {
        v6 = *(v3 + 104);
        __p = 1;
        v12 = *(v1 + 8);
        (*(*v6 + 72))(v6, &__p);
        v7 = *(v3 + 104);
        sub_10000501C(&__p, "");
        (*(*v7 + 96))(v7, v1 + 16, 1, &__p);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        sub_101315C78(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_101317E70(&v10);
  return sub_1000049E0(&v9);
}

void sub_101317E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_100004A34(v17);
  sub_101317E70(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_101317E70(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = (v1 + 16);
    sub_1000087B4(&v3);
    operator delete();
  }

  return result;
}

uint64_t *sub_101317EDC(uint64_t **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1] && *(v3 + 192) == 2)
      {
        sub_101314474(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_101317F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101317F80(Registry **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
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
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
  if (!v13)
  {
    std::mutex::unlock(v8);
    return;
  }

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
LABEL_31:
      sub_100004A34(v14);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v8);
    if (!v15)
    {
      return;
    }
  }

  cf = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v28 = *(a2 + 16);
  }

  (*(*v15 + 24))(v24, v15, __p, a3, @"EnhancedThroughput", 0, 4);
  sub_10006DD00(&cf, v24);
  sub_10000A1EC(v24);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (cf)
  {
    v16 = CFGetTypeID(cf);
    if (v16 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(cf);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
          if (ValueAtIndex)
          {
            v20 = CFGetTypeID(ValueAtIndex);
            if (v20 == CFStringGetTypeID())
            {
              v24[0] = 0;
              v24[1] = 0;
              v25 = 0;
              __p[0] = 0;
              __p[1] = 0;
              v28 = 0;
              ctu::cf::assign();
              *v24 = *__p;
              v25 = v28;
              v21 = a4[1];
              if (v21 >= a4[2])
              {
                v23 = sub_10016B30C(a4, v24);
              }

              else
              {
                if (SHIBYTE(v25) < 0)
                {
                  sub_100005F2C(a4[1], v24[0], v24[1]);
                }

                else
                {
                  v22 = *v24;
                  *(v21 + 16) = v25;
                  *v21 = v22;
                }

                v23 = v21 + 24;
              }

              a4[1] = v23;
              if (SHIBYTE(v25) < 0)
              {
                operator delete(v24[0]);
              }
            }
          }
        }
      }
    }
  }

  sub_100010250(&cf);
  if (v14)
  {
    goto LABEL_31;
  }
}

void sub_101318208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_100010250(&a15);
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

void sub_1013182B0(Registry **a1, uint64_t a2, uint64_t a3, __int128 **a4)
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
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
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
        goto LABEL_36;
      }

      goto LABEL_10;
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
    goto LABEL_36;
  }

LABEL_10:
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v18 = *a4;
  v17 = a4[1];
  while (v18 != v17)
  {
    v23 = 0;
    if (*(v18 + 23) < 0)
    {
      sub_100005F2C(v21, *v18, *(v18 + 1));
    }

    else
    {
      v19 = *v18;
      v22 = *(v18 + 2);
      *v21 = v19;
    }

    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(__dst, v21[0], v21[1]);
    }

    else
    {
      *__dst = *v21;
      v27 = v22;
    }

    v25 = 0;
    if (SHIBYTE(v27) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v29 = v27;
    }

    v30 = 0;
    if (ctu::cf::convert_copy())
    {
      v20 = v25;
      v25 = v30;
      v31 = v20;
      sub_100005978(&v31);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    v23 = v25;
    v25 = 0;
    sub_100005978(&v25);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    CFArrayAppendValue(Mutable, v23);
    sub_100005978(&v23);
    v18 = (v18 + 24);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v29 = *(a2 + 16);
  }

  (*(*v15 + 16))(v15, __p, a3, Mutable, @"EnhancedThroughput", 0, 4, 0);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000279DC(&Mutable);
LABEL_36:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_101318570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_1000279DC(&a17);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(a1);
}

void sub_101318618(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

ctu::OsLogLogger *sub_1013186A0(ctu::OsLogLogger *a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "vvm.mdl");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger(a1, v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v4 = a2[1];
  *(a1 + 3) = *a2;
  *(a1 + 4) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_101318730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void sub_101318754(ctu::OsLogLogger *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

void sub_1013187A0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20[0] = @"com.apple.voicemail.imap";
  v20[1] = @"BeaconAddress";
  v18 = 0;
  v19 = 0;
  __p = 0;
  sub_10005B328(&__p, v20, &v21, 2uLL);
  *a3 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 24));
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
  v20[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v20);
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
  (*(*v14 + 104))(&v16, v14, a2, 1, &__p, 0, 0);
  sub_100060DE8(a3, &v16);
  sub_10000A1EC(&v16);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_101318954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12)
{
  sub_10000A1EC(&a10);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1013189AC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_101318A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_101318A58(va);
  _Unwind_Resume(a1);
}

ctu::OsLogLogger **sub_101318A58(ctu::OsLogLogger **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_101318754(v2);
    operator delete();
  }

  return a1;
}

void sub_101318AA4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

ctu::OsLogLogger *sub_101318ADC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_101318754(result);

    operator delete();
  }

  return result;
}

uint64_t sub_101318B20(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void RegistrationController::setupEvents_sync(dispatch_object_t *this, group_session a2)
{
  v3 = this + 1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1000876C8;
  aBlock[3] = &unk_101F2E038;
  aBlock[4] = this + 1;
  aBlock[5] = sub_100087714;
  aBlock[6] = 0;
  v5 = _Block_copy(aBlock);
  sub_100004AA0(v4, v3);
  sub_10070F24C(&v8, &v5, this[3]);
  sub_10070F294(&v7, &v8);
  sub_1013210A4(&v7, v4[0], v4[1]);
}

void sub_10131AE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131B0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  aBlock[6] = a5;
  v8 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10132159C;
  aBlock[3] = &unk_101F2E168;
  aBlock[4] = a2;
  aBlock[5] = a4;
  v8 = _Block_copy(aBlock);
  sub_100004AA0(v6, a2);
  sub_10070F24C(v9, &v8, *(a2 + 16));
  sub_10070F294(v10, v9);
  sub_1013210A4(v10, v6[0], v6[1]);
}

void sub_10131B1FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10070F9E8(va);
  sub_10004F058(a1);
}

void sub_10131B22C(RegistrationController *a1)
{
  v2 = *(a1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I New Call in ECBM, exit ECBM mode", v3, 2u);
  }

  RegistrationController::setECBM_sync(a1, 0);
}

void sub_10131B29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  aBlock[6] = a5;
  v9 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1013215E8;
  aBlock[3] = &unk_101F2E188;
  aBlock[4] = a2;
  aBlock[5] = a4;
  v9 = _Block_copy(aBlock);
  sub_100004AA0(&v6, a2);
  sub_1008F20E0(v10, &v9, *(a2 + 16));
  sub_1008F2128(v11, v10);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10131B4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10131B560(uint64_t a1)
{
  if ((*(**(a1 + 104) + 160))(*(a1 + 104)))
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Already sent baseband online request, initiating network attach", buf, 2u);
    }

    return (*(**(a1 + 232) + 120))(*(a1 + 232));
  }

  else
  {
    (*(**(a1 + 104) + 152))(*(a1 + 104), 1);
    result = subscriber::makeSimSlotRange();
    v4 = v6;
    if (v6 != v7)
    {
      do
      {
        result = v8(*v4);
        if (result)
        {
          break;
        }

        ++v4;
      }

      while (v4 != v7);
      if (v4 != v7)
      {
        RegistrationController::sendVolteEnabledSettingToBaseband_sync(a1, *v4);
        sub_100004AA0(buf, (a1 + 8));
        v5 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v5);
        }

        operator new();
      }
    }
  }

  return result;
}

void sub_10131B7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10131B7E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Radio has been reset", buf, 2u);
  }

  result = (*(**(a1 + 120) + 56))(*(a1 + 120));
  v4 = *(a1 + 64);
  if (v4 != a1 + 72)
  {
    (*(**(v4 + 40) + 560))(*(v4 + 40), 1, 11);
    v5 = *(v4 + 48);
    v6[0] = *(v4 + 40);
    v6[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    RegistrationController::setRegistrationStatus_sync(a1, v6);
  }

  return result;
}

void sub_10131B930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131B948(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Radio has been disabled", buf, 2u);
  }

  v3 = *(a1 + 64);
  if (v3 != a1 + 72)
  {
    (*(**(v3 + 40) + 560))(*(v3 + 40), 1, 11);
    v4 = *(v3 + 48);
    v5[0] = *(v3 + 40);
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    RegistrationController::setRegistrationStatus_sync(a1, v5);
  }
}

void sub_10131BA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10131BA84(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Baseband is switched on", v5, 2u);
  }

  v3 = *(a1 + 104);
  v6[0] = off_101F2F658;
  v6[1] = a1;
  v6[3] = v6;
  (*(*v3 + 136))(v3, 1, v6);
  return sub_10002B644(v6);
}

void sub_10131BB70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10131BB84(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Baseband is switched off", v5, 2u);
  }

  v3 = *(a1 + 104);
  v6[0] = off_101F2F6D8;
  v6[1] = a1;
  v6[3] = v6;
  (*(*v3 + 136))(v3, 0, v6);
  return sub_10002B644(v6);
}

void sub_10131BC70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

void sub_10131BCAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = CSIBOOLAsString(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I LTE preference is being changed to %s", &v5, 0xCu);
  }

  RegistrationController::sendLteEnabledSetting_sync(a1, 1, a2, 2);
}

void sub_10131BD78(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = (a1 + 72);
  if (v2 != (a1 + 72))
  {
    do
    {
      (*(*v2[5] + 48))(v2[5]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  (*(**(a1 + 104) + 32))(*(a1 + 104));
  (*(**(a1 + 296) + 56))(*(a1 + 296));
  (*(**(a1 + 120) + 64))(*(a1 + 120));
  v7 = *(a1 + 40);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v9 = CSIBOOLAsString(*(a1 + 376));
    *buf = 136315138;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Enable only home network: %s", buf, 0xCu);
  }

  v10 = *(a1 + 1032);
  if (v10 != (a1 + 1040))
  {
    do
    {
      v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v10 + 7));
      v8 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        v12 = *(v10 + 32);
        *buf = 67109120;
        LODWORD(v26) = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I 5G SA Capability: %d", buf, 8u);
      }

      v13 = v10[1];
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
          v14 = v10[2];
          v6 = *v14 == v10;
          v10 = v14;
        }

        while (!v6);
      }

      v10 = v14;
    }

    while (v14 != (a1 + 1040));
  }

  if (capabilities::ct::supportsVoNR(v8))
  {
    v15 = *(a1 + 976);
    if (v15 != (a1 + 984))
    {
      do
      {
        v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v15 + 7));
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = CSIBOOLAsString(*(v15 + 32));
          *buf = 136315138;
          v26 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I BB has LTE coverage info: %s", buf, 0xCu);
        }

        v18 = v15[1];
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
            v19 = v15[2];
            v6 = *v19 == v15;
            v15 = v19;
          }

          while (!v6);
        }

        v15 = v19;
      }

      while (v19 != (a1 + 984));
    }
  }

  if (*(a1 + 1416))
  {
    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I NR entitlement status:", buf, 2u);
    }

    v21 = *(a1 + 1400);
    if (v21 != (a1 + 1408))
    {
      do
      {
        v22 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v21 + 7));
        rest::NREntitlementStatus::dumpState((v21 + 4), v22);
        v23 = v21[1];
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
            v24 = v21[2];
            v6 = *v24 == v21;
            v21 = v24;
          }

          while (!v6);
        }

        v21 = v24;
      }

      while (v24 != (a1 + 1408));
    }
  }
}

void sub_10131C1B4(uint64_t a1, int a2)
{
  v2 = *(a1 + 480);
  if (v2 == a2)
  {
    return;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = asString();
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I CMAS camp only mode has changed from %s to %s", buf, 0x16u);
    v2 = *(a1 + 480);
  }

  if (a2 != 2)
  {
    if (a2)
    {
      if ((v2 | 2) != 2)
      {
        goto LABEL_42;
      }
    }

    else if (v2 && v2 != 2)
    {
      if (v2 == 3)
      {
        v6 = *(a1 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = asString();
          *buf = 136315138;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I CMAS camp only mode is already %s", buf, 0xCu);
        }

        subscriber::makeSimSlotRange();
        v8 = *buf;
        v9 = *&buf[8];
        if (*buf != *&buf[8])
        {
          v10 = *&buf[16];
          do
          {
            if (v10(*v8))
            {
              break;
            }

            ++v8;
          }

          while (v8 != v9);
          if (v8 != *&buf[8])
          {
            RegistrationController::handleSetCampOnlyModeResult(a1);
          }
        }

        return;
      }

LABEL_42:
      RegistrationController::sendCampOnlyModeSetting_sync(a1);
      return;
    }

    goto LABEL_29;
  }

  if (!v2 || v2 == 2)
  {
LABEL_29:
    subscriber::makeSimSlotRange();
    v16 = *buf;
    v17 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v18 = *&buf[16];
      do
      {
        if (v18(*v16))
        {
          break;
        }

        ++v16;
      }

      while (v16 != v17);
      v19 = *&buf[8];
      while (v16 != v19)
      {
        v23 = *v16;
        v20 = sub_100007DEC(a1 + 64, &v23);
        v21 = v20[1];
        v22[0] = *v20;
        v22[1] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RegistrationController::reevaluateDataMode_sync(a1, v22);
        if (v21)
        {
          sub_100004A34(v21);
        }

        do
        {
          ++v16;
        }

        while (v16 != v17 && (v18(*v16) & 1) == 0);
      }
    }

    return;
  }

  if (v2 != 1)
  {
    goto LABEL_42;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asString();
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I CMAS camp only mode is already %s", buf, 0xCu);
  }

  subscriber::makeSimSlotRange();
  v13 = *buf;
  v14 = *&buf[8];
  if (*buf != *&buf[8])
  {
    v15 = *&buf[16];
    do
    {
      if (v15(*v13))
      {
        break;
      }

      ++v13;
    }

    while (v13 != v14);
    if (v13 != *&buf[8])
    {
      RegistrationController::handleSetCampOnlyModeResult(a1);
    }
  }
}

void sub_10131C518(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131C538(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 568))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v4 = *(a1 + 552);
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
    v4 = *(a1 + 552);
  }

  v11 = (a1 + 560);
  if (v4 != (a1 + 560))
  {
    v12 = a2 + 1;
    while (1)
    {
      v13 = *v12;
      v14 = *(v4 + 7);
      if (!*v12)
      {
        break;
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
      if (v15 == v12 || v14 < *(v15 + 7))
      {
        break;
      }

      v16 = *(v4 + 8);
      if (*(v15 + 8) != v16)
      {
        goto LABEL_32;
      }

LABEL_48:
      v22 = v4[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v4[2];
          v6 = *v23 == v4;
          v4 = v23;
        }

        while (!v6);
      }

      v4 = v23;
      if (v23 == v11)
      {
        return;
      }
    }

    v16 = *(v4 + 8);
LABEL_32:
    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 7));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      asStringUiMask(__p, v16);
      v18 = v25 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I DataUiModifier changed to %{public}s", buf, 0xCu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    RegistrationController::getModel_sync(a1, v14, __p);
    v19 = __p[0];
    if (__p[0])
    {
      v20 = __p[1];
      *buf = *__p;
      if (__p[1])
      {
        atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
      }

      RegistrationController::reevaluateDataMode_sync(a1, buf);
      if (v20)
      {
        sub_100004A34(v20);
      }

      (*(*v19 + 880))(v19, v16);
    }

    else
    {
      v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v14);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find model for updating DataUiModifier", buf, 2u);
      }
    }

    if (__p[1])
    {
      sub_100004A34(__p[1]);
    }

    goto LABEL_48;
  }
}

void sub_10131C8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131C8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 88);
  v6 = *(a2 + 104);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v15 = *(a2 + 16);
  }

  v7 = *(a2 + 24);
  sub_10002D960(v8, (a2 + 32));
  (*(*v5 + 248))(v5, v6, __dst, v7, v8, a3);
  if (v13 == 1)
  {
    if (v12 < 0)
    {
      operator delete(__p);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10131C9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100EBBF84(&a10);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10131CA04(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 136));
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v67 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_84;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v67 = v10;
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_10:
    v13 = *(a1 + 664);
    if (v13 == (a1 + 672))
    {
      goto LABEL_84;
    }

    v69 = a2 + 8;
    v66 = v12;
    v68 = a2;
    while (1)
    {
      v80 = 0;
      v81 = 0;
      (**v11)(&v80, v11, (v13 + 4));
      if (!v80 || *(v80 + 49))
      {
        goto LABEL_76;
      }

      v70 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v80 + 52));
      v14 = sub_100007A6C(a2, v13 + 4);
      v15 = v14;
      if (v69 != v14)
      {
        break;
      }

      v39 = *v70;
      if (os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
      {
        v40 = (v80 + 24);
        v41 = *(v80 + 47);
        v42 = v41;
        if ((v41 & 0x80u) != 0)
        {
          v41 = *(v80 + 32);
        }

        if (v42 < 0)
        {
          v40 = *(v80 + 24);
        }

        if (v41)
        {
          v43 = v40;
        }

        else
        {
          v43 = "<invalid>";
        }

        v44 = sd::asString();
        v45 = sd::asString();
        *buf = 136315650;
        *&buf[4] = v43;
        *&buf[12] = 2080;
        *&buf[14] = v44;
        *&buf[22] = 2080;
        *&buf[24] = v45;
        v46 = v39;
        v47 = "#I IMS feature state added for Personality: %s - cell [%s] wifi [%s]";
        v48 = 32;
        goto LABEL_74;
      }

LABEL_75:
      RegistrationController::sendVolteEnabledSettingToBaseband_sync(a1, *(v80 + 52));
LABEL_76:
      if (v81)
      {
        sub_100004A34(v81);
      }

      v63 = v13[1];
      if (v63)
      {
        do
        {
          v64 = v63;
          v63 = *v63;
        }

        while (v63);
      }

      else
      {
        do
        {
          v64 = v13[2];
          v65 = *v64 == v13;
          v13 = v64;
        }

        while (!v65);
      }

      v13 = v64;
      if (v64 == (a1 + 672))
      {
        goto LABEL_84;
      }
    }

    v16 = *(v14 + 56);
    v17 = *(v13 + 14);
    if (v16 == v17 && *(v14 + 60) == *(v13 + 15) && *(v14 + 64) == *(v13 + 64))
    {
      goto LABEL_76;
    }

    v18 = *v70;
    v19 = os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      v20 = (v80 + 24);
      v21 = *(v80 + 47);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v80 + 32);
      }

      if (v22 < 0)
      {
        v20 = *(v80 + 24);
      }

      if (v21)
      {
        v23 = v20;
      }

      else
      {
        v23 = "<invalid>";
      }

      v24 = sd::asString();
      v25 = sd::asString();
      v26 = asStringBool(*(v15 + 64));
      v27 = sd::asString();
      v28 = sd::asString();
      v29 = asStringBool(*(v13 + 64));
      *buf = 136316674;
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = v24;
      *&buf[22] = 2080;
      *&buf[24] = v25;
      v87 = 2080;
      v88 = v26;
      v89 = 2080;
      v90 = v27;
      v91 = 2080;
      v92 = v28;
      v93 = 2080;
      v94 = v29;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I IMS feature state for Personality: %s changed from cell [%s] wifi [%s] 5gVoice: %s to cell [%s] wifi [%s] 5gVoice: %s", buf, 0x48u);
      v16 = *(v15 + 56);
      v17 = *(v13 + 14);
      v12 = v66;
      a2 = v68;
    }

    if (v16 == v17)
    {
      goto LABEL_66;
    }

    if (capabilities::ct::supports5G(v19))
    {
LABEL_48:
      v51 = *v70;
      if (os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I IMS Pref adjustment for IMS feature state enabled", buf, 2u);
      }

      v78 = 0;
      v79 = 0;
      RegistrationController::getModel_sync(a1, *(v80 + 52), &v78);
      if (v78)
      {
        memset(buf, 0, sizeof(buf));
        (*(*v78 + 760))(buf);
        v75 = 0;
        v76 = 0;
        v77 = 0;
        sub_1003647D4(&v75, *buf, *&buf[8], (*&buf[8] - *buf) >> 2);
        v52 = RegistrationController::checkAndSetSmsServiceMask_sync(a1, *(v80 + 52), &v75, *&buf[24]);
        v53 = *v70;
        if (os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
        {
          v54 = sd::asString();
          v55 = sd::asString();
          *v82 = 136315394;
          v83 = v54;
          v84 = 2080;
          v85 = v55;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I IMS Pref service mask is adjusted: [%s] -> [%s]", v82, 0x16u);
        }

        v56 = *(a1 + 344);
        v57 = *(v80 + 52);
        v73 = 0;
        v74 = 0;
        __p = 0;
        sub_1003647D4(&__p, v75, v76, (v76 - v75) >> 2);
        (*(*v56 + 96))(v56, v57, &__p, v52);
        if (__p)
        {
          v73 = __p;
          operator delete(__p);
        }

        if (v75)
        {
          v76 = v75;
          operator delete(v75);
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else
      {
        v58 = *v70;
        if (os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I No model is found", buf, 2u);
        }
      }

      v19 = v79;
      if (v79)
      {
        sub_100004A34(v79);
      }

      goto LABEL_66;
    }

    v30 = Registry::getServiceMap(*(a1 + 136));
    v31 = v30;
    if (v32 < 0)
    {
      v33 = (v32 & 0x7FFFFFFFFFFFFFFFLL);
      v34 = 5381;
      do
      {
        v32 = v34;
        v35 = *v33++;
        v34 = (33 * v34) ^ v35;
      }

      while (v35);
    }

    std::mutex::lock(v30);
    *buf = v32;
    v36 = sub_100009510(&v31[1].__m_.__sig, buf);
    if (v36)
    {
      v37 = v36[3];
      v38 = v36[4];
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v31);
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v38);
LABEL_46:
        isWatch = GestaltUtilityInterface::isWatch(v37);
        v50 = isWatch;
        if (v38)
        {
          sub_100004A34(v38);
          a2 = v68;
          if (v50)
          {
            goto LABEL_48;
          }
        }

        else
        {
          a2 = v68;
          if (isWatch)
          {
            goto LABEL_48;
          }
        }

        v59 = *v70;
        v19 = os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I IMS Pref adjustment for IMS feature state is not enabled", buf, 2u);
        }

LABEL_66:
        if (!capabilities::ct::supportsVoNR(v19) || (v60 = *(v13 + 64), *(v15 + 64) == v60))
        {
          if (v16 == v17)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        v61 = *v70;
        if (os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
        {
          v62 = "dis";
          if (v60)
          {
            v62 = "en";
          }

          *buf = 136315138;
          *&buf[4] = v62;
          v46 = v61;
          v47 = "#I IMS feature VoNR %sabled";
          v48 = 12;
LABEL_74:
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v47, buf, v48);
          goto LABEL_75;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v37 = 0;
    }

    std::mutex::unlock(v31);
    v38 = 0;
    goto LABEL_46;
  }

LABEL_84:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v67);
  }
}

void sub_10131D200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v37 = *(v35 - 176);
  if (v37)
  {
    *(v35 - 168) = v37;
    operator delete(v37);
  }

  if (a33)
  {
    sub_100004A34(a33);
  }

  if (a35)
  {
    sub_100004A34(a35);
  }

  if ((a19 & 1) == 0)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131D2BC()
{
  if (v0)
  {
    JUMPOUT(0x10131D2B4);
  }

  JUMPOUT(0x10131D2ACLL);
}

void sub_10131D2C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 536);
  v2 = *(a1 + 528);
  if (v2 != v3)
  {
    do
    {
      v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *v2);
      if ((subscriber::isSimAbsent() & 1) != 0 || subscriber::isSimUnreadable())
      {
        (*(**(a1 + 344) + 168))(*(a1 + 344), *v2, 0, 11);
        (*(**(a1 + 344) + 160))(*(a1 + 344), *v2, 0, 11, 0, 0);
        v7 = *v6;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Clearing network_rejects", v27, 2u);
        }
      }

      v2 += 42;
    }

    while (v2 != v3);
    v8 = *(a1 + 528);
    v9 = *(a1 + 536);
    if (v8 != v9)
    {
      v10 = *a2;
      v11 = *(a2 + 8);
      while (*v8 != 1)
      {
        v8 += 42;
        if (v8 == v9)
        {
          goto LABEL_35;
        }
      }

      v12 = v8[3];
      while (v10 != v11)
      {
        if (*v10 == 1)
        {
          if (v10[3] == v12)
          {
            goto LABEL_35;
          }

          break;
        }

        v10 += 42;
      }

      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = subscriber::asString();
        *v27 = 136315138;
        *&v27[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Handling SIM tray state (%s)", v27, 0xCu);
      }

      if (v12 == 1)
      {
        v16 = *(a1 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Event was SIM tray removal", v27, 2u);
        }

        *v27 = 1;
        v17 = sub_100007DEC(a1 + 64, v27);
        v19 = *v17;
        v18 = v17[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(**(a1 + 168) + 168))(*(a1 + 168), 1) == 1)
        {
          (*(*v19 + 560))(v19, 6, 11);
          *v27 = v19;
          *&v27[8] = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RegistrationController::setRegistrationStatus_sync(a1, v27);
        }

        v20 = *(a1 + 40);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Bundle type was not SIM based; not clearing registration status or notifying clients even though we may be MM roaming", v27, 2u);
        }

        if (v18)
        {
          sub_100004A34(v18);
        }
      }

      else if (v12 == 3)
      {
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Event was SIM tray inserted with no SIM, retaining current registration information", v27, 2u);
        }
      }
    }

LABEL_35:
    if (*(a1 + 536) == *(a1 + 528))
    {
      sub_1002030E0();
    }

    if (subscriber::isSimReady())
    {
      v21 = *(a1 + 640);
      if (v21)
      {
        v22 = a1 + 640;
        do
        {
          if (*(v21 + 28) >= 1)
          {
            v22 = v21;
          }

          v21 = *(v21 + 8 * (*(v21 + 28) < 1));
        }

        while (v21);
        if (v22 != a1 + 640 && *(v22 + 28) <= 1 && *(v22 + 32) == 1)
        {
          v23 = (*(**(a1 + 104) + 88))(*(a1 + 104));
          v24 = *(a1 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = sub_100072578(1u);
            v26 = CSIBOOLAsString(v23);
            *v27 = 136315394;
            *&v27[4] = v25;
            *&v27[12] = 2080;
            *&v27[14] = v26;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I SIM became ready and device type is %s, ECBM active: %s", v27, 0x16u);
          }

          if (v23)
          {
            RegistrationController::setECBM_sync(a1, 0);
          }
        }
      }
    }
  }
}

void sub_10131D7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131D7E4(uint64_t a1, RatSelectionType *this, _BYTE *a3)
{
  v15 = 0;
  v16 = 0;
  SimSlot = RatSelectionType::getSimSlot(this);
  Model_sync = RegistrationController::getModel_sync(a1, SimSlot, &v15);
  v8 = v15;
  if (v15)
  {
    if (capabilities::ct::supports5G(Model_sync))
    {
      v9 = 211;
    }

    else
    {
      v9 = 19;
    }

    *buf = (*(*v8 + 600))(v8);
    if (v9 == RatSelectionType::getSelection(buf) && v9 == RatSelectionType::getSelection(this))
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Requested RAT selection already matches current GWL selection", buf, 2u);
      }

      *a3 = 1;
    }

    else
    {
      v13 = v8;
      v14 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a3 = RegistrationController::setRatSelection_sync(a1, &v13, this);
      if (v14)
      {
        sub_100004A34(v14);
      }
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      RatSelectionType::getSimSlot(this);
      v12 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not find %s model for RAT selection request", buf, 0xCu);
    }

    *a3 = 0;
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_10131D9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_10131D9FC(uint64_t a1, uint64_t a2)
{
  if ((rest::operator==() & 1) == 0)
  {
    v4 = *(a1 + 576);
    if (v4 != (a1 + 584))
    {
      v5 = (a2 + 8);
      while (1)
      {
        (*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 8));
        v6 = *v5;
        v7 = *(v4 + 8);
        if (!*v5)
        {
          goto LABEL_13;
        }

        v8 = v5;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 == v5 || v7 < *(v8 + 8))
        {
          goto LABEL_13;
        }

        if ((rest::operator==() & 1) == 0)
        {
          break;
        }

LABEL_60:
        v29 = v4[1];
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
            v30 = v4[2];
            v31 = *v30 == v4;
            v4 = v30;
          }

          while (!v31);
        }

        v4 = v30;
        if (v30 == (a1 + 584))
        {
          return;
        }
      }

      v7 = *(v4 + 8);
LABEL_13:
      v39 = v7;
      v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), v7);
      v37 = 0;
      v38 = 0;
      Model_sync = RegistrationController::getModel_sync(a1, v7, &v37);
      v11 = v37;
      if (v37)
      {
        if (*(v4 + 40))
        {
          v12 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = asString();
            *buf = 136315138;
            *&buf[4] = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle changed: %s", buf, 0xCu);
          }

          v14 = (*(*v11 + 872))(v11);
          if (capabilities::ct::supports5G(v14))
          {
            RegistrationController::maybeEnable5GAutoOnCarrierBundleChange_sync(a1);
            RegistrationController::maybeEnable5GStandaloneOnCarrierBundleChange_sync(a1);
          }

          if (*(v4 + 40) == 2)
          {
            if (((*(*v11 + 152))(v11) & 1) != 0 || (*(*v11 + 536))(v11))
            {
              v15 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Carrier has changed, and the device is CS or PS attached, sending out the New Serving Network event", buf, 2u);
              }

              v35 = v11;
              v36 = v38;
              if (v38)
              {
                atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              RegistrationController::handleNewServingNetwork_sync(a1, &v35);
              v16 = v36;
              if (v36)
              {
                sub_100004A34(v36);
              }
            }

            else
            {
              (*(*v11 + 400))(v11);
              v16 = (*(*v11 + 408))(v11);
            }

            if (capabilities::ct::supports5G(v16))
            {
              v19 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v20 = v4 + 6;
                if (*(v4 + 71) < 0)
                {
                  v20 = v4[6];
                }

                *buf = 136446210;
                *&buf[4] = v20;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle %{public}s changed. Sending down 5G preference with roaming", buf, 0xCu);
              }

              RegistrationController::send5GEnabledSettingFromPreference_sync(a1, v7, 3);
            }
          }

          (*(*v11 + 672))(buf, v11);
          (*(**buf + 104))(*buf);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v50 = 0;
          __p = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          *buf = 0u;
          v41 = 0u;
          Model_sync = (*(*v11 + 472))(v11);
          if (Model_sync <= 8 && ((1 << Model_sync) & 0x138) != 0)
          {
            v21 = *(a1 + 384);
            (*(*v11 + 672))(&v33, v11);
            v22 = (*(*v11 + 472))(v11);
            (*(*v21 + 16))(v21, &v33, v22, buf);
            Model_sync = v34;
            if (v34)
            {
              sub_100004A34(v34);
            }
          }

          if (BYTE8(v49) == 1)
          {
            Model_sync = __p;
            if (__p)
            {
              *(&__p + 1) = __p;
              operator delete(__p);
            }
          }

          if (BYTE8(v47) == 1)
          {
            sub_10002ECA8(&v46, *(&v46 + 1));
          }

          if (v42 == 1)
          {
            sub_10002ED34(&buf[8], v41);
          }
        }

        if (capabilities::ct::supports5G(Model_sync))
        {
          (*(**(a1 + 248) + 80))(buf);
          v23 = *buf;
          LOBYTE(v32[0]) = 0;
          if (*buf)
          {
            v24 = CFGetTypeID(*buf);
            if (v24 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(v32, v23, v25);
            }
          }

          sub_10000A1EC(buf);
          (*(**(a1 + 248) + 80))(buf);
          v26 = *buf;
          LOBYTE(v32[0]) = 0;
          if (*buf)
          {
            v27 = CFGetTypeID(*buf);
            if (v27 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(v32, v26, v28);
            }
          }

          sub_10000A1EC(buf);
          v32[0] = 0;
          v32[1] = 0;
          buf[0] = 1;
          *&buf[8] = a1 + 1368;
          sub_100632658(&v41, a1 + 1400);
          sub_10131FD5C();
        }
      }

      else
      {
        v17 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          v18 = subscriber::asString();
          *buf = 136315138;
          *&buf[4] = v18;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find model %s for carrier bundle change", buf, 0xCu);
        }
      }

      if (v38)
      {
        sub_100004A34(v38);
      }

      goto LABEL_60;
    }
  }
}

void sub_10131E2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, char a25, uint64_t a26)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131E39C(uint64_t a1, uint64_t a2)
{
  if ((rest::operator==() & 1) == 0)
  {
    v4 = *(a1 + 600);
    if (v4 != (a1 + 608))
    {
      v5 = (a2 + 8);
      while (1)
      {
        (*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 8));
        v6 = *v5;
        v7 = *(v4 + 8);
        if (!*v5)
        {
          break;
        }

        v8 = v5;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 == v5 || v7 < *(v8 + 8))
        {
          break;
        }

        if ((rest::operator==() & 1) == 0)
        {
          v9 = 0;
          v7 = *(v4 + 8);
LABEL_12:
          v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), v7);
          v11 = capabilities::ct::supports5G(v10);
          v12 = v11;
          if (*(v4 + 40))
          {
            v13 = *v10;
            v14 = os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT);
            if (v12)
            {
              if (v14)
              {
                if (*(v4 + 71) >= 0)
                {
                  v15 = (v4 + 6);
                }

                else
                {
                  v15 = v4[6];
                }

                v16 = asString();
                *buf = 136446466;
                v29 = v15;
                v30 = 2080;
                v31 = v16;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Operator Bundle %{public}s changed: %s. Sending down 5G preference with roaming", buf, 0x16u);
              }

              RegistrationController::send5GEnabledSettingFromPreference_sync(a1, v7, 3);
            }

            else if (v14)
            {
              if (*(v4 + 71) >= 0)
              {
                v20 = (v4 + 6);
              }

              else
              {
                v20 = v4[6];
              }

              v21 = asString();
              *buf = 136446466;
              v29 = v20;
              v30 = 2080;
              v31 = v21;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Operator Bundle %{public}s changed: %s", buf, 0x16u);
            }

            v22 = capabilities::ct::supportsGemini(v14);
            if ((RegistrationController::carrierBlocksCallsOverCS_sync(a1, v7, 1) & 1) != 0 || v22)
            {
              v23 = *v10;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = "Operator blocks calls over CS";
                if (v22)
                {
                  v24 = "Dual-SIM device";
                }

                *buf = 136315138;
                v29 = v24;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s. Sending LTE setting to BB", buf, 0xCu);
              }

              RegistrationController::sendLteEnabledSettingFromPreference_sync(a1, v7, 1);
            }
          }

          else
          {
            v17 = v9 & v11;
            v18 = *v10;
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            if (v17 == 1)
            {
              if (v19)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Operator Bundle did not change, sending down 5G preference with roaming before bailing out", buf, 2u);
              }

              RegistrationController::send5GEnabledSettingFromPreference_sync(a1, v7, 3);
            }

            else if (v19)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Operator Bundle did not change, bailing out", buf, 2u);
            }
          }
        }

        v25 = v4[1];
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
            v26 = v4[2];
            v27 = *v26 == v4;
            v4 = v26;
          }

          while (!v27);
        }

        v4 = v26;
        if (v26 == (a1 + 608))
        {
          return;
        }
      }

      v9 = 1;
      goto LABEL_12;
    }
  }
}

void sub_10131E73C(uint64_t a1, int a2)
{
  v2 = *(a1 + 624);
  if (v2 != a2)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CSIBOOLAsString(a2);
      v7 = CSIBOOLAsString(*(a1 + 624));
      v8 = 136315394;
      v9 = v6;
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Cellular data setting has changed from %s to %s", &v8, 0x16u);
      if ((*(a1 + 624) & 1) == 0)
      {
        return;
      }
    }

    else if (!v2)
    {
      return;
    }

    (*(*a1 + 376))(a1, 1);
  }
}

void *sub_10131E854(void *result, void *a2)
{
  if (a2[2] == result[98])
  {
    v4 = *a2;
    v2 = a2 + 1;
    v3 = v4;
    if (v4 == v2)
    {
      return result;
    }

    v5 = result[96];
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 32) == *(v5 + 32);
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
      if (v3 == v2)
      {
        return result;
      }
    }
  }

  v11 = result[8];
  v12 = result + 9;
  if (v11 != result + 9)
  {
    v13 = result + 97;
    do
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *(v11 + 8);
        v16 = v13;
        do
        {
          if (*(v14 + 28) >= v15)
          {
            v16 = v14;
          }

          v14 = *(v14 + 8 * (*(v14 + 28) < v15));
        }

        while (v14);
        if (v16 != v13 && v15 >= *(v16 + 7))
        {
          result = (*(*v11[5] + 784))(v11[5], *(v16 + 32));
        }
      }

      v17 = v11[1];
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
          v18 = v11[2];
          v6 = *v18 == v11;
          v11 = v18;
        }

        while (!v6);
      }

      v11 = v18;
    }

    while (v18 != v12);
  }

  return result;
}

void sub_10131E9DC(uint64_t a1, uint64_t a2)
{
  memset(v26, 0, sizeof(v26));
  *v25 = 0u;
  v4 = sub_100AE8C10(v25, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(v26 + 8) = *(a2 + 24);
  DWORD2(v26[1]) = *(a2 + 40);
  if (capabilities::ct::supports5G(v4))
  {
    DWORD1(v26[1]) = *(a1 + 880);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (isValidSimSlot)
  {
    v6 = *(a1 + 1056);
  }

  else
  {
    v7 = *(a1 + 40);
    isValidSimSlot = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (isValidSimSlot)
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Defaulting data preferred sub to sim#1, since the data SIM preference is invalid", &buf, 2u);
    }

    v6 = 1;
  }

  DWORD2(v26[1]) = v6;
  BYTE11(v26[0]) = *(a1 + 1520);
  v8 = capabilities::ct::supportsSendingLTECoverageToAP(isValidSimSlot);
  if (v8 && ((v9 = capabilities::ct::supportsVoNR(v8), v10 = HIDWORD(v26[0]), SHIDWORD(v26[0]) > 0) ? (v11 = v9) : (v11 = 0), v11 == 1))
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Enter emergency mode throttling timer with %lld milliseconds", &buf, 0xCu);
    }

    Registry::getTimerService(&buf, *(a1 + 136));
    v13 = buf;
    sub_10000501C(__p, "Enter Emergency Mode Throttling");
    v14 = *(a1 + 24);
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_10131FCBC;
    v15[3] = &unk_101F2DE98;
    v15[4] = a1;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    sub_100AE8C10(&v16, v25[0], v25[1], (v25[1] - v25[0]) >> 2);
    v19 = *(v26 + 8);
    v20 = DWORD2(v26[1]);
    aBlock = _Block_copy(v15);
    sub_100E34D88(v13, __p, 2, 1000 * v10, &object, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }

  else
  {
    (*(**(a1 + 88) + 208))(*(a1 + 88), v25);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }
}

void sub_10131ECB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, dispatch_object_t object, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131ED74(uint64_t a1, int a2)
{
  v5 = 0;
  v6 = 0;
  RegistrationController::getModel_sync(a1, a2, &v5);
  v3 = v5;
  if (v5)
  {
    v4[0] = v5;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 64))(v3);
    RegistrationController::setRegistrationStatus_sync(a1, v4);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10131EE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131EE48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1192) != *a2 || *(a1 + 1196) != *(a2 + 4))
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = asString(*(a1 + 1196));
      v11 = 136315138;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I enabled 5G by MDM changed to %s", &v11, 0xCu);
    }

    v5 = *(a1 + 64);
    if (v5 != (a1 + 72))
    {
      do
      {
        if ((*(*v5[5] + 832))(v5[5], a1 + 1192))
        {
          RegistrationController::send5GStandaloneEnabledSettingFromPreference_sync(a1, *(v5 + 8), 3);
          v6 = *(a1 + 328);
          v7 = *(v5 + 8);
          RegistrationController::getNRStatus_sync(a1, *(v5 + 8), &v11);
          (*(*v6 + 144))(v6, v7, &v11);
          RegistrationController::update5GSACapabilityRestProperty_sync(a1, *(v5 + 8));
        }

        v8 = v5[1];
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
            v9 = v5[2];
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
      }

      while (v9 != (a1 + 72));
    }
  }
}

void sub_10131F000(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband refresh complete received. Trigger sending of IMS states", v5, 2u);
  }

  RegistrationController::sendVolteEnabledSettingToBaseband_sync(a1, a2);
}

uint64_t sub_10131F0A4(uint64_t result, void *a2)
{
  v2 = result;
  if (a2[2] != *(result + 1440))
  {
    goto LABEL_30;
  }

  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = *(result + 1424);
    while (1)
    {
      v6 = *(v4 + 55);
      if (v6 >= 0)
      {
        v7 = *(v4 + 55);
      }

      else
      {
        v7 = v4[5];
      }

      v8 = *(v5 + 55);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = v5[5];
      }

      if (v7 != v8)
      {
        break;
      }

      v10 = v6 >= 0 ? v4 + 4 : v4[4];
      v11 = v9 >= 0 ? v5 + 4 : v5[4];
      if (memcmp(v10, v11, v7))
      {
        break;
      }

      result = sub_1001E3E0C((v4 + 7), (v5 + 7));
      if (!result)
      {
        break;
      }

      v12 = v4[1];
      v13 = v4;
      if (v12)
      {
        do
        {
          v4 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v4 = v13[2];
          v14 = *v4 == v13;
          v13 = v4;
        }

        while (!v14);
      }

      v15 = v5[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
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

      v5 = v16;
      if (v4 == v3)
      {
        return result;
      }
    }

LABEL_30:
    v19[3] = 0;
    v19[4] = 0;
    LOBYTE(v17) = 1;
    v18 = v2 + 1368;
    sub_100632658(v19, v2 + 1400);
    sub_10131FD5C();
  }

  return result;
}

void sub_10131F4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131F528(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 1464))
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v6 = *(a1 + 1448);
    while (*(v5 + 7) == *(v6 + 7) && rest::operator==())
    {
      v7 = v5[1];
      v8 = v5;
      if (v7)
      {
        do
        {
          v5 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v5 = v8[2];
          v9 = *v5 == v8;
          v8 = v5;
        }

        while (!v9);
      }

      v10 = v6[1];
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
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  v12 = *(a1 + 1448);
  if (v12 != (a1 + 1456))
  {
    v13 = a2 + 1;
    while (1)
    {
      v14 = *v13;
      v15 = *(v12 + 7);
      if (!*v13)
      {
        goto LABEL_29;
      }

      v16 = v13;
      do
      {
        if (*(v14 + 28) >= v15)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v15));
      }

      while (v14);
      if (v16 == v13 || v15 < *(v16 + 7))
      {
        goto LABEL_29;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_30:
      v17 = v12[1];
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
          v18 = v12[2];
          v9 = *v18 == v12;
          v12 = v18;
        }

        while (!v9);
      }

      v12 = v18;
      if (v18 == (a1 + 1456))
      {
        return;
      }
    }

    v15 = *(v12 + 7);
LABEL_29:
    sub_1013289E8(a1, v15, (v12 + 4));
    goto LABEL_30;
  }
}

void sub_10131F6B4(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 1488))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v4 = *(a1 + 1472);
    v5 = v4;
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 32) == *(v5 + 32);
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
    v4 = *(a1 + 1472);
  }

  v11 = (a1 + 1480);
  if (v4 != (a1 + 1480))
  {
    v12 = a2 + 1;
    while (1)
    {
      v13 = *v12;
      v14 = *(v4 + 7);
      if (!*v12)
      {
        break;
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
      if (v15 == v12 || v14 < *(v15 + 7))
      {
        break;
      }

      v16 = *(v4 + 32);
      if (*(v15 + 32) != v16)
      {
        v20 = 0;
        v21 = 0;
        RegistrationController::getModel_sync(a1, v14, &v20);
        v17 = v20;
        if (v20)
        {
LABEL_32:
          (*(*v20 + 904))(v17, v16);
        }

LABEL_33:
        if (v21)
        {
          sub_100004A34(v21);
        }
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
      if (v19 == v11)
      {
        return;
      }
    }

    v16 = *(v4 + 32);
    v20 = 0;
    v21 = 0;
    RegistrationController::getModel_sync(a1, v14, &v20);
    v17 = v20;
    if (v20)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }
}

void sub_10131F8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10131F8F8(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 1512))
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v6 = *(a1 + 1496);
    while (*(v5 + 7) == *(v6 + 7) && rest::operator==())
    {
      v7 = v5[1];
      v8 = v5;
      if (v7)
      {
        do
        {
          v5 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v5 = v8[2];
          v9 = *v5 == v8;
          v8 = v5;
        }

        while (!v9);
      }

      v10 = v6[1];
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
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  v12 = *(a1 + 1496);
  if (v12 != (a1 + 1504))
  {
    v13 = a2 + 1;
    while (1)
    {
      v14 = *v13;
      v15 = *(v12 + 7);
      if (!*v13)
      {
        break;
      }

      v16 = v13;
      do
      {
        if (*(v14 + 28) >= v15)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v15));
      }

      while (v14);
      if (v16 == v13 || v15 < *(v16 + 7))
      {
        break;
      }

      if ((rest::operator==() & 1) == 0)
      {
        v20 = *(v12 + 7);
        v21 = 0;
        v22 = 0;
        RegistrationController::getModel_sync(a1, v20, &v21);
        v17 = v21;
        if (v21)
        {
LABEL_28:
          (*(*v21 + 912))(v17, v12 + 4);
        }

LABEL_29:
        if (v22)
        {
          sub_100004A34(v22);
        }
      }

      v18 = v12[1];
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
          v19 = v12[2];
          v9 = *v19 == v12;
          v12 = v19;
        }

        while (!v9);
      }

      v12 = v19;
      if (v19 == (a1 + 1504))
      {
        return;
      }
    }

    v21 = 0;
    v22 = 0;
    RegistrationController::getModel_sync(a1, v15, &v21);
    v17 = v21;
    if (v21)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }
}

void sub_10131FB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::handleECBMTimerExpired(RegistrationController *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10131FC4C;
  v3[3] = &unk_101F2DE78;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 1);
  v2 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C7C;
  block[3] = &unk_101F2F618;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10131FC4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ECBM Timer expired, exit ECBM mode", v3, 2u);
  }

  RegistrationController::setECBM_sync(v1, 0);
}

__n128 sub_10131FCF0(void *a1, __n128 *a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  sub_100AE8C10((a1 + 5), a2[2].n128_i64[1], a2[3].n128_i64[0], (a2[3].n128_u64[0] - a2[2].n128_u64[1]) >> 2);
  result = a2[4];
  *(v3 + 10) = a2[5].n128_u32[0];
  *(v3 + 3) = result;
  return result;
}

void sub_10131FD44(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t RegistrationController::carrierBlocksCallsOverCS_sync(uint64_t a1, int a2, int a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (a3)
  {
    v7 = *(a1 + 1152);
    if (v7)
    {
      v8 = a1 + 1152;
      v9 = a1 + 1152;
      do
      {
        if (*(v7 + 28) >= a2)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 28) < a2));
      }

      while (v7);
      goto LABEL_13;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v10 = *(a1 + 1128);
  if (!v10)
  {
    goto LABEL_15;
  }

  v8 = a1 + 1128;
  v9 = a1 + 1128;
  do
  {
    if (*(v10 + 28) >= a2)
    {
      v9 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 28) < a2));
  }

  while (v10);
LABEL_13:
  if (v9 == v8 || *(v9 + 28) > a2)
  {
    goto LABEL_15;
  }

  v11 = *(v9 + 32);
LABEL_16:
  v12 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v13 = "Operator";
    }

    else
    {
      v13 = "Carrier";
    }

    v15 = 136315394;
    v16 = v13;
    v17 = 2080;
    v18 = asStringBool(v11 & 1);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %sBlocksCallsOverCS: %s", &v15, 0x16u);
  }

  return v11 & 1;
}

void RegistrationController::handleCellularFallback_sync(RegistrationController *this, uint64_t a2)
{
  v11 = 1;
  v4 = sub_100007DEC(this + 64, &v11);
  v6 = *v4;
  v5 = v4[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(*v6 + 288))(v6) != a2)
  {
    v7 = *(this + 5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (*(*v6 + 288))(v6);
      v9 = CSIBOOLAsString(v8);
      v10 = CSIBOOLAsString(a2);
      v11 = 136315394;
      v12 = v9;
      v13 = 2080;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Cellular fallback changed from %s to %s", &v11, 0x16u);
    }

    (*(*v6 + 296))(v6, a2);
    (*(*v6 + 360))(v6);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_101320170(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101320194(void *a1)
{
  *a1 = off_101F2DED8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1013201E0(void *a1)
{
  *a1 = off_101F2DED8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

__n128 sub_1013202CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2DED8;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void sub_10132031C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10132032C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10132036C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      if (*(a1 + 24))
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 1174405120;
        v10[2] = sub_101320574;
        v10[3] = &unk_101F2DF38;
        v10[4] = v6;
        v11 = *(a1 + 40);
        v15 = *(a1 + 16);
        v13 = 0;
        v14 = 0;
        __p = 0;
        sub_1001B964C(&__p, v3, v4, (v4 - v3) >> 1);
        v18 = 0;
        v19 = 0;
        sub_100004AA0(&v18, (v6 + 8));
        v9 = *(v6 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_100013C7C;
        block[3] = &unk_101F2F618;
        block[5] = v18;
        v17 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v10;
        dispatch_async(v9, block);
        if (v17)
        {
          sub_100004A34(v17);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }

        if (__p)
        {
          v13 = __p;
          operator delete(__p);
        }
      }

      sub_100004A34(v8);
    }
  }

  if (v3)
  {
    operator delete(v3);
  }
}

void sub_101320508(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101320528(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101320574(uint64_t a1)
{
  v2 = *(a1 + 32);
  ServiceMap = Registry::getServiceMap(*(v2 + 136));
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (!v9)
  {
    std::mutex::unlock(v4);
LABEL_9:
    v13 = *(v2 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "File a radar! Could not get CDMA roaming handler", buf, 2u);
    }

    return;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    std::mutex::unlock(v4);
    if (v11)
    {
      v12 = *(a1 + 80);
LABEL_13:
      v16 = 0;
      v17 = 0;
      v18 = 0;
      sub_1001B964C(&v16, *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 1);
      *buf = *(a1 + 40);
      v20 = v12;
      sub_100004AA0(&v25, (*buf + 8));
      v14 = v26;
      v21[0] = v25;
      v21[1] = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
      }

      __p[1] = 0;
      v23 = 0;
      __p[0] = 0;
      sub_1001B964C(__p, v16, v17, (v17 - v16) >> 1);
      v24 = *(a1 + 48);
      v27 = 0;
      operator new();
    }

    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  if (v11)
  {
    v12 = *(a1 + 80);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_13;
  }

  v15 = *(v2 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "File a radar! Could not get CDMA roaming handler", buf, 2u);
  }

  sub_100004A34(v10);
}

void sub_101320878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_101321024(&a22);
  sub_10132092C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (v22)
  {
    sub_100004A34(v22);
    sub_100004A34(v22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013208F8(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return sub_1001B964C(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 1);
}

void sub_101320914(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void *sub_10132092C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *sub_10132096C(void *a1)
{
  *a1 = off_101F2DF78;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1013209C8(void *a1)
{
  *a1 = off_101F2DF78;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_101320AF0(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101320B10(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2DF78;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  v5 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = sub_1001B964C(a2 + 40, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 1);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 65) = 0;
  *(a2 + 68) = 0;
  return result;
}

void sub_101320BA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_101320BC4(void *a1)
{
  sub_101320DD8(a1 + 1);

  operator delete(a1);
}

void sub_101320C00(uint64_t a1, int *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *a2;
    v5 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 24))
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 1174405120;
        v10[2] = sub_101320E2C;
        v10[3] = &unk_101F2DFE8;
        v8 = *(a1 + 16);
        v14 = v4;
        v15 = v8;
        v10[4] = v5;
        __p = 0;
        v12 = 0;
        v13 = 0;
        sub_1001B964C(&__p, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 1);
        v16 = *(a1 + 64);
        v19 = 0;
        v20 = 0;
        sub_100004AA0(&v19, (v5 + 8));
        v9 = *(v5 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_100013C7C;
        block[3] = &unk_101F2F618;
        block[5] = v19;
        v18 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v10;
        dispatch_async(v9, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        if (v20)
        {
          sub_100004A34(v20);
        }

        if (__p)
        {
          v12 = __p;
          operator delete(__p);
        }
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_101320D8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101320DD8(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_101320E2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I CDMA International Roaming is %s", &v7, 0xCu);
  }

  v4 = *(a1 + 64);
  if ((v4 - 1) <= 1)
  {
    (*(**(v2 + 88) + 88))(*(v2 + 88), *(a1 + 68), v4 == 1, a1 + 40);
  }

  if (*(v2 + 376) == 1 && *(a1 + 72) == 1)
  {
    RegistrationController::sendEnableOnlyHomeNetwork_sync(v2);
  }

  v5 = *(v2 + 232);
  v6 = *(v2 + 40);
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Baseband activated, initiating network attach", &v7, 2u);
      v5 = *(v2 + 232);
    }

    (*(*v5 + 120))(v5);
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v7) = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "File a radar! No network list controller to bring baseband online!", &v7, 2u);
  }
}

uint64_t sub_101320FF0(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_1001B964C(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 1);
}

void sub_10132100C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t sub_101321024(uint64_t a1)
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

void sub_1013210A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1013211EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void *sub_101321248(void *a1)
{
  *a1 = off_101F2E068;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101321294(void *a1)
{
  *a1 = off_101F2E068;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_10132136C(void *a1)
{
  *a1 = off_101F2E0B8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

__n128 sub_101321434(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E0F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10132146C(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_101321550(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10132159C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1013215E8(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_101321634(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_101321680(uint64_t a1)
{
  sub_101322DDC((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_1013216C0(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_1013217B8(a1, v3);
}

void sub_101321788(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013217B8(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_1013218AC(a1, a2);
}

void sub_101321894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_101321944(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1003943F4(a1, a2, 1, 2);
}

void sub_101321A68(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101F2E1D8;
  operator new();
}

void sub_101321B78(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_101321BE0(uint64_t a1)
{
  sub_101321F8C(a1);

  operator delete();
}

uint64_t sub_101321C18(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_101322004(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_101321CC4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101321CF4(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_101321D20(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_101321D4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_101321DA4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_101321E10(&v2);
}

void sub_101321E80(void *a1)
{
  __cxa_begin_catch(a1);
  sub_101321EA8(v1);
  __cxa_rethrow();
}

uint64_t sub_101321EA8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_101322DDC((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_101321F1C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_101322DDC((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_101321F8C(uint64_t a1)
{
  *a1 = off_101F2E1D8;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_101322004(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100394698(result + 4); ; i += 6)
    {
      result = sub_100394698(v2);
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

void sub_1013220EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_10132210C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_101322178(&v2);
}

void sub_1013221E8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10132224C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

dispatch_object_t *sub_101322294(dispatch_object_t *a1, void **a2, dispatch_object_t object)
{
  *a1 = object;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
    object = *a1;
  }

  a1[1] = v4;
  dispatch_retain(object);
  return a1;
}

_OWORD *sub_1013222DC(_OWORD *a1, NSObject **a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_101322334(a1, a2);
  return a1;
}

void sub_101322314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_101322DDC((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_101322334(uint64_t a1, NSObject **a2)
{
  sub_101322410(v4, a2);
  sub_10132238C(a1 + 24, v4);
  return sub_101322E2C(v4);
}

uint64_t sub_10132238C(uint64_t a1, NSObject **a2)
{
  sub_101322410(v4, a2);
  sub_1013224D8(v5, v4);
  sub_10132245C(v5, a1);
  sub_101322DDC(v5);
  sub_101322E2C(v4);
  return a1;
}

void sub_1013223EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void, void, uint64_t))
{
  sub_101322DDC(&a11);
  sub_101322E2C(&a9);
  _Unwind_Resume(a1);
}

NSObject **sub_101322410(NSObject **a1, NSObject **a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  if (v4)
  {
    v4 = _Block_copy(v4);
    v3 = *a1;
  }

  a1[1] = v4;
  dispatch_retain(v3);
  return a1;
}

void (***sub_10132245C(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_101322D24(v4, result);
    sub_101322D24(v3, a2);
    sub_101322D24(a2, v4);
    return sub_101322DDC(v4);
  }

  return result;
}

void *sub_1013224D8(void *a1, NSObject **a2)
{
  sub_101322410(v4, a2);
  sub_101322538(a1, v4);
  sub_101322E2C(v4);
  return a1;
}

void *sub_101322538(void *a1, NSObject **a2)
{
  *a1 = 0;
  sub_101322410(v4, a2);
  sub_101322598(a1, v4);
  sub_101322E2C(v4);
  return a1;
}

uint64_t sub_101322598(uint64_t a1, NSObject **a2)
{
  sub_101322410(v6, a2);
  v3 = sub_1013226F0(off_101F2E2E0, v6, (a1 + 8));
  result = sub_101322E2C(v6);
  if (v3)
  {
    v5 = off_101F2E2E0;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_101322614(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v5 = result;
  if (a3 <= 1)
  {
    result = sub_101322410(a2, result);
    if (a3 != 1)
    {
      return result;
    }

    v6 = v5;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return result;
    }

    v6 = a2;
LABEL_10:

    return sub_101322E2C(v6);
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFv14Operating_ModeEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFv14Operating_ModeEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1013226F0(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_101322410(v7, a2);
  v5 = sub_101322CDC(a1, v7, a3);
  sub_101322E2C(v7);
  return v5;
}

void sub_101322758(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  aBlock = v1;
  sub_101322964(v3, &aBlock);
  operator new();
}

uint64_t sub_1013228E0(uint64_t a1)
{
  sub_100394894(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_101322DDC(v2);
    operator delete();
  }

  result = *(a1 + 40);
  if (result)
  {

    operator delete();
  }

  return result;
}

void *sub_101322964(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  sub_1013229E0(a1, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_1013229C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1013229E0(void *a1, void **a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  sub_101322A5C(a1, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_101322A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_101322A5C(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = sub_101322B24(off_101F2E320, &aBlock, (a1 + 8));
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    v5 = off_101F2E320;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void sub_101322AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_101322AF4(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    a2[4] = 0;
  }

  else
  {
    sub_101322BA8(a1, a2, a3);
  }
}

uint64_t sub_101322B24(uint64_t a1, void **a2, void **a3)
{
  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  aBlock = v5;
  v6 = sub_101322C7C(a1, &aBlock, a3);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return v6;
}

void sub_101322B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_101322BA8(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == ("N8dispatch5blockIU13block_pointerFv14Operating_ModeEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N8dispatch5blockIU13block_pointerFv14Operating_ModeEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else if (a3 == 2)
    {
      v7 = *a2;
      if (*a2)
      {
LABEL_6:
        _Block_release(v7);
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t sub_101322C7C(uint64_t a1, const void **a2, void **a3)
{
  if (*a2 && (v4 = _Block_copy(*a2), (v5 = v4) != 0))
  {
    *a3 = _Block_copy(v4);
    _Block_release(v5);
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t sub_101322CDC(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_101322410(v5, a2);
  sub_101322410(a3, v5);
  sub_101322E2C(v5);
  return 1;
}

uint64_t sub_101322D24(uint64_t result, uint64_t a2)
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

void sub_101322DB8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_101322DDC(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
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

uint64_t sub_101322E2C(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

__n128 sub_101322EE4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E350;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101322F1C(void *a1)
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

uint64_t sub_101322F64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10132302C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E3D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101323064(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_101323148(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101323210(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E450;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101323248(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101323340(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101323408(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E4D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101323440(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_100904E88(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_101323518(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013235E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E550;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101323618(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10066EACC(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_1013236F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013237B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E5D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013237F0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v16 = 0;
  v17 = 0uLL;
  sub_1001A9998(&v16, a2);
  v4 = *v3;
  v15 = *(v3 + 2);
  v14 = v4;
  v12 = v16;
  v13 = v17;
  v16 = 0;
  v17 = 0uLL;
  if (v12 != v13)
  {
    v5 = *(v13 - 8);
    v21 = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      v21 = xpc_null_create();
    }

    v18 = &v21;
    v19 = "kCallSubType";
    sub_100006354(&v18, &v20);
    *v3 = xpc::dyn_cast_or_default(&v20, 1, v6);
    xpc_release(v20);
    v18 = &v21;
    v19 = "kCallSimSlot";
    sub_100006354(&v18, &v20);
    *(v3 + 1) = xpc::dyn_cast_or_default(&v20, 1, v7);
    xpc_release(v20);
    v18 = &v21;
    v19 = "kCallType";
    sub_100006354(&v18, &v20);
    *(v3 + 2) = xpc::dyn_cast_or_default(&v20, 1, v8);
    xpc_release(v20);
    xpc_release(v21);
  }

  v18 = &v12;
  sub_1000B2DB4(&v18);
  if (LastCallSubType::operator!=())
  {
    v9 = a1[3];
    v10 = a1[4];
    v11 = (a1[2] + (v10 >> 1));
    if (v10)
    {
      v9 = *(*v11 + v9);
    }

    v9(v11, &v14);
  }

  v18 = &v16;
  sub_1000B2DB4(&v18);
}

void sub_1013239A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  xpc_release(*(v14 - 32));
  xpc_release(*(v14 - 24));
  *(v14 - 48) = &a9;
  sub_1000B2DB4((v14 - 48));
  *(v14 - 48) = &a14;
  sub_1000B2DB4((v14 - 48));
  _Unwind_Resume(a1);
}

uint64_t sub_101323A38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101323B00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E650;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101323B38(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  *__p = 0u;
  v17 = 0u;
  *v18 = 0u;
  *v16 = 0u;
  read_rest_value();
  v6 = a1[2];
  v7 = a1[3];
  v8 = (a1[1] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9[0] = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v13 = 0;
  v14 = v5;
  v15 = v4;
  v6(v8, v16, v9);
  sub_101323CBC(v9);
  if (v22 == 1)
  {
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[1]);
    }
  }

  if (SBYTE7(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_101323C38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_101323CBC(va);
  sub_101323D3C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_101323C70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101323CBC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    write_rest_value();
    v2 = *(a1 + 40);
    v3 = *v2;
    *v2 = v6;
    xpc_release(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_101323D3C(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_101323E18(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E6D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101323E50(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1009DE138(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_101323F28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101323FF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E750;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101324028(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1008E2524(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_101324100(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013241C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E7D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101324200(void *a1, void **a2)
{
  v7 = 0;
  sub_10010A0B4(&v7, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, &v7);
}

uint64_t sub_101324280(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101324348(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E850;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101324380(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_100DE475C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_1008DDF20(&v9, v10);
}

uint64_t sub_101324458(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101324520(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E8D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101324558(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_100901888(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_101324630(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013246F8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E950;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101324730(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v7 = *v3;
  v8 = v3[2];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_10010A62C(v3, a2);
  v4 = a1[3];
  v5 = a1[4];
  v6 = (a1[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6, &v7);
  v9 = &v7;
  sub_1000B2AF8(&v9);
}

void sub_1013247D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1013247F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013248B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2E9D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013248F0(void *a1, void **a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v14 = 0;
  RatSelectionType::RatSelectionType(&v14);
  sub_100DAF528(&v14, a2);
  v7 = a1[2];
  v8 = a1[3];
  v9 = (a1[1] + (v8 >> 1));
  if (v8)
  {
    v7 = *(*v9 + v7);
  }

  v11[0] = 0;
  v12 = v6;
  v13 = v5;
  v7(v9, &v14, v11);
  return sub_1000C05C4(v11);
}

uint64_t sub_1013249CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101324A94(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2EA50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101324ACC(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_101324BA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101324C6C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2EAD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101324CA4(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_101324D7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101324E44(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2EB50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101324E7C(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_101324F14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101324FDC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2EBD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101325014(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10084650C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_1013250EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013251B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2EC50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013251EC(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1003F0514(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_1001A8E08(&v9, v10);
}

uint64_t sub_1013252C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10132538C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2ECD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013253C4(void *a1)
{
  v6 = 0u;
  v7 = 0u;
  *__p = 0u;
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10132545C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101325478(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101325540(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2ED50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101325578(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_10132565C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101325724(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2EDD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10132575C(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_101325840(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101325908(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2EE50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101325940(uint64_t a1)
{
  v6 = **(a1 + 8);
  rest::read_rest_value();
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = (*(a1 + 16) + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, &v6);
}

uint64_t sub_1013259C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101325A8C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2EED0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101325AC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a3, a4);
}

uint64_t sub_101325B14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101325BD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2EF50;
  a2[1] = v2;
  return result;
}

void sub_101325BFC(uint64_t a1, void *a2)
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
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v29 = v9;
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
        v29 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v27, v11, v12, v13);
      __p = &v29;
      v23 = "first";
      sub_10000F688(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = *(v6 + 32);
      v15 = asString();
      ctu::rest::detail::write_enum_string_value(&v25, v14, v15, v16);
      __p = &v29;
      v23 = "second";
      sub_10000F688(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v4, v17);
      xpc_release(v17);
      v18 = v6[1];
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
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v21 = v4;
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/reg_type_of_evo");
  v29 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
}

void sub_101325ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_101325F8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101326048(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2EFE0;
  a2[1] = v2;
  return result;
}

uint64_t sub_101326074(uint64_t a1, xpc *this, unsigned int a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_1013260A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10132616C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2F060;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013261A4(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_101326288(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101326344(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2F0E0;
  a2[1] = v2;
  return result;
}

void sub_101326370(uint64_t a1, void *a2)
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
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
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
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v24, v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      write_rest_value((v6 + 4));
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/nr_disable_status");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_101326638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1013266F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013267AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2F170;
  a2[1] = v2;
  return result;
}

void sub_1013267D8(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/lte_coverage_info");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_10132687C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1013268C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10132697C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2F1F0;
  a2[1] = v2;
  return result;
}

void sub_1013269A8(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/sa_capability_status");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_101326A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_101326A90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101326B4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2F270;
  a2[1] = v2;
  return result;
}

void sub_101326B78(uint64_t a1, void *a2)
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
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v27 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v27 = v9;
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
        v27 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v25, v11, v12, v13);
      __p = &v27;
      v21 = "first";
      sub_10000F688(&__p, &v25, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v25);
      v25 = 0;
      rest::write_rest_value((v6 + 4), v14);
      __p = &v27;
      v21 = "second";
      sub_10000F688(&__p, &v23, &v24);
      xpc_release(v24);
      v24 = 0;
      xpc_release(v23);
      v23 = 0;
      v15 = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        v15 = xpc_null_create();
      }

      xpc_release(v27);
      xpc_array_append_value(v4, v15);
      xpc_release(v15);
      v16 = v6[1];
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
          v17 = v6[2];
          v18 = *v17 == v6;
          v6 = v17;
        }

        while (!v18);
      }

      v6 = v17;
    }

    while (v17 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v19 = v4;
  }

  else
  {
    v19 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/nr_entitlement_status");
  v27 = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v27 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v27);
  v27 = 0;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
}

void sub_101326E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_101326EF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101326FC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2F300;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101326FF8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10013E998(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10013DF64(&v9, v10);
}

uint64_t sub_1013270D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101327198(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2F380;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013271D0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1013272F8(v3, *a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_1013272AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013272F8(uint64_t a1, xpc_object_t object)
{
  if (object && (v3 = object, xpc_get_type(object) == &_xpc_type_array))
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = (a1 + 8);
  sub_10006DCAC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    objecta = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      objecta = xpc_null_create();
    }

    sub_100008EA4(&v18, &objecta, 0);
    xpc_release(objecta);
    objecta = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      objecta = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v17, &objecta, count);
    xpc_release(objecta);
    for (i = v19; ; i = ++v19)
    {
      if (i == v17[1] && v18 == v17[0])
      {
        xpc_release(v17[0]);
        xpc_release(v18);
        goto LABEL_44;
      }

      v16 = 0;
      objecta = &v18;
      v21 = i;
      sub_10003EAD4(&objecta, &v16);
      if (xpc_get_type(v16) == &_xpc_type_dictionary)
      {
        break;
      }

LABEL_42:
      xpc_release(v16);
    }

    v15 = 0;
    v7 = v16;
    if (v16)
    {
      xpc_retain(v16);
      v23 = v7;
    }

    else
    {
      v7 = xpc_null_create();
      v23 = v7;
      if (!v7)
      {
        v8 = xpc_null_create();
        v7 = 0;
        goto LABEL_26;
      }
    }

    if (xpc_get_type(v7) == &_xpc_type_dictionary)
    {
      xpc_retain(v7);
      v8 = v7;
LABEL_27:
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        objecta = &v23;
        v21 = "first";
        sub_100006354(&objecta, &v22);
        type = xpc_get_type(v22);
        if (type == &_xpc_type_string)
        {
          v24 = v15;
          ctu::rest::detail::read_enum_string_value(&v24, &v22, v10);
          LODWORD(v15) = v24;
        }

        else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
        {
          LODWORD(v15) = xpc::dyn_cast_or_default(&v22, 0, v10);
        }

        xpc_release(v22);
        objecta = &v23;
        v21 = "second";
        sub_100006354(&objecta, &v22);
        rest::read_rest_value((&v15 + 4), &v22, v11);
        xpc_release(v22);
        v8 = v23;
      }

      xpc_release(v8);
      xpc_release(v7);
      v12 = *v4;
      if (!*v4)
      {
LABEL_41:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v13 = v12;
          v14 = *(v12 + 28);
          if (v14 <= v15)
          {
            break;
          }

          v12 = *v13;
          if (!*v13)
          {
            goto LABEL_41;
          }
        }

        if (v14 >= v15)
        {
          goto LABEL_42;
        }

        v12 = v13[1];
        if (!v12)
        {
          goto LABEL_41;
        }
      }
    }

    v8 = xpc_null_create();
LABEL_26:
    v23 = v8;
    goto LABEL_27;
  }

LABEL_44:
  xpc_release(v3);
}

void sub_101327690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t object, uint64_t a17, xpc_object_t a18, xpc_object_t a19)
{
  xpc_release(object);
  xpc_release(a14);
  xpc_release(v19);
  _Unwind_Resume(a1);
}

__n128 sub_1013277E8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2F400;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101327820(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10011E228(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_1013278F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013279C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2F480;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013279F8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1013272F8(v3, *a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_101327AD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101327B90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2F500;
  a2[1] = v2;
  return result;
}

void sub_101327BBC(uint64_t a1, void *a2)
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
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v27 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v27 = v9;
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
        v27 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 8);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v25, v11, v12, v13);
      __p = &v27;
      v21 = "first";
      sub_10000F688(&__p, &v25, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v25);
      v25 = 0;
      rest::write_rest_value((v6 + 5), v14);
      __p = &v27;
      v21 = "second";
      sub_10000F688(&__p, &v23, &v24);
      xpc_release(v24);
      v24 = 0;
      xpc_release(v23);
      v23 = 0;
      v15 = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        v15 = xpc_null_create();
      }

      xpc_release(v27);
      xpc_array_append_value(v4, v15);
      xpc_release(v15);
      v16 = v6[1];
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
          v17 = v6[2];
          v18 = *v17 == v6;
          v6 = v17;
        }

        while (!v18);
      }

      v6 = v17;
    }

    while (v17 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v19 = v4;
  }

  else
  {
    v19 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/geo_plmns");
  v27 = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v27 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v27);
  v27 = 0;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
}

void sub_101327E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_101327F3C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101327FF8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2F590;
  a2[1] = v2;
  return result;
}

void sub_101328024(uint64_t a1, void *a2)
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
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v29 = v9;
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
        v29 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v27, v11, v12, v13);
      __p = &v29;
      v23 = "first";
      sub_10000F688(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = *(v6 + 8);
      v15 = asString();
      ctu::rest::detail::write_enum_string_value(&v25, v14, v15, v16);
      __p = &v29;
      v23 = "second";
      sub_10000F688(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v4, v17);
      xpc_release(v17);
      v18 = v6[1];
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
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v21 = v4;
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/as_reject_info");
  v29 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
}