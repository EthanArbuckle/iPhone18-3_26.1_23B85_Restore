void sub_101180278(uint64_t a1)
{
  sub_1011801CC(a1);

  operator delete();
}

void sub_1011802B0(uint64_t a1)
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

void sub_101180390(uint64_t a1)
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

void sub_101180470(uint64_t a1)
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

void sub_101180550(uint64_t a1, uint64_t a2, void *a3, dispatch_object_t *a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  if (a2 && v9 && *a4)
  {
    v11 = objc_retainBlock(v9);
    v12 = v11;
    object = *a4;
    *a4 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3321888768;
    v15[2] = sub_101187990;
    v15[3] = &unk_101F15A28;
    v13 = a3[1];
    v15[4] = *a3;
    v16 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = objc_retainBlock(v11);
    (*(*a1 + 40))(a1, a2, 1, &object, v15);
    if (object)
    {
      dispatch_release(object);
    }

    v14 = v17;
    v17 = 0;

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }
  }
}

void sub_101180698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, dispatch_object_t object)
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

void sub_1011806D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v48 = 0;
  v49 = 0;
  ServiceMap = Registry::getServiceMap(*(v1 + 296));
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
LABEL_8:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
LABEL_9:
  (*(*v10 + 72))(v10, &v49, &v48);
  v12 = v48;
  v13 = v49;
  v14 = *(v1 + 152);
  v15 = v49 - v14;
  if (v49 < v14 || (v16 = *(v1 + 160), v17 = v48 - v16, v48 < v16))
  {
    v18 = *(v1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v35 = *(v1 + 160);
      *buf = 134218752;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      v51 = 2048;
      v52 = v12;
      v53 = 2048;
      v54 = v35;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Total cumulative usage lower than previous counts. Current home: %llu, previous home: %llu, current roaming: %llu, prev roaming: %llu", buf, 0x2Au);
      v12 = v48;
      v13 = v49;
    }

    *(v1 + 152) = v13;
    *(v1 + 160) = v12;
    goto LABEL_14;
  }

  *(v1 + 152) = v49;
  *(v1 + 160) = v12;
  v19 = sub_10118606C(*(v1 + 296), (v1 + 200));
  v20 = *(v1 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = v17;
    v51 = 2048;
    v52 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Total data usage, domestic: %llu, roaming: %llu, duration:%llu", buf, 0x20u);
  }

  v21 = Registry::getServiceMap(*(v1 + 296));
  v22 = v21;
  if (v23 < 0)
  {
    v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v23 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  std::mutex::lock(v21);
  *buf = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, buf);
  if (v27)
  {
    v29 = v27[3];
    v28 = v27[4];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v22);
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v28);
      v30 = 0;
      if (!v29)
      {
        goto LABEL_25;
      }

LABEL_29:
      v47 = 0;
      v32 = xpc_dictionary_create(0, 0, 0);
      v33 = v32;
      if (v32)
      {
        v47 = v32;
      }

      else
      {
        v33 = xpc_null_create();
        v47 = v33;
        if (!v33)
        {
          v34 = xpc_null_create();
          v33 = 0;
          goto LABEL_36;
        }
      }

      if (xpc_get_type(v33) == &_xpc_type_dictionary)
      {
        xpc_retain(v33);
LABEL_37:
        xpc_release(v33);
        v45 = xpc_uint64_create(v19);
        if (!v45)
        {
          v45 = xpc_null_create();
        }

        *buf = &v47;
        *&buf[8] = "duration";
        sub_10000F688(buf, &v45, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v45);
        v45 = 0;
        v43 = xpc_uint64_create(v15);
        if (!v43)
        {
          v43 = xpc_null_create();
        }

        *buf = &v47;
        *&buf[8] = "domestic_bytes";
        sub_10000F688(buf, &v43, &v44);
        xpc_release(v44);
        v44 = 0;
        xpc_release(v43);
        v43 = 0;
        v41 = xpc_uint64_create(v17);
        if (!v41)
        {
          v41 = xpc_null_create();
        }

        *buf = &v47;
        *&buf[8] = "roaming_bytes";
        sub_10000F688(buf, &v41, &v42);
        xpc_release(v42);
        v42 = 0;
        xpc_release(v41);
        v41 = 0;
        v39 = xpc_uint64_create(v17 + v15);
        if (!v39)
        {
          v39 = xpc_null_create();
        }

        *buf = &v47;
        *&buf[8] = "total_bytes";
        sub_10000F688(buf, &v39, &v40);
        xpc_release(v40);
        v40 = 0;
        xpc_release(v39);
        v39 = 0;
        v37 = xpc_int64_create(*(v1 + 48));
        if (!v37)
        {
          v37 = xpc_null_create();
        }

        *buf = &v47;
        *&buf[8] = "subscriber_tag";
        sub_10000F688(buf, &v37, &v38);
        xpc_release(v38);
        v38 = 0;
        xpc_release(v37);
        v37 = 0;
        v36 = *(v1 + 40);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Submit Total data usage event", buf, 2u);
        }

        *buf = v47;
        if (v47)
        {
          xpc_retain(v47);
        }

        else
        {
          *buf = xpc_null_create();
        }

        (*(*v29 + 16))(v29, "commCenterDataUsageTotalUsageQueriable", buf);
        xpc_release(*buf);
        *buf = 0;
        xpc_release(v47);
        goto LABEL_53;
      }

      v34 = xpc_null_create();
LABEL_36:
      v47 = v34;
      goto LABEL_37;
    }
  }

  else
  {
    v29 = 0;
  }

  std::mutex::unlock(v22);
  v28 = 0;
  v30 = 1;
  if (v29)
  {
    goto LABEL_29;
  }

LABEL_25:
  v31 = *(v1 + 40);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#E No Telephony Analytics Service", buf, 2u);
  }

LABEL_53:
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

LABEL_14:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_101180CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_101180D8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  ServiceMap = Registry::getServiceMap(*(v1 + 296));
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
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
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (!v10)
  {
LABEL_7:
    v12 = *(v1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to get analytics interface", buf, 2u);
    }

    goto LABEL_47;
  }

LABEL_11:
  v13 = Registry::getServiceMap(*(v1 + 296));
  v14 = v13;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v13);
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      if (!v21)
      {
        goto LABEL_17;
      }

LABEL_21:
      v38 = v11;
      v24 = Registry::getServiceMap(*(v1 + 296));
      v25 = v24;
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

      std::mutex::lock(v24);
      *buf = v26;
      v30 = sub_100009510(&v25[1].__m_.__sig, buf);
      v39 = v22;
      if (v30)
      {
        v32 = v30[3];
        v31 = v30[4];
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v25);
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v31);
          v33 = 0;
          if (!v32)
          {
LABEL_27:
            v34 = *(v1 + 40);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to get data usage controller", buf, 2u);
            }

            v22 = v39;
            if ((v33 & 1) == 0)
            {
              sub_100004A34(v31);
            }

            goto LABEL_45;
          }

LABEL_31:
          memset(v55, 0, 32);
          v54 = 0u;
          v35 = *(v1 + 40);
          v36 = os_signpost_id_generate(v35);
          if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v37 = *(v1 + 40);
            if (os_signpost_enabled(v37))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_BEGIN, v36, "commCenterDataUsageAppSwitch", "", buf, 2u);
            }
          }

          *buf = off_101F15B30;
          v47 = buf;
          *&v54 = v36;
          *(&v54 + 1) = os_retain(v35);
          sub_1000148FC(v55, buf);
          sub_10001499C(buf);
          v42 = 0;
          v43 = 0;
          sub_10000501C(&__p, "commCenterDataUsageAppSwitch");
          v52 = v54;
          sub_1000148FC(&v53, v55);
          v54 = 0uLL;
          sub_100014A28(v55);
          Registry::createXpcJetsamAssertion();
          sub_100014DA8(&v52);
          if (v41 < 0)
          {
            operator delete(__p);
          }

          *buf = v1;
          v45 = v21;
          v46 = v20;
          if ((v39 & 1) == 0)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v47 = v10;
          v48 = v9;
          if ((v38 & 1) == 0)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = v42;
          v50 = v43;
          if (v43)
          {
            atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
          }

          v51 = 0;
          operator new();
        }
      }

      else
      {
        v32 = 0;
      }

      std::mutex::unlock(v25);
      v31 = 0;
      v33 = 1;
      if (!v32)
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
  if (v21)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = *(v1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to get policy controller", buf, 2u);
  }

LABEL_45:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

LABEL_47:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_101181314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_1010CE1B8(&a30);
  sub_1011852C0(&a22);
  if (a21)
  {
    sub_100004A34(a21);
  }

  sub_100014DA8((v37 - 160));
  if ((a11 & 1) == 0)
  {
    sub_100004A34(v36);
  }

  if ((a13 & 1) == 0)
  {
    sub_100004A34(v35);
  }

  if ((a12 & 1) == 0)
  {
    sub_100004A34(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1011813E8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_101181484;
  v3[3] = &unk_101F15870;
  v1 = *(a1 + 32);
  v4 = v1;
  v2 = *(a1 + 48);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101187AB8((v1 + 8), v3);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_101181484(void *a1)
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
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Call back for Since Last Sample", buf, 2u);
          v6 = *(v3 + 40);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sampling cellular usage statistics", buf, 2u);
        }

        v7[0] = 0;
        v7[1] = 524409;
        if (sub_10079D818())
        {
          operator new();
        }

        sub_10118AB6C(v7);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_101181C18(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, const void *);
  sub_1003EC530(va);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(a3);
  }

  sub_10118AB6C(va1);
  sub_100004A34(a5);
  _Unwind_Resume(a1);
}

uint64_t sub_101181D10(uint64_t result, uint64_t a2)
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

void sub_101181D2C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101181D3C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_101181DD8;
  v3[3] = &unk_101F15870;
  v1 = *(a1 + 32);
  v4 = v1;
  v2 = *(a1 + 48);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101187AB8((v1 + 8), v3);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_101181DD8(void *a1)
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
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Call back for Top Consuming Apps", buf, 2u);
          v6 = v3[5];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v3[16];
          *buf = 134217984;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Requested to sample %zd top consuming apps", buf, 0xCu);
        }

        if (v3[11])
        {
          v9[0] = 0;
          v9[1] = 524408;
          if (sub_10079D818())
          {
            operator new();
          }

          sub_10118AEB4(v9);
        }

        else
        {
          v8 = v3[5];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I No app usage, not sending top consuming apps metrice", buf, 2u);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_101182624(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1011826C0;
  v3[3] = &unk_101F15870;
  v1 = *(a1 + 32);
  v4 = v1;
  v2 = *(a1 + 48);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101187AB8((v1 + 8), v3);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1011826C0(void *a1)
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
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Call back for Tethering Data", v11, 2u);
        }

        v8 = v3[17];
        v7 = v3[18];
        if (v8 >= v7)
        {
          v10 = v3[5];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 134217984;
            *&v11[4] = v8 - v7;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Data usage for tethering, bytes consumed: %llu", v11, 0xCu);
          }

          *v11 = 0;
          *&v11[8] = 524410;
          if (sub_10079D818())
          {
            operator new();
          }

          sub_10118AD10(v11);
        }

        else
        {
          v9 = v3[5];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *v11 = 134218240;
            *&v11[4] = v8;
            *&v11[12] = 2048;
            *&v11[14] = v7;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Incorrect tethering counts. fTetheringBytesConsumed: %llu, fTetheringBytesConsumedLastSample: %llu", v11, 0x16u);
            v7 = v3[18];
          }

          v3[17] = v7;
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_101182914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10118AD10(&a9);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

void sub_101182988(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_101182A28;
  v4[3] = &unk_101F158D0;
  v2 = *(a1 + 32);
  v5 = v2;
  v3 = *(a1 + 48);
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a2;
  sub_101187AB8((v2 + 8), v4);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_101182A28(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Call back for App Consumption", v7, 2u);
        }

        sub_101182AE0(v3, *(a1 + 56));
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t *sub_101182AE0(uint64_t a1, unsigned int a2)
{
  v3[0] = 0;
  v3[1] = a2;
  if (sub_10079D818())
  {
    operator new();
  }

  return sub_101188708(v3);
}

void sub_101182CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_101188708(va);
  _Unwind_Resume(a1);
}

void sub_101182D18(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_101182DB4;
  v3[3] = &unk_101F15870;
  v1 = *(a1 + 32);
  v4 = v1;
  v2 = *(a1 + 48);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101187AB8((v1 + 8), v3);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_101182DB4(void *a1)
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
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Call back for data usage recent N days", buf, 2u);
        }

        v9[0] = 0;
        v9[1] = 524422;
        if (sub_10079D818())
        {
          operator new();
        }

        v7 = *(v3 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Metric is not collectable", buf, 2u);
        }

        sub_10118B2C4(v9);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1011832DC(_Unwind_Exception *a1, std::__shared_weak_count *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(a2);
  }

  sub_10118B2C4(va);
  sub_100004A34(v7);
  _Unwind_Resume(a1);
}

void sub_1011833D0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10118346C;
  v3[3] = &unk_101F15870;
  v1 = *(a1 + 32);
  v4 = v1;
  v2 = *(a1 + 48);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101187AB8((v1 + 8), v3);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_10118346C(void *a1)
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
          LOWORD(v8) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Call back for data usage for process with empty bundle id", &v8, 2u);
        }

        v9[0] = 0;
        v9[1] = 524423;
        if (sub_10079D818())
        {
          operator new();
        }

        v7 = *(v3 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Metric is not collectable", &v8, 2u);
        }

        sub_10118B468(v9);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1011838AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((v7 & 1) == 0)
  {
    sub_100004A34(v6);
  }

  sub_10118B468(va);
  sub_100004A34(v5);
  _Unwind_Resume(a1);
}

void sub_101183978(uint64_t a1, int a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1011839EC;
  v2[3] = &unk_101F15900;
  v2[4] = a1;
  v3 = a2;
  sub_101187AB8((a1 + 8), v2);
}

void sub_1011839EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Setting total disabled bundles count to: %u", v5, 8u);
  }

  *(v2 + 64) = *(a1 + 40);
}

void sub_101183AA0(uint64_t a1)
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

