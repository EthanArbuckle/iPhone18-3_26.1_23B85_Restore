void sub_100181A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  sub_10001021C(&a9);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  sub_10001021C(&a10);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_100181AA8(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  if (!xpc_dictionary_get_value(*a4, "kQOSInfo"))
  {
    return;
  }

  v6 = *sub_100020154();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionDropIPPackets()", buf, 2u);
  }

  object = 0;
  *buf = a4;
  v20 = "kQOSInfo";
  sub_100006354(buf, &object);
  cf = 0;
  *buf = _CFXPCCreateCFObjectFromXPCObject();
  sub_1001837C8(&cf, buf);
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
        goto LABEL_16;
      }

LABEL_13:
      v17 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      (*(*v15 + 424))(v15, 1, &v17);
      sub_100010250(&v17);
      goto LABEL_16;
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
    goto LABEL_13;
  }

LABEL_16:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  sub_100010250(&cf);
  xpc_release(object);
}

void sub_100181C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  sub_100010250(&a9);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  sub_100010250(&a10);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_100181CC8(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t *a5)
{
  if (!IsTelephonyRunning() || !xpc_dictionary_get_value(*a4, "kPacketContextIdentifer"))
  {
    return;
  }

  v20 = a4;
  v21 = "kPacketContextIdentifer";
  sub_100006354(&v20, &v24);
  v8 = xpc::dyn_cast_or_default(&v24, 0, v7);
  xpc_release(v24);
  v10 = capabilities::ct::supportedPDPContextCount(v9);
  if (v10 >> 31)
  {
    sub_101762DD4();
  }

  v11 = capabilities::ct::supportedPDPContextCount(v10);
  if ((v8 & 0x80000000) == 0 && v8 < v11)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    InternetAssertion::getAssertions(&v20);
    v19 = 0;
    v12 = xpc_array_create(0, 0);
    v13 = v12;
    if (v12)
    {
      v19 = v12;
    }

    else
    {
      v13 = xpc_null_create();
      v19 = v13;
      if (!v13)
      {
        v14 = xpc_null_create();
        v13 = 0;
        goto LABEL_16;
      }
    }

    if (xpc_get_type(v13) == &_xpc_type_array)
    {
      xpc_retain(v13);
LABEL_17:
      xpc_release(v13);
      sub_100183834(&v23, v20, v21, &v19);
      v24 = &v20;
      sub_1000087B4(&v24);
      if (xpc_get_type(v19) == &_xpc_type_array)
      {
        v17 = v19;
        if (v19)
        {
          xpc_retain(v19);
        }

        else
        {
          v17 = xpc_null_create();
        }

        v20 = *a5;
        v21 = "kPacketCopyAssertion";
        sub_1000609CC(&v20, &v17, &v18);
        xpc_release(v18);
        v18 = 0;
        xpc_release(v17);
        v17 = 0;
      }

      xpc_release(v19);
      return;
    }

    v14 = xpc_null_create();
LABEL_16:
    v19 = v14;
    goto LABEL_17;
  }

  v15 = xpc_int64_create(22);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v20 = *a5;
  v21 = "kPosixError";
  sub_10000F688(&v20, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
}

void sub_100181F48(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *buf = a4;
  v23 = "kQosIndicator";
  sub_100006354(buf, &object);
  v7 = xpc::dyn_cast_or_default(&object, 0, v6);
  xpc_release(object);
  *buf = a4;
  v23 = "kPacketDataFamily";
  sub_100006354(buf, &object);
  v9 = xpc::dyn_cast_or_default(&object, 0, v8);
  xpc_release(object);
  v10 = *sub_100020154();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling setQuality, protocols 0x%x", buf, 8u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
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
  if (!v17)
  {
    v19 = 0;
LABEL_11:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
  if (v19)
  {
LABEL_12:
    (*(*v19 + 432))(v19, 1, v7 != 0, v9);
  }

LABEL_13:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

void sub_100182150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001821B0(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  *&buf = a4;
  *(&buf + 1) = "kAssertionName";
  sub_100006354(&buf, &object);
  xpc::dyn_cast_or_default(v20, &object, "Unknown client", v7);
  xpc_release(object);
  v8 = *sub_100020154();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v20;
    if (v21 < 0)
    {
      v9 = v20[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s is adding a CT keep alive assertion", &buf, 0xCu);
  }

  remote_connection = xpc_dictionary_get_remote_connection(*a4);
  v11 = remote_connection;
  if (remote_connection)
  {
    xpc_retain(remote_connection);
  }

  else
  {
    v11 = xpc_null_create();
  }

  CTKeepAliveAssertion::name(v17);
  v16 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v16 = xpc_null_create();
  }

  if (SHIBYTE(v21) < 0)
  {
    sub_100005F2C(__p, v20[0], v20[1]);
  }

  else
  {
    *__p = *v20;
    v15 = v21;
  }

  sub_10007589C(v17, &v16, __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v16);
  v16 = 0;
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v12 = xpc_BOOL_create(1);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  *&buf = *a5;
  *(&buf + 1) = "kDidSucceed";
  sub_10000F688(&buf, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_1001823C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_100182484(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  *&v30 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v30);
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
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    v15 = sub_100020154();
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      sub_101762E00();
    }

    goto LABEL_33;
  }

LABEL_11:
  *&v30 = a4;
  *(&v30 + 1) = "kEMBMSStatus";
  sub_100006354(&v30, &object);
  v17 = xpc::dyn_cast_or_default(&object, 0, v16);
  xpc_release(object);
  remote_connection = xpc_dictionary_get_remote_connection(*a4);
  v19 = remote_connection;
  if (remote_connection)
  {
    xpc_retain(remote_connection);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  sub_10000D518(&v30);
  sub_10000C030(&v30);
  object = 0;
  v28 = 0;
  v29 = 0;
  sub_100A6024C(a4, &object);
  if (v29 >= 0)
  {
    v20 = HIBYTE(v29);
  }

  else
  {
    v20 = v28;
  }

  if (!v20)
  {
    if (SHIBYTE(v29) < 0)
    {
      v28 = 9;
      p_object = object;
    }

    else
    {
      HIBYTE(v29) = 9;
      p_object = &object;
    }

    strcpy(p_object, "<unknown>");
  }

  v22 = sub_10000C030(&v30);
  sub_10000C030(v22);
  v23 = *sub_100020154();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000D684(&v30, __p);
    v24 = v26 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v46 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionSetEMBMSActive(), reason %s", buf, 0xCu);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (**v13)(v13, v17 != 0);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(object);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  std::locale::~locale(v31);
  std::ostream::~ostream();
  std::ios::~ios();
  xpc_release(v19);
LABEL_33:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100182954(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
    v14 = 0;
LABEL_12:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (!v14)
  {
LABEL_7:
    v18 = xpc_BOOL_create(0);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    v20 = *a5;
    v21 = "kEMBMSStatus";
    sub_10000F688(&v20, &v18, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v18);
    v18 = 0;
    v16 = sub_100020154();
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      sub_101762E00();
    }

    goto LABEL_16;
  }

LABEL_13:
  v17 = (*(*v14 + 8))(v14);
  v22 = xpc_BOOL_create(v17);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v20 = *a5;
  v21 = "kEMBMSStatus";
  sub_10000F688(&v20, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
LABEL_16:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_100182B24(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100182B5C(Registry **a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v22 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v22);
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

LABEL_11:
      v22 = a4;
      v23 = "kEMBMSServiceType";
      sub_100006354(&v22, object);
      xpc::dyn_cast_or_default(object, 0, v18);
      xpc_release(object[0]);
      v22 = a4;
      v23 = "kEMBMSEarfcn";
      sub_100006354(&v22, object);
      xpc::dyn_cast_or_default(object, 0, v19);
      xpc_release(object[0]);
      v20 = *a4;
      if (v20)
      {
        xpc_retain(v20);
      }

      else
      {
        xpc_null_create();
      }

      v21 = *(a5 + 8);
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      object[4] = 0;
      operator new();
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
    goto LABEL_11;
  }

LABEL_7:
  v17 = sub_100020154();
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_101762E00();
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_100182E88(Registry **a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v21[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, v21);
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

LABEL_11:
      v21[0] = a4;
      v21[1] = "kEMBMSSAIType";
      sub_100006354(v21, object);
      xpc::dyn_cast_or_default(object, 0, v18);
      xpc_release(object[0]);
      v19 = *a4;
      if (v19)
      {
        xpc_retain(v19);
      }

      else
      {
        xpc_null_create();
      }

      v20 = *(a5 + 8);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      object[4] = 0;
      operator new();
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
    goto LABEL_11;
  }

LABEL_7:
  v17 = sub_100020154();
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_101762E00();
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_10018315C(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t a5)
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
  v23[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, v23);
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

      goto LABEL_11;
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
    v17 = sub_100020154();
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      sub_101762E00();
    }

    goto LABEL_18;
  }

LABEL_11:
  if (xpc_dictionary_get_value(*a4, "kEMBMSSAIInterestedInfo"))
  {
    value = xpc_dictionary_get_value(*a4, "kEMBMSSAIInterestedInfo");
    ctu::xpc_to_cf(v23, value, v19);
    sub_100010180(&v22, v23);
    v20 = *a4;
    if (v20)
    {
      xpc_retain(v20);
    }

    else
    {
      xpc_null_create();
    }

    v21 = *(a5 + 8);
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v23[4] = 0;
    operator new();
  }

LABEL_18:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_100183450(uint64_t a1, _BOOL4 a2, int a3)
{
  v6 = *sub_100020154();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "false";
    if (a2)
    {
      v7 = "true";
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling _CTGetCellularDataIsEnabledEx() -> %s, %d", buf, 0x12u);
  }

  if (a3)
  {
    v10 = xpc_int64_create(a3);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    *buf = *(a1 + 32);
    *&buf[8] = "kPosixError";
    sub_10000F688(buf, &v10, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v10);
  }

  else
  {
    v8 = xpc_BOOL_create(a2);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    *buf = *(a1 + 32);
    *&buf[8] = "kEnableCellularDataEx";
    sub_10000F688(buf, &v8, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(v8);
  }
}

void sub_1001835C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100183604(uint64_t result, uint64_t a2)
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

void sub_100183620(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100183630(uint64_t a1, xpc *a2)
{
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    v5 = 0;
  }

  else
  {
    v5 = xpc::dyn_cast_or_default(a2, 0, v4);
  }

  v7 = xpc_BOOL_create(v5);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v6[0] = *(a1 + 32);
  v6[1] = "kCellularDataHideIndicator";
  sub_10000F688(v6, &v7, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
}

void sub_1001836E0(uint64_t a1, int a2)
{
  if (a2)
  {
    object = xpc_int64_create(a2);
    if (!object)
    {
      object = xpc_null_create();
    }

    v5 = *(a1 + 32);
    v6 = "kPosixError";
    sub_10000F688(&v5, &object, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(object);
  }

  else
  {
    v3 = xpc_int64_create(*(a1 + 48));
    if (!v3)
    {
      v3 = xpc_null_create();
    }

    v5 = *(a1 + 32);
    v6 = "kEnableCellularDataEx";
    sub_10000F688(&v5, &v3, &v4);
    xpc_release(v4);
    v4 = 0;
    xpc_release(v3);
  }
}

void *sub_1001837C8(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFArrayGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

uint64_t sub_100183834(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = v5;
      if (*(v5 + 23) < 0)
      {
        v7 = *v5;
      }

      v8 = xpc_string_create(v7);
      if (!v8)
      {
        v8 = xpc_null_create();
      }

      xpc_array_append_value(*a4, v8);
      xpc_release(v8);
      v5 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1001838E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

uint64_t sub_100183920(uint64_t a1)
{
  *a1 = off_101E2D4A8;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void sub_10018397C(uint64_t a1)
{
  *a1 = off_101E2D4A8;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;

  operator delete();
}

xpc_object_t sub_100183A88(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101E2D4A8;
  a2[1] = v4;
  if (v4)
  {
    result = xpc_retain(v4);
  }

  else
  {
    result = xpc_null_create();
    a2[1] = result;
  }

  v6 = a1[3];
  a2[2] = a1[2];
  a2[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100183AFC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
}

void sub_100183B38(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));

  operator delete(a1);
}

const void **sub_100183B84(uint64_t a1, const void **a2)
{
  v6 = *a2;
  v3 = v6;
  *a2 = 0;
  if (v3)
  {
    ctu::cf_to_xpc(&object, v3, a2);
    v7[0] = *(a1 + 16);
    v7[1] = "kEMBMSSigInfo";
    sub_10000F688(v7, &object, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(object);
  }

  else
  {
    v4 = sub_100020154();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_101762E34();
    }
  }

  return sub_10001021C(&v6);
}

void sub_100183C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100183C44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100183C90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

uint64_t sub_100183CD0(uint64_t a1)
{
  *a1 = off_101E2D528;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void sub_100183D2C(uint64_t a1)
{
  *a1 = off_101E2D528;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;

  operator delete();
}

xpc_object_t sub_100183E38(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101E2D528;
  a2[1] = v4;
  if (v4)
  {
    result = xpc_retain(v4);
  }

  else
  {
    result = xpc_null_create();
    a2[1] = result;
  }

  v6 = a1[3];
  a2[2] = a1[2];
  a2[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100183EAC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
}

void sub_100183EE8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));

  operator delete(a1);
}

const void **sub_100183F34(uint64_t a1, const void **a2)
{
  v6 = *a2;
  v3 = v6;
  *a2 = 0;
  if (v3)
  {
    ctu::cf_to_xpc(&object, v3, a2);
    v7[0] = *(a1 + 16);
    v7[1] = "kEMBMSSAIListInfo";
    sub_10000F688(v7, &object, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(object);
  }

  else
  {
    v4 = sub_100020154();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_101762E68();
    }
  }

  return sub_10001021C(&v6);
}

void sub_100183FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100183FF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100184040(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

uint64_t sub_100184080(uint64_t a1)
{
  *a1 = off_101E2D5A8;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void sub_1001840DC(uint64_t a1)
{
  *a1 = off_101E2D5A8;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;

  operator delete();
}

xpc_object_t sub_1001841E8(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101E2D5A8;
  a2[1] = v4;
  if (v4)
  {
    result = xpc_retain(v4);
  }

  else
  {
    result = xpc_null_create();
    a2[1] = result;
  }

  v6 = a1[3];
  a2[2] = a1[2];
  a2[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10018425C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
}

void sub_100184298(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  xpc_release(*(a1 + 8));

  operator delete(a1);
}

void sub_1001842E4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v5 = xpc_BOOL_create(1);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    v4[0] = *(a1 + 16);
    v4[1] = "kDidSucceed";
    sub_10000F688(v4, &v5, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v5);
  }

  else
  {
    v3 = sub_100020154();
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_101762E9C();
    }
  }
}

uint64_t sub_10018439C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001843E8()
{
  v0 = objc_autoreleasePoolPush();
  sub_100A5C110(&unk_101FB9FFA, sub_10017AF08);

  objc_autoreleasePoolPop(v0);
}

id sub_10018443C(uint64_t a1)
{
  v2 = [NSUUID alloc];
  if (*(a1 + 183) >= 0)
  {
    v3 = a1 + 160;
  }

  else
  {
    v3 = *(a1 + 160);
  }

  v4 = [NSString stringWithUTF8String:v3];
  v5 = [v2 initWithUUIDString:v4];

  v6 = [CTXPCServiceSubscriptionContext alloc];
  if (*a1 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (*a1 == 2);
  }

  v8 = [v6 initWithUUID:v5 andSlot:v7];
  [v8 setIsSimPresent:*(a1 + 216)];
  [v8 setIsSimGood:*(a1 + 217)];
  [v8 setIsSimHidden:*(a1 + 218)];
  [v8 setIsSimDataOnly:*(a1 + 219)];
  v9 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    if (!*(a1 + 64))
    {
      goto LABEL_13;
    }

    v9 = *v9;
    goto LABEL_12;
  }

  if (*(a1 + 79))
  {
LABEL_12:
    v10 = [NSString stringWithUTF8String:v9];
    [v8 setLabelID:v10];
  }

LABEL_13:
  v11 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_19;
    }

    v11 = *v11;
    goto LABEL_18;
  }

  if (*(a1 + 31))
  {
LABEL_18:
    v12 = [NSString stringWithUTF8String:v11];
    [v8 setLabel:v12];
  }

LABEL_19:
  v13 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    if (!*(a1 + 96))
    {
      goto LABEL_25;
    }

    v13 = *v13;
    goto LABEL_24;
  }

  if (*(a1 + 111))
  {
LABEL_24:
    v14 = [NSString stringWithUTF8String:v13];
    [v8 setPhoneNumber:v14];
  }

LABEL_25:
  v15 = *(a1 + 184);
  if (v15)
  {
    v16 = [NSNumber numberWithBool:v15 == 2];
    [v8 setUserDataPreferred:v16];
  }

  v17 = *(a1 + 188);
  if (v17)
  {
    v18 = [NSNumber numberWithBool:v17 == 2];
    [v8 setUserDefaultVoice:v18];
  }

  return v8;
}

id sub_100184694(uint64_t a1)
{
  v2 = [NSUUID alloc];
  if (*(a1 + 183) >= 0)
  {
    v3 = a1 + 160;
  }

  else
  {
    v3 = *(a1 + 160);
  }

  v4 = [NSString stringWithUTF8String:v3];
  v5 = [v2 initWithUUIDString:v4];

  if (*(a1 + 215) >= 0)
  {
    v6 = a1 + 192;
  }

  else
  {
    v6 = *(a1 + 192);
  }

  v7 = [NSString stringWithUTF8String:v6];
  if (*a1 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * (*a1 == 2);
  }

  v9 = [CTXPCContextInfo contextWithUUID:v5 andAccountID:v7 andSlot:v8];

  v10 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    if (!*(a1 + 64))
    {
      goto LABEL_16;
    }

    v10 = *v10;
    goto LABEL_15;
  }

  if (*(a1 + 79))
  {
LABEL_15:
    v11 = [NSString stringWithUTF8String:v10];
    [v9 setLabelID:v11];
  }

LABEL_16:
  v12 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_22;
    }

    v12 = *v12;
    goto LABEL_21;
  }

  if (*(a1 + 31))
  {
LABEL_21:
    v13 = [NSString stringWithUTF8String:v12];
    [v9 setLabel:v13];
  }

