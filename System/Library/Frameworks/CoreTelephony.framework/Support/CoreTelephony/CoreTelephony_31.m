void sub_1001EEBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_100004A34(a12);
    if (!v18)
    {
LABEL_3:
      if (v20)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      sub_100004A34(v19);
      goto LABEL_8;
    }
  }

  else if (!v18)
  {
    goto LABEL_3;
  }

  sub_100004A34(v18);
  if (v20)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void MessageCenterModel::assignMessageId_sync(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (!*a2)
  {
    goto LABEL_10;
  }

  if (!v5)
  {
    {
      v8 = *(a2 + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v8);
        v6 = 0;
        v2 = *a2;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_13;
    }

LABEL_10:
    v6 = 0;
LABEL_11:
    (*(*v2 + 56))(v2, 0xFFFFFFFFLL);
    goto LABEL_14;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_100462DF0(v5);
  v2 = *a2;
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_13:
  v9 = sub_100AA1234(*(a1 + 128));
  (*(*v2 + 56))(v2, v9);
LABEL_14:
  if (v6)
  {

    sub_100004A34(v6);
  }
}

void sub_1001EEE1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::postMessageSendNotification(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  object = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    object = v12;
  }

  else
  {
    v13 = xpc_null_create();
    object = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v13) == &_xpc_type_dictionary)
  {
    xpc_retain(v13);
    goto LABEL_9;
  }

  v14 = xpc_null_create();
LABEL_8:
  object = v14;
LABEL_9:
  xpc_release(v13);
  v15 = xpc_int64_create(a3);
  v27 = v15;
  if (!v15)
  {
    v15 = xpc_null_create();
    v27 = v15;
  }

  sub_1001EF178(&object, @"kCTMessageIdKey", &v27);
  xpc_release(v15);
  v27 = 0;
  v16 = xpc_int64_create(a4);
  v26 = v16;
  if (!v16)
  {
    v16 = xpc_null_create();
    v26 = v16;
  }

  sub_1001EF178(&object, @"kCTMessageTypeKey", &v26);
  xpc_release(v16);
  v26 = 0;
  if (a5)
  {
    v17 = xpc_int64_create(a5);
    v25 = v17;
    if (!v17)
    {
      v17 = xpc_null_create();
      v25 = v17;
    }

    sub_1001EF178(&object, @"kCTMessageSendErrorKey", &v25);
    xpc_release(v17);
    v25 = 0;
  }

  if (a6)
  {
    v18 = xpc_int64_create(a6);
    v24 = v18;
    if (!v18)
    {
      v18 = xpc_null_create();
      v24 = v18;
    }

    sub_1001EF178(&object, @"kCTMessageSendModemErrorKey", &v24);
    xpc_release(v18);
    v24 = 0;
  }

  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v23[0] = v19;
  v23[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v22 = xpc_null_create();
  }

  v21 = xpc_null_create();
  sub_1001EF258(v23, a2, &v22, &v21);
  xpc_release(v21);
  xpc_release(v22);
  if (v20)
  {
    sub_100004A34(v20);
  }

  xpc_release(object);
}

void sub_1001EF0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object)
{
  xpc_release(v18);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_1001EF178(uint64_t a1, uint64_t a2, void **a3)
{
  v11 = 0uLL;
  v12 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v10 = 0;
  v5 = *a3;
  v7 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v6 = __p;
  if (v10 < 0)
  {
    v6 = __p[0];
  }

  *&v11 = a1;
  *(&v11 + 1) = v6;
  sub_10000F688(&v11, &v7, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
  v7 = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001EF23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EF258(Registry **a1, uint64_t a2, xpc_object_t *a3, xpc_object_t *a4)
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
  v17 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v17);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (v15)
  {
LABEL_10:
    (*(*v15 + 40))(v15, a2, a3, a4);
  }

LABEL_11:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  sub_10002A37C(a2, a3, a4);
}

void sub_1001EF390(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::sendSMSSentNotificationForRPError_sync(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int *a6)
{
  SmsTypeBundleReference = getSmsTypeBundleReference();
  v65 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v10 = *(a1 + 232);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = a1 + 232;
  do
  {
    if (*(v10 + 28) >= a2)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 28) < a2));
  }

  while (v10);
  if (v11 != a1 + 232 && *(v11 + 28) <= a2)
  {
    v12 = *(v11 + 32) == 4;
  }

  else
  {
LABEL_8:
    v12 = 0;
  }

  v13 = *(a1 + 256);
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a1 + 256;
  do
  {
    if (*(v13 + 28) >= a2)
    {
      v14 = v13;
    }

    v13 = *(v13 + 8 * (*(v13 + 28) < a2));
  }

  while (v13);
  if (v14 != a1 + 256 && *(v14 + 28) <= a2)
  {
    v15 = *(v14 + 32);
  }

  else
  {
LABEL_16:
    v15 = 0;
  }

  v16 = sub_10083A7DC(v15 & 1, v12);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v18 = ServiceMap;
  v20 = v19;
  if (v19 < 0)
  {
    v21 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(ServiceMap);
  *buf = v20;
  v24 = sub_100009510(&v18[1].__m_.__sig, buf);
  v64 = a4;
  if (v24)
  {
    v26 = v24[3];
    v25 = v24[4];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  std::mutex::unlock(v18);
  v73 = v26;
  v74 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v25);
  }

  v27 = sub_10083A6E4(a2, &v73, SmsTypeBundleReference, *a6);
  if (v74)
  {
    sub_100004A34(v74);
  }

  v28 = Registry::getServiceMap(*(a1 + 56));
  v29 = v28;
  v30 = v19;
  if (v19 < 0)
  {
    v31 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v32 = 5381;
    do
    {
      v30 = v32;
      v33 = *v31++;
      v32 = (33 * v32) ^ v33;
    }

    while (v33);
  }

  std::mutex::lock(v28);
  *buf = v30;
  v34 = sub_100009510(&v29[1].__m_.__sig, buf);
  if (v34)
  {
    v36 = v34[3];
    v35 = v34[4];
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v36 = 0;
    v35 = 0;
  }

  std::mutex::unlock(v29);
  v71 = v36;
  v72 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v35);
  }

  v37 = sub_10083A760(a2, &v71, SmsTypeBundleReference, *a6);
  if (v72)
  {
    sub_100004A34(v72);
  }

  v38 = *v65;
  if (os_log_type_enabled(*v65, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = v27;
    *&buf[8] = 1024;
    *&buf[10] = v37;
    LOWORD(v76) = 1024;
    *(&v76 + 2) = v16;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I RP-Error custom masks - fatal: 0x%x, non-fatal: 0x%x, service-state: 0x%x", buf, 0x14u);
  }

  if ((v27 & v16) != 0)
  {
    v39 = Registry::getServiceMap(*(a1 + 56));
    v40 = v39;
    if (v19 < 0)
    {
      v41 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
      v42 = 5381;
      do
      {
        v19 = v42;
        v43 = *v41++;
        v42 = (33 * v42) ^ v43;
      }

      while (v43);
    }

    std::mutex::lock(v39);
    *buf = v19;
    v44 = sub_100009510(&v40[1].__m_.__sig, buf);
    if (v44)
    {
      v46 = v44[3];
      v45 = v44[4];
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v46 = 0;
      v45 = 0;
    }

    std::mutex::unlock(v40);
    v69 = v46;
    v70 = v45;
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v45);
    }

    v55 = sub_10083A284(a2, &v69, SmsTypeBundleReference, *a6);
    if (v70)
    {
      sub_100004A34(v70);
    }

    v56 = *v65;
    if (os_log_type_enabled(*v65, OS_LOG_TYPE_DEFAULT))
    {
      v57 = sms::asString();
      v58 = asString();
      *buf = 136315650;
      *&buf[4] = v57;
      *&buf[12] = 2048;
      v76 = v55;
      v77 = 2080;
      v78 = v58;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I RP-Error fatal: %s, custom retry %ld, for: %s", buf, 0x20u);
    }

    v59 = 2;
  }

  else if ((v37 & v16) != 0)
  {
    v47 = Registry::getServiceMap(*(a1 + 56));
    v48 = v47;
    if (v19 < 0)
    {
      v49 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
      v50 = 5381;
      do
      {
        v19 = v50;
        v51 = *v49++;
        v50 = (33 * v50) ^ v51;
      }

      while (v51);
    }

    std::mutex::lock(v47);
    *buf = v19;
    v52 = sub_100009510(&v48[1].__m_.__sig, buf);
    if (v52)
    {
      v54 = v52[3];
      v53 = v52[4];
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v54 = 0;
      v53 = 0;
    }

    std::mutex::unlock(v48);
    v67 = v54;
    v68 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v53);
    }

    v55 = sub_10083A284(a2, &v67, SmsTypeBundleReference, *a6);
    if (v68)
    {
      sub_100004A34(v68);
    }

    v60 = *v65;
    if (os_log_type_enabled(*v65, OS_LOG_TYPE_DEFAULT))
    {
      v61 = sms::asString();
      v62 = asString();
      *buf = 136315650;
      *&buf[4] = v61;
      *&buf[12] = 2048;
      v76 = v55;
      v77 = 2080;
      v78 = v62;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I RP-Error non-fatal: %s, custom retry %ld, for: %s", buf, 0x20u);
    }

    v59 = 1;
  }

  else
  {
    v55 = 0;
    v59 = 3;
  }

  return (*(**(a1 + 160) + 344))(*(a1 + 160), a2, v64, v59, v55, *a6, a6[1]);
}

void sub_1001EF9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::sendSMSSentNotification_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v8 = a4;
  v9 = a3;
  if ((a5 - 2) > 3)
  {
    if (a3)
    {
      v12 = *(**(a1 + 160) + 344);
    }

    else
    {
      if (a6[3] == 3)
      {
        goto LABEL_12;
      }

      v12 = *(**(a1 + 160) + 344);
    }

    return v12();
  }

  (*(**(a1 + 144) + 80))(*(a1 + 144), a2, a3, a4, *a6, a6[1]);
  if (v9)
  {
    v12 = *(**(a1 + 144) + 88);
    goto LABEL_8;
  }

  if (a6[3] != 3)
  {
    v12 = *(**(a1 + 144) + 88);
LABEL_8:

    return v12();
  }

LABEL_12:

  return MessageCenterModel::sendSMSSentNotificationForRPError_sync(a1, a2, 0, v8, a5, a6);
}

void MessageCenterModel::handleMessageSendNotification_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int *a7)
{
  v14 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v15 = v14;
  if (a4 == -1)
  {
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101765624();
    }
  }

  else
  {
    if (a2 == 1)
    {
      if (a3)
      {
        v16 = 26;
      }

      else
      {
        v16 = 27;
      }

      MessageCenterModel::postMessageSendNotification(a1, v16, a4, a5, *a7, a7[1]);
    }

    if (a5 == 2)
    {
      v17 = *(**(a1 + 160) + 352);

      v17();
    }

    else if (a5 == 1)
    {

      MessageCenterModel::sendSMSSentNotification_sync(a1, a2, a3, a4, a6, a7);
    }

    else if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      sub_1017655F0();
    }
  }
}

void MessageCenterModel::postSMSSendSuccessNotification(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v3 = ServiceMap;
  v4 = "N3awd7metrics14MetricCountersE";
  if (("N3awd7metrics14MetricCountersE" & 0x8000000000000000) != 0)
  {
    v5 = ("N3awd7metrics14MetricCountersE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v13[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v13);
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
LABEL_11:
        if ((v11 & 1) == 0)
        {
          sub_100004A34(v9);
        }

        v13[0] = 0;
        v13[1] = 0;
        sub_100004AA0(v13, (a1 + 8));
        operator new();
      }

LABEL_10:
      v12 = sub_100AFFD78(v10);
      sub_100B009C0(v12);
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
    goto LABEL_11;
  }

  goto LABEL_10;
}

void sub_1001EFF9C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::postSMSSendFailureNotification(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v3 = ServiceMap;
  v4 = "N3awd7metrics14MetricCountersE";
  if (("N3awd7metrics14MetricCountersE" & 0x8000000000000000) != 0)
  {
    v5 = ("N3awd7metrics14MetricCountersE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v13[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v13);
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
LABEL_11:
        if ((v11 & 1) == 0)
        {
          sub_100004A34(v9);
        }

        v13[0] = 0;
        v13[1] = 0;
        sub_100004AA0(v13, (a1 + 8));
        operator new();
      }

LABEL_10:
      v12 = sub_100AFFD80(v10);
      sub_100B009C0(v12);
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
    goto LABEL_11;
  }

  goto LABEL_10;
}

void sub_1001F018C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::postMMSSendSuccessNotification(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v3 = ServiceMap;
  v4 = "N3awd7metrics14MetricCountersE";
  if (("N3awd7metrics14MetricCountersE" & 0x8000000000000000) != 0)
  {
    v5 = ("N3awd7metrics14MetricCountersE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v13[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v13);
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
LABEL_11:
        if ((v11 & 1) == 0)
        {
          sub_100004A34(v9);
        }

        v13[0] = 0;
        v13[1] = 0;
        sub_100004AA0(v13, (a1 + 8));
        operator new();
      }

LABEL_10:
      v12 = sub_100AFFD98(v10);
      sub_100B009C0(v12);
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
    goto LABEL_11;
  }

  goto LABEL_10;
}

void sub_1001F0368(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::postMMSSendFailureNotification(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v3 = ServiceMap;
  v4 = "N3awd7metrics14MetricCountersE";
  if (("N3awd7metrics14MetricCountersE" & 0x8000000000000000) != 0)
  {
    v5 = ("N3awd7metrics14MetricCountersE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v13[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v13);
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
LABEL_11:
        if ((v11 & 1) == 0)
        {
          sub_100004A34(v9);
        }

        v13[0] = 0;
        v13[1] = 0;
        sub_100004AA0(v13, (a1 + 8));
        operator new();
      }

LABEL_10:
      v12 = sub_100AFFDA0(v10);
      sub_100B009C0(v12);
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
    goto LABEL_11;
  }

  goto LABEL_10;
}

void sub_1001F0544(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::getCharacterCountAndThresholdForSmsMessage(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v9 = a5;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v11;
  v8[2] = a3;
  v8[3] = &v10;
  v8[4] = &v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_1001FF184;
  v12[3] = &unk_101E31440;
  v12[4] = a1 + 8;
  v12[5] = v8;
  v13 = v12;
  v6 = a1 + 24;
  v5 = *(a1 + 24);
  if (*(v6 + 8))
  {
    v20 = 0;
    block = _NSConcreteStackBlock;
    v15 = 0x40000000;
    v16 = sub_100069CC0;
    v17 = &unk_101E31400;
    v18 = &v20;
    v19 = &v13;
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    v20 = 0;
    block = _NSConcreteStackBlock;
    v15 = 0x40000000;
    v16 = sub_100058D64;
    v17 = &unk_101E313E0;
    v18 = &v20;
    v19 = &v13;
    dispatch_sync(v5, &block);
  }

  return v20 & 1;
}

uint64_t MessageCenterModel::getCharacterCountAndThresholdForSmsMessage_sync(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (a4)
  {
    v11 = a5 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    *a4 = 0;
    *a5 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v14 = ServiceMap;
    if ((v15 & 0x8000000000000000) != 0)
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

    std::mutex::lock(ServiceMap);
    v24 = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, &v24);
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
        goto LABEL_18;
      }
    }

    else
    {
      v21 = 0;
    }

    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
LABEL_18:
    (*(*v21 + 296))(v21, a2, a3, a4, a5);
    if ((v22 & 1) == 0)
    {
      sub_100004A34(v20);
    }

    return v12;
  }

  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_101765658();
  }

  return v12;
}