void sub_101183BA8(uint64_t a1, __int128 *a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_101183C68;
  v5[3] = &unk_101F15920;
  v5[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v7 = *(a2 + 2);
  }

  v8 = a3;
  sub_101187AB8((a1 + 8), v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void sub_101183C68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    v5 = CSIBOOLAsString(*(a1 + 64));
    v8 = 136446466;
    v9 = v4;
    v10 = 2080;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I App data switch toggled for bundleID: %{public}s, dataAllowed: %s", &v8, 0x16u);
  }

  ++*(v2 + 56);
  v6 = *(v2 + 64);
  if (*(a1 + 64) == 1)
  {
    if (!v6)
    {
      return;
    }

    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  *(v2 + 64) = v7 + v6;
}

void sub_101183D68(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_101183E20;
  v3[3] = &unk_101EA6B50;
  v3[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  sub_101187AB8((a1 + 8), v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t *sub_101183E20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    LODWORD(v6) = 136446210;
    *(&v6 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Data usage paned viewed by client: %{public}s", &v6, 0xCu);
  }

  *&v6 = 0;
  *(&v6 + 1) = 524404;
  if (sub_10079D818())
  {
    operator new();
  }

  ++*(v2 + 60);
  return sub_1011883C0(&v6);
}

void sub_101184034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1011840A8;
  v3[3] = &unk_101E26508;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  sub_101187AB8((a1 + 8), v3);
}

uint64_t *sub_1011840A8(void *a1)
{
  v2 = *(a1[4] + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    v4 = a1[6];
    *v6 = 134218240;
    *&v6[4] = v3;
    *v7 = 2048;
    *&v7[2] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Data usage has been reset. Current total home: %llu, roaming: %llu", v6, 0x16u);
  }

  *v6 = 0;
  *v7 = 0;
  *&v6[8] = 524405;
  if (sub_10079D818())
  {
    operator new();
  }

  return sub_101188564(v6);
}

std::string *sub_1011842A8(std::string *result, const std::string *a2, float32x2_t *a3, int *a4, uint64_t a5)
{
  v5 = vcvtq_u64_f64(vcvtq_f64_f32(vsub_f32(*a3, a3[2])));
  v6 = *a4;
  v7 = vaddvq_s64(v5);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    v26 = v5;
    if (!a5)
    {
      sub_100022DB4();
    }

    v11 = result;
    v12 = a3[1].f32[0];
    v13 = a3[1].f32[1];
    v14 = a3[3].f32[0];
    v15 = a3[3].f32[1];
    v16 = (*(*a5 + 48))(a5);
    *(v16 + 104) |= 1u;
    v17 = *(v16 + 8);
    if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v17, a2);
    *(v16 + 104) |= 2u;
    v18 = *(v16 + 16);
    if (v18 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    v19 = v13 - v15;
    result = std::string::operator=(v18, v11);
    v20 = *(v16 + 104);
    if (v26.i64[0])
    {
      v20 |= 4u;
      *(v16 + 24) = v26.i64[0];
    }

    v21 = v19;
    if (v26.i64[1])
    {
      v20 |= 8u;
      *(v16 + 32) = v26.i64[1];
    }

    v22 = (v12 - v14);
    if (v21)
    {
      v20 |= 0x10u;
      *(v16 + 40) = v21;
    }

    if (v22)
    {
      v20 |= 0x40u;
      *(v16 + 56) = v22;
    }

    v23 = v20 | 0x80;
    *(v16 + 104) = v20 | 0x80;
    *(v16 + 64) = v7;
    v24 = a4[2];
    if (v24)
    {
      v23 = v20 | 0x180;
      *(v16 + 104) = v20 | 0x180;
      *(v16 + 72) = v24;
    }

    v25 = a4[1];
    if (v25)
    {
      v23 |= 0x400u;
      *(v16 + 80) = v25;
    }

    *(v16 + 104) = v23 | 0x800;
    *(v16 + 84) = v6;
  }

  return result;
}

void sub_101184498(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_101184508;
  v1[3] = &unk_101E26008;
  v1[4] = a1;
  sub_101187AB8((a1 + 8), v1);
}

uint64_t *sub_101184508(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Data usage threshold reached for internet context", v4, 2u);
  }

  return sub_101182AE0(v1, 0x80083u);
}

void sub_101184580(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1011845F0;
  v2[3] = &unk_101E26940;
  v2[4] = a1;
  v2[5] = a2;
  sub_101187AB8((a1 + 8), v2);
}

void sub_1011845F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136) + *(a1 + 40);
  *(v2 + 136) = v3;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = 134218240;
    v7 = v5;
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Data usage threshold reached for tethering, bytes consumed: %llu total consumed:: %llu", &v6, 0x16u);
  }
}

void sub_1011846B4(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_101184724;
  v2[3] = &unk_101E26940;
  v2[4] = a1;
  v2[5] = a2;
  sub_101187AB8((a1 + 8), v2);
}

void sub_101184724(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Resetting tethering bytes to: %llu", &v6, 0xCu);
  }

  v5 = *(a1 + 40);
  v2[17] = v5;
  v2[18] = v5;
}

void sub_1011847D8(uint64_t a1, int a2, int a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10118484C;
  v3[3] = &unk_101E26940;
  v3[4] = a1;
  v4 = a2;
  v5 = a3;
  sub_101187AB8((a1 + 8), v3);
}

void sub_10118484C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v3 = *(a1 + 40);
  if (v2 == v3)
  {
    return;
  }

  v5 = *(v1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 67109376;
    *&v19[4] = v2;
    *&v19[8] = 1024;
    *&v19[10] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Changing subscriber tag from: %u to: %u", v19, 0xEu);
    v3 = *(a1 + 40);
  }

  *(v1 + 48) = v3;
  *(v1 + 52) = *(a1 + 44);
  sub_101186F9C(*(v1 + 80));
  *(v1 + 152) = 0;
  *(v1 + 72) = v1 + 80;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  ++*(v1 + 120);
  *(v1 + 160) = 0;
  ServiceMap = Registry::getServiceMap(*(v1 + 296));
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
  *v19 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v19);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_11:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_12:
  (*(*v14 + 72))(v14, v1 + 152, v1 + 160);
  v16 = *(v1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v1 + 152);
    v18 = *(v1 + 160);
    *v19 = 134218240;
    *&v19[4] = v17;
    *&v19[12] = 2048;
    v20 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I New total usage home: %llu roaming: %llu", v19, 0x16u);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_101184A90(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101184AC0(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_101184B48;
  v2[3] = &unk_101E3F5B0;
  v5 = a2;
  v3 = a1;
  v4 = sub_1007A3C94();
  sub_101187AB8((v3 + 8), v2);
}

void sub_101184B48(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    if (!sub_10079D818())
    {
      return;
    }

    v3 = *(v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Starting to collect data usage while on call", v11, 2u);
    }

    *(v1 + 240) = 1;
    v4 = *(a1 + 40);
  }

  else
  {
    if (*(v1 + 240) == 1)
    {
      v5 = *(v1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Stopping collection of data usage while on call", v11, 2u);
      }
    }

    v11[0] = 0;
    v11[1] = 524420;
    if (sub_10079D818())
    {
      operator new();
    }

    v6 = *(v1 + 72);
    if (v6 != (v1 + 80))
    {
      do
      {
        *(v6 + 92) = 0;
        v6[45] = 0;
        v7 = v6[47];
        v6[47] = 0;
        *buf = v7;
        sub_10002D760(buf);
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

      while (v9 != (v1 + 80));
    }

    sub_101188D90(v11);
    v4 = 0;
    *(v1 + 240) = 0;
  }

  *(v1 + 232) = v4;
}

void sub_101185178(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
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

void *sub_1011852C0(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_101185308(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_101185454;
  v8[3] = &unk_101F15950;
  v8[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v9, *a2, *(a2 + 8));
  }

  else
  {
    *v9 = *a2;
    v10 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v12 = *(a3 + 16);
  }

  v7 = *(a4 + 1);
  v13 = *a4;
  v14 = v7;
  v15 = *(a4 + 2);
  sub_10002D728(&v16, a4 + 6);
  sub_101187AB8((a1 + 8), v8);
  sub_10002D760(&v16);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_101185438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101185454(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = a1 + 40;
  sub_10042A614((a1 + 40), 47, &__dst);
  v4 = *(a1 + 87);
  if (v4 >= 0)
  {
    v5 = (a1 + 64);
  }

  else
  {
    v5 = *(a1 + 64);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 87);
  }

  else
  {
    v6 = *(a1 + 72);
  }

  v7 = std::string::append(&__dst, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v10 = (v2 + 80);
  v9 = *(v2 + 80);
  if (!v9)
  {
    goto LABEL_16;
  }

  v11 = v2 + 80;
  do
  {
    v12 = sub_1000068BC((v9 + 32), &__p.__r_.__value_.__l.__data_);
    if ((v12 & 0x80u) == 0)
    {
      v11 = v9;
    }

    v9 = *(v9 + ((v12 >> 4) & 8));
  }

  while (v9);
  if (v11 == v10 || (sub_1000068BC(&__p, (v11 + 32)) & 0x80) != 0)
  {
LABEL_16:
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    memset(v40, 0, sizeof(v40));
    v39 = 0u;
    v37 = 0u;
    memset(v38, 0, sizeof(v38));
    v35 = 0u;
    v36 = 0u;
    memset(v34, 0, sizeof(v34));
    v13 = *(v2 + 120) + 1;
    *(v2 + 120) = v13;
    if (*(a1 + 63) < 0)
    {
      sub_100005F2C(v34, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v34[0] = *v3;
      *&v34[1] = *(v3 + 16);
    }

    if (*(a1 + 87) < 0)
    {
      sub_100005F2C(&v34[1] + 8, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      *(&v34[1] + 8) = *(a1 + 64);
      *(&v34[2] + 1) = *(a1 + 80);
    }

    LODWORD(v34[3]) = v13;
    *(&v34[7] + 1) = 0;
    LODWORD(v35) = 0;
    v36 = 0uLL;
    memset(&v34[3] + 4, 0, 64);
    *(&v35 + 1) = &v36;
    v37 = 0u;
    memset(v38, 0, 28);
    v39 = &v39 + 8;
    v41 = 0uLL;
    memset(v40, 0, 52);
    *(&v40[3] + 1) = &v41;
    v43 = 0;
    *&v42 = 0;
    DWORD2(v42) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = __p;
    }

    sub_101186BE8(v46, v34);
    v14 = *v10;
    if (!*v10)
    {
      goto LABEL_32;
    }

    v15 = (v2 + 80);
    while (1)
    {
      while (1)
      {
        v16 = v14;
        if ((sub_1000068BC(&__dst, (v14 + 32)) & 0x80) == 0)
        {
          break;
        }

        v14 = *v16;
        v15 = v16;
        if (!*v16)
        {
          goto LABEL_32;
        }
      }

      if ((sub_1000068BC(v16 + 4, &__dst.__r_.__value_.__l.__data_) & 0x80) == 0)
      {
        break;
      }

      v15 = v16 + 1;
      v14 = v16[1];
      if (!v14)
      {
        goto LABEL_32;
      }
    }

    v11 = *v15;
    if (!*v15)
    {
LABEL_32:
      operator new();
    }

    sub_101186B84(v46);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    sub_101186B84(v34);
  }

  v17 = 4;
  if (!*(a1 + 104))
  {
    v17 = 0;
  }

  v18 = *(a1 + 96);
  *(v11 + v17 + 108) = *(v11 + v17 + 108) + v18;
  v19 = *(a1 + 105);
  if (v19 == 1)
  {
    *(v11 + 120) = *(v11 + 120) + v18;
  }

  v20 = *(a1 + 106);
  if (v20 == 1)
  {
    *(v11 + 116) = *(v11 + 116) + v18;
  }

  *(v11 + v17 + 140) = *(v11 + v17 + 140) + v18;
  if (v19)
  {
    *(v11 + 152) = *(v11 + 152) + v18;
  }

  if (v20)
  {
    *(v11 + 148) = *(v11 + 148) + v18;
  }

  sub_101185D6C(v11 + 176, a1 + 88);
  v21 = 4;
  if (!*(a1 + 104))
  {
    v21 = 0;
  }

  v22 = *(a1 + 96);
  *(v11 + v21 + 216) = *(v11 + v21 + 216) + v22;
  if (*(a1 + 105) == 1)
  {
    *(v11 + 228) = *(v11 + 228) + v22;
  }

  if (*(a1 + 106) == 1)
  {
    *(v11 + 224) = *(v11 + 224) + v22;
  }

  sub_101185D6C(v11 + 248, a1 + 88);
  v23 = 4;
  if (!*(a1 + 104))
  {
    v23 = 0;
  }

  v24 = *(a1 + 96);
  *(v11 + v23 + 288) = *(v11 + v23 + 288) + v24;
  if (*(a1 + 105) == 1)
  {
    *(v11 + 300) = *(v11 + 300) + v24;
  }

  if (*(a1 + 106) == 1)
  {
    *(v11 + 296) = *(v11 + 296) + v24;
  }

  sub_101185D6C(v11 + 320, a1 + 88);
  if (*(v2 + 240) == 1 && *(a1 + 110) == 1)
  {
    *(v11 + 360) = *(v11 + 360) + *(a1 + 96);
    if (*(a1 + 109) == 1)
    {
      ++*(v11 + 364);
      if (!*(v11 + 376))
      {
        v29 = *(a1 + 136);
        if (v29)
        {
          BytePtr = CFDataGetBytePtr(v29);
          if (BytePtr)
          {
            v31 = BytePtr[1];
            if (v31 == 30)
            {
              if (!*(BytePtr + 2) && !*(BytePtr + 3) && !*(BytePtr + 4) && (*(BytePtr + 5) | 0x1000000) == 0x1000000)
              {
                goto LABEL_62;
              }

              v32 = 3;
            }

            else
            {
              if (v31 != 2 || !*(BytePtr + 1) || *(BytePtr + 1) == 127)
              {
                goto LABEL_62;
              }

              v32 = 2;
            }

            *(v11 + 368) = bswap32(*(BytePtr + 1)) >> 16;
            *(v11 + 371) = v32;
            sub_1005C11CC((v11 + 376), (a1 + 136));
            *(v11 + 370) = 1;
            if (*(a1 + 111))
            {
              v33 = 2;
LABEL_95:
              *(v11 + 370) = v33;
              goto LABEL_62;
            }

            if (*(a1 + 112) == 1)
            {
              v33 = 3;
              goto LABEL_95;
            }
          }
        }
      }
    }
  }

LABEL_62:
  if (*(a1 + 108) == 1)
  {
    v25 = *(a1 + 120);
    if (v25)
    {
      v26 = *(v2 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 63) >= 0)
        {
          v27 = v3;
        }

        else
        {
          v27 = *(a1 + 40);
        }

        if (*(a1 + 87) >= 0)
        {
          v28 = a1 + 64;
        }

        else
        {
          v28 = *(a1 + 64);
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315650;
        *(__dst.__r_.__value_.__r.__words + 4) = v27;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v28;
        HIWORD(__dst.__r_.__value_.__r.__words[2]) = 2048;
        *v46 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#N Process: %s with bundleID: %s is disabled from cell data but still consumed: %llu bytes", &__dst, 0x20u);
      }

      __dst.__r_.__value_.__r.__words[0] = 0;
      __dst.__r_.__value_.__l.__size_ = 524417;
      if (sub_10079D818())
      {
        operator new();
      }

      sub_10118A9C8(&__dst);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_101185D6C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 24);
  v3 = *(a1 + 24);
  if (*(a2 + 20) == 1)
  {
    if (v3)
    {
      v5 = *a2;
      v6 = v4;
      v7 = v3;
      do
      {
        v8 = v7[4];
        v9 = v8 >= v5;
        v10 = v8 < v5;
        if (v9)
        {
          v6 = v7;
        }

        v7 = v7[v10];
      }

      while (v7);
      if (v6 != v4 && v6[4] <= v5)
      {
        v11 = v6[1];
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
          v21 = v6;
          do
          {
            v12 = v21[2];
            v17 = *v12 == v21;
            v21 = v12;
          }

          while (!v17);
        }

        if (*(a1 + 16) == v6)
        {
          *(a1 + 16) = v12;
        }

        --*(a1 + 32);
        sub_100018288(v3, v6);

        operator delete(v6);
      }
    }
  }

  else
  {
    if (!v3)
    {
LABEL_20:
      operator new();
    }

    v13 = *a2;
    while (1)
    {
      while (1)
      {
        v14 = v3;
        v15 = *(v3 + 32);
        if (v15 <= v13)
        {
          break;
        }

        v3 = *v3;
        if (!*v14)
        {
          goto LABEL_20;
        }
      }

      if (v15 >= v13)
      {
        break;
      }

      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    v16 = *(v3 + 40);
    v17 = *(a2 + 19) == 1 && (v16 & 1) == 0;
    v18 = *(v3 + 40);
    if (v17)
    {
      ++*(a1 + 4);
      v18 = v16 | 1;
      *(v3 + 40) = v16 | 1;
    }

    v19 = v16 & 2;
    if (*(a2 + 17) == 1 && v19 == 0)
    {
      ++*(a1 + 8);
      *(v3 + 40) = v18 | 2;
    }
  }
}

const void **sub_101185F4C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v5;
  }

  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;

  return sub_10002D728((a1 + 136), (a2 + 136));
}

void sub_101185FF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_10118600C(uint64_t a1)
{
  sub_10002D760((a1 + 136));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_10118606C(Registry *a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  Registry::getTimerService(&v6, a1);
  if (v6)
  {
    v3 = (**v6)(v6);
    v4 = (v3 - *a2) / 1000000;
    *a2 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  return v4;
}

void sub_10118610C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101186124(uint64_t a1, int a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_101186198;
  v2[3] = &unk_101F15900;
  v2[4] = a1;
  v3 = a2;
  sub_101187AB8((a1 + 8), v2);
}

void sub_101186198(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Collecting max of %u top consuming apps", v5, 8u);
  }

  *(v2 + 128) = *(a1 + 40);
}

uint64_t sub_10118624C(uint64_t a1)
{
  sub_100034450(*(a1 + 104));
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

void sub_101186298(uint64_t a1, uint64_t a2, BOOL a3, uint64_t *a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 296));
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
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
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

      goto LABEL_11;
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
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E Failed to send bootstrap data usage metric : (no analytics interface)", buf, 2u);
    }

    goto LABEL_34;
  }