LABEL_22:
  v14 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    if (!*(a1 + 96))
    {
      goto LABEL_28;
    }

    v14 = *v14;
    goto LABEL_27;
  }

  if (*(a1 + 111))
  {
LABEL_27:
    v15 = [NSString stringWithUTF8String:v14];
    [v9 setPhoneNumber:v15];
  }

LABEL_28:

  return v9;
}

id sub_100184890(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2 * (a1 == 2);
  }

  v2 = [NSNumber numberWithInteger:v1];
  v3 = [CTServiceDescriptor telephonyDescriptorWithInstance:v2];

  return v3;
}

uint64_t sub_10018491C(uint64_t result)
{
  if ((result - 1) < 8)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018492C(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 8)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018493C(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 6)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018494C(int a1)
{
  if (a1)
  {
    return 2 * (a1 == 1);
  }

  else
  {
    return 1;
  }
}

void sub_100184964(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 addr];

    if (v5)
    {
      v6 = [v4 addr];
      v13 = [v6 UTF8String];
      sub_100184AD0(a2, &v13);
    }

    v7 = [v4 maskLen];

    if (v7)
    {
      v8 = [v4 maskLen];
      *(a2 + 32) = [v8 unsignedCharValue] | 0x100;
    }

    v9 = [v4 port];

    if (v9)
    {
      v10 = [v4 port];
      *(a2 + 34) = [v10 unsignedShortValue];
      *(a2 + 36) = 1;
    }

    v11 = [v4 portRange];

    if (v11)
    {
      v12 = [v4 portRange];
      *(a2 + 38) = [v12 unsignedShortValue];
      *(a2 + 40) = 1;
    }
  }
}

uint64_t sub_100184AD0(uint64_t a1, char **a2)
{
  v3 = *a2;
  if (*(a1 + 24) == 1)
  {
    sub_100016890(a1, *a2);
  }

  else
  {
    v4 = strlen(*a2);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v4;
    if (v4)
    {
      memmove(a1, v3, v4);
    }

    *(a1 + v5) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_100184BAC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    *a2 = [v3 filterId];
    *(a2 + 24) = [v4 ipProtocol];
    *(a2 + 28) = [v4 ipFamilyProtocol];
    *(a2 + 20) = [v4 precedence];
    v5 = [v4 tos];

    if (v5)
    {
      v6 = [v4 tos];
      *(a2 + 144) = [v6 unsignedCharValue] | 0x100;
    }

    v7 = [v4 tosMask];

    if (v7)
    {
      v8 = [v4 tosMask];
      *(a2 + 146) = [v8 unsignedCharValue] | 0x100;
    }

    v9 = [v4 flowLabel];

    if (v9)
    {
      v10 = [v4 flowLabel];
      *(a2 + 148) = [v10 unsignedLongValue];
      *(a2 + 152) = 1;
    }

    v11 = [v4 src];

    if (v11)
    {
      v16 = 0u;
      v17 = 0u;
      *__p = 0u;
      v12 = [v4 src];
      sub_100184964(v12, __p);

      sub_100184E00((a2 + 32), __p);
      if (BYTE8(v16) == 1 && SBYTE7(v16) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v13 = [v4 dst];

    if (v13)
    {
      v16 = 0u;
      v17 = 0u;
      *__p = 0u;
      v14 = [v4 dst];
      sub_100184964(v14, __p);

      sub_100184E00((a2 + 88), __p);
      if (BYTE8(v16) == 1 && SBYTE7(v16) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100184D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *sub_100184E00(std::string *a1, std::string *a2)
{
  if (a1[2].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_10012BF3C(a1, a2);
    size = a2[1].__r_.__value_.__l.__size_;
    a1[1].__r_.__value_.__s.__data_[16] = a2[1].__r_.__value_.__s.__data_[16];
    a1[1].__r_.__value_.__l.__size_ = size;
  }

  else
  {
    sub_10006F264(a1, a2);
    v5 = a2[1].__r_.__value_.__l.__size_;
    a1[1].__r_.__value_.__s.__data_[16] = a2[1].__r_.__value_.__s.__data_[16];
    a1[1].__r_.__value_.__l.__size_ = v5;
    a1[2].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

id sub_100184E68(uint64_t a1)
{
  if (TrafficDescriptor::empty(a1))
  {
    v2 = 0;
    goto LABEL_47;
  }

  v2 = objc_opt_new();
  if (*(a1 + 208) == 1)
  {
    CSIPacketAddress::operator std::string();
    v3 = v23 >= 0 ? &__p : __p;
    v4 = [NSString stringWithUTF8String:v3];
    [v2 setAddress:v4];

    if (v23 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 175) >= 0)
    {
      v5 = a1 + 152;
    }

    else
    {
      v5 = *(a1 + 152);
    }

    v6 = [NSString stringWithUTF8String:v5];
    [v2 setHost:v6];
  }

  if (*(a1 + 214) == 1)
  {
    v7 = [NSNumber numberWithUnsignedShort:*(a1 + 212)];
    [v2 setPort:v7];
  }

  if (TrafficDescriptor::hasBundleInfo(a1))
  {
    if (*(a1 + 72) != 1)
    {
      goto LABEL_50;
    }

    if (*(a1 + 71) >= 0)
    {
      v8 = a1 + 48;
    }

    else
    {
      v8 = *(a1 + 48);
    }

    v9 = [NSString stringWithUTF8String:v8];
    [v2 setBundleId:v9];
  }

  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 103) >= 0)
    {
      v10 = a1 + 80;
    }

    else
    {
      v10 = *(a1 + 80);
    }

    v11 = [NSString stringWithUTF8String:v10];
    [v2 setAppCategory:v11];
  }

  if (TrafficDescriptor::hasAccountInfo(a1))
  {
    if (*(a1 + 136) != 1)
    {
      goto LABEL_50;
    }

    if (*(a1 + 135) >= 0)
    {
      v12 = a1 + 112;
    }

    else
    {
      v12 = *(a1 + 112);
    }

    v13 = [NSString stringWithUTF8String:v12];
    [v2 setAccountId:v13];
  }

  if (*(a1 + 145) == 1)
  {
    v14 = [NSNumber numberWithBool:*(a1 + 144)];
    [v2 setLlphs:v14];
  }

  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 263) >= 0)
    {
      v15 = a1 + 240;
    }

    else
    {
      v15 = *(a1 + 240);
    }

    v16 = [NSString stringWithUTF8String:v15];
    [v2 setDnn:v16];
  }

  if (*(a1 + 224) == 1)
  {
    v17 = [NSNumber numberWithUnsignedShort:*(a1 + 222)];
    [v2 setIpProtocol:v17];
  }

  if (*(a1 + 220) != 1)
  {
    goto LABEL_45;
  }

  v18 = [NSNumber numberWithUnsignedShort:*(a1 + 216)];
  [v2 setPortRangeLow:v18];

  if ((*(a1 + 220) & 1) == 0)
  {
LABEL_50:
    sub_1000D1644();
  }

  v19 = [NSNumber numberWithUnsignedShort:*(a1 + 218)];
  [v2 setPortRangeUpper:v19];

LABEL_45:
  if (*(a1 + 232) == 1)
  {
    v20 = [NSNumber numberWithUnsignedLong:*(a1 + 228)];
    [v2 setTrafficClass:v20];
  }

LABEL_47:

  return v2;
}

id sub_100185240(uint64_t **a1)
{
  if (*a1 == a1[1])
  {
    v19 = 0;
  }

  else
  {
    v2 = objc_opt_new();
    v3 = *a1;
    v21 = v2;
    v22 = a1[1];
    if (*a1 != v22)
    {
      do
      {
        v23 = objc_opt_new();
        if (*(v3 + 23) >= 0)
        {
          v4 = v3;
        }

        else
        {
          v4 = *v3;
        }

        v5 = [NSString stringWithUTF8String:v4];
        [v23 setBundleId:v5];

        v6 = [NSNumber numberWithBool:*(v3 + 24)];
        [v23 setForeground:v6];

        v7 = objc_opt_new();
        v9 = v3[4];
        v8 = v3[5];
        while (v9 != v8)
        {
          v10 = objc_opt_new();
          if (*(v9 + 23) >= 0)
          {
            v11 = v9;
          }

          else
          {
            v11 = *v9;
          }

          v12 = [NSString stringWithUTF8String:v11];
          [v10 setInterface:v12];

          v13 = objc_opt_new();
          v14 = v9[3];
          if (v14 != v9 + 4)
          {
            do
            {
              v15 = sub_100184E68((v14 + 4));
              if (v15)
              {
                [v13 addObject:v15];
              }

              v16 = v14[1];
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
                  v17 = v14[2];
                  v18 = *v17 == v14;
                  v14 = v17;
                }

                while (!v18);
              }

              v14 = v17;
            }

            while (v17 != v9 + 4);
          }

          [v10 setTrafficDescriptors:v13];

          if (v10)
          {
            [v7 addObject:v10];
          }

          v9 += 6;
        }

        [v23 setInterfaces:v7];

        if (v23)
        {
          [v21 addObject:v23];
        }

        v3 += 7;
      }

      while (v3 != v22);
    }

    v19 = v21;
  }

  return v19;
}

id sub_1001854F4(unsigned int *a1)
{
  if (sub_10018569C(a1))
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_new();
    [v2 setFilterId:*a1];
    [v2 setIpProtocol:a1[6]];
    [v2 setIpFamilyProtocol:a1[7]];
    [v2 setPrecedence:a1[5]];
    if (*(a1 + 145) == 1)
    {
      v3 = [NSNumber numberWithUnsignedChar:*(a1 + 144)];
      [v2 setTos:v3];
    }

    if (*(a1 + 147) == 1)
    {
      v4 = [NSNumber numberWithUnsignedChar:*(a1 + 146)];
      [v2 setTosMask:v4];
    }

    if (*(a1 + 152) == 1)
    {
      v5 = [NSNumber numberWithUnsignedLong:a1[37]];
      [v2 setFlowLabel:v5];
    }

    if (*(a1 + 80) == 1)
    {
      v6 = sub_100185744(a1 + 4);
      [v2 setSrc:v6];
    }

    if (*(a1 + 136) == 1)
    {
      v7 = sub_100185744(a1 + 11);
      [v2 setDst:v7];
    }
  }

  return v2;
}

