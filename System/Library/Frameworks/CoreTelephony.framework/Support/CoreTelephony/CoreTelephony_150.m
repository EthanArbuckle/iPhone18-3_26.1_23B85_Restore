void sub_1012FEDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012FEE30(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_10:
  (*(**(a1 + 96) + 200))(&__p);
  v12 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(__p + 13));
  if (v17)
  {
    sub_100004A34(v17);
  }

  v13 = *v12;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I PdnBringDown: Attempting to deactivate IMS connection", &__p, 2u);
  }

  v14 = sub_1012FDD28(a1);
  v15 = sub_1012FFE4C(*(a1 + 96));
  sub_10000501C(&__p, "Deactivating an Apn");
  (*(*v10 + 88))(v10, v14, v15, 0, &__p, 0, 0);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_15:
    if (v11)
    {
      return;
    }

    goto LABEL_16;
  }

  operator delete(__p);
  if (v11)
  {
    return;
  }

LABEL_16:
  sub_100004A34(v9);
}

void sub_1012FF03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012FF088(uint64_t a1)
{
  (*(**(a1 + 96) + 200))(&v6);
  v2 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v6 + 52));
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (validContextType())
  {
    v3 = *(a1 + 4 * *(a1 + 156) + 164);
  }

  else
  {
    v3 = 0;
  }

  v4 = *v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v6) = 67109120;
    HIDWORD(v6) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Resetting helper. Number of tries was: %du", &v6, 8u);
  }

  result = sub_1012FE30C(a1);
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 156) = -1;
  return result;
}

void sub_1012FF1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012FF1F0(void **a1)
{
  v3[0] = off_101F2C118;
  v3[1] = a1;
  v3[3] = v3;
  v1 = sub_1012FFC90(a1, v3);
  sub_10002B644(v3);
  return v1;
}

void sub_1012FF27C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

void sub_1012FF290(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 96) + 200))(&v19);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v19 + 52));
  if (*(&v19 + 1))
  {
    sub_100004A34(*(&v19 + 1));
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  *&v19 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v19);
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
        goto LABEL_19;
      }

      goto LABEL_12;
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
    goto LABEL_19;
  }

LABEL_12:
  v15 = sub_1012FDD28(a1);
  v16 = sub_1012FE20C(*(a1 + 96));
  (*(*v13 + 128))(&v19, v13, v15, v16);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v19;
  *(a2 + 16) = v20;
  v17 = *v4;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    LODWORD(v19) = 136315138;
    *(&v19 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I IMSNetworkInterface: %s", &v19, 0xCu);
  }

LABEL_19:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1012FF4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012FF53C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 96) + 200))(&__p);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(__p.__r_.__value_.__r.__words[0] + 52));
  if (__p.__r_.__value_.__l.__size_)
  {
    sub_100004A34(__p.__r_.__value_.__l.__size_);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  __p.__r_.__value_.__r.__words[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &__p);
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
        goto LABEL_18;
      }

      goto LABEL_12;
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
    goto LABEL_18;
  }

LABEL_12:
  v15 = sub_1012FDD28(a1);
  v16 = sub_1012FE20C(*(a1 + 96));
  (*(*v13 + 152))(&__p, v13, v15, v16);
  sub_100071A6C(a2);
  *a2 = __p;
  memset(&__p, 0, sizeof(__p));
  *buf = &__p;
  sub_1000087B4(buf);
  v17 = *v4;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000D1184(*a2, *(a2 + 8), ",", 1uLL, &__p);
    v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I network interface names: { %s }", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_18:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1012FF7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  sub_1000087B4(&a9);
  _Unwind_Resume(a1);
}

void sub_1012FF824(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  *&v19 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v19);
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
        goto LABEL_19;
      }

      goto LABEL_10;
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
    goto LABEL_19;
  }

LABEL_10:
  (*(**(a1 + 96) + 200))(&v19);
  v14 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v19 + 52));
  if (*(&v19 + 1))
  {
    sub_100004A34(*(&v19 + 1));
  }

  v15 = sub_1012FDD28(a1);
  v16 = sub_1012FE20C(*(a1 + 96));
  (*(*v12 + 160))(&v19, v12, v15, v16);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v19;
  *(a2 + 16) = v20;
  v17 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    LODWORD(v19) = 136315138;
    *(&v19 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I IMS APN Name: %s", &v19, 0xCu);
  }

LABEL_19:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1012FFA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1012FFACC(uint64_t a1, int a2)
{
  if ((*(a1 + 148) & 1) != 0 || *(a1 + 149) == 1)
  {
    v3 = *(a1 + 176) == 0;
    if (!a2)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return v3;
    }
  }

  (*(**(a1 + 96) + 200))(v11);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*v11 + 52));
  if (*&v11[8])
  {
    sub_100004A34(*&v11[8]);
  }

  v5 = *v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asStringBool(v3);
    v7 = asStringBool(*(a1 + 148));
    v8 = asStringBool(*(a1 + 149));
    v9 = asStringBool(*(a1 + 176) == 0);
    *v11 = 136315906;
    *&v11[4] = v6;
    *&v11[12] = 2080;
    *&v11[14] = v7;
    v12 = 2080;
    v13 = v8;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Connectivity(%s): [ConnectionAvailable(BB: %s, iWLAN: %s), No BackoffTimer(%s)]", v11, 0x2Au);
  }

  return v3;
}

void sub_1012FFC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012FFC90(void **a1, uint64_t a2)
{
  v4 = ((*a1)[19])(a1, 0);
  v5 = *(a2 + 24);
  if (!v5)
  {
    sub_100022DB4();
  }

  (*(*v5 + 48))(v5);
  v6 = ((*a1)[19])(a1, 1);
  v7 = v4 ^ v6;
  if (v7 == 1)
  {
    v8 = *a1[12];
    if (v6)
    {
      (*(v8 + 16))();
    }

    else
    {
      (*(v8 + 24))();
    }
  }

  return v7;
}

uint64_t sub_1012FFDAC(void **a1, int a2)
{
  v3 = a2;
  v4[0] = off_101F2C198;
  v4[1] = a1;
  v4[2] = &v3;
  v4[3] = v4;
  sub_1012FFC90(a1, v4);
  return sub_10002B644(v4);
}

void sub_1012FFE38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012FFE4C(uint64_t a1)
{
  (*(*a1 + 200))(&v3);
  v1 = *(v3 + 49);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (v1 == 1)
  {
    return 0x4000000;
  }

  else
  {
    return 0x20000;
  }
}

void sub_1012FFEB8(uint64_t a1, ConnectionAvailabilityContainer *a2)
{
  (*(**(a1 + 96) + 200))(v15);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*v15 + 52));
  if (*&v15[8])
  {
    sub_100004A34(*&v15[8]);
  }

  sub_1012FE20C(*(a1 + 96));
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = ConnectionAvailabilityContainer::size(a2);
    v7 = asString();
    ConnectionAvailabilityContainer::error();
    v8 = asString();
    v9 = ConnectionAvailabilityContainer::available();
    v10 = asStringBool(v9);
    ConnectionAvailabilityContainer::contextType();
    v11 = asString();
    *v15 = 134219010;
    *&v15[4] = v6;
    *&v15[12] = 2080;
    *&v15[14] = v7;
    v16 = 2080;
    v17 = v8;
    v18 = 2080;
    v19 = v10;
    v20 = 2080;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ConnectionAvailability: size=%lu, ct=%s, error=%s, available=%s, contextType=%s", v15, 0x34u);
  }

  if (ConnectionAvailabilityContainer::error() == -9)
  {
    v12 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Ignoring temporary availablity error", v15, 2u);
    }
  }

  else
  {
    v13 = ConnectionAvailabilityContainer::available();
    v14 = ConnectionAvailabilityContainer::contextType();
    sub_101300104(a1, v13, v14);
  }
}

void sub_1013000E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101300104(uint64_t a1, int a2, int a3)
{
  result = validContextType();
  if (!result || *(a1 + a3 + 148) != a2)
  {
    (*(**(a1 + 96) + 200))(&v7);
    (*(**(a1 + 56) + 16))(*(a1 + 56), *(v7 + 52));
    if (v8)
    {
      sub_100004A34(v8);
    }

    sub_1012FE8A0(a1, a2, a3);
  }

  return result;
}

void sub_101300388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013003A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1012FE30C(v1);
  if ((*(**(v1 + 96) + 104))(*(v1 + 96)))
  {
    if (validContextType())
    {
      v2 = v1 + 4 * *(v1 + 156);
      ++*(v2 + 164);
    }

    (*(**(v1 + 96) + 192))(*(v1 + 96));
    ServiceMap = Registry::getServiceMap(*(v1 + 64));
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
    __p = v5;
    v9 = sub_100009510(&v4[1].__m_.__sig, &__p);
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
LABEL_24:
          if ((v12 & 1) == 0)
          {
            sub_100004A34(v10);
          }

          return;
        }

LABEL_15:
        (*(**(v1 + 96) + 200))(&__p);
        v13 = (*(**(v1 + 56) + 16))(*(v1 + 56), *(__p + 13));
        if (v20)
        {
          sub_100004A34(v20);
        }

        v14 = *(v1 + 152);
        v15 = *v13;
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14 == 2)
        {
          if (v16)
          {
            LOWORD(__p) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I PdnBringUp: Pdp is already active", &__p, 2u);
          }
        }

        else
        {
          if (v16)
          {
            LOWORD(__p) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I PdnBringUp: Attempting to activate IMS", &__p, 2u);
          }

          v17 = sub_1012FDD28(v1);
          v18 = sub_1012FFE4C(*(v1 + 96));
          sub_10000501C(&__p, "Activating an Apn");
          (*(*v11 + 88))(v11, v17, v18, 1, &__p, 0, 0);
          if (v21 < 0)
          {
            operator delete(__p);
          }
        }

        goto LABEL_24;
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
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if (validContextType())
  {
    *(v1 + 4 * *(v1 + 156) + 164) = 0;
  }
}

void sub_101300680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013006CC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 10) & 0x402) != 0 && (*(a2 + 4) & 0x80000000) == 0)
  {
    (*(**(a1 + 96) + 200))(&v12);
    v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v12 + 52));
    if (*v13)
    {
      sub_100004A34(*v13);
    }

    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a2 + 4);
      v7 = *(a2 + 16);
      v8 = asString();
      LODWORD(v12) = 67109634;
      HIDWORD(v12) = v6;
      *v13 = 2048;
      *&v13[2] = v7;
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I IMS DataContext blocked: pdp=%d, serviceMask=0x%02llx, contextType=%s", &v12, 0x1Cu);
    }

    sub_1012FE30C(a1);
    if (validContextType())
    {
      v9 = *(a2 + 24);
      *(a1 + 4 * v9 + 164) = 0;
    }

    else
    {
      LODWORD(v9) = *(a2 + 24);
    }

    v10 = *v4;
    v11 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I IMS DataContext blocked: Not reporting IMS status to Baseband - wrong context type", &v12, 2u);
      }
    }

    else
    {
      if (v11)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I IMS DataContext blocked: Trying to report IMS status to Baseband", &v12, 2u);
      }

      (*(**(a1 + 96) + 184))(*(a1 + 96), 1);
    }
  }
}

void sub_1013008EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101300914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1012FE20C(*(a1 + 96));
  v7 = *(a2 + 8);
  v6 = (a2 + 8);
  v5 = v7;
  if (!v7)
  {
    return;
  }

  v8 = v6;
  do
  {
    if (v5[8] >= v4)
    {
      v8 = v5;
    }

    v5 = *&v5[2 * (v5[8] < v4)];
  }

  while (v5);
  if (v8 == v6 || v4 < v8[8])
  {
    return;
  }

  (*(**(a1 + 96) + 200))(v23);
  v9 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*v23 + 52));
  if (*&v23[8])
  {
    sub_100004A34(*&v23[8]);
  }

  v10 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = asString();
    v12 = asString();
    *v23 = 136315394;
    *&v23[4] = v11;
    *&v23[12] = 2080;
    *&v23[14] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I ConnectionState: %s, own PDP state: %s", v23, 0x16u);
  }

  v13 = v8[11];
  if (v13 != 2)
  {
    goto LABEL_21;
  }

  if (*(a1 + 152) == 2)
  {
    v14 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I ConnectionState: Going from kActive to kActive", v23, 2u);
    }

    v15 = v8 + 14;
    v16 = 32;
    do
    {
      if ((*(v15 + 1) & 0x402) != 0)
      {
        (*(**(a1 + 96) + 64))(*(a1 + 96), *(v15 - 2) == 18, v8[21]);
      }

      v15 += 4;
      v16 -= 16;
    }

    while (v16);
    v13 = v8[11];
LABEL_21:
    v17 = *(a1 + 152);
    if (v13 == v17)
    {
      return;
    }

    *(a1 + 152) = v13;
    if (v13 != 2)
    {
      if (v17 == 2)
      {
        v18 = *v9;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I ConnectionState: Pdp became inactive", v23, 2u);
        }

        (*(**(a1 + 96) + 56))(*(a1 + 96));
      }

      return;
    }

    goto LABEL_28;
  }

  *(a1 + 152) = 2;
LABEL_28:
  v19 = *v9;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I ConnectionState: Pdp became active", v23, 2u);
  }

  v20 = v8 + 14;
  v21 = 32;
  while ((*(v20 + 1) & 0x402) == 0)
  {
    v20 += 4;
    v21 -= 16;
    if (!v21)
    {
      v22 = 0;
      goto LABEL_35;
    }
  }

  v22 = *(v20 - 2) == 18;
LABEL_35:
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  (*(**(a1 + 96) + 48))(*(a1 + 96), v22, v8[21]);
}

void sub_101300C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101300CA0(uint64_t a1, int *a2)
{
  (*(**(a1 + 96) + 200))(v23);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*v23 + 52));
  if (*&v23[8])
  {
    sub_100004A34(*&v23[8]);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (validContextType())
  {
    v5 = *(a1 + 160);
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:
      v17 = asString();
      v18 = asString();
      v19 = sd::asString();
      v20 = sd::asString();
      *v23 = 136315906;
      *&v23[4] = v17;
      *&v23[12] = 2080;
      *&v23[14] = v18;
      v24 = 2080;
      v25 = v19;
      v26 = 2080;
      v27 = v20;
      v13 = "#I IMS Pref: ct=%s --> %s, bb_mask=[%s], tech_mask=[%s]";
      v14 = v8;
      v15 = 42;
      goto LABEL_17;
    }
  }

  else if (validContextType())
  {
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = sd::asString();
      v12 = sd::asString();
      *v23 = 136315650;
      *&v23[4] = v10;
      *&v23[12] = 2080;
      *&v23[14] = v11;
      v24 = 2080;
      v25 = v12;
      v13 = "#I IMS Pref: ct=%s, bb_mask=[%s], tech_mask=[%s]";
      v14 = v9;
      v15 = 32;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, v23, v15);
    }
  }

  else
  {
    if (v7)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v6)
    {
      v5 = 0;
    }

    else
    {
      v5 = v16;
    }

    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }
  }

  if (validContextType())
  {
    if (*(a1 + 156) != v5)
    {
      *(a1 + 156) = v5;
      if (*(a1 + 184))
      {
        v21 = *v4;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I ContextType changed, retrying PDN bringup", v23, 2u);
        }

        sub_1012FEA30(a1, 1);
      }
    }
  }

  return (*(**(a1 + 96) + 72))(*(a1 + 96), a2);
}