LABEL_11:
  v34 = 0;
  v19 = xpc_dictionary_create(0, 0, 0);
  v20 = v19;
  if (v19)
  {
    v34 = v19;
  }

  else
  {
    v20 = xpc_null_create();
    v34 = v20;
    if (!v20)
    {
      v21 = xpc_null_create();
      v20 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v20) != &_xpc_type_dictionary)
  {
    v21 = xpc_null_create();
LABEL_18:
    v34 = v21;
    goto LABEL_19;
  }

  xpc_retain(v20);
LABEL_19:
  xpc_release(v20);
  if (*(a2 + 23) >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  v32 = xpc_string_create(v22);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  *buf = &v34;
  v31 = "carrierIdentifier";
  sub_10000F688(buf, &v32, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v32);
  v32 = 0;
  v28 = xpc_uint64_create(*a4);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  *buf = &v34;
  v31 = "totalDataUsed";
  sub_10000F688(buf, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_uint64_create(a4[1]);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  *buf = &v34;
  v31 = "roamingDataUsed";
  sub_10000F688(buf, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_BOOL_create(a3);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  *buf = &v34;
  v31 = "withUserSIM";
  sub_10000F688(buf, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v23 = v34;
  v24 = 0;
  if (v34)
  {
    xpc_retain(v34);
  }

  else
  {
    v23 = xpc_null_create();
  }

  (*(*v16 + 16))(v16, "commCenterBootstrapUsageSummary", &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v34);
LABEL_34:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_101186610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 88));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_101186688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 296));
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
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E Failed to send bootstrap top apps data usage metric : (no analytics interface)", buf, 2u);
    }

    goto LABEL_48;
  }

LABEL_11:
  v47 = 0;
  v21 = xpc_dictionary_create(0, 0, 0);
  v22 = v21;
  if (v21)
  {
    v47 = v21;
  }

  else
  {
    v22 = xpc_null_create();
    v47 = v22;
    if (!v22)
    {
      v23 = xpc_null_create();
      v22 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v22) != &_xpc_type_dictionary)
  {
    v23 = xpc_null_create();
LABEL_18:
    v47 = v23;
    goto LABEL_19;
  }

  xpc_retain(v22);
LABEL_19:
  xpc_release(v22);
  if (*(a2 + 23) >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = *a2;
  }

  object = xpc_string_create(v24);
  if (!object)
  {
    object = xpc_null_create();
  }

  *buf = &v47;
  v44 = "carrierIdentifier";
  sub_10000F688(buf, &object, &v46);
  xpc_release(v46);
  v46 = 0;
  xpc_release(object);
  object = 0;
  if (*(a3 + 23) >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  v41 = xpc_string_create(v25);
  if (!v41)
  {
    v41 = xpc_null_create();
  }

  *buf = &v47;
  v44 = "fBundleName";
  sub_10000F688(buf, &v41, &v42);
  xpc_release(v42);
  v42 = 0;
  xpc_release(v41);
  v41 = 0;
  if (*(a4 + 23) >= 0)
  {
    v26 = a4;
  }

  else
  {
    v26 = *a4;
  }

  v39 = xpc_string_create(v26);
  if (!v39)
  {
    v39 = xpc_null_create();
  }

  *buf = &v47;
  v44 = "fProcessName";
  sub_10000F688(buf, &v39, &v40);
  xpc_release(v40);
  v40 = 0;
  xpc_release(v39);
  v39 = 0;
  v27 = a5[1];
  if (__CFADD__(v27, *a5))
  {
    v28 = -1;
  }

  else
  {
    v28 = v27 + *a5;
  }

  v37 = xpc_uint64_create(v28);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  *buf = &v47;
  v44 = "totalDataUsedHome";
  sub_10000F688(buf, &v37, &v38);
  xpc_release(v38);
  v38 = 0;
  xpc_release(v37);
  v37 = 0;
  v29 = a5[2];
  v30 = a5[3];
  v31 = __CFADD__(v30, v29);
  v32 = v30 + v29;
  if (v31)
  {
    v33 = -1;
  }

  else
  {
    v33 = v32;
  }

  v35 = xpc_uint64_create(v33);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  *buf = &v47;
  v44 = "totalDataUsedRoaming";
  sub_10000F688(buf, &v35, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(v35);
  v34 = v47;
  v35 = 0;
  if (v47)
  {
    xpc_retain(v47);
  }

  else
  {
    v34 = xpc_null_create();
  }

  (*(*v18 + 16))(v18, "commCenterBootstrapUsagePerProcess", &v34);
  xpc_release(v34);
  v34 = 0;
  xpc_release(v47);
LABEL_48:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_101186A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 88));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101186B04(uint64_t result)
{
  v1 = *(result + 32);
  *(result + 4) = 0;
  *(result + 8) = 0;
  *result = v1;
  v2 = *(result + 16);
  if (v2 != (result + 24))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v2 + 40);
      if (v5)
      {
        *(result + 4) = ++v4;
        v5 = *(v2 + 40);
      }

      if ((v5 & 2) != 0)
      {
        *(result + 8) = ++v3;
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != (result + 24));
  }

  return result;
}

uint64_t sub_101186B84(uint64_t a1)
{
  sub_10002D760((a1 + 320));
  sub_100034450(*(a1 + 288));
  sub_100034450(*(a1 + 216));
  sub_100034450(*(a1 + 144));
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

char *sub_101186BE8(char *__dst, __int128 *a2)
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

  *(__dst + 3) = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  *(__dst + 28) = *(a2 + 28);
  *(__dst + 5) = v7;
  *(__dst + 6) = v8;
  *(__dst + 4) = v6;
  v9 = *(a2 + 15);
  *(__dst + 32) = *(a2 + 32);
  *(__dst + 15) = v9;
  sub_101186D98(__dst + 17, a2 + 17);
  v10 = a2[11];
  *(__dst + 10) = a2[10];
  *(__dst + 11) = v10;
  v11 = *(a2 + 24);
  *(__dst + 50) = *(a2 + 50);
  *(__dst + 24) = v11;
  sub_101186D98(__dst + 26, a2 + 26);
  v12 = *(a2 + 232);
  *(__dst + 248) = *(a2 + 248);
  *(__dst + 232) = v12;
  v13 = *(a2 + 33);
  *(__dst + 68) = *(a2 + 68);
  *(__dst + 33) = v13;
  sub_101186D98(__dst + 35, a2 + 35);
  v14 = *(a2 + 38);
  *(__dst + 78) = *(a2 + 78);
  *(__dst + 38) = v14;
  sub_10002D728(__dst + 40, a2 + 40);
  return __dst;
}

void sub_101186D08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101186D5C(uint64_t a1)
{
  sub_101186B84(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_101186D98(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = v2[4];
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      if (v5[4] < v3)
      {
LABEL_8:
        if (v4)
        {
          v9 = v5 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v4;
            v11 = v4[4];
            if (v11 <= v3)
            {
              break;
            }

            v4 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v3)
          {
            break;
          }

          v4 = v10[1];
          if (!v4)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v8 = *v13 == v2;
          v2 = v13;
        }

        while (!v8);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void sub_101186F24(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 4);
      if (v4)
      {
        *(v3 - 3) = v4;
        operator delete(v4);
      }

      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
      }

      v5 = v3 - 10;
      if (*(v3 - 57) < 0)
      {
        operator delete(*v5);
      }

      v3 -= 10;
    }

    while (v5 != v2);
  }

  a1[1] = v2;
}

void sub_101186F9C(void *a1)
{
  if (a1)
  {
    sub_101186F9C(*a1);
    sub_101186F9C(a1[1]);
    sub_101186FF0((a1 + 4));

    operator delete(a1);
  }
}

void sub_101186FF0(uint64_t a1)
{
  sub_101186B84(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_101187040(void *a1)
{
  if (a1)
  {
    sub_101187040(*a1);
    sub_101187040(a1[1]);
    sub_1000D4D40((a1 + 4));

    operator delete(a1);
  }
}

void sub_101187094(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Shutdown", buf, 2u);
  }

  ctu::RestModule::disconnect((v1 + 256));
  operator delete();
}

void sub_101187154(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v3 = CFCalendarCreateWithIdentifier(kCFAllocatorDefault, kCFGregorianCalendar);
  v4 = *(v1 + 248);
  *(v1 + 248) = v3;
  *buf = v4;
  sub_100952474(buf);
  if (!*(v1 + 248))
  {
    v5 = *(v1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Could not create gregorian calendar", buf, 2u);
    }
  }

  sub_100118F6C(v1 + 272);
  Registry::createRestModuleOneTimeUseConnection(buf, *(v1 + 296));
  ctu::RestModule::connect();
  if (v7)
  {
    sub_100004A34(v7);
  }

  operator delete();
}

void sub_10118728C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void sub_1011872CC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  Registry::getTimerService(buf, *(v1 + 296));
  v3 = (***buf)(*buf);
  if (v28)
  {
    sub_100004A34(v28);
  }

  *(v1 + 168) = v3 / 1000000;
  *(v1 + 176) = v3;
  *(v1 + 184) = v3;
  *(v1 + 192) = v3;
  *(v1 + 200) = v3;
  *(v1 + 208) = v3;
  *(v1 + 216) = v3;
  *(v1 + 224) = v3;
  ServiceMap = Registry::getServiceMap(*(v1 + 296));
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
        goto LABEL_30;
      }

      goto LABEL_14;
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
    goto LABEL_30;
  }

LABEL_14:
  v14 = *(v1 + 16);
  if (!v14)
  {
    goto LABEL_37;
  }

  v15 = *(v1 + 8);
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_37;
  }

  v40 = v15;
  v41 = v16;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v17 = *(v1 + 24);
  v39 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1011806D8;
  v38[3] = &unk_101F15850;
  v38[4] = v1;
  sub_101180550(v12, "commCenterDataUsageTotalUsageQueriable", &v40, &v39, v38);
  if (v39)
  {
    dispatch_release(v39);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  v18 = *(v1 + 16);
  if (!v18 || (v19 = *(v1 + 8), (v20 = std::__shared_weak_count::lock(v18)) == 0))
  {
LABEL_37:
    sub_100013CC4();
  }

  v36 = v19;
  v37 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v21 = *(v1 + 24);
  v35 = v21;
  if (v21)
  {
    dispatch_retain(v21);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_101180D8C;
  v34[3] = &unk_101F15850;
  v34[4] = v1;
  sub_101180550(v12, "commCenterDataUsageAppSwitch", &v36, &v35, v34);
  if (v35)
  {
    dispatch_release(v35);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

LABEL_30:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v22 = *(v1 + 16);
  if (v22)
  {
    v23 = *(v1 + 8);
    v24 = std::__shared_weak_count::lock(v22);
    if (v24)
    {
      v25 = v24;
      p_shared_weak_owners = &v24->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v24);
      *buf = _NSConcreteStackBlock;
      v28 = 3321888768;
      v29 = sub_1011813E8;
      v30 = &unk_101F158A0;
      v31 = v1;
      v32 = v23;
      v33 = v25;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      sub_10079D8A0();
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      sub_10079D8A0();
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_10079D8A0();
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_10079D8A0();
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_10079D8A0();
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_10079D8A0();
      std::__shared_weak_count::__release_weak(v25);
      std::__shared_weak_count::__release_weak(v25);
      std::__shared_weak_count::__release_weak(v25);
      std::__shared_weak_count::__release_weak(v25);
      std::__shared_weak_count::__release_weak(v25);
      if (v33)
      {
        std::__shared_weak_count::__release_weak(v33);
      }

      std::__shared_weak_count::__release_weak(v25);
      operator delete();
    }
  }

  sub_100013CC4();
}

void sub_101187880(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::__shared_weak_count *a51)
{
  v54 = *(v53 - 168);
  if (v54)
  {
    dispatch_release(v54);
  }

  v55 = *(v53 - 152);
  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  if ((v52 & 1) == 0)
  {
    sub_100004A34(v51);
  }

  operator delete();
}

void sub_101187990(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100471B24(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

id sub_101187A1C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = objc_retainBlock(*(a2 + 48));
  a1[6] = result;
  return result;
}

void sub_101187A60(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_101187AB8(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    sub_100013CC4();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_101187BA4;
  block[3] = &unk_101F15A60;
  v12 = v5;
  v13 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = v3;
  v11 = v9;
  dispatch_async(v8, block);

  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_100004A34(v7);
}

uint64_t sub_101187BB4(uint64_t result, uint64_t a2)
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

void sub_101187BD0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101187BE0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!subscriber::isValidSimSlot() || (subscriber::isValidSimSlot() & 1) == 0)
  {
    v19 = *(v2 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = subscriber::asString();
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Invalid preferred data sim change (%s -> %s)", &buf, 0x16u);
    }

LABEL_26:
    operator delete();
  }

  v3 = *(v1 + 2);
  v27 = 0;
  getCarrierNameForSimSlot((v2 + 296), v3, &v27, &__p);
  memset(&buf, 0, sizeof(buf));
  ctu::cf::assign();
  __str = buf;
  sub_100005978(&__p.__r_.__value_.__l.__data_);
  sub_100005978(&v27);
  v4 = *(v1 + 3);
  v24 = 0;
  getCarrierNameForSimSlot((v2 + 296), v4, &v24, &v25);
  memset(&buf, 0, sizeof(buf));
  ctu::cf::assign();
  __p = buf;
  sub_100005978(&v25);
  sub_100005978(&v24);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v6 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_15;
  }

  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  if (v7)
  {
    v8 = v1[2];
    v9 = *(v2 + 152);
    if (v8 >= v9)
    {
      v10 = v1[3];
      v11 = *(v2 + 160);
      v12 = v10 - v11;
      if (v10 >= v11)
      {
        v23 = *(v2 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
          *(buf.__r_.__value_.__r.__words + 4) = v8 - v9;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Submit current data usage on preferred data sim change. domestic: %llu, roaming: %llu", &buf, 0x16u);
        }

        buf.__r_.__value_.__r.__words[0] = 0;
        buf.__r_.__value_.__l.__size_ = 524566;
        if (sub_10079D818())
        {
          operator new();
        }

        sub_10118821C(&buf);
        goto LABEL_22;
      }
    }

    v13 = *(v2 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v1[3];
      v15 = *(v2 + 160);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218752;
      *(buf.__r_.__value_.__r.__words + 4) = v8;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
      v30 = v14;
      v31 = 2048;
      v32 = v15;
      v16 = "#I Skip current data usage on preferred data sim change due to inconsistent cumulative usage. Current home: %llu, previous home: %llu, current roaming: %llu, prev roaming: %llu";
      v17 = v13;
      v18 = 42;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &buf, v18);
    }
  }

  else
  {
LABEL_15:
    v20 = *(v2 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      p_str = __str.__r_.__value_.__r.__words[0];
      if (v6 >= 0)
      {
        p_str = &__str;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = p_str;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
      v16 = "#I Skip current data usage on preferred data sim change due to missing carrier name ('%s' -> '%s')";
      v17 = v20;
      v18 = 22;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  goto LABEL_26;
}

std::string *sub_101188124(uint64_t a1, std::string *__str)
{
  *(a1 + 64) |= 2u;
  v2 = *(a1 + 16);
  if (v2 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v2, __str);
}

std::string *sub_1011881A0(uint64_t a1, std::string *__str)
{
  *(a1 + 64) |= 4u;
  v2 = *(a1 + 24);
  if (v2 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v2, __str);
}

uint64_t *sub_10118821C(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 64))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 64) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_101188370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t *sub_1011883C0(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 32))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 32) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_101188514(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t *sub_101188564(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 56))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 56) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_1011886B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t *sub_101188708(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 60))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 60) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_10118885C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t sub_10118891C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F15AA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_101188948(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = v1[9];
  v3 = v1[8];
  if (v3 >= v2)
  {
    if (v2 == v1[10])
    {
      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v1 + 6), v2 + 1);
      v2 = v1[9];
    }

    v1[9] = v2 + 1;
    sub_101188A18();
  }

  v4 = *(v1 + 3);
  v1[8] = v3 + 1;
  return *(v4 + 8 * v3);
}