BOOL sub_10018569C(uint64_t a1)
{
  if (*(a1 + 24) || *(a1 + 28) || (*(a1 + 145) & 1) != 0 || (*(a1 + 152) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 56) == 1)
    {
      v2 = *(a1 + 55);
      if (v2 < 0)
      {
        v2 = *(a1 + 40);
      }

      if (v2)
      {
        return 0;
      }
    }

    if (*(a1 + 68) == 1 && *(a1 + 66))
    {
      return 0;
    }
  }

  if (*(a1 + 136) != 1)
  {
    return 1;
  }

  if (*(a1 + 112) == 1)
  {
    v3 = *(a1 + 111);
    if (v3 < 0)
    {
      v3 = *(a1 + 96);
    }

    if (v3)
    {
      return 0;
    }
  }

  return *(a1 + 124) != 1 || !*(a1 + 122);
}

id sub_100185744(uint64_t *a1)
{
  if (*(a1 + 24) != 1)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  if (!v2)
  {
LABEL_8:
    if (*(a1 + 36) != 1 || *(a1 + 17) == 0)
    {
      v4 = 0;
      goto LABEL_24;
    }
  }

  v4 = objc_opt_new();
  if (*(a1 + 24) == 1)
  {
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      v5 = a1;
      if (!*(a1 + 23))
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (a1[1])
    {
      v5 = *a1;
LABEL_17:
      v6 = [NSString stringWithUTF8String:v5];
      [v4 setAddr:v6];
    }
  }

LABEL_18:
  if (*(a1 + 33) == 1)
  {
    v7 = [NSNumber numberWithUnsignedChar:*(a1 + 32)];
    [v4 setMaskLen:v7];
  }

  if (*(a1 + 36) == 1)
  {
    v8 = [NSNumber numberWithUnsignedShort:*(a1 + 17)];
    [v4 setPort:v8];
  }

  if (*(a1 + 40) == 1)
  {
    v9 = [NSNumber numberWithUnsignedShort:*(a1 + 19)];
    [v4 setPortRange:v9];
  }

LABEL_24:

  return v4;
}

id sub_1001858E4(uint64_t *a1, void *a2)
{
  if (!a2[2])
  {
    v8 = 0;
    goto LABEL_34;
  }

  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      memset(v20, 0, sizeof(v20));
      *v19 = 0u;
      TrafficDescriptor::TrafficDescriptor(v19, (v4 + 4));
      if (TrafficDescriptor::hasBundleInfo(v19))
      {
        __p.n128_u8[0] = 0;
        v18 = 0;
        sub_10016A270(v20, &__p);
        if (v18 == 1 && v17 < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        BYTE4(v19[0]) = 0;
        LOBYTE(v19[1]) = 0;
      }

      LODWORD(v19[0]) = 0;
      sub_100117AC4(&v21);
      TrafficDescriptor::~TrafficDescriptor(v19);
      v5 = v4[1];
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
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  v8 = objc_alloc_init(NSMutableArray);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a1[1])
  {
    a1 = *a1;
LABEL_20:
    v9 = [NSString stringWithUTF8String:a1];
    [v8 addObject:v9];
  }

LABEL_21:
  v10 = v21;
  if (v21 != v22)
  {
    do
    {
      TrafficDescriptor::toString(v19, (v10 + 4));
      if ((SBYTE7(v20[0]) & 0x80u) == 0)
      {
        v11 = v19;
      }

      else
      {
        v11 = v19[0];
      }

      v12 = [NSString stringWithUTF8String:v11];
      [v8 addObject:v12];

      if (SBYTE7(v20[0]) < 0)
      {
        operator delete(v19[0]);
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
          v7 = *v14 == v10;
          v10 = v14;
        }

        while (!v7);
      }

      v10 = v14;
    }

    while (v14 != v22);
  }

  sub_10001BB0C(&v21, v22[0]);
LABEL_34:

  return v8;
}

void sub_100185B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v21 = v19;

  sub_10001BB0C(v20 - 88, *(v20 - 80));
  _Unwind_Resume(a1);
}

id sub_100185BB0(int *a1)
{
  v1 = *a1;
  if (v1 && (v2 = *(a1 + 1), v2 == std::generic_category()))
  {
    v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v1 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100185C20(CFUUIDRef uuid)
{
  if (uuid)
  {
    v3 = CFUUIDCreateString(0, uuid);
    v1 = [[NSUUID alloc] initWithUUIDString:v3];
    sub_100005978(&v3);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_100185C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100185CB4(uint64_t *a1)
{
  v2 = objc_opt_new();
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
      goto LABEL_7;
    }

    v3 = *a1;
    goto LABEL_6;
  }

  v3 = a1;
  if (*(a1 + 23))
  {
LABEL_6:
    v4 = [NSString stringWithUTF8String:v3];
    [v2 setNetworkPlmn:v4];
  }

LABEL_7:
  v5 = *(a1 + 7);
  if (v5 != 11)
  {
    [v2 setRat:sub_1014470D4(v5)];
  }

  v6 = a1 + 5;
  if (*(a1 + 63) < 0)
  {
    if (!a1[6])
    {
      goto LABEL_15;
    }

    v6 = *v6;
    goto LABEL_14;
  }

  if (*(a1 + 63))
  {
LABEL_14:
    v7 = [NSString stringWithUTF8String:v6];
    [v2 setReasonCode:v7];
  }

LABEL_15:
  [v2 setIsRoaming:*(a1 + 24)];
  v8 = *(a1 + 8);
  if (v8 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8 == 1;
  }

  [v2 setSourceType:v9];
  [v2 setIsNetworkInitiated:*(a1 + 25)];
  [v2 setTimeOfEvent:a1[8]];

  return v2;
}

id sub_100185E04(uint64_t *a1)
{
  v2 = objc_opt_new();
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v3 = a1;
    if (!*(a1 + 23))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a1[1])
  {
    v3 = *a1;
LABEL_6:
    v4 = [NSString stringWithUTF8String:v3];
    [v2 setHomePlmn:v4];
  }

LABEL_7:
  v5 = [NSMutableArray arrayWithCapacity:0x8E38E38E38E38E39 * ((a1[4] - a1[3]) >> 3)];
  v6 = a1[3];
  v7 = a1[4];
  while (v6 != v7)
  {
    v8 = sub_100185CB4(v6);
    [v5 addObject:v8];

    v6 += 9;
  }

  [v2 setEvents:v5];

  return v2;
}

uint64_t sub_100185F4C(_DWORD *a1)
{
  if (*a1 == 2)
  {
    return 2;
  }

  else
  {
    return *a1 == 1;
  }
}

BOOL sub_100185F68(uint64_t a1)
{
  if (*(a1 + 72) != 1 || (result = sub_10018616C(a1 + 16)))
  {
    if (*(a1 + 136) != 1)
    {
      return 1;
    }

    result = sub_10018616C(a1 + 80);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

id sub_100185FBC(unsigned int *a1)
{
  if (sub_10018616C(a1))
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_new();
    if (*(a1 + 4) == 1)
    {
      v3 = [NSNumber numberWithUnsignedInt:*a1];
      [v2 setQci:v3];
    }

    if (*(a1 + 12) == 1)
    {
      v4 = [NSNumber numberWithUnsignedInt:a1[2]];
      [v2 setBitRateMax:v4];
    }

    if (*(a1 + 20) == 1)
    {
      v5 = [NSNumber numberWithUnsignedInt:a1[4]];
      [v2 setBitRateMin:v5];
    }

    if (*(a1 + 48) == 1)
    {
      if (*(a1 + 3) == *(a1 + 4))
      {
        v6 = 0;
      }

      else
      {
        v6 = objc_opt_new();
        v7 = *(a1 + 3);
        v8 = *(a1 + 4);
        while (v7 != v8)
        {
          v9 = sub_1001854F4(v7);
          if (v9)
          {
            [v6 addObject:v9];
          }

          v7 += 40;
        }
      }

      [v2 setFilters:v6];
    }
  }

  return v2;
}

BOOL sub_10018616C(uint64_t a1)
{
  if (*(a1 + 4) == 1 && *a1 || *(a1 + 12) == 1 && *(a1 + 8) || *(a1 + 20) == 1 && *(a1 + 16))
  {
    return 0;
  }

  if (*(a1 + 48) != 1)
  {
    return 1;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_10018569C(v2);
    if (!result)
    {
      break;
    }

    v2 += 160;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_100186218@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    sub_100187940();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_100186284(uint64_t a1, char a2, const void **a3, dispatch_object_t *a4, uint64_t *a5, char a6, __int128 *a7)
{
  *a1 = off_101E2D828;
  v14 = a1 + 8;
  v15 = *a4;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v16 = a5[1];
  v28 = *a5;
  v29 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(__p, "t.prx.tr.ctr");
  sub_100A83CAC(v14, a2, &object, &v28, __p);
  if (v34 < 0)
  {
    operator delete(*__p);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E2D628;
  *(a1 + 8) = off_101E2D698;
  sub_100010024((a1 + 96), a3);
  sub_10000501C(&v26, "CellularPlanTargetProximityTransportControllerImpl");
  v25 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
  }

  v17 = *(a1 + 40);
  v24 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  ctu::RestModule::RestModule();
  if (v24)
  {
    dispatch_release(v24);
  }

  if (v25)
  {
    dispatch_release(v25);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = a6;
  if (*(a7 + 23) < 0)
  {
    sub_100005F2C((a1 + 136), *a7, *(a7 + 1));
  }

  else
  {
    v18 = *a7;
    *(a1 + 152) = *(a7 + 2);
    *(a1 + 136) = v18;
  }

  if (*(a7 + 47) < 0)
  {
    sub_100005F2C((a1 + 160), *(a7 + 3), *(a7 + 4));
  }

  else
  {
    v19 = *(a7 + 24);
    *(a1 + 176) = *(a7 + 5);
    *(a1 + 160) = v19;
  }

  v20 = *(a1 + 48);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = sub_100649BE0(*(a1 + 56));
    v22 = *a3;
    *__p = 136315394;
    *&__p[4] = v21;
    v32 = 2112;
    v33 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I create proximity transfer controller for : %s, remote device : %@", __p, 0x16u);
  }

  return a1;
}

void sub_100186510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, dispatch_object_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 + 159) < 0)
  {
    operator delete(*(v25 + 136));
  }

  v28 = *(v25 + 112);
  if (v28)
  {
    sub_100004A34(v28);
  }

  sub_10001021C((v25 + 96));
  sub_100A83DC4(v26);
  j___s17CommCenterSupport12TMKXPCServerC8shutdownyyF_1();
  _Unwind_Resume(a1);
}

void sub_1001865E8(uint64_t a1)
{
  *a1 = off_101E2D628;
  v2 = a1 + 8;
  *(a1 + 8) = off_101E2D698;
  sub_1001866A8(a1, 1);
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
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

  sub_10001021C((a1 + 96));
  sub_100A83DC4(v2);

  j___s17CommCenterSupport12TMKXPCServerC8shutdownyyF_1();
}

void sub_1001866A8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I user cancels proximity transfer", v4, 2u);
    }

    *(a1 + 128) = 0;
    sub_100A843E8(a1 + 8);
    sub_100186E04(a1);
  }

  else
  {

    sub_100186D70(a1, 0);
  }
}

void sub_100186758(uint64_t a1)
{
  sub_1001865E8(a1);

  operator delete();
}

void sub_100186790(uint64_t a1)
{
  sub_1001865E8(a1 - 8);

  operator delete();
}

uint64_t sub_1001867CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128))
  {
    v3 = 13;
  }

  else
  {
    sub_10018687C(a1);
    v3 = 0;
    ++*(a1 + 128);
  }

  return sub_100186828(a2, v3);
}

uint64_t sub_100186828(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_10018687C(uint64_t a1)
{
  if (*(a1 + 120))
  {
    return;
  }

  if ((ctu::RestModule::isConnected((a1 + 104)) & 1) == 0)
  {
    (***(a1 + 64))(buf);
    Registry::createRestModuleOneTimeUseConnection(&v19, *buf);
    ctu::RestModule::connect();
    if (v20)
    {
      sub_100004A34(v20);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_100004AA0(buf, (a1 + 16));
    v2 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v2);
    }

    sub_10000501C(&__p, "/cc/events/app_state_changed");
    operator new();
  }

  v3 = objc_alloc_init(off_101FB1700());
  v4 = *(a1 + 120);
  *(a1 + 120) = v3;

  [*(a1 + 120) setUseSecondTrigger:*(a1 + 132)];
  [*(a1 + 120) setDispatchQueue:*(a1 + 32)];
  v5 = (a1 + 136);
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
    if (!*(a1 + 159))
    {
      goto LABEL_20;
    }

LABEL_15:
    v6 = [NSString stringWithUTF8String:v5];
    [*(a1 + 120) setPassword:v6];
    [*(a1 + 120) setPasswordType:5];
    [*(a1 + 120) setNearbyActionType:92];
    v7 = (a1 + 160);
    if (*(a1 + 183) < 0)
    {
      v7 = *v7;
    }

    v8 = [NSString stringWithUTF8String:v7];
    v9 = [[NSData alloc] initWithBase64EncodedString:v8 options:1];
    [*(a1 + 120) setNearbyActionExtraData:v9];
    v10 = *(a1 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Using preSharedKey: %@, deviceIdentifier: %@", buf, 0x16u);
    }

    goto LABEL_20;
  }

  if (*(a1 + 144))
  {
    v5 = *v5;
    goto LABEL_15;
  }

LABEL_20:
  sub_100004AA0(buf, (a1 + 16));
  v12 = *buf;
  v11 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3321888768;
  v17[2] = sub_100186F1C;
  v17[3] = &unk_101E2D6F8;
  v17[4] = a1;
  v17[5] = v12;
  v18 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  [*(a1 + 120) setEventHandler:v17];
  v13 = *(a1 + 120);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v15[2] = sub_100187298;
  v15[3] = &unk_101E2D768;
  v15[4] = a1;
  v15[5] = v12;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  [v13 registerRequestID:@"CTProximityTransferRequestID" options:0 requestHandler:v15 completionHandler:&stru_101E2D798];
  v14 = *(a1 + 48);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I activate SKSetupSIMTransferServer", buf, 2u);
  }

  [*(a1 + 120) activate];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_100186CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_1000062D4(v31 - 112);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100186D70(uint64_t a1, int a2)
{
  v3 = *(a1 + 128);
  if (a2)
  {
    *(a1 + 128) = v3 + 1;
  }

  else if (v3)
  {
    v4 = v3 - 1;
    *(a1 + 128) = v4;
    if (!v4)
    {
      sub_100A843E8(a1 + 8);

      sub_100186E04(a1);
    }
  }

  else
  {
    v5 = *(a1 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_101762ED0(v5);
    }
  }
}