void sub_1001F084C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::handleSMSAsMMS()
{
  v0 = 0;
  v1 = 0;
  sub_1001FF1A4();
}

void sub_1001F0A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::handleMMSWapPush(uint64_t a1, int a2, uint64_t a3)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    LODWORD(a3) = *(a3 + 23);
  }

  else
  {
    a3 = *(a3 + 8);
  }

  sub_1015662DC(v9, v5, a3, a2);
  v8 = 0;
  v7[0] = 0;
  v7[1] = 0;
  v6 = sub_101569638(v9, &v8);
  sub_100126D04(v7, v6);
}

void sub_1001F10B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, char a28)
{
  xpc_release(object);
  xpc_release(*(v30 - 88));
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  if (a26)
  {
    sub_100004A34(a26);
  }

  ctu::OsLogLogger::~OsLogLogger(&a28);
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::handleVoiceMailNetworkNotification(uint64_t a1, uint64_t a2, NetworkNotification *this, uint64_t a4)
{
  v20 = NetworkNotification::copyUnparsedNotification(this);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
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
  v21 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v21);
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
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  v18 = (*(*v16 + 64))(v16, a2, this, a4);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  sub_100005978(&v20);
  return v18;
}

void sub_1001F12D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  if ((v9 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::handleDataPlanNetworkNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v11 = 0uLL;
  sub_10006C5D0(&v11);
  if (capabilities::ct::supportsDataPlanNotifications(v6) && v11)
  {
    (*(*v11 + 40))(v11, a3, a2);
    v7 = 1;
  }

  else
  {
    v8 = *v5;
    v7 = 0;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Data plan network notifications not supported", v10, 2u);
      v7 = 0;
    }
  }

  if (*(&v11 + 1))
  {
    sub_100004A34(*(&v11 + 1));
  }

  return v7;
}

void sub_1001F1408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::handlePNRNetworkNotification(uint64_t a1, NetworkNotification *a2, uint64_t a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), a3);
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
    v17 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Phone number registration not supported on this device", buf, 2u);
    }

    v18 = 0;
    if (v16)
    {
      return v18;
    }

LABEL_19:
    sub_100004A34(v14);
    return v18;
  }

LABEL_13:
  v19 = NetworkNotification::parsedNotification(a2);
  *buf = v19;
  if (v19 && (CFRetain(v19), *buf))
  {
    v22 = *buf;
    CFRetain(*buf);
    v18 = (*(*v15 + 24))(v15, &v22, a3);
    sub_10001021C(&v22);
  }

  else
  {
    v20 = *v6;
    v18 = 0;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Phone number registration response is null", v23, 2u);
      v18 = 0;
    }
  }

  sub_10001021C(buf);
  if ((v16 & 1) == 0)
  {
    goto LABEL_19;
  }

  return v18;
}

void sub_1001F163C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10001021C(va);
  sub_10001021C(va1);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::handleSUPLInitWapPush(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1[6] + 16))(a1[6], 1);
  sub_10000501C(__p, "application/vnd.omaloc-supl-init");
  sub_100B28350(a2, a3, __p, &v15);
  v7 = v15;
  v8 = v16;
  v9 = v18;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
LABEL_3:
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v10 = sub_100B27FEC(v9);
        sub_101765728(v10, &v15);
      }

      goto LABEL_5;
    }
  }

  else if (v18)
  {
    goto LABEL_3;
  }

  if (v7 != v8)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_1001E0090(&v15, v7, v8, v8 - v7);
    ((*a1)[12])(a1, a2, &v15);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v15);
    }

    v11 = 1;
    if (v7)
    {
      goto LABEL_6;
    }

    return v11;
  }

  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_101765760();
  }

LABEL_5:
  v11 = 0;
  if (v7)
  {
LABEL_6:
    operator delete(v7);
  }

  return v11;
}

void sub_1001F1830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::postTestMessageReceivedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    return (*(**(a1 + 144) + 32))(*(a1 + 144), a2, a3, a4);
  }

  object = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    object = v8;
  }

  else
  {
    v9 = xpc_null_create();
    object = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v9) != &_xpc_type_dictionary)
  {
    v10 = xpc_null_create();
LABEL_9:
    object = v10;
    goto LABEL_10;
  }

  xpc_retain(v9);
LABEL_10:
  xpc_release(v9);
  if (*(a3 + 23) >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  v12 = xpc_string_create(v11);
  v21 = v12;
  if (!v12)
  {
    v12 = xpc_null_create();
    v21 = v12;
  }

  sub_1001EF178(&object, @"kCTSMSTestMessageBody", &v21);
  xpc_release(v12);
  v21 = 0;
  if (*(a4 + 23) >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = *a4;
  }

  v14 = xpc_string_create(v13);
  v20 = v14;
  if (!v14)
  {
    v14 = xpc_null_create();
    v20 = v14;
  }

  sub_1001EF178(&object, @"kCTSMSTestMessageAddress", &v20);
  xpc_release(v14);
  v15 = *(a1 + 64);
  v19[0] = *(a1 + 56);
  v19[1] = v15;
  v20 = 0;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v18 = xpc_null_create();
  }

  v17 = xpc_null_create();
  sub_1001EF258(v19, 23, &v18, &v17);
  xpc_release(v17);
  xpc_release(v18);
  if (v15)
  {
    sub_100004A34(v15);
  }

  xpc_release(object);
  return (*(**(a1 + 144) + 32))(*(a1 + 144), a2, a3, a4);
}

void sub_1001F1AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16)
{
  xpc_release(object);
  xpc_release(a11);
  if (v16)
  {
    sub_100004A34(v16);
  }

  xpc_release(a16);
  _Unwind_Resume(a1);
}

void MessageCenterModel::postClass0SMSReceivedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(***(a1 + 1992))(*(a1 + 1992), a4))
  {
    if (a2 != 1)
    {
LABEL_31:
      (*(**(a1 + 144) + 16))(*(a1 + 144), a2, a3, a4);
      return;
    }

    object = 0;
    v9 = xpc_dictionary_create(0, 0, 0);
    v10 = v9;
    if (v9)
    {
      object = v9;
    }

    else
    {
      v10 = xpc_null_create();
      object = v10;
      if (!v10)
      {
        v11 = xpc_null_create();
        v10 = 0;
        goto LABEL_12;
      }
    }

    if (xpc_get_type(v10) == &_xpc_type_dictionary)
    {
      xpc_retain(v10);
LABEL_13:
      xpc_release(v10);
      if (*(a3 + 23) >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      v13 = xpc_string_create(v12);
      v22 = v13;
      if (!v13)
      {
        v13 = xpc_null_create();
        v22 = v13;
      }

      sub_1001EF178(&object, @"kCTSMSClass0String", &v22);
      xpc_release(v13);
      v22 = 0;
      if (*(a4 + 23) >= 0)
      {
        v14 = a4;
      }

      else
      {
        v14 = *a4;
      }

      v15 = xpc_string_create(v14);
      v21 = v15;
      if (!v15)
      {
        v15 = xpc_null_create();
        v21 = v15;
      }

      sub_1001EF178(&object, @"kCTSMSClass0AddressString", &v21);
      xpc_release(v15);
      v21 = 0;
      v16 = *(a1 + 64);
      *buf = *(a1 + 56);
      v20 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v18 = xpc_null_create();
      }

      v17 = xpc_null_create();
      sub_1001EF258(buf, 19, &v18, &v17);
      xpc_release(v17);
      xpc_release(v18);
      if (v16)
      {
        sub_100004A34(v16);
      }

      xpc_release(object);
      goto LABEL_31;
    }

    v11 = xpc_null_create();
LABEL_12:
    object = v11;
    goto LABEL_13;
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Preventing class 0 message delivery from blocked number.", buf, 2u);
  }
}

void sub_1001F1DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16)
{
  xpc_release(object);
  xpc_release(a10);
  if (v16)
  {
    sub_100004A34(v16);
  }

  xpc_release(a16);
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::postSMSReceivedNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return (*(**(a1 + 160) + 360))(*(a1 + 160), a2, a3);
  }

  v18 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v18 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v18 = v7;
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
    v18 = v8;
    goto LABEL_10;
  }

  xpc_retain(v7);
LABEL_10:
  xpc_release(v7);
  v9 = xpc_int64_create(a3);
  v17 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
    v17 = v9;
  }

  sub_1001EF178(&v18, @"kCTMessageIdKey", &v17);
  xpc_release(v9);
  v17 = 0;
  v10 = xpc_int64_create(1);
  v16 = v10;
  if (!v10)
  {
    v10 = xpc_null_create();
    v16 = v10;
  }

  sub_1001EF178(&v18, @"kCTMessageTypeKey", &v16);
  xpc_release(v10);
  v11 = *(a1 + 64);
  v15[0] = *(a1 + 56);
  v15[1] = v11;
  v16 = 0;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v14 = xpc_null_create();
  }

  object = xpc_null_create();
  sub_1001EF258(v15, 24, &v14, &object);
  xpc_release(object);
  xpc_release(v14);
  if (v11)
  {
    sub_100004A34(v11);
  }

  xpc_release(v18);
  return (*(**(a1 + 160) + 360))(*(a1 + 160), a2, a3);
}

void sub_1001F2054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  xpc_release(object);
  xpc_release(a11);
  if (v15)
  {
    sub_100004A34(v15);
  }

  xpc_release(*(v16 - 40));
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::postMMSReceivedNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v7 = ServiceMap;
  v8 = "N3awd7metrics14MetricCountersE";
  if (("N3awd7metrics14MetricCountersE" & 0x8000000000000000) != 0)
  {
    v9 = ("N3awd7metrics14MetricCountersE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v26[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v26);
  if (!v12)
  {
    v14 = 0;
LABEL_9:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (v14)
  {
LABEL_10:
    v16 = sub_100AFFDA8(v14);
    sub_100B009C0(v16);
  }

LABEL_11:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (a2 == 1)
  {
    object = 0;
    v17 = xpc_dictionary_create(0, 0, 0);
    v18 = v17;
    if (v17)
    {
      object = v17;
    }

    else
    {
      v18 = xpc_null_create();
      object = v18;
      if (!v18)
      {
        v19 = xpc_null_create();
        v18 = 0;
        goto LABEL_21;
      }
    }

    if (xpc_get_type(v18) == &_xpc_type_dictionary)
    {
      xpc_retain(v18);
LABEL_22:
      xpc_release(v18);
      v20 = xpc_int64_create(a3);
      v28 = v20;
      if (!v20)
      {
        v20 = xpc_null_create();
        v28 = v20;
      }

      sub_1001EF178(&object, @"kCTMessageIdKey", &v28);
      xpc_release(v20);
      v28 = 0;
      v21 = xpc_int64_create(2);
      v27 = v21;
      if (!v21)
      {
        v21 = xpc_null_create();
        v27 = v21;
      }

      sub_1001EF178(&object, @"kCTMessageTypeKey", &v27);
      xpc_release(v21);
      v22 = *(a1 + 64);
      v26[0] = *(a1 + 56);
      v26[1] = v22;
      v27 = 0;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v25 = xpc_null_create();
      }

      v24 = xpc_null_create();
      sub_1001EF258(v26, 24, &v25, &v24);
      xpc_release(v24);
      xpc_release(v25);
      if (v22)
      {
        sub_100004A34(v22);
      }

      xpc_release(object);
      return (*(**(a1 + 160) + 368))(*(a1 + 160), a2, a3);
    }

    v19 = xpc_null_create();
LABEL_21:
    object = v19;
    goto LABEL_22;
  }

  return (*(**(a1 + 160) + 368))(*(a1 + 160), a2, a3);
}

void sub_1001F23DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16)
{
  xpc_release(object);
  xpc_release(a11);
  if (v16)
  {
    sub_100004A34(v16);
  }

  xpc_release(a16);
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::postMMSFetchDeferredNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return (*(**(a1 + 144) + 64))(*(a1 + 144), a2, a3);
  }

  v18 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v18 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v18 = v7;
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
    v18 = v8;
    goto LABEL_10;
  }

  xpc_retain(v7);
LABEL_10:
  xpc_release(v7);
  v9 = xpc_int64_create(a3);
  v17 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
    v17 = v9;
  }

  sub_1001EF178(&v18, @"kCTMessageIdKey", &v17);
  xpc_release(v9);
  v17 = 0;
  v10 = xpc_int64_create(2);
  v16 = v10;
  if (!v10)
  {
    v10 = xpc_null_create();
    v16 = v10;
  }

  sub_1001EF178(&v18, @"kCTMessageTypeKey", &v16);
  xpc_release(v10);
  v11 = *(a1 + 64);
  v15[0] = *(a1 + 56);
  v15[1] = v11;
  v16 = 0;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v14 = xpc_null_create();
  }

  object = xpc_null_create();
  sub_1001EF258(v15, 25, &v14, &object);
  xpc_release(object);
  xpc_release(v14);
  if (v11)
  {
    sub_100004A34(v11);
  }

  xpc_release(v18);
  return (*(**(a1 + 144) + 64))(*(a1 + 144), a2, a3);
}

void sub_1001F267C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  xpc_release(object);
  xpc_release(a11);
  if (v15)
  {
    sub_100004A34(v15);
  }

  xpc_release(*(v16 - 40));
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::postSMSReadyStateChanged(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  if (a2 != 1)
  {
    return (***(a1 + 144))(*(a1 + 144), a2, a3);
  }

  v17 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v17 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v17 = v7;
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
    v17 = v8;
    goto LABEL_10;
  }

  xpc_retain(v7);