uint64_t sub_1011889CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101188A7C(uint64_t a1)
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

uint64_t *sub_101188AFC(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&__str, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    __str.__r_.__value_.__r.__words[2] = *(v1 + 24);
    *&__str.__r_.__value_.__l.__data_ = v3;
  }

  if (v2 + 320 == sub_100007A6C(v2 + 312, &__str.__r_.__value_.__l.__data_))
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = p_str;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N bundleID: %s used data when it was not expected to", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = 524593;
    if (sub_10079D818())
    {
      operator new();
    }

    sub_100005BA0(v2 + 312, &__str.__r_.__value_.__l.__data_);
    sub_101188F34(&buf);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_1000EF424(&v8);
  return sub_1000049E0(&v7);
}

uint64_t *sub_101188D90(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 52))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 52) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_101188EE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t *sub_101188F34(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 28))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 28) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_101189088(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

void sub_101189160(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "commCenterDataUsageAppSwitch", "", v5, 2u);
    }
  }
}

uint64_t sub_1011891D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101189224(void *a1)
{
  *a1 = off_101F15BB0;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_101189288(void *a1)
{
  *a1 = off_101F15BB0;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete();
}

uint64_t sub_1011893B0(uint64_t result, uint64_t a2)
{
  *a2 = off_101F15BB0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 56);
  *(a2 + 48) = *(result + 48);
  *(a2 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101189420(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[3];
  if (v4)
  {

    sub_100004A34(v4);
  }
}

void sub_10118947C(void *__p)
{
  v2 = __p[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = __p[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(__p);
}

void sub_1011894D4(void *a1, id *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v49 = v5;
  if ((v4 & 0x100000000) != 0)
  {
    v38 = *(a1[1] + 40);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v75 = v4;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to get data usage: %d", buf, 8u);
    }
  }

  else
  {
    v50 = a1[1];
    v6 = [v5 appDataUsageForPeriod:0];
    if (v6)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v48 = v6;
      obj = v6;
      v7 = [obj countByEnumeratingWithState:&v60 objects:buf count:{16, v48, v49}];
      v8 = v50;
      if (v7)
      {
        v9 = *v61;
        v10 = a1;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v61 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v12 = [*(*(&v60 + 1) + 8 * i) bundleId];
            v13 = v12;
            sub_10000501C(&v71, [v12 UTF8String]);
            v14 = v65;
            if (v65 >= v66)
            {
              v16 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 3);
              v17 = v16 + 1;
              if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1000CE3D4();
              }

              if (0x5555555555555556 * ((v66 - v64) >> 3) > v17)
              {
                v17 = 0x5555555555555556 * ((v66 - v64) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v66 - v64) >> 3) >= 0x555555555555555)
              {
                v18 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v18 = v17;
              }

              *&v69 = &v64;
              if (v18)
              {
                sub_100005348(&v64, v18);
              }

              v19 = 8 * ((v65 - v64) >> 3);
              v20 = v71;
              *(v19 + 16) = v72;
              *v19 = v20;
              v72 = 0;
              v71 = 0uLL;
              v21 = 24 * v16 + 24;
              v22 = (24 * v16 - (v65 - v64));
              memcpy((v19 - (v65 - v64)), v64, v65 - v64);
              v23 = v64;
              v24 = v66;
              v64 = v22;
              v65 = v21;
              v66 = 0;
              *&v68 = v23;
              *(&v68 + 1) = v24;
              __p[0] = v23;
              __p[1] = v23;
              sub_1000054E0(__p);
              v65 = v21;
              a1 = v10;
              v8 = v50;
              if (SHIBYTE(v72) < 0)
              {
                operator delete(v71);
              }
            }

            else
            {
              v15 = v71;
              *(v65 + 2) = v72;
              *v14 = v15;
              v72 = 0;
              v71 = 0uLL;
              v65 = v14 + 24;
            }
          }

          v7 = [obj countByEnumeratingWithState:&v60 objects:buf count:16];
        }

        while (v7);
      }

      v59.__padding_ = 0;
      sub_100344DA8(&v59);
      v58 = 0;
      v25 = std::random_device::operator()(&v59);
      v26 = v25 + ((v25 / 0x7FFFFFFF) | ((v25 / 0x7FFFFFFF) << 31));
      if (v26 <= 1)
      {
        v26 = 1;
      }

      v58 = v26;
      v28 = v64;
      v27 = v65;
      if (v65 - v64 < 25)
      {
        goto LABEL_45;
      }

      v29 = (v65 - 24);
      if (v65 - 24 <= v64)
      {
        goto LABEL_44;
      }

      v30 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 3);
      while (1)
      {
        if (v30 != 1)
        {
          if (v30)
          {
            v31 = __clz(v30);
            v69 = 0u;
            v70 = 0u;
            if (((v30 << v31) & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v32 = 64;
            }

            else
            {
              v32 = 63;
            }

            *__p = 0uLL;
            v68 = 0uLL;
            sub_101189DCC(__p, &v58, v32 - v31);
            do
            {
              v33 = sub_101189ED0(__p);
            }

            while (v33 >= v30);
            if (!v33)
            {
              goto LABEL_36;
            }
          }

          else
          {
            sub_101189DCC(__p, &v58, 0x40uLL);
            v33 = sub_101189ED0(__p);
            if (!v33)
            {
              goto LABEL_36;
            }
          }

          v34 = &v28[3 * v33];
          v35 = v28[2];
          v36 = *v28;
          v37 = v34[2];
          *v28 = *v34;
          v28[2] = v37;
          *v34 = v36;
          v34[2] = v35;
        }

LABEL_36:
        v28 += 3;
        --v30;
        if (v28 >= v29)
        {
          v28 = v64;
          v27 = v65;
LABEL_44:
          v8 = v50;
LABEL_45:
          v56 = 0;
          v57 = 0;
          v55 = &v56;
          if (v28 != v27)
          {
            do
            {
              sub_100005BA0(&v55, v28);
              v28 += 3;
            }

            while (v28 != v27 && v57 < 0x14);
          }

          v54[0] = 0;
          v54[1] = 0;
          v53 = v54;
          v40 = v8[9];
          v41 = v8 + 10;
          if (v40 != v41)
          {
            do
            {
              if (*(v40 + 103) < 0)
              {
                sub_100005F2C(__p, v40[10], v40[11]);
              }

              else
              {
                *__p = *(v40 + 5);
                *&v68 = v40[12];
              }

              *(&v68 + 1) = v40 + 7;
              *&v71 = 0;
              if (!*sub_100005C2C(&v53, &v71, __p))
              {
                operator new();
              }

              if (SBYTE7(v68) < 0)
              {
                operator delete(__p[0]);
              }

              v42 = v40[1];
              if (v42)
              {
                do
                {
                  v43 = v42;
                  v42 = *v42;
                }

                while (v42);
              }

              else
              {
                do
                {
                  v43 = v40[2];
                  v44 = *v43 == v40;
                  v40 = v43;
                }

                while (!v44);
              }

              v40 = v43;
            }

            while (v43 != v41);
          }

          sub_100074920(&v52, &v55);
          v46 = a1[4];
          v45 = a1[5];
          __p[0] = v50;
          __p[1] = v46;
          *&v68 = v45;
          if (v45)
          {
            atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
          }

          sub_101189FF8(&v68 + 1, &v53);
          v47 = a1[7];
          *&v70 = a1[6];
          *(&v70 + 1) = v47;
          if (v47)
          {
            atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
          }

          v73 = 0;
          operator new();
        }
      }
    }

    v39 = v50[5];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to get data app data usage", buf, 2u);
    }
  }
}

void sub_101189C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, char a13, char *a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t *a19, char *a20, uint64_t a21, int a22, std::random_device a23, std::random_device a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, void *a41, uint64_t a42, uint64_t a43)
{
  sub_100D5E874(v43 - 256);
  sub_101189D88(&__p);
  sub_100009970(&a13, a14);
  sub_1010DD940(a17);
  sub_100009970(&a19, a20);
  std::random_device::~random_device(&a23);
  a19 = &a33;
  sub_1000087B4(&a19);

  _Unwind_Resume(a1);
}

uint64_t sub_101189D3C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101189D88(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1010DD940(*(a1 + 32));
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_101189DCC(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x7FFFFFFE) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      LODWORD(v4) = 64;
      goto LABEL_16;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 >= 0x3F)
  {
LABEL_16:
    *(result + 48) = 0;
    v8 = -v4;
    v7 = -1;
    *(result + 56) = 0xFFFFFFFF >> v8;
    goto LABEL_17;
  }

  *(result + 48) = 0x3FFFFFFFuLL >> v4 << (v4 + 1);
  v6 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v6 = 0;
  }

  *(result + 56) = v6;
  if (v4 >= 0x1F)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0xFFFFFFFF >> ~v4;
  }

LABEL_17:
  *(result + 60) = v7;
  return result;
}

uint64_t sub_101189ED0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    result = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
        v12 = v6 - 1;
      }

      while (*(a1 + 40) <= v12);
      v13 = result << v5;
      if (v5 >= 0x40)
      {
        v13 = 0;
      }

      result = v13 + (v12 & *(a1 + 56));
      ++v3;
    }

    while (v3 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v14 = *(a1 + 24);
  if (v2 < v14)
  {
    v15 = *a1;
    v16 = *(a1 + 48);
    v17 = *(a1 + 16);
    v18 = *(a1 + 60);
    v19 = *v15;
    while (1)
    {
      v20 = v19 / 0xADC8;
      v21 = 48271 * (v19 % 0xADC8);
      v20 *= 3399;
      v9 = v21 >= v20;
      v22 = v21 - v20;
      if (v9)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0x7FFFFFFF;
      }

      v19 = v23 + v22;
      v24 = v19 - 1;
      if (v16 > v24)
      {
        v25 = result << (v17 + 1);
        if (v17 >= 0x3F)
        {
          v25 = 0;
        }

        result = v25 + (v24 & v18);
        if (++v2 == v14)
        {
          break;
        }
      }
    }

    *v15 = v19;
  }

  return result;
}

void *sub_101189FF8(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      v14 = 0;
      v6 = a1[1];
      if (*a1 == v3)
      {
        break;
      }

      v7 = v3;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (v9);
      }

      if ((sub_1000068BC(v8 + 4, v5 + 4) & 0x80) != 0)
      {
        if (!*v3)
        {
LABEL_14:
          v14 = v3;
LABEL_15:
          operator new();
        }

        goto LABEL_10;
      }

      v10 = sub_100005C2C(a1, &v14, v5 + 4);
LABEL_11:
      if (!*v10)
      {
        goto LABEL_15;
      }

      v11 = v5[1];
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
          v12 = v5[2];
          v9 = *v12 == v5;
          v5 = v12;
        }

        while (!v9);
      }

      v5 = v12;
      if (v12 == v4)
      {
        return a1;
      }
    }

    v8 = v3;
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_10:
    v14 = v8;
    v10 = v8 + 1;
    goto LABEL_11;
  }

  return a1;
}