uint64_t sub_100186E04(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I invalidate SKSetupSIMTransferServer", v5, 2u);
  }

  [*(a1 + 120) invalidate];
  v3 = *(a1 + 120);
  *(a1 + 120) = 0;

  return ctu::RestModule::disconnect((a1 + 104));
}

void sub_100186E94(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_101762F14(v1);
  }
}

void sub_100186F1C(void *a1, void *a2)
{
  v7 = a2;
  v3 = a1[6];
  if (v3)
  {
    v4 = a1[4];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[5])
      {
        sub_100186FB8(v4, v7);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_100186F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_100004A34(v10);

  _Unwind_Resume(a1);
}

void sub_100186FB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handle SKEvent : %@", buf, 0xCu);
  }

  v5 = sub_10063DD9C(v3);
  v6 = v5;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  *buf = 0uLL;
  (***(a1 + 64))(&v14);
  Registry::getNotificationSenderFactory(&v16, v14);
  v7 = v16;
  (***(a1 + 64))(&v10);
  Registry::getTimerService(&v12, v10);
  (*(*v7 + 168))(buf, v7, &v12, a1 + 32);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  v8 = *buf;
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  (*(*v8 + 32))(v8, &v9);
  sub_10001021C(&v9);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  sub_10001021C(&cf);
}

void sub_1001871C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018726C(uint64_t result, uint64_t a2)
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

void sub_100187288(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100187298(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1[6];
  if (v13)
  {
    v14 = a1[4];
    v15 = std::__shared_weak_count::lock(v13);
    if (v15 && a1[5])
    {
      v17 = 0;
      v18 = 0;
      sub_10063DD0C(v10, &v17);
      sub_100A84468(v14 + 8, v17, v18, v11, v12);

LABEL_7:
      sub_100004A34(v15);
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6740 userInfo:0];
  (*(v12 + 2))(v12, 0, 0, v16, &stru_101E2D748);

  if (v15)
  {
    goto LABEL_7;
  }

LABEL_8:
}

void sub_1001873CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  sub_100004A34(v14);

  _Unwind_Resume(a1);
}

void sub_100187428(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    ctu::OsLogContext::OsLogContext(v4, kCtLoggingSystemName, "t.prx.tr.ctr");
    v3 = v4[1];
    ctu::OsLogContext::~OsLogContext(v4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_101762F58(v2, v3);
    }
  }
}

void sub_1001874B4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1[6];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I forward %@ opt:%@ req:%@", buf, 0x20u);
  }

  sub_100004AA0(buf, a1 + 2);
  v15 = *buf;
  v14 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  v16 = sub_10063DC18(v9, v11);
  v17 = a1[15];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3321888768;
  v19[2] = sub_100187710;
  v19[3] = &unk_101E2D7E8;
  v21 = a1;
  v22 = v15;
  v23 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v12;
  v20 = v18;
  [v17 sendRequestID:@"CTProximityTransferRequestID" requestMessage:v16 options:v10 responseHandler:v19];

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void sub_1001876B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  _Unwind_Resume(a1);
}

void sub_100187710(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = std::__shared_weak_count::lock(v10);
    if (v12)
    {
      v13 = v12;
      if (*(a1 + 48))
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100187830;
        v14[3] = &unk_101E2D7C0;
        v18 = *(a1 + 32);
        v15 = v9;
        v16 = v8;
        v17 = v7;
        sub_1001881A8((v11 + 16), v14);
      }

      sub_100004A34(v13);
    }
  }
}

uint64_t sub_100187830(void *a1)
{
  v2 = a1[7];
  v3 = NSErrorToOSStatus();
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(v2 + 16);

  return v6(v2, v3, v4, v5);
}

uint64_t sub_100187880(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10018789C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

Class sub_1001878B4()
{
  if (qword_101FBA018 != -1)
  {
    sub_101762FD0();
  }

  result = objc_getClass("SKSetupSIMTransferServer");
  qword_101FBA010 = result;
  off_101FB1700 = sub_100187908;
  return result;
}

void *sub_1001879FC(void *a1, char *a2, const void **a3, NSObject **a4, uint64_t *a5, char *a6, uint64_t a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E2D920;
  sub_100187AF4((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void sub_100187A78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2D920;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100187AF4(uint64_t a1, char *a2, const void **a3, NSObject **a4, uint64_t *a5, char *a6, uint64_t a7)
{
  v12 = *a2;
  sub_100010024(&v24, a3);
  v13 = *a4;
  v23 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = *a5;
  v15 = a5[1];
  v22[0] = v14;
  v22[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *a6;
  if (*(a7 + 23) < 0)
  {
    sub_100005F2C(v18, *a7, *(a7 + 8));
  }

  else
  {
    *v18 = *a7;
    v19 = *(a7 + 16);
  }

  if (*(a7 + 47) < 0)
  {
    sub_100005F2C(__p, *(a7 + 24), *(a7 + 32));
  }

  else
  {
    *__p = *(a7 + 24);
    v21 = *(a7 + 40);
  }

  sub_100186284(a1, v12, &v24, &v23, v22, v16, v18);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  sub_10001021C(&v24);
  return a1;
}

void sub_100187C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (!v15)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  sub_100004A34(v15);
  if (!v14)
  {
LABEL_5:
    sub_10001021C((v16 - 56));
    _Unwind_Resume(a1);
  }

LABEL_4:
  dispatch_release(v14);
  goto LABEL_5;
}

void sub_100187C9C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = a3 + 8;
      if (!a3)
      {
        v5 = 0;
      }

      v6 = *(a1 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = v5;
      a2[1] = v6;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v6)
      {

        sub_100004A34(v6);
      }
    }
  }
}

void *sub_100187D30(void *a1)
{
  *a1 = off_101E2D970;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100187D7C(void *a1)
{
  *a1 = off_101E2D970;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100187E5C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E2D970;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100187E9C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100187EAC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100187EEC(void *a1)
{
  *__p = 0u;
  v22 = 0u;
  rest::read_rest_value();
  v2 = a1[3];
  if (!v2)
  {
    goto LABEL_40;
  }

  v3 = a1[1];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_40;
  }

  v5 = v4;
  if (a1[2])
  {
    v6 = SHIBYTE(v22);
    if (SHIBYTE(v22) < 0)
    {
      if (v22 != 21)
      {
        goto LABEL_39;
      }

      v9 = __p[1];
      if (*__p[1] != 0x6C7070612E6D6F63 || *(__p[1] + 1) != 0x7265666572502E65 || *(__p[1] + 13) != 0x7365636E65726566)
      {
LABEL_13:
        v10 = *v9;
        v11 = v9[1];
        v12 = *(v9 + 13);
        if (v10 != 0x6C7070612E6D6F63 || v11 != 0x656C707275702E65 || v12 != 0x7964647562656C70 || LODWORD(__p[0]) != 1)
        {
          goto LABEL_39;
        }

LABEL_37:
        v19 = *(v3 + 48);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = __p[1];
          if (v6 >= 0)
          {
            v20 = &__p[1];
          }

          *buf = 136315394;
          v24 = v20;
          v25 = 1024;
          v26 = HIDWORD(__p[0]);
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%d] terminated. reset", buf, 0x12u);
        }

        sub_1001866A8(v3, 1);
        goto LABEL_39;
      }
    }

    else
    {
      if (SHIBYTE(v22) != 21)
      {
        goto LABEL_39;
      }

      v8 = __p[1] == 0x6C7070612E6D6F63 && v22 == 0x7265666572502E65 && *(&v22 + 5) == 0x7365636E65726566;
      v9 = &__p[1];
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    if (LODWORD(__p[0]) == 1)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
  sub_100004A34(v5);
LABEL_40:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }
}

void sub_100188130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100004A34(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10018815C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001881A8(void *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, a1);
  v4 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100188288;
  block[3] = &unk_101E2D9E8;
  v8 = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  v7 = v5;
  dispatch_async(v4, block);

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

uint64_t sub_100188298(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001882B4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1001882C4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

CFIndex sub_1001882EC()
{
  qword_101FCB6C8 = CFStringGetLength(@"GID1-");
  qword_101FCB6D0 = CFStringGetLength(@"GID2-");
  qword_101FCB6D8 = CFStringGetLength(@"ID-");
  result = CFStringGetLength(@"bs-");
  qword_101FCB6E0 = result;
  qword_101FCB6E8 = kCTPostponementInfoICCID;
  qword_101FCB6F0 = kCTPostponementInfoIMSI;
  qword_101FCB6F8 = kCTPostponementInfoMEID;
  qword_101FCB700 = kCTPostponementInfoCarrierID;
  return result;
}

void sub_100188448()
{
  *values = *off_101E2DB38;
  v23 = @"ReleaseType";
  v0 = CFArrayCreate(kCFAllocatorDefault, values, 3, &kCFTypeArrayCallBacks);
  if (v0)
  {
    v1 = v0;
    v2 = MGCopyMultipleAnswers();
    if (!v2)
    {
LABEL_24:
      CFRelease(v1);
      return;
    }

    v3 = v2;
    Value = CFDictionaryGetValue(v2, @"CarrierInstallCapability");
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFBooleanGetTypeID())
      {
        v21 = 0;
        v7 = CFGetTypeID(v5);
        TypeID = CFBooleanGetTypeID();
        v10 = 0;
        if (v7 == TypeID)
        {
          ctu::cf::assign(&v21, v5, v9);
          v10 = v21;
        }

        byte_101FBA029 = v10;
      }
    }

    v11 = CFDictionaryGetValue(v3, @"InternalBuild");
    if (v11 && (v12 = v11, v13 = CFGetTypeID(v11), v13 == CFBooleanGetTypeID()))
    {
      v21 = 0;
      v14 = CFGetTypeID(v12);
      v15 = CFBooleanGetTypeID();
      v17 = 0;
      if (v14 == v15)
      {
        ctu::cf::assign(&v21, v12, v16);
        v17 = v21;
      }

      byte_101FBA028 = v17;
      if (v17)
      {
        goto LABEL_23;
      }
    }

    else if (byte_101FBA028)
    {
LABEL_23:
      CFRelease(v3);
      goto LABEL_24;
    }

    v18 = CFDictionaryGetValue(v3, @"ReleaseType");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFStringGetTypeID())
      {
        if (CFStringCompare(v19, @"Desense", 0))
        {
          if (CFStringCompare(v19, @"Vendor", 0))
          {
            if (CFStringCompare(v19, @"VendorNonUI", 0) == kCFCompareEqualTo)
            {
              byte_101FBA02B = 1;
            }
          }

          else
          {
            byte_101FBA02A = 1;
          }
        }

        else
        {
          byte_101FBA028 = 1;
        }
      }
    }

    goto LABEL_23;
  }
}

void sub_1001886B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [*(a1 + 8) externalizedContext];
  *a2 = v3;
  if (v3)
  {
    v4 = v3;
    CFRetain(v3);
    v3 = v4;
  }
}

const void **sub_100188714(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  sub_10002D728(&v4, a2);
  sub_10018876C(v2, &v4);
  return sub_10002D760(&v4);
}

void sub_100188758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002D760(va);
  _Unwind_Resume(a1);
}

void sub_10018876C(uint64_t a1, void *a2)
{
  v3 = [objc_alloc(sub_1001887B8()) initWithExternalizedContext:*a2];
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
}

id sub_1001887B8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_101FBA030;
  v7 = qword_101FBA030;
  if (!qword_101FBA030)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100188AD8;
    v3[3] = &unk_101E2DBB0;
    v3[4] = &v4;
    sub_100188AD8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100188880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100188898(uint64_t a1)
{
  *a1 = off_101E2DB60;
  v2 = *(a1 + 8);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018896C;
  v6[3] = &unk_101E2DB78;
  v4 = v2;
  v7 = v4;
  [v4 resetProcessedEvent:5 reply:v6];

  return a1;
}

void sub_10018896C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "cp.si.ctr");
    v6 = *&v9[4];
    ctu::OsLogContext::~OsLogContext(&v8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "failed";
      if (a2)
      {
        v7 = "succeed";
      }

      v8 = 136315394;
      *v9 = v7;
      *&v9[8] = 2112;
      *&v9[10] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "resetProcessedEvent %s, err:%@", &v8, 0x16u);
    }
  }

  [*(a1 + 32) invalidate];
}

void sub_100188AA0(uint64_t a1)
{
  sub_100188898(a1);

  operator delete();
}

Class sub_100188AD8(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_101FBA038)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_100188D08;
    v7[4] = &unk_101E26008;
    v7[5] = v7;
    v8 = off_101E2DBD0;
    v9 = 0;
    qword_101FBA038 = _sl_dlopen();
  }

  if (!qword_101FBA038)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *LocalAuthenticationLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"SecureIntentLAContext.mm" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getLAContextClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"SecureIntentLAContext.mm" lineNumber:18 description:{@"Unable to find class %s", "LAContext"}];

LABEL_10:
    __break(1u);
  }

  qword_101FBA030 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100188D08()
{
  result = _sl_dlopen();
  qword_101FBA038 = result;
  return result;
}

void *sub_100188DD8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E2DBF8;
  a1[3] = off_101E2DB60;
  a1[4] = objc_alloc_init(sub_1001887B8());
  return a1;
}