void sub_101300FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101301000(uint64_t a1, unsigned __int16 *a2)
{
  (*(**(a1 + 96) + 200))(&v8);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v8 + 52));
  if (v9)
  {
    sub_100004A34(v9);
  }

  v5 = *v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    LODWORD(v8) = 67109120;
    HIDWORD(v8) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I IMS PCO: containerId=0x%04x", &v8, 8u);
  }

  return (*(**(a1 + 96) + 80))(*(a1 + 96), a2);
}

void sub_101301144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10130116C(uint64_t a1, _BOOL8 a2)
{
  (*(**(a1 + 96) + 200))(&v8);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v8 + 52));
  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  v5 = *v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asStringBool(a2);
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I IMS HandoverStateChange: %s", &v8, 0xCu);
  }

  return (*(**(a1 + 96) + 88))(*(a1 + 96), a2);
}

void sub_1013012B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013012DC(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 96) + 200))(v7);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*v7 + 52));
  if (*&v7[8])
  {
    sub_100004A34(*&v7[8]);
  }

  v5 = *v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 172);
    *v7 = 134218240;
    *&v7[4] = v6;
    *&v7[12] = 2048;
    *&v7[14] = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Changed T3402 timer value from %lu to %lu", v7, 0x16u);
  }

  *(a1 + 172) = a2;
}

void sub_101301408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101301430(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 10) & 0x402) == 0)
  {
    return;
  }

  (*(**(a1 + 96) + 200))(v16);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*v16 + 52));
  if (*&v16[8])
  {
    sub_100004A34(*&v16[8]);
  }

  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CSIErrorString();
    *v16 = 136315138;
    *&v16[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ConnectionActivateError: Activate error for 5wi Pdn = %s", v16, 0xCu);
  }

  v7 = *(a2 + 4);
  if (!isT3402CSIError())
  {
    if (isT3396CSIError())
    {
      v8 = 1000 * (*(**(a1 + 112) + 344))(*(a1 + 112));
      goto LABEL_17;
    }

    if (v7 == 98)
    {
      v9 = (*(**(a1 + 112) + 336))(*(a1 + 112));
    }

    else
    {
      if (v7 != 91)
      {
        goto LABEL_14;
      }

      v9 = (*(**(a1 + 112) + 328))(*(a1 + 112));
    }

    v8 = v9;
    goto LABEL_17;
  }

  if (!(*(**(a1 + 112) + 352))(*(a1 + 112)))
  {
LABEL_14:
    v8 = 0;
    goto LABEL_17;
  }

  v8 = *(a1 + 172);
LABEL_17:
  (*(**(a1 + 96) + 200))(v16);
  v10 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*v16 + 52));
  if (*&v16[8])
  {
    sub_100004A34(*&v16[8]);
  }

  v11 = *v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = CSIErrorString();
    *v16 = 136315394;
    *&v16[4] = v12;
    *&v16[12] = 2048;
    *&v16[14] = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I PdpActivateError: %s requires backoff timer = %lu", v16, 0x16u);
  }

  if (v8)
  {
    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 134217984;
      *&v16[4] = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I ConnectionActivateError: Unsetting the service Option mask with backoff timer = %lu", v16, 0xCu);
    }

    if (validContextType())
    {
      *(a1 + 4 * *(a1 + 156) + 164) = 0;
    }

    sub_1012FFDAC(a1, v8);
  }

  if (*(a2 + 4) == 105)
  {
    v14 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I PDN is not transferrable - suppressing IMS status to Baseband", v16, 2u);
    }

    (*(**(a1 + 96) + 176))(*(a1 + 96), "NonTransferrablePdn");
  }

  if ((*(**(a1 + 96) + 104))(*(a1 + 96)))
  {
    v15 = *v4;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N ConnectionActivateError: Potential PDN bring up failure. Retry?", v16, 2u);
    }

    sub_1012FEA30(a1, 0);
  }
}

void sub_1013018A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013018D0(uint64_t a1)
{
  if (!*(a1 + 172))
  {
    return 0;
  }

  (*(**(a1 + 96) + 200))(&v6);
  v2 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v6 + 52));
  if (*(&v6 + 1))
  {
    sub_100004A34(*(&v6 + 1));
  }

  v3 = *v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 172);
    LODWORD(v6) = 134217984;
    *(&v6 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I triggerT3402BackOff: Unsetting the service Option mask with backoff timer = %lu", &v6, 0xCu);
  }

  if (validContextType())
  {
    *(a1 + 4 * *(a1 + 156) + 164) = 0;
  }

  sub_1012FFDAC(a1, *(a1 + 172));
  return *(a1 + 172);
}

void sub_101301A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101301A38(uint64_t a1)
{
  (*(**(a1 + 96) + 200))(buf);
  v2 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(buf[0].__locale_ + 13));
  if (buf[1].__locale_)
  {
    sub_100004A34(buf[1].__locale_);
  }

  v3 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].__locale_) = 136315394;
    *(&buf[0].__locale_ + 4) = "IMSConnectivityHelperCT";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "IMSConnectivityHelperCT";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I 5wi.ct:: ----------------- %s %s ==>> -------------------", buf, 0x16u);
  }

  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  *v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  *__src = 0u;
  memset(buf, 0, sizeof(buf));
  sub_10000D518(buf);
  v4 = sub_10000C030(buf);
  v5 = sub_10000C030(v4);
  (*(**(a1 + 96) + 200))(__p);
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
  v14 = asStringBool(*(a1 + 148));
  strlen(v14);
  v15 = sub_10000C030(v13);
  v16 = sub_10000C030(v15);
  v17 = sub_10000C030(v16);
  v18 = sub_10000C030(v17);
  v19 = asStringBool(*(a1 + 149));
  strlen(v19);
  v20 = sub_10000C030(v18);
  v21 = sub_10000C030(v20);
  v22 = sub_10000C030(v21);
  sub_10000C030(v22);
  v23 = std::ostream::operator<<();
  v24 = sub_10000C030(v23);
  v25 = sub_10000C030(v24);
  sub_10000C030(v25);
  v26 = std::ostream::operator<<();
  v27 = sub_10000C030(v26);
  v28 = sub_10000C030(v27);
  sub_10000C030(v28);
  v29 = std::ostream::operator<<();
  v30 = sub_10000C030(v29);
  v31 = sub_10000C030(v30);
  sub_10000C030(v31);
  v32 = std::ostream::operator<<();
  v33 = sub_10000C030(v32);
  v34 = sub_10000C030(v33);
  v35 = sub_10000C030(v34);
  v36 = asStringBool(*(a1 + 176) != 0);
  strlen(v36);
  v37 = sub_10000C030(v35);
  v38 = sub_10000C030(v37);
  v39 = sub_10000C030(v38);
  v40 = sub_10000C030(v39);
  v41 = asStringBool(*(a1 + 184) != 0);
  strlen(v41);
  v42 = sub_10000C030(v40);
  v43 = sub_10000C030(v42);
  std::ios_base::getloc((v43 + *(*v43 - 24)));
  v44 = std::locale::use_facet(v53, &std::ctype<char>::id);
  (v44->__vftable[2].~facet_0)(v44, 10);
  std::locale::~locale(v53);
  std::ostream::put();
  std::ostream::flush();
  if (*&__p[8])
  {
    sub_100004A34(*&__p[8]);
  }

  v45 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    if ((BYTE8(v59) & 0x10) != 0)
    {
      v47 = v59;
      if (v59 < __src[1])
      {
        *&v59 = __src[1];
        v47 = __src[1];
      }

      locale = __src[0];
    }

    else
    {
      if ((BYTE8(v59) & 8) == 0)
      {
        v46 = 0;
        v52 = 0;
LABEL_28:
        __p[v46] = 0;
        v49 = __p;
        if (v52 < 0)
        {
          v49 = *__p;
        }

        LODWORD(v53[0].__locale_) = 136315138;
        *(&v53[0].__locale_ + 4) = v49;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I 5wi.ct:: %s", v53, 0xCu);
        if (v52 < 0)
        {
          operator delete(*__p);
        }

        v45 = *v2;
        goto LABEL_33;
      }

      locale = buf[3].__locale_;
      v47 = *(&v55 + 1);
    }

    v46 = v47 - locale;
    if ((v47 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v46 >= 0x17)
    {
      operator new();
    }

    v52 = v47 - locale;
    if (v46)
    {
      memmove(__p, locale, v46);
    }

    goto LABEL_28;
  }

LABEL_33:
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315394;
    *&__p[4] = "IMSConnectivityHelperCT";
    *&__p[12] = 2080;
    *&__p[14] = "IMSConnectivityHelperCT";
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I 5wi.ct:: ------------ <<== %s %s ------------------------", __p, 0x16u);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[1]);
  }

  std::locale::~locale(&buf[2]);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_101302190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, char a15, uint64_t a16)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_101302254(void *a1)
{
  *a1 = off_101F2BE38;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1013022A0(void *a1)
{
  *a1 = off_101F2BE38;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101302378(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F2BE38;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013023B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1013023C0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

const char *sub_101302400(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = *(v6 + 1);
        if (v7 < 0)
        {
          v10 = "5wi.ct.x.X";
          goto LABEL_17;
        }

        v8 = *v6;
        if ((v8 - 2) < 2)
        {
          v10 = "5wi.ct.M";
          goto LABEL_17;
        }

        v9 = off_101F2BF98;
        if (v8 == 1)
        {
          goto LABEL_12;
        }

        if (!v8)
        {
          if (v4 == 2)
          {
            v9 = off_101F2BF18;
          }

          if (v4 == 1)
          {
            v9 = off_101F2BE98;
          }

LABEL_12:
          v10 = v9[v7 & 0xF];
LABEL_17:
          sub_100004A34(v5);
          return v10;
        }
      }

      v10 = "5wi.ct.?";
      goto LABEL_17;
    }
  }

  return "5wi.ct.?";
}

uint64_t sub_1013024C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013025E0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[4], v1, sub_1013026B4);
  __cxa_rethrow();
}

void sub_101302620(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101302674(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013026B4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_1013026E0(uint64_t **a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!v1[1])
      {
LABEL_23:
        sub_100004A34(v5);
        goto LABEL_24;
      }

      ServiceMap = Registry::getServiceMap(*(v3 + 64));
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
      v25 = v8;
      v12 = sub_100009510(&v7[1].__m_.__sig, &v25);
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
          if (!v14)
          {
LABEL_21:
            if ((v15 & 1) == 0)
            {
              sub_100004A34(v13);
            }

            goto LABEL_23;
          }

LABEL_13:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v16 = sub_1012FDD28(v3);
          (*(*v14 + 592))(&v25, v14, v16);
          v18 = v25;
          v17 = v26;
          if (0x6DB6DB6DB6DB6DB7 * ((v17 - v18) >> 3) >= (sub_1012FE20C(*(v3 + 96)) + 1))
          {
            v21 = sub_1012FE20C(*(v3 + 96));
            if (0x6DB6DB6DB6DB6DB7 * ((v26 - v25) >> 3) <= v21)
            {
              sub_1002030E0();
            }

            sub_101300104(v3, *(v25 + 56 * v21) == 0, 2);
          }

          else
          {
            (*(**(v3 + 96) + 200))(buf);
            v19 = (*(**(v3 + 56) + 16))(*(v3 + 56), *(*buf + 52));
            if (v29)
            {
              sub_100004A34(v29);
            }

            v20 = *v19;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Connection vector doesn't contain information for IMS data connection", buf, 2u);
            }
          }

          *buf = &v25;
          sub_10009C118(buf);
          goto LABEL_21;
        }
      }

      else
      {
        v14 = 0;
      }

      std::mutex::unlock(v7);
      v13 = 0;
      v15 = 1;
      if (!v14)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }
  }

LABEL_24:
  sub_10007060C(&v24);
  return sub_1000049E0(&v23);
}

void sub_10130298C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  a14 = &a11;
  sub_10009C118(&a14);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  sub_100004A34(v16);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_101302A70(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C098;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101302AA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = validContextType();
  v4 = **(a1 + 24);
  if (result)
  {
    *(v2 + 148 + **(a1 + 8)) = v4;
  }

  else
  {
    *(v2 + 149) = v4;
    *(v2 + 148) = v4;
  }

  return result;
}

uint64_t sub_101302AFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101302BB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2C118;
  a2[1] = v2;
  return result;
}

uint64_t sub_101302BEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101302CAC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C198;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101302CDC(uint64_t a1)
{
  v2 = *(a1 + 8);
  ServiceMap = Registry::getServiceMap(*(v2 + 64));
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
  v21[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, v21);
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
        goto LABEL_13;
      }

      goto LABEL_10;
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
    goto LABEL_13;
  }

LABEL_10:
  v13 = **(a1 + 16) / 0x3E8u;
  v21[0] = 0;
  v14 = CFDateCreate(0, v13);
  v21[0] = v14;
  v29 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  (*(*v11 + 24))(v11, &v29, @"com.apple.sd.SystemWake");
  sub_1003EC530(&v29);
  sub_1003EC530(v21);
LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  Registry::getTimerService(&v26, *(v2 + 64));
  v15 = v26;
  sub_10000501C(__p, "PDP BringUp BackOff timer");
  v16 = **(a1 + 16);
  v17 = *(v2 + 32);
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 0x40000000;
  v21[2] = sub_101303064;
  v21[3] = &unk_101F2C1F8;
  v21[4] = v2;
  aBlock = _Block_copy(v21);
  sub_100D23364(v15, __p, 1, 1000 * v16, &object, &aBlock);
  v18 = v28;
  v28 = 0;
  v19 = *(v2 + 176);
  *(v2 + 176) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v20 = v28;
    v28 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
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

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }
}

void sub_101302F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  sub_1003EC530((v25 - 72));
  sub_1003EC530(&a9);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101303018(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101303064(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*v1[12] + 200))(&v5);
  v2 = (*(*v1[7] + 16))(v1[7], *(v5 + 52));
  if (v6)
  {
    sub_100004A34(v6);
  }

  v3 = *v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I PdpBringUp: Back-Off timer expired", &v5, 2u);
  }

  result = sub_1012FF1F0(v1);
  if (result)
  {
    return (*(*v1[12] + 32))(v1[12], "CT::handlePdpBringUpBackOffTimerExpired", 5);
  }

  return result;
}

void sub_101303174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10130318C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_101303218(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = a2;
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v5 = [NSString stringWithUTF8String:a3];
  v4 = *(a1 + 8);
  v7[0] = off_101F2C380;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v4, v7);
  sub_10002B210(v7);
}