void sub_10118A188(_Unwind_Exception *a1)
{
  operator delete(v1);
  sub_1010DD940(*v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10118A1AC(uint64_t a1)
{
  *a1 = off_101F15C20;
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1010DD940(*(a1 + 40));
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_10118A20C(uint64_t a1)
{
  *a1 = off_101F15C20;
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1010DD940(*(a1 + 40));
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void sub_10118A32C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_10118A34C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F15C20;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = sub_101189FF8((a2 + 32), (a1 + 32));
  v6 = *(a1 + 64);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10118A3D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10118A3E8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1010DD940(*(a1 + 40));
  v3 = *(a1 + 24);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_10118A440(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1010DD940(*(a1 + 40));
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(a1);
}

void sub_10118A494(void *a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v24 = a1[1];
    v5 = a1 + 5;
    do
    {
      v6 = (v3 + 4);
      v7 = *v5;
      if (*v5)
      {
        v8 = v5;
        do
        {
          v9 = sub_1000068BC((v7 + 32), v3 + 4);
          if ((v9 & 0x80u) == 0)
          {
            v8 = v7;
          }

          v7 = *(v7 + ((v9 >> 4) & 8));
        }

        while (v7);
        if (v8 != v5 && (sub_1000068BC(v3 + 4, (v8 + 32)) & 0x80) == 0)
        {
          v10 = *(v8 + 56);
          v11 = *(v10 + 68);
          v12 = *(v10 + 72);
          v13 = *(v10 + 52);
          v14 = (*&v13 - v11);
          v7 = (COERCE_FLOAT(HIDWORD(*(v10 + 52))) - v12);
          v15 = (vaddv_f32(*&v13) - (v11 + v12));
          *(v10 + 68) = v13;
          goto LABEL_14;
        }

        v15 = 0;
        v7 = 0;
      }

      else
      {
        v15 = 0;
      }

      v14 = 0;
LABEL_14:
      v40 = 0;
      v16 = xpc_dictionary_create(0, 0, 0);
      v17 = v16;
      if (v16)
      {
        v40 = v16;
      }

      else
      {
        v17 = xpc_null_create();
        v40 = v17;
        if (!v17)
        {
          v18 = xpc_null_create();
          v17 = 0;
          goto LABEL_21;
        }
      }

      if (xpc_get_type(v17) != &_xpc_type_dictionary)
      {
        v18 = xpc_null_create();
LABEL_21:
        v40 = v18;
        goto LABEL_22;
      }

      xpc_retain(v17);
LABEL_22:
      xpc_release(v17);
      if (*(v3 + 55) < 0)
      {
        v6 = *v6;
      }

      v38 = xpc_string_create(v6);
      if (!v38)
      {
        v38 = xpc_null_create();
      }

      v36 = &v40;
      v37 = "bundle_id";
      sub_10000F688(&v36, &v38, &v39);
      xpc_release(v39);
      v39 = 0;
      xpc_release(v38);
      v38 = 0;
      v34 = xpc_uint64_create(v14);
      if (!v34)
      {
        v34 = xpc_null_create();
      }

      v36 = &v40;
      v37 = "domestic_bytes";
      sub_10000F688(&v36, &v34, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v34);
      v34 = 0;
      v32 = xpc_uint64_create(v7);
      if (!v32)
      {
        v32 = xpc_null_create();
      }

      v36 = &v40;
      v37 = "roaming_bytes";
      sub_10000F688(&v36, &v32, &v33);
      xpc_release(v33);
      v33 = 0;
      xpc_release(v32);
      v32 = 0;
      v30 = xpc_int64_create(*(v24 + 48));
      if (!v30)
      {
        v30 = xpc_null_create();
      }

      v36 = &v40;
      v37 = "subscriber_tag";
      sub_10000F688(&v36, &v30, &v31);
      xpc_release(v31);
      v31 = 0;
      xpc_release(v30);
      v30 = 0;
      if (*(v3 + 14) == 1)
      {
        v19 = *(v3 + 60);
      }

      else
      {
        v19 = 0;
      }

      v28 = xpc_BOOL_create(v19);
      if (!v28)
      {
        v28 = xpc_null_create();
      }

      v36 = &v40;
      v37 = "switch_enabled";
      sub_10000F688(&v36, &v28, &v29);
      xpc_release(v29);
      v29 = 0;
      xpc_release(v28);
      v28 = 0;
      v26 = xpc_uint64_create(v15);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      v36 = &v40;
      v37 = "total_bytes";
      sub_10000F688(&v36, &v26, &v27);
      xpc_release(v27);
      v27 = 0;
      xpc_release(v26);
      v20 = a1[2];
      v25 = v40;
      v26 = 0;
      if (v40)
      {
        xpc_retain(v40);
      }

      else
      {
        v25 = xpc_null_create();
      }

      (*(*v20 + 16))(v20, "commCenterDataUsageAppSwitch", &v25);
      xpc_release(v25);
      v25 = 0;
      xpc_release(v40);
      v21 = v3[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v3[2];
          v23 = *v22 == v3;
          v3 = v22;
        }

        while (!v23);
      }

      v3 = v22;
    }

    while (v22 != v2);
  }
}

void sub_10118A8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v11 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_10118A930(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10118A97C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_101186FF0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_10118A9C8(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 56))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 56) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_10118AB1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t *sub_10118AB6C(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 136))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 136) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_10118ACC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t *sub_10118AD10(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 44))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 44) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_10118AE64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t *sub_10118AEB4(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 56))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 56) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_10118B008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

void sub_10118B058(void *a1)
{
  if (a1)
  {
    sub_10118B058(*a1);
    sub_10118B058(a1[1]);
    sub_10118B0AC((a1 + 4));

    operator delete(a1);
  }
}

void sub_10118B0AC(uint64_t a1)
{
  sub_100034450(*(a1 + 104));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10118B10C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10118B0AC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10118B1C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F15CB0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10118B1F4(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = v1[9];
  v3 = v1[8];
  if (v3 >= v2)
  {
    if (v2 == v1[10])
    {
      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v1 + 6), v2 + 1);
      v2 = v1[9];
    }

    v1[9] = v2 + 1;
    sub_101188A18();
  }

  v4 = *(v1 + 3);
  v1[8] = v3 + 1;
  return *(v4 + 8 * v3);
}

uint64_t sub_10118B278(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10118B2C4(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 44))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 44) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_10118B418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

uint64_t *sub_10118B468(uint64_t *a1)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 2);
  v12 = 0;
  v13 = 0;
  v3 = sub_10001C610(&v12);
  if (v12)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v3);
    v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      *a1 = 0;
      if (v7)
      {
        if (*(v7 + 44))
        {
          WISTimestamp = *(v7 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v5);
          *(v7 + 44) |= 1u;
          *(v7 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v6, WISTimestamp, *v6, v7);
        (*(*v7 + 8))(v7);
      }

      wis::WISServerConnection::SubmitMetric(v12, v6);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
LABEL_15:
    *a1 = 0;
  }

  return a1;
}

void sub_10118B5BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10004F058(a1);
}

void sub_10118B60C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10118B634(void *a1, id *a2, void *a3)
{
  if (!a3)
  {
    v5 = sub_100032AC8(a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[OS version] Parsing failed: Empty dictionary passed", buf, 2u);
    }

    goto LABEL_16;
  }

  v5 = a3;
  if (!sub_10118B7E8(v5, @"major_version", a1))
  {
    v7 = sub_100032AC8(a2);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v13 = 0;
    v8 = "Couldn't parse major_version";
    v9 = &v13;
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    goto LABEL_15;
  }

  if (!sub_10118B7E8(v5, @"minor_version", a1 + 1))
  {
    v7 = sub_100032AC8(a2);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v12 = 0;
    v8 = "Couldn't parse minor_version";
    v9 = &v12;
    goto LABEL_14;
  }

  if (!sub_10118B7E8(v5, @"patch_version", a1 + 2))
  {
    v7 = sub_100032AC8(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v8 = "Couldn't parse patch_version";
      v9 = &v11;
      goto LABEL_14;
    }

LABEL_15:

LABEL_16:
    v6 = 0;
    goto LABEL_17;
  }

  v6 = 1;
LABEL_17:

  return v6;
}

BOOL sub_10118B7E8(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    *a3 = [v4 integerValue];
  }

  return v5 != 0;
}

id sub_10118B844(__int128 *a1)
{
  v2 = +[NSProcessInfo processInfo];
  v5 = *a1;
  v6 = *(a1 + 2);
  v3 = [v2 isOperatingSystemAtLeastVersion:&v5];

  return v3;
}

void sub_10118B8B4(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  *(&v24.__r_.__value_.__s + 23) = 16;
  strcpy(&v24, "[Major version: ");
  std::to_string(&v23, *a1);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v23;
  }

  else
  {
    v4 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v24, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v25, ", Minor version: ", 0x11uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v22, a1[1]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v22;
  }

  else
  {
    v10 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v22.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v26, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v27, ", Patch version: ", 0x11uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v21, a1[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v21;
  }

  else
  {
    v16 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v21.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v28, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v29, "]", 1uLL);
  *a2 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_10118BAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void asString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v15, "], PhoneNumber: [", 0x11uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 24);
  v7 = a1 + 24;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v17, "]", 1uLL);
  *a2 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_10118BCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10118BE40(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    dispatch_release(v2);
    if (!v1)
    {
LABEL_3:
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  (*(*v1 + 8))(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

uint64_t sub_10118BEA0(uint64_t a1)
{
  v2 = (a1 + 24);
  v3 = *(a1 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315138;
    *&__p[4] = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Adjusted Status: %s", __p, 0xCu);
    v3 = *(a1 + 24);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asString();
    *__p = 136315138;
    *&__p[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Actual Status: %s", __p, 0xCu);
    v3 = *(a1 + 24);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *__p = 67109120;
    *&__p[4] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Registration Cause code: %d", __p, 8u);
    v3 = *(a1 + 24);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asString();
    *__p = 136315138;
    *&__p[4] = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I RAT: %s", __p, 0xCu);
    v3 = *(a1 + 24);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    *__p = 136315138;
    *&__p[4] = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Previous RAT: %s", __p, 0xCu);
    v3 = *(a1 + 24);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asString();
    *__p = 136315138;
    *&__p[4] = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband service provisioned: %s", __p, 0xCu);
  }

  v9 = *(a1 + 60);
  if (!v9)
  {
    v16 = *v2;
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    *__p = 0;
    v17 = "#I Last seen wireless tech: Unknown";
    goto LABEL_37;
  }

  if (v9)
  {
    v10 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Last seen wireless tech: baseband on", __p, 2u);
      v9 = *(a1 + 60);
    }
  }

  if ((v9 & 2) != 0)
  {
    v11 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Last seen wireless tech: wireless on", __p, 2u);
      v9 = *(a1 + 60);
    }
  }

  if ((v9 & 4) != 0)
  {
    v12 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Last seen wireless tech: GSM/UMTS", __p, 2u);
      v9 = *(a1 + 60);
    }
  }

  if ((v9 & 8) != 0)
  {
    v13 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Last seen wireless tech: C2K/EVDO", __p, 2u);
      v9 = *(a1 + 60);
    }
  }

  if ((v9 & 0x20) != 0)
  {
    v14 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Last seen wireless tech: LTE", __p, 2u);
      v9 = *(a1 + 60);
    }
  }

  if ((v9 & 0x40) != 0)
  {
    v15 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Last seen wireless tech: NRNSA", __p, 2u);
      v9 = *(a1 + 60);
    }
  }

  if ((v9 & 0x80) != 0)
  {
    v16 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      v17 = "#I Last seen wireless tech: NR";
LABEL_37:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, __p, 2u);
    }
  }