void sub_100188E7C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2DBF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100188F04@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::defaultVinylCardTypeToGSMA(a1);
  *a2 = 0;
  a2[1] = 0;
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_10018900C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_10018904C(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void *sub_100189128(void *a1, NSObject **a2, uint64_t *a3, void *a4)
{
  ctu::OsLogContext::OsLogContext(&v16, kCtLoggingSystemName, "cp.sub.push");
  sub_1001892FC(a1 + 1, a2, &v16);
  ctu::OsLogContext::~OsLogContext(&v16);
  *a1 = off_101E2DCA8;
  v9 = *a3;
  v8 = a3[1];
  a1[6] = off_101E2DCE0;
  a1[7] = v9;
  a1[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  a1[9] = *a4;
  a1[10] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[11] = 0;
  a1[12] = 0;
  sub_10000501C(&__p, "CellularPlanSubscriptionPush");
  v11 = a1[3];
  v13 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::RestModule::RestModule();
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10018926C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
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

  v20 = v18[12];
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = v18[10];
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = v18[8];
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  TMKXPCServer.shutdown()();
  push::PushMessageListenerInterface::~PushMessageListenerInterface(v18);
  ctu::OsLogLogger::~OsLogLogger((v18 + 5));
  sub_1000C0544(v18 + 1);
  _Unwind_Resume(a1);
}

void *sub_1001892FC(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100189364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void *sub_100189388(void *a1)
{
  *a1 = off_101E2DCA8;
  a1[6] = off_101E2DCE0;
  v2 = a1[14];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  TMKXPCServer.shutdown()();
  push::PushMessageListenerInterface::~PushMessageListenerInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_100189444(void *a1)
{
  sub_100189388(a1);

  operator delete();
}

void sub_10018947C(uint64_t a1)
{
  sub_100189388((a1 - 48));

  operator delete();
}

void sub_1001894B8(uint64_t a1, const void **a2, const void **a3)
{
  sub_100004AA0(&v8, (a1 + 8));
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_10005C7A4(&v7, a2);
  sub_100010024(&v7 + 1, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  operator new();
}

void sub_10018962C(uint64_t a1, const void **a2, const void **a3)
{
  sub_100004AA0(&v8, (a1 + 8));
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_10002D728(&v7, a2);
  sub_10005C7A4(&v7 + 1, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  operator new();
}

void sub_100189824(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1001898F8);
  __cxa_rethrow();
}

void sub_100189864(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001898B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001898F8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100189924(uint64_t a1)
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

void sub_10018997C(uint64_t **a1)
{
  v1 = **a1;
  (***(v1 + 72))(buf);
  Registry::createRestModuleOneTimeUseConnection(&v16, *buf);
  ctu::RestModule::connect();
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CellularPlanSubscriptionPushObserver::initialize", buf, 2u);
  }

  pthread_mutex_lock(&stru_101FB18D0);
  v3 = off_101FB1910;
  if (!off_101FB1910)
  {
    sub_100BE5C08(buf);
  }

  v4 = *(&off_101FB1910 + 1);
  if (*(&off_101FB1910 + 1))
  {
    atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_101FB18D0);
  cf = @"com.apple.commcenter.sim-provisioning";
  CFRetain(@"com.apple.commcenter.sim-provisioning");
  v14 = @"com.apple.commcenter.sim-provisioning";
  if (@"com.apple.commcenter.sim-provisioning")
  {
    CFRetain(@"com.apple.commcenter.sim-provisioning");
  }

  sub_100004AA0(&v13, (v1 + 8));
  *buf = v13;
  v13 = 0uLL;
  sub_100BE6604(v3, &v14, buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v13 + 1))
  {
    sub_100004A34(*(&v13 + 1));
  }

  sub_100005978(&v14);
  v5 = *(v1 + 72);
  sub_100004AA0(&v9, (v1 + 8));
  if (v9)
  {
    v6 = v9 + 48;
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  v12 = v10;
  v9 = 0;
  v10 = 0;
  (*(*v5 + 608))(&v13, v5, &v11);
  v7 = v13;
  v13 = 0uLL;
  v8 = *(v1 + 96);
  *(v1 + 88) = v7;
  if (v8)
  {
    sub_100004A34(v8);
    if (*(&v13 + 1))
    {
      sub_100004A34(*(&v13 + 1));
    }
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_100005978(&cf);
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete();
}

uint64_t *sub_100189CD8(uint64_t *a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 8))
      {
LABEL_35:
        sub_100004A34(v5);
        goto LABEL_36;
      }

      v6 = *(v1 + 24);
      if (!v6 || !CFEqual(v6, @"com.apple.commcenter.sim-provisioning"))
      {
        memset(buf, 0, sizeof(buf));
        v28 = 0;
        ctu::cf::assign();
        *__p = 0u;
        v26 = 0;
        if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101762FE4();
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_35;
      }

      v24 = 0;
      ctu::ns::AutoPool::AutoPool(&v24);
      Value = CFDictionaryGetValue(*(v1 + 32), @"aps");
      v8 = Value;
      if (!Value || (v9 = CFGetTypeID(Value), v9 != CFDictionaryGetTypeID()))
      {
        v13 = *(v3 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E handlePushMessage: Malformed message", buf, 2u);
        }

        goto LABEL_34;
      }

      CFDictionaryGetValue(v8, @"alert");
      memset(buf, 0, sizeof(buf));
      v28 = 0;
      ctu::cf::assign();
      v26 = v28;
      *__p = *buf;
      v10 = HIBYTE(v28);
      v11 = SHIBYTE(v28);
      if ((v28 & 0x8000000000000000) != 0)
      {
        v10 = *&buf[8];
      }

      if (v10)
      {
        if (SHIBYTE(v28) < 0)
        {
          v12 = __p[0];
          if (*&buf[8] != 21)
          {
LABEL_33:
            operator delete(v12);
            goto LABEL_34;
          }
        }

        else
        {
          if (SHIBYTE(v28) != 21)
          {
            goto LABEL_34;
          }

          v12 = __p;
        }

        if (*v12 == 0x6176416B63656843 && v12[1] == 0x704F656C62616C69 && *(v12 + 13) == 0x736E6F6974704F65)
        {
          sub_10018A108();
          (*(**(v3 + 88) + 232))(*(v3 + 88));
          v18 = *(v3 + 64);
          if (v18)
          {
            v19 = std::__shared_weak_count::lock(v18);
            if (v19)
            {
              v20 = v19;
              v21 = *(v3 + 56);
              if (v21)
              {
                v29 = 0;
                (*(*v21 + 24))(v21, 1, 1, buf);
                sub_1000DEFB0(buf);
              }

              sub_100004A34(v20);
            }
          }
        }
      }

      else
      {
        v14 = *(v3 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E handlePushMessage: Missing 'alert'", buf, 2u);
        }
      }

      if (v11 < 0)
      {
        v12 = __p[0];
        goto LABEL_33;
      }

LABEL_34:
      ctu::ns::AutoPool::~AutoPool(&v24);
      goto LABEL_35;
    }
  }

LABEL_36:
  sub_10018A0A4(&v23);
  return sub_1000049E0(&v22);
}

void sub_10018A008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_1000DEFB0(&a19);
  sub_100004A34(v25);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  ctu::ns::AutoPool::~AutoPool(&a12);
  sub_100004A34(v24);
  sub_10018A0A4(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10018A0A4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10001021C((v1 + 32));
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

void sub_10018A108()
{
  sub_10000501C(&__p, "/cc/events/pending_install_plan_push_notification_received");
  object = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }
}

void sub_10018A178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10018A1A8(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
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
        v6 = *(v1 + 32);
        if (v6 && CFEqual(v6, @"com.apple.commcenter.sim-provisioning"))
        {
          if (*(v1 + 24))
          {
            v7 = *(v3 + 64);
            if (v7)
            {
              v8 = std::__shared_weak_count::lock(v7);
              if (v8)
              {
                v9 = v8;
                v10 = *(v3 + 56);
                if (v10)
                {
                  v21[0] = 0;
                  v21[1] = 0;
                  v22 = 0;
                  BytePtr = CFDataGetBytePtr(*(v1 + 24));
                  Length = CFDataGetLength(*(v1 + 24));
                  sub_10018A52C(v21, BytePtr, &BytePtr[Length], Length);
                  __p[0] = 0;
                  __p[1] = 0;
                  v20 = 0;
                  ctu::hex();
                  v13 = *(v3 + 40);
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    v14 = __p;
                    if (v20 < 0)
                    {
                      v14 = __p[0];
                    }

                    *buf = 136315138;
                    *&buf[4] = v14;
                    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I handleTokenUpdate: [%s]", buf, 0xCu);
                  }

                  if (SHIBYTE(v20) < 0)
                  {
                    sub_100005F2C(buf, __p[0], __p[1]);
                  }

                  else
                  {
                    *buf = *__p;
                    v24 = v20;
                  }

                  (*(*v10 + 16))(v10, buf);
                  if (SHIBYTE(v24) < 0)
                  {
                    operator delete(*buf);
                  }

                  if (SHIBYTE(v20) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (v21[0])
                  {
                    v21[1] = v21[0];
                    operator delete(v21[0]);
                  }
                }

                sub_100004A34(v9);
              }
            }
          }

          else
          {
            v15 = *(v3 + 40);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_10176305C(v15);
            }
          }
        }

        else
        {
          v21[0] = 0;
          v21[1] = 0;
          v22 = 0;
          ctu::cf::assign();
          *__p = 0u;
          v20 = 0;
          if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_1017630A0();
          }

          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10018A4C8(&v18);
  return sub_1000049E0(&v17);
}

void sub_10018A430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  sub_100004A34(v29);
  sub_100004A34(v28);
  sub_10018A4C8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10018A4C8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100005978((v1 + 32));
    sub_10002D760((v1 + 24));
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

void *sub_10018A52C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100034CCC(v6, v10);
    }

    sub_1000CE3D4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t sub_10018A65C()
{
  if ((byte_101FB1920 & 1) == 0)
  {
    byte_101FB1920 = 1;
    return __cxa_atexit(sub_1001897A0, &stru_101FB18D0, &_mh_execute_header);
  }

  return result;
}

void **sub_10018A698(void **a1)
{
  v3 = a1;
  sub_1000087B4(&v3);
  return a1;
}

uint64_t sub_10018A6D0(uint64_t a1, os_log_t *a2)
{
  v3 = sub_100A3652C(a1, a2);
  *v3 = &off_101E2DE48;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 168) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0;
  v4 = **(v3 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_101763120(v4);
  }

  return a1;
}

uint64_t sub_10018A758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A3659C(a1, a2);
  *v4 = &off_101E2DE48;
  *(v4 + 64) = 0u;
  *(v4 + 112) = 0u;
  v5 = (v4 + 112);
  v6 = (v4 + 88);
  *(v4 + 168) = 0;
  v7 = (v4 + 168);
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 56) = *(a2 + 56);
  std::string::operator=((v4 + 64), (a2 + 64));
  if (a1 != a2)
  {
    sub_100008234(v6, *(a2 + 88), *(a2 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  }

  std::string::operator=(v5, (a2 + 112));
  *(a1 + 160) = *(a2 + 160);
  std::string::operator=((a1 + 136), (a2 + 136));
  if (a1 != a2)
  {
    sub_100008234(v7, *(a2 + 168), *(a2 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 176) - *(a2 + 168)) >> 3));
  }

  if (os_log_type_enabled(**(a1 + 8), OS_LOG_TYPE_DEBUG))
  {
    v8 = (*(*a1 + 32))(a1);
    sub_1017631B8(v8, &v10);
  }

  return a1;
}

void sub_10018A964(uint64_t a1)
{
  *(a1 + 56) = 0;
  if (*(a1 + 87) < 0)
  {
    **(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 87) = 0;
  }

  sub_100008764((a1 + 88));
  if (*(a1 + 135) < 0)
  {
    **(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 135) = 0;
  }

  *(a1 + 160) = 0;
  if (*(a1 + 159) < 0)
  {
    **(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  else
  {
    *(a1 + 136) = 0;
    *(a1 + 159) = 0;
  }
}

BOOL sub_10018A9F4(uint64_t a1, std::string *a2)
{
  v4 = 0;
  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    v4 = sub_100A378A0(a2, v4, &__p, 44);
    if (v4 == -1)
    {
      break;
    }

    sub_100A37438(&__p, "\r\n\t ", 3);
    sub_100005308((a1 + 88), &__p);
  }

  v6 = *(a1 + 88);
  v5 = *(a1 + 96);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6 != v5;
}

void sub_10018AA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018AAB4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2 + *(*a2 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v4 + 36) = v6;
    v3 = *a2;
  }

  *(v4 + 36) = 48;
  *(a2 + *(v3 - 24) + 24) = 8;
  *(a2 + *(v3 - 24) + 8) = *(a2 + *(v3 - 24) + 8) & 0xFFFFFFB5 | 8;
  return std::ostream::operator<<();
}

uint64_t sub_10018ABF4(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__p = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  sub_10000D518(&v7);
  sub_10018AAB4(a1, &v7);
  sub_10000D684(&v7, &v5);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v5;
  *(a2 + 16) = v6;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v8);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10018AD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10018ADA8(uint64_t a1, uint64_t a2)
{
  sub_10000C030(a2);
  if (*(a1 + 96) != *(a1 + 88))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v5)
      {
        sub_10000C030(a2);
      }

      sub_10000C030(a2);
      ++v5;
      v4 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - *(a1 + 88)) >> 3));
  }

  sub_10000C030(a2);
  return 1;
}