void sub_1013032D8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B210(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1013032FC(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2;
  v3 = *(a1 + 8);
  v6[0] = off_101F2C400;
  v6[1] = a3;
  v6[2] = &v5;
  v6[3] = v6;
  sub_100125DF8(v3, v6);
  return sub_10002B210(v6);
}

void sub_10130338C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1013033A0(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2;
  v3 = *(a1 + 8);
  v6[0] = off_101F2C480;
  v6[1] = a3;
  v6[2] = &v5;
  v6[3] = v6;
  sub_100125DF8(v3, v6);
  return sub_10002B210(v6);
}

void sub_101303430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101303444(uint64_t a1, int a2)
{
  v5 = a2;
  v4 = [NSNumber numberWithInt:?];
  v3 = *(a1 + 8);
  v6[0] = off_101F2C500;
  v6[1] = &v5;
  v6[2] = &v4;
  v6[3] = v6;
  sub_100125DF8(v3, v6);
  sub_10002B210(v6);
}

void sub_1013034F8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B210(va);

  _Unwind_Resume(a1);
}

uint64_t sub_10130351C(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F2C580;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1013035B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_1013035C4(uint64_t a1, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  operator new();
}

void sub_101303678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_10130368C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6)
{
  v8 = a4;
  v6 = a6;
  v7 = a5;
  operator new();
}

void sub_101303758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

const void **sub_10130376C(uint64_t a1, int a2, void **a3)
{
  v10 = a2;
  v4 = *a3;
  object = v4;
  v9 = 0;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(&v9, &object, v5);
  xpc_release(object);
  v6 = *(a1 + 8);
  v11[0] = off_101F2C780;
  v11[1] = &v10;
  v11[2] = &v9;
  v11[3] = v11;
  sub_100125DF8(v6, v11);
  sub_10002B210(v11);
  return sub_10000A1EC(&v9);
}

void sub_10130383C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, const void *a10, uint64_t a11, char a12)
{
  sub_10002B210(&a12);
  sub_10000A1EC(&a10);
  _Unwind_Resume(a1);
}

void sub_101303884(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v6 = a3;
  v5 = a5;
  operator new();
}

void sub_10130394C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101303960(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 8);
  v7[0] = off_101F2C900;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1013039F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101303A0C(uint64_t a1, int a2, char a3, int a4)
{
  v6 = a2;
  v5 = a3;
  v4 = a4;
  operator new();
}