LABEL_10:
  xpc_release(v7);
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  ctu::cf::assign();
  v13 = xpc_BOOL_create(a3);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v9 = __p;
  if (v16 < 0)
  {
    v9 = __p[0];
  }

  v12[0] = &v17;
  v12[1] = v9;
  sub_10000F688(v12, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v12[0] = v17;
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    v12[0] = xpc_null_create();
  }

  v11 = xpc_null_create();
  sub_10002A37C(131, v12, &v11);
  xpc_release(v11);
  xpc_release(v12[0]);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v17);
  return (***(a1 + 144))(*(a1 + 144), a2, a3);
}

void sub_1001F28D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  xpc_release(object);
  xpc_release(a11);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v20 - 40));
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::postMMSConfigurationChangedNotification(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  if (a2 != 1)
  {
    return (*(**(a1 + 144) + 72))(*(a1 + 144), a2, a3);
  }

  object = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    object = v6;
  }

  else
  {
    v7 = xpc_null_create();
    object = v7;
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
    object = v8;
    goto LABEL_10;
  }

  xpc_retain(v7);
LABEL_10:
  xpc_release(v7);
  v9 = xpc_BOOL_create(a3);
  v15 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
    v15 = v9;
  }

  sub_1001EF178(&object, @"kCTMMSConfiguredKey", &v15);
  xpc_release(v9);
  v10 = *(a1 + 64);
  v14[0] = *(a1 + 56);
  v14[1] = v10;
  v15 = 0;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v13 = xpc_null_create();
  }

  v12 = xpc_null_create();
  sub_1001EF258(v14, 29, &v13, &v12);
  xpc_release(v12);
  xpc_release(v13);
  if (v10)
  {
    sub_100004A34(v10);
  }

  xpc_release(object);
  return (*(**(a1 + 144) + 72))(*(a1 + 144), a2, a3);
}

void sub_1001F2B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a10);
  if (v14)
  {
    sub_100004A34(v14);
  }

  xpc_release(a14);
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::postMOMMSProgressNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
    return (*(**(a1 + 144) + 104))(*(a1 + 144), a2, a3, a4, a5);
  }

  object = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    object = v10;
  }

  else
  {
    v11 = xpc_null_create();
    object = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v11) != &_xpc_type_dictionary)
  {
    v12 = xpc_null_create();
LABEL_9:
    object = v12;
    goto LABEL_10;
  }

  xpc_retain(v11);
LABEL_10:
  xpc_release(v11);
  v13 = xpc_int64_create(a3);
  v23 = v13;
  if (!v13)
  {
    v13 = xpc_null_create();
    v23 = v13;
  }

  sub_1001EF178(&object, @"kCTMessageIdKey", &v23);
  xpc_release(v13);
  v23 = 0;
  v14 = xpc_int64_create(a4);
  v22 = v14;
  if (!v14)
  {
    v14 = xpc_null_create();
    v22 = v14;
  }

  sub_1001EF178(&object, @"kCTMessageSendBytesKey", &v22);
  xpc_release(v14);
  v22 = 0;
  v15 = xpc_int64_create(a5);
  v21 = v15;
  if (!v15)
  {
    v15 = xpc_null_create();
    v21 = v15;
  }

  sub_1001EF178(&object, @"kCTMessageSendTotalBytesKey", &v21);
  xpc_release(v15);
  v16 = *(a1 + 64);
  v20[0] = *(a1 + 56);
  v20[1] = v16;
  v21 = 0;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v18 = xpc_null_create();
  sub_1001EF258(v20, 28, &v19, &v18);
  xpc_release(v18);
  xpc_release(v19);
  if (v16)
  {
    sub_100004A34(v16);
  }

  xpc_release(object);
  return (*(**(a1 + 144) + 104))(*(a1 + 144), a2, a3, a4, a5);
}

void sub_1001F2E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16)
{
  xpc_release(object);
  xpc_release(a10);
  if (v16)
  {
    sub_100004A34(v16);
  }

  xpc_release(a16);
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::postRegistrationDataActivateFailedMMS(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL8 a4)
{
  if (a2 != 1)
  {
    return (*(**(a1 + 144) + 112))(*(a1 + 144), a2, a3, 0, a4, 1);
  }

  object = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    object = v8;
  }

  else
  {
    v9 = xpc_null_create();
    object = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v9) != &_xpc_type_dictionary)
  {
    v10 = xpc_null_create();
LABEL_9:
    object = v10;
    goto LABEL_10;
  }

  xpc_retain(v9);
LABEL_10:
  xpc_release(v9);
  v11 = xpc_int64_create(a3);
  v26 = v11;
  if (!v11)
  {
    v11 = xpc_null_create();
    v26 = v11;
  }

  sub_1001EF178(&object, kCTRegistrationDataContextID, &v26);
  xpc_release(v11);
  v26 = 0;
  v12 = xpc_BOOL_create(0);
  v25 = v12;
  if (!v12)
  {
    v12 = xpc_null_create();
    v25 = v12;
  }

  sub_1001EF178(&object, kCTRegistrationDataActive, &v25);
  xpc_release(v12);
  v25 = 0;
  v13 = xpc_BOOL_create(a4);
  v24 = v13;
  if (!v13)
  {
    v13 = xpc_null_create();
    v24 = v13;
  }

  sub_1001EF178(&object, kCTRegistrationDataAttached, &v24);
  xpc_release(v13);
  v24 = 0;
  v14 = xpc_BOOL_create(1);
  v23 = v14;
  if (!v14)
  {
    v14 = xpc_null_create();
    v23 = v14;
  }

  sub_1001EF178(&object, kCTRegistrationDataActivationWasForMMS, &v23);
  xpc_release(v14);
  v23 = 0;
  v28 = 0uLL;
  v29 = 0;
  ctu::cf::assign();
  *__p = v28;
  v21 = v29;
  if (v29 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v16 = xpc_string_create(v15);
  v22 = v16;
  if (!v16)
  {
    v16 = xpc_null_create();
    v22 = v16;
  }

  sub_1001EF178(&object, kCTRegistrationDataActivationPreventionReason, &v22);
  xpc_release(v16);
  v22 = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *(a1 + 64);
  *&v28 = *(a1 + 56);
  *(&v28 + 1) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p[0] = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  v19 = xpc_null_create();
  sub_1001EF258(&v28, 45, __p, &v19);
  xpc_release(v19);
  xpc_release(__p[0]);
  if (v17)
  {
    sub_100004A34(v17);
  }

  xpc_release(object);
  return (*(**(a1 + 144) + 112))(*(a1 + 144), a2, a3, 0, a4, 1);
}

void sub_1001F31F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t a22)
{
  xpc_release(object);
  xpc_release(a11);
  if (v22)
  {
    sub_100004A34(v22);
  }

  xpc_release(a22);
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::postSUPLInitNotification(uint64_t a1, uint64_t a2, const void **a3)
{
  if (a2 != 1)
  {
    return (*(**(a1 + 144) + 120))(*(a1 + 144), a2, a3);
  }

  v19 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v19 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v19 = v7;
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
    v19 = v8;
    goto LABEL_10;
  }

  xpc_retain(v7);
LABEL_10:
  xpc_release(v7);
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = a3[1];
  }

  v17 = xpc_data_create(v10, v11);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v20 = 0uLL;
  v21 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v15 = 0;
  v16[0] = &v19;
  v16[1] = __p;
  sub_10000F688(v16, &v17, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v17);
  v17 = 0;
  v12 = *(a1 + 64);
  *&v20 = *(a1 + 56);
  *(&v20 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p[0] = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  v16[0] = xpc_null_create();
  sub_1001EF258(&v20, 12, __p, v16);
  xpc_release(v16[0]);
  xpc_release(__p[0]);
  if (v12)
  {
    sub_100004A34(v12);
  }

  xpc_release(v19);
  return (*(**(a1 + 144) + 120))(*(a1 + 144), a2, a3);
}

void sub_1001F3524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, xpc_object_t a15, uint64_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(a9);
  if (v17)
  {
    sub_100004A34(v17);
  }

  xpc_release(a17);
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::getAwdRat(uint64_t a1, int a2)
{
  v8 = a2;
  v2 = a1 + 208;
  v3 = *(a1 + 208);
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 200;
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
  if (v5 == v2)
  {
    return 0;
  }

  if (*(v5 + 28) > a2)
  {
    return 0;
  }

  v6 = *sub_1000A8C4C(v4, &v8);
  if (v6 > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_1017DF0C4[v6];
  }
}

void MessageCenterModel::flushResilientMORequests_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2064);
  v6 = *(a1 + 2056);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    do
    {
      if ((*(**v6 + 16))(*v6, a2, a3) == a2 && (v6[28] & 1) == 0)
      {
        *buf = 0;
        v19 = 0;
        v8 = *v6;
        v9 = *(a1 + 64);
        v16[2] = *(a1 + 56);
        v17 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (**v8)(buf);
        if (v17)
        {
          sub_100004A34(v17);
        }

        if (*buf)
        {
          (*(**buf + 56))(*buf, *(v6 + 6));
          v6[28] = 1;
          v10 = v19;
          v16[0] = *buf;
          v16[1] = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MessageCenterModel::queueForSend_sync(a1, v16);
          if (v10)
          {
            sub_100004A34(v10);
          }
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      v6 += 32;
    }

    while (v6 != v5);
    v5 = *(a1 + 2064);
    v6 = *(a1 + 2056);
  }

  if (v6 != v5)
  {
    while ((*(**v6 + 16))(*v6, a2, a3) != a2)
    {
      v6 += 32;
      if (v6 == v5)
      {
        v6 = v5;
        goto LABEL_29;
      }
    }

    if (v6 != v5)
    {
      for (i = v6 + 32; i != v5; i += 32)
      {
        if ((*(**i + 16))(*i, a2, a3) != a2)
        {
          v12 = *i;
          *i = 0;
          *(i + 1) = 0;
          v13 = *(v6 + 1);
          *v6 = v12;
          if (v13)
          {
            sub_100004A34(v13);
          }

          v14 = *(i + 2);
          *(v6 + 21) = *(i + 21);
          *(v6 + 2) = v14;
          v6 += 32;
        }
      }
    }
  }

LABEL_29:
  sub_1001FA6E4(a1 + 2056, v6, *(a1 + 2064));
  if (v7 != *(a1 + 2064) - *(a1 + 2056))
  {
    v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Flushed resilient MO requests for this slot", buf, 2u);
    }
  }
}

void sub_1001F38F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x1001F3918);
  }

  JUMPOUT(0x1001F3914);
}

void MessageCenterModel::handleRegNetInfo_sync(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v43 = a2;
  *buf = &v43;
  v5 = sub_1001FF628(a1 + 2032, &v43);
  v6 = v5;
  v7 = *(a3 + 8) & 0xFFFFFFFE;
  v8 = v7 == 4;
  if (*(v5 + 40) == v8)
  {
    v9 = v5 + 41;
    v10 = *(a3 + 804);
    if (*(v5 + 41) == v10)
    {
      return;
    }

    v11 = 0;
    v12 = 0;
    goto LABEL_37;
  }

  if (v7 != 4)
  {
    if (*(v5 + 41) != 1)
    {
LABEL_35:
      v12 = 0;
      v11 = 0;
      goto LABEL_36;
    }

    v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v43);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Lost satellite network", buf, 2u);
    }

    v17 = v43;
    __p[0] = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v19 = ServiceMap;
    if (v20 < 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(ServiceMap);
    *buf = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, buf);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v19);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
LABEL_24:
        (*(*v26 + 96))(v42, v26, v17, 1, @"SatelliteNetworkResiliencyDuration", 0, 0);
        sub_10010B240(__p, v42);
        sub_10000A1EC(v42);
        if ((v27 & 1) == 0)
        {
          sub_100004A34(v25);
        }

        if (__p[0])
        {
          *buf = 0;
          ctu::cf::assign(buf, __p[0], v29);
        }

        sub_100029A48(__p);
        sub_10000501C(__p, "ResiliencyTimer");
        Registry::getTimerService(&v38, *(a1 + 56));
        *buf = off_101E314C0;
        *&buf[8] = a1;
        *&buf[16] = v43;
        v45 = buf;
        AutoStartTimer::create();
        v30 = *v42;
        *v42 = 0uLL;
        v31 = v6[7];
        *(v6 + 3) = v30;
        if (v31)
        {
          sub_100004A34(v31);
          if (v42[1])
          {
            sub_100004A34(v42[1]);
          }
        }

        sub_10002B644(buf);
        if (v39)
        {
          sub_100004A34(v39);
        }

        if (v41 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    goto LABEL_24;
  }

  v11 = *(a3 + 804);
  v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v43);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    *buf = 0;
    v15 = "#I In service on satellite network";
  }

  else
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    *buf = 0;
    v15 = "#I In service on terrestrial network";
  }

  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
LABEL_20:
  v12 = v11 ^ 1;
  v28 = v6[7];
  v6[6] = 0;
  v6[7] = 0;
  if (v28)
  {
    sub_100004A34(v28);
  }

LABEL_36:
  v32 = *(v6 + 41);
  v9 = v6 + 41;
  *(v9 - 1) = v8;
  v10 = *(a3 + 804);
  if (v32 != v10)
  {
LABEL_37:
    *v9 = v10;
  }

  v33 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v43);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v36 = asString();
    v37 = asStringBool(*(a3 + 804));
    *buf = 136315394;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = v37;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I RegNetInfo changed. RegistrationStatus: %s, IsSatelliteSystem: %s", buf, 0x16u);
  }

  if (v11)
  {
    MessageCenterModel::attemptResilientMORequestsIfRequired_sync(a1, v34);
  }

  if (v12)
  {
    MessageCenterModel::flushResilientMORequests_sync(a1, v43, v35);
  }
}