uint64_t sub_10018AE94(uint64_t a1, void *a2, int a3)
{
  sub_100A36AD8(a1, a2);
  if (a3)
  {
    if ((*(a1 + 87) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 72))
      {
LABEL_19:
        if (*(a1 + 56))
        {
          v44 = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          sub_10000D518(&v28);
          sub_10018AAB4(a1, &v28);
          sub_10000D684(&v28, &__str);
          sub_10000501C(v25, "nc");
          *&v23 = v25;
          v12 = sub_10018D560(a2, v25);
          v13 = v12;
          if (*(v12 + 63) < 0)
          {
            operator delete(v12[5]);
          }

          *(v13 + 5) = __str;
          *(&__str.__r_.__value_.__s + 23) = 0;
          __str.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v26) < 0)
          {
            operator delete(v25[0]);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(*(&v32 + 1));
          }

          std::locale::~locale(&v29);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v14 = *(a1 + 135);
        if (v14 < 0)
        {
          v14 = *(a1 + 120);
        }

        if (v14)
        {
          *&v28 = &unk_1017D65C0;
          v15 = sub_10018D844(a2, &unk_1017D65C0);
          std::string::operator=((v15 + 5), (a1 + 112));
        }

        goto LABEL_32;
      }
    }

    else if (!*(a1 + 87))
    {
      goto LABEL_19;
    }

    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    sub_10000D518(&v28);
    v8 = sub_10000C030(&v28);
    v9 = sub_10000C030(v8);
    __str.__r_.__value_.__s.__data_[0] = 34;
    sub_10000C030(v9);
    sub_10000D684(&v28, &__str);
    sub_10000501C(v25, "uri");
    *&v23 = v25;
    v10 = sub_10018D560(a2, v25);
    v11 = v10;
    if (*(v10 + 63) < 0)
    {
      operator delete(v10[5]);
    }

    *(v11 + 5) = __str;
    *(&__str.__r_.__value_.__s + 23) = 0;
    __str.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(*(&v32 + 1));
    }

    std::locale::~locale(&v29);
    std::ostream::~ostream();
    std::ios::~ios();
    goto LABEL_19;
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  sub_10000D518(&v28);
  sub_10018ADA8(a1, &v28);
  sub_10000D684(&v28, &__str);
  v25[0] = &unk_1017D65C0;
  v6 = sub_10018D844(a2, &unk_1017D65C0);
  v7 = v6;
  if (*(v6 + 63) < 0)
  {
    operator delete(v6[5]);
  }

  *(v7 + 5) = __str;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(*(&v32 + 1));
  }

  std::locale::~locale(&v29);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_32:
  memset(&__str, 0, sizeof(__str));
  (*(*a1 + 112))(a1, &__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *&v28 = "algorithm";
    v17 = sub_10018D844(a2, "algorithm");
    std::string::operator=((v17 + 5), &__str);
  }

  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  if ((*(*a1 + 80))(a1))
  {
    (*(*a1 + 96))(a1, v25);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  sub_10000D518(&v28);
  v18 = sub_10000C030(&v28);
  v19 = sub_10000C030(v18);
  LOBYTE(v23) = 34;
  sub_10000C030(v19);
  sub_10000D684(&v28, &v23);
  v45 = "nonce";
  v20 = sub_10018D844(a2, "nonce");
  v21 = v20;
  if (*(v20 + 63) < 0)
  {
    operator delete(v20[5]);
  }

  *(v21 + 5) = v23;
  v21[7] = v24;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(*(&v32 + 1));
  }

  std::locale::~locale(&v29);
  std::ostream::~ostream();
  std::ios::~ios();
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_10018B744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_100D50834(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_10018B808(_DWORD *a1, const void **a2, std::string *__str)
{
  if (*(a2 + 23) < 0)
  {
    if (a2[1] == 2 && **a2 == 25454)
    {
      goto LABEL_38;
    }

    if (a2[1] == 3 && **a2 == 29301 && *(*a2 + 2) == 105)
    {
      goto LABEL_50;
    }

    if (a2[1] == 3 && **a2 == 28529 && *(*a2 + 2) == 112)
    {
LABEL_51:
      sub_10018A9F4(a1, __str);
      if (std::string::find(__str, 44, 0) != -1)
      {
        return 1;
      }

      v16 = (a1 + 28);
LABEL_53:
      std::string::operator=(v16, __str);
      return 1;
    }

    v10 = a2[1];
    if (v10 == 9)
    {
      v12 = *a2;
LABEL_56:
      v18 = *v12;
      v19 = v12[8];
      if (v18 != 0x687469726F676C61 || v19 != 109)
      {
        goto LABEL_60;
      }

      v15 = *(*a1 + 104);

      return v15();
    }

    if (v10 != 5)
    {
      goto LABEL_60;
    }

    if (**a2 != 1668181870 || *(*a2 + 4) != 101)
    {
      goto LABEL_60;
    }

LABEL_47:
    v15 = *(*a1 + 88);

    return v15();
  }

  v5 = *(a2 + 23);
  if (v5 > 4)
  {
    if (v5 != 5)
    {
      v12 = a2;
      if (v5 != 9)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    if (*a2 != 1668181870 || *(a2 + 4) != 101)
    {
      goto LABEL_60;
    }

    goto LABEL_47;
  }

  if (v5 == 2)
  {
    if (*a2 != 25454)
    {
      goto LABEL_60;
    }

LABEL_38:
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = __str;
    }

    else
    {
      v13 = __str->__r_.__value_.__r.__words[0];
    }

    a1[14] = strtoul(v13, 0, 16);
    return 1;
  }

  if (v5 == 3)
  {
    if (*a2 != 29301 || *(a2 + 2) != 105)
    {
      if (*a2 != 28529 || *(a2 + 2) != 112)
      {
        goto LABEL_60;
      }

      goto LABEL_51;
    }

LABEL_50:
    v16 = (a1 + 16);
    goto LABEL_53;
  }

LABEL_60:

  return sub_100A36FF0(a1, a2, __str);
}

void sub_10018BAC4(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X8>)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v53 = 0;
  v10 = sub_100A3774C(a1);
  if (*(v10 + 23) < 0)
  {
    sub_100005F2C(__dst, *v10, v10[1]);
  }

  else
  {
    v11 = *v10;
    v53 = v10[2];
    *__dst = v11;
  }

  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v12 = sub_100A377B0(a1);
  if (*(v12 + 23) < 0)
  {
    sub_100005F2C(v50, *v12, v12[1]);
  }

  else
  {
    v13 = *v12;
    v51 = v12[2];
    *v50 = v13;
  }

  __p = 0;
  v48 = 0;
  v49 = 0;
  v14 = HIBYTE(v53);
  v15 = HIBYTE(v53);
  v16 = __dst[1];
  if (SHIBYTE(v53) >= 0)
  {
    v17 = HIBYTE(v53);
  }

  else
  {
    v17 = __dst[1];
  }

  v18 = HIBYTE(v51);
  if (SHIBYTE(v51) < 0)
  {
    v18 = v50[1];
  }

  v19 = &v17[a4 + v18];
  if (v19 == -2)
  {
    v20 = 0;
  }

  else
  {
    sub_10018D3CC(&__p, (v19 + 2));
    v14 = HIBYTE(v53);
    v16 = __dst[1];
    v20 = __p;
    v15 = HIBYTE(v53);
  }

  if (v15 >= 0)
  {
    v21 = v14;
  }

  else
  {
    v21 = v16;
  }

  if (v21)
  {
    if (v15 >= 0)
    {
      v22 = __dst;
    }

    else
    {
      v22 = __dst[0];
    }

    memmove(v20, v22, v21);
    v14 = HIBYTE(v53);
    v16 = __dst[1];
    v20 = __p;
    v15 = HIBYTE(v53);
  }

  if (v15 < 0)
  {
    v14 = v16;
  }

  v23 = v14 + 1;
  *(v20 + v14) = 58;
  v24 = HIBYTE(v51);
  v25 = HIBYTE(v51);
  v26 = v50[1];
  if (SHIBYTE(v51) >= 0)
  {
    v27 = HIBYTE(v51);
  }

  else
  {
    v27 = v50[1];
  }

  v28 = __p;
  if (v27)
  {
    if (SHIBYTE(v51) >= 0)
    {
      v29 = v50;
    }

    else
    {
      v29 = v50[0];
    }

    memmove(__p + v23, v29, v27);
    v24 = HIBYTE(v51);
    v26 = v50[1];
    v28 = __p;
    v25 = HIBYTE(v51);
  }

  if (v25 < 0)
  {
    v24 = v26;
  }

  v30 = &v24[v23];
  v30[v28] = 58;
  if (a4)
  {
    memmove(__p + v30 + 1, a3, a4);
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  sub_1004C7CA0(a2, &__p, a5);
  v31 = *a1[1];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v44 = ((*a1)[4])(a1);
    v32 = SHIBYTE(v53);
    v33 = __dst[0];
    v34 = SHIBYTE(v51);
    v35 = v50[0];
    ctu::hex(v45, a3, a4, v36);
    v37 = v50;
    if (v34 < 0)
    {
      v37 = v35;
    }

    v38 = __dst;
    if (v32 < 0)
    {
      v38 = v33;
    }

    v39 = v45[0];
    if (v46 >= 0)
    {
      v39 = v45;
    }

    if (*(a5 + 23) >= 0)
    {
      v40 = a5;
    }

    else
    {
      v40 = *a5;
    }

    *buf = 136316418;
    v55 = v44;
    v56 = 2080;
    v57 = ", ";
    v58 = 2080;
    v59 = v38;
    v60 = 2080;
    v61 = v37;
    v62 = 2080;
    v63 = v39;
    v64 = 2080;
    v65 = v40;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "#D %s%scomputeHashOfA1, username:'%s', realm:'%s', passwd:0x%s -> %s", buf, 0x3Eu);
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    v31 = *a1[1];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v41 = ((*a1)[4])(a1);
    ctu::hex();
    v42 = v46 >= 0 ? v45 : v45[0];
    v43 = *(a5 + 23) >= 0 ? a5 : *a5;
    *buf = 136315906;
    v55 = v41;
    v56 = 2080;
    v57 = ", ";
    v58 = 2080;
    v59 = v42;
    v60 = 2080;
    v61 = v43;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "#D %s%scomputeHashOfA1, in:0x%s -> %s", buf, 0x2Au);
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }
  }

  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(__dst[0]);
  }
}

uint64_t sub_10018BF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__p = 0u;
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  sub_10000D518(&v19);
  v8 = sub_10000C030(&v19);
  buf[0] = 58;
  v9 = sub_10000C030(v8);
  sub_10000C030(v9);
  v10 = (a1 + 112);
  v11 = *(a1 + 135);
  if (v11 < 0)
  {
    if (*(a1 + 120) != 8)
    {
      goto LABEL_9;
    }

    v10 = *v10;
  }

  else if (v11 != 8)
  {
    goto LABEL_9;
  }

  if (*v10 == 0x746E692D68747561)
  {
    buf[0] = 58;
    sub_10000C030(&v19);
    memset(buf, 0, sizeof(buf));
    sub_1004C7CD4(a2, a3, buf);
    sub_10000C030(&v19);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_9:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_10000D684(&v19, buf);
  sub_1004C7CD4(a2, buf, a4);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v12 = **(a1 + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = (*(*a1 + 32))(a1);
    sub_10000D684(&v19, v17);
    v15 = v18 >= 0 ? v17 : v17[0];
    v16 = *(a4 + 23) >= 0 ? a4 : *a4;
    *buf = 136315906;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = ", ";
    *&buf[22] = 2080;
    v35 = v15;
    v36 = 2080;
    v37 = v16;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "#D %s%scomputeHashOfA2, in:'%s' -> %s", buf, 0x2Au);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10018C350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
  }

  sub_100D50834(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10018C3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  sub_10000D518(&v28);
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  (*(*a1 + 96))(a1, v26);
  v6 = sub_10000C030(&v28);
  buf[0] = 58;
  v7 = sub_10000C030(v6);
  v8 = sub_10000C030(v7);
  buf[0] = 58;
  sub_10000C030(v8);
  v9 = (a1 + 112);
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
    if (*(a1 + 135) == 4)
    {
      if (*v9 != 1752462689)
      {
        goto LABEL_24;
      }

      goto LABEL_12;
    }

    v10 = (a1 + 112);
    if (*(a1 + 135) != 8)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  if (*(a1 + 120) != 4 || **v9 != 1752462689)
  {
    if (*(a1 + 120) != 8)
    {
      goto LABEL_24;
    }

    v10 = *v9;
LABEL_9:
    if (*v10 != 0x746E692D68747561)
    {
      goto LABEL_24;
    }
  }

LABEL_12:
  ++*(a1 + 56);
  memset(buf, 0, sizeof(buf));
  sub_10018ABF4(a1, buf);
  v11 = sub_10000C030(&v28);
  sub_10000C030(v11);
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  v12 = sub_100A37094(a1, "cnonce");
  if (*(v12 + 23) < 0)
  {
    sub_100005F2C(__p, *v12, v12[1]);
  }

  else
  {
    v13 = *v12;
    v25 = v12[2];
    *__p = v13;
  }

  if (SHIBYTE(v25) >= 0)
  {
    v14 = HIBYTE(v25);
  }

  else
  {
    v14 = __p[1];
  }

  if (!v14)
  {
    v23[0] = 0;
    v23[1] = 0;
    sub_100A37814(v23);
  }

  v15 = sub_10000C030(&v28);
  v16 = sub_10000C030(v15);
  v17 = sub_10000C030(v16);
  sub_10000C030(v17);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

LABEL_24:
  sub_10000C030(&v28);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_10000D684(&v28, buf);
  sub_1004C7CD4(a2, buf, a3);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v18 = **(a1 + 8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = (*(*a1 + 32))(a1);
    sub_10000D684(&v28, __p);
    v21 = SHIBYTE(v25) >= 0 ? __p : __p[0];
    v22 = *(a3 + 23) >= 0 ? a3 : *a3;
    *buf = 136315906;
    *&buf[4] = v20;
    *&buf[12] = 2080;
    *&buf[14] = ", ";
    *&buf[22] = 2080;
    v44 = v21;
    v45 = 2080;
    v46 = v22;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#D %s%scomputeResponseFromA1AndA2, in:%s -> %s", buf, 0x2Au);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(*(&v30 + 1));
  }

  std::locale::~locale(v29);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10018C968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  sub_10018D504(&a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 105) < 0)
  {
    operator delete(*(v27 - 128));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_100D50834(&a27);
  _Unwind_Resume(a1);
}

void sub_10018CA14(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, ctu *a5, const void *a6)
{
  memset(&__dst, 0, sizeof(__dst));
  if (*(a1 + 159) < 0)
  {
    sub_100005F2C(&__dst, *(a1 + 136), *(a1 + 144));
  }

  else
  {
    __dst = *(a1 + 136);
  }

  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::operator=(&__dst, "MD5");
  }

  v13 = *(a1 + 8);
  v14 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
  {
    v27 = (*(*a1 + 32))(a1);
    v25 = *(a2 + 23);
    v26 = *a2;
    v23 = *(a3 + 23);
    v24 = *a3;
    v15 = *(a4 + 23);
    v16 = *a4;
    ctu::hex(buf, a5, a6, v17);
    if (v15 >= 0)
    {
      v18 = a4;
    }

    else
    {
      v18 = v16;
    }

    v19 = *buf;
    v20 = v24;
    if (v23 >= 0)
    {
      v20 = a3;
    }

    v21 = v26;
    if (v25 >= 0)
    {
      v21 = a2;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
    if (v30 >= 0)
    {
      v19 = buf;
    }

    *v31 = 136316930;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    *&v31[4] = v27;
    *&v31[12] = 2080;
    *&v31[14] = ", ";
    *&v31[22] = 2080;
    *&v31[24] = v21;
    *v32 = 2080;
    *&v32[2] = v20;
    *&v32[10] = 2080;
    *&v32[12] = v18;
    v33 = 2080;
    v34 = v19;
    v35 = 2048;
    v36 = a6;
    v37 = 2080;
    v38 = p_dst;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#D %s%scomputeResponse, '%s', '%s', '%s', 0x%s, passwdlen: %zu, %s", v31, 0x52u);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }

    v13 = *(a1 + 8);
  }

  *v32 = 0u;
  memset(v31, 0, sizeof(v31));
  sub_1004C8AA0(v31, v13);
}