LABEL_38:
  v18 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = CSIBOOLAsString(*(a1 + 72));
    v20 = CSIBOOLAsString(*(a1 + 73));
    *__p = 136315394;
    *&__p[4] = v19;
    *&__p[12] = 2080;
    v94 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I RAT selection: in progress (%s) is internal (%s)", __p, 0x16u);
  }

  RatSelectionType::dumpState((a1 + 64), v2);
  v21 = *(a1 + 24);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = CSIBOOLAsString(*(a1 + 74));
    *__p = 136315138;
    *&__p[4] = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I CS Attached: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = CSIBOOLAsString(*(a1 + 530));
    *__p = 136315138;
    *&__p[4] = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I PS Attached: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = CSIBOOLAsString(*(a1 + 75));
    *__p = 136315138;
    *&__p[4] = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I IMS Registered: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v25 = CSIBOOLAsString(*(a1 + 84));
    *__p = 136315138;
    *&__p[4] = v25;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I IMS Registration started: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = CSIBOOLAsString(*(a1 + 86));
    *__p = 136315138;
    *&__p[4] = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I WLAN Mode: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v27 = CSIBOOLAsString(*(a1 + 88));
    *__p = 136315138;
    *&__p[4] = v27;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Cellular fallback: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v28 = CSIBOOLAsString(*(a1 + 89));
    *__p = 136315138;
    *&__p[4] = v28;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I IMS Voice Service: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v29 = sd::asString();
    *__p = 136315138;
    *&__p[4] = v29;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I IMS Service mask: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v30 = CSIBOOLAsString(*(a1 + 96));
    *__p = 136315138;
    *&__p[4] = v30;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I IMS deregistering for LTE: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v31 = CSIBOOLAsString(*(a1 + 97));
    v32 = asString();
    *__p = 136315394;
    *&__p[4] = v31;
    *&__p[12] = 2080;
    v94 = v32;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Saved enable LTE setting: %s (%s)", __p, 0x16u);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v33 = asString();
    *__p = 136315138;
    *&__p[4] = v33;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Data mode raw: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v34 = CSIBOOLAsString(*(a1 + 104));
    *__p = 136315138;
    *&__p[4] = v34;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Data mode hidden: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v35 = asString();
    *__p = 136315138;
    *&__p[4] = v35;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Data mode reported: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v36 = asString();
    *__p = 136315138;
    *&__p[4] = v36;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Data mode adjusted: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v37 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v37 = *v37;
    }

    *__p = 136446210;
    *&__p[4] = v37;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Operator long name: %{public}s", __p, 0xCu);
    v21 = *v2;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v38 = (a1 + 144);
    if (*(a1 + 167) < 0)
    {
      v38 = *v38;
    }

    *__p = 136446210;
    *&__p[4] = v38;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Operator short name: %{public}s", __p, 0xCu);
    v21 = *v2;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v39 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v39 = *v39;
    }

    *__p = 136446210;
    *&__p[4] = v39;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Operator name displayed: %{public}s", __p, 0xCu);
    v21 = *v2;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v40 = asString();
    *__p = 136315138;
    *&__p[4] = v40;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Operator name source: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v41 = *(a1 + 192);
    if (!v41)
    {
      v41 = &stru_101F6AFB8;
    }

    *__p = 138543362;
    *&__p[4] = v41;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Operator name for WiFi calling: %{public}@", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v42 = CSIBOOLAsString(*(a1 + 1568));
    *__p = 136315138;
    *&__p[4] = v42;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Call active: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v43 = asString();
    *__p = 136315138;
    *&__p[4] = v43;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Last call is type: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    IntValue = MCC::getIntValue((a1 + 216));
    *__p = 67109120;
    *&__p[4] = IntValue;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Network MCC: %d", __p, 8u);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v45 = MCC::getIntValue((a1 + 248));
    *__p = 67109120;
    *&__p[4] = v45;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Network MNC: %d", __p, 8u);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v46 = MCC::getIntValue((a1 + 280));
    *__p = 67109120;
    *&__p[4] = v46;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Last known MCC: %03d", __p, 8u);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    IntegerWidth = MNC::getIntegerWidth((a1 + 312));
    v48 = MCC::getIntValue((a1 + 312));
    *__p = 67109376;
    *&__p[4] = IntegerWidth;
    *&__p[8] = 1024;
    *&__p[10] = v48;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Last known MNC: %0.*d", __p, 0xEu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v49 = MCC::getIntValue((a1 + 344));
    *__p = 67109120;
    *&__p[4] = v49;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Last valid MCC: %03d", __p, 8u);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v50 = MNC::getIntegerWidth((a1 + 376));
    v51 = MCC::getIntValue((a1 + 376));
    *__p = 67109376;
    *&__p[4] = v50;
    *&__p[8] = 1024;
    *&__p[10] = v51;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Last valid MNC: %0.*d", __p, 0xEu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v52 = CSIBOOLAsString(*(a1 + 408));
    *__p = 136315138;
    *&__p[4] = v52;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Is in home country: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v53 = asString();
    *__p = 136315138;
    *&__p[4] = v53;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Is roaming: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v54 = asString();
    *__p = 136315138;
    *&__p[4] = v54;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Is roaming definite: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  v55 = *(a1 + 208);
  if (v55 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138543362;
    *&__p[4] = v55;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Operator display name PLMN: %{public}@", __p, 0xCu);
    v21 = *v2;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v56 = MCC::getIntValue((a1 + 440));
    *__p = 67109120;
    *&__p[4] = v56;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Network MCC for time update: %d", __p, 8u);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v57 = MCC::getIntValue((a1 + 472));
    *__p = 67109120;
    *&__p[4] = v57;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Network MNC for time update: %d", __p, 8u);
    v21 = *(a1 + 24);
  }

  if (*(a1 + 508) == 1 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v58 = asString();
    *__p = 136315138;
    *&__p[4] = v58;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Reg Notification Status: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (*(a1 + 516) == 1 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v59 = asString();
    *__p = 136315138;
    *&__p[4] = v59;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Reg Notification RAT: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (*(a1 + 521) == 1 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v60 = CSIBOOLAsString(*(a1 + 520));
    *__p = 136315138;
    *&__p[4] = v60;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Reg Notification SIM removal: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (*(a1 + 523) == 1 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v61 = CSIBOOLAsString(*(a1 + 522));
    *__p = 136315138;
    *&__p[4] = v61;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Reg Notification in home country: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (*(a1 + 525) == 1 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v62 = CSIBOOLAsString(*(a1 + 524));
    *__p = 136315138;
    *&__p[4] = v62;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Reg Notification call active: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (*(a1 + 527) == 1 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v63 = CSIBOOLAsString(*(a1 + 526));
    *__p = 136315138;
    *&__p[4] = v63;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Reg Notification is satellite system: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v64 = asString();
    *__p = 136315138;
    *&__p[4] = v64;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Reg Notification last call type: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v65 = CSIBOOLAsString(*(a1 + 528));
    *__p = 136315138;
    *&__p[4] = v65;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I WiFi IMS Registered: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v66 = CSIBOOLAsString(*(a1 + 531));
    *__p = 136315138;
    *&__p[4] = v66;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I LTE limited service: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v67 = asString();
    *__p = 136315138;
    *&__p[4] = v67;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I LTE Emergency Bearer Support: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v68 = asString();
    *__p = 136315138;
    *&__p[4] = v68;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I LTE Emergency Access Barred: %s", __p, 0xCu);
    v21 = *(a1 + 24);
  }

  v69 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v69)
  {
    v70 = CSIBOOLAsString(*(a1 + 540));
    *__p = 136315138;
    *&__p[4] = v70;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I IMS support for voice on LTE: %s", __p, 0xCu);
  }

  v71 = capabilities::ct::supportsVoNR(v69);
  v72 = *v2;
  if (v71)
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v73 = CSIBOOLAsString(*(a1 + 541));
      *__p = 136315138;
      *&__p[4] = v73;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I NR limited service: %s", __p, 0xCu);
      v72 = *(a1 + 24);
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v74 = asString();
      *__p = 136315138;
      *&__p[4] = v74;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I NR Emergency Support: %s", __p, 0xCu);
      v72 = *(a1 + 24);
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v75 = asString();
      *__p = 136315138;
      *&__p[4] = v75;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I NR Emergency Fallback Support: %s", __p, 0xCu);
      v72 = *(a1 + 24);
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v76 = CSIBOOLAsString(*(a1 + 552));
      *__p = 136315138;
      *&__p[4] = v76;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I IMS support for voice on NR: %s", __p, 0xCu);
      v72 = *(a1 + 24);
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v77 = CSIBOOLAsString(*(a1 + 554));
      *__p = 136315138;
      *&__p[4] = v77;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I Dynamic VoNR Enabled: %s", __p, 0xCu);
      v72 = *(a1 + 24);
    }
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v78 = asString();
    *__p = 136315138;
    *&__p[4] = v78;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I Encryption Status: %s", __p, 0xCu);
    v72 = *(a1 + 24);
  }

  v79 = os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
  if (v79)
  {
    v80 = CSIBOOLAsString(*(a1 + 87));
    *__p = 136315138;
    *&__p[4] = v80;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I fIsOnIWLanOverCellular: %s", __p, 0xCu);
  }

  v81 = capabilities::ct::supports5G(v79);
  if (v81)
  {
    v82 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v83 = printers::asString();
      *__p = 136315138;
      *&__p[4] = v83;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I Show 5G Standalone switch: %s", __p, 0xCu);
      v82 = *(a1 + 24);
    }

    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v84 = printers::asString();
      *__p = 136315138;
      *&__p[4] = v84;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone user setting: %s", __p, 0xCu);
      v82 = *(a1 + 24);
    }

    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v85 = printers::asString();
      *__p = 136315138;
      *&__p[4] = v85;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone carrier setting: %s", __p, 0xCu);
      v82 = *(a1 + 24);
    }

    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      asStringUiMask(__p, *(a1 + 1608));
      if (v95 >= 0)
      {
        v86 = __p;
      }

      else
      {
        v86 = *__p;
      }

      *buf = 136446210;
      v97 = v86;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I fDataUiModifierMask: %{public}s", buf, 0xCu);
      if (v95 < 0)
      {
        operator delete(*__p);
      }

      v82 = *v2;
    }

    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      rest::SlicingSupportInfo::toString(__p, (a1 + 1616));
      if (v95 >= 0)
      {
        v87 = __p;
      }

      else
      {
        v87 = *__p;
      }

      *buf = 136446210;
      v97 = v87;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I Slicing Configuration: %{public}s", buf, 0xCu);
      if (v95 < 0)
      {
        operator delete(*__p);
      }

      v82 = *v2;
    }

    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      rest::SlicingSupportInfo::toString(__p, (a1 + 1620));
      if (v95 >= 0)
      {
        v88 = __p;
      }

      else
      {
        v88 = *__p;
      }

      *buf = 136446210;
      v97 = v88;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I Slicing Support: %{public}s", buf, 0xCu);
      if (v95 < 0)
      {
        operator delete(*__p);
      }

      v82 = *v2;
    }

    v81 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
    if (v81)
    {
      v89 = asStringBool(*(a1 + 1624));
      *__p = 136446210;
      *&__p[4] = v89;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I fSlicingActive: %{public}s", __p, 0xCu);
    }
  }

  if (capabilities::ct::supports5G(v81))
  {
    *__p = *(a1 + 1612);
    if ((*__p & 0x1000000) != 0)
    {
      rest::NREntitlementStatus::dumpState(__p, v2);
    }
  }

  v90 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v91 = printers::asString();
    *__p = 136315138;
    *&__p[4] = v91;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "#I Camp Only Result: %s", __p, 0xCu);
  }

  RegisteredNetworkInfo::dumpState((a1 + 560), "RegisteredNetworkInfo", v2);
  return (*(**(a1 + 424) + 72))(*(a1 + 424));
}

void sub_10118D6D4(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(a1 + 1416));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/baseband_activated");
  operator new();
}

void sub_10118DB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10118DB7C(uint64_t a1, int a2)
{
  v2 = *(a1 + 1520);
  if (v2 == a2)
  {
    return;
  }

  v4 = *(a1 + 24);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  v5 = "not activated";
  if (v2)
  {
    v5 = "activated";
  }

  v6 = 136315138;
  v7 = v5;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband is now %s", &v6, 0xCu);
  if (*(a1 + 1520))
  {
    v4 = *(a1 + 24);
LABEL_8:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Evaluating operator name after baseband activated", &v6, 2u);
    }

    (*(*a1 + 360))(a1);
  }
}

uint64_t sub_10118DCC0(uint64_t result, void *a2)
{
  v2 = result;
  if (a2[2] == *(result + 1600))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
      return result;
    }

    v4 = *(result + 1584);
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
        return result;
      }
    }
  }

  else
  {
    v4 = *(result + 1584);
  }

  v11 = (result + 1592);
  if (v4 != (result + 1592))
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
      if (v15 == v12 || v14 < *(v15 + 7) || *(v15 + 32) != *(v4 + 32))
      {
LABEL_32:
        if (v2[374] == v14)
        {
          result = (*(*v2 + 360))(v2);
        }
      }

      v16 = v4[1];
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
          v17 = v4[2];
          v6 = *v17 == v4;
          v4 = v17;
        }

        while (!v6);
      }

      v4 = v17;
    }

    while (v17 != v11);
  }

  return result;
}

uint64_t sub_10118DE6C(uint64_t a1)
{
  cf = 0;
  (*(**(a1 + 1432) + 40))(buf);
  sub_10010B240(&cf, buf);
  sub_10000A1EC(buf);
  if (cf)
  {
    LOWORD(v48) = 0;
    ctu::cf::assign(&v48, cf, v2);
    MCC::MCC(buf, v48);
    MCC::operator=();
    if (SHIBYTE(v53) < 0)
    {
      operator delete(*&v51[4]);
    }
  }

  sub_100029A48(&cf);
  cf = 0;
  (*(**(a1 + 1432) + 40))(buf);
  sub_10010B240(&cf, buf);
  sub_10000A1EC(buf);
  if (cf)
  {
    LOWORD(v48) = 0;
    ctu::cf::assign(&v48, cf, v3);
    MNC::MNC(buf, v48, (a1 + 280));
    MCC::operator=();
    if (SHIBYTE(v53) < 0)
    {
      operator delete(*&v51[4]);
    }
  }

  v4 = sub_100029A48(&cf);
  v5 = capabilities::ct::supportsGemini(v4);
  if (v5)
  {
    if (*(a1 + 1384))
    {
      v6 = *(a1 + 1496);
      v7 = @"5GStandaloneEnabled?";
      if (v6 == 2)
      {
        v7 = @"5GStandaloneEnabled2";
      }

      if (v6 == 1)
      {
        v8 = @"5GStandaloneEnabled";
      }

      else
      {
        v8 = v7;
      }

      v48 = 0;
      (*(**(a1 + 1432) + 40))(buf);
      sub_10002FE1C(&v48, buf);
      sub_10000A1EC(buf);
      if (v48)
      {
        cf = 0;
        v46 = 0;
        v47 = 0;
        PersonalityIdFromSlotId();
        if (isReal())
        {
          v9 = *(a1 + 24);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v11 = HIBYTE(v47);
            if (v47 < 0)
            {
              v11 = v46;
            }

            p_cf = &cf;
            if (v47 < 0)
            {
              p_cf = cf;
            }

            if (v11)
            {
              v13 = p_cf;
            }

            else
            {
              v13 = "<invalid>";
            }

            v49 = 0;
            ctu::cf::assign(&v49, v48, v10);
            v14 = CSIBOOLAsString(v49);
            *buf = 136315650;
            *v51 = v13;
            *&v51[8] = 2114;
            *&v51[10] = v8;
            v52 = 2080;
            v53 = v14;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Migration -- %s : key: %{public}@, value: %s", buf, 0x20u);
          }

          if ((*(**(a1 + 1384) + 48))(*(a1 + 1384), &cf, @"5GStandaloneEnabled", v48, @"RegistrationModel", 0, 1, 0))
          {
            v15 = *(a1 + 24);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v41 = HIBYTE(v47);
              if (v47 < 0)
              {
                v41 = v46;
              }

              v42 = &cf;
              if (v47 < 0)
              {
                v42 = cf;
              }

              if (v41)
              {
                v43 = v42;
              }

              else
              {
                v43 = "<invalid>";
              }

              v49 = 0;
              ctu::cf::assign(&v49, v48, v16);
              v44 = CSIBOOLAsString(v49);
              *buf = 136315394;
              *v51 = v43;
              *&v51[8] = 2080;
              *&v51[10] = v44;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s : failed to store 5G Standalone enabled user setting : %s", buf, 0x16u);
            }
          }
        }

        v17 = *(a1 + 24);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v51 = v8;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Erase : key : %{public}@", buf, 0xCu);
        }

        (*(**(a1 + 1432) + 16))(*(a1 + 1432), v8, 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(cf);
        }
      }

      else
      {
        v19 = *(a1 + 24);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v51 = v8;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I No migration for existing 5G Standalone enabled user setting with key : %{public}@", buf, 0xCu);
        }
      }

      v5 = sub_100045C8C(&v48);
    }

    else
    {
      v18 = *(a1 + 24);
      v5 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);
      if (v5)
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", buf, 2u);
      }
    }
  }

  if (capabilities::ct::supports5G(v5))
  {
    sub_10118E7B4(a1);
    cf = 0;
    (*(**(a1 + 1368) + 80))(&cf);
    v20 = cf;
    v21 = *(a1 + 24);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (!v20)
    {
      if (v22)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Missing carrier 5G Standalone enabled by default value", buf, 2u);
      }

LABEL_50:
      sub_10000A1EC(&cf);
      cf = 0;
      (*(**(a1 + 1368) + 80))(&cf);
      v29 = cf;
      v30 = *(a1 + 24);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (!v29)
      {
        if (v31)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Missing carrier 5G Standalone show switch value", buf, 2u);
        }

        goto LABEL_63;
      }

      if (v31)
      {
        LOBYTE(v48) = 0;
        v32 = CFGetTypeID(v29);
        if (v32 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&v48, v29, v33);
          v34 = v48;
        }

        else
        {
          v34 = 0;
        }

        v35 = CSIBOOLAsString(v34 & 1);
        *buf = 136315138;
        *v51 = v35;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Restored carrier 5G Standalone show switch value: %s", buf, 0xCu);
        v29 = cf;
        buf[0] = 0;
        if (!cf)
        {
          goto LABEL_61;
        }
      }

      else
      {
        buf[0] = 0;
      }

      v36 = CFGetTypeID(v29);
      if (v36 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v29, v37);
        v38 = buf[0];
LABEL_62:
        *(a1 + 1574) = v38 | 0x100;
LABEL_63:
        sub_10000A1EC(&cf);
        goto LABEL_64;
      }

LABEL_61:
      v38 = 0;
      goto LABEL_62;
    }

    if (v22)
    {
      LOBYTE(v48) = 0;
      v23 = CFGetTypeID(v20);
      if (v23 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v48, v20, v24);
      }

      v25 = CSIBOOLAsString(v48);
      *buf = 136315138;
      *v51 = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Restored carrier 5G Standalone enabled by default value: %s", buf, 0xCu);
      v20 = cf;
      buf[0] = 0;
      if (!cf)
      {
        goto LABEL_48;
      }
    }

    else
    {
      buf[0] = 0;
    }

    v26 = CFGetTypeID(v20);
    if (v26 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v20, v27);
      v28 = buf[0];
LABEL_49:
      *(a1 + 1572) = v28 | 0x100;
      goto LABEL_50;
    }

LABEL_48:
    v28 = 0;
    goto LABEL_49;
  }

LABEL_64:
  (*(**(a1 + 424) + 24))(*(a1 + 424));
  v39 = *(*a1 + 872);

  return v39(a1);
}

void sub_10118E714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100045C8C(&a16);
  _Unwind_Resume(a1);
}