void MessageCenterModel::attemptResilientMORequestsIfRequired_sync(MessageCenterModel *this, uint64_t a2)
{
  v3 = *(this + 260);
  if (!v3 || AutoStartTimer::isExpired(v3))
  {
    v4 = (this + 2040);
    while (1)
    {
      v5 = *(this + 257);
      if (v5 == *(this + 258))
      {
        return;
      }

      if (*(v5 + 28))
      {
        return;
      }

      v6 = (*(**v5 + 16))(*v5, a2);
      v7 = *v4;
      if (!*v4)
      {
        return;
      }

      v8 = v6;
      v9 = (this + 2040);
      do
      {
        if (*(v7 + 8) >= v6)
        {
          v9 = v7;
        }

        v7 = *&v7[8 * (*(v7 + 8) < v6)];
      }

      while (v7);
      if (v9 == v4 || *(v9 + 8) > v6 || *(v9 + 40) != 1)
      {
        return;
      }

      v42 = 0;
      v43 = 0;
      v10 = *v5;
      v11 = *(this + 8);
      *buf = *(this + 7);
      v41 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (**v10)(&v42);
      if (v41)
      {
        sub_100004A34(v41);
      }

      if (!v42)
      {
        v24 = (*(**(this + 6) + 16))(*(this + 6), v8);
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
        {
          sub_101765794(&v38, v39);
        }

        sub_1001FA768(buf, (*(this + 257) + 32), *(this + 258), *(this + 257));
        v25 = a2;
        for (i = *(this + 258); i != v25; i -= 32)
        {
          v27 = *(i - 24);
          if (v27)
          {
            sub_100004A34(v27);
          }
        }

        goto LABEL_56;
      }

      (*(*v42 + 56))(v42, *(v5 + 6));
      *(v5 + 28) = 1;
      v12 = *(*(**(this + 6) + 16))(*(this + 6), v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Triggering message level retry", buf, 2u);
      }

      v13 = v43;
      v37[0] = v42;
      v37[1] = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MessageCenterModel::queueForSend_sync(this, v37);
      if (v13)
      {
        sub_100004A34(v13);
      }

      v45 = 0;
      ServiceMap = Registry::getServiceMap(*(this + 7));
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
      if (!v20)
      {
        break;
      }

      v22 = v20[3];
      v21 = v20[4];
      if (!v21)
      {
        goto LABEL_39;
      }

      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v23 = 0;
LABEL_40:
      (*(*v22 + 96))(&v44, v22, v8, 1, @"SatelliteMessageValidityDuration", 0, 0);
      sub_10010B240(&v45, &v44);
      sub_10000A1EC(&v44);
      if ((v23 & 1) == 0)
      {
        sub_100004A34(v21);
      }

      if (v45 && (*buf = 0, ctu::cf::assign(buf, v45, v28), (v29 = *buf) != 0))
      {
        sub_100029A48(&v45);
        v30 = 1000000000 * v29;
      }

      else
      {
        sub_100029A48(&v45);
        v30 = 180000000000;
      }

      v31 = v5[2];
      Registry::getTimerService(buf, *(this + 7));
      v32 = (***buf)(*buf);
      if (v41)
      {
        sub_100004A34(v41);
      }

      if (v31 + v30 >= v32)
      {
        v36 = 1;
        goto LABEL_58;
      }

      v33 = *(*(**(this + 6) + 16))(*(this + 6), v8);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I This will be last message level retry for this message", buf, 2u);
      }

      sub_1001FA768(buf, (*(this + 257) + 32), *(this + 258), *(this + 257));
      v25 = a2;
      for (j = *(this + 258); j != v25; j -= 32)
      {
        v35 = *(j - 24);
        if (v35)
        {
          sub_100004A34(v35);
        }
      }

LABEL_56:
      v36 = 0;
      *(this + 258) = v25;
LABEL_58:
      if (v43)
      {
        sub_100004A34(v43);
      }

      if (v36)
      {
        return;
      }
    }

    v22 = 0;
LABEL_39:
    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    goto LABEL_40;
  }
}

void sub_1001F4384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::requiresResiliency_sync(uint64_t a1, int a2)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if (StewieFeatureState::isStewieActive((a1 + 1912)))
    {
      return 0;
    }

    v5 = *(a1 + 2040);
    if (!v5)
    {
      return 0;
    }

    v6 = a1 + 2040;
    do
    {
      if (*(v5 + 32) >= a2)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < a2));
    }

    while (v5);
    if (v6 == a1 + 2040 || *(v6 + 32) > a2)
    {
      return 0;
    }

    else if (*(v6 + 40) == 1 && (*(v6 + 41) & 1) != 0)
    {
      return 1;
    }

    else
    {
      result = *(v6 + 48);
      if (result)
      {
        return AutoStartTimer::isExpired(result) ^ 1;
      }
    }
  }

  return result;
}

uint64_t MessageCenterModel::handleResultAndDetermineIfReAttemptIsRequired_sync(uint64_t a1, uint64_t a2, int a3, char a4, __int16 a5, int a6)
{
  v10 = *(a1 + 2056);
  v11 = *(a1 + 2064);
  if (v10 != v11)
  {
    while ((*(**v10 + 16))() != a2 || (*(**v10 + 8))() != a3 || *(v10 + 24) != a6)
    {
      v10 += 32;
      if (v10 == v11)
      {
        v10 = v11;
        break;
      }
    }

    v11 = *(a1 + 2064);
  }

  if (v10 == v11)
  {
    return 0;
  }

  if (a4 & 1) != 0 || (a5 & 0x100) != 0 && (a5)
  {
    sub_1001FA768(&buf, (v10 + 32), v11, v10);
    v15 = v14;
    for (i = *(a1 + 2064); i != v15; i -= 32)
    {
      v17 = *(i - 24);
      if (v17)
      {
        sub_100004A34(v17);
      }
    }

    *(a1 + 2064) = v15;
    buf = 0uLL;
    sub_100004AA0(&buf, (a1 + 8));
    operator new();
  }

  if (*(v10 + 28) == 1)
  {
    *(v10 + 28) = 0;
    __p[0] = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v20 = ServiceMap;
    if (v21 < 0)
    {
      v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v21 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(ServiceMap);
    *&buf = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, &buf);
    if (v25)
    {
      v27 = v25[3];
      v26 = v25[4];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
        v28 = 0;
LABEL_28:
        (*(*v27 + 96))(&v38, v27, a2, 1, @"SatelliteMessageRetryIntervalInSec", 0, 0);
        sub_10010B240(__p, &v38);
        sub_10000A1EC(&v38);
        if ((v28 & 1) == 0)
        {
          sub_100004A34(v26);
        }

        if (__p[0] && (LODWORD(buf) = 0, ctu::cf::assign(&buf, __p[0], v29), v30 = buf, buf))
        {
          sub_100029A48(__p);
        }

        else
        {
          sub_100029A48(__p);
          v30 = 15;
        }

        v31 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Starting ResiliencyReAttemptTimer. Expires in %lld seconds", &buf, 0xCu);
        }

        sub_10000501C(__p, "ResiliencyReAttemptTimer");
        Registry::getTimerService(&v34, *(a1 + 56));
        *&buf = off_101E31540;
        *(&buf + 1) = a1;
        v40 = a2;
        p_buf = &buf;
        AutoStartTimer::create();
        v32 = v38;
        v38 = 0uLL;
        v33 = *(a1 + 2088);
        *(a1 + 2080) = v32;
        if (v33)
        {
          sub_100004A34(v33);
          if (*(&v38 + 1))
          {
            sub_100004A34(*(&v38 + 1));
          }
        }

        sub_10002B644(&buf);
        if (v35)
        {
          sub_100004A34(v35);
        }

        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        return 1;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
    goto LABEL_28;
  }

  return 1;
}

void MessageCenterModel::handleStewieMMS(uint64_t a1, int a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_1015662DC(v6, *a3, *(a3 + 8) - *a3, a2);
  v5 = -1;
  v4[0] = 0;
  v4[1] = 0;
  v3 = sub_101569638(v6, &v5);
  sub_100126D04(v4, v3);
}

void sub_1001F4BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    sub_100004A34(a4);
  }

  ctu::OsLogLogger::~OsLogLogger(va);
  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::requiresResiliency(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1001FFCD0;
  v7[3] = &unk_101E315B0;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100069CC0;
    v12 = &unk_101E31400;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100058D64;
    v12 = &unk_101E313E0;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

uint64_t MessageCenterModel::isMessagesInstalled(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  if (v3 < 0)
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
  __p[0] = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, __p);
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
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
  if (!v9)
  {
LABEL_7:
    v11 = 1;
    if (v10)
    {
      return v11;
    }

    goto LABEL_13;
  }

LABEL_11:
  sub_10000501C(__p, "com.apple.MobileSMS");
  v11 = (*(*v9 + 176))(v9, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
      return v11;
    }

    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
LABEL_13:
    sub_100004A34(v8);
  }

  return v11;
}

void sub_1001F4E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp(Registry **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
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
  *&v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
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
  (*(*v11 + 160))(&v13, v11, 1);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v13;
  *(a2 + 16) = v14;
LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1001F4FC0(_Unwind_Exception *exception_object)
{
  v4 = v3;
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::shouldBlockCarrierMessaging(Registry **a1)
{
  isMessagesInstalled = MessageCenterModel::isMessagesInstalled(a1);
  __p = 0;
  v9 = 0;
  v10 = 0;
  MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp(a1, &__p);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (SHIBYTE(v10) < 0)
    {
      v9 = 0;
      p_p = __p;
    }

    else
    {
      HIBYTE(v10) = 0;
      p_p = &__p;
    }

    *p_p = 0;
  }

  v4 = SHIBYTE(v10);
  v5 = v9;
  if ((SHIBYTE(v10) & 0x8000000000000000) != 0)
  {
    operator delete(__p);
  }

  if ((v4 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (v6 == 0) & ~isMessagesInstalled;
}

void sub_1001F50A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL MessageCenterModel::isThirdPartyMessagingApp(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (a1[1] != 19)
    {
      return 1;
    }

    a1 = *a1;
  }

  else if (v1 != 19)
  {
    return 1;
  }

  return *a1 != 0x6C7070612E6D6F63 || a1[1] != 0x656C69626F4D2E65 || *(a1 + 11) != 0x534D53656C69626FLL;
}

void MessageCenterModel::getIsDefaultCarrierMessagingAppThirdParty(Registry **a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
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

LABEL_12:
      sub_10000FED0(v14, a2);
      v15 = 0;
      operator new();
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_7:
  sub_10000FFD0(a2, 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1001F52F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::handleAppsInstalled_sync(uint64_t a1, CFArrayRef *a2)
{
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = "CoreTelephony";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a2, v6);
        if (!ValueAtIndex)
        {
          goto LABEL_49;
        }

        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 != CFStringGetTypeID())
        {
          goto LABEL_49;
        }

        __p[0] = 0;
        __p[1] = 0;
        v38 = 0;
        ctu::cf::assign();
        *v35 = *__p;
        v36 = v38;
        v10 = _os_feature_enabled_impl();
        v11 = SHIBYTE(v36);
        if (v36 >= 0)
        {
          v12 = HIBYTE(v36);
        }

        else
        {
          v12 = v35[1];
        }

        if (v12 == 19)
        {
          v13 = v35[0];
          if (v36 >= 0)
          {
            v13 = v35;
          }

          v14 = *v13 ^ 0x6C7070612E6D6F63 | v13[1] ^ 0x656C69626F4D2E65 | *(v13 + 11) ^ 0x534D53656C69626FLL;
          if (((v14 != 0) & v10) != 0)
          {
LABEL_16:
            v15 = *(a1 + 64);
            v34[0] = *(a1 + 56);
            v34[1] = v15;
            if (v15)
            {
              atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
            }

            MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp(v34, __p);
            v16 = HIBYTE(v38);
            v17 = SHIBYTE(v38);
            if (v38 < 0)
            {
              v16 = __p[1];
            }

            if (v12 == v16)
            {
              if (v11 >= 0)
              {
                v18 = v35;
              }

              else
              {
                v18 = v35[0];
              }

              if (v38 >= 0)
              {
                v19 = __p;
              }

              else
              {
                v19 = __p[0];
              }

              v20 = memcmp(v18, v19, v12) == 0;
              if (v17 < 0)
              {
LABEL_30:
                operator delete(__p[0]);
              }
            }

            else
            {
              v20 = 0;
              if (SHIBYTE(v38) < 0)
              {
                goto LABEL_30;
              }
            }

            if (v15)
            {
              sub_100004A34(v15);
            }

            if (!v20)
            {
              goto LABEL_47;
            }

LABEL_34:
            ServiceMap = Registry::getServiceMap(*(a1 + 56));
            v22 = ServiceMap;
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

            std::mutex::lock(ServiceMap);
            __p[0] = v23;
            v27 = sub_100009510(&v22[1].__m_.__sig, __p);
            v28 = v7;
            if (v27)
            {
              v30 = v27[3];
              v29 = v27[4];
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v22);
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v29);
                v31 = 0;
                if (!v30)
                {
LABEL_40:
                  v7 = v28;
                  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                  {
                    sub_101765838(&v32, v33);
                  }

                  goto LABEL_45;
                }

LABEL_44:
                (*(*v30 + 80))(v30);
                v7 = v28;
LABEL_45:
                if ((v31 & 1) == 0)
                {
                  sub_100004A34(v29);
                }

                goto LABEL_47;
              }
            }

            else
            {
              v30 = 0;
            }

            std::mutex::unlock(v22);
            v29 = 0;
            v31 = 1;
            if (!v30)
            {
              goto LABEL_40;
            }

            goto LABEL_44;
          }

          if (!v14)
          {
            goto LABEL_34;
          }
        }

        else if (v10)
        {
          goto LABEL_16;
        }

LABEL_47:
        if (v11 < 0)
        {
          operator delete(v35[0]);
        }

LABEL_49:
        ++v6;
      }

      while (v6 != v5);
    }
  }
}