void sub_10018D0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_1004C8B14(v37 - 192);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

std::string *sub_10018D160(std::string *result)
{
  v1 = result;
  if (result[7].__r_.__value_.__r.__words[0] == result[7].__r_.__value_.__l.__size_)
  {
    v2 = &qword_101FBA040;
  }

  else
  {
    v2 = &result[7];
  }

  v3 = (result + 112);
  if (result[5].__r_.__value_.__s.__data_[15] < 0)
  {
    result[5].__r_.__value_.__r.__words[0] = 0;
    v4 = result[4].__r_.__value_.__r.__words[2];
  }

  else
  {
    result[5].__r_.__value_.__s.__data_[15] = 0;
    v4 = &result[4].__r_.__value_.__s.__data_[16];
  }

  *v4 = 0;
  v5 = *v2;
  v6 = v2[1] - *v2;
  if (v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    while (1)
    {
      result = sub_10018D23C(v1, &v5->__r_.__value_.__l.__data_);
      if (result)
      {
        break;
      }

      ++v5;
      if (!--v8)
      {
        return result;
      }
    }

    return std::string::operator=(v3, v5);
  }

  return result;
}

BOOL sub_10018D23C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96) - v2;
  if (v3)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v4 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }

    v9 = 1;
    v10 = 1;
    do
    {
      v11 = *(v2 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v2 + 8);
      }

      if (v11 == v6)
      {
        v13 = v12 >= 0 ? v2 : *v2;
        if (!memcmp(v13, v7, v6))
        {
          break;
        }
      }

      v10 = v9++ < v4;
      v2 += 24;
      --v8;
    }

    while (v8);
  }

  else
  {
    return 0;
  }

  return v10;
}

uint64_t sub_10018D34C(uint64_t a1)
{
  sub_10018D388(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10018D388(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1000DD108((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10018D3CC(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_1000CE3D4();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_10018D504(void *result)
{
  if (result[1])
  {
    operator delete();
  }

  if (*result)
  {
    operator delete();
  }

  return result;
}

const void **sub_10018D560(void *a1, const void **a2)
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

void sub_10018D7E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10018D7F8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10018D7F8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000DD108(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_10018D844(void *a1, const void **a2)
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
    sub_10018DAC4();
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

void sub_10018DAB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10018D7F8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10018DB78()
{
  sub_10000501C(v2, "auth");
  sub_10000501C(v3, "auth-int");
  qword_101FBA040 = 0;
  *algn_101FBA048 = 0;
  qword_101FBA050 = 0;
  sub_10016FB64(&qword_101FBA040, v2, &v4, 2uLL);
  for (i = 0; i != -48; i -= 24)
  {
    if (v3[i + 23] < 0)
    {
      operator delete(*&v2[i + 24]);
    }
  }

  return __cxa_atexit(sub_10018A698, &qword_101FBA040, &_mh_execute_header);
}

void sub_10018DC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = &a21;
  v23 = -48;
  v24 = &a21;
  while (1)
  {
    v25 = *v24;
    v24 -= 24;
    if (v25 < 0)
    {
      operator delete(*(v22 - 23));
    }

    v22 = v24;
    v23 += 24;
    if (!v23)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_10018DE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17)
  {
    sub_100004A34(v17);
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  dispatch_release(v16);
LABEL_3:
  operator delete();
}

uint64_t sub_10018DE8C(uint64_t a1, NSObject **a2, void *a3, uint64_t *a4, __int128 *a5, uint64_t *a6, void *a7)
{
  v13 = *a2;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = a4[1];
  v26 = *a4;
  v27 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = 0;
  LOBYTE(__p) = 0;
  sub_10031435C(a1, &object, a3, &v26, "cp.mm.r.dp", &__p);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E2DEF0;
  *(a1 + 160) = *a4;
  v15 = a4[1];
  *(a1 + 168) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = *a7;
  v16 = a7[1];
  *(a1 + 184) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 216), *a5, *(a5 + 1));
  }

  else
  {
    v17 = *a5;
    *(a1 + 232) = *(a5 + 2);
    *(a1 + 216) = v17;
  }

  *(a1 + 240) = 1;
  v18 = *a6;
  v19 = a6[1];
  if (*a6 != v19)
  {
    do
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      memset(v43, 0, sizeof(v43));
      sub_100F11B6C(v43, v18);
      if (v47)
      {
        v20 = *(&v45 + 1);
        v21 = v46;
        if (*(&v45 + 1) == v46)
        {
          goto LABEL_27;
        }

        do
        {
          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
          sub_100F11F00(&v29, v20);
          v22 = BYTE7(v31);
          if (SBYTE7(v31) < 0)
          {
            v22 = *(&v30 + 1);
          }

          if (v22)
          {
            sub_100005BA0(a1 + 192, &v30);
          }

          sub_100E3A5D4(&v29);
          v20 += 216;
        }

        while (v20 != v21);
        if (v47)
        {
LABEL_27:
          *&v29 = &v45 + 8;
          sub_100112120(&v29);
        }
      }

      if (SBYTE7(v45) < 0)
      {
        operator delete(v44);
      }

      v18 += 88;
    }

    while (v18 != v19);
  }

  return a1;
}

void sub_10018E118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, dispatch_object_t object, char a18)
{
  sub_100009970(v19, *(v18 + 200));
  v21 = *(v18 + 184);
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = *(v18 + 168);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  sub_10031452C(v18);
  _Unwind_Resume(a1);
}

CellularPlanProvisioningMonitorModeInterface *sub_10018E1B8(uint64_t a1)
{
  *a1 = off_101E2DEF0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  sub_100009970(a1 + 192, *(a1 + 200));
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return sub_10031452C(a1);
}

void sub_10018E240(uint64_t a1)
{
  sub_10018E1B8(a1);

  operator delete();
}

void sub_10018E278(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    *(a1 + 240) = 0;

    sub_100314A14(a1, 0x100u);
    return;
  }

  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 160);
      if (v4)
      {
        (*(*v4 + 32))(v4, a1);
        sub_100314A14(a1, 0x100u);
LABEL_13:
        sub_100004A34(v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_101763394(v5);
  }

  if (v3)
  {
    goto LABEL_13;
  }
}

void sub_10018E368(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handling vinyl info update in monitor mode. Checking for carrier:%s", buf, 0xCu);
    v4 = *(a1 + 40);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100074B94(*(a1 + 192), (a1 + 200), ",", 1, buf);
    v6 = (SBYTE7(v30) & 0x80u) == 0 ? buf : *buf;
    LODWORD(v43[0]) = 136315138;
    *(v43 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I cached iccids: [%s]\n", v43, 0xCu);
    if (SBYTE7(v30) < 0)
    {
      operator delete(*buf);
    }
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = (a1 + 216);
    do
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      memset(v43, 0, sizeof(v43));
      sub_100F11B6C(v43, v7);
      if (v47 == 1)
      {
        v11 = *(&v45 + 1);
        v10 = v46;
        if (*(&v45 + 1) == v46)
        {
          goto LABEL_44;
        }

        do
        {
          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          *buf = 0u;
          sub_100F11F00(buf, v11);
          v12 = BYTE7(v31);
          if (SBYTE7(v31) < 0)
          {
            v12 = *(&v30 + 1);
          }

          if (v12 && !sub_10016FA58(a1 + 192, &v30))
          {
            __p = 0;
            v23 = 0;
            v24 = 0;
            (*(**(a1 + 176) + 160))(&__p);
            if (v24 >= 0)
            {
              v13 = HIBYTE(v24);
            }

            else
            {
              v13 = v23;
            }

            v14 = *(a1 + 239);
            v15 = v14;
            if ((v14 & 0x80u) != 0)
            {
              v14 = *(a1 + 224);
            }

            if (v13 == v14 && (v24 >= 0 ? (p_p = &__p) : (p_p = __p), v15 >= 0 ? (v17 = v9) : (v17 = *v9), !memcmp(p_p, v17, v13)))
            {
              v18 = v8;
              v19 = *(a1 + 40);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                if ((SBYTE7(v31) & 0x80u) == 0)
                {
                  v20 = &v30;
                }

                else
                {
                  v20 = v30;
                }

                *v25 = 136315394;
                v26 = v17;
                v27 = 2080;
                v28 = v20;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I carrier name: %s matched for new iccid:%s", v25, 0x16u);
              }

              v21 = v21 & 0xFFFFFFFFFFFF0000 | 0x101;
              (*(*a1 + 40))(a1);
              v8 = v18;
              v9 = (a1 + 216);
            }

            else
            {
              sub_100005BA0(a1 + 192, &v30);
            }

            if (SHIBYTE(v24) < 0)
            {
              operator delete(__p);
            }
          }

          sub_100E3A5D4(buf);
          v11 += 216;
        }

        while (v11 != v10);
        if (v47)
        {
LABEL_44:
          *buf = &v45 + 8;
          sub_100112120(buf);
        }
      }

      if (SBYTE7(v45) < 0)
      {
        operator delete(v44);
      }

      v7 += 88;
    }

    while (v7 != v8);
  }
}

void sub_10018E740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100E3A5D4(&a24);
  sub_100F01778(v24 - 192);
  _Unwind_Resume(a1);
}

void sub_10018E810(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10018E8E4);
  __cxa_rethrow();
}

void sub_10018E850(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10018E8A4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018E8E4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10018E918@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*(*result + 1112))
  {
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    if (*(v3 + 255) < 0)
    {
      sub_100005F2C(a2, *(v3 + 232), *(v3 + 240));
    }

    else
    {
      v5 = *(v3 + 232);
      *(a2 + 16) = *(v3 + 248);
      *a2 = v5;
    }

    sub_10018F784(a2 + 24, v3 + 256);
    result = sub_100190324(a2 + 56, v3 + 288);
    v4 = 1;
  }

  *(a2 + 88) = v4;
  return result;
}

void sub_10018E9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 48) == 1)
  {
    sub_10019029C(&a10);
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018E9E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*(*result + 1112) == 1)
  {
    sub_1000D4128(a2, v3 + 232);
    if (*(v3 + 583) < 0)
    {
      sub_100005F2C((a2 + 328), *(v3 + 560), *(v3 + 568));
    }

    else
    {
      v4 = *(v3 + 560);
      *(a2 + 344) = *(v3 + 576);
      *(a2 + 328) = v4;
    }

    result = sub_100190324(a2 + 352, v3 + 584);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 384) = v5;
  return result;
}

_BYTE *sub_10018EAAC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  if (*(*result + 1112) == 4)
  {
    result = sub_10019068C(a2, *result + 232);
    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a2 = 0;
  }

  a2[584] = v3;
  return result;
}

uint64_t sub_10018EAFC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 1112) == 5)
  {
    sub_1000D4128(a2, v3 + 232);
    sub_1001907C0(a2 + 328, v3 + 560);
    sub_100190C40((a2 + 552), v3 + 784);
    sub_100190324((a2 + 816), v3 + 1048);
    result = sub_100190324((a2 + 848), v3 + 1080);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  a2[880] = v4;
  return result;
}

void sub_10018EB7C(_Unwind_Exception *a1)
{
  sub_10019075C(v1 + 328);
  sub_1000D45B0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018EBCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*(*result + 1112) == 2)
  {
    *a2 = *(v3 + 232);
    sub_10006F264(a2 + 16, (v3 + 248));
    sub_10018F784(a2 + 48, v3 + 280);
    result = sub_100190324(a2 + 80, v3 + 312);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 112) = v4;
  return result;
}

void sub_10018EC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 72) == 1)
  {
    sub_10019029C(&a10);
  }

  if (*(v10 + 40) == 1 && *(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018EC98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*(*result + 1112) == 3)
  {
    sub_1000D4128(a2, v3 + 232);
    *(a2 + 328) = *(v3 + 560);
    result = sub_100190324(a2 + 344, v3 + 576);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 376) = v4;
  return result;
}

uint64_t sub_10018ED14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*(*result + 1112) == 6)
  {
    *a2 = *(v3 + 232);
    sub_100190E64(a2 + 16, (v3 + 248));
    sub_100190EB4((a2 + 48), v3 + 280);
    sub_1001910E4(a2 + 232, v3 + 29);
    sub_100191134(a2 + 264, v3 + 31);
    sub_10018F784(a2 + 296, (v3 + 33));
    result = sub_10018F784(a2 + 328, (v3 + 35));
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 360) = v4;
  return result;
}

uint64_t sub_10018EE38@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*(*result + 1112) == 7)
  {
    v4 = *(v3 + 232);
    *(a2 + 16) = *(v3 + 248);
    *a2 = v4;
    sub_100190E64(a2 + 24, (v3 + 256));
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    sub_100191370(a2 + 56, *(v3 + 288), *(v3 + 296), 0xAF8AF8AF8AF8AF8BLL * ((*(v3 + 296) - *(v3 + 288)) >> 3));
    result = sub_10018F784(a2 + 80, v3 + 312);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 112) = v5;
  return result;
}

void sub_10018EEE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001915C8(va);
  if (*(v2 + 48) == 1 && *(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10018EF24@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && !*(v3 + 216))
  {
    *a2 = *v3;
    if (*(v3 + 31) < 0)
    {
      sub_100005F2C((a2 + 8), *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v5 = *(v3 + 8);
      *(a2 + 24) = *(v3 + 24);
      *(a2 + 8) = v5;
    }

    sub_100190010(a2 + 32, (v3 + 32));
    result = sub_100190060(a2 + 72, v3 + 72);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 216) = v4;
  return result;
}

__int128 **sub_10018EFE8@<X0>(__int128 **result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && *(v3 + 54) == 1)
  {
    if (*(v3 + 23) < 0)
    {
      sub_100005F2C(a2, *v3, *(v3 + 1));
    }

    else
    {
      v4 = *v3;
      *(a2 + 16) = *(v3 + 2);
      *a2 = v4;
    }

    result = sub_100190010(a2 + 24, (v3 + 24));
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 56) = v5;
  return result;
}