const void **sub_10118E7B4(uint64_t a1)
{
  *type = 0;
  if (capabilities::ct::supportsGemini(a1))
  {
    if (*(a1 + 1384))
    {
      v17 = 0uLL;
      v18 = 0;
      PersonalityIdFromSlotId();
      if (isReal())
      {
        (*(**(a1 + 1384) + 64))(&v13);
        sub_10002FE1C(&v14, &v13);
        v2 = *type;
        *type = v14;
        *buf = v2;
        v14 = 0;
        sub_100045C8C(buf);
        sub_100045C8C(&v14);
        sub_10000A1EC(&v13);
        if (*type)
        {
          buf[0] = 0;
          ctu::cf::assign(buf, *type, v3);
          *(a1 + 1570) = buf[0] | 0x100;
          v4 = *(a1 + 24);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v5 = printers::asString();
            *buf = 136315138;
            *&buf[4] = v5;
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Restored 5G Standalone enabled user setting to %s", buf, 0xCu);
          }
        }

        else
        {
          v12 = *(a1 + 24);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Clear cached value of 5G Standalone user setting", buf, 2u);
          }

          if (*(a1 + 1571) == 1)
          {
            *(a1 + 1571) = 0;
          }
        }
      }

      else
      {
        v10 = *(a1 + 24);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Personality unknown", buf, 2u);
        }
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17);
      }
    }

    else
    {
      v9 = *(a1 + 24);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v17) = 0;
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &v17, 2u);
      }
    }
  }

  else
  {
    (*(**(a1 + 1432) + 40))(&v14);
    sub_10002FE1C(buf, &v14);
    *&v17 = *type;
    *type = *buf;
    *buf = 0;
    sub_100045C8C(&v17);
    sub_100045C8C(buf);
    sub_10000A1EC(&v14);
    if (*type)
    {
      LOBYTE(v17) = 0;
      ctu::cf::assign(&v17, *type, v6);
      *(a1 + 1570) = v17 | 0x100;
      v7 = *(a1 + 24);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = printers::asString();
        LODWORD(v17) = 136315138;
        *(&v17 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Restored 5G Standalone enabled user setting to %s", &v17, 0xCu);
      }
    }
  }

  return sub_100045C8C(type);
}

void sub_10118EB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, const void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_100045C8C(&a16);
  _Unwind_Resume(a1);
}

void sub_10118EB94(uint64_t a1)
{
  if (*(a1 + 1496) == 1)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 1416));
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
    *buf = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, buf);
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
        if (!v10)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
    }

    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
LABEL_8:
      v12 = *(a1 + 24);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not migrate last known PLMN", buf, 2u);
      }

      goto LABEL_34;
    }

LABEL_12:
    *v28 = 0;
    sub_10000501C(buf, "RegistrationModel::fLastKnownServingMCC");
    v13 = (*(*v10 + 24))(v10, buf, v28);
    v14 = v13;
    if (SBYTE7(v34) < 0)
    {
      operator delete(*buf);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    else if (!v13)
    {
      goto LABEL_22;
    }

    v15 = *(a1 + 24);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *v28;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Migrating last known MCC from %03lld", buf, 0xCu);
    }

    sub_10000501C(buf, "RegistrationModel::fLastKnownServingMCC");
    (*(*v10 + 96))(v10, buf);
    if (SBYTE7(v34) < 0)
    {
      operator delete(*buf);
    }

    MCC::MCC(v25, v28[0]);
    (*(*a1 + 416))(a1, v25);
    if (v27 < 0)
    {
      operator delete(__p);
    }

LABEL_22:
    *v24 = 0;
    sub_10000501C(buf, "RegistrationModel::fLastKnownServingMNC");
    v16 = (*(*v10 + 24))(v10, buf, v24);
    v17 = v16;
    if (SBYTE7(v34) < 0)
    {
      operator delete(*buf);
      if (!v17)
      {
        goto LABEL_34;
      }
    }

    else if (!v16)
    {
LABEL_34:
      if ((v11 & 1) == 0)
      {
        sub_100004A34(v9);
      }

      return;
    }

    *buf = 0u;
    v34 = 0u;
    MNC::MNC(buf, v24[0], (a1 + 280));
    v18 = *(a1 + 24);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      IntegerWidth = MNC::getIntegerWidth(buf);
      IntValue = MCC::getIntValue(buf);
      *v29 = 67109376;
      *&v29[4] = IntegerWidth;
      v30 = 1024;
      v31 = IntValue;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Migrating last known MNC from %0.*d", v29, 0xEu);
    }

    sub_10000501C(v29, "RegistrationModel::fLastKnownServingMNC");
    (*(*v10 + 96))(v10, v29);
    if (v32 < 0)
    {
      operator delete(*v29);
    }

    MCC::MCC(&v21, buf);
    (*(*a1 + 424))(a1, &v21);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(*&buf[8]);
    }

    goto LABEL_34;
  }
}

void sub_10118EFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  if ((v31 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_10118F06C(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10118F064);
}

uint64_t RegistrationModel::RegistrationModel(uint64_t a1, void *a2, void *a3, dispatch_object_t *a4, uint64_t a5)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v10 = "reg.mdl";
  if (a5 == 2)
  {
    v10 = "reg.mdl.2";
  }

  if (a5 == 1)
  {
    v11 = "reg.mdl.1";
  }

  else
  {
    v11 = v10;
  }

  ctu::OsLogContext::OsLogContext(&v18, kCtLoggingSystemName, v11);
  ctu::OsLogLogger::OsLogLogger(v19, &v18);
  ctu::OsLogLogger::OsLogLogger((a1 + 24), v19);
  ctu::OsLogLogger::~OsLogLogger(v19);
  ctu::OsLogContext::~OsLogContext(&v18);
  *a1 = off_101F15D30;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_1019258B0;
  RatSelectionType::RatSelectionType((a1 + 64));
  *(a1 + 120) = 0u;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  *(a1 + 80) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 208) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 95) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  MCC::MCC((a1 + 216));
  MNC::MNC((a1 + 248));
  MCC::MCC((a1 + 280));
  MNC::MNC((a1 + 312));
  MCC::MCC((a1 + 344));
  MNC::MNC((a1 + 376));
  *(a1 + 408) = 0;
  *(a1 + 412) = 0;
  (*(**a3 + 88))(*a3, a5);
  MCC::MCC((a1 + 440));
  MNC::MNC((a1 + 472));
  *(a1 + 504) = 0;
  *(a1 + 508) = 0;
  *(a1 + 512) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 529) = 1;
  *(a1 + 531) = 0;
  *(a1 + 532) = 2;
  *(a1 + 540) = 0;
  *(a1 + 544) = 0x200000002;
  *(a1 + 552) = 0;
  *(a1 + 554) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 560));
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1368) = 0u;
  v12 = a2[1];
  *(a1 + 1416) = *a2;
  *(a1 + 1424) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  (*(**a3 + 96))();
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1496) = a5;
  if (a5 > 3)
  {
    v13 = "???";
  }

  else
  {
    v13 = off_101F16310[a5];
  }

  sub_10000501C(&__p, v13);
  v15 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
  }

  ctu::RestModule::RestModule();
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v17 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 1520) = 0;
  *(a1 + 1524) = 0u;
  *(a1 + 1540) = 0u;
  *(a1 + 1560) = 4;
  *(a1 + 1564) = 0;
  *(a1 + 1568) = 256;
  *(a1 + 1592) = 0u;
  *(a1 + 1570) = 0;
  *(a1 + 1584) = a1 + 1592;
  *(a1 + 1608) = 0;
  *(a1 + 1612) = 0;
  *(a1 + 1615) = 0;
  *(a1 + 1620) = 0;
  return a1;
}

void sub_10118F3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v20 = *(v16 + 1488);
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = *(v16 + 1472);
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = *(v16 + 1456);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(v16 + 1440);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v16 + 1424);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v16 + 1408);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v16 + 1392);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v16 + 1376);
  if (v27)
  {
    sub_100004A34(v27);
  }

  sub_10004543C(v16 + 560);
  if (*(v16 + 503) < 0)
  {
    operator delete(*(v16 + 480));
  }

  if (*(v16 + 471) < 0)
  {
    operator delete(*(v16 + 448));
  }

  v28 = *(v16 + 432);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (*(v16 + 407) < 0)
  {
    operator delete(*(v16 + 384));
  }

  if (*(v16 + 375) < 0)
  {
    operator delete(*(v16 + 352));
  }

  if (*(v16 + 343) < 0)
  {
    operator delete(*(v16 + 320));
  }

  if (*(v16 + 311) < 0)
  {
    operator delete(*(v16 + 288));
  }

  if (*(v16 + 279) < 0)
  {
    operator delete(*(v16 + 256));
  }

  if (*(v16 + 247) < 0)
  {
    operator delete(*(v16 + 224));
  }

  sub_100005978(v17);
  sub_100005978((v18 + 72));
  if (*(v16 + 191) < 0)
  {
    operator delete(*(v16 + 168));
  }

  if (*(v16 + 167) < 0)
  {
    operator delete(*(v16 + 144));
  }

  if (*(v16 + 143) < 0)
  {
    operator delete(*v18);
  }

  v29 = *(v16 + 40);
  *(v16 + 40) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  ctu::OsLogLogger::~OsLogLogger((v16 + 24));
  v30 = *(v16 + 16);
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  RegistrationModelInterface::~RegistrationModelInterface(v16);
  _Unwind_Resume(a1);
}

void sub_10118F5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x10118F5ACLL);
}

void sub_10118F618(uint64_t a1)
{
  *a1 = off_101F15D30;
  sub_10006DCAC(a1 + 1584, *(a1 + 1592));
  v2 = *(a1 + 1528);
  if (v2)
  {
    *(a1 + 1536) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1512);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 1488);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 1472);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 1456);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 1440);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 1424);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 1408);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 1392);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(a1 + 1376);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_10004543C(a1 + 560);
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
  }

  v12 = *(a1 + 432);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  sub_100005978((a1 + 208));
  sub_100005978((a1 + 192));
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v13 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
  v14 = *(a1 + 16);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  RegistrationModelInterface::~RegistrationModelInterface(a1);
}

void sub_10118F80C(uint64_t a1)
{
  sub_10118F618(a1);

  operator delete();
}

void sub_10118F844(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = MCC::getIntValue((a1 + 344));
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Resetting the last known valid MCC: %03d", v3, 8u);
  }

  MCC::MCC(v3);
  MCC::operator=();
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_10118F90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10118F930(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109376;
    v3[1] = MNC::getIntegerWidth((a1 + 376));
    LOWORD(__p) = 1024;
    *(&__p + 2) = MCC::getIntValue((a1 + 376));
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Resetting the last known valid MNC: %0.*d", v3, 0xEu);
  }

  MNC::MNC(v3);
  MCC::operator=();
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_10118FA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10118FA3C(uint64_t a1, MCC *a2)
{
  result = MCC::operator!=();
  if (result)
  {
    v5 = *(a1 + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = MCC::getIntValue(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Setting last known MCC to %03d", buf, 8u);
    }

    MCC::operator=();
    valuePtr = MCC::getIntValue((a1 + 280));
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &valuePtr);
    *buf = v6;
    v7 = *(a1 + 1496);
    v8 = @"LastKnownServingMcc?";
    if (v7 == 2)
    {
      v8 = @"LastKnownServingMcc2";
    }

    if (v7 == 1)
    {
      v9 = @"LastKnownServingMcc";
    }

    else
    {
      v9 = v8;
    }

    (*(**(a1 + 1432) + 16))(*(a1 + 1432), v9, v6, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    return sub_100029A48(buf);
  }

  return result;
}

void sub_10118FBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

const void **sub_10118FBCC(uint64_t a1, MNC *a2)
{
  result = MCC::operator!=();
  if (result)
  {
    v5 = *(a1 + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = MNC::getIntegerWidth(a2);
      v12 = 1024;
      IntValue = MCC::getIntValue(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Setting last known MNC to %0.*d", buf, 0xEu);
    }

    MCC::operator=();
    valuePtr = MCC::getIntValue((a1 + 312));
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &valuePtr);
    *buf = v6;
    v7 = *(a1 + 1496);
    v8 = @"LastKnownServingMnc?";
    if (v7 == 2)
    {
      v8 = @"LastKnownServingMnc2";
    }

    if (v7 == 1)
    {
      v9 = @"LastKnownServingMnc";
    }

    else
    {
      v9 = v8;
    }

    (*(**(a1 + 1432) + 16))(*(a1 + 1432), v9, v6, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    return sub_100029A48(buf);
  }

  return result;
}

void sub_10118FD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10118FD70(_BYTE *a1)
{
  if (a1[86] == 1 && (a1[75] & 1) != 0)
  {
    return 4;
  }

  else
  {
    return (*(*a1 + 72))();
  }
}

void sub_10118FDB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(*v2 + 56))(v2);
  v4 = *(v2 + 32);
  v5 = *(v2 + 24);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == v3)
  {
    if (v6)
    {
      v12 = 136315138;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Registration status adjust timer has expired with adjusted status: %s matching current status", &v12, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v12 = 136315394;
      v13 = asString();
      v14 = 2080;
      v15 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Adjust timer has expired, changing adjusted registration status from %s to %s", &v12, 0x16u);
    }

    *(v2 + 32) = v3;
    v7 = *(a1 + 64);
    if (!v7)
    {
      sub_100022DB4();
    }

    (*(*v7 + 48))(v7);
    v8 = *(v2 + 32);
    if (*(v2 + 516) == 1)
    {
      v9 = *(v2 + 512);
    }

    else
    {
      v9 = 11;
    }

    if (*(v2 + 521) == 1)
    {
      v10 = *(v2 + 520);
    }

    else
    {
      v10 = 0;
    }

    v11 = (*(*v2 + 112))(v2);
    (*(*v2 + 656))(v2, v8, v9, v10 & 1, v11);
  }
}

void sub_10118FFCC(uint64_t a1, int a2)
{
  v2 = *(a1 + 408);
  if (v2 != a2)
  {
    v5 = *(a1 + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = CSIBOOLAsString(v2);
      v8 = 2080;
      v9 = CSIBOOLAsString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Changing in home country status from %s to %s", &v6, 0x16u);
    }

    *(a1 + 408) = a2;
  }
}

void sub_1011900B4(unsigned __int8 *a1, int a2, int a3)
{
  if ((*(*a1 + 544))(a1))
  {
    v6 = a1[1560] == 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(*a1 + 544))(a1);
  if (v6 != a2)
  {
    v8 = *(a1 + 3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = CSIBOOLAsString(a2);
      v25 = 2080;
      v26 = CSIBOOLAsString(v6);
      v27 = 2080;
      v28 = CSIBOOLAsString(v7);
      v9 = "#I Sending data attached event due to data attached change from %s to %s, dataAttachedRaw %s";
      v10 = v8;
      v11 = 32;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v23, v11);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v12 = a1[1560];
  v13 = *(a1 + 3);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12 != a3)
  {
    if (v14)
    {
      v23 = 136315906;
      v24 = CSIBOOLAsString(v6);
      v25 = 2080;
      v26 = asString();
      v27 = 2080;
      v28 = asString();
      v29 = 2080;
      v30 = CSIBOOLAsString(v7);
      v9 = "#I Sending data attached event %s due to service provisioned change from %s to %s, dataAttachedRaw %s";
      v10 = v13;
      v11 = 42;
      goto LABEL_16;
    }

LABEL_17:
    v20 = *(a1 + 183);
    v21 = *(a1 + 374);
    v22 = (*(*a1 + 536))(a1);
    (*(*v20 + 48))(v20, v21, v22);
    return;
  }

  if (v14)
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Not sending data attached or not attached event", &v23, 2u);
    v13 = *(a1 + 3);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = CSIBOOLAsString(a2);
    v16 = CSIBOOLAsString(v6);
    v17 = CSIBOOLAsString(v7);
    v23 = 136315650;
    v24 = v15;
    v25 = 2080;
    v26 = v16;
    v27 = 2080;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Previous data attached status (%s) matches current (%s), dataAttachedRaw %s", &v23, 0x20u);
    v13 = *(a1 + 3);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = asString();
    v19 = asString();
    v23 = 136315394;
    v24 = v18;
    v25 = 2080;
    v26 = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Previous service provisioned status (%s) matches current (%s)", &v23, 0x16u);
  }
}