void sub_101303AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101303ADC(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 8);
  v5[0] = off_101F2CA00;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_101303B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101303B80(uint64_t a1, int a2, int a3)
{
  v5 = a2;
  v6 = a3;
  v3 = *(a1 + 8);
  v7[0] = off_101F2CA80;
  v7[1] = &v5;
  v7[2] = &v6;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_101303C14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101303C28(uint64_t a1, int a2, char a3, char a4)
{
  v6 = a2;
  v5 = a3;
  v4 = a4;
  operator new();
}

void sub_101303CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101303DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101303DD0(int a1, int a2, MCC *a3, const MCC *a4)
{
  MCC::MCC(&v6, a3);
  MCC::MCC(&v7, a4);
  v8 = a2;
  v9 = 0;
  operator new();
}

void sub_101303EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_10002B210(&a21);
  sub_1002FECBC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_101303F50(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3[0] = off_101F2CC80;
  v3[3] = v3;
  sub_100125DF8(v1, v3);
  return sub_10002B210(v3);
}

void sub_101303FD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101303FEC(CTXPCRegistrationNotificationInterface *this)
{
  *this = off_101F2C238;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCRegistrationNotificationInterface::~CTXPCRegistrationNotificationInterface(this);
}

void sub_101304048(CTXPCRegistrationNotificationInterface *this)
{
  *this = off_101F2C238;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCRegistrationNotificationInterface::~CTXPCRegistrationNotificationInterface(this);

  operator delete();
}

void sub_101304120(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10130415C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101304194(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1013041C4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101304278(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C380;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1013042A8(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 operatorNameChanged:v3 name:**(a1 + 16)];
}

uint64_t sub_101304344(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101304404(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C400;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101304434(uint64_t a1, id *a2)
{
  v5 = *a2;
  v3 = objc_opt_new();
  [v3 setRegistrationDisplayStatus:sub_10002BE80(**(a1 + 8))];
  [v3 setIsInHomeCountry:*(*(a1 + 8) + 4)];
  [v3 setChangedDueToSimRemoval:*(*(a1 + 8) + 5)];
  [v3 setIsRegistrationForcedHome:*(*(a1 + 8) + 6)];
  [v3 setIsSatelliteSystem:*(*(a1 + 8) + 7)];
  v4 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v5 displayStatusChanged:v4 status:v3];
}

void sub_101304518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_101304548(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101304608(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C480;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101304638(uint64_t a1, id *a2)
{
  v8 = *a2;
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithInt:**(a1 + 8)];
  [v3 setBars:v4];

  v5 = [NSNumber numberWithInt:*(*(a1 + 8) + 4)];
  [v3 setDisplayBars:v5];

  v6 = [NSNumber numberWithInt:*(*(a1 + 8) + 8)];
  [v3 setMaxDisplayBars:v6];

  v7 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v8 signalStrengthChanged:v7 info:v3];
}

void sub_101304748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_10130478C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10130484C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C500;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10130487C(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 rejectCauseCodeChanged:v3 causeCode:**(a1 + 16)];
}

uint64_t sub_101304918(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013049D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C580;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101304A08(uint64_t a1, id *a2)
{
  v6 = *a2;
  v3 = [NSNumber numberWithInteger:**(a1 + 8)];
  v4 = [[CTVoiceLinkQualityMetric alloc] initWithLinkQuality:v3];
  v5 = [CTXPCPlaceholder simSlot:**(a1 + 16)];
  [v6 voiceLinkQualityChanged:v5 metric:v4];
}

void sub_101304AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t sub_101304B00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101304BC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C600;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101304BEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101304CB4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C680;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101304CEC(uint64_t a1, id *a2)
{
  v9 = *a2;
  v3 = [NSData dataWithBytes:**(a1 + 8) length:*(*(a1 + 8) + 8) - **(a1 + 8)];
  v4 = [CTEnhancedDataLinkQualityMetric alloc];
  v5 = **(a1 + 16) - 16;
  if (v5 > 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_10194FB78[v5];
  }

  v7 = [v4 initWithType:v6 enhancedLinkQuality:v3];
  v8 = [CTXPCPlaceholder simSlot:**(a1 + 24)];
  [v9 enhancedDataLinkQualityChanged:v8 metric:v7];
}

void sub_101304DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_101304E10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101304EE0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C700;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_101304F20(uint64_t a1, id *a2)
{
  v5 = *a2;
  v3 = objc_opt_new();
  [v3 setIsRegistered:**(a1 + 8)];
  [v3 setContextType:**(a1 + 16)];
  [v3 setTransportType:**(a1 + 24)];
  v4 = [CTXPCPlaceholder simSlot:SlotIdFromPersonalityId()];
  [v5 imsRegistrationChanged:v4 info:v3];
}

void sub_101304FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_101305010(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013050D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C780;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101305100(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 cellChanged:v3 cell:**(a1 + 16)];
}

uint64_t sub_10130519C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10130525C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C800;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101305288(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101305350(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C880;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101305388(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = objc_opt_new();
  if (**(a1 + 8) != *(*(a1 + 8) + 8))
  {
    v16 = v3;
    v5 = objc_opt_new();
    v6 = *(a1 + 8);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        v9 = objc_opt_new();
        NetworkListOperator::getLocalizedCompositeName();
        if (v19 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        v11 = [NSString stringWithUTF8String:v10, v16];
        [v9 setName:v11];

        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        NetworkListOperator::getKey(__p, v7);
        if (v19 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        v13 = [NSString stringWithUTF8String:v12];
        [v9 setPlmn:v13];

        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        RAT = NetworkListOperator::getRAT(v7);
        [v9 setRat:sub_1014470D4(RAT)];
        [v5 addObject:v9];

        v7 = (v7 + 136);
      }

      while (v7 != v8);
    }

    [v4 setNetworks:{v5, v16}];

    v3 = v17;
  }

  [v4 setMoreComing:**(a1 + 32)];
  v15 = [CTXPCPlaceholder simSlot:**(a1 + 24)];
  [v3 networkListAvailable:v15 list:v4];
}

uint64_t sub_1013055F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013056B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C900;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1013056E4(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 customerServiceProfileChanged:v3 visible:**(a1 + 16)];
}

uint64_t sub_101305780(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101305848(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2C980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101305880(uint64_t a1, id *a2)
{
  v7 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  v4 = **(a1 + 24);
  v5 = &kCTRegistrationNetworkSelectionModeManual;
  if (v4 != 1)
  {
    v5 = &kCTRegistrationNetworkSelectionModeDisabled;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = &kCTRegistrationNetworkSelectionModeAutomatic;
  }

  [v7 networkSelected:v3 success:**(a1 + 16) mode:*v6];
}

uint64_t sub_10130594C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101305A08(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2CA00;
  a2[1] = v2;
  return result;
}

void sub_101305A34(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder simSlot:**(a1 + 8)];
  [v4 networkReselectionNeeded:v3];
}

uint64_t sub_101305AC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101305B88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2CA80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101305BB8(uint64_t a1, id *a2)
{
  v5 = *a2;
  v3 = sub_100184890(**(a1 + 8));
  v4 = sub_10172B0D8(*(a1 + 16));
  [v5 encryptionStatusChanged:v3 info:v4];
}

void sub_101305C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_101305C6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101305D34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2CB00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101305D6C(uint64_t a1, id *a2)
{
  v3 = *a2;
  v6 = 0;
  v7 = 0;
  sub_101447450(**(a1 + 8), **(a1 + 16), &v7, &v6);
  v4 = objc_opt_new();
  [v4 setMask:**(a1 + 8)];
  [v4 setSelection:v7];
  [v4 setPreferred:v6];
  v5 = sub_100184890(**(a1 + 24));
  [v3 ratSelectionChanged:v5 selection:v4];
}

void sub_101305E28(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_101305E58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101305F20(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2CB80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101305F58(uint64_t a1, id *a2)
{
  v5 = *a2;
  v3 = sub_10172B3BC((a1 + 8));
  v4 = sub_100184890(*(a1 + 28));
  [v5 nrDisableStatusChanged:v4 status:v3];
}

void sub_101305FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_101306008(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101306054(uint64_t a1)
{
  *a1 = off_101F2CC00;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1013060B4(uint64_t a1)
{
  *a1 = off_101F2CC00;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_1013061AC(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1013061D8(unsigned int *a1, void *a2)
{
  *a2 = off_101F2CC00;
  v4 = (a2 + 5);
  MCC::MCC((a2 + 1), (a1 + 2));
  MCC::MCC(v4, (a1 + 10));
  a2[9] = a1[18];
}

void sub_101306244(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_101306268(void *a1)
{
  sub_100B7713C(a1 + 8);

  operator delete(a1);
}

void sub_1013062A4(int *a1, id *a2)
{
  v3 = *a2;
  v4 = [CTPlmnInfo alloc];
  MCC::MCC(v10, (a1 + 2));
  MCC::MCC(&v7, (a1 + 10));
  v5 = [v4 initWithMcc:v10 mnc:&v7];
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  v6 = sub_100184890(a1[18]);
  [v3 plmnChanged:v6 plmn:v5];
}

void sub_101306368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v25 = v23;

  _Unwind_Resume(a1);
}

uint64_t sub_1013063C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013064A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101306574(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3[0] = off_101F2CDB8;
  v3[3] = v3;
  sub_100125DF8(v1, v3);
  return sub_10002B210(v3);
}

void sub_1013065FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101306610(CTXPCAppDataUsageNotificationInterface *this)
{
  *this = off_101F2CD00;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCAppDataUsageNotificationInterface::~CTXPCAppDataUsageNotificationInterface(this);
}

void sub_10130666C(CTXPCAppDataUsageNotificationInterface *this)
{
  *this = off_101F2CD00;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCAppDataUsageNotificationInterface::~CTXPCAppDataUsageNotificationInterface(this);

  operator delete();
}

void sub_101306744(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101306780(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1013067B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1013067E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013068B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101306C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_101307128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
{
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_101307508(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10130788C(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_101307C20(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_101307FB4(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_101308068(uint64_t a1)
{

  operator delete();
}

id sub_10130811C(uint64_t a1, void *a2)
{
  *a2 = off_101F2CE38;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10130816C(id *a1)
{

  operator delete(a1);
}

void sub_1013081A8(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

  v4 = v3;
  (*(*(a1 + 8) + 16))();
}

uint64_t sub_10130824C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F2CE98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013082C4(uint64_t a1)
{

  operator delete();
}

id sub_101308378(uint64_t a1, void *a2)
{
  *a2 = off_101F2CEB8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1013083C8(id *a1)
{

  operator delete(a1);
}

void sub_101308404(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

  v4 = v3;
  (*(*(a1 + 8) + 16))();
}

uint64_t sub_1013084A8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F2CF18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101308520(uint64_t a1)
{

  operator delete();
}

id sub_1013085D4(uint64_t a1, void *a2)
{
  *a2 = off_101F2CF38;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101308624(id *a1)
{

  operator delete(a1);
}

void sub_101308660(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

  v4 = v3;
  (*(*(a1 + 8) + 16))();
}

uint64_t sub_101308704(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F2CF98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10130877C(uint64_t a1)
{

  operator delete();
}

id sub_101308830(uint64_t a1, void *a2)
{
  *a2 = off_101F2CFB8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101308880(id *a1)
{

  operator delete(a1);
}

void sub_1013088BC(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    (*(*(a1 + 8) + 16))();
    v3 = 0;
  }

  else
  {
    v4 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(*(a1 + 8) + 16))();
    v3 = v4;
  }
}

uint64_t sub_101308980(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F2D018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013089F8(uint64_t a1)
{

  operator delete();
}

id sub_101308AAC(uint64_t a1, void *a2)
{
  *a2 = off_101F2D038;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101308AFC(id *a1)
{

  operator delete(a1);
}

void sub_101308B38(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if ((*a2 & 1) == 0)
  {
    v6 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(*(a1 + 8) + 16))();
    goto LABEL_118;
  }

  v5 = objc_opt_new();
  if (*(a3 + 31) < 0)
  {
    v7 = *(a3 + 16);
    if (!v7)
    {
      goto LABEL_22;
    }

    sub_100005F2C(__p, *(a3 + 8), v7);
  }

  else
  {
    if (!*(a3 + 31))
    {
      goto LABEL_22;
    }

    *__p = *(a3 + 8);
    v33 = *(a3 + 24);
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v36 = v33;
  }

  v26[0] = 0;
  if (SHIBYTE(v36) < 0)
  {
    sub_100005F2C(&v37, __dst, *(&__dst + 1));
  }

  else
  {
    v37 = __dst;
    v38 = v36;
  }

  v28[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v26[0];
    v26[0] = v28[0];
    v30[0] = v8;
    sub_100005978(v30);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  v24[0] = v26[0];
  v26[0] = 0;
  sub_100005978(v26);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

  [v5 setName:v24[0]];
  sub_100005978(v24);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_22:
  CSIPhoneNumber::getFullNumber(&v37, (a3 + 32));
  if (SHIBYTE(v38) < 0)
  {
    v9 = *(&v37 + 1);
    operator delete(v37);
    if (!v9)
    {
      goto LABEL_40;
    }
  }

  else if (!HIBYTE(v38))
  {
    goto LABEL_40;
  }

  CSIPhoneNumber::getFullNumber(v30, (a3 + 32));
  if (SHIBYTE(v31) < 0)
  {
    sub_100005F2C(&__dst, v30[0], v30[1]);
  }

  else
  {
    __dst = *v30;
    v36 = v31;
  }

  v24[0] = 0;
  if (SHIBYTE(v36) < 0)
  {
    sub_100005F2C(&v37, __dst, *(&__dst + 1));
  }

  else
  {
    v37 = __dst;
    v38 = v36;
  }

  v26[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v10 = v24[0];
    v24[0] = v26[0];
    v28[0] = v10;
    sub_100005978(v28);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  v21[0] = v24[0];
  v24[0] = 0;
  sub_100005978(v24);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

  [v5 setNumber:{v21[0], v21[0]}];
  sub_100005978(v21);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

LABEL_40:
  CSIPhoneNumber::getFullNumber(&v37, (a3 + 192));
  if (SHIBYTE(v38) < 0)
  {
    v11 = *(&v37 + 1);
    operator delete(v37);
    if (!v11)
    {
      goto LABEL_58;
    }
  }

  else if (!HIBYTE(v38))
  {
    goto LABEL_58;
  }

  CSIPhoneNumber::getFullNumber(v28, (a3 + 192));
  if (SHIBYTE(v29) < 0)
  {
    sub_100005F2C(&__dst, v28[0], v28[1]);
  }

  else
  {
    __dst = *v28;
    v36 = v29;
  }

  v21[0] = 0;
  if (SHIBYTE(v36) < 0)
  {
    sub_100005F2C(&v37, __dst, *(&__dst + 1));
  }

  else
  {
    v37 = __dst;
    v38 = v36;
  }

  v24[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v21[0];
    v21[0] = v24[0];
    v26[0] = v12;
    sub_100005978(v26);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  v40 = v21[0];
  v21[0] = 0;
  sub_100005978(v21);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

  [v5 setAltNumber:v40];
  sub_100005978(&v40);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

LABEL_58:
  if (*(a3 + 375) < 0)
  {
    v13 = *(a3 + 360);
    if (!v13)
    {
      goto LABEL_77;
    }

    sub_100005F2C(v26, *(a3 + 352), v13);
  }

  else
  {
    if (!*(a3 + 375))
    {
      goto LABEL_77;
    }

    *v26 = *(a3 + 352);
    v27 = *(a3 + 368);
  }

  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(&__dst, v26[0], v26[1]);
  }

  else
  {
    __dst = *v26;
    v36 = v27;
  }

  v40 = 0;
  if (SHIBYTE(v36) < 0)
  {
    sub_100005F2C(&v37, __dst, *(&__dst + 1));
  }

  else
  {
    v37 = __dst;
    v38 = v36;
  }

  v21[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v14 = v40;
    v40 = v21[0];
    v24[0] = v14;
    sub_100005978(v24);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  v39 = v40;
  v40 = 0;
  sub_100005978(&v40);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

  [v5 setGroup:v39];
  sub_100005978(&v39);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

LABEL_77:
  v15 = (a3 + 376);
  if (*(a3 + 399) < 0)
  {
    v16 = *(a3 + 384);
    if (!v16)
    {
      goto LABEL_96;
    }

    sub_100005F2C(v24, *v15, v16);
  }

  else
  {
    if (!*(a3 + 399))
    {
      goto LABEL_96;
    }

    *v24 = *v15;
    v25 = *(a3 + 392);
  }

  if (SHIBYTE(v25) < 0)
  {
    sub_100005F2C(&__dst, v24[0], v24[1]);
  }

  else
  {
    __dst = *v24;
    v36 = v25;
  }

  v39 = 0;
  if (SHIBYTE(v36) < 0)
  {
    sub_100005F2C(&v37, __dst, *(&__dst + 1));
  }

  else
  {
    v37 = __dst;
    v38 = v36;
  }

  v40 = 0;
  if (ctu::cf::convert_copy())
  {
    v17 = v39;
    v39 = v40;
    v21[0] = v17;
    sub_100005978(v21);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  v34 = v39;
  v39 = 0;
  sub_100005978(&v39);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

  [v5 setAltText:v34];
  sub_100005978(&v34);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

LABEL_96:
  if (*(a3 + 423) < 0)
  {
    v18 = *(a3 + 408);
    if (v18)
    {
      sub_100005F2C(v21, *(a3 + 400), v18);
      goto LABEL_101;
    }
  }

  else if (*(a3 + 423))
  {
    *v21 = *(a3 + 400);
    v22 = *(a3 + 416);
LABEL_101:
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&__dst, v21[0], v21[1]);
    }

    else
    {
      __dst = *v21;
      v36 = v22;
    }

    v34 = 0;
    if (SHIBYTE(v36) < 0)
    {
      sub_100005F2C(&v37, __dst, *(&__dst + 1));
    }

    else
    {
      v37 = __dst;
      v38 = v36;
    }

    v39 = 0;
    if (ctu::cf::convert_copy())
    {
      v19 = v34;
      v34 = v39;
      v40 = v19;
      sub_100005978(&v40);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }

    v20 = v34;
    v23 = v34;
    v34 = 0;
    sub_100005978(&v34);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__dst);
    }

    [v5 setEmail:{v20, v21[0]}];
    sub_100005978(&v23);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (*(a3 + 424) == 1)
  {
    [v5 setIsHidden:1];
  }

  (*(*(a1 + 8) + 16))();

  v6 = 0;
LABEL_118:
}

void sub_1013092AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100005978((v48 - 136));
  if (*(v48 - 105) < 0)
  {
    operator delete(*(v48 - 128));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10130950C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F2D098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10130958C(uint64_t a1)
{

  operator delete();
}

id sub_101309654(uint64_t a1, void *a2)
{
  *a2 = off_101F2D0B8;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1013096AC(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1013096E8(id *a1)
{

  operator delete(a1);
}

void sub_10130972C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v14 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v41, *a3, *(a3 + 8));
  }

  else
  {
    *v41 = *a3;
    v42 = *(a3 + 16);
  }

  if ((v14 & 1) == 0)
  {
    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (*(*(a1 + 16) + 16))();
    goto LABEL_85;
  }

  v15 = *a6;
  v16 = *a7;
  v17 = *a8;
  v18 = objc_opt_new();
  if (SHIBYTE(v42) < 0)
  {
    sub_100005F2C(__dst, v41[0], v41[1]);
  }

  else
  {
    *__dst = *v41;
    v49 = v42;
  }

  if (SHIBYTE(v49) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v52 = v49;
  }

  v54 = 0;
  if (SHIBYTE(v52) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v52;
  }

  v43[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v20 = v54;
    v54 = v43[0];
    v46[0] = v20;
    sub_100005978(v46);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v53 = v54;
  v54 = 0;
  sub_100005978(&v54);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }

  [v18 setLabel:{v53, v41[0]}];
  sub_100005978(&v53);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__dst[0]);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v46, *a4, *(a4 + 8));
  }

  else
  {
    *v46 = *a4;
    v47 = *(a4 + 16);
  }

  if (SHIBYTE(v47) < 0)
  {
    sub_100005F2C(__p, v46[0], v46[1]);
  }

  else
  {
    *__p = *v46;
    v52 = v47;
  }

  v53 = 0;
  if (SHIBYTE(v52) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v52;
  }

  v54 = 0;
  if (ctu::cf::convert_copy())
  {
    v21 = v53;
    v53 = v54;
    v43[0] = v21;
    sub_100005978(v43);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v50 = v53;
  v53 = 0;
  sub_100005978(&v53);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }

  [v18 setNumber:v50];
  sub_100005978(&v50);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(v43, *a5, *(a5 + 8));
  }

  else
  {
    *v43 = *a5;
    v44 = *(a5 + 16);
  }

  if (SHIBYTE(v44) < 0)
  {
    sub_100005F2C(__p, v43[0], v43[1]);
  }

  else
  {
    *__p = *v43;
    v52 = v44;
  }

  v50 = 0;
  if (SHIBYTE(v52) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v52;
  }

  v53 = 0;
  if (ctu::cf::convert_copy())
  {
    v22 = v50;
    v50 = v53;
    v54 = v22;
    sub_100005978(&v54);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v45 = v50;
  v50 = 0;
  sub_100005978(&v50);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }

  [v18 setDisplayPhoneNumber:v45];
  sub_100005978(&v45);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  [v18 setIsPresent:v15];
  [v18 setIsEditable:v16];
  [v18 setIsRead:v17];
  __p[1] = 62;
  v52 = 0x900000000000000;
  __p[0] = *"<unknown>";
  v23 = *(a1 + 8);
  if (v23)
  {
    [(Registry *)v23 registry];
    v23 = *buf;
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
  }

  ServiceMap = Registry::getServiceMap(v23);
  v25 = ServiceMap;
  if (v26 < 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(ServiceMap);
  v54 = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, &v54);
  if (!v30)
  {
    v32 = 0;
    goto LABEL_67;
  }

  v32 = v30[3];
  v31 = v30[4];
  if (!v31)
  {
LABEL_67:
    std::mutex::unlock(v25);
    v31 = 0;
    v33 = 1;
    goto LABEL_68;
  }

  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v25);
  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v31);
  v33 = 0;
LABEL_68:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v32)
  {
    v34 = [*(a1 + 8) connection];
    (*(*v32 + 24))(buf, v32, [v34 processIdentifier]);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v52 = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;
  }

  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  ct_green_tea_logger_create();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  v36 = CTGreenTeaOsLogHandle;
  if (CTGreenTeaOsLogHandle && os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
  {
    if (v52 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    v38 = [*(a1 + 8) connection];
    v39 = [v38 processIdentifier];
    v40 = asStringBool([v18 isPresent]);
    *buf = 136446722;
    *&buf[4] = v37;
    *&buf[12] = 1024;
    *&buf[14] = v39;
    *&buf[18] = 2082;
    *&buf[20] = v40;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Request from process (name:%{public}s, pid: %d) message: getPhoneNumber, payload: {present: %{public}s}", buf, 0x1Cu);
  }

  ct_green_tea_logger_destroy();
  (*(*(a1 + 16) + 16))();
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }

  v19 = 0;
LABEL_85:

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }
}

void sub_101309E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101309FC8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F2D128))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10130A0AC(uint64_t a1)
{
  *a1 = off_101F2D148;
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v3)
  {

    operator delete();
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
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

  CarrierSpaceDataPlanMetricsProviderInterface::~CarrierSpaceDataPlanMetricsProviderInterface(a1);
}

void sub_10130A174(uint64_t a1)
{
  sub_10130A0AC(a1);

  operator delete();
}

void CarrierSpaceDataPlanMetricsProvider::CarrierSpaceDataPlanMetricsProvider(void *a1, void *a2, NSObject **a3)
{
  v6 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "carrier.space.dpm");
  *v6 = 0;
  v6[1] = 0;
  v7 = *a3;
  a1[3] = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger(v14, &v13);
  ctu::OsLogLogger::OsLogLogger((a1 + 5), v14);
  ctu::OsLogLogger::~OsLogLogger(v14);
  ctu::OsLogContext::~OsLogContext(&v13);
  *a1 = off_101F2D148;
  v8 = a2[1];
  a1[6] = *a2;
  a1[7] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CarrierSpaceDataPlanMetricsProvider");
  v9 = a1[3];
  v10 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::RestModule::RestModule();
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  operator new();
}

void sub_10130A328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  v20 = v17[11];
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = v17[9];
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = v17[7];
  if (v22)
  {
    sub_100004A34(v22);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 5));
  sub_1000C0544(v18);
  CarrierSpaceDataPlanMetricsProviderInterface::~CarrierSpaceDataPlanMetricsProviderInterface(v17);
  _Unwind_Resume(a1);
}

void sub_10130A3D8(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(a1 + 48));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/roaming_results");
  operator new();
}

void sub_10130A568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1000062D4(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10130A5B8(uint64_t a1, int a2)
{
  if (sub_10130B158(a1) != a2)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_10130B158(a1);
      v9 = 136315138;
      v10 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sending notification to clients upon roaming status change %s", &v9, 0xCu);
    }

    if (sub_10130B158(a1) == 4)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    [**(a1 + 104) setRegStatus:v4];
    v5 = *(a1 + 88);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 80);
        if (v8)
        {
          (*(*v8 + 16))(v8);
        }

        sub_100004A34(v7);
      }
    }
  }
}

void sub_10130A6F4(uint64_t a1, int a2)
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
  *v19 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v19);
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
  v14 = (*(*v12 + 16))(v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v14)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = asString();
      v17 = asString();
      *v19 = 136315394;
      *&v19[4] = v16;
      v20 = 2080;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Debug Roaming status: previous %s, new %s", v19, 0x16u);
    }

    if (a2 == 2)
    {
      v18 = 4;
    }

    else
    {
      v18 = 5;
    }

    sub_10130A5B8(a1, v18);
  }
}

const void **sub_10130A8EC(uint64_t a1)
{
  v6 = 0;
  DevicePersistentCopyValue(&v5, @"CarrierSpaceDataPlanMetricsCacheKey", 0);
  sub_10006DD00(&v6, &v5);
  sub_10000A1EC(&v5);
  if (v6)
  {
    v2 = [v6 mutableCopy];
    v3 = *(a1 + 120);
    *(a1 + 120) = v2;
  }

  return sub_100010250(&v6);
}

void sub_10130A960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10130A984(void *a1)
{
  v2 = a1[13];
  v3 = *v2;
  *v2 = 0;

  v4 = a1[15];
  a1[15] = 0;

  v5 = a1[17];
  a1[16] = 0;
  a1[17] = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  a1[14] = 0;

  return DevicePersistentSaveValue(@"CarrierSpaceDataPlanMetricsCacheKey", 0);
}

uint64_t sub_10130A9F0(uint64_t a1, id **a2)
{
  if (sub_10130B158(a1) == 4)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I roaming is not supported", buf, 2u);
    }

    v5 = 0;
    *(a1 + 112) = 19;
    return v5;
  }

  *(a1 + 112) = 0;
  v6 = (a1 + 112);
  if (!*a2)
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v32 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "updateDataPlanMetrics - usageInfoPtr is null", v32, 2u);
    }

    return 0;
  }

  v7 = **a2;
  for (i = 0; ; ++i)
  {
    v9 = [v7 accountMetrics];
    v10 = [v9 count];

    if (i >= v10)
    {
      v30 = 0;
      v14 = 0;
      goto LABEL_24;
    }

    v11 = [v7 accountMetrics];
    v12 = [v11 objectAtIndexedSubscript:i];

    if ([v12 localDevice])
    {
      break;
    }

    *v6 = 1;
  }

  v15 = [v12 subscriptionStatus];
  v16 = [v15 isEqualToString:@"subscribed"];

  if ((v16 & 1) == 0)
  {
    v22 = 2;
    goto LABEL_22;
  }

  v17 = [v12 billingCycleEndDate];

  if (!v17)
  {
    v22 = 3;
    goto LABEL_22;
  }

  v18 = +[NSDate date];
  v19 = [v12 billingCycleEndDate];
  [v18 timeIntervalSinceDate:v19];
  v21 = v20;

  if (v21 > 864000.0)
  {
    v22 = 4;
LABEL_22:
    v25 = 0;
    v14 = 0;
    *v6 = v22;
    goto LABEL_23;
  }

  v23 = [v12 planType];
  v24 = [v23 isEqualToString:@"prepaid"];

  if (v24)
  {
    v22 = 6;
    goto LABEL_22;
  }

  v25 = v12;
  v14 = sub_10130B29C(a1, v25, (a1 + 112));