void sub_1001F565C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::handleAppsUninstalled_sync(uint64_t a1, CFArrayRef *a2)
{
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = "CoreTelephony";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a2, v6);
        if (!ValueAtIndex)
        {
          goto LABEL_49;
        }

        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 != CFStringGetTypeID())
        {
          goto LABEL_49;
        }

        __p[0] = 0;
        __p[1] = 0;
        v38 = 0;
        ctu::cf::assign();
        *v35 = *__p;
        v36 = v38;
        v10 = _os_feature_enabled_impl();
        v11 = SHIBYTE(v36);
        if (v36 >= 0)
        {
          v12 = HIBYTE(v36);
        }

        else
        {
          v12 = v35[1];
        }

        if (v12 == 19)
        {
          v13 = v35[0];
          if (v36 >= 0)
          {
            v13 = v35;
          }

          v14 = *v13 ^ 0x6C7070612E6D6F63 | v13[1] ^ 0x656C69626F4D2E65 | *(v13 + 11) ^ 0x534D53656C69626FLL;
          if (((v14 != 0) & v10) != 0)
          {
LABEL_16:
            v15 = *(a1 + 64);
            v34[0] = *(a1 + 56);
            v34[1] = v15;
            if (v15)
            {
              atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
            }

            MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp(v34, __p);
            v16 = HIBYTE(v38);
            v17 = SHIBYTE(v38);
            if (v38 < 0)
            {
              v16 = __p[1];
            }

            if (v12 == v16)
            {
              if (v11 >= 0)
              {
                v18 = v35;
              }

              else
              {
                v18 = v35[0];
              }

              if (v38 >= 0)
              {
                v19 = __p;
              }

              else
              {
                v19 = __p[0];
              }

              v20 = memcmp(v18, v19, v12) == 0;
              if (v17 < 0)
              {
LABEL_30:
                operator delete(__p[0]);
              }
            }

            else
            {
              v20 = 0;
              if (SHIBYTE(v38) < 0)
              {
                goto LABEL_30;
              }
            }

            if (v15)
            {
              sub_100004A34(v15);
            }

            if (!v20)
            {
              goto LABEL_47;
            }

LABEL_34:
            ServiceMap = Registry::getServiceMap(*(a1 + 56));
            v22 = ServiceMap;
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

            std::mutex::lock(ServiceMap);
            __p[0] = v23;
            v27 = sub_100009510(&v22[1].__m_.__sig, __p);
            v28 = v7;
            if (v27)
            {
              v30 = v27[3];
              v29 = v27[4];
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v22);
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v29);
                v31 = 0;
                if (!v30)
                {
LABEL_40:
                  v7 = v28;
                  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
                  {
                    sub_101765838(&v32, v33);
                  }

                  goto LABEL_45;
                }

LABEL_44:
                (*(*v30 + 80))(v30);
                v7 = v28;
LABEL_45:
                if ((v31 & 1) == 0)
                {
                  sub_100004A34(v29);
                }

                goto LABEL_47;
              }
            }

            else
            {
              v30 = 0;
            }

            std::mutex::unlock(v22);
            v29 = 0;
            v31 = 1;
            if (!v30)
            {
              goto LABEL_40;
            }

            goto LABEL_44;
          }

          if (!v14)
          {
            goto LABEL_34;
          }
        }

        else if (v10)
        {
          goto LABEL_16;
        }

LABEL_47:
        if (v11 < 0)
        {
          operator delete(v35[0]);
        }

LABEL_49:
        ++v6;
      }

      while (v6 != v5);
    }
  }
}

void sub_1001F59D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::handleAppsInstalled(uint64_t a1, const void **a2)
{
  sub_10006F22C(&v3 + 1, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void MessageCenterModel::handleAppsUninstalled(uint64_t a1, const void **a2)
{
  sub_10006F22C(&v3 + 1, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

uint64_t MessageCenterModel::verifyDynamicConditions_sync(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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

      goto LABEL_13;
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
    v15 = *v4;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Unable to send message: Registry failed to provide MessageCenterModel or MMSDataCache.", buf, 2u);
    }

    v16 = 3;
    if (v14)
    {
      return v16;
    }

    goto LABEL_42;
  }

LABEL_13:
  if (!(*(*v13 + 168))(v13, a2))
  {
    goto LABEL_35;
  }

  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = v14;
  v19 = Registry::getServiceMap(v17);
  v20 = v19;
  if (v21 < 0)
  {
    v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  std::mutex::lock(v19);
  *buf = v21;
  v25 = sub_100009510(&v20[1].__m_.__sig, buf);
  if (v25)
  {
    v27 = v25[3];
    v26 = v25[4];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
      v28 = 0;
      if (!v27)
      {
        goto LABEL_22;
      }

LABEL_26:
      v29 = (*(*v27 + 248))(v27, a2);
      if (v28)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v27 = 0;
  }

  std::mutex::unlock(v20);
  v26 = 0;
  v28 = 1;
  if (v27)
  {
    goto LABEL_26;
  }

LABEL_22:
  v29 = 1;
  if ((v28 & 1) == 0)
  {
LABEL_27:
    sub_100004A34(v26);
  }

LABEL_28:
  if (v18)
  {
    sub_100004A34(v18);
    v14 = v35;
    if (v29)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v14 = v35;
    if (v29)
    {
LABEL_30:
      v30 = *v4;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Unable to send message: Registry failed to provide MessageCenterModel or MMSDataCache.", buf, 2u);
      }

      v16 = 4;
      if ((v14 & 1) == 0)
      {
        goto LABEL_42;
      }

      return v16;
    }
  }

LABEL_35:
  if ((*(*v13 + 96))(v13, a2))
  {
    v31 = MessageCenterModel::requiresResiliency_sync(a1, a2);
    if (((*(*v13 + 64))(v13, a2) | v31))
    {
      v16 = 0;
      if (v14)
      {
        return v16;
      }

      goto LABEL_42;
    }

    v34 = *v4;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "unable to send message: data not available", buf, 2u);
    }

    v16 = 6;
    if ((v14 & 1) == 0)
    {
LABEL_42:
      sub_100004A34(v12);
    }
  }

  else
  {
    v32 = *v4;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Unable to send message: MMS not configured", buf, 2u);
    }

    v16 = 5;
    if ((v14 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  return v16;
}

void sub_1001F603C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if ((a11 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::queue3rdPartyMms(uint64_t a1, int **a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), **a2);
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I MMS sending...", buf, 2u);
  }

  v6 = MessageCenterModel::verifyDynamicConditions_sync(a1, **a2);
  if (v6)
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_101765864(v6);
    }
  }

  else
  {
    v7 = *(a1 + 1928);
    if (v7)
    {
      v8 = **a2;
      v9 = a1 + 1928;
      do
      {
        if (*(v7 + 32) >= v8)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v8));
      }

      while (v7);
      if (v9 != a1 + 1928 && v8 >= *(v9 + 32))
      {
        v10 = *(v9 + 63);
        if (v10 < 0)
        {
          v10 = *(v9 + 48);
        }

        if (v10)
        {
          sub_100200164();
        }
      }
    }

    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_1017659C8();
    }

    return 4;
  }

  return v6;
}

void sub_1001F64CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, std::__shared_weak_count *a18, uint64_t a19)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001F6614(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MessageCenterModel::receivedMmsWithId(MessageCenterModel *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  v5[0] = this;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1002004E0;
  v7[3] = &unk_101E31728;
  v7[4] = this + 8;
  v7[5] = v5;
  v8 = v7;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100200BA0;
    v12 = &unk_101E31768;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100200B38;
    v12 = &unk_101E31748;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

void MessageCenterModel::retrieveMMSConfiguration(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  if (!*a2)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101765A50();
    }

    *a3 = 0;
    a3[4] = 0;
    a3[8] = 0;
    a3[12] = 0;
    a3[16] = 0;
    a3[20] = 0;
    a3[24] = 0;
    a3[28] = 0;
    a3[32] = 0;
    a3[36] = 0;
    return;
  }

  v5 = **a2;
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), v5);
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
  theDict = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &theDict);
  if (v13)
  {
    v14 = v13[3];
    v15 = v13[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v16 = 0;
      if (!v14)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v16 = 1;
  if (!v14)
  {
LABEL_8:
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_101765A50();
    }

    *a3 = 0;
    a3[4] = 0;
    a3[8] = 0;
    a3[12] = 0;
    a3[16] = 0;
    a3[20] = 0;
    a3[24] = 0;
    a3[28] = 0;
    a3[32] = 0;
    a3[36] = 0;
    if (v16)
    {
      return;
    }

LABEL_45:
    sub_100004A34(v15);
    return;
  }

LABEL_17:
  theDict = 0;
  v51 = v15;
  (*(*v14 + 96))(&v53, v14, v5, 1, @"MMS", 0, 0);
  sub_100010180(&theDict, &v53);
  sub_10000A1EC(&v53);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"MaxMessageSize");
    v18 = Value;
    if (Value && (v19 = CFGetTypeID(Value), v19 == CFNumberGetTypeID()))
    {
      LODWORD(v53) = 0;
      ctu::cf::assign(&v53, v18, v20);
      v21 = v53 & 0xFFFFFF00;
      v22 = v53;
      v23 = &_mh_execute_header;
    }

    else
    {
      v22 = 0;
      v21 = 0;
      v23 = 0;
    }

    v24 = v23 | v21 | v22;
    if (theDict)
    {
      v25 = CFDictionaryGetValue(theDict, @"MaxRecipients");
      v26 = v25;
      if (v25)
      {
        v27 = CFGetTypeID(v25);
        if (v27 == CFNumberGetTypeID())
        {
          LODWORD(v53) = 0;
          ctu::cf::assign(&v53, v26, v28);
          v29 = v53 & 0xFFFFFF00;
          v30 = v53;
          v31 = &_mh_execute_header;
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v30 = 0;
  v29 = 0;
  v31 = 0;
LABEL_28:
  v50 = v31;
  if (theDict)
  {
    v32 = CFDictionaryGetValue(theDict, @"MaxSubjectLenBytes");
    v33 = v32;
    if (v32 && (v34 = CFGetTypeID(v32), v34 == CFNumberGetTypeID()))
    {
      LODWORD(v53) = 0;
      ctu::cf::assign(&v53, v33, v35);
      v36 = v53 & 0xFFFFFF00;
      v37 = v53;
      v38 = &_mh_execute_header;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      v38 = 0;
    }

    v39 = v38 | v36 | v37;
    if (theDict)
    {
      v40 = CFDictionaryGetValue(theDict, @"MaxImageDimension");
      v41 = v40;
      if (!v40)
      {
        v44 = v5;
        v45 = v16;
        goto LABEL_40;
      }

      v42 = CFGetTypeID(v40);
      if (v42 == CFNumberGetTypeID())
      {
        LODWORD(v53) = 0;
        ctu::cf::assign(&v53, v41, v43);
        v44 = v5;
        v45 = v16;
        v46 = v53 & 0xFFFFFF00;
        LODWORD(v41) = v53;
        v47 = &_mh_execute_header;
        goto LABEL_41;
      }
    }

    v44 = v5;
    v45 = v16;
  }

  else
  {
    v44 = v5;
    v45 = v16;
    v39 = 0;
  }

  LODWORD(v41) = 0;
LABEL_40:
  v46 = 0;
  v47 = 0;
LABEL_41:
  v53 = 0;
  (*(*v14 + 96))(&v52, v14, v44, 1, @"SMSSizeInBytesSentAsMMSInstead", 0, 0);
  sub_10010B240(&v53, &v52);
  sub_10000A1EC(&v52);
  if (v53)
  {
    LODWORD(v52) = 0;
    ctu::cf::assign(&v52, v53, v48);
    v49 = v52 | &_mh_execute_header;
  }

  else
  {
    v49 = 0;
  }

  *a3 = v24;
  *(a3 + 1) = v50 | v29 | v30;
  *(a3 + 2) = v39;
  *(a3 + 3) = v47 | v46 | v41;
  *(a3 + 4) = v49;
  sub_100029A48(&v53);
  sub_10001021C(&theDict);
  v15 = v51;
  if ((v45 & 1) == 0)
  {
    goto LABEL_45;
  }
}

void sub_1001F6C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  sub_100029A48(va);
  sub_10001021C(va1);
  if ((v5 & 1) == 0)
  {
    sub_100004A34(a4);
  }

  _Unwind_Resume(a1);
}

void sub_1001F728C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, std::locale a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  if ((v28 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::queueReportSpamSMS(uint64_t a1, __int128 **a2)
{
  v50 = 0;
  *v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  *v47 = 0u;
  *v45 = 0u;
  sub_100A76B60(*a2, v45);
  v3 = (*(**(a1 + 48) + 16))(*(a1 + 48), DWORD2(v46));
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I reporting SMS spam...", buf, 2u);
  }

  v43 = 0;
  v44 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  std::mutex::unlock(v6);
  v43 = v13;
  v44 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    v13 = v43;
  }

  if (v13)
  {
    __p = 0uLL;
    v42 = 0;
    sub_10083AA10(DWORD2(v46), &v43, 0, &__p);
    v14 = (*(*a1 + 320))(a1, DWORD2(v46), &__p, v45);
    v15 = *v3;
    if (v14)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        p_p = &__p;
        if (v42 < 0)
        {
          p_p = __p;
        }

        *buf = 136315138;
        *&buf[4] = p_p;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Carrier report junk address: %s", buf, 0xCu);
      }

      v17 = *(a1 + 1928);
      if (v17)
      {
        v18 = a1 + 1928;
        do
        {
          if (*(v17 + 32) >= SDWORD2(v46))
          {
            v18 = v17;
          }

          v17 = *(v17 + 8 * (*(v17 + 32) < SDWORD2(v46)));
        }

        while (v17);
        if (v18 != a1 + 1928 && SDWORD2(v46) >= *(v18 + 32))
        {
          v19 = *(v18 + 63);
          if (v19 < 0)
          {
            v19 = *(v18 + 48);
          }

          if (v19)
          {
            v39[0] = 0;
            v39[1] = 0;
            v40 = 0;
            v20 = sub_10000501C(v59, "SMS");
            buf[0] = 0;
            BYTE8(v52) = 0;
            v56[0] = 0;
            v58 = 0;
            sub_10083ACA4(v20, v45, v47, &v48[1], buf, v56, v39);
            if (v58 == 1 && v57 < 0)
            {
              operator delete(*v56);
            }

            if (BYTE8(v52) == 1 && SBYTE7(v52) < 0)
            {
              operator delete(*buf);
            }

            if (v60 < 0)
            {
              operator delete(*v59);
            }

            memset(v55, 0, sizeof(v55));
            v53 = 0u;
            v54 = 0u;
            *buf = 0u;
            v52 = 0u;
            if (SHIBYTE(v42) < 0)
            {
              sub_100005F2C(buf, __p, *(&__p + 1));
            }

            else
            {
              *buf = __p;
              *&v52 = v42;
            }

            DWORD2(v52) = DWORD2(v46);
            if (SHIBYTE(v40) < 0)
            {
              sub_100005F2C(&v53, v39[0], v39[1]);
            }

            else
            {
              v53 = *v39;
              *&v54 = v40;
            }

            DWORD2(v54) = 1;
            sub_10000501C(v55, "");
            *(&v55[1] + 1) = 0;
            LOBYTE(v55[2]) = 0;
            BYTE4(v55[2]) = 0;
            LOBYTE(v55[3]) = 0;
            DWORD1(v55[3]) = 9;
            DWORD2(v55[3]) = sub_100AA1234(*(a1 + 128));
            BYTE12(v55[3]) = 1;
            v26 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
            {
              v27 = &__p;
              if (v42 < 0)
              {
                v27 = __p;
              }

              v28 = v39;
              if (v40 < 0)
              {
                v28 = v39[0];
              }

              *v56 = 136315394;
              *&v56[4] = v27;
              *&v56[12] = 2080;
              *&v56[14] = v28;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I SMS spam report queuing - [to:%s, payload: %s]", v56, 0x16u);
            }

            *v56 = 0;
            *&v56[8] = 0;
            if (SBYTE7(v52) < 0)
            {
              sub_100005F2C(v29, *buf, *&buf[8]);
            }

            else
            {
              *v29 = *buf;
              v30 = v52;
            }

            v31 = DWORD2(v52);
            if (SBYTE7(v54) < 0)
            {
              sub_100005F2C(v32, v53, *(&v53 + 1));
            }

            else
            {
              *v32 = v53;
              v33 = v54;
            }

            v34 = DWORD2(v54);
            if (SBYTE7(v55[1]) < 0)
            {
              sub_100005F2C(v35, *&v55[0], *(&v55[0] + 1));
            }

            else
            {
              *v35 = v55[0];
              v36 = *&v55[1];
            }

            v37 = *(&v55[1] + 8);
            *v38 = *(&v55[2] + 8);
            *&v38[13] = *(&v55[3] + 5);
            sub_1001F7C1C();
          }
        }
      }

      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v24 = sub_100A76A44(1u);
        sub_101765C80(v24, buf);
      }

      v22 = 1;
    }

    else
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_100A76A44(2u);
        sub_101765BD4(v23, buf);
      }

      v22 = 2;
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_100A76A44(1u);
      sub_101765CB8(v21, buf);
    }

    v22 = 1;
  }

  if (v44)
  {
    sub_100004A34(v44);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[1]);
  }

  if (SHIBYTE(v48[0]) < 0)
  {
    operator delete(v47[0]);
  }

  if (SBYTE7(v46) < 0)
  {
    operator delete(v45[0]);
  }

  return v22;
}