void sub_10119043C(uint64_t a1, int a2)
{
  if (*(a1 + 76) != a2)
  {
    v4 = *(a1 + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = Lazuli::asString();
      v7 = 2080;
      v8 = Lazuli::asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Changing Lazuli registration status from %s to %s", &v5, 0x16u);
    }

    *(a1 + 76) = a2;
  }
}

uint64_t sub_101190514(uint64_t result, int a2, int a3)
{
  v5 = result;
  v6 = *(result + 80);
  if (v6 != a2 || *(result + 81) != a3)
  {
    v7 = *(result + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v5[81];
      v9[0] = 67109888;
      v9[1] = v6;
      v10 = 1024;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Changing Lazuli service capabilities: Push %{BOOL}d->%{BOOL}d, PrivateRelay %{BOOL}d->%{BOOL}d", v9, 0x1Au);
    }

    v5[80] = a2;
    v5[81] = a3;
    return (*(*v5 + 360))(v5);
  }

  return result;
}

uint64_t sub_101190634(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v9 = *(a1 + 75);
  if (v9 != a2)
  {
    v11 = *(a1 + 24);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315650;
      v27 = CSIBOOLAsString(v9);
      v28 = 2080;
      v29 = CSIBOOLAsString(a2);
      v30 = 2080;
      v31 = CSIBOOLAsString(a4);
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Changing IMS registration status from %s to %s (iTech %s)", &v26, 0x20u);
    }

    *(a1 + 75) = a2;
    if (a2 && *(a1 + 84) == 1)
    {
      v12 = *(a1 + 24);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Reset IMS registration started", &v26, 2u);
      }

      *(a1 + 84) = 0;
    }
  }

  v13 = *(a1 + 85);
  if (v13 != a3)
  {
    v14 = *(a1 + 24);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = CSIBOOLAsString(v13);
      v16 = CSIBOOLAsString(a3);
      v26 = 136315394;
      v27 = v15;
      v28 = 2080;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Changing IMS disabled from %s to %s", &v26, 0x16u);
    }

    *(a1 + 85) = a3;
    if (a3 && *(a1 + 84) == 1)
    {
      v17 = *(a1 + 24);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Reset IMS registration started", &v26, 2u);
      }

      *(a1 + 84) = 0;
    }
  }

  v18 = *(a1 + 87);
  if (v18 != a5)
  {
    v19 = *(a1 + 24);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = CSIBOOLAsString(v18);
      v21 = CSIBOOLAsString(a5);
      v26 = 136315394;
      v27 = v20;
      v28 = 2080;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Changing IMS iWLAN over cellular from %s to %s", &v26, 0x16u);
    }

    *(a1 + 87) = a5;
  }

  *(a1 + 86) = a4;
  v22 = (*(*a1 + 72))(a1);
  v23 = (*(*a1 + 472))(a1);
  v24 = (*(*a1 + 112))(a1);
  return (*(*a1 + 656))(a1, v22, v23, 0, v24);
}

void sub_1011909B0(uint64_t a1, int a2)
{
  v2 = *(a1 + 84);
  if (v2 != a2)
  {
    v5 = *(a1 + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = CSIBOOLAsString(v2);
      v8 = 2080;
      v9 = CSIBOOLAsString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Changing IMS reg started from %s to %s", &v6, 0x16u);
    }

    *(a1 + 84) = a2;
  }
}

void sub_101190A88(uint64_t a1, int a2)
{
  if (*(a1 + 92) != a2)
  {
    v4 = *(a1 + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = sd::asString();
      v7 = 2080;
      v8 = sd::asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Changing IMS registration service mask from [%s] to [%s]", &v5, 0x16u);
    }

    *(a1 + 92) = a2;
    *(a1 + 89) = a2 & *(a1 + 75);
  }
}

uint64_t sub_101190B74(uint64_t a1)
{
  v5[0] = 0;
  v2 = (*(*a1 + 688))(a1, 11);
  LOBYTE(v5[0]) = v2;
  v5[1] = (*(*a1 + 712))(a1, 11);
  v5[2] = (*(*a1 + 720))(a1, 11);
  v3 = *(a1 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v7 = asStringBool(v2);
    v8 = 2080;
    v9 = asString();
    v10 = 2080;
    v11 = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Updating emergency IMS support: LimitedService: %s, BearerSupport: %s, AccessBarred: %s", buf, 0x20u);
  }

  return (*(**(a1 + 1464) + 296))(*(a1 + 1464), *(a1 + 1496), v5);
}

void sub_101190D58(uint64_t a1, int a2)
{
  if (*(a1 + 56) != a2)
  {
    v4 = *(a1 + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = asString();
      v7 = 2080;
      v8 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Previous RAT changing from %s to %s", &v5, 0x16u);
    }

    *(a1 + 56) = a2;
  }
}

uint64_t sub_101190E30(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = RatSelectionType::operator!=();
  if (v3)
  {
    v4 = *(a1 + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I RAT selection result changing", v6, 2u);
    }

    RatSelectionType::dumpState((a1 + 64), (a1 + 24));
    RatSelectionType::dumpState(&v7, (a1 + 24));
    *(a1 + 64) = v7;
  }

  return v3;
}

uint64_t sub_101190EDC(uint64_t a1, int a2)
{
  v3 = *(a1 + 540);
  if (v3 != a2)
  {
    v5 = *(a1 + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = CSIBOOLAsString(v3);
      v12 = 2080;
      v13 = CSIBOOLAsString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I IMS voice support on LTE is changing from %s to %s", &v10, 0x16u);
    }

    *(a1 + 540) = a2;
  }

  v6 = *(a1 + 1464);
  v7 = *(a1 + 1496);
  if ((*(*a1 + 616))(a1))
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  return (*(*v6 + 128))(v6, v7, v8);
}

void sub_101191024(uint64_t a1, int a2)
{
  if (*(a1 + 1608) == a2)
  {
    return;
  }

  *(a1 + 1608) = a2;
  if (!capabilities::ct::supports5G(a1))
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 1416));
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_10:
    std::mutex::unlock(v4);
    v10 = 0;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
LABEL_11:
  v12 = (*(*v11 + 32))(v11);
  v13 = v12;
  if (v10)
  {
    sub_100004A34(v10);
    if ((v13 & 1) == 0)
    {
      return;
    }
  }

  else if (!v12)
  {
    return;
  }

  (*(*a1 + 360))(a1);
}

void sub_101191180(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10119119C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 1524))
  {
    return;
  }

  if (*(a1 + 1560) == 2)
  {
    if ((*(a1 + 167) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 152))
      {
        goto LABEL_6;
      }
    }

    else if (*(a1 + 167))
    {
LABEL_6:
      std::string::operator=(a2, (a1 + 144));
      return;
    }

    v3 = *(*a1 + 320);

    v3();
  }

  else
  {
    v2 = *(a1 + 24);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#N Device is not provisioned, returning empty short operator name", v4, 2u);
    }
  }
}

void sub_101191290(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011912AC(uint64_t a1, const std::string *a2, const std::string *a3, int a4)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  HIDWORD(v28) = 11;
  BYTE8(v33) = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  std::string::operator=(&v24, a2);
  std::string::operator=((&v25 + 8), a3);
  DWORD2(v28) = a4;
  (*(*a1 + 432))(&v21, a1);
  if (v31 == 1)
  {
    MCC::operator=();
  }

  else
  {
    MCC::MCC(&v29, &v21);
    LOBYTE(v31) = 1;
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  (*(*a1 + 440))(&v21, a1);
  if (BYTE8(v33) == 1)
  {
    MCC::operator=();
  }

  else
  {
    MCC::MCC((&v31 + 8), &v21);
    BYTE8(v33) = 1;
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  HIDWORD(v28) = (*(*a1 + 472))(a1);
  sub_100EBBD10(__dst, &v24);
  (*(*a1 + 344))(a1, __dst);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  if (BYTE8(v33) == 1 && SBYTE7(v33) < 0)
  {
    operator delete(v32);
  }

  if (v31 == 1 && SHIBYTE(v30) < 0)
  {
    operator delete(*(&v29 + 1));
  }

  if (SBYTE7(v28) < 0)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(*(&v25 + 1));
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(v24);
  }
}

void sub_101191580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  sub_100EBBE8C(&a10);
  sub_100EBBE8C(&a40);
  _Unwind_Resume(a1);
}

void sub_1011915C8(uint64_t a1, uint64_t *a2)
{
  if ((a2[14] & 1) == 0)
  {
    v30 = *(a1 + 24);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v31 = "#N Invalid MCC given for operator name update";
    goto LABEL_55;
  }

  if ((a2[19] & 1) == 0)
  {
    v30 = *(a1 + 24);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v31 = "#N Invalid MNC given for operator name update";
LABEL_55:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
    return;
  }

  v60 = 0;
  v59 = 0u;
  memset(__str, 0, sizeof(__str));
  v4 = *(a1 + 1480);
  v5 = *(a1 + 1496);
  v6 = *(a2 + 19);
  MCCAndMNC::MCCAndMNC(v52, (a2 + 10), (a2 + 15));
  v57 = v6;
  (*(*v4 + 16))(__str, v4, v5, v52, *(a2 + 18));
  if (v56 < 0)
  {
    operator delete(__p);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v60 == 1)
  {
    v7 = __str[23];
    v8 = __str[23];
    if (__str[23] < 0)
    {
      v7 = *&__str[8];
    }

    if (v7)
    {
      v9 = *(a1 + 24);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a2 + 3;
        if (*(a2 + 47) < 0)
        {
          v10 = *v10;
        }

        v11 = *__str;
        if (v8 >= 0)
        {
          v11 = __str;
        }

        *buf = 136446466;
        *&buf[4] = v10;
        *&buf[12] = 2082;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Short name is being overridden from %{public}s to %{public}s", buf, 0x16u);
        if ((v60 & 1) == 0)
        {
          goto LABEL_121;
        }
      }

      std::string::operator=(a2 + 1, __str);
      if ((v60 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    v12 = HIBYTE(v59);
    v13 = SHIBYTE(v59);
    if (v59 < 0)
    {
      v12 = v59;
    }

    if (v12)
    {
      v14 = *(a1 + 24);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v15 = a2;
      if (*(a2 + 23) < 0)
      {
        v15 = *a2;
      }

      v16 = *&__str[24];
      if (v13 >= 0)
      {
        v16 = &__str[24];
      }

      *buf = 136446466;
      *&buf[4] = v15;
      *&buf[12] = 2082;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Long name is being overridden from %{public}s to %{public}s", buf, 0x16u);
      if (v60)
      {
LABEL_27:
        std::string::operator=(a2, &__str[24]);
        goto LABEL_28;
      }

LABEL_121:
      sub_1000D1644();
    }
  }

LABEL_28:
  v17 = *(a2 + 18);
  if (*(a1 + 200) != v17)
  {
    v18 = *(a1 + 24);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = asString();
      v20 = asString();
      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Operator name source is changing from %s to %s", buf, 0x16u);
      v17 = *(a2 + 18);
    }

    *(a1 + 200) = v17;
  }

  v21 = (a1 + 120);
  v22 = *(a2 + 23);
  if (v22 >= 0)
  {
    v23 = *(a2 + 23);
  }

  else
  {
    v23 = a2[1];
  }

  v24 = *(a1 + 143);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a1 + 128);
  }

  if (v23 != v24 || (v22 >= 0 ? (v26 = a2) : (v26 = *a2), v25 >= 0 ? (v27 = (a1 + 120)) : (v27 = *v21), memcmp(v26, v27, v23)))
  {
    v28 = *(a1 + 24);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = a2;
      if (v22 < 0)
      {
        v29 = *a2;
      }

      *buf = 136446210;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Setting operator name to %{public}s", buf, 0xCu);
    }

    std::string::operator=((a1 + 120), a2);
    if (*(a1 + 143) < 0)
    {
      sub_100005F2C(__dst, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      *__dst = *v21;
      v51 = *(a1 + 136);
    }

    if (SHIBYTE(v51) < 0)
    {
      sub_100005F2C(&v64, __dst[0], __dst[1]);
    }

    else
    {
      v64 = *__dst;
      v65 = v51;
    }

    v66 = 0;
    if (SHIBYTE(v65) < 0)
    {
      sub_100005F2C(buf, v64, *(&v64 + 1));
    }

    else
    {
      *buf = v64;
      *&buf[16] = v65;
    }

    v67 = 0;
    if (ctu::cf::convert_copy())
    {
      v32 = v66;
      v66 = v67;
      v62[0] = v32;
      sub_100005978(v62);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v61 = v66;
    v66 = 0;
    sub_100005978(&v66);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    v33 = (a1 + 192);
    if ((a1 + 192) != &v61)
    {
      *buf = *v33;
      *v33 = v61;
      v61 = 0;
      sub_100005978(buf);
    }

    sub_100005978(&v61);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  v34 = *(a2 + 47);
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (!*(a2 + 47))
    {
      goto LABEL_95;
    }

LABEL_77:
    v35 = (a2 + 3);
    if (v34 >= 0)
    {
      v36 = *(a2 + 47);
    }

    else
    {
      v36 = a2[4];
    }

    v37 = *(a1 + 167);
    v38 = v37;
    if ((v37 & 0x80u) != 0)
    {
      v37 = *(a1 + 152);
    }

    if (v36 != v37 || (v34 >= 0 ? (v39 = a2 + 3) : (v39 = *v35), v38 >= 0 ? (v40 = (a1 + 144)) : (v40 = *(a1 + 144)), memcmp(v39, v40, v36)))
    {
      v41 = *(a1 + 24);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = a2 + 3;
        if ((v34 & 0x80000000) != 0)
        {
          v42 = *v35;
        }

        *buf = 136446210;
        *&buf[4] = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Setting operator short name to %{public}s", buf, 0xCu);
      }

      std::string::operator=((a1 + 144), a2 + 1);
    }

    goto LABEL_95;
  }

  if (a2[4])
  {
    goto LABEL_77;
  }

LABEL_95:
  MCCAndMNC::MCCAndMNC(buf, (a2 + 10), (a2 + 15));
  MCCAndMNC::getStringValue(v47, v43);
  if (SHIBYTE(v48) < 0)
  {
    sub_100005F2C(v62, v47[0], v47[1]);
  }

  else
  {
    *v62 = *v47;
    v63 = v48;
  }

  v61 = 0;
  if (SHIBYTE(v63) < 0)
  {
    sub_100005F2C(&v64, v62[0], v62[1]);
  }

  else
  {
    v64 = *v62;
    v65 = v63;
  }

  v66 = 0;
  if (ctu::cf::convert_copy())
  {
    v44 = v61;
    v61 = v66;
    v67 = v44;
    sub_100005978(&v67);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  v45 = v61;
  v49 = v61;
  v61 = 0;
  sub_100005978(&v61);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }

  v46 = (a1 + 208);
  if ((a1 + 208) != &v49)
  {
    *&v64 = *v46;
    *v46 = v45;
    v49 = 0;
    sub_100005978(&v64);
  }

  sub_100005978(&v49);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v69 < 0)
  {
    operator delete(*&buf[8]);
  }

  (*(*a1 + 360))(a1);
  if (v60 == 1)
  {
    if (SHIBYTE(v59) < 0)
    {
      operator delete(*&__str[24]);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }
  }
}