void sub_10018F064(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10018F080@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && !*(v3 + 144))
  {
    *a2 = *(v3 + 8);
    if (*(v3 + 39) < 0)
    {
      result = sub_100005F2C((a2 + 8), *(v3 + 16), *(v3 + 24));
    }

    else
    {
      v5 = *(v3 + 16);
      *(a2 + 24) = *(v3 + 32);
      *(a2 + 8) = v5;
    }

    if (*(v3 + 63) < 0)
    {
      result = sub_100005F2C((a2 + 32), *(v3 + 40), *(v3 + 48));
    }

    else
    {
      v6 = *(v3 + 40);
      *(a2 + 48) = *(v3 + 56);
      *(a2 + 32) = v6;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 56) = v4;
  return result;
}

void sub_10018F128(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10018F144@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && *(v3 + 144) == 1)
  {
    if (*(v3 + 31) < 0)
    {
      result = sub_100005F2C(a2, *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v4 = *(v3 + 8);
      *(a2 + 16) = *(v3 + 24);
      *a2 = v4;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v5;
  return result;
}

uint64_t *sub_10018F1B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && *(v3 + 144) == 2)
  {
    if (*(v3 + 31) < 0)
    {
      result = sub_100005F2C(a2, *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v4 = *(v3 + 8);
      *(a2 + 16) = *(v3 + 24);
      *a2 = v4;
    }

    if (*(v3 + 55) < 0)
    {
      result = sub_100005F2C((a2 + 24), *(v3 + 32), *(v3 + 40));
    }

    else
    {
      v6 = *(v3 + 32);
      *(a2 + 40) = *(v3 + 48);
      *(a2 + 24) = v6;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 48) = v5;
  return result;
}

void sub_10018F24C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10018F268@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && *(v3 + 144) == 3)
  {
    if (*(v3 + 31) < 0)
    {
      result = sub_100005F2C(a2, *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v4 = *(v3 + 8);
      *(a2 + 16) = *(v3 + 24);
      *a2 = v4;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v5;
  return result;
}

uint64_t *sub_10018F2D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && *(v3 + 144) == 4)
  {
    if (*(v3 + 31) < 0)
    {
      result = sub_100005F2C(a2, *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v4 = *(v3 + 8);
      *(a2 + 16) = *(v3 + 24);
      *a2 = v4;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v5;
  return result;
}

uint64_t *sub_10018F348@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && *(v3 + 144) == 5)
  {
    v4 = *(v3 + 8);
    *(a2 + 16) = *(v3 + 24);
    *a2 = v4;
    sub_10019010C((a2 + 24), v3 + 32);
    sub_10006F264(a2 + 64, (v3 + 72));
    result = sub_10006F264(a2 + 96, (v3 + 104));
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 128) = v5;
  return result;
}

void sub_10018F3C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018F41C(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  if (*(v1 + 144) != 6)
  {
    LODWORD(v1) = 0;
LABEL_5:
    v2 = 0;
    return v2 | (v1 << 8);
  }

  v2 = *(v1 + 8);
  LODWORD(v1) = 1;
  return v2 | (v1 << 8);
}

char *sub_10018F44C@<X0>(char *result@<X0>, char *a2@<X8>)
{
  v3 = *result;
  if (*result && *(v3 + 144) == 7)
  {
    result = sub_100190174(a2, (v3 + 8));
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  a2[136] = v4;
  return result;
}

uint64_t *sub_10018F4A0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && *(v3 + 144) == 10)
  {
    if (*(v3 + 31) < 0)
    {
      sub_100005F2C(a2, *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v4 = *(v3 + 8);
      *(a2 + 16) = *(v3 + 24);
      *a2 = v4;
    }

    result = sub_10006F264(a2 + 24, (v3 + 32));
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 56) = v5;
  return result;
}

void sub_10018F51C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10018F538(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  if (*(v1 + 144) != 11)
  {
    LODWORD(v1) = 0;
LABEL_5:
    v2 = 0;
    v3 = 0;
    return v3 | v2 | v1;
  }

  LODWORD(v1) = *(v1 + 8);
  v2 = v1 & 0xFFFFFF00;
  LODWORD(v1) = v1;
  v3 = &_mh_execute_header;
  return v3 | v2 | v1;
}

unint64_t sub_10018F578(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  if (*(v1 + 144) != 12)
  {
    LODWORD(v1) = 0;
LABEL_5:
    v2 = 0;
    v3 = 0;
    return v3 | v2 | v1;
  }

  LODWORD(v1) = *(v1 + 8);
  v2 = v1 & 0xFFFFFF00;
  LODWORD(v1) = v1;
  v3 = &_mh_execute_header;
  return v3 | v2 | v1;
}

_DWORD **sub_10018F5B8@<X0>(_DWORD **result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && !v3[58])
  {
    *a2 = *v3;
    result = sub_10018FA1C(a2 + 8, (v3 + 2));
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 232) = v4;
  return result;
}

__int128 **sub_10018F60C@<X0>(__int128 **result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && *(v3 + 58) == 1)
  {
    if (*(v3 + 23) < 0)
    {
      sub_100005F2C(a2, *v3, *(v3 + 1));
    }

    else
    {
      v4 = *v3;
      *(a2 + 16) = *(v3 + 2);
      *a2 = v4;
    }

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = sub_10019164C(a2 + 24, *(v3 + 3), *(v3 + 4), 0xEF7BDEF7BDEF7BDFLL * ((*(v3 + 4) - *(v3 + 3)) >> 3));
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 48) = v5;
  return result;
}

void sub_10018F6AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 **sub_10018F6C8@<X0>(__int128 **result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result && *(v3 + 58) == 1)
  {
    if (*(v3 + 23) < 0)
    {
      sub_100005F2C(a2, *v3, *(v3 + 1));
    }

    else
    {
      v4 = *v3;
      *(a2 + 16) = *(v3 + 2);
      *a2 = v4;
    }

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = sub_1001919FC(a2 + 24, *(v3 + 3), *(v3 + 4), 0x34F72C234F72C235 * ((*(v3 + 4) - *(v3 + 3)) >> 3));
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 48) = v5;
  return result;
}

void sub_10018F768(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018F784(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10018F7E0(a1, a2);
  return a1;
}

void sub_10018F7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_10019029C(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10018F7E0(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_10018F848(result, *a2, *(a2 + 8), 0x34F72C234F72C235 * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_10018F848(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10018F8D0(result, a4);
  }

  return result;
}

void sub_10018F8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10019029C(&a9);
  _Unwind_Resume(a1);
}

void sub_10018F8D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    sub_10018F920(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_10018F920(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10018F97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      sub_10018FA1C(a4 + v7 + 8, a2 + v7 + 8);
      v7 += 232;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_10018F9F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 224;
    do
    {
      sub_10018FAC8(v5);
      v5 -= 232;
      v4 += 232;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018FA1C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = -1;
  sub_10018FA64(a1, a2);
  return a1;
}

uint64_t sub_10018FA64(uint64_t a1, uint64_t a2)
{
  result = sub_10018FAC8(a1);
  v5 = *(a2 + 216);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E2E050[v5])(&v6, a2);
    *(a1 + 216) = v5;
  }

  return result;
}

uint64_t sub_10018FAC8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 216);
  if (v2 != -1)
  {
    result = (off_101E2DFD8[v2])(&v3, result);
  }

  *(v1 + 216) = -1;
  return result;
}

void sub_10018FB20(uint64_t a1, uint64_t a2)
{
  sub_10018FBF0(a2 + 72);
  if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_10018FB8C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10018FBF0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 136);
  if (v2 != -1)
  {
    result = (off_101E2DFE8[v2])(&v3, result);
  }

  *(v1 + 136) = -1;
  return result;
}

void sub_10018FC48(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_10018FCA0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_10018FCB4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_10018FD0C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_10018FD20(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_10018FD34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 120) == 1 && *(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 88) == 1 && *(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 56) == 1 && *(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v3 = *(a2 + 24);

    operator delete(v3);
  }
}

void sub_10018FDD0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 128) == 1 && *(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 96) == 1 && *(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_10018FE70(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_10018FED4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_10018FF54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10018FFC0(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100190010(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_100190040(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100190060(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 136) = -1;
  sub_1001900A8(a1, a2);
  return a1;
}

uint64_t sub_1001900A8(uint64_t a1, uint64_t a2)
{
  result = sub_10018FBF0(a1);
  v5 = *(a2 + 136);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E2E060[v5])(&v6, a2);
    *(a1 + 136) = v5;
  }

  return result;
}

_BYTE *sub_10019010C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_10006F264(a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_100190154(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_1017618D0(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100190174(char *__dst, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  sub_10006F264((__dst + 72), (a2 + 72));
  sub_10006F264((__dst + 104), (a2 + 104));
  return __dst;
}

void sub_10019022C(_Unwind_Exception *exception_object)
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

void sub_10019029C(void ***a1)
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
        v6 = v4 - 232;
        sub_10018FAC8((v4 - 224));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100190324(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_100190380(a1, a2);
  return a1;
}

void sub_10019035C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_100190608(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100190380(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_1001903E0(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1001903E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100190468(result, a4);
  }

  return result;
}

void sub_100190448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100190608(&a9);
  _Unwind_Resume(a1);
}

void sub_100190468(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1001904B4(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001904B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10019050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        sub_100005F2C((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1001905BC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      sub_1000DD108(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_100190608(void ***a1)
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
        v4 -= 48;
        sub_1000DD108(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_BYTE *sub_10019068C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1001907C0(a1, a2);
  sub_100190C40((v4 + 224), a2 + 224);
  sub_100190324((a1 + 488), a2 + 488);
  sub_10018F784((a1 + 520), a2 + 520);
  sub_100190324((a1 + 552), a2 + 552);
  return a1;
}

void sub_1001906FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 544) == 1)
  {
    sub_10019029C(va);
  }

  sub_10019075C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10019075C(uint64_t a1)
{
  if (*(a1 + 512) == 1)
  {
    v3 = (a1 + 488);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 224);
  if (*(a1 + 216) == 1)
  {
    sub_100190B88(a1);
  }

  return a1;
}

_BYTE *sub_1001907C0(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[216] = 0;
  if (*(a2 + 216) == 1)
  {
    sub_100190828(a1, a2);
    a1[216] = 1;
  }

  return a1;
}

void sub_100190808(_Unwind_Exception *exception_object)
{
  if (*(v1 + 216) == 1)
  {
    sub_100190B88(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100190828(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  sub_100190934((a1 + 80), a2 + 80);
  return a1;
}

void sub_1001908E8(_Unwind_Exception *exception_object)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100190934(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[128] = 0;
  if (*(a2 + 128) == 1)
  {
    sub_10019099C(a1, a2);
    a1[128] = 1;
  }

  return a1;
}

void sub_10019097C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 128) == 1)
  {
    sub_100190B0C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10019099C(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_100034C50(a1 + 8, *(a2 + 1), *(a2 + 2), *(a2 + 2) - *(a2 + 1));
  sub_100190A90(a1 + 32, (a2 + 8));
  sub_100190A90(a1 + 64, (a2 + 16));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_100034C50(a1 + 96, *(a2 + 12), *(a2 + 13), *(a2 + 13) - *(a2 + 12));
  *(a1 + 120) = a2[30];
  return a1;
}

void sub_100190A2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    v4 = *(v1 + 64);
    if (v4)
    {
      *(v1 + 72) = v4;
      operator delete(v4);
    }
  }

  if (*(v1 + 56) == 1)
  {
    v5 = *(v1 + 32);
    if (v5)
    {
      *(v1 + 40) = v5;
      operator delete(v5);
    }
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100190A90(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100034C50(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_100190AEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_101760EC4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100190B0C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      *(a1 + 72) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      *(a1 + 40) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_100190B88(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      *(a1 + 184) = v2;
      operator delete(v2);
    }

    if (*(a1 + 168) == 1)
    {
      v3 = *(a1 + 144);
      if (v3)
      {
        *(a1 + 152) = v3;
        operator delete(v3);
      }
    }

    if (*(a1 + 136) == 1)
    {
      v4 = *(a1 + 112);
      if (v4)
      {
        *(a1 + 120) = v4;
        operator delete(v4);
      }
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      *(a1 + 96) = v5;
      operator delete(v5);
    }
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

uint64_t sub_100190C40(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  v8 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v8;
  sub_100190934((a1 + 128), a2 + 128);
  return a1;
}

void sub_100190D38(_Unwind_Exception *exception_object)
{
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100190D9C(uint64_t a1)
{
  if (*(a1 + 256) == 1)
  {
    v2 = *(a1 + 224);
    if (v2)
    {
      *(a1 + 232) = v2;
      operator delete(v2);
    }

    if (*(a1 + 216) == 1)
    {
      v3 = *(a1 + 192);
      if (v3)
      {
        *(a1 + 200) = v3;
        operator delete(v3);
      }
    }

    if (*(a1 + 184) == 1)
    {
      v4 = *(a1 + 160);
      if (v4)
      {
        *(a1 + 168) = v4;
        operator delete(v4);
      }
    }

    v5 = *(a1 + 136);
    if (v5)
    {
      *(a1 + 144) = v5;
      operator delete(v5);
    }
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

uint64_t sub_100190E64(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_100190E94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100190EB4(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[176] = 0;
  if (*(a2 + 176) == 1)
  {
    sub_100190F1C(__dst, a2);
    __dst[176] = 1;
  }

  return __dst;
}

void sub_100190EFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 176) == 1)
  {
    sub_10019104C(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100190F1C(char *__dst, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 6) = *(a2 + 6);
  sub_10006F264((__dst + 56), (a2 + 56));
  sub_10006F264((__dst + 88), (a2 + 88));
  v6 = *(a2 + 120);
  *(__dst + 34) = *(a2 + 34);
  *(__dst + 120) = v6;
  sub_10006F264((__dst + 144), a2 + 9);
  return __dst;
}

void sub_100190FD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10019104C(uint64_t a1)
{
  if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
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

uint64_t sub_1001910E4(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_100191114(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100191134(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_100191164(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100191184(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
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

uint64_t sub_100191228(uint64_t a1)
{
  sub_100191270(a1 + 48);
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_100191270(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v3 = (a1 + 248);
    sub_10019029C(&v3);
  }

  if (*(a1 + 240) == 1 && *(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 208) == 1 && *(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
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

uint64_t sub_100191370(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001913F8(result, a4);
  }

  return result;
}

void sub_1001913D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001915C8(&a9);
  _Unwind_Resume(a1);
}

void sub_1001913F8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    sub_100191448(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100191448(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    operator new();
  }

  sub_100013D10();
}