void sub_1001F7AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, std::__shared_weak_count *a44, char a45)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1001F7CFC(v45 - 256);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a44)
  {
    sub_100004A34(a44);
  }

  sub_1001FA910(&a45);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F7CFC(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t MessageCenterModel::queueReportSpamMMS(uint64_t a1, uint64_t *a2)
{
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  sub_100A76D54(*a2, &v48);
  v3 = (*(**(a1 + 48) + 16))(*(a1 + 48), DWORD2(v49));
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I reporting MMS spam...", &buf, 2u);
  }

  v46 = 0;
  v47 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *&buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  std::mutex::unlock(v6);
  v46 = v13;
  v47 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    v13 = v46;
  }

  if (v13)
  {
    __p[0] = 0;
    __p[1] = 0;
    v45 = 0;
    sub_10083AA10(DWORD2(v49), &v46, 1, __p);
    v14 = (*(*a1 + 320))(a1, DWORD2(v49), __p, &v48);
    v15 = *v3;
    if ((v14 & 1) == 0)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_100A76A44(2u);
        sub_101765BD4(v22, &buf);
      }

      v20 = 2;
      goto LABEL_34;
    }

    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = __p;
      if (v45 < 0)
      {
        v16 = __p[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Carrier report junk address: %s", &buf, 0xCu);
    }

    v17 = *(a1 + 1928);
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = a1 + 1928;
    do
    {
      if (*(v17 + 32) >= SDWORD2(v49))
      {
        v18 = v17;
      }

      v17 = *(v17 + 8 * (*(v17 + 32) < SDWORD2(v49)));
    }

    while (v17);
    if (v18 == a1 + 1928 || SDWORD2(v49) < *(v18 + 32))
    {
      goto LABEL_25;
    }

    if (*(v18 + 63) < 0)
    {
      v24 = *(v18 + 48);
      if (v24)
      {
        __dst = 0uLL;
        v43 = 0;
        sub_100005F2C(&__dst, *(v18 + 40), v24);
LABEL_52:
        v40 = 0uLL;
        v41 = 0;
        sub_10000501C(&v40, "");
        memset(v39, 0, sizeof(v39));
        v25 = *(&v51 + 1);
        v26 = v52;
        if (*(&v51 + 1) == v52)
        {
LABEL_76:
          v37[0] = 0;
          v37[1] = 0;
          v38 = 0;
          sub_10000501C(&v60, "MMS");
          LOBYTE(buf) = 0;
          BYTE8(v70) = 0;
          LOBYTE(__str) = 0;
          BYTE8(__str_16) = 0;
          sub_10083ACA4(&v60, &v48, &v40, &v58, &buf, &__str, v37);
          if (BYTE8(__str_16) == 1 && SBYTE7(__str_16) < 0)
          {
            operator delete(__str);
          }

          if (BYTE8(v70) == 1 && SBYTE7(v70) < 0)
          {
            operator delete(buf);
          }

          if (SHIBYTE(v61) < 0)
          {
            operator delete(v60);
          }

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          buf = 0u;
          v70 = 0u;
          sub_1001F8BB8(&buf, v37);
          sub_10000501C(&__str, "text/plain");
          std::string::operator=((&v70 + 8), &__str);
          if (SBYTE7(__str_16) < 0)
          {
            operator delete(__str);
          }

          LOBYTE(v75) = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          MessageCenterModel::rectifyPartsToSubmitInSpamMessage(a1, DWORD2(v49), v39, &buf, &v34);
          if (v34 != v35)
          {
            v67 = 0u;
            memset(v68, 0, sizeof(v68));
            v65 = 0u;
            v66 = 0u;
            __str = 0u;
            __str_16 = 0u;
            if (SHIBYTE(v45) < 0)
            {
              sub_100005F2C(&v60, __p[0], __p[1]);
            }

            else
            {
              v60 = *__p;
              v61 = v45;
            }

            __str = 0uLL;
            *&__str_16 = 0;
            sub_10016FB64(&__str, &v60, &v62, 1uLL);
            v65 = 0uLL;
            *(&__str_16 + 1) = 0;
            sub_1001C6A08(&__str_16 + 8, v34, v35, (v35 - v34) >> 7);
            if (SBYTE7(v54) < 0)
            {
              sub_100005F2C(&v66, v53, *(&v53 + 1));
            }

            else
            {
              v66 = v53;
              *&v67 = v54;
            }

            DWORD2(v67) = 0;
            memset(v68, 0, 24);
            sub_1001C7D94(v68, v55, *(&v55 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v55 + 1) - v55) >> 4));
            if (SHIBYTE(v43) < 0)
            {
              sub_100005F2C(&v68[3], __dst, *(&__dst + 1));
            }

            else
            {
              *&v68[3] = __dst;
              v68[5] = v43;
            }

            if (SHIBYTE(v61) < 0)
            {
              operator delete(v60);
            }

            v33 = sub_100AA1234(*(a1 + 128));
            v32[3] = 0;
            v32[4] = 0;
            sub_100200CF4();
          }

          if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
          {
            v31 = sub_100A76A44(1u);
            sub_101765CF0(v31, &__str);
          }

          v20 = 1;
          v32[0] = &v34;
          sub_1001C6CB8(v32);
          v34 = &v75 + 1;
          sub_1001C6984(&v34);
          if (SHIBYTE(v74) < 0)
          {
            operator delete(*(&v73 + 1));
          }

          if (SBYTE7(v73) < 0)
          {
            operator delete(v72);
          }

          if (SHIBYTE(v71) < 0)
          {
            operator delete(*(&v70 + 1));
          }

          if (buf)
          {
            *(&buf + 1) = buf;
            operator delete(buf);
          }

          if (SHIBYTE(v38) < 0)
          {
            operator delete(v37[0]);
          }

          *&buf = v39;
          sub_1001C6CB8(&buf);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }

          if (SHIBYTE(v43) < 0)
          {
            operator delete(__dst);
          }

          goto LABEL_34;
        }

        while (1)
        {
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          buf = 0u;
          v70 = 0u;
          sub_1001C787C(&buf, v25);
          if (SHIBYTE(v71) < 0)
          {
            if (v71 != 10)
            {
              goto LABEL_62;
            }

            v27 = *(&v70 + 1);
          }

          else
          {
            v27 = &v70 + 8;
            if (SHIBYTE(v71) != 10)
            {
              goto LABEL_62;
            }
          }

          v28 = *v27;
          v29 = *(v27 + 4);
          if (v28 == 0x616C702F74786574 && v29 == 28265)
          {
            sub_1001E0090(&__str, buf, *(&buf + 1), *(&buf + 1) - buf);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(v40);
            }

            v40 = __str;
            v41 = __str_16;
            goto LABEL_63;
          }

LABEL_62:
          sub_1001F8B64(v39, &buf);
LABEL_63:
          *&__str = &v75 + 8;
          sub_1001C6984(&__str);
          if (SHIBYTE(v74) < 0)
          {
            operator delete(*(&v73 + 1));
          }

          if (SBYTE7(v73) < 0)
          {
            operator delete(v72);
          }

          if (SHIBYTE(v71) < 0)
          {
            operator delete(*(&v70 + 1));
          }

          if (buf)
          {
            *(&buf + 1) = buf;
            operator delete(buf);
          }

          v25 += 128;
          if (v25 == v26)
          {
            goto LABEL_76;
          }
        }
      }
    }

    else if (*(v18 + 63))
    {
      __dst = *(v18 + 40);
      v43 = *(v18 + 56);
      goto LABEL_52;
    }

LABEL_25:
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_100A76A44(1u);
      sub_101765C80(v19, &buf);
    }

    v20 = 1;
LABEL_34:
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    v21 = sub_100A76A44(1u);
    sub_101765CB8(v21, &buf);
  }

  v20 = 1;
LABEL_36:
  if (v47)
  {
    sub_100004A34(v47);
  }

  if (SBYTE7(v59) < 0)
  {
    operator delete(v58);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(*(&v56 + 1));
  }

  __p[0] = &v55;
  sub_1001C6984(__p);
  if (SBYTE7(v54) < 0)
  {
    operator delete(v53);
  }

  __p[0] = &v51 + 8;
  sub_1001C6CB8(__p);
  __p[0] = &v50;
  sub_1000087B4(__p);
  if (SBYTE7(v49) < 0)
  {
    operator delete(v48);
  }

  return v20;
}

void sub_1001F88D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72)
  {
    sub_100004A34(a72);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a15)
  {
    sub_100004A34(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_1001C7F18(&STACK[0x210]);
  STACK[0x210] = &a22;
  sub_1001C6CB8(&STACK[0x210]);
  sub_1001C3CEC(v72 - 240);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  *(v72 - 240) = &a31;
  sub_1001C6CB8((v72 - 240));
  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a54)
  {
    sub_100004A34(a54);
  }

  sub_1001FAA74(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F8B64(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1001FA964(a1, a2);
  }

  else
  {
    sub_1001C787C(a1[1], a2);
    result = v3 + 128;
    a1[1] = v3 + 128;
  }

  a1[1] = result;
  return result;
}

double sub_1001F8BB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  v8 = 0;
  v7 = 0uLL;
  sub_1001E0D88(&v7, a2, a2 + v4, v4);
  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

void MessageCenterModel::rectifyPartsToSubmitInSpamMessage(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
    v18 = v17[3];
    v19 = v17[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v19);
      v20 = 0;
      if (!v18)
      {
        goto LABEL_7;
      }

LABEL_13:
      theDict = 0;
      v38 = v19;
      (*(*v18 + 96))(buf, v18, a2, 1, @"MMS", 0, 0);
      sub_100010180(&theDict, buf);
      sub_10000A1EC(buf);
      if (theDict && (Value = CFDictionaryGetValue(theDict, @"MaxMessageSize"), (v22 = Value) != 0) && (v23 = CFGetTypeID(Value), v23 == CFNumberGetTypeID()))
      {
        *buf = 0;
        ctu::cf::assign(buf, v22, v24);
        v25 = a3;
        v26 = *buf;
      }

      else
      {
        v25 = a3;
        v26 = 0;
      }

      v27 = a4[1] - *a4;
      if (v27 > v26)
      {
        v28 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v27;
          *v42 = 1024;
          *&v42[2] = v26;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Junk Payload size (%u) greater than allowed max MMS size (%u). Can't report spam", buf, 0xEu);
        }

        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
        v19 = v38;
        goto LABEL_44;
      }

      v37 = v20;
      v29 = v26;
      v30 = *v25;
      v31 = v25[1];
      v36 = v25;
      if (*v25 == v31)
      {
        v34 = v26;
LABEL_28:
        v35 = *v10;
        if (v34 > v27)
        {
          v19 = v38;
          v20 = v37;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Sending original MMS parts and junk payload in spam report", buf, 2u);
            v30 = *v36;
            v31 = v36[1];
          }

          *a5 = 0;
          a5[1] = 0;
          a5[2] = 0;
          sub_1001C6A08(a5, v30, v31, (v31 - v30) >> 7);
          sub_1001F8B64(a5, a4);
          goto LABEL_44;
        }
      }

      else
      {
        v32 = *v25;
        while (1)
        {
          v33 = v32[1] - *v32;
          v34 = v29 - v33;
          if (v29 < v33)
          {
            break;
          }

          v32 += 16;
          v29 -= v33;
          if (v32 == v31)
          {
            goto LABEL_28;
          }
        }

        v35 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = v26;
          *v42 = 2048;
          *&v42[2] = v33;
          v43 = 2048;
          v44[0] = v29;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Size of parts from original message greater than allowed max MMS size (%u) [Current part size: (%zu), Remaining size: (%llu)]. Will try to send only junk payload", buf, 0x1Cu);
          v35 = *v10;
        }
      }

      v19 = v38;
      v20 = v37;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Sending only junk payload in spam report", buf, 2u);
      }

      sub_1001C787C(buf, a4);
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      sub_1001FAB10(a5, buf, &v51, 1uLL);
      v40 = &v50;
      sub_1001C6984(&v40);
      if (v49 < 0)
      {
        operator delete(__p);
      }

      if (v47 < 0)
      {
        operator delete(v46);
      }

      if (v45 < 0)
      {
        operator delete(*(v44 + 4));
      }

      if (*buf)
      {
        *v42 = *buf;
        operator delete(*buf);
      }

LABEL_44:
      sub_10001021C(&theDict);
      if (v20)
      {
        return;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v12);
  v19 = 0;
  v20 = 1;
  if (v18)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_101765D28();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((v20 & 1) == 0)
  {
LABEL_45:
    sub_100004A34(v19);
  }
}

void sub_1001F90CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  v9 = va_arg(va1, void);
  sub_1001C6CB8(va1);
  sub_10001021C(va);
  if ((v5 & 1) == 0)
  {
    sub_100004A34(a5);
  }

  _Unwind_Resume(a1);
}