LABEL_23:

  v30 = v25;
LABEL_24:
  v29 = [v14 isEqual:**(a1 + 104)];
  if ((v29 & 1) == 0)
  {
    objc_storeStrong(*(a1 + 104), v14);
  }

  v26 = v30;
  v31 = v14;
  v27 = *(a1 + 136);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v26)
  {
    operator new();
  }

  DevicePersistentSaveValue(@"CarrierSpaceDataPlanMetricsCacheKey", *(a1 + 120));
  v5 = v29 ^ 1;

  return v5;
}

uint64_t sub_10130B158(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v12 = (*(*v10 + 16))(v10);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (!v12)
  {
    return *(a1 + 96);
  }

  v13 = *(a1 + 100);
  if (!v13)
  {
    return *(a1 + 96);
  }

  if (v13 == 2)
  {
    return 4;
  }

  return 5;
}

void sub_10130B280(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_10130B29C(uint64_t a1, void *a2, uint64_t *a3)
{
  v61 = a2;
  v3 = 0;
  v4 = 0;
  v58 = 0;
  *&v5 = 67109120;
  v57 = v5;
  while (1)
  {
    v6 = [v61 applicablePlans];
    v7 = v3 < [v6 count];

    if (!v7)
    {
      if (v4)
      {
        [NSNumber numberWithUnsignedInteger:v58];
        goto LABEL_54;
      }

      goto LABEL_66;
    }

    v8 = [v61 applicablePlans];
    v9 = [v8 objectAtIndexedSubscript:v3];

    if (!v9)
    {
      v12 = 7;
      goto LABEL_11;
    }

    if (([v9 currentUsedPlan] & 1) == 0)
    {
      v12 = 8;
      goto LABEL_11;
    }

    v10 = [v9 dataUsage];
    v11 = v10 == 0;

    if (v11)
    {
      v12 = 9;
      goto LABEL_11;
    }

    if ([v9 planCategory] == 3)
    {
      v12 = 10;
LABEL_11:
      *a3 = v12;
      goto LABEL_12;
    }

    v13 = [v9 dataUsage];
    v14 = [v13 sharedDataUsed];

    if (!v14)
    {
      goto LABEL_27;
    }

    v15 = [v9 lastUpdatedAt];
    v16 = v15 == 0;

    if (v16)
    {
      v55 = 11;
LABEL_64:
      *a3 = v55;
LABEL_65:

LABEL_66:
      v49 = 0;
      goto LABEL_67;
    }

    v17 = [v61 billingCycleEndDate];
    v18 = [v9 lastUpdatedAt];
    [v17 timeIntervalSinceDate:v18];
    v20 = v19;

    if (v20 < 0.0)
    {
      v55 = 5;
      goto LABEL_64;
    }

    if (v20 > 1728000.0)
    {
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v57;
        *&buf[4] = 20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I shared plan but more than %u days left in billing cycle, so reuse last plan information", buf, 8u);
      }

      v22 = v9;
      for (i = 0; i < [*(a1 + 120) count]; ++i)
      {
        v24 = [*(a1 + 120) objectAtIndexedSubscript:i];
        v25 = [v22 planLabel];
        if (v25)
        {
          v26 = [v24 objectForKeyedSubscript:@"planLabel"];
          if (v26)
          {
            v27 = [v24 objectForKeyedSubscript:@"planLabel"];
            v28 = [v22 planLabel];
            v29 = [v27 isEqualToString:v28];

            if (v29)
            {
              v42 = [v24 objectForKeyedSubscript:@"planDataCapacity"];

              goto LABEL_40;
            }
          }

          else
          {
          }
        }

        *a3 = 12;
      }

      v42 = 0;
LABEL_40:

      goto LABEL_41;
    }

LABEL_27:
    v30 = [v9 dataUsage];
    v42 = sub_10130BB40(v30, 0, a3);

    if (v42)
    {
      v31 = v14 != 0;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      v32 = v9;
      v42 = v42;
      v33 = [v32 planLabel];
      v34 = v33 == 0;

      if (!v34)
      {
        v35 = *(a1 + 120);
        if (v35)
        {
          for (j = 0; ; ++j)
          {
            if (j >= [v35 count])
            {
              v37 = 0;
              goto LABEL_45;
            }

            v37 = [*(a1 + 120) objectAtIndexedSubscript:j];
            v38 = [v37 objectForKeyedSubscript:@"planLabel"];
            if (v38)
            {
              v39 = [v37 objectForKeyedSubscript:@"planLabel"];
              v40 = [v32 planLabel];
              v41 = [v39 isEqualToString:v40];

              if (v41)
              {
                break;
              }
            }

            v35 = *(a1 + 120);
          }

          if (v37)
          {
            [*(a1 + 120) removeObjectAtIndex:j];
          }

LABEL_45:
        }

        v62[0] = @"planLabel";
        v43 = [v32 planLabel];
        v62[1] = @"planDataCapacity";
        *buf = v43;
        v64 = v42;
        v44 = [NSDictionary dictionaryWithObjects:buf forKeys:v62 count:2];

        v45 = *(a1 + 120);
        if (!v45)
        {
          v46 = +[NSMutableArray array];
          v47 = *(a1 + 120);
          *(a1 + 120) = v46;

          v45 = *(a1 + 120);
        }

        [v45 addObject:v44];
      }

      goto LABEL_50;
    }

LABEL_41:
    if (!v42)
    {
      v53 = *(a1 + 40);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "can't determine plan capacity", buf, 2u);
      }

      goto LABEL_65;
    }

LABEL_50:
    if ([v42 unsignedIntegerValue] > 0xC7FFFFFFFLL)
    {
      break;
    }

    v48 = [v42 unsignedIntegerValue];

    v58 += v48;
    v4 = 1;
LABEL_12:

    ++v3;
  }

  [NSNumber numberWithUnsignedInteger:0xC80000000];
  v49 = LABEL_54:;

  if (!v49)
  {
LABEL_67:
    v50 = 0;
    goto LABEL_68;
  }

  v50 = objc_alloc_init(CTCarrierSpaceDataPlanMetrics);
  v51 = [v61 billingCycleEndDate];
  [v50 setBillingCycleEndDate:v51];

  if (sub_10130B158(a1) == 4)
  {
    v52 = 2;
  }

  else
  {
    v52 = 1;
  }

  [v50 setRegStatus:v52];
  [v50 setDomesticCapacity:v49];
LABEL_68:

  return v50;
}

uint64_t sub_10130BAA0@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (**(result + 104))
  {
    operator new();
  }

  *a2 = *(result + 112);
  return result;
}

id sub_10130BB40(void *a1, char a2, uint64_t *a3)
{
  v5 = a1;
  v6 = [v5 capacity];
  v7 = [v6 caseInsensitiveCompare:@"unlimited"];

  if (v7)
  {
    v8 = [v5 capacity];
    v9 = sub_10130BE64(v8);

    if (!v9)
    {
      v27 = 14;
      goto LABEL_26;
    }

    v10 = [v5 capacity];
    [v10 doubleValue];
  }

  else
  {
    v12 = [v5 maxDataBeforeThrottling];

    if (!v12)
    {
      v28 = [NSNumber numberWithUnsignedInteger:-1];
      goto LABEL_28;
    }

    v13 = [v5 maxDataBeforeThrottling];
    v14 = sub_10130BE64(v13);

    if (!v14)
    {
      v27 = 13;
      goto LABEL_26;
    }

    v10 = [v5 maxDataBeforeThrottling];
    [v10 doubleValue];
  }

  v15 = v11;

  v16 = [v5 sharedDataUsed];

  if (v16 && (a2 & 1) == 0)
  {
    v17 = [v5 sharedDataUsed];
    v18 = sub_10130BE64(v17);

    if (!v18)
    {
      v27 = 15;
      goto LABEL_26;
    }

    v19 = [v5 thisDeviceDataUsed];
    v20 = sub_10130BE64(v19);

    if (!v20)
    {
      v27 = 16;
      goto LABEL_26;
    }

    v21 = [v5 sharedDataUsed];
    [v21 doubleValue];
    v23 = v22;
    v24 = [v5 thisDeviceDataUsed];
    [v24 doubleValue];
    v26 = v25;

    if (v23 < v26)
    {
      v27 = 17;
LABEL_26:
      v39 = 0;
      *a3 = v27;
      goto LABEL_29;
    }

    v29 = [v5 sharedDataUsed];
    [v29 doubleValue];
    if (v30 == 0.0)
    {
      v34 = 1.0;
    }

    else
    {
      v31 = [v5 thisDeviceDataUsed];
      [v31 doubleValue];
      v33 = v32;

      v34 = 1.0;
      if (v33 == 0.0)
      {
LABEL_23:
        v15 = v15 * v34;
        goto LABEL_24;
      }

      v29 = [v5 thisDeviceDataUsed];
      [v29 doubleValue];
      v36 = v35;
      v37 = [v5 sharedDataUsed];
      [v37 doubleValue];
      v34 = v36 / v38;
    }

    goto LABEL_23;
  }

LABEL_24:
  if (v15 == 0.0)
  {
    v27 = 18;
    goto LABEL_26;
  }

  [v5 units];
  CTCarrierSpaceConvertDataUnits();
  v28 = [NSNumber numberWithUnsignedInteger:v40];
LABEL_28:
  v39 = v28;
LABEL_29:

  return v39;
}

BOOL sub_10130BE64(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    sub_10000501C(&__str, [v1 UTF8String]);
    v3 = std::stod(&__str, 0);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v4 = v3 >= 0.0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10130BFF4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10130C0C8);
  __cxa_rethrow();
}

void sub_10130C034(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10130C088(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10130C0C8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

__n128 sub_10130C170(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2D2A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10130C1A8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v14 = 0;
  v15 = 0;
  v13 = &v14;
  sub_100109E38(&v13, a2);
  v4 = *v3;
  v5 = v14;
  v11 = v13;
  v12[0] = v14;
  v12[1] = v15;
  if (v15)
  {
    v14[2] = v12;
    v13 = &v14;
    v14 = 0;
    v15 = 0;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = v12;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  v6 = v12;
  v7 = v5;
  do
  {
    if (*(v7 + 7) >= 1)
    {
      v6 = v7;
    }

    v7 = v7[*(v7 + 7) < 1];
  }

  while (v7);
  if (v6 != v12 && *(v6 + 7) <= 1)
  {
    *v3 = *(v6 + 8);
  }

LABEL_12:
  sub_10006DCAC(&v11, v5);
  if (v4 != *v3)
  {
    v8 = a1[3];
    v9 = a1[4];
    v10 = (a1[2] + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v4);
  }

  sub_10006DCAC(&v13, v14);
}

uint64_t sub_10130C2F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10130C3BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2D320;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10130C3F4(void *a1, xpc *this, uint64_t a3)
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

uint64_t sub_10130C48C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10130C4F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2D3A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10130C578(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2D3F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10130C5D4(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v8 = "roam.?";
  if (a3 == 2)
  {
    v8 = "roam.awd.2";
  }

  if (a3 == 1)
  {
    v9 = "roam.awd.1";
  }

  else
  {
    v9 = v8;
  }

  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, v9);
  ctu::OsLogLogger::OsLogLogger(v13, &v12);
  ctu::OsLogLogger::OsLogLogger((a1 + 8), v13);
  ctu::OsLogLogger::~OsLogLogger(v13);
  ctu::OsLogContext::~OsLogContext(&v12);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F2D440;
  v10 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = 0;
  return a1;
}

void sub_10130C6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void *sub_10130C6E0(void *a1)
{
  *a1 = off_101F2D440;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_10130C748(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Invalidating data %s", &v4, 0xCu);
  }

  *(a1 + 64) = 0;
}

void sub_10130C7EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Metric submitted for %s", &v4, 0xCu);
  }

  *(a1 + 65) = 0;
}

void sub_10130C890(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v8 = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Data for %s is valid", &v8, 0xCu);
  }

  *(a1 + 64) = 1;
  if (a2)
  {
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Metric submission needed for %s", &v8, 0xCu);
    }

    *(a1 + 65) = 1;
  }
}

uint64_t sub_10130C99C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s dump state", &v7, 0xCu);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 64));
    v5 = CSIBOOLAsString(*(a1 + 65));
    v7 = 136315394;
    v8 = v4;
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Valid state: %s, Needs submission: %s", &v7, 0x16u);
  }

  return (*(*a1 + 16))(a1);
}

void sub_10130CAD4(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
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
  v19 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v19);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 40))(&v16, v10);
  v13 = *(a1 + 40);
  v12 = (a1 + 40);
  sub_100009970((v12 - 1), v13);
  v14 = v17;
  *(v12 - 1) = v16;
  *v12 = v14;
  v15 = v18;
  v12[1] = v18;
  if (v15)
  {
    *(v14 + 16) = v12;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
    v14 = 0;
  }

  else
  {
    *(v12 - 1) = v12;
  }

  sub_100009970(&v16, v14);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_10130CC28(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10130CC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
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
  v15 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v15);
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
  (*(*v13 + 24))(v13, a2, a3);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10130CD5C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10130CD78(char *a1@<X8>)
{
  sub_10000501C(v4, "CELLULAR_DATA_IS_TURNED_OFF_FOR_APP_NAME");
  sub_10000501C(__p, "YOU_CAN_TURN_ON_CELLULAR_DATA_FOR_THIS_APP_IN_SETTINGS");
  sub_100EEA864(a1, v4, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10130CDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_10130CE28(uint64_t a1)
{
  sub_100EEA430(a1);

  operator delete();
}

uint64_t sub_10130CE60(uint64_t a1, void *a2, NSObject **a3, uint64_t a4, __int128 *a5)
{
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "enh.thpt.slt.ctl");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = *a3;
  *(a1 + 24) = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v18, &v17);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v18);
  ctu::OsLogLogger::~OsLogLogger(v18);
  ctu::OsLogContext::~OsLogContext(&v17);
  *a1 = off_101F2D518;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = &off_101F2D560;
  *(a1 + 72) = 0;
  v10 = a2[1];
  *(a1 + 80) = *a2;
  *(a1 + 88) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v11 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v11;
  }

  *(a1 + 120) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 208) = 1;
  sub_10000501C(&__p, "EnhancedWifiQosSlotController");
  v12 = *(a1 + 24);
  v14 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::RestModule::RestModule();
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10130D00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19)
{
  v22 = v19[11];
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = v19[8];
  if (v23)
  {
    sub_100004A34(v23);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 5));
  sub_1000C0544(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_10130D110(uint64_t a1)
{
  *a1 = off_101F2D518;
  *(a1 + 48) = &off_101F2D560;
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 144) = 0;
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 224);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v4 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    sub_100004A34(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10130D250(uint64_t a1)
{
  sub_10130D110(a1);

  operator delete();
}

void sub_10130D288(uint64_t a1)
{
  sub_10130D110(a1 - 48);

  operator delete();
}

void sub_10130D2C4(uint64_t a1)
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

void sub_10130D3AC(uint64_t a1, unsigned int a2)
{
  v16 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_BOOL_create(0);
  if (!object)
  {
    object = xpc_null_create();
  }

  v12 = &v16;
  v13 = "is_successful";
  sub_10000F688(&v12, &object, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(object);
  object = 0;
  v10 = xpc_int64_create(a2);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "failure_reason";
  sub_10000F688(&v12, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v7 = (a1 + 160);
  if (*(a1 + 183) < 0)
  {
    v7 = *v7;
  }

  v8 = xpc_string_create(v7);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "request_reason";
  sub_10000F688(&v12, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  sub_10130EF7C(a1, &v16);
  xpc_release(v16);
}

void sub_10130D5C0(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asString(a2);
    v6 = asString(*(a1 + 72));
    v7 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v7 = *v7;
    }

    *__p = 136315650;
    *&__p[4] = v5;
    v9 = 2080;
    v10 = v6;
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handlePvdEnhancedThroughputFlagUpdated %s prev(%s), iccid=%s", __p, 0x20u);
  }

  if (*(a1 + 72) != a2)
  {
    *(a1 + 72) = a2;
    if (a2)
    {
      sub_10000501C(__p, "pvdEnhancedThroughputFlag");
      sub_10130D704(a1, __p);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_10130D6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10130D704(uint64_t a1, char *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      LODWORD(v5) = (*(*v5 + 24))(v5);
    }

    v6 = asString(v5);
    v7 = asString(*(a1 + 72));
    v8 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v8 = *v8;
    }

    if (a2[23] >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    LODWORD(buf[0].__locale_) = 136315906;
    *(&buf[0].__locale_ + 4) = v6;
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = v7;
    HIWORD(buf[2].__locale_) = 2080;
    buf[3].__locale_ = v8;
    LOWORD(buf[4].__locale_) = 2080;
    *(&buf[4].__locale_ + 2) = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I maybeEnableService hasToken %s, flag %s, ipv6(%s) trigger %s", buf, 0x2Au);
  }

  v10 = *(a1 + 56);
  if (!v10 || !(*(*v10 + 24))(v10) || *(a1 + 72) != 1)
  {
    return;
  }

  if ((*(a1 + 143) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 128))
    {
      return;
    }
  }

  else if (!*(a1 + 143))
  {
    return;
  }

  v68 = 0;
  *v66 = 0u;
  v67 = 0u;
  *v65 = 0u;
  memset(__str, 0, sizeof(__str));
  (*(**(a1 + 56) + 16))(__str);
  if (v68 == 1)
  {
    if (SHIBYTE(v66[0]) < 0)
    {
      if (v65[1] != 19)
      {
        goto LABEL_30;
      }

      v11 = v65[0];
    }

    else
    {
      if (SHIBYTE(v66[0]) != 19)
      {
        goto LABEL_30;
      }

      v11 = v65;
    }

    v12 = *v11;
    v13 = v11[1];
    v14 = *(v11 + 11);
    if (v12 != 0x6465636E61686E65 || v13 != 0x6867756F7268742DLL || v14 != 0x7475706867756F72)
    {
LABEL_30:
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__locale_) = 0;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "ERROR: token is not EnhancedThroughput", buf, 2u);
      }

      goto LABEL_106;
    }
  }

  v73 = 0;
  v74 = 0;
  memset(&v63, 0, sizeof(v63));
  __p = 0;
  v72 = 0;
  sub_10000501C(&__p, "en0");
  if (getifaddrs(&v74))
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      p_p = &__p;
      if (v73 < 0)
      {
        p_p = __p;
      }

      LODWORD(buf[0].__locale_) = 136315138;
      *(&buf[0].__locale_ + 4) = p_p;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to get interface addresses for: %s", buf, 0xCu);
    }

    goto LABEL_45;
  }

  v19 = v74;
  if (!v74)
  {
    goto LABEL_44;
  }

  v20 = HIBYTE(v73);
  v22 = __p;
  v21 = v72;
  while (1)
  {
    v23 = strlen(v19->ifa_name);
    v24 = v23;
    if ((v20 & 0x80) == 0)
    {
      break;
    }

    v25 = v22;
    v26 = v21;
    if (v21 == v24)
    {
      goto LABEL_41;
    }

LABEL_43:
    v19 = v19->ifa_next;
    if (!v19)
    {
      goto LABEL_44;
    }
  }

  if (v23 != v20)
  {
    goto LABEL_43;
  }

  v25 = &__p;
  v26 = v20;
LABEL_41:
  if (strncmp(v25, v19->ifa_name, v26))
  {
    goto LABEL_43;
  }

  ifa_addr = v19->ifa_addr;
  if (ifa_addr->sa_data[4] != 6)
  {
    goto LABEL_43;
  }

  v49 = ether_ntoa(&ifa_addr->sa_data[ifa_addr->sa_data[3] + 6]);
  sub_10000501C(&v69, v49);
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  *v102 = 0u;
  v103 = 0u;
  memset(v101, 0, sizeof(v101));
  memset(buf, 0, sizeof(buf));
  sub_100A9BBBC(buf, &v69, 24);
  memset(v98, 0, sizeof(v98));
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  *v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  sub_10000C320(&v77);
  while (1)
  {
    v50 = sub_10081E7D0(buf);
    if ((*(v50 + *(*v50 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v51 = v78;
    *(&v79 + *(v78 - 24) + 8) = 2;
    v52 = &v78 + *(v51 - 24);
    if (*(v52 + 36) == -1)
    {
      std::ios_base::getloc((&v78 + *(v51 - 24)));
      v53 = std::locale::use_facet(&v96, &std::ctype<char>::id);
      (v53->__vftable[2].~facet_0)(v53, 32);
      std::locale::~locale(&v96);
    }

    *(v52 + 36) = 48;
    v54 = sub_10000C030(&v78);
    sub_10000C030(v54);
  }

  sub_100061574(&v77, &v96);
  sub_100061574(&v77, __dst);
  v55 = HIBYTE(v76);
  if (v76 < 0)
  {
    v55 = __dst[1];
  }

  std::string::basic_string(&v70, &v96, 0, v55 - 1, &v95);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  v59 = v57;
  *&v78 = v57;
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82[1]);
  }

  std::locale::~locale(&v79);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v98[23] < 0)
  {
    operator delete(*v98);
  }

  buf[0].__locale_ = v56;
  *(&buf[0].__locale_ + *(v56 - 3)) = v58;
  buf[2].__locale_ = v59;
  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102[1]);
  }

  std::locale::~locale(&buf[4]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  v63 = v70;
  *(&v70.__r_.__value_.__s + 23) = 0;
  v70.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v63.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_44:
    v28 = *(a1 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v62 = &__p;
      if (v73 < 0)
      {
        v62 = __p;
      }

      LODWORD(buf[0].__locale_) = 136315138;
      *(&buf[0].__locale_ + 4) = v62;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Couldn't find mac address for interface: %s", buf, 0xCu);
    }
  }

LABEL_45:
  if (v74)
  {
    freeifaddrs(v74);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
  }

  v29 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v63.__r_.__value_.__l.__size_;
  }

  if (v29)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v76 = 0;
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(__dst, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      *__dst = *(a1 + 96);
      v76 = *(a1 + 112);
    }

    __p = 0;
    v72 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v32 = ServiceMap;
    if (v33 < 0)
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

    std::mutex::lock(ServiceMap);
    buf[0].__locale_ = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, buf);
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
        goto LABEL_65;
      }
    }

    else
    {
      v39 = 0;
    }

    std::mutex::unlock(v32);
    v38 = 0;
    v40 = 1;
LABEL_65:
    (**v39)(&__p, v39, __dst);
    if ((v40 & 1) == 0)
    {
      sub_100004A34(v38);
    }

    memset(buf, 0, sizeof(buf));
    v102[0] = 0;
    memset(v101, 0, sizeof(v101));
    HIDWORD(buf[0].__locale_) = 15;
    LOBYTE(buf[1].__locale_) = 1;
    HIDWORD(buf[1].__locale_) = 1;
    LOBYTE(buf[2].__locale_) = 1;
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf[3], __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
    }

    else
    {
      *&buf[3].__locale_ = *&__str[0].__r_.__value_.__l.__data_;
      buf[5] = __str[0].__r_.__value_.__r.__words[2];
    }

    LOBYTE(v101[0]) = 1;
    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v101[1], __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      *&v101[1] = __str[1];
    }

    LOBYTE(v102[0]) = 1;
    *&v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    std::string::operator=(&v77, v65);
    std::string::operator=((&v78 + 8), &v66[1]);
    v41 = *(a1 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = __str;
      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = __str[0].__r_.__value_.__r.__words[0];
      }

      if ((__str[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        data = &__str[1];
      }

      else
      {
        data = __str[1].__r_.__value_.__l.__data_;
      }

      v44 = v63.__r_.__value_.__r.__words[0];
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v63;
      }

      v45 = (a1 + 120);
      if (*(a1 + 143) < 0)
      {
        v45 = *v45;
      }

      *v98 = 136315906;
      *&v98[4] = v42;
      *&v98[12] = 2080;
      *&v98[14] = data;
      *&v98[22] = 2080;
      v99.__r_.__value_.__r.__words[0] = v44;
      LOWORD(v99.__r_.__value_.__r.__words[1]) = 2080;
      *(&v99.__r_.__value_.__r.__words[1] + 2) = v45;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I send enableService Request with token %s, message %s mac (%s) ip (%s)", v98, 0x2Au);
    }

    sub_10000501C(v98, "MAC-address");
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v99, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
    }

    else
    {
      v99 = v63;
    }

    sub_10130E8F8(&v80, v98);
    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (v98[23] < 0)
    {
      operator delete(*v98);
    }

    sub_10000501C(v98, "IPv6-address");
    if (*(a1 + 143) < 0)
    {
      sub_100005F2C(&v99, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      v99 = *(a1 + 120);
    }

    sub_10130E8F8(&v80, v98);
    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (v98[23] < 0)
    {
      operator delete(*v98);
    }

    std::string::operator=((a1 + 184), __str);
    std::string::operator=((a1 + 160), a2);
    *v98 = a1;
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v98[8], v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v98[8] = *&v63.__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[0] = v63.__r_.__value_.__r.__words[2];
    }

    v46 = *(a1 + 16);
    if (v46)
    {
      v47 = *(a1 + 8);
      v48 = std::__shared_weak_count::lock(v46);
      if (v48)
      {
        v99.__r_.__value_.__l.__size_ = v47;
        v99.__r_.__value_.__r.__words[2] = v48;
        atomic_fetch_add_explicit(&v48->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v48);
        v97 = 0;
        operator new();
      }
    }

    sub_100013CC4();
  }

  v30 = *(a1 + 40);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "cannot get mac address", buf, 2u);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

LABEL_106:
  if (v68 == 1)
  {
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66[1]);
    }

    if (SHIBYTE(v66[0]) < 0)
    {
      operator delete(v65[0]);
    }

    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_10130E568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  sub_10068C9D8(&a50);
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  sub_10068C9D8(&STACK[0x270]);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  sub_100283AE0(&a13);
  _Unwind_Resume(a1);
}

void sub_10130E75C(uint64_t a1, const std::string *a2)
{
  v3 = (a1 + 120);
  std::string::operator=((a1 + 120), a2);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 143) < 0)
    {
      v3 = *v3;
    }

    *__p = 136315138;
    *&__p[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handleWifiAddressUpdated %s", __p, 0xCu);
  }

  if ((*(a1 + 143) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 128))
    {
      return;
    }
  }

  else if (!*(a1 + 143))
  {
    return;
  }

  sub_10000501C(__p, "wifiAddressUpdated");
  sub_10130D704(a1, __p);
  if (v6 < 0)
  {
    operator delete(*__p);
  }
}