uint64_t MessageCenterModel::queueReportSpamRCS(uint64_t a1, __int128 **a2)
{
  memset(v86, 0, sizeof(v86));
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  memset(v79, 0, sizeof(v79));
  v77 = 0u;
  *__src = 0u;
  v76 = 0u;
  sub_100A770F0(*a2, &v76);
  v3 = (*(**(a1 + 48) + 16))(*(a1 + 48), DWORD2(v77));
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I reporting RCS spam...", buf, 2u);
  }

  v75 = 0;
  v74 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  std::mutex::unlock(v6);
  v74 = v13;
  v75 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    v13 = v74;
  }

  if (!v13)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v17 = sub_100A76A44(1u);
      sub_101765CB8(v17, buf);
    }

    goto LABEL_24;
  }

  v14 = *(a1 + 1928);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = a1 + 1928;
  do
  {
    if (*(v14 + 32) >= SDWORD2(v77))
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * (*(v14 + 32) < SDWORD2(v77)));
  }

  while (v14);
  if (v15 == a1 + 1928 || SDWORD2(v77) < *(v15 + 32))
  {
LABEL_20:
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_100A76A44(1u);
      sub_101765C80(v16, buf);
    }

LABEL_24:
    v18 = 1;
    goto LABEL_25;
  }

  if (*(v15 + 63) < 0)
  {
    v20 = *(v15 + 48);
    if (!v20)
    {
      goto LABEL_20;
    }

    __dst[1] = 0;
    __dst[0] = 0;
    v73 = 0;
    sub_100005F2C(__dst, *(v15 + 40), v20);
  }

  else
  {
    if (!*(v15 + 63))
    {
      goto LABEL_20;
    }

    *__dst = *(v15 + 40);
    v73 = *(v15 + 56);
  }

  memset(&v71, 0, sizeof(v71));
  sub_10000501C(&v71, "");
  if (LOBYTE(v79[2]) == 1)
  {
    std::string::operator=(&v71, (v79 + 8));
  }

  memset(&v70, 0, sizeof(v70));
  sub_10000501C(&v70, "");
  memset(&__str, 0, sizeof(__str));
  sub_10000501C(&__str, "");
  if (v80 == 1)
  {
    std::string::operator=(&v70, (&v79[2] + 8));
    if (BYTE8(v83) == 1)
    {
      std::string::operator=(&__str, &v82);
    }

    else
    {
      sub_1000167D4(&__str, "application/octet-stream", 0x18uLL);
    }
  }

  v67[0] = 0;
  v67[1] = 0;
  v68 = 0;
  if (SBYTE7(v79[0]) < 0)
  {
    sub_100005F2C(v67, __src[0], __src[1]);
  }

  else
  {
    *v67 = *__src;
    v68 = *&v79[0];
  }

  v65 = 0uLL;
  v66 = 0;
  sub_10000501C(v90, "RCS");
  if (SHIBYTE(v68) < 0)
  {
    sub_100005F2C(buf, v67[0], v67[1]);
  }

  else
  {
    *buf = *v67;
    *&v97 = v68;
  }

  BYTE8(v97) = 1;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__p, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v70.__r_.__value_.__l.__data_;
    v57[0] = v70.__r_.__value_.__r.__words[2];
  }

  LOBYTE(v57[1]) = 1;
  sub_10083ACA4(v90, &v76, &v71, v86 + 1, buf, __p, &v65);
  if (LOBYTE(v57[1]) == 1 && SHIBYTE(v57[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v97) == 1 && SBYTE7(v97) < 0)
  {
    operator delete(*buf);
  }

  if ((v90[23] & 0x80000000) != 0)
  {
    operator delete(*v90);
  }

  v21 = v81;
  v22 = *(&v80 + 1);
  v23 = *v3;
  v24 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
  if (v21 == v22)
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I RCS message has no attachment, reporting spam via SMS", buf, 2u);
    }

    __p[0] = 0;
    __p[1] = 0;
    v57[0] = 0;
    sub_10083AA10(DWORD2(v77), &v74, 0, __p);
    v31 = (*(*a1 + 320))(a1, DWORD2(v77), __p, &v76);
    v32 = *v3;
    if (v31)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v33 = __p;
        if (SHIBYTE(v57[0]) < 0)
        {
          v33 = __p[0];
        }

        *buf = 136315138;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Carrier report junk address: %s", buf, 0xCu);
      }

      v100 = 0u;
      memset(v101, 0, sizeof(v101));
      v98 = 0u;
      v99 = 0u;
      *buf = 0u;
      v97 = 0u;
      if (SHIBYTE(v57[0]) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&v97 = v57[0];
      }

      DWORD2(v97) = DWORD2(v77);
      if (SHIBYTE(v66) < 0)
      {
        sub_100005F2C(&v98, v65, *(&v65 + 1));
      }

      else
      {
        v98 = v65;
        *&v99 = v66;
      }

      DWORD2(v99) = 1;
      sub_10000501C(&v100, "");
      *(&v101[0] + 1) = 0;
      LOBYTE(v101[1]) = 0;
      BYTE4(v101[1]) = 0;
      LOBYTE(v101[2]) = 0;
      DWORD1(v101[2]) = 9;
      DWORD2(v101[2]) = sub_100AA1234(*(a1 + 128));
      BYTE12(v101[2]) = 1;
      v37 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v38 = __p;
        if (SHIBYTE(v57[0]) < 0)
        {
          v38 = __p[0];
        }

        v39 = &v65;
        if (v66 < 0)
        {
          v39 = v65;
        }

        *v90 = 136315394;
        *&v90[4] = v38;
        *&v90[12] = 2080;
        *&v90[14] = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I RCS spam report queuing - [to:%s, payload: %s]", v90, 0x16u);
      }

      *v90 = 0uLL;
      if (SBYTE7(v97) < 0)
      {
        sub_100005F2C(v41, *buf, *&buf[8]);
      }

      else
      {
        *v41 = *buf;
        v42 = v97;
      }

      v43 = DWORD2(v97);
      if (SBYTE7(v99) < 0)
      {
        sub_100005F2C(v44, v98, *(&v98 + 1));
      }

      else
      {
        *v44 = v98;
        v45 = v99;
      }

      v46 = DWORD2(v99);
      if (SBYTE7(v101[0]) < 0)
      {
        sub_100005F2C(v47, v100, *(&v100 + 1));
      }

      else
      {
        *v47 = v100;
        v48 = *&v101[0];
      }

      v49 = *(v101 + 8);
      v50[0] = *(&v101[1] + 8);
      *(v50 + 13) = *(&v101[2] + 5);
      sub_1001F7C1C();
    }

    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v35 = sub_100A76A44(2u);
      sub_101765BD4(v35, buf);
    }

    v18 = 2;
    if ((SHIBYTE(v57[0]) & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

    v40 = __p[0];
  }

  else
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I RCS message has attachment, reporting spam via MMS", buf, 2u);
    }

    v63[0] = 0;
    v63[1] = 0;
    v64 = 0;
    sub_10083AA10(DWORD2(v77), &v74, 1, v63);
    v25 = (*(*a1 + 320))(a1, DWORD2(v77), v63, &v76);
    v26 = *v3;
    if (v25)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v63;
        if (v64 < 0)
        {
          v27 = v63[0];
        }

        *buf = 136315138;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Carrier report junk address: %s", buf, 0xCu);
      }

      v100 = 0u;
      memset(v101, 0, sizeof(v101));
      v98 = 0u;
      v99 = 0u;
      *buf = 0u;
      v97 = 0u;
      sub_1001C3C8C(buf, *(&v80 + 1), v81 - *(&v80 + 1));
      std::string::operator=((&v97 + 8), &__str);
      memset(v62, 0, sizeof(v62));
      *v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      *v59 = 0u;
      *__p = 0u;
      *v57 = 0u;
      if (v66 >= 0)
      {
        v28 = &v65;
      }

      else
      {
        v28 = v65;
      }

      if (v66 >= 0)
      {
        v29 = HIBYTE(v66);
      }

      else
      {
        v29 = *(&v65 + 1);
      }

      sub_1001C3C8C(__p, v28, v29);
      sub_10000501C(v90, "text/plain");
      std::string::operator=(&v57[1], v90);
      if ((v90[23] & 0x80000000) != 0)
      {
        operator delete(*v90);
      }

      v53 = 0;
      v54 = 0;
      v55 = 0;
      v30 = DWORD2(v77);
      sub_1001C787C(v90, buf);
      memset(v87, 0, sizeof(v87));
      v88 = 0;
      sub_1001FAB10(v87, v90, buf, 1uLL);
      MessageCenterModel::rectifyPartsToSubmitInSpamMessage(a1, v30, v87, __p, &v53);
      v51[0] = v87;
      sub_1001C6CB8(v51);
      v51[0] = v95 + 8;
      sub_1001C6984(v51);
      if (SHIBYTE(v94) < 0)
      {
        operator delete(*(&v93 + 1));
      }

      if (SBYTE7(v93) < 0)
      {
        operator delete(v92[0]);
      }

      if (SHIBYTE(v91) < 0)
      {
        operator delete(*&v90[24]);
      }

      if (*v90)
      {
        *&v90[8] = *v90;
        operator delete(*v90);
      }

      if (v53 != v54)
      {
        memset(v95, 0, sizeof(v95));
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        *v92 = 0u;
        memset(v90, 0, sizeof(v90));
        if (SHIBYTE(v64) < 0)
        {
          sub_100005F2C(v87, v63[0], v63[1]);
        }

        else
        {
          *v87 = *v63;
          v88 = v64;
        }

        memset(v90, 0, 24);
        sub_10016FB64(v90, v87, &v89, 1uLL);
        v91 = 0uLL;
        *&v90[24] = 0;
        sub_1001C6A08(&v90[24], v53, v54, (v54 - v53) >> 7);
        sub_10000501C(v92, "");
        DWORD2(v93) = 0;
        *&v95[0] = 0;
        v94 = 0uLL;
        if (SHIBYTE(v73) < 0)
        {
          sub_100005F2C(v95 + 8, __dst[0], __dst[1]);
        }

        else
        {
          *(v95 + 8) = *__dst;
          *(&v95[1] + 1) = v73;
        }

        if (SHIBYTE(v88) < 0)
        {
          operator delete(*v87);
        }

        v52 = sub_100AA1234(*(a1 + 128));
        v51[3] = 0;
        v51[4] = 0;
        sub_100200CF4();
      }

      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v36 = sub_100A76A44(1u);
        sub_101765CF0(v36, v90);
      }

      v18 = 1;
      v51[0] = &v53;
      sub_1001C6CB8(v51);
      v53 = v62 + 1;
      sub_1001C6984(&v53);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60[1]);
      }

      if (SHIBYTE(v60[0]) < 0)
      {
        operator delete(v59[0]);
      }

      if (SHIBYTE(v58) < 0)
      {
        operator delete(v57[1]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      __p[0] = &v101[1] + 8;
      sub_1001C6984(__p);
      if (SHIBYTE(v101[0]) < 0)
      {
        operator delete(*(&v100 + 1));
      }

      if (SBYTE7(v100) < 0)
      {
        operator delete(v99);
      }

      if (SHIBYTE(v98) < 0)
      {
        operator delete(*(&v97 + 1));
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    else
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v34 = sub_100A76A44(2u);
        sub_101765BD4(v34, buf);
      }

      v18 = 2;
    }

    if ((SHIBYTE(v64) & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

    v40 = v63[0];
  }

  operator delete(v40);
LABEL_149:
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_25:
  if (v75)
  {
    sub_100004A34(v75);
  }

  sub_1001FAC38(&v76);
  return v18;
}

void sub_1001FA1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, std::__shared_weak_count *a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (STACK[0x338])
  {
    sub_100004A34(STACK[0x338]);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  if (a29)
  {
    sub_100004A34(a29);
  }

  if (a31)
  {
    sub_100004A34(a31);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    sub_100004A34(a36);
  }

  sub_1001C7F18(&STACK[0x370]);
  STACK[0x370] = &a38;
  sub_1001C6CB8(&STACK[0x370]);
  sub_1001C3CEC(&a41);
  sub_1001C3CEC(v77 - 240);
  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a77);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (STACK[0x238])
  {
    sub_100004A34(STACK[0x238]);
  }

  sub_1001FAC38(&STACK[0x240]);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FA58C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_1001FA5E0(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFArrayGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1001FA644(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001FA698(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001FA698(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1001FA6E4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_1001FA768(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 24);
        if (v8)
        {
          sub_100004A34(v8);
        }

        v7 -= 32;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__int128 *sub_1001FA768(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_100004A34(v8);
      }

      v9 = *(v5 + 2);
      *(a4 + 21) = *(v5 + 21);
      *(a4 + 16) = v9;
      v5 += 2;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1001FA84C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101765DD0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FA868(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001FA8A0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_1001FA8D0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FA910(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001FA964(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1001C6ACC(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 7;
  sub_1001C787C(v2 << 7, a2);
  v16 = ((v2 << 7) + 128);
  v8 = a1[1];
  v9 = (v2 << 7) + *a1 - v8;
  sub_1001C7648(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1001C7714(&v14);
  return v13;
}

void sub_1001FAA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001C7714(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FAA74(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = (a1 + 112);
  sub_1001C6984(&v3);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v3 = (a1 + 56);
  sub_1001C6CB8(&v3);
  v3 = (a1 + 32);
  sub_1000087B4(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001FAB10(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001C6A90(result, a4);
  }

  return result;
}

void sub_1001FAB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001C6CB8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FAB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1001C787C(v4, v6);
      v6 += 128;
      v4 = v11 + 128;
      v11 += 128;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1001C6BB4(v8);
  return v4;
}

uint64_t sub_1001FAC38(uint64_t a1)
{
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 208) == 1 && *(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001FAD0C(uint64_t a1)
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

void *sub_1001FAE08(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E30960;
  sub_100AA11DC(a1 + 3);
  return a1;
}

void sub_1001FAE84(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E30960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1001FAF00(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10010935C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1001FAF58(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10010935C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1001FAFB0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1001FB008(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1001FB008(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1001FB090(v5, v5 + 1, v4 + 7);
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

uint64_t sub_1001FB090(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_1000504CC(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1001FB120();
  }

  return result;
}

void sub_1001FB190(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_1001FB1A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1001FB1A8(a1, *a2);
    sub_1001FB1A8(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1001FB29C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FB37C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FB448(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1001FB51C);
  __cxa_rethrow();
}

void sub_1001FB488(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001FB4DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FB51C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1001FB548(std::mutex *this, uint64_t *a2)
{
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

  std::mutex::lock(this);
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v13);
  v11 = v10;
  if (v9)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

uint64_t sub_1001FB624(std::mutex *this, uint64_t *a2)
{
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

  std::mutex::lock(this);
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v13);
  v11 = v10;
  if (v9)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

uint64_t sub_1001FB700(std::mutex *this, uint64_t *a2)
{
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

  std::mutex::lock(this);
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v13);
  v11 = v10;
  if (v9)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

uint64_t sub_1001FB7DC(std::mutex *this, uint64_t *a2)
{
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

  std::mutex::lock(this);
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v13);
  v11 = v10;
  if (v9)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

uint64_t sub_1001FB8B8(std::mutex *this, uint64_t *a2)
{
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

  std::mutex::lock(this);
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v13);
  v11 = v10;
  if (v9)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

uint64_t sub_1001FB994(std::mutex *this, void *a2)
{
  v4 = "27MessageCenterModelInterface";
  if (("27MessageCenterModelInterface" & 0x8000000000000000) != 0)
  {
    v5 = ("27MessageCenterModelInterface" & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  if (*a2)
  {
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v8;
    v13 = v4;
    sub_100145BF0(&this[1].__m_.__sig, &v13);
    v10 = v9;
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else
  {
    v13 = v4;
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v10 = 1;
  }

  std::mutex::unlock(this);
  return v10 & 1;
}

void sub_1001FBA74(ServiceManager::Service *this)
{
  *this = off_101E30B20;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1001FBAD0(ServiceManager::Service *this)
{
  *this = off_101E30B20;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1001FBB50@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1001FBB94(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v6 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v4.var0.fObj = &v6;
    MessageCenterModel::notifyServiceBootstrap(v2, v4);
  }

  v5.var0.fObj = &v6;
  MessageCenterModel::notifyServiceBootstrap(v2, v5);
}

uint64_t *sub_1001FBC30(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  ctu::RestModule::disconnect((*v1 + 72));
  NotifySubscription::cancel((v2 + 1944));
  NotifySubscription::cancel((v2 + 1968));
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, v2, @"com.apple.LaunchServices.applicationRegistered", 0);
  CFNotificationCenterRemoveObserver(DistributedCenter, v2, @"com.apple.LaunchServices.applicationUnregistered", 0);
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_1001FBCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1001FBCD8(void *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  ServiceMap = Registry::getServiceMap(*(*v1 + 56));
  v4 = ServiceMap;
  v5 = "17TMRouterInterface";
  if (("17TMRouterInterface" & 0x8000000000000000) != 0)
  {
    v6 = ("17TMRouterInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v15 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
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
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
LABEL_9:
  v12 = *(v2 + 168);
  *(v2 + 160) = v11;
  *(v2 + 168) = v10;
  if (v12)
  {
    sub_100004A34(v12);
  }

  MessageCenterModel::initialize_sync(v2);
}

void sub_1001FBDD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1000FF844(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void sub_1001FBDF0(Registry ****a1)
{
  v2 = a1;
  v1 = **a1;
  MessageCenterModel::handleDatabaseFullChanged(v1);
  MessageCenterModel::handleMMSEnabledChanged(v1);
  operator delete();
}

__n128 sub_1001FBEF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E30BA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1001FBF20(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v21 = *v3;
  v22 = v5;
  if (v3[2])
  {
    v5[2] = &v22;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v21 = &v22;
  }

  sub_10011E228(v3, a2);
  v6 = *(a1 + 16);
  v7 = *(v6 + 176);
  if (v7 != (v6 + 184))
  {
    do
    {
      v8 = v22;
      v9 = *(v7 + 7);
      if (!v22)
      {
        goto LABEL_12;
      }

      v10 = &v22;
      do
      {
        if (*(v8 + 7) >= v9)
        {
          v10 = v8;
        }

        v8 = v8[*(v8 + 7) < v9];
      }

      while (v8);
      if (v10 != &v22 && v9 >= *(v10 + 7))
      {
        v18 = *(v7 + 32);
        if (*(v10 + 32) != v18)
        {
          v19 = *(*(**(v6 + 48) + 16))(*(v6 + 48));
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = CSIBOOLAsString(v18);
            *buf = 136315138;
            v25 = v20;
            v14 = v19;
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_12:
        v11 = *(v7 + 32);
        v12 = *(*(**(v6 + 48) + 16))(*(v6 + 48), v9);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = CSIBOOLAsString(v11);
          *buf = 136315138;
          v25 = v13;
          v14 = v12;
LABEL_14:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MMS ready: %s", buf, 0xCu);
        }
      }

      v15 = v7[1];
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
          v16 = v7[2];
          v17 = *v16 == v7;
          v7 = v16;
        }

        while (!v17);
      }

      v7 = v16;
    }

    while (v16 != (v6 + 184));
  }

  sub_10006DCAC(&v21, v22);
}

uint64_t sub_1001FC17C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FC238(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E30C20;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001FC26C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FC328(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E30CA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001FC35C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FC418(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E30D20;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001FC44C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FC584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1001FC634(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E30DA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001FC674(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FC6C0(uint64_t a1, const xpc::object *a2)
{
  read_rest_value(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_1001FC828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1001FC8D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E30E20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001FC918(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FC9D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E30EA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001FCA08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FCA54(uint64_t a1, xpc_object_t *a2)
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

  sub_100170380(a1, *(a1 + 8));
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

    sub_100008EA4(&v15, object, 0);
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

    sub_100008EA4(v14, object, count);
    xpc_release(object[0]);
    for (i = v16; i != v14[1] || v15 != v14[0]; i = ++v16)
    {
      v13 = 0;
      object[0] = &v15;
      object[1] = i;
      sub_10003EAD4(object, &v13);
      if (xpc_get_type(v13) == &_xpc_type_dictionary)
      {
        *__p = 0u;
        v12 = 0u;
        *v9 = 0u;
        v10 = 0u;
        *object = 0u;
        v8 = 0u;
        v6 = v13;
        if (v13)
        {
          xpc_retain(v13);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1001FCD1C(object, &v6);
        xpc_release(v6);
        sub_1001FCED0(a1, object);
        if (SBYTE7(v12) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v10) < 0)
        {
          operator delete(v9[0]);
        }

        if (SHIBYTE(v8) < 0)
        {
          operator delete(object[1]);
        }
      }

      xpc_release(v13);
    }

    xpc_release(v14[0]);
    xpc_release(v15);
  }

  xpc_release(v3);
}

void sub_1001FCC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 48));
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_1001FCD1C(int *a1, xpc_object_t *a2)
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
    rest::read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1001FCE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FCED0(uint64_t a1, int *a2)
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

uint64_t sub_1001FCFF0(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
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

uint64_t sub_1001FD0B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E30F20;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001FD0E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FD220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1001FD2D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E30FA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001FD308(void *a1, const xpc::object *a2)
{
  v3 = a1[1];
  v4 = *v3;
  v10 = *(v3 + 2);
  v9 = v4;
  read_rest_value(v3, a2);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7, &v9);
}

uint64_t sub_1001FD394(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FD3E0(uint64_t a1)
{
  v1 = *(a1 + 32);
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
        MessageCenterModel::handleDatabaseFullChanged(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1001FD468(uint64_t result, uint64_t a2)
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

void sub_1001FD484(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1001FD4B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E31050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001FD508(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1001FD51C(uint64_t a1)
{
  v1 = *(a1 + 32);
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
        MessageCenterModel::handleMMSEnabledChanged(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1001FD5A4(uint64_t result, uint64_t a2)
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

void sub_1001FD5C0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1001FD5F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E310D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001FD644(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1001FD6C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E31120;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001FD6FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FD818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_1001FD834(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FD834(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

void sub_1001FD914(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101765E28(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FD930(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001FD968(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1001FD998(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1001FD9D8(void *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I receiveMMSFromNetwork", buf, 2u);
  }

  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  *buf = *(v1 + 16);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  MessageCenterModel::receiveMMS_sync(v2, v4);
}

void sub_1001FDB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1001FDB58(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FDB58(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1001FDC2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101765E28(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FDC48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001FDC80(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1001FDCB0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1001FDCF0(uint64_t a1, unsigned int *a2)
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

uint64_t sub_1001FDDD8(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1001FDE14(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_1001FDE60(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1001FDEC8(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1001FDF30(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*v1)[11];
  v3 = (*v1 + 12);
  if (v2 != v3)
  {
    v4 = v1 + 2;
    v5 = v1 + 1;
    while (1)
    {
      v6 = v2[5];
      if (v6)
      {
        v7 = (*(*v6 + 64))(v6);
        v8 = v5;
        if (v7 == 2)
        {
          goto LABEL_7;
        }

        if (v7 == 1)
        {
          break;
        }
      }

LABEL_8:
      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v8 = v4;
LABEL_7:
    sub_1001FDFFC(*v8, v2 + 8);
    goto LABEL_8;
  }
}

void sub_1001FDFFC(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1000CE3D4();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_100016740(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_1001FE0DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[2];
  v26 = 0;
  v27 = 0;
  v3 = *v1;
  v4 = *(v2 + 64);
  v21 = *(v2 + 56);
  v22 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v3)(&v26);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v5 = v27;
  v25[0] = v26;
  v25[1] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = MessageCenterModel::checkMsgType_sync(v2, v25);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v6)
  {
    if ((*(*v26 + 48))(v26) == -1)
    {
      v7 = v27;
      v24[0] = v26;
      v24[1] = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MessageCenterModel::assignMessageId_sync(v2, v24);
      if (v7)
      {
        sub_100004A34(v7);
      }
    }

    Registry::getTimerService(&v21, *(v2 + 56));
    v8 = (**v21)(v21);
    if (v22)
    {
      sub_100004A34(v22);
    }

    (*(*v26 + 248))(v26, v8);
    v9 = ((**v1)[2])();
    if (MessageCenterModel::requiresResiliency_sync(v2, v9))
    {
      v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Adding message to resiliency queue", &v21, 2u);
      }

      v12 = *v1;
      v11 = v1[1];
      v21 = *v1;
      v22 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *v23 = v8;
      *&v23[8] = (*(*v26 + 48))(v26);
      v23[12] = 0;
      v14 = *(v2 + 2064);
      if (v14 >= *(v2 + 2072))
      {
        v18 = sub_1001FE4C4((v2 + 2056), &v21);
        v19 = v22;
        *(v2 + 2064) = v18;
        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      else
      {
        *v14 = v12;
        v14[1] = v11;
        v21 = 0;
        v22 = 0;
        v15 = *&v23[5];
        v14[2] = *v23;
        *(v14 + 21) = v15;
        *(v2 + 2064) = v14 + 4;
      }

      MessageCenterModel::attemptResilientMORequestsIfRequired_sync(v2, v13);
    }

    else
    {
      v17 = v27;
      v21 = v26;
      v22 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MessageCenterModel::queueForSend_sync(v2, &v21);
      if (v17)
      {
        sub_100004A34(v17);
      }
    }

    v16 = (*(*v26 + 48))(v26);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  return v16;
}

void sub_1001FE440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FE4C4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_1001FE5E0(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = *(a2 + 16);
  *(v8 + 21) = *(a2 + 21);
  *(v8 + 16) = v9;
  *&v18 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  sub_1001FE628(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1001FE758(&v16);
  return v15;
}

void sub_1001FE5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001FE758(va);
  _Unwind_Resume(a1);
}

void sub_1001FE5E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001FE628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v11 = 0;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v7 = *(v6 + 16);
      *(a4 + 21) = *(v6 + 21);
      *(a4 + 16) = v7;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        sub_100004A34(v8);
      }

      v5 += 32;
    }
  }

  return sub_1001FE6DC(v10);
}

uint64_t sub_1001FE6DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1001FE714(a1);
  }

  return a1;
}

void sub_1001FE714(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      sub_100004A34(v3);
    }

    v1 -= 32;
  }
}

void **sub_1001FE758(void **a1)
{
  sub_1001FE78C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001FE78C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 24);
    if (v4)
    {
      sub_100004A34(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

uint64_t sub_1001FE7E0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1001FE81C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1001FE858(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1 + 24;
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = (*v1 + 22);
  v5 = *v1[1];
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < *(v6 + 8))
  {
    return 0;
  }

  sub_1001FE8C8(v4, v6);
  return 1;
}

uint64_t *sub_1001FE8C8(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_1000194D8(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(a2);
  return v3;
}

void sub_1001FE908(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  if (*(v1 + 3) != 3)
  {
    *buf = 0;
    v16 = 0;
    MessageCenterModel::handleResultAndDetermineIfReAttemptIsRequired_sync(v2, *(v1 + 2), 1, 1, 0, *(v1 + 4));
    MessageCenterModel::handleMessageSendNotification_sync(v2, *(v1 + 2), 1, *(v1 + 4), 1u, *(v1 + 3), buf);
    goto LABEL_16;
  }

  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Handling SMS as phone number registration request", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
LABEL_13:
      (*(*v13 + 16))(v13, *(v1 + 2), *(v1 + 4), 1);
      if ((v14 & 1) == 0)
      {
        sub_100004A34(v12);
      }

      *buf = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_1001FED40;
      v18 = &unk_101E31420;
      v19 = 0;
      sub_1001FEB94(0x800E0);
LABEL_16:
      operator delete();
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  goto LABEL_13;
}

void sub_1001FEB4C()
{
  if ((v0 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

BOOL sub_1001FEB94(wis::MetricFactory *a1)
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

void sub_1001FECC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FED40(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 32);
  v3 = a2[8];
  a2[8] = v3 | 2;
  a2[4] = v2;
  v4 = *(result + 36);
  a2[8] = v3 | 6;
  a2[5] = v4;
  return result;
}

void sub_1001FED68(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (*(*a1 + 20))
  {
    v3 = 257;
  }

  else if (*(v1 + 6) == 3)
  {
    v3 = 257;
  }

  else
  {
    v3 = 256;
  }

  if (MessageCenterModel::handleResultAndDetermineIfReAttemptIsRequired_sync(**a1, *(*a1 + 2), 1, 0, v3, *(v1 + 7)))
  {
    goto LABEL_22;
  }

  v4 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
  v5 = *(v1 + 8);
  if (v5 != 3)
  {
    MessageCenterModel::handleMessageSendNotification_sync(v2, *(v1 + 2), 0, *(v1 + 7), 1u, v5, v1 + 3);
    goto LABEL_22;
  }

  v6 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Handling SMS as phone number registration request", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
LABEL_19:
      (*(*v15 + 16))(v15, *(v1 + 2), *(v1 + 7), 0);
      if ((v16 & 1) == 0)
      {
        sub_100004A34(v14);
      }

      v17 = *(v1 + 12);
      *buf = _NSConcreteStackBlock;
      v19 = 0x40000000;
      v20 = sub_1001FED40;
      v21 = &unk_101E31420;
      v22 = v17;
      sub_1001FEB94(0x800E0);
LABEL_22:
      operator delete();
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  goto LABEL_19;
}