void sub_10130E85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10130E888(uint64_t a1)
{
  sub_10000501C(__p, "tokenAvailable");
  sub_10130D704(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10130E8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10130E8F8(uint64_t *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1000CE3D4();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v24[4] = result;
    if (v12)
    {
      sub_1001904B4(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *result;
    v17 = result[1];
    v18 = v13 + *result - v17;
    if (v17 != *result)
    {
      v19 = *result;
      v20 = v13 + *result - v17;
      do
      {
        v21 = *v19;
        *(v20 + 16) = *(v19 + 16);
        *v20 = v21;
        *(v19 + 8) = 0;
        *(v19 + 16) = 0;
        *v19 = 0;
        v22 = *(v19 + 24);
        *(v20 + 40) = *(v19 + 40);
        *(v20 + 24) = v22;
        *(v19 + 32) = 0;
        *(v19 + 40) = 0;
        *(v19 + 24) = 0;
        v19 += 48;
        v20 += 48;
      }

      while (v19 != v17);
      do
      {
        sub_1000DD108(v16);
        v16 += 48;
      }

      while (v16 != v17);
      v16 = *v3;
    }

    *v3 = v18;
    v3[1] = v8;
    v23 = v3[2];
    v3[2] = 0;
    v24[2] = v16;
    v24[3] = v23;
    v24[0] = v16;
    v24[1] = v16;
    result = sub_1001C7794(v24);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  v3[1] = v8;
  return result;
}

void sub_10130EABC(uint64_t a1)
{
  if (*(a1 + 208) != 1)
  {
    sub_10130EAD4(a1, 2);
  }
}

void sub_10130EAD4(uint64_t a1, int a2)
{
  if (*(a1 + 152) == 0.0)
  {
    return;
  }

  v4 = sub_10130EE40(*(a1 + 80));
  v5 = *(a1 + 152);
  v26 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v26 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v26 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v7) != &_xpc_type_dictionary)
  {
    v8 = xpc_null_create();
LABEL_9:
    v26 = v8;
    goto LABEL_10;
  }

  xpc_retain(v7);
LABEL_10:
  xpc_release(v7);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_10000501C(&v23, "wifi disconnect");
  if (a2 == 1)
  {
    if (SHIBYTE(v25) < 0)
    {
      v24 = 14;
      v9 = v23;
    }

    else
    {
      HIBYTE(v25) = 14;
      v9 = &v23;
    }

    strcpy(v9, "service expire");
  }

  object = xpc_BOOL_create(1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v14.__r_.__value_.__r.__words[0] = &v26;
  v14.__r_.__value_.__l.__size_ = "is_successful";
  sub_10000F688(&v14, &object, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(object);
  object = 0;
  if (v25 >= 0)
  {
    v10 = &v23;
  }

  else
  {
    v10 = v23;
  }

  v19 = xpc_string_create(v10);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v14.__r_.__value_.__r.__words[0] = &v26;
  v14.__r_.__value_.__l.__size_ = "session_end";
  sub_10000F688(&v14, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v11 = (a1 + 160);
  if (*(a1 + 183) < 0)
  {
    v11 = *v11;
  }

  v17 = xpc_string_create(v11);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v14.__r_.__value_.__r.__words[0] = &v26;
  v14.__r_.__value_.__l.__size_ = "request_reason";
  sub_10000F688(&v14, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  std::to_string(&v14, (v4 - v5));
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v14;
  }

  else
  {
    v12 = v14.__r_.__value_.__r.__words[0];
  }

  v15 = xpc_string_create(v12);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v13[0] = &v26;
  v13[1] = "duration";
  sub_10000F688(v13, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  sub_10130EF7C(a1, &v26);
  *(a1 + 152) = 0;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  xpc_release(v26);
}

void sub_10130EDD0(_Unwind_Exception *a1)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  xpc_release(*(v1 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_10130EE40(Registry *a1)
{
  ServiceMap = Registry::getServiceMap(a1);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
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
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  v11 = (*(*v9 + 96))(v9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return (v11 + kCFAbsoluteTimeIntervalSince1970);
}

void sub_10130EF5C(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10130EF7C(uint64_t a1, xpc::object *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, a2);
    v5 = v20 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Send Event %s", buf, 0xCu);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
      if (!v14)
      {
        goto LABEL_13;
      }

LABEL_17:
      v17 = *a2;
      object = v17;
      if (v17)
      {
        xpc_retain(v17);
      }

      else
      {
        object = xpc_null_create();
      }

      (*(*v14 + 16))(v14, "EnhancedThroughputSession", &object);
      xpc_release(object);
      object = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_13:
  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Couldn't get analytics handler", __p, 2u);
  }

LABEL_21:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10130F1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10130F1F0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[119] < 0)
  {
    return sub_100005F2C(a2, *(result + 12), *(result + 13));
  }

  *a2 = *(result + 6);
  *(a2 + 16) = *(result + 14);
  return result;
}

char *sub_10130F218@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[71] < 0)
  {
    return sub_100005F2C(a2, *(result + 6), *(result + 7));
  }

  *a2 = *(result + 3);
  *(a2 + 16) = *(result + 8);
  return result;
}

uint64_t sub_10130F240(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1001C6984(&v3);
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

void sub_10130F29C(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(**a1 + 80));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&v3, "/cc/props/wifi_status");
  operator new();
}

__n128 sub_1013101AC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2D658;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013101E4(void *a1, xpc_object_t *a2)
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

uint64_t sub_1013102D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101310320(uint64_t result, _WORD *a2, int a3)
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
  if (result != ("N3ctu12DispatchSlotIZZN29EnhancedWifiQosSlotController4initEvENK3$_0clEvEUlRK13PersonalityIDRKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE_EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZZN29EnhancedWifiQosSlotController4initEvENK3$_0clEvEUlRK13PersonalityIDRKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE_EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_101310448(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v11 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v9 = *(a3 + 16);
  }

  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = v6;
    v15 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  else
  {
    v14 = v4[2];
    v15 = 0;
  }

  v12 = off_101F2D6E8;
  v13 = v5;
  sub_1005A3AC4();
}

void sub_101310588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013105D0(uint64_t a1, uint64_t a2, unsigned int a3)
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
    if (v7 == ("ZZN29EnhancedWifiQosSlotController4initEvENK3$_0clEvEUlRK13PersonalityIDRKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEE_" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZZN29EnhancedWifiQosSlotController4initEvENK3$_0clEvEUlRK13PersonalityIDRKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEE_" & 0x7FFFFFFFFFFFFFFFLL)))
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

void sub_1013106B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a1;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[1])
      {
        v9 = *(a3 + 23);
        if (v9 >= 0)
        {
          v10 = *(a3 + 23);
        }

        else
        {
          v10 = *(a3 + 8);
        }

        v11 = *(v6 + 207);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v6 + 192);
        }

        if (v10 == v11)
        {
          v13 = v9 >= 0 ? a3 : *a3;
          v14 = v12 >= 0 ? (v6 + 184) : *(v6 + 184);
          if (!memcmp(v13, v14, v10))
          {
            v15 = *(v6 + 40);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v16 = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Token Expired, clean it", v16, 2u);
            }

            (*(**(v6 + 56) + 32))(*(v6 + 56));
            sub_10130D3AC(v6, 2u);
          }
        }
      }

      sub_100004A34(v8);
    }
  }
}

void *sub_101310808(void *a1)
{
  *a1 = off_101F2D718;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101310854(void *a1)
{
  *a1 = off_101F2D718;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1013108C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_101310970(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101310A14(void *a1)
{
  *a1 = off_101F2D768;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101310A60(void *a1)
{
  *a1 = off_101F2D768;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_101310B58(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2D7A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101310BD4(uint64_t a1)
{
  *a1 = off_101F2D7F8;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_101310C30(uint64_t a1)
{
  *a1 = off_101F2D7F8;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_101310D60(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  *a2 = off_101F2D7F8;
  *(a2 + 8) = v4;
  if (result[39] < 0)
  {
    result = sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  else
  {
    v5 = *(result + 1);
    *(a2 + 32) = *(result + 4);
    *(a2 + 16) = v5;
  }

  v6 = *(v3 + 6);
  *(a2 + 40) = *(v3 + 5);
  *(a2 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101310DEC(void *a1)
{
  sub_1002C8840(a1 + 8);

  operator delete(a1);
}

void sub_101310E28(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = a1[6];
  if (v6)
  {
    v7 = *a3;
    v8 = a1[1];
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = v9;
      if (a1[5])
      {
        v11 = *(v8 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v23 = asString(v7);
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I get enableService response isSuccess %s", buf, 0xCu);
        }

        if (v5)
        {
          v12 = *(v5 + 24);
          if (v12)
          {
            v13 = v7 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            v14 = *(v8 + 40);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *v12;
              *buf = 134217984;
              v23 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I expire in enableService response is %lld", buf, 0xCu);
            }

            if (**(v5 + 24) - sub_10130EE40(*(v8 + 80)) >= 1)
            {
              v16 = *(v8 + 16);
              if (v16)
              {
                v17 = std::__shared_weak_count::lock(v16);
                if (v17)
                {
                  v19 = 0;
                  v20 = 0;
                  v21 = 0;
                  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v17);
                  operator new();
                }
              }

              sub_100013CC4();
            }

            v18 = *(v8 + 40);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I No expire or expire is incorrect.", buf, 2u);
            }
          }

          if ((v7 & 1) == 0)
          {
            if (*v5 == 6002)
            {
              sub_10130D3AC(v8, 1u);
            }

            goto LABEL_25;
          }
        }

        else if (!v7)
        {
          goto LABEL_25;
        }

        *(v8 + 152) = sub_10130EE40(*(v8 + 80));
      }

LABEL_25:
      sub_100004A34(v10);
    }
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1013111C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_100004A34(v30);
  if (v29)
  {
    sub_100004A34(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101311258(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1013112A4(void *a1)
{
  *a1 = off_101F2D878;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1013112F0(void *a1)
{
  *a1 = off_101F2D878;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1013113D0(uint64_t result, uint64_t a2)
{
  *a2 = off_101F2D878;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101311410(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101311420(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101311460(void *a1)
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
        v5 = *(v3 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_101311570(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013115BC(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  sub_10130EAD4(v1, 1);
  sub_10000501C(__p, "service expired");
  sub_10130D704(v1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  operator delete();
}

void sub_101311644(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_101311688()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1013116B0(uint64_t a1, uint64_t a2)
{
  sub_101311760(0x80056);
  if (*(a2 + 136) == 1)
  {
    if (*(a2 + 127) < 0)
    {
      operator delete(*(a2 + 104));
    }

    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    *(a2 + 136) = 0;
  }
}

BOOL sub_101311760(wis::MetricFactory *a1)
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

void sub_10131188C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10131190C(uint64_t a1, int *a2)
{
  v4 = a2[7];
  v5 = a2[6];
  if (v5 >= v4)
  {
    if (v4 == a2[8])
    {
      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v4 + 1);
      v4 = a2[7];
    }

    a2[7] = v4 + 1;
    sub_101311CA0();
  }

  v6 = *(a2 + 2);
  a2[6] = v5 + 1;
  v7 = *(v6 + 8 * v5);
  v8 = *(a1 + 32);
  v9 = *(v7 + 44);
  LODWORD(v10) = v8[2];
  *(v7 + 44) = v9 | 1;
  DWORD1(v10) = v8[3];
  *(v7 + 44) = v9 | 3;
  DWORD2(v10) = v8[4];
  *(v7 + 44) = v9 | 7;
  HIDWORD(v10) = v8[5];
  *(v7 + 44) = v9 | 0xF;
  *(v7 + 8) = v10;
  v11 = v8[6];
  *(v7 + 44) = v9 | 0x1F;
  v12 = v8[7];
  *(v7 + 44) = v9 | 0x3F;
  *(v7 + 24) = v11;
  *(v7 + 28) = v12;
  v13 = v8[8];
  *(v7 + 44) = v9 | 0x7F;
  v14 = v8[14];
  *(v7 + 44) = v9 | 0xFF;
  *(v7 + 32) = v13;
  *(v7 + 36) = v14;
  v15 = *v8;
  a2[20] |= 2u;
  a2[10] = v15;
  IntValue = MCC::getIntValue((v8 + 16));
  a2[20] |= 8u;
  a2[11] = IntValue;
  result = MCC::getIntValue((*(a1 + 32) + 96));
  v18 = a2[20];
  a2[20] = v18 | 0x10;
  v19 = *(a1 + 32);
  v20 = v19[33];
  a2[20] = v18 | 0x30;
  a2[12] = result;
  a2[13] = v20;
  v21 = *v19;
  v22 = v19[32];
  if (v21 == 7)
  {
    v23 = v18 | 0xB0;
    a2[15] = v22;
  }

  else
  {
    v23 = v18 | 0x70;
    a2[14] = v22;
  }

  a2[20] = v23;
  return result;
}

void sub_101311A94(uint64_t a1, uint64_t a2)
{
  sub_101311760(0x80056);
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    *(a2 + 112) = 0;
  }
}

uint64_t sub_101311B34(uint64_t a1, int *a2)
{
  v4 = a2[7];
  v5 = a2[6];
  if (v5 >= v4)
  {
    if (v4 == a2[8])
    {
      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v4 + 1);
      v4 = a2[7];
    }

    a2[7] = v4 + 1;
    sub_101311CA0();
  }

  v6 = *(a2 + 2);
  a2[6] = v5 + 1;
  v7 = *(v6 + 8 * v5);
  v8 = *(a1 + 32);
  v9 = *(v7 + 44);
  LODWORD(v10) = v8[2];
  *(v7 + 44) = v9 | 1;
  DWORD1(v10) = v8[3];
  *(v7 + 44) = v9 | 3;
  DWORD2(v10) = v8[4];
  *(v7 + 44) = v9 | 7;
  HIDWORD(v10) = v8[5];
  *(v7 + 44) = v9 | 0xF;
  *(v7 + 8) = v10;
  v11 = v8[6];
  *(v7 + 44) = v9 | 0x1F;
  v12 = v8[7];
  *(v7 + 44) = v9 | 0x3F;
  *(v7 + 24) = v11;
  *(v7 + 28) = v12;
  v13 = v8[8];
  *(v7 + 44) = v9 | 0x7F;
  v14 = v8[14];
  *(v7 + 44) = v9 | 0xFF;
  *(v7 + 32) = v13;
  *(v7 + 36) = v14;
  v15 = *v8;
  a2[20] |= 2u;
  a2[10] = v15;
  result = MCC::getIntValue((v8 + 16));
  v17 = a2[20];
  a2[20] = v17 | 8;
  a2[11] = result;
  v18 = *(a1 + 32);
  v19 = v18[24];
  a2[20] = v17 | 0x108;
  v20 = v18[25];
  a2[20] = v17 | 0x308;
  a2[16] = v19;
  a2[17] = v20;
  LODWORD(v18) = v18[26];
  a2[20] = v17 | 0x708;
  a2[18] = v18;
  return result;
}

void TransportMasterController::setupAwdMetricCallbacks_sync(TransportMasterController *this)
{
  sub_100004AA0(&v2, this + 1);
  v1 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0();
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101311DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101311E04(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        v5 = a1[6];
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

uint64_t sub_101311F44(uint64_t result, uint64_t a2)
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

void sub_101311F60(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double sub_101311F70(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 32);
  isDynamicCellularDataSwitchingSupported_sync = TransportMasterController::isDynamicCellularDataSwitchingSupported_sync(v3);
  v5 = isDynamicCellularDataSwitchingSupported_sync;
  if ((awd::metrics::switch_state_t_IsValid(isDynamicCellularDataSwitchingSupported_sync, v6) & 1) == 0)
  {
    __assert_rtn("set_switchstate", "CCMetricsAdHoc.pb.h", 28562, "::awd::metrics::switch_state_t_IsValid(value)");
  }

  v7 = a2[11];
  a2[11] = v7 | 2;
  v8 = v3[585];
  a2[11] = v7 | 6;
  a2[4] = v5;
  a2[5] = v8;
  v9 = v3[587];
  a2[11] = v7 | 0xE;
  v10 = v3[586];
  a2[11] = v7 | 0x1E;
  a2[6] = v9;
  a2[7] = v10;
  v3[587] = 0;
  result = 0.0;
  *(v3 + 585) = 0;
  return result;
}

uint64_t *sub_101312018(uint64_t **a1)
{
  v1 = *a1;
  v8 = a1;
  v9[0] = v1;
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
        v9[1] = _NSConcreteStackBlock;
        v9[2] = 0x40000000;
        v9[3] = sub_101311F70;
        v9[4] = &unk_101F2D958;
        v9[5] = v3;
        SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
        v12 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x80124u);
        if (v12)
        {
          v10 = 0;
          v11 = 0;
          sub_10001C610(&v10);
          if (v10)
          {
            operator new();
          }

          if (v11)
          {
            sub_100004A34(v11);
          }
        }

        sub_10001C0A0(&v12);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(v9);
  return sub_1000049E0(&v8);
}

void sub_1013121B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_10001C0A0((v18 - 40));
  sub_100004A34(v17);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1013122C4(capabilities::ct *a1, dispatch_object_t *a2)
{
  if (capabilities::ct::supportsGemini(a1))
  {
    if (*a2)
    {
      dispatch_retain(*a2);
    }

    NetworkListModel::create(&v3);
  }

  if (*a2)
  {
    dispatch_retain(*a2);
  }

  NetworkListModel::create(&v3);
}

void sub_10131246C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20)
{
  v24 = 40;
  while (1)
  {
    v25 = *(v22 + v24);
    if (v25)
    {
      sub_100004A34(v25);
    }

    v24 -= 24;
    if (v24 == -8)
    {
      if (a12)
      {
        sub_100004A34(a12);
      }

      if (v21)
      {
        dispatch_release(v21);
      }

      if (a16)
      {
        sub_100004A34(a16);
      }

      if (v20)
      {
        dispatch_release(v20);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

void sub_101312548(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_10161A684();
}

void sub_1013125B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013125D0(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  NetworkListEventHandler::create();
}

void sub_101312640(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101312658(NetworkListFactoryInterface *this)
{
  *this = off_101F2D988;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  NetworkListFactoryInterface::~NetworkListFactoryInterface(this);
}

void sub_1013126B4(NetworkListFactoryInterface *this)
{
  *this = off_101F2D988;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  NetworkListFactoryInterface::~NetworkListFactoryInterface(this);

  operator delete();
}

void *sub_101312724(void *result, int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 8) < *v3)
      {
LABEL_9:
        if (v4)
        {
          v11 = v6 + 1;
        }

        else
        {
          v11 = result + 1;
        }

        if (!*v11)
        {
LABEL_20:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          while (1)
          {
            v12 = v4;
            v13 = *(v4 + 32);
            if (v13 <= v10)
            {
              break;
            }

            v4 = *v12;
            if (!*v12)
            {
              goto LABEL_20;
            }
          }

          if (v13 >= v10)
          {
            break;
          }

          v4 = v12[1];
          if (!v4)
          {
            goto LABEL_20;
          }
        }
      }

      v3 += 6;
      if (v3 == &a2[6 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

void sub_1013128CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, uint64_t a6)
{
  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, "5wi.wifi");
  a1[2] = 0;
  a1[3] = 0;
  v9 = *a5;
  a1[4] = *a5;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[5] = 0;
  ctu::OsLogLogger::OsLogLogger(&v11, &v12);
  ctu::OsLogLogger::OsLogLogger((a1 + 6), &v11);
  ctu::OsLogLogger::~OsLogLogger(&v11);
  ctu::OsLogContext::~OsLogContext(&v12);
  v10 = *(a6 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_101312C08(_Unwind_Exception *a1)
{
  v4 = v1[18];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = v1[16];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = v1[14];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = v1[12];
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = v1[10];
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = v1[7];
  v1[7] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 6));
  sub_1000C0544(v1 + 2);
  sd::IMSConnectivityHelperEventDelegate::~IMSConnectivityHelperEventDelegate(v2);
  sd::IMSConnectivityHelperInterface::~IMSConnectivityHelperInterface(v1);
  _Unwind_Resume(a1);
}

void sub_101312D38(uint64_t a1)
{
  *a1 = off_101F2D9D8;
  v2 = (a1 + 8);
  *(a1 + 8) = off_101F2DB18;
  v3 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 208);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 112);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  sd::IMSConnectivityHelperEventDelegate::~IMSConnectivityHelperEventDelegate(v2);

  sd::IMSConnectivityHelperInterface::~IMSConnectivityHelperInterface(a1);
}

void sub_101312E84(uint64_t a1)
{
  sub_101312D38(a1);

  operator delete();
}

void sub_101312EBC(uint64_t a1)
{
  sub_101312D38(a1 - 8);

  operator delete();
}

void sub_101312EF8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_101312F98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_101312FC8(uint64_t a1)
{
  (*(**(a1 + 104) + 200))(&v7);
  v2 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v7 + 52));
  v3 = *(&v7 + 1);
  if (*(&v7 + 1))
  {
    sub_100004A34(*(&v7 + 1));
  }

  v4 = capabilities::ct::supportsVoiceCall(v3);
  if (!v4 || (capabilities::ct::supportsCellRadio(v4) & 1) == 0)
  {
    v5 = *v2;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asString();
      LODWORD(v7) = 136315138;
      *(&v7 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Forcing TransportType on this device: %s", &v7, 0xCu);
    }

    *(a1 + 160) = 1;
  }
}

void sub_1013130F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101313110(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 144);
  *(a1 + 136) = v5;
  *(a1 + 144) = v4;
  if (v6)
  {
    sub_100004A34(v6);
  }

  (*(**(a1 + 104) + 200))(&v15);
  v7 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v15 + 52));
  if (v16)
  {
    sub_100004A34(v16);
  }

  v8 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I start using IMSConnectivityHelperWifi", &v15, 2u);
  }

  v9 = *a2;
  (*(**(a1 + 104) + 200))(&v15);
  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = v15;
    v12 = *(a1 + 16);
    v13 = std::__shared_weak_count::lock(v10);
    if (v13)
    {
      v14 = v12 + 8;
      if (!v12)
      {
        v14 = 0;
      }

      *buf = v14;
      v18 = v13;
      (*(*v9 + 40))(v9, v11 + 24, buf);
      if (v18)
      {
        sub_100004A34(v18);
      }

      if (v16)
      {
        sub_100004A34(v16);
      }

      sub_1013137A4(a1);
    }
  }

  sub_100013CC4();
}

void sub_1013136C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100004A34(a22);
  }

  sub_10006DCAC(&a9, a10);
  if (v22)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1013137A4(uint64_t a1)
{
  (*(**(a1 + 104) + 200))(&v24);
  v2 = (*(**(a1 + 56) + 16))(*(a1 + 56), v24[13]);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v3 = *v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I resend IMS Pref and proxy", &v24, 2u);
  }

  *(a1 + 156) = 0;
  v24 = 0;
  v25 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  v31 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v31);
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
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_13:
  (*(**(a1 + 104) + 200))(&v31);
  (*(*v12 + 40))(&v24, v12, v31 + 24);
  if (v32)
  {
    sub_100004A34(v32);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v24)
  {
    v14 = (*(*v24 + 152))(v24, 3);
    v16 = sd::imsServiceMaskFromUint(v14, v15);
  }

  else
  {
    v16 = 0;
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  __p = 0uLL;
  v30 = 0;
  (*(**(a1 + 120) + 112))(&__p);
  v17 = HIBYTE(v30);
  if (v30 < 0)
  {
    v17 = *(&__p + 1);
  }

  if (v17)
  {
    sub_100005308(&v31, &__p);
    v18 = v31;
    v19 = v32;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v24 = a1;
  LODWORD(v25) = v16;
  v27 = 0;
  v26 = 0uLL;
  sub_10004EFD0(&v26, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
  v20 = *(a1 + 24);
  if (v20)
  {
    v21 = *(a1 + 16);
    v22 = std::__shared_weak_count::lock(v20);
    if (v22)
    {
      v28[0] = v21;
      v28[1] = v22;
      atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v23 = *(a1 + 24);
      if (v23)
      {
        if (std::__shared_weak_count::lock(v23))
        {
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  sub_100013CC4();
}

void sub_101313BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  a9 = &a23;
  sub_1000087B4(&a9);
  _Unwind_Resume(a1);
}

void sub_101313C6C(void **a1, uint64_t *a2)
{
  (*(*a1[13] + 200))(buf);
  v4 = (*(*a1[7] + 16))(a1[7], *(*buf + 52));
  if (v10)
  {
    sub_100004A34(v10);
  }

  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I stop using IMSConnectivityHelperWifi", buf, 2u);
  }

  v6 = *a2;
  (*(*a1[13] + 200))(buf);
  v7 = *buf;
  v8 = ((*a1)[2])(a1);
  (*(*v6 + 48))(v6, v7 + 24, v8);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10131415C(a1);
}

void sub_1013140D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  sub_10006DCAC(&a10, a11);
  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_10006DCAC(&a13, a14);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void sub_10131415C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
      v4 = *(a1 + 24);
      if (v4)
      {
        if (std::__shared_weak_count::lock(v4))
        {
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  sub_100013CC4();
}

void sub_101314274(uint64_t a1)
{
  *(a1 + 196) = 2;
  v2 = *(a1 + 208);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_101314294(uint64_t a1)
{
  (*(**(a1 + 104) + 200))(&v4);
  v2 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v4 + 52));
  if (v5)
  {
    sub_100004A34(v5);
  }

  v3 = *v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Throttling PDN bringup", &v4, 2u);
  }

  ++*(a1 + 156);
}

void sub_101314370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101314388(uint64_t a1)
{
  (*(**(a1 + 104) + 200))(&v4);
  v2 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v4 + 52));
  if (v5)
  {
    sub_100004A34(v5);
  }

  v3 = *v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Reset PDN bringup throttling", &v4, 2u);
  }

  *(a1 + 156) = 0;
}

void sub_10131445C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101314474(uint64_t a1)
{
  (*(**(a1 + 104) + 200))(buf);
  v2 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*buf + 52));
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (validContextType())
  {
    v3 = *v2;
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v4 = asString();
    *buf = 136315138;
    *&buf[4] = v4;
    v5 = "#I PdnBringUp: Data is in activating or already up on %s";
    v6 = v3;
    v7 = 12;
    goto LABEL_13;
  }

  if (((*(*a1 + 152))(a1, 0) & 1) == 0)
  {
    v8 = *v2;
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "#N PdnBringUp: No connectivity to activate PDN right now.";
    goto LABEL_12;
  }

  if (*(a1 + 224))
  {
    v8 = *v2;
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "#I PdnBringUp: There is already Pdn bring up request on the queue. Do nothing";
LABEL_12:
    v6 = v8;
    v7 = 2;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    return;
  }

  v9 = (*(**(a1 + 120) + 480))(*(a1 + 120), *(a1 + 156));
  v10 = *v2;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = asString();
    v12 = *(a1 + 156);
    *buf = 67109634;
    *&buf[4] = v9;
    *&buf[8] = 2080;
    *&buf[10] = v11;
    v25 = 1024;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I PdnBringUp: Attempting pdn bring up after %u seconds. Attempt [%s] # %u", buf, 0x18u);
  }

  Registry::getTimerService(buf, *(a1 + 72));
  v13 = *buf;
  sub_10000501C(__p, "PDP Retry timer");
  v14 = *(a1 + 32);
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_101314894;
  aBlock[3] = &unk_101F2DBA8;
  aBlock[4] = a1;
  v19 = _Block_copy(aBlock);
  sub_100D23364(v13, __p, 1, 1000000 * v9, &object, &v19);
  v15 = v23;
  v23 = 0;
  v16 = *(a1 + 224);
  *(a1 + 224) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
    v17 = v23;
    v23 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  if (v19)
  {
    _Block_release(v19);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_101314828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101314894(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(v1 + 224);
    *(v1 + 224) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (!(*(**(v1 + 104) + 104))(*(v1 + 104)))
  {
    *(v1 + 156) = 0;
    return;
  }

  (*(**(v1 + 104) + 200))(buf);
  v4 = (*(**(v1 + 56) + 16))(*(v1 + 56), *(*buf + 52));
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (validContextType())
  {
    v5 = *(v1 + 160);
  }

  else
  {
    v5 = *(v1 + 152);
    *(v1 + 160) = v5;
  }

  ++*(v1 + 156);
  if (!v5)
  {
    memset(buf, 0, sizeof(buf));
    ServiceMap = Registry::getServiceMap(*(v1 + 72));
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
    v38 = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &v38);
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
        goto LABEL_27;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
LABEL_27:
    (*(**(v1 + 104) + 200))(&v38);
    (*(*v14 + 40))(buf, v14, v38 + 24);
    if (v39)
    {
      sub_100004A34(v39);
    }

    if ((v15 & 1) == 0)
    {
      sub_100004A34(v13);
    }

    if (*buf)
    {
      v22 = (*(**buf + 56))(*buf);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if ((v22 & 1) != 0 && *(v1 + 216) == 1)
      {
        *(v1 + 196) = *(v1 + 160);
        if (!*(v1 + 200))
        {
          sub_1006CB7F4(buf);
        }

        v23 = Registry::getServiceMap(*(v1 + 72));
        v24 = v23;
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

        std::mutex::lock(v23);
        *buf = v25;
        v29 = sub_100009510(&v24[1].__m_.__sig, buf);
        if (!v29)
        {
          std::mutex::unlock(v24);
          return;
        }

        v31 = v29[3];
        v30 = v29[4];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v24);
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v30);
          if (!v31)
          {
            goto LABEL_66;
          }
        }

        else
        {
          std::mutex::unlock(v24);
          if (!v31)
          {
            return;
          }
        }

        LODWORD(v38) = (*(*v31 + 808))(v31);
        v34 = *(v1 + 136);
        if (v34 && (*(*v34 + 408))(v34, &v38))
        {
          v35 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I PdnBringUp: Cellular Internet connection is already up.", buf, 2u);
          }

          *(v1 + 192) = 2;
        }

        if (*(v1 + 192) == 2)
        {
          sub_101314F94(v1, *(v1 + 196));
        }

        else
        {
          v36 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I PdnBringUp: Attempting to activate Cellular Internet.", buf, 2u);
          }

          v37 = v38;
          sub_10000501C(buf, "Activating internet for SIP/TLS");
          (*(*v31 + 88))(v31, v37, 1, 1, buf, 0, 0);
          if (v41 < 0)
          {
            operator delete(*buf);
          }
        }

        if (!v30)
        {
          return;
        }

LABEL_66:
        sub_100004A34(v30);
        return;
      }
    }

    else if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v32 = *v4;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v33 = asString();
    *buf = 136315138;
    *&buf[4] = v33;
    v18 = "#I PdnBringUp: Current iRat preference is %s, but thumper over cellular is not supported.";
    v19 = v32;
    goto LABEL_48;
  }

  if (v5 != 1)
  {
    v16 = *v4;
    if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = asString();
    *buf = 136315138;
    *&buf[4] = v17;
    v18 = "#I PdnBringUp: Current iRat preference is %s, cannot activate.";
    v19 = v16;
LABEL_48:
    v21 = 12;
    goto LABEL_49;
  }

  if (*(v1 + 152) == 1)
  {
    *(v1 + 196) = 1;
    sub_101314F94(v1, 1);
    return;
  }

  v20 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v18 = "#I PdnBringUp: iRat Suggest wifi, but Wifi is not available, cannot activate.";
    v19 = v20;
    v21 = 2;
LABEL_49:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v21);
  }
}