void sub_10011A144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47, char *a48)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (v48)
  {
    sub_100004A34(v48);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  sub_100009970(&a47, a48);
  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

void BootstrapPolicyManager::submitSearchingTimeMetric_sync(uint64_t a1, unint64_t a2, uint64_t a3, BOOL a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  if (!v14)
  {
    v16 = 0;
LABEL_10:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (!v16)
  {
LABEL_7:
    v18 = *(a1 + 40);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    *buf = 0;
    v19 = "Failed to send bootstrap searching time metric : (no analytics interface)";
LABEL_45:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_85;
  }

LABEL_11:
  if ((*(a1 + 320) & 1) == 0)
  {
    v18 = *(a1 + 40);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    *buf = 0;
    v19 = "Failed to send bootstrap searching time metric : (no bootstrap profile)";
    goto LABEL_45;
  }

  memset(buf, 0, sizeof(buf));
  v55 = 0;
  if (*(a1 + 223) >= 0)
  {
    v20 = *(a1 + 223);
  }

  else
  {
    v20 = *(a1 + 208);
  }

  memset(&v52, 0, sizeof(v52));
  v21 = &v52;
  sub_1000677C4(&v52, v20 + 1);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v52.__r_.__value_.__r.__words[0];
  }

  if (v20)
  {
    if (*(a1 + 223) >= 0)
    {
      v22 = (a1 + 200);
    }

    else
    {
      v22 = *(a1 + 200);
    }

    memmove(v21, v22, v20);
  }

  *(&v21->__r_.__value_.__l.__data_ + v20) = 47;
  if ((*(a1 + 320) & 1) == 0)
  {
    sub_1000D1644();
  }

  v23 = *(a1 + 247);
  if (v23 >= 0)
  {
    v24 = (a1 + 224);
  }

  else
  {
    v24 = *(a1 + 224);
  }

  if (v23 >= 0)
  {
    v25 = *(a1 + 247);
  }

  else
  {
    v25 = *(a1 + 232);
  }

  v26 = std::string::append(&v52, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v53, "/", 1uLL);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = *(a3 + 23);
  if (v30 >= 0)
  {
    v31 = a3;
  }

  else
  {
    v31 = *a3;
  }

  if (v30 >= 0)
  {
    v32 = *(a3 + 23);
  }

  else
  {
    v32 = *(a3 + 8);
  }

  v33 = std::string::append(&v56, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v55 = v33->__r_.__value_.__r.__words[2];
  *buf = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_47:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017615B8();
    }

    if (SHIBYTE(v55) < 0)
    {
      sub_100005F2C(__p, *buf, *&buf[8]);
    }

    else
    {
      *__p = *buf;
      v51 = v55;
    }

    BootstrapPolicyManager::submitSearchingTimeABC_sync(a1, __p, a2);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_83;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

LABEL_41:
  v53.__r_.__value_.__r.__words[0] = 0;
  v35 = xpc_dictionary_create(0, 0, 0);
  v36 = v35;
  if (v35)
  {
    v53.__r_.__value_.__r.__words[0] = v35;
  }

  else
  {
    v36 = xpc_null_create();
    v53.__r_.__value_.__r.__words[0] = v36;
    if (!v36)
    {
      v37 = xpc_null_create();
      v36 = 0;
      goto LABEL_59;
    }
  }

  if (xpc_get_type(v36) != &_xpc_type_dictionary)
  {
    v37 = xpc_null_create();
LABEL_59:
    v53.__r_.__value_.__r.__words[0] = v37;
    goto LABEL_60;
  }

  xpc_retain(v36);
LABEL_60:
  xpc_release(v36);
  if (v55 >= 0)
  {
    v38 = buf;
  }

  else
  {
    v38 = *buf;
  }

  v48 = xpc_string_create(v38);
  if (!v48)
  {
    v48 = xpc_null_create();
  }

  v56.__r_.__value_.__r.__words[0] = &v53;
  v56.__r_.__value_.__l.__size_ = "carrierIdentifier";
  sub_10000F688(&v56, &v48, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v48);
  v48 = 0;
  v46 = xpc_int64_create(a2);
  if (!v46)
  {
    v46 = xpc_null_create();
  }

  v56.__r_.__value_.__r.__words[0] = &v53;
  v56.__r_.__value_.__l.__size_ = "searchingTime";
  sub_10000F688(&v56, &v46, &v47);
  xpc_release(v47);
  v47 = 0;
  xpc_release(v46);
  v46 = 0;
  v44 = xpc_BOOL_create(a4);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  v56.__r_.__value_.__r.__words[0] = &v53;
  v56.__r_.__value_.__l.__size_ = "withUserSIM";
  sub_10000F688(&v56, &v44, &v45);
  xpc_release(v45);
  v45 = 0;
  xpc_release(v44);
  v44 = 0;
  v39 = *(a1 + 40);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = buf;
    if (v55 < 0)
    {
      v40 = *buf;
    }

    LODWORD(v56.__r_.__value_.__l.__data_) = 134218242;
    *(v56.__r_.__value_.__r.__words + 4) = a2;
    WORD2(v56.__r_.__value_.__r.__words[1]) = 2080;
    *(&v56.__r_.__value_.__r.__words[1] + 6) = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I sent bootstrap searching time : %lld : %s", &v56, 0x16u);
  }

  v43 = v53.__r_.__value_.__r.__words[0];
  if (v53.__r_.__value_.__r.__words[0])
  {
    xpc_retain(v53.__r_.__value_.__l.__data_);
  }

  else
  {
    v43 = xpc_null_create();
  }

  (*(*v16 + 16))(v16, "commCenterBootstrapUsageSummary", &v43);
  xpc_release(v43);
  v43 = 0;
  if (a2 >= 0x7531)
  {
    if (SHIBYTE(v55) < 0)
    {
      sub_100005F2C(v41, *buf, *&buf[8]);
    }

    else
    {
      *v41 = *buf;
      v42 = v55;
    }

    BootstrapPolicyManager::submitSearchingTimeABC_sync(a1, v41, a2);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41[0]);
    }
  }

  xpc_release(v53.__r_.__value_.__l.__data_);
LABEL_83:
  if (SHIBYTE(v55) < 0)
  {
    operator delete(*buf);
  }

LABEL_85:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_10011A8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, xpc_object_t object, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  xpc_release(object);
  if (*(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
  }

  if ((v40 & 1) == 0)
  {
    sub_100004A34(v39);
  }

  _Unwind_Resume(a1);
}

void BootstrapPolicyManager::submitRegulatoryInfoMetric_sync(uint64_t a1, const char *a2)
{
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
  v41.__r_.__value_.__r.__words[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v41);
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
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101761620();
    }

    goto LABEL_83;
  }

LABEL_11:
  if (*(a1 + 320))
  {
    v42 = 0;
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v14)
    {
      v42 = v14;
    }

    else
    {
      v15 = xpc_null_create();
      v42 = v15;
      if (!v15)
      {
        v16 = xpc_null_create();
        v15 = 0;
        goto LABEL_21;
      }
    }

    if (xpc_get_type(v15) == &_xpc_type_dictionary)
    {
      xpc_retain(v15);
LABEL_22:
      xpc_release(v15);
      memset(&v41, 0, sizeof(v41));
      v17 = *(a1 + 560);
      if (v17)
      {
        v18 = *(a1 + 544);
        if (v18 == (a1 + 552))
        {
          size = 0;
          LODWORD(v17) = 0;
        }

        else
        {
          v33 = v13;
          do
          {
            if (*(v18 + 55) >= 0)
            {
              v19 = *(v18 + 55);
            }

            else
            {
              v19 = v18[5];
            }

            memset(__p, 0, sizeof(__p));
            sub_1000677C4(__p, v19 + 1);
            if (SHIBYTE(__p[2]) >= 0)
            {
              v20 = __p;
            }

            else
            {
              v20 = __p[0];
            }

            if (v19)
            {
              if (*(v18 + 55) >= 0)
              {
                v21 = v18 + 4;
              }

              else
              {
                v21 = v18[4];
              }

              memmove(v20, v21, v19);
            }

            *(v20 + v19) = 95;
            if (SHIBYTE(__p[2]) >= 0)
            {
              v22 = __p;
            }

            else
            {
              v22 = __p[0];
            }

            if (SHIBYTE(__p[2]) >= 0)
            {
              v23 = HIBYTE(__p[2]);
            }

            else
            {
              v23 = __p[1];
            }

            std::string::append(&v41, v22, v23);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            v24 = v18[1];
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
                v25 = v18[2];
                v26 = *v25 == v18;
                v18 = v25;
              }

              while (!v26);
            }

            v18 = v25;
          }

          while (v25 != (a1 + 552));
          LODWORD(v17) = HIBYTE(v41.__r_.__value_.__r.__words[2]);
          size = v41.__r_.__value_.__l.__size_;
          v13 = v33;
        }
      }

      else
      {
        size = 0;
      }

      if ((v17 & 0x80u) == 0)
      {
        size = v17;
      }

      if (!size)
      {
        if ((v17 & 0x80) != 0)
        {
          v41.__r_.__value_.__l.__size_ = 7;
          v28 = v41.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v41.__r_.__value_.__s + 23) = 7;
          v28 = &v41;
        }

        strcpy(v28, "unknown");
      }

      v39 = xpc_BOOL_create(*(a1 + 96) == 1);
      if (!v39)
      {
        v39 = xpc_null_create();
      }

      __p[0] = &v42;
      __p[1] = "buddy_state";
      sub_10000F688(__p, &v39, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v39);
      v39 = 0;
      v29 = a2;
      if (a2[23] < 0)
      {
        v29 = *a2;
      }

      v37 = xpc_string_create(v29);
      if (!v37)
      {
        v37 = xpc_null_create();
      }

      __p[0] = &v42;
      __p[1] = "serving_mcc_info";
      sub_10000F688(__p, &v37, &v38);
      xpc_release(v38);
      v38 = 0;
      xpc_release(v37);
      v37 = 0;
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v41;
      }

      else
      {
        v30 = v41.__r_.__value_.__r.__words[0];
      }

      v35 = xpc_string_create(v30);
      if (!v35)
      {
        v35 = xpc_null_create();
      }

      __p[0] = &v42;
      __p[1] = "rd_country_codes";
      sub_10000F688(__p, &v35, &v36);
      xpc_release(v36);
      v36 = 0;
      xpc_release(v35);
      v35 = 0;
      v31 = *(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = &v41;
        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v41.__r_.__value_.__r.__words[0];
        }

        if (a2[23] < 0)
        {
          a2 = *a2;
        }

        LODWORD(__p[0]) = 136315394;
        *(__p + 4) = v32;
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = a2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I sent bootstrap regulatory info : %s : %s", __p, 0x16u);
      }

      v34 = v42;
      if (v42)
      {
        xpc_retain(v42);
      }

      else
      {
        v34 = xpc_null_create();
      }

      (*(*v12 + 16))(v12, "commCenterBootstrapRegulatoryInfo", &v34);
      xpc_release(v34);
      v34 = 0;
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      xpc_release(v42);
      goto LABEL_83;
    }

    v16 = xpc_null_create();
LABEL_21:
    v42 = v16;
    goto LABEL_22;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017615EC();
  }

LABEL_83:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10011AF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void BootstrapPolicyManager::dequeueAndNotify(BootstrapPolicyManager *this, char a2)
{
  for (i = *(this + 47); i; i = *i)
  {
    for (j = i[3]; j; j = *j)
    {
      v6 = *(this + 5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(i + 4);
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Notified : %d", buf, 8u);
      }

      if (j[4])
      {
        sub_10000FFD0((j + 1), a2);
      }
    }

    v12 = 0;
    *buf = i + 2;
    v8 = sub_100120DCC(this + 45, i + 4);
    sub_100121560(&v12, v8 + 3);
    if (v12)
    {
      *buf = i + 2;
      v9 = sub_100120DCC(this + 45, i + 4);
      sub_10011C5AC(v9 + 3);
    }

    sub_10011C5AC(&v12);
  }

  v10 = *(this + 5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 48);
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I callbacks : %lu", buf, 0xCu);
  }
}

void sub_10011B1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10011C5AC(va);
  _Unwind_Resume(a1);
}

uint64_t BootstrapPolicyManager::requestBootstrapService(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 320) == 1 && *(a1 + 356) != 2)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    sub_100F11F00(buf, a1 + 104);
    v8 = *(a1 + 408);
    if (BYTE10(v24))
    {
      if (!v8)
      {
        v6 = 1;
        sub_10000FFD0(a3, 1);
LABEL_11:
        sub_100E3A5D4(buf);
        return v6;
      }

LABEL_10:
      sub_1000224C8(v15, a3);
      BootstrapPolicyManager::enqueueAndWait(a1, a2, v15);
      sub_10000FF50(v15);
      v6 = 1;
      goto LABEL_11;
    }

    if (v8)
    {
      goto LABEL_10;
    }

    v10 = *(a1 + 72);
    if (v10)
    {
      v6 = std::__shared_weak_count::lock(v10);
      if (v6 && *(a1 + 64))
      {
        sub_1000224C8(v18, a3);
        BootstrapPolicyManager::enqueueAndWait(a1, a2, v18);
        sub_10000FF50(v18);
        if (BootstrapPolicyManager::isBootstrapAvailable(a1))
        {
          memset(v17, 0, sizeof(v17));
          *v16 = 0u;
          v11 = *(a1 + 40);
          v12 = os_signpost_id_generate(v11);
          if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v13 = *(a1 + 40);
            if (os_signpost_enabled(v13))
            {
              *v33 = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, "BootstrapService", "", v33, 2u);
            }
          }

          *v33 = off_101E299F8;
          v34 = v33;
          *v16 = v12;
          *&v16[8] = os_retain(v11);
          sub_1000148FC(v17, v33);
          sub_10001499C(v33);
          sub_10012069C();
        }

        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E Bootstrap unavailable", v16, 2u);
        }

        BootstrapPolicyManager::dequeueAndNotify(a1, 0);
LABEL_29:
        sub_100004A34(v6);
        v6 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101761510();
    }

    sub_10000FFD0(a3, 0);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#E early exit", buf, 2u);
  }

  sub_10000FFD0(a3, 0);
  return 0;
}

void sub_10011B754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_100014DA8(&a36);
  sub_100004A34(v46);
  sub_100E3A5D4(&a46);
  _Unwind_Resume(a1);
}

uint64_t BootstrapPolicyManager::enqueueAndWait(uint64_t a1, int a2, uint64_t a3)
{
  v10 = a2;
  v5 = sub_100120BDC((a1 + 360), &v10);
  v6 = *(a1 + 40);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I multiple request in queue", buf, 2u);
    }

    operator new();
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Added to queue", buf, 2u);
  }

  sub_10000FED0(buf, a3);
  v11 = &v10;
  v8 = sub_100120DCC((a1 + 360), &v10);
  sub_100121030(v8 + 3, buf, &v13);
  return sub_10000FF50(buf);
}

void sub_10011B9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t BootstrapPolicyManager::isBootstrapAvailable(os_log_t *this)
{
  if ((this[40] & 1) == 0)
  {
    if (os_log_type_enabled(this[5], OS_LOG_TYPE_ERROR))
    {
      sub_101761654();
    }

    goto LABEL_7;
  }

  if (*(this + 568) == 1)
  {
    v2 = this[5];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I not allowed by regulatory", buf, 2u);
    }

LABEL_7:
    v3 = 0;
    return v3 & 1;
  }

  if (capabilities::ct::supportsSequoia(this))
  {
    v3 = 1;
    return v3 & 1;
  }

  v5 = this[9];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = this[8];
      if (v7)
      {
        *buf = 0;
        v30 = 0;
        v31 = 0;
        (*(v7->isa + 5))(buf, v7, 0);
        v27 = 0;
        v28[0] = 0;
        v28[1] = 0;
        (*(v7->isa + 5))(&v27, v7, 1);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v35 = v28;
        *v36 = v27;
        v33 = &v30;
        v34 = *buf;
        v32 = &v24;
        sub_10011C5FC(v36, &v35, &v34, &v33, &v32);
        if (0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3) >= 2)
        {
          if (os_log_type_enabled(this[5], OS_LOG_TYPE_ERROR))
          {
            sub_101761688();
          }

          v8 = 0;
LABEL_63:
          v23.__r_.__value_.__r.__words[0] = &v24;
          sub_1000087B4(&v23);
          sub_100009970(&v27, v28[0]);
          sub_100009970(buf, v30);
LABEL_64:
          sub_100004A34(v6);
          v3 = v8;
          return v3 & 1;
        }

        memset(&v23, 0, sizeof(v23));
        if (v25 - v24 == 24)
        {
          std::string::operator=(&v23, v24);
        }

        if ((this[40] & 1) == 0)
        {
          sub_1000D1644();
        }

        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v23.__r_.__value_.__l.__size_;
        }

        v10 = *(this + 143);
        v11 = v10;
        if (v10 < 0)
        {
          v10 = this[16];
        }

        if (size == v10)
        {
          if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = &v23;
          }

          else
          {
            v12 = v23.__r_.__value_.__r.__words[0];
          }

          if (v11 >= 0)
          {
            v13 = (this + 15);
          }

          else
          {
            v13 = this[15];
          }

          v14 = memcmp(v12, v13, size);
          if (!size || !v14)
          {
            if (!v14 && ((*(v7->isa + 3))(v7) & 1) != 0)
            {
              goto LABEL_60;
            }

LABEL_48:
            if (v31)
            {
              v8 = 0;
              if (v31 != 1 || (this[50] & 1) == 0 || (v8 = this[48] != 0, LOBYTE(v35) = v8, v17 = this[5], !os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT)))
              {
LABEL_61:
                if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v23.__r_.__value_.__l.__data_);
                }

                goto LABEL_63;
              }

              v19 = printers::asString(&v35, v18);
              *v36 = 136315138;
              *&v36[4] = v19;
              v20 = "#I Bootstrap clients : %s";
LABEL_53:
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v20, v36, 0xCu);
              v8 = v35;
              goto LABEL_61;
            }

            if (*(this + 24) < 2u || !(*(v7->isa + 4))(v7))
            {
LABEL_60:
              v8 = 1;
              goto LABEL_61;
            }

            if (*(this + 400) == 1 && v31 <= 1)
            {
              v8 = this[48] != 0;
              LOBYTE(v35) = v8;
              v17 = this[5];
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_61;
              }

              v22 = printers::asString(&v35, v21);
              *v36 = 136315138;
              *&v36[4] = v22;
              v20 = "#I Bootstrap clients <outOfBuddy> : %s";
              goto LABEL_53;
            }

            v15 = this[5];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v36 = 0;
              v16 = "#I Bootstrap is unavailable <outOfBuddy>";
              goto LABEL_46;
            }

            goto LABEL_47;
          }
        }

        else if (!size)
        {
          goto LABEL_48;
        }

        v15 = this[5];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v36 = 0;
          v16 = "#I non-bootstrap system selection";
LABEL_46:
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, v36, 2u);
        }

LABEL_47:
        v8 = 0;
        goto LABEL_61;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(this[5], OS_LOG_TYPE_ERROR))
  {
    sub_101761510();
  }

  v8 = 0;
  v3 = 0;
  if (v6)
  {
    goto LABEL_64;
  }

  return v3 & 1;
}

void sub_10011BEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, char *a20, uint64_t a21, char a22, char *a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  sub_1000087B4(&__p);
  sub_100009970(&a19, a20);
  sub_100009970(&a22, a23);
  sub_100004A34(v23);
  _Unwind_Resume(a1);
}

void BootstrapPolicyManager::releaseBootstrapService(BootstrapPolicyManager *this, int a2)
{
  v12 = a2;
  sub_100120B90(this + 45, &v12);
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 48);
    *buf = 67109376;
    *&buf[4] = v12;
    *&buf[8] = 2048;
    *&buf[10] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I pid %d callbacks : %lu", buf, 0x12u);
  }

  if (!*(this + 48))
  {
    if (BootstrapPolicyManager::isBootstrapAvailable(this))
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#E Bootstrap still available", buf, 2u);
      }

      return;
    }

    if (*(this + 320) != 1)
    {
      return;
    }

    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_100F11F00(buf, this + 104);
    v6 = *(this + 9);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = *(this + 8);
        if (v8)
        {
          v9 = *(this + 53);
          *(this + 52) = 0;
          *(this + 53) = 0;
          if (v9)
          {
            sub_100004A34(v9);
          }

          if (SBYTE7(v14) < 0)
          {
            sub_100005F2C(__p, *&buf[16], *&buf[24]);
          }

          else
          {
            *__p = *&buf[16];
            v11 = v14;
          }

          (*(*v8 + 16))(v8, __p, 0);
          if (SHIBYTE(v11) < 0)
          {
            operator delete(__p[0]);
          }

LABEL_24:
          sub_100004A34(v7);
LABEL_25:
          sub_100E3A5D4(buf);
          return;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_101761510();
    }

    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }
}

void sub_10011C14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  sub_100004A34(v16);
  sub_100E3A5D4(&a16);
  _Unwind_Resume(a1);
}

void BootstrapPolicyManager::submitSearchingTimeABC_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  v28.__r_.__value_.__r.__words[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v28);
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
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017616BC();
    }

    goto LABEL_37;
  }

LABEL_11:
  memset(&__str, 0, sizeof(__str));
  std::operator+<char>();
  v15 = std::string::append(&v28, ": ", 2uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (a3 <= 59999)
  {
    v17 = "Alert";
  }

  else
  {
    v17 = "Fatal";
  }

  std::string::append(&__str, v17, 5uLL);
  *&v28.__r_.__value_.__r.__words[1] = 0u;
  v30 = 0x400000000000000;
  v29 = 0u;
  v32 = 0u;
  v36 = 0u;
  v35 = 0u;
  memset(&v33, 0, sizeof(v33));
  v34 = 23;
  *(&v28.__r_.__value_.__s + 23) = 8;
  v28.__r_.__value_.__r.__words[0] = 0x72616C756C6C6543;
  LODWORD(v29) = 1296651109;
  HIBYTE(v32) = 9;
  LOBYTE(v32) = 112;
  v31 = *"Bootstrap";
  std::string::operator=(&v33, &__str);
  v34 |= 0x13uLL;
  sub_100D9EC48(v18, &v28);
  v39 = 0;
  (*(*v13 + 16))(v13, v18, v38);
  sub_10010DF14(v38);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_37:
    if (v14)
    {
      return;
    }

    goto LABEL_38;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
  if (v14)
  {
    return;
  }

LABEL_38:
  sub_100004A34(v12);
}

void sub_10011C574(uint64_t a1)
{
  sub_10011C88C(a1);

  operator delete();
}

void sub_10011C5AC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *v2;
      sub_10000FF50((v2 + 1));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  *a1 = 0;
}

__int128 *sub_10011C5FC(__int128 **a1, __int128 **a2, void ***a3, void ***a4, void **a5)
{
  v8 = *a1;
  v9 = *a2;
  if (*a1 == *a2)
  {
LABEL_31:
    v9 = v8;
    return sub_10011C804(&v26, v8, v9, *a5);
  }

  v11 = *a3;
  if (*a3 != *a4)
  {
    while (1)
    {
      if ((sub_1000068BC(v8 + 4, v11 + 4) & 0x80) != 0)
      {
        sub_100005308(*a5, *a1 + 2);
        v20 = *a1;
        v21 = *(*a1 + 1);
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
            v22 = *(v20 + 2);
            v16 = *v22 == v20;
            v20 = v22;
          }

          while (!v16);
        }

        *a1 = v22;
      }

      else
      {
        if ((sub_1000068BC(*a3 + 4, *a1 + 4) & 0x80) != 0)
        {
          v23 = *a3;
          v24 = (*a3)[1];
          if (v24)
          {
            do
            {
              v19 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v19 = v23[2];
              v16 = *v19 == v23;
              v23 = v19;
            }

            while (!v16);
          }
        }

        else
        {
          v13 = *a1;
          v14 = *(*a1 + 1);
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
              v15 = *(v13 + 2);
              v16 = *v15 == v13;
              v13 = v15;
            }

            while (!v16);
          }

          *a1 = v15;
          v17 = *a3;
          v18 = (*a3)[1];
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
              v19 = v17[2];
              v16 = *v19 == v17;
              v17 = v19;
            }

            while (!v16);
          }
        }

        *a3 = v19;
      }

      v8 = *a1;
      v9 = *a2;
      if (*a1 == *a2)
      {
        break;
      }

      v11 = *a3;
      if (*a3 == *a4)
      {
        return sub_10011C804(&v26, v8, v9, *a5);
      }
    }

    goto LABEL_31;
  }

  return sub_10011C804(&v26, v8, v9, *a5);
}

void *sub_10011C7A4(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

__int128 *sub_10011C804(uint64_t a1, __int128 *a2, __int128 *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_100005308(a4, v5 + 2);
      v7 = *(v5 + 1);
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
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

void sub_10011C88C(uint64_t a1)
{
  *a1 = off_101E29320;
  sub_100009970(a1 + 544, *(a1 + 552));
  sub_10006DCAC(a1 + 520, *(a1 + 528));
  v2 = *(a1 + 512);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10004C4EC(a1 + 480, *(a1 + 488));
  v8 = (a1 + 456);
  sub_1000B2AF8(&v8);
  v3 = *(a1 + 424);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 408);
  *(a1 + 408) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_10011D194(a1 + 360);
  sub_10006DCAC(a1 + 328, *(a1 + 336));
  if (*(a1 + 320) == 1)
  {
    sub_100E3A5D4(a1 + 104);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    sub_100004A34(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  BootstrapPolicyManagerInterface::~BootstrapPolicyManagerInterface(a1);
}

void *sub_10011C9B0(void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_100074890(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

void sub_10011CAB4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10011CB88);
  __cxa_rethrow();
}

void sub_10011CAF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10011CB48(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011CB88(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10011CBB4(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_10011CC2C(a1, a2);
      a2 += 4;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_10011CC2C(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    sub_10011CE6C();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10011CE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10011CEF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011CEF4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10011C5AC(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10011CF40(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_10011D030(a1, prime);
    }
  }
}

void sub_10011D030(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100013D10();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_10011D194(uint64_t a1)
{
  sub_10011D1D0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10011D1D0(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10011C5AC(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_10011D214(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10011D26C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10011D26C(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10011D2F4(v5, v5 + 1, v4 + 8);
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

uint64_t sub_10011D2F4(void *a1, uint64_t *a2, int *a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_10002E2F4(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_10011D394();
  }

  return v3;
}

void sub_10011D420(_Unwind_Exception *a1)
{
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  sub_100045EDC(v1);
  _Unwind_Resume(a1);
}

void sub_10011D538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10011D5E8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E29478;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10011D628(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10011D674(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a1;
  v12 = 0uLL;
  v13 = 0;
  sub_10011D868(&v12, a2);
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  sub_10011DD74(v16, v3);
  v10 = v12;
  v11 = v13;
  v13 = 0;
  v12 = 0uLL;
  sub_101131F94(v3, &v10);
  v14 = &v10;
  sub_100112048(&v14);
  v4 = *(v3 + 216);
  v5 = BYTE8(v17) != v4;
  if (BYTE8(v17) == v4 && BYTE8(v17))
  {
    v5 = VinylProfileDetails::operator!=();
  }

  if (v5)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = (a1[1] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v9 = sub_10011DD74(v15, v16);
    v6(v8, v15, v9);
    if (v15[216] == 1)
    {
      sub_100E3A5D4(v15);
    }
  }

  if (BYTE8(v17) == 1)
  {
    sub_100E3A5D4(v16);
  }

  *&v16[0] = &v12;
  sub_100112048(v16);
}

void sub_10011D800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, void **a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a44 == 1)
  {
    sub_100E3A5D4(&a17);
  }

  if (a72 == 1)
  {
    sub_100E3A5D4(&a45);
  }

  a45 = &a13;
  sub_100112048(&a45);
  _Unwind_Resume(a1);
}

void sub_10011D868(uint64_t *a1, xpc_object_t *a2)
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

  v5 = *a1;
  for (i = a1[1]; i != v5; sub_1001120CC(i))
  {
    i -= 88;
  }

  a1[1] = v5;
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

    sub_100008EA4(&v13, object, 0);
    xpc_release(object[0]);
    v11[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v11[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v11, count);
    xpc_release(v11[0]);
    for (j = v14; j != object[1] || v13 != object[0]; j = ++v14)
    {
      v11[0] = &v13;
      v11[1] = j;
      v8 = a1[1];
      if (v8 >= a1[2])
      {
        v9 = sub_10011DABC(a1);
      }

      else
      {
        *(v8 + 80) = 0;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        v9 = v8 + 88;
        *v8 = 0u;
      }

      a1[1] = v9;
      sub_100008EF0(v11, &v10);
      read_rest_value((v9 - 88), &v10);
      xpc_release(v10);
    }

    xpc_release(object[0]);
    xpc_release(v13);
  }

  xpc_release(v3);
}

void sub_10011DA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DABC(uint64_t *a1)
{
  v1 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1000CE3D4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v4 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_10011DBFC(a1, v4);
  }

  v5 = 88 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0;
  *&v14 = 88 * v1 + 88;
  v6 = a1[1];
  v7 = 88 * v1 + *a1 - v6;
  sub_10011DC58(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_10011DD24(&v12);
  return v11;
}

void sub_10011DBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10011DD24(va);
  _Unwind_Resume(a1);
}

void sub_10011DBFC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_10011DC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 56;
    v7 = a2 + 56;
    do
    {
      v8 = *(v7 - 56);
      *(v6 - 40) = *(v7 - 40);
      *(v6 - 56) = v8;
      v9 = *(v7 - 24);
      *(v6 - 8) = *(v7 - 8);
      *(v6 - 24) = v9;
      *(v7 - 16) = 0;
      *(v7 - 8) = 0;
      *(v7 - 24) = 0;
      *v6 = 0;
      *(v6 + 24) = 0;
      if (*(v7 + 24) == 1)
      {
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *v6 = *v7;
        *(v6 + 16) = *(v7 + 16);
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v6 + 24) = 1;
      }

      v10 = v7 - 56;
      v6 += 88;
      v7 += 88;
    }

    while (v10 + 88 != a3);
    while (v5 != a3)
    {
      sub_1001120CC(v5);
      v5 += 88;
    }
  }
}

uint64_t sub_10011DD24(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    sub_1001120CC(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_10011DD74(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    *a1 = *a2;
    v2 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v2;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    v3 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v3;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    v4 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v4;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    v5 = *(a2 + 88);
    *(a1 + 92) = *(a2 + 92);
    *(a1 + 88) = v5;
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    v8 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v8;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    v9 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v9;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    result = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = result;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a1 + 216) = 1;
  }

  return result;
}

uint64_t sub_10011DE6C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 216) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 16), (a2 + 16));
    std::string::operator=((a1 + 40), (a2 + 40));
    std::string::operator=((a1 + 64), (a2 + 64));
    v4 = *(a2 + 92);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 92) = v4;
    std::string::operator=((a1 + 96), (a2 + 96));
    std::string::operator=((a1 + 120), (a2 + 120));
    std::string::operator=((a1 + 144), (a2 + 144));
    std::string::operator=((a1 + 168), (a2 + 168));
    std::string::operator=((a1 + 192), (a2 + 192));
  }

  else
  {
    sub_100F11F00(a1, a2);
    *(a1 + 216) = 1;
  }

  return a1;
}

void sub_10011E01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10011E0CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E294F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10011E104(void *a1, xpc_object_t *a2)
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

uint64_t sub_10011E1DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10011E228(uint64_t a1, xpc_object_t *a2)
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

  sub_10006DCAC(a1, *(a1 + 8));
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

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    v7[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v7, count);
    xpc_release(v7[0]);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      v7[1] = i;
      v8 = 0;
      v7[0] = &v10;
      sub_10003EAD4(v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v6 = v8;
        v7[0] = 0;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10011E4A4(v7, &v6);
        xpc_release(v6);
        sub_10011E65C(a1, v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_10011E414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_10011E4A4(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v10 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v10 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v7 = &v10;
    v8 = "first";
    sub_100006354(&v7, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v11 = *a1;
      ctu::rest::detail::read_enum_string_value(&v11, &object, v5);
      *a1 = v11;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v7 = &v10;
    v8 = "second";
    sub_100006354(&v7, &object);
    *(a1 + 4) = xpc::dyn_cast_or_default(&object, 0, v6);
    xpc_release(object);
    v3 = v10;
  }

  xpc_release(v3);
}

void sub_10011E608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_10011E65C(uint64_t a1, int *a2)
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

uint64_t sub_10011E7A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E29578;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10011E7CC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10011E868(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011E924(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E295F8;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10011E950(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10011E9EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011EAA8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E29678;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10011EAD4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10011EB70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10011ECA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10011ED58(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E296F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10011ED90(uint64_t a1)
{
  v2 = **(a1 + 8);
  read_rest_value();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, v2);
}

uint64_t sub_10011EE14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011EED0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E29778;
  a2[1] = v2;
  return result;
}

uint64_t sub_10011EF04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10011F03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10011F0EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E297F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10011F124(void *a1, xpc_object_t *a2)
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

  sub_10011F248(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10004C4EC(&v9, v10);
}

uint64_t sub_10011F1FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10011F248(uint64_t a1, xpc_object_t *a2)
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

  sub_10004C4EC(a1, *(a1 + 8));
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

    sub_100008EA4(&v14, object, 0);
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

    sub_100008EA4(v13, object, count);
    xpc_release(object[0]);
    for (i = v15; i != v13[1] || v14 != v13[0]; i = ++v15)
    {
      v12 = 0;
      object[0] = &v14;
      object[1] = i;
      sub_10003EAD4(object, &v12);
      if (xpc_get_type(v12) == &_xpc_type_dictionary)
      {
        *__p = 0u;
        v11 = 0u;
        *v8 = 0u;
        v9 = 0u;
        *object = 0u;
        MCCAndMNC::MCCAndMNC(&object[1]);
        DWORD2(v11) = 11;
        WORD6(v11) = 0;
        v6 = v12;
        if (v12)
        {
          xpc_retain(v12);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10011F524(object, &v6);
        xpc_release(v6);
        sub_10011F6D8(a1, object);
        if (SBYTE7(v11) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v9) < 0)
        {
          operator delete(v8[0]);
        }
      }

      xpc_release(v12);
    }

    xpc_release(v13[0]);
    xpc_release(v14);
  }

  xpc_release(v3);
}

void sub_10011F484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 64));
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_10011F524(int *a1, xpc_object_t *a2)
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

void sub_10011F684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_10011F6D8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_10011F7A0();
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

void sub_10011F82C(_Unwind_Exception *a1)
{
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  sub_100045EDC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10011F858(uint64_t a1)
{
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

void sub_10011F988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10011FA38(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E29878;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10011FA78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10011FAC4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a1;
  v4 = v3 + 1;
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v13 = v3[2];
  if (v13)
  {
    v5[2] = &v12;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v11 = &v12;
  }

  sub_100109E38(v3, a2);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = (*(a1 + 8) + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9 = v11;
  v10[0] = v12;
  v10[1] = v13;
  if (v13)
  {
    v12[2] = v10;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v9 = v10;
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10[0]);
  sub_10006DCAC(&v11, v12);
}

void sub_10011FBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  sub_10006DCAC(&a9, a10);
  sub_10006DCAC(&a12, a13);
  _Unwind_Resume(a1);
}

void sub_10011FCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10011FD88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E298F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10011FDC0(void *a1, xpc_object_t *a2)
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

  sub_10011FEE4(v3, a2);
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

uint64_t sub_10011FE98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10011FEE4(uint64_t a1, xpc_object_t *a2)
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

  sub_100009970(a1, *(a1 + 8));
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
      v9[0] = &v11;
      v9[1] = i;
      *object = 0u;
      v8 = 0u;
      sub_100008EF0(v9, &v6);
      ctu::rest::read_rest_value<RegulatoryCountry>(object, &v6);
      xpc_release(v6);
      sub_10012012C(a1, object);
      if (SBYTE7(v8) < 0)
      {
        operator delete(object[0]);
      }
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_1001200A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_10012012C(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_1001201B8(a1, &v3, a2);
  if (!result)
  {
    sub_100120240();
  }

  return result;
}

void *sub_1001201B8(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!RegulatoryCountry::operator<(a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!RegulatoryCountry::operator<(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1001202DC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1001203D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100120484(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E29978;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001204BC(void *a1)
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

uint64_t sub_100120504(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001205D8(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "BootstrapService", "", v5, 2u);
    }
  }
}

uint64_t sub_100120650(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100120708(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_101E29A88;
  v4 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v4;
  sub_1000148FC(a1 + 40, (a2 + 2));
  *a2 = 0u;
  sub_100014A28((a2 + 2));
  return a1;
}

void sub_100120798(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E29A88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1001207F8(void *a1)
{
  *a1 = off_101E29AD8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100120844(void *a1)
{
  *a1 = off_101E29AD8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100120924(uint64_t result, uint64_t a2)
{
  *a2 = off_101E29AD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100120964(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100120974(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1001209B4(void *a1)
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
        v5[0] = 0;
        v5[1] = 0;
        sub_100004AA0(v5, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_100120AC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100120B0C(BootstrapPolicyManager ***a1)
{
  v1 = a1;
  BootstrapPolicyManager::dequeueAndNotify(**a1, 0);
  operator delete();
}

uint64_t *sub_100120B90(void *a1, int *a2)
{
  result = sub_100120BDC(a1, a2);
  if (result)
  {
    sub_100120C90(a1, result, v4);
    sub_10011CEF4(v4);
    return 1;
  }

  return result;
}

uint64_t *sub_100120BDC(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_100120C90@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *sub_100120DCC(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10012101C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10011CEF4(va);
  _Unwind_Resume(a1);
}

void *sub_100121030(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = a1;
  if (*a1)
  {
    v8 = a2 == a3;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    do
    {
      sub_1001210EC(v6 + 1, v4);
      v7 = *v7;
      v6 = *v6;
      v4 += 32;
      if (v6)
      {
        v9 = v4 == a3;
      }

      else
      {
        v9 = 1;
      }
    }

    while (!v9);
  }

  if (v6)
  {

    return sub_100121224(a1, v7, 0);
  }

  else
  {

    return sub_100121160(a1, v7, v4, a3);
  }
}

void *sub_1001210EC(void *a1, uint64_t a2)
{
  sub_1000224C8(v4, a2);
  sub_100121288(v4, a1);
  sub_10000FF50(v4);
  return a1;
}

uint64_t sub_100121160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    sub_1001214F4();
  }

  return a2;
}

void sub_1001211F8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017616F0(v1);
  }

  __cxa_rethrow();
}

void *sub_100121224(uint64_t a1, void **a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (*a2 != a3)
    {
      *a2 = a3;
      do
      {
        v5 = *v4;
        sub_10000FF50((v4 + 1));
        operator delete(v4);
        v4 = v5;
      }

      while (v5 != a3);
    }
  }

  return a3;
}

void *sub_100121288(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1001214E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_100121560(void *a1, uint64_t *a2)
{
  *a1 = 0;
  sub_1001215AC(a1, a1, *a2, 0);
  return a1;
}

uint64_t sub_1001215AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    sub_1001214F4();
  }

  return a2;
}

void sub_100121648(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017616F0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_100121674()
{
  sub_10000501C(v2, "AE");
  sub_10000501C(v3, "SA");
  sub_10000501C(v4, "TR");
  sub_10000501C(v5, "JO");
  sub_10000501C(v6, "KW");
  sub_10000501C(v7, "IQ");
  sub_10000501C(v8, "ZA");
  sub_10000501C(v9, "EG");
  sub_10000501C(v10, "QA");
  sub_10000501C(v11, "OM");
  sub_10000501C(v12, "BH");
  sub_10000501C(v13, "MA");
  sub_10011C9B0(&qword_101FB9F08, v2, 12);
  v0 = 36;
  do
  {
    if (SHIBYTE(v2[v0 - 1]) < 0)
    {
      operator delete(v2[v0 - 3]);
    }

    v0 -= 3;
  }

  while (v0 * 8);
  return __cxa_atexit(sub_10011811C, &qword_101FB9F08, &_mh_execute_header);
}

void sub_100121830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 287);
  v13 = -288;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_100121894(uint64_t a1)
{
  if (((*(a1 + 80) - *(a1 + 72)) & 0x7FFFFFFF8) != 0 && !sub_1013D85E0(a1))
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    v3 = *(a1 + 72);
    if (((*(a1 + 80) - v3) & 0x7FFFFFFF8) != 0)
    {
      v4 = 0;
      do
      {
        v5 = *(v3 + 8 * v4);
        v6 = sub_1013D85D4(v5);
        if (v6)
        {
          v7 = v6[3];
          if (sub_100E5F430(v7, "application", "smil") || sub_100E5F430(v7, "application", "smil+xml"))
          {
            sub_1013D8788(v5, "Content-ID");
            v9 = sub_100E5F048();
            v10 = (*(*v9 + 32))(v9);
            sub_1013D80C0((v10 + 8), "type", "application/smil", 0);
            operator new();
          }
        }

        ++v4;
        v3 = *(a1 + 72);
      }

      while (v4 < ((*(a1 + 80) - v3) >> 3));
    }

    v8 = sub_100E5EF88();
    (*(*v8 + 32))(v8);
    operator new();
  }

  return 1;
}

void sub_100121B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100121BD8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 72);
  if (((*(a1 + 80) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

const void *sub_100121BFC(void *a1)
{
  sub_100121894(a1);
  result = sub_1013D8420(a1, "X-Mms-Message-Type");
  if (result)
  {
    if (sub_1013D8820(a1, "X-Mms-Message-Type") == 128)
    {
      sub_1013D80C0(a1, "From", "", 0);
    }

    if (!sub_1013D8420(a1, "X-Mms-MMS-Version"))
    {
      sub_1013D80C0(a1, "X-Mms-MMS-Version", "MMS 1.2", 0);
    }

    return (sub_1013D8420(a1, "X-Mms-Transaction-ID") != 0);
  }

  return result;
}

void sub_100122CA8(uint64_t a1)
{
  sub_1013D7800(a1);
  *v1 = off_101E29BF0;
  v1[10] = 0;
  v1[11] = 0;
  v1[9] = 0;
}

BOOL sub_100122CE4(void *a1, uint64_t a2)
{
  v4 = sub_1013D85E0(a2);
  if (v4)
  {
    v6 = a1[10];
    v5 = a1[11];
    if (v6 >= v5)
    {
      v8 = a1[9];
      v9 = (v6 - v8) >> 3;
      if ((v9 + 1) >> 61)
      {
        sub_1000CE3D4();
      }

      v10 = v5 - v8;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        sub_1000FB8B8((a1 + 9), v12);
      }

      v13 = (8 * v9);
      *v13 = a2;
      v7 = 8 * v9 + 8;
      v14 = a1[9];
      v15 = a1[10] - v14;
      v16 = v13 - v15;
      memcpy(v13 - v15, v14, v15);
      v17 = a1[9];
      a1[9] = v16;
      a1[10] = v7;
      a1[11] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v6 = a2;
      v7 = (v6 + 1);
    }

    a1[10] = v7;
  }

  return v4 != 0;
}

void *sub_100122DD0(void *a1)
{
  *a1 = off_101E29BF0;
  v4 = a1 + 9;
  v2 = a1[9];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v2[v5];
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v2 = a1[9];
        v3 = a1[10];
      }

      v5 = v6++;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  return sub_1013D7954(a1);
}

void sub_100122E8C(void *a1)
{
  sub_100122DD0(a1);

  operator delete();
}

uint64_t sub_100122F94()
{
  result = qword_101FCB6C0;
  if (!qword_101FCB6C0)
  {
    sub_100121CB4();
  }

  return result;
}

BOOL sub_100123054(void *a1, char a2)
{
  v2 = a2;
  if (a2 <= -121)
  {
    v5 = sub_1013D8420(a1, "X-Mms-Message-Type");
    if (!v5)
    {
      v5 = sub_1013D8068(a1, "X-Mms-Message-Type");
      sub_1013D7A0C(a1, v5, 0);
    }

    v5[17] = a2;
  }

  return v2 < -120;
}

unsigned __int8 *sub_1001230D0(uint64_t a1)
{
  result = sub_1013D84A0(a1, "X-Mms-Message-Type");
  if (result)
  {
    return result[17];
  }

  return result;
}

uint64_t sub_1001230F8(void *a1, int a2)
{
  v4 = sub_101707BEC(qword_101FCB6C0, "Date");
  v4[5] = a2;
  sub_1013D7A0C(a1, v4, 0);
  return 1;
}

uint64_t sub_10012314C@<X0>(std::string *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v17 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  sub_10000D518(&v15);
  sub_10000C030(&v15);
  sub_1013D8860(a1, a2, a3, &__p);
  sub_10000C030(&v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else if (a2)
  {
    goto LABEL_10;
  }

  data = a1[3].__r_.__value_.__l.__data_;
  if (((a1[3].__r_.__value_.__l.__size_ - data) & 0x7FFFFFFF8) != 0)
  {
    v9 = 0;
    do
    {
      v10 = *&data[8 * v9];
      sub_10000C030(&v15);
      v11 = std::ostream::operator<<();
      sub_10000C030(v11);
      v12 = std::ostream::operator<<();
      sub_10000C030(v12);
      sub_100EA3310(v10, a3, &__p);
      sub_10000C030(&v15);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v9;
      data = a1[3].__r_.__value_.__l.__data_;
    }

    while (v9 < ((a1[3].__r_.__value_.__l.__size_ - data) >> 3));
  }

LABEL_10:
  sub_10000C030(&v15);
  sub_10000D684(&v15, a4);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[1]);
  }

  std::locale::~locale(v16);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100123420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100D50834(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10012345C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  *v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v11 = 0u;
  sub_10000D518(&v11);
  v4 = *(a1 + 72);
  if (((*(a1 + 80) - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      sub_10000C030(&v11);
      v7 = std::ostream::operator<<();
      sub_10000C030(v7);
      sub_100EA35C8(v6, &__p);
      sub_10000C030(&v11);
      if (v10 < 0)
      {
        operator delete(__p);
      }

      sub_10000C030(&v11);
      ++v5;
      v4 = *(a1 + 72);
    }

    while (v5 < ((*(a1 + 80) - v4) >> 3));
  }

  sub_10000D684(&v11, a2);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

BOOL sub_1001236D8(uint64_t a1)
{
  if (((*(a1 + 80) - *(a1 + 72)) & 0x7FFFFFFF8) == 0)
  {
    return 1;
  }

  v2 = sub_1013D85EC(a1);
  return (!v2 || !sub_100E5F4D0(v2)) && *(**(a1 + 72) + 96) == 0;
}

unsigned __int8 *sub_100123740(uint64_t a1)
{
  result = sub_1013D84A0(a1, "X-Mms-Message-Type");
  if (result)
  {
    return (result[17] == 128);
  }

  return result;
}

const char *sub_100123780(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return "EndAll";
  }

  else
  {
    return off_101E2A2A0[a1 - 1];
  }
}

void sub_1001237B0(void *a1@<X8>)
{
  *a1 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v6 = xpc_int64_create(0);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  v5[0] = a1;
  v5[1] = "kKeyCallTxnType";
  sub_10000F688(v5, &v6, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

void sub_1001238C0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  *a3 = v8;
LABEL_9:
  xpc_release(v7);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = *a2;
    while (1)
    {
      v19 = v9;
      v20 = "kActionType";
      sub_100006354(&v19, object);
      v13 = xpc::dyn_cast_or_default(object, 0, v12);
      xpc_release(object[0]);
      if (v13 == 2)
      {
        break;
      }

      ++v11;
      ++v9;
      if (v11 == v10)
      {
        goto LABEL_15;
      }
    }

    v19 = v9;
    v20 = "kUuid";
    object[0] = a3;
    object[1] = "kKeyCallTxnUuidEnd";
    sub_100DF66B0(object, &v19, &v18);
    xpc_release(v18);
    v18 = 0;
  }

LABEL_15:
  v14 = (*(*a1 + 24))(a1);
  v15 = xpc_int64_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v19 = a3;
  v20 = "kKeyCallTxnType";
  sub_10000F688(&v19, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
}

void sub_100123AE0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  *a3 = v8;
LABEL_9:
  v17 = a1;
  xpc_release(v7);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = *a2;
    do
    {
      v24 = v9;
      v25 = "kActionType";
      sub_100006354(&v24, &object);
      v13 = xpc::dyn_cast_or_default(&object, 0, v12);
      xpc_release(object);
      if (v13 == 3)
      {
        v24 = v9;
        v25 = "kOnHold";
        sub_100006354(&v24, &object);
        v15 = xpc::dyn_cast_or_default(&object, 0, v14);
        xpc_release(object);
        if (v15)
        {
          v24 = v9;
          v25 = "kUuid";
          object = a3;
          v22 = "kKeyCallTxnUuidHold";
          sub_100DF66B0(&object, &v24, &v23);
          xpc_release(v23);
          v23 = 0;
        }

        else
        {
          v24 = v9;
          v25 = "kUuid";
          object = a3;
          v22 = "kKeyCallTxnUuidUnHold";
          sub_100DF66B0(&object, &v24, &v20);
          xpc_release(v20);
          v20 = 0;
        }
      }

      ++v11;
      ++v9;
    }

    while (v11 != v10);
  }

  v16 = (*(*v17 + 24))(v17);
  v18 = xpc_int64_create(v16);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v24 = a3;
  v25 = "kKeyCallTxnType";
  sub_10000F688(&v24, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
}

void sub_100123D90(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  *a3 = v8;
LABEL_9:
  xpc_release(v7);
  v13 = *a2;
  v14 = "kUuid";
  v12[0] = a3;
  v12[1] = "kKeyCallTxnUuidHold";
  sub_100DF66B0(v12, &v13, &v15);
  xpc_release(v15);
  v15 = 0;
  v9 = (*(*a1 + 24))(a1);
  v10 = xpc_int64_create(v9);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v13 = a3;
  v14 = "kKeyCallTxnType";
  sub_10000F688(&v13, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
}

void sub_100123F28(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  *a3 = v8;
LABEL_9:
  xpc_release(v7);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = *a2;
    do
    {
      v21 = v9;
      v22 = "kActionType";
      sub_100006354(&v21, &object);
      v13 = xpc::dyn_cast_or_default(&object, 0, v12);
      xpc_release(object);
      if (v13 == 3)
      {
        v21 = v9;
        v22 = "kUuid";
        object = a3;
        v19 = "kKeyCallTxnUuidUnHold";
        sub_100DF66B0(&object, &v21, &v17);
        xpc_release(v17);
        v17 = 0;
      }

      else if (v13 == 2)
      {
        v21 = v9;
        v22 = "kUuid";
        object = a3;
        v19 = "kKeyCallTxnUuidEnd";
        sub_100DF66B0(&object, &v21, &v20);
        xpc_release(v20);
        v20 = 0;
      }

      ++v11;
      ++v9;
    }

    while (v11 != v10);
  }

  v14 = (*(*a1 + 24))(a1);
  v15 = xpc_int64_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v21 = a3;
  v22 = "kKeyCallTxnType";
  sub_10000F688(&v21, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
}

void sub_100124188(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  *a3 = v8;
LABEL_9:
  xpc_release(v7);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = *a2;
    do
    {
      v21 = v9;
      v22 = "kActionType";
      sub_100006354(&v21, &object);
      v13 = xpc::dyn_cast_or_default(&object, 0, v12);
      xpc_release(object);
      if (v13 == 1)
      {
        v21 = v9;
        v22 = "kUuid";
        object = a3;
        v19 = "kKeyCallTxnUuidAns";
        sub_100DF66B0(&object, &v21, &v17);
        xpc_release(v17);
        v17 = 0;
      }

      else if (v13 == 2)
      {
        v21 = v9;
        v22 = "kUuid";
        object = a3;
        v19 = "kKeyCallTxnUuidEnd";
        sub_100DF66B0(&object, &v21, &v20);
        xpc_release(v20);
        v20 = 0;
      }

      ++v11;
      ++v9;
    }

    while (v11 != v10);
  }

  v14 = (*(*a1 + 24))(a1);
  v15 = xpc_int64_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v21 = a3;
  v22 = "kKeyCallTxnType";
  sub_10000F688(&v21, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
}

void sub_1001243E8(uint64_t a1@<X0>, void ***a2@<X1>, xpc_object_t *a3@<X8>)
{
  *a3 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  *a3 = v8;
LABEL_9:
  xpc_release(v7);
  v9 = (*(*a1 + 24))(a1);
  v22 = xpc_int64_create(v9);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v20 = a3;
  v21 = "kKeyCallTxnType";
  sub_10000F688(&v20, &v22, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v22);
  v22 = 0;
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    do
    {
      v12 = *v10;
      v19 = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        v19 = xpc_null_create();
      }

      v20 = &v19;
      v21 = "kActionType";
      sub_100006354(&v20, &v16);
      v14 = xpc::dyn_cast_or_default(&v16, 0, v13);
      xpc_release(v16);
      if (v14 == 3)
      {
        v20 = &v19;
        v21 = "kUuid";
        v16 = a3;
        v17 = "kKeyCallTxnUuidHold";
        sub_100DF66B0(&v16, &v20, &v15);
        xpc_release(v15);
        v15 = 0;
      }

      else if (v14 == 1)
      {
        v20 = &v19;
        v21 = "kUuid";
        v16 = a3;
        v17 = "kKeyCallTxnUuidAns";
        sub_100DF66B0(&v16, &v20, &v18);
        xpc_release(v18);
        v18 = 0;
      }

      xpc_release(v19);
      ++v10;
    }

    while (v10 != v11);
  }
}

void sub_100124684(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  *a3 = v8;
LABEL_9:
  v15 = a1;
  xpc_release(v7);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = *a2;
    do
    {
      v23 = v9;
      v24 = "kActionType";
      sub_100006354(&v23, &object);
      v13 = xpc::dyn_cast_or_default(&object, 0, v12);
      xpc_release(object);
      switch(v13)
      {
        case 1:
          v23 = v9;
          v24 = "kUuid";
          object = a3;
          v21 = "kKeyCallTxnUuidAns";
          sub_100DF66B0(&object, &v23, &v19);
          xpc_release(v19);
          v19 = 0;
          break;
        case 3:
          v23 = v9;
          v24 = "kUuid";
          object = a3;
          v21 = "kKeyCallTxnUuidHold";
          sub_100DF66B0(&object, &v23, &v18);
          xpc_release(v18);
          v18 = 0;
          break;
        case 2:
          v23 = v9;
          v24 = "kUuid";
          object = a3;
          v21 = "kKeyCallTxnUuidEnd";
          sub_100DF66B0(&object, &v23, &v22);
          xpc_release(v22);
          v22 = 0;
          break;
      }

      ++v11;
      ++v9;
    }

    while (v11 != v10);
  }

  v14 = (*(*v15 + 24))(v15);
  v16 = xpc_int64_create(v14);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v23 = a3;
  v24 = "kKeyCallTxnType";
  sub_10000F688(&v23, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
}

uint64_t sub_10012491C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 9;
  }

  else
  {
    return 8;
  }
}

void sub_100124930(_BYTE *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) != &_xpc_type_dictionary)
  {
    v8 = xpc_null_create();
LABEL_8:
    *a3 = v8;
    goto LABEL_9;
  }

  xpc_retain(v7);
LABEL_9:
  xpc_release(v7);
  if (a1[8] == 1)
  {
    v9 = *a2;
    v10 = a2[1];
    if (*a2 != v10)
    {
      v11 = *a2;
      while (1)
      {
        v19 = v9;
        v20 = "kActionType";
        sub_100006354(&v19, object);
        v13 = xpc::dyn_cast_or_default(object, 0, v12);
        xpc_release(object[0]);
        if (v13 == 4)
        {
          break;
        }

        ++v11;
        ++v9;
        if (v11 == v10)
        {
          goto LABEL_16;
        }
      }

      v19 = v9;
      v20 = "kUuid";
      object[0] = a3;
      object[1] = "kKeyCallTxnUuidUnMerge";
      sub_100DF66B0(object, &v19, &v18);
      xpc_release(v18);
      v18 = 0;
    }
  }

LABEL_16:
  v14 = (*(*a1 + 24))(a1);
  v15 = xpc_int64_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v19 = a3;
  v20 = "kKeyCallTxnType";
  sub_10000F688(&v19, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
}

void sub_100124B5C(uint64_t a1@<X0>, xpc_object_t **a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  *a3 = v8;
LABEL_9:
  xpc_release(v7);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = *a2;
    while (1)
    {
      v19 = v9;
      v20 = "kActionType";
      sub_100006354(&v19, &object);
      v13 = xpc::dyn_cast_or_default(&object, 0, v12);
      xpc_release(object);
      if (!v13)
      {
        break;
      }

      ++v11;
      ++v9;
      if (v11 == v10)
      {
        goto LABEL_18;
      }
    }

    v14 = *v11;
    if (*v11)
    {
      xpc_retain(*v11);
    }

    else
    {
      v14 = xpc_null_create();
    }

    v15 = *a3;
    *a3 = v14;
    xpc_release(v15);
  }

LABEL_18:
  v16 = (*(*a1 + 24))(a1);
  v17 = xpc_int64_create(v16);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v19 = a3;
  v20 = "kKeyCallTxnType";
  sub_10000F688(&v19, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
}

void sub_100124E4C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E29F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100124EC0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E29FE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100124F34(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2A030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100124FA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2A080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10012501C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2A0D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100125090(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2A120;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100125104(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2A170;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100125178(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2A1C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001251EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2A210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100125260(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2A260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100125620(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001258A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p)
{
  if (v14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100125B40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained sinkDelegate];
  [v2 anyClientRespondsToSelector:*(a1 + 48) completion:*(a1 + 32)];
}

void sub_100125DF8(void **a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_10002974C(a2, *a1);

  objc_autoreleasePoolPop(v4);
}

id **sub_100125E4C(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

id **sub_100125EA4(uint64_t a1)
{
  v4 = a1;
  if ([*a1 _resolvePlaceholders_sync:*(a1 + 8)])
  {
    v2 = [*a1 sinkDelegate];
    [v2 processNotification:*(a1 + 8)];
  }

  return sub_100125E4C(&v4);
}

void sub_100125F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_100125E4C(va);
  _Unwind_Resume(a1);
}

void sub_100125F24(uint64_t a1, int a2, uint64_t *a3, char *a4, uint64_t *a5)
{
  v19[0] = off_101E2A828;
  v19[1] = sub_1000A7A48;
  v19[3] = v19;
  sub_100126280((a1 + 216));
  sub_1000A8744(v19);
  v10 = a3[1];
  v17 = *a3;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  v16 = 0;
  v11 = a5[1];
  v13 = *a5;
  v14 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004D102C(a1, a2, &v17, &v15, &v13);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  *a1 = &off_101E2A620;
  *(a1 + 224) = 0;
  *(a1 + 8) = off_101E2A7A8;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v12 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v12)
  {
    sub_100004A34(v12);
  }

  sub_100016890((a1 + 224), a4);
  operator new();
}

void sub_1001261A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (*(v13 + 247) < 0)
  {
    operator delete(*v14);
  }

  sub_1004D1284(v13);
  v16 = *(v13 + 216);
  *(v13 + 216) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Unwind_Resume(a1);
}

capabilities::ct *sub_100126280(capabilities::ct *a1)
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

void sub_1001263D8(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

MMSOperationInterface *sub_100126448(MMSOperationInterface *this)
{
  *this = &off_101E2A620;
  *(this + 1) = off_101E2A7A8;
  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  sub_1004D1284(this);
  v2 = *(this + 27);
  *(this + 27) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return this;
}

void sub_1001264FC(MMSOperationInterface *a1)
{
  sub_100126448(a1);

  operator delete();
}

void sub_100126534(uint64_t a1)
{
  sub_100126448((a1 - 8));

  operator delete();
}

BOOL sub_100126570(uint64_t a1)
{
  result = sub_1004D1694(a1);
  if (result)
  {
    v3 = *(a1 + 247);
    if (v3 < 0)
    {
      v3 = *(a1 + 232);
    }

    return v3 != 0;
  }

  return result;
}

void sub_1001265AC(uint64_t a1)
{
  v28 = 0;
  v29 = 0;
  v2 = sub_1004D15AC(a1);
  sub_1004D1140(a1, v2, &v28);
  if (!v28 || !*(a1 + 168) || ((v3 = (*(*v28 + 40))(v28), v4 = *(v3 + 23), v5 = *v3, v6 = (*(**(a1 + 168) + 40))(*(a1 + 168)), v4 >= 0) ? (v7 = v3) : (v7 = v5), *(v6 + 23) >= 0 ? (v8 = v6) : (v8 = *v6), strcasecmp(v7, v8)))
  {
    v9 = *(a1 + 136);
    sub_100004AA0(&v26, (a1 + 16));
    (*(*v9 + 16))(v9, 1, &v26);
    v10 = v27;
    if (!v27)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v24 = 0;
  v25 = 0;
  sub_1004D2664(a1, &v24);
  if (!v24)
  {
    v12 = *(a1 + 136);
    sub_100004AA0(&v22, (a1 + 16));
    (*(*v12 + 16))(v12, 1, &v22);
    v13 = v23;
    if (!v23)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = *(a1 + 176);
  v20 = *(a1 + 168);
  v21 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004D17E0(a1, &v20);
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (*(a1 + 184))
  {
    sub_1004D19AC(a1);
  }

  v14 = sub_1004D15AC(a1);
  v15 = *(*(**(a1 + 216) + 16))(*(a1 + 216), v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = sub_1004D149C(a1);
    sub_101761774(buf, v16, v15);
  }

  v17 = *(a1 + 136);
  sub_100004AA0(&v18, (a1 + 16));
  (*(*v17 + 16))(v17, 1, &v18);
  v13 = v19;
  if (v19)
  {
LABEL_23:
    sub_100004A34(v13);
  }

LABEL_24:
  v10 = v25;
  if (v25)
  {
LABEL_11:
    sub_100004A34(v10);
  }

LABEL_12:
  if (v29)
  {
    sub_100004A34(v29);
  }
}

void sub_100126984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100126A30(uint64_t a1, _DWORD **a2)
{
  v4 = sub_1004D15AC(a1);
  v5 = (*(**(a1 + 216) + 16))(*(a1 + 216), v4);
  v6 = sub_100BB1A2C(*a2);
  v7 = *v5;
  if (v6)
  {
    v8 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
    v9 = 0;
    if (v8)
    {
      v10 = (a1 + 224);
      if (*(a1 + 247) < 0)
      {
        v10 = *v10;
      }

      *buf = 136315394;
      v16 = v10;
      v17 = 1024;
      v18 = sub_1004D149C(a1);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I ACK %s, MsgId: %u", buf, 0x12u);
      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_1017617BC(a1, v7);
    }

    v9 = 1;
  }

  v11 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 136);
  sub_100004AA0(&v13, (a1 + 16));
  (*(*v12 + 16))(v12, v9, &v13);
  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_100126BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100126C60(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E2A828;
  a2[1] = v2;
  return result;
}

uint64_t sub_100126C98(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2A8A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100126D6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101761864(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100126D88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100126DC0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100126DF0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100126E30(uint64_t a1)
{
  *a1 = off_101E2A9A8;
  sub_100129B88(a1 + 32, *(a1 + 40));
  *a1 = off_101E2AA60;
  v3 = (a1 + 8);
  sub_100128A14(&v3);
  return a1;
}

void sub_100126EB4(uint64_t a1)
{
  sub_100126E30(a1);

  operator delete();
}

void sub_100126EEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a1 + 16))
  {
    v5 = v2 + 124;
    do
    {
      v6 = *(v5 + 92);
      v8 = *(v5 + 84);
      v9 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100126F9C(a2, &v8, v5, v5 + 56, *(v5 + 64));
      if (v9)
      {
        sub_100004A34(v9);
      }

      v7 = v5 + 100;
      v5 += 224;
    }

    while (v7 != *(a1 + 16));
  }
}

void sub_100126F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100126F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_100022DB4();
  }

  return (*(*v5 + 48))(v5, a2, a3, a4, &v7);
}

void sub_10012706C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101E2A9C8;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 257;
  *(a1 + 86) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = "";
  *(a1 + 104) = "";
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 2;
  *(a1 + 132) = 0;
  *(a1 + 124) = 0;
  *(a1 + 140) = 0;
  operator new();
}

void sub_10012717C(_Unwind_Exception *a1)
{
  v5 = *(v1 + 136);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10006DCAC(v3, *(v1 + 64));
  sub_10006DCAC(v2, *(v1 + 40));
  v6 = *(v1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001271B8(uint64_t a1)
{
  *a1 = off_101E2A9C8;
  sub_100009970(a1 + 152, *(a1 + 160));
  v2 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10006DCAC(a1 + 56, *(a1 + 64));
  sub_10006DCAC(a1 + 32, *(a1 + 40));
  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_100127268(uint64_t a1)
{
  sub_1001271B8(a1);

  operator delete();
}

uint64_t sub_1001272A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  sub_100129D60(v4, a2);
  sub_100126EEC(v2, v4);
  return sub_100129DF8(v4);
}

void sub_100127310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100129DF8(va);
  _Unwind_Resume(a1);
}

void sub_10012732C(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a1;
  os_unfair_lock_lock((a1 + 24));
  v4 = sub_100129E78(*(a1 + 144), &v5);
  sub_100129FB4((v4 + 24), 0x24uLL);
  sub_100129FF8(v4 + 48, 0x24uLL);
  sub_10012A09C((v4 + 72), 0x24uLL);
  sub_10012A0E0((v4 + 96), 0x24uLL);
  *(v4 + 120) = 0;
  os_unfair_lock_unlock((a1 + 24));
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1001273D4(os_unfair_lock_s *a1, int a2)
{
  v5 = a2;
  v6 = a1;
  os_unfair_lock_lock(a1 + 6);
  for (i = 0; i != 10; ++i)
  {
    v7 = &v5;
    v4 = &sub_10012B5D8(&a1[8], &v5)[i];
    *(v4 + 8) = 2;
    *(v4 + 36) = 0;
  }

  os_unfair_lock_unlock(a1 + 6);
}

void sub_100127470(os_unfair_lock_s *a1, int a2, unsigned int a3, int a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a1;
  os_unfair_lock_lock(a1 + 6);
  if (a3 <= 9)
  {
    v12 = &v8;
    v7 = sub_10012B5D8(&a1[8], &v8);
    LODWORD(v7[v9 + 4]) = a4;
  }

  os_unfair_lock_unlock(a1 + 6);
}

void sub_100127500(os_unfair_lock_s *a1, int a2, unsigned int a3, char a4)
{
  if (a3 <= 9)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = a1;
    os_unfair_lock_lock(a1 + 6);
    v11 = &v7;
    v6 = sub_10012B5D8(&a1[8], &v7);
    BYTE4(v6[v8 + 4]) = a4;
    os_unfair_lock_unlock(a1 + 6);
  }
}

void sub_100127584(os_unfair_lock_s *a1, int a2, _DWORD *a3)
{
  v7 = a2;
  v8 = a3;
  v9 = a1;
  os_unfair_lock_lock(a1 + 6);
  v4 = 0;
  v5 = 36;
  while (1)
  {
    v10 = &v7;
    v6 = sub_10012B5D8(&a1[8], &v7);
    if ((*(v6 + v5) & 1) == 0)
    {
      break;
    }

    ++v4;
    v5 += 8;
    if (v4 == 10)
    {
      goto LABEL_6;
    }
  }

  *(v6 + v5) = 1;
  *v8 = v4;
LABEL_6:
  os_unfair_lock_unlock(a1 + 6);
}

uint64_t sub_100127634(uint64_t a1, int a2, unsigned int a3)
{
  os_unfair_lock_lock((a1 + 24));
  if (a3 > 9)
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 40;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v7 != a1 + 40 && *(v7 + 28) <= a2)
  {
    v8 = *(v7 + 8 * a3 + 32);
  }

  else
  {
LABEL_9:
    v8 = 2;
  }

  os_unfair_lock_unlock((a1 + 24));
  return v8;
}

void sub_1001276CC(os_unfair_lock_s *a1, int a2, char a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  os_unfair_lock_lock(a1 + 6);
  v8 = &v5;
  *(sub_100051AD8(&a1[14], &v5) + 32) = a3;
  os_unfair_lock_unlock(a1 + 6);
}

void sub_100127740(os_unfair_lock_s *a1, int a2)
{
  v3 = a2;
  v4 = a1;
  os_unfair_lock_lock(a1 + 6);
  sub_10012B6B8(&a1[14], &v3);
  os_unfair_lock_unlock(a1 + 6);
}

void sub_100127790(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a3;
  v9 = a1;
  os_unfair_lock_lock((a1 + 24));
  v5 = sub_100129E78(*(a1 + 144), &v6);
  sub_10012B73C(v5, v8);
  os_unfair_lock_unlock((a1 + 24));
  if (v7)
  {
    sub_100004A34(v7);
  }
}

uint64_t sub_10012780C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 24));
  if (sub_100007D3C(*(a1 + 144)))
  {
    v4 = *(sub_100007C94(*(a1 + 144)) + 120);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((a1 + 24));
  if (v6)
  {
    sub_100004A34(v6);
  }

  return v4 & 1;
}

void sub_10012789C(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  if (sub_100019BEC(*(a1 + 144), a2) && (v8 = sub_100019C6C(*(a1 + 144), a2), v9 = *(v8 + 24), 0x4EC4EC4EC4EC4EC5 * ((*(v8 + 32) - v9) >> 3) > a3))
  {
    sub_10008E144(a4, (v9 + 104 * a3));
  }

  else
  {
    *a4 = -1;
    *(a4 + 4) = 0;
    *(a4 + 8) = -2;
    *(a4 + 12) = 0;
    *(a4 + 16) = 0;
    *(a4 + 20) = 2;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 88) = 0;
    *(a4 + 96) = 2;
  }

  os_unfair_lock_unlock((a1 + 24));
}

void sub_10012798C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  v4 = *(a1 + 104);
  *a2 = *(a1 + 88);
  *(a2 + 16) = v4;
  v5 = *(a1 + 128);
  *(a2 + 32) = *(a1 + 120);
  *(a2 + 40) = v5;
  v6 = *(a1 + 136);
  *(a2 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 24));
}

void sub_1001279F8(uint64_t a1, __int128 *a2)
{
  v7 = *a2;
  v8 = a2[1];
  v3 = *(a2 + 5);
  v9 = *(a2 + 4);
  v4 = *(a2 + 6);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = (a1 + 24);
    os_unfair_lock_lock((a1 + 24));
    *(a1 + 88) = v7;
    *(a1 + 104) = v8;
    *(a1 + 120) = v9;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = (a1 + 24);
    os_unfair_lock_lock((a1 + 24));
    *(a1 + 88) = v7;
    *(a1 + 104) = v8;
    *(a1 + 120) = v9;
  }

  v6 = *(a1 + 136);
  *(a1 + 128) = v3;
  *(a1 + 136) = v4;
  if (v6)
  {
    sub_100004A34(v6);
  }

  os_unfair_lock_unlock(v5);
  if (v4)
  {

    sub_100004A34(v4);
  }
}

uint64_t sub_100127AE4(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 6);
  os_unfair_lock_opaque = a1[20]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 6);
  return os_unfair_lock_opaque;
}

void sub_100127B1C(os_unfair_lock_s *a1, uint32_t a2)
{
  os_unfair_lock_lock(a1 + 6);
  a1[20]._os_unfair_lock_opaque = a2;

  os_unfair_lock_unlock(a1 + 6);
}

void sub_100127B60(uint64_t a1, char a2)
{
  os_unfair_lock_lock((a1 + 24));
  *(a1 + 84) = a2;

  os_unfair_lock_unlock((a1 + 24));
}

void sub_100127BA4(uint64_t a1, char a2)
{
  os_unfair_lock_lock((a1 + 24));
  *(a1 + 85) = a2;

  os_unfair_lock_unlock((a1 + 24));
}

void sub_100127BE8(uint64_t a1, char a2)
{
  os_unfair_lock_lock((a1 + 24));
  *(a1 + 86) = a2;

  os_unfair_lock_unlock((a1 + 24));
}

void sub_100127C2C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  if (sub_100019BEC(*(a1 + 144), a2))
  {
    v6 = sub_100019C6C(*(a1 + 144), a2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_10008E690(a3, *(v6 + 48), *(v6 + 56), 0x6DB6DB6DB6DB6DB7 * ((*(v6 + 56) - *(v6 + 48)) >> 3));
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  os_unfair_lock_unlock((a1 + 24));
}

void sub_100127CD4(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *a4 = 1;
  *(a4 + 8) = "";
  *(a4 + 16) = "";
  *(a4 + 32) = 2;
  *(a4 + 44) = 0;
  *(a4 + 36) = 0;
  *(a4 + 52) = 0;
  if (sub_100019BEC(*(a1 + 144), a2))
  {
    v8 = sub_100019C6C(*(a1 + 144), a2);
    if ((a3 & 0x80000000) == 0)
    {
      v9 = *(v8 + 48);
      if (0x6DB6DB6DB6DB6DB7 * ((*(v8 + 56) - v9) >> 3) > a3)
      {
        v10 = v9 + 56 * a3;
        v11 = *(v10 + 16);
        *a4 = *v10;
        *(a4 + 16) = v11;
        v12 = *(v10 + 40);
        *(a4 + 32) = *(v10 + 32);
        v13 = *(v10 + 48);
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        *(a4 + 40) = v12;
        *(a4 + 48) = v13;
      }
    }
  }

  os_unfair_lock_unlock((a1 + 24));
}

void sub_100127DD4(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  if (!sub_100019BEC(*(a1 + 144), a2) || (v8 = sub_100019C6C(*(a1 + 144), a2), (a3 & 0x80000000) != 0) || (v9 = *(v8 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 104) - v9) >> 4) <= a3))
  {
    QosFlowsContainerDefault = getQosFlowsContainerDefault();
  }

  else
  {
    QosFlowsContainerDefault = (v9 + 48 * a3);
  }

  sub_10009ADD4(a4, QosFlowsContainerDefault);

  os_unfair_lock_unlock((a1 + 24));
}

void sub_100127E88(os_unfair_lock_s *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v5 = *(a2 + 8);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10009ADD4(v11, a4);
  v12 = a1;
  os_unfair_lock_lock(a1 + 6);
  v6 = v12;
  if (sub_100007D3C(*&v12[36]._os_unfair_lock_opaque))
  {
    v7 = sub_100007C94(*&v6[36]._os_unfair_lock_opaque);
    if ((a3 & 0x80000000) == 0)
    {
      v8 = *(v7 + 96);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v7 + 104) - v8) >> 4) > a3)
      {
        sub_10001A9AC((v8 + 48 * a3), v11);
      }
    }
  }

  os_unfair_lock_unlock(a1 + 6);
  sub_10001BB68(v11);
  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_100127F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100127F80(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *(a2 + 8);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = *(a3 + 6);
  os_unfair_lock_lock((a1 + 24));
  if (sub_100007D3C(*(a1 + 144)))
  {
    v5 = sub_100007C94(*(a1 + 144));
    *(v5 + 124) = v7;
    *(v5 + 140) = v8;
    *(v5 + 156) = v9;
    *(v5 + 172) = v10;
  }

  os_unfair_lock_unlock((a1 + 24));
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100128034(os_unfair_lock_s *a1, int a2, uint64_t a3)
{
  *v8 = *a3;
  *&v8[9] = *(a3 + 9);
  sub_100066350(v9, a3 + 32);
  v17 = *(a3 + 192);
  v18 = a1;
  v19[0] = a2;
  os_unfair_lock_lock(a1 + 6);
  v6 = *&v18[36]._os_unfair_lock_opaque;
  v20 = v19;
  v7 = sub_10012C058(v6 + 32, v19);
  *(v7 + 5) = *v8;
  *(v7 + 49) = *&v8[9];
  sub_10012C160((v7 + 9), v9);
  *(v7 + 58) = v17;
  os_unfair_lock_unlock(a1 + 6);
  if (v16 == 1)
  {
    sub_10001BB0C(v15, v15[1]);
    sub_10001BB68(v14);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }
  }
}

void sub_100128150(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 8);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 24));
  if (sub_100007D3C(*(a1 + 144)))
  {
    *(sub_100007C94(*(a1 + 144)) + 189) = a3;
  }

  os_unfair_lock_unlock((a1 + 24));
  if (v5)
  {
    sub_100004A34(v5);
  }
}

uint64_t sub_1001281DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 24));
  if (sub_100007D3C(*(a1 + 144)))
  {
    v4 = *(sub_100007C94(*(a1 + 144)) + 188);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((a1 + 24));
  if (v6)
  {
    sub_100004A34(v6);
  }

  return v4 & 1;
}

uint64_t sub_10012826C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 24));
  if (sub_100007D3C(*(a1 + 144)))
  {
    v4 = *(sub_100007C94(*(a1 + 144)) + 180);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((a1 + 24));
  if (v6)
  {
    sub_100004A34(v6);
  }

  return v4;
}

BOOL sub_1001282FC(uint64_t a1, uint64_t a2, BOOL a3, int a4)
{
  v5 = *(a2 + 8);
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 24));
  if (sub_100007D3C(*(a1 + 144)))
  {
    v6 = sub_100007C94(*(a1 + 144));
    v7 = *(v6 + 180) != a3;
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "DataServiceCache");
    v8 = *&v19[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = subscriber::asString();
      v10 = asStringBool(*(v6 + 180));
      v11 = asStringBool(a3);
      v12 = asString();
      v13 = asString();
      *buf = 136316162;
      *v19 = v9;
      *&v19[8] = 2080;
      *&v19[10] = v10;
      v20 = 2080;
      v21 = v11;
      v22 = 2080;
      v23 = v12;
      v24 = 2080;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(change states) setInHomeData(%s): %s ==> %s (dataMode %s ==> %s)", buf, 0x34u);
    }

    *(v6 + 180) = a3;
    *(v6 + 184) = a4;
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock((a1 + 24));
  if (v15)
  {
    sub_100004A34(v15);
  }

  return v7;
}

void sub_1001284C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

BOOL sub_1001284CC(uint64_t a1, uint64_t a2, BOOL a3)
{
  v4 = *(a2 + 8);
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 24));
  if (sub_100007D3C(*(a1 + 144)))
  {
    v5 = sub_100007C94(*(a1 + 144));
    v6 = *(v5 + 188) != a3;
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "DataServiceCache");
    v7 = *&v15[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = subscriber::asString();
      v9 = asStringBool(*(v5 + 188));
      v10 = asStringBool(a3);
      *buf = 136315650;
      *v15 = v8;
      *&v15[8] = 2080;
      *&v15[10] = v9;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(change states) setInHomeVoice(%s): %s ==> %s", buf, 0x20u);
    }

    *(v5 + 188) = a3;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock((a1 + 24));
  if (v12)
  {
    sub_100004A34(v12);
  }

  return v6;
}

void sub_100128654(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100128660(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  if (sub_100019BEC(*(a1 + 144), a2))
  {
    v6 = sub_100019C6C(*(a1 + 144), a2);
    v7 = *(v6 + 200);
    *a3 = *(v6 + 192);
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  os_unfair_lock_unlock((a1 + 24));
}

void sub_1001286EC(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 24));
  if (sub_100019BEC(*(a1 + 144), a2))
  {
    v7 = sub_100019C6C(*(a1 + 144), a2);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v7 + 200);
    *(v7 + 192) = v6;
    *(v7 + 200) = v5;
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  else
  {
    ctu::OsLogContext::OsLogContext(v11, kCtLoggingSystemName, "DataServiceCache");
    v9 = v12;
    ctu::OsLogContext::~OsLogContext(v11);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = subscriber::asString();
      sub_101761888(v10, v11, v9);
    }
  }

  os_unfair_lock_unlock((a1 + 24));
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_100128810(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10012881C(os_unfair_lock_s *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5 = a1;
  os_unfair_lock_lock(a1 + 6);
  sub_100005BA0(&v5[38], __p);
  os_unfair_lock_unlock(a1 + 6);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

BOOL sub_1001288AC(os_unfair_lock_s *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v8 = a1;
  os_unfair_lock_lock(a1 + 6);
  v3 = v8;
  v4 = sub_100007A6C(&v8[38], __p);
  os_unfair_lock_unlock(a1 + 6);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return &v3[40] != v4;
}

uint64_t sub_100128950(uint64_t a1)
{
  *a1 = off_101E2AA60;
  v3 = (a1 + 8);
  sub_100128A14(&v3);
  return a1;
}

void sub_1001289A8(uint64_t a1)
{
  *a1 = off_101E2AA60;
  v1 = (a1 + 8);
  sub_100128A14(&v1);
  operator delete();
}

void sub_100128A14(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_100128A98(v4 - 224);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100128A98(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v6 = (a1 + 96);
  sub_100128B2C(&v6);
  v6 = (a1 + 72);
  sub_10009C004(&v6);
  v6 = (a1 + 48);
  sub_10009C118(&v6);
  v6 = (a1 + 24);
  sub_10009C16C(&v6);
  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_100128B2C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10001BB68((v4 - 48));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100128BB0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100128C04(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100128C04(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 160)
  {
    if (*(i - 24) == 1 && *(i - 48) == 1 && *(i - 49) < 0)
    {
      operator delete(*(i - 72));
    }

    if (*(i - 80) == 1 && *(i - 104) == 1 && *(i - 105) < 0)
    {
      operator delete(*(i - 128));
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_100128C9C(uint64_t a1)
{
  sub_10001BB0C(a1 + 128, *(a1 + 136));
  sub_10001BB68((a1 + 80));
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

uint64_t sub_100128CF4(void *a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v2 = *sub_100128D94(a1, a2, &v8, &v7);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100117BE8();
  }

  return v2;
}

uint64_t *sub_100128D94(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = a1 + 1;
  if (a1 + 1 != a2 && !TrafficDescriptor::operator<())
  {
    if (!TrafficDescriptor::operator<())
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v16 = a2;
      do
      {
        v13 = v16[2];
        v15 = *v13 == v16;
        v16 = v13;
      }

      while (!v15);
    }

    if (v13 != v7)
    {
      if (!TrafficDescriptor::operator<())
      {
        goto LABEL_28;
      }

      v11 = *a4;
    }

    if (v11)
    {
      *a3 = v13;
      return v13;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v10 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v10;
      return v10 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    do
    {
      v10 = v9;
      v9 = v9[1];
    }

    while (v9);
  }

  else
  {
    v14 = a2;
    do
    {
      v10 = v14[2];
      v15 = *v10 == v14;
      v14 = v10;
    }

    while (v15);
  }

  if (TrafficDescriptor::operator<())
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_100117B60(a1, a3);
}

void *sub_100128F28(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x19)
  {
    v5 = v4 / 0x19 + 1;
  }

  else
  {
    v5 = v4 / 0x19;
  }

  v6 = result[4];
  if (v5 >= v6 / 0x19)
  {
    v7 = v6 / 0x19;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x19)
  {
    for (result[4] = v6 - 25 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_100129284(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_1000FB8B8(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 25 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_100129284(v2, v16);
    }
  }

  return result;
}

void sub_100129210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100129284(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1000FB8B8(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_10012938C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1000FB8B8(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_100129498(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1000FB8B8(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1001295A0(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1000FB8B8(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t sub_1001296AC(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = *a2;
    *(a1 + 13) = *(a2 + 13);
    *a1 = v3;
    sub_10012974C(a1 + 24, a2 + 24);
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_10012971C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 56) == 1 && *(v10 + 48) == 1)
  {
    sub_100128BB0(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012974C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1001297A8(a1, a2);
  return a1;
}

void sub_100129784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_100128BB0(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001297A8(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100129808(result, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 5));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_100129808(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100129890(result, a4);
  }

  return result;
}

void sub_100129870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100128BB0(&a9);
  _Unwind_Resume(a1);
}

void sub_100129890(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    sub_1001298DC(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001298DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100129934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 88;
    do
    {
      v7 = *(v6 - 72);
      *v4 = *(v6 - 88);
      *(v4 + 16) = v7;
      sub_100129A34(v4 + 32, v6 - 56);
      sub_100129A34(v4 + 88, v6);
      v8 = v6 - 88;
      v9 = *(v6 + 56);
      *(v4 + 150) = *(v6 + 62);
      *(v4 + 144) = v9;
      v4 = v14 + 160;
      v14 += 160;
      v6 += 160;
    }

    while (v8 + 160 != a3);
  }

  LOBYTE(v12) = 1;
  sub_100129AB0(v11);
  return v4;
}

uint64_t sub_100129A34(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    sub_10006F264(a1, a2);
    v4 = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 32) = v4;
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_100129A90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    sub_1017618D0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100129AB0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100129AFC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_100129AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 24) == 1 && *(v6 - 48) == 1 && *(v6 - 49) < 0)
      {
        operator delete(*(v6 - 72));
      }

      if (*(v6 - 80) == 1 && *(v6 - 104) == 1 && *(v6 - 105) < 0)
      {
        operator delete(*(v6 - 128));
      }

      v6 -= 160;
    }

    while (v6 != a5);
  }
}

void sub_100129B88(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100129B88(a1, *a2);
    sub_100129B88(a1, *(a2 + 1));
    if (a2[224] == 1)
    {
      sub_10001BB0C((a2 + 200), *(a2 + 26));
      sub_10001BB68(a2 + 19);
      if (a2[143] < 0)
      {
        operator delete(*(a2 + 15));
      }

      if (a2[119] < 0)
      {
        operator delete(*(a2 + 12));
      }
    }

    operator delete(a2);
  }
}

void sub_100129C9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1017618EC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100129CB8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100129CF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100129D20(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100129D60(uint64_t a1, uint64_t a2)
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

uint64_t sub_100129DF8(uint64_t a1)
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

uint64_t sub_100129E78(uint64_t *a1, uint64_t *a2)
{
  if (sub_100007D3C(a1))
  {

    return sub_100007C94(a1);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    memset(v8, 0, sizeof(v8));
    v12 = -4294967285;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v5 = a2[1];
    v24 = *a2;
    v25 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = a1[2];
    if (v6 >= a1[3])
    {
      v7 = sub_10012A16C(a1 + 1, v8);
    }

    else
    {
      sub_10012A2B4(a1[2], v8);
      v7 = v6 + 224;
      a1[2] = v6 + 224;
    }

    a1[2] = v7;
    sub_100128A98(v8);
    return a1[2] - 224;
  }
}

void sub_100129FB4(uint64_t *a1, unint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10012A988(a1, v4);
  }

  else if (!v3)
  {
    sub_10009A9C4(a1, *a1 + 104 * a2);
  }
}

void sub_100129FF8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_10012AD18(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 56 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 8);
      if (v8)
      {
        sub_100004A34(v8);
      }

      v3 -= 56;
    }

    *(a1 + 8) = v7;
  }
}

void sub_10012A09C(void *a1, unint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10012B018(a1, v4);
  }

  else if (!v3)
  {
    sub_10009C0C4(a1, *a1 + 152 * a2);
  }
}

void sub_10012A0E0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_10012B36C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 48 * a2;
    while (v3 != v7)
    {
      v3 = sub_10001BB68((v3 - 48));
    }

    a1[1] = v7;
  }
}

uint64_t sub_10012A16C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10012A838(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  sub_10012A2B4(224 * v2, a2);
  v15 = (224 * v2 + 224);
  v7 = a1[1];
  v8 = 224 * v2 + *a1 - v7;
  sub_10012A894(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10012A938(&v13);
  return v12;
}

void sub_10012A2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10012A938(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012A2B4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10012A498(a1, *a2, *(a2 + 8), 0x86BCA1AF286BCA1BLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_10012A514(a1 + 24, *(a2 + 24), *(a2 + 32), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_10008E690(a1 + 48, *(a2 + 48), *(a2 + 56), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_10009AB0C(a1 + 72, *(a2 + 72), *(a2 + 80), 0x86BCA1AF286BCA1BLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_10012A688(a1 + 96, *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 4));
  *(a1 + 120) = *(a2 + 120);
  v4 = *(a2 + 136);
  v5 = *(a2 + 152);
  v6 = *(a2 + 168);
  *(a1 + 182) = *(a2 + 182);
  *(a1 + 168) = v6;
  *(a1 + 152) = v5;
  *(a1 + 136) = v4;
  *(a1 + 192) = *(a2 + 192);
  v7 = *(a2 + 200);
  *(a1 + 200) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 208) = *(a2 + 208);
  v8 = *(a2 + 216);
  *(a1 + 216) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_10012A440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10009C004(va);
  sub_10009C118(va);
  sub_10009C16C(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10012A498(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10008DEAC(result, a4);
  }

  return result;
}

void sub_10012A4F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012A514(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10008E0B4(result, a4);
  }

  return result;
}

void sub_10012A57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10009C16C(&a9);
  _Unwind_Resume(a1);
}

void sub_10012A59C(uint64_t *a1)
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
      v3 -= 104;
      sub_10009A96C(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_10012A5F0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_100004A34(v3);
    }

    v1 -= 56;
  }
}

void sub_10012A634(uint64_t *a1)
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
      v3 -= 152;
      sub_10009C058(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10012A688(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10012A710(result, a4);
  }

  return result;
}

void sub_10012A6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100128B2C(&a9);
  _Unwind_Resume(a1);
}

void sub_10012A710(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_10012A75C(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_10012A75C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10012A7B4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10009ADD4(a4, v6);
      v6 += 6;
      a4 += 48;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_10012A814(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 48);
    do
    {
      v4 = (sub_10001BB68(v4) - 48);
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012A838(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10012A894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_10012A2B4(a4, v8);
      v8 += 224;
      a4 += 224;
      v7 -= 224;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_100128A98(v6);
      v6 += 224;
    }
  }

  return result;
}

void sub_10012A914(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 224;
    do
    {
      v4 = sub_100128A98(v4) - 224;
      v2 += 224;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012A938(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 224;
    sub_100128A98(i - 224);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_10012A988(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0x4EC4EC4EC4EC4EC5 * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 104 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 0uLL;
        *(v4 + 48) = 0uLL;
        *(v4 + 64) = 0uLL;
        *(v4 + 80) = 0uLL;
        *v4 = -1;
        *(v4 + 8) = -2;
        *(v4 + 20) = 2;
        *(v4 + 24) = 0uLL;
        *(v4 + 40) = 0uLL;
        *(v4 + 56) = 0uLL;
        *(v4 + 72) = 0uLL;
        *(v4 + 88) = 0;
        *(v4 + 96) = 0;
        *(v4 + 96) = 2;
        v4 += 104;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x276276276276276)
    {
      sub_1000CE3D4();
    }

    v8 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x13B13B13B13B13BLL)
    {
      v9 = 0x276276276276276;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      sub_10008E058(result, v9);
    }

    v11 = 104 * v6;
    v17 = 0;
    v18 = 104 * v6;
    *(&v19 + 1) = 0;
    v12 = 104 * v6;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 80) = 0uLL;
      *v12 = -1;
      *(v12 + 8) = -2;
      *(v12 + 20) = 2;
      *(v12 + 24) = 0uLL;
      *(v12 + 40) = 0uLL;
      *(v12 + 56) = 0uLL;
      *(v12 + 72) = 0uLL;
      *(v12 + 88) = 0;
      *(v12 + 96) = 0;
      *(v12 + 96) = 2;
      v12 += 104;
    }

    while (v12 != 104 * v6 + 104 * a2);
    *&v19 = v11 + 104 * a2;
    v13 = result[1];
    v14 = v11 + *result - v13;
    sub_10012AB7C(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return sub_10012AC98(&v17);
  }

  return result;
}

void sub_10012AB68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10012AC98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012AB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(a4 + 96) = *(v7 + 96);
      v7 += 104;
      a4 += 104;
    }

    while (v7 != a3);
    v15 = a4;
    LOBYTE(v13) = 1;
    while (v5 != a3)
    {
      sub_10009A96C(a1, v5);
      v5 += 104;
    }
  }

  return sub_10008E548(v12);
}

uint64_t sub_10012AC98(uint64_t a1)
{
  sub_10012ACD0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10012ACD0(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 104;
    sub_10009A96C(v5, v4 - 104);
  }
}

void **sub_10012AD18(void **result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = &v4[56 * a2];
      do
      {
        *v4 = 0uLL;
        *(v4 + 1) = 0uLL;
        *(v4 + 1) = "";
        *(v4 + 2) = "";
        *(v4 + 8) = 2;
        *(v4 + 44) = 0;
        *(v4 + 36) = 0;
        *(v4 + 13) = 0;
        v4 += 56;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x492492492492492)
    {
      sub_1000CE3D4();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      sub_10008E49C(result, v9);
    }

    v11 = 56 * v6;
    v17 = 0;
    v18 = 56 * v6;
    *(&v19 + 1) = 0;
    v12 = 56 * v6;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 8) = "";
      *(v12 + 16) = "";
      *(v12 + 32) = 2;
      *(v12 + 44) = 0;
      *(v12 + 36) = 0;
      *(v12 + 52) = 0;
      v12 += 56;
    }

    while (v12 != 56 * v6 + 56 * a2);
    *&v19 = v11 + 56 * a2;
    v13 = result[1];
    v14 = v11 + *result - v13;
    sub_10012AEDC(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return sub_10012AF90(&v17);
  }

  return result;
}

void sub_10012AEC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10012AF90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012AEDC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v12 = 0;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      *(a4 + 32) = *(v6 + 4);
      *a4 = v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    v14 = a4;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      v9 = *(v5 + 6);
      if (v9)
      {
        sub_100004A34(v9);
      }

      v5 = (v5 + 56);
    }
  }

  return sub_10008E658(v11);
}

void **sub_10012AF90(void **a1)
{
  sub_10012AFC4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10012AFC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 56;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_100004A34(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 56;
    }
  }
}

uint64_t sub_10012B018(uint64_t result, unint64_t a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (0x86BCA1AF286BCA1BLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 152 * a2;
      v11 = 152 * a2;
      v12 = (v5 + 136);
      do
      {
        *(v12 - 8) = 0;
        *(v12 - 34) = -3;
        *(v12 - 8) = 0uLL;
        *(v12 - 7) = 0uLL;
        *(v12 - 132) = 0;
        *(v12 - 124) = 0;
        *(v12 - 15) = 0x200000002;
        *(v12 - 7) = 0uLL;
        *(v12 - 5) = 0uLL;
        *(v12 - 3) = 0uLL;
        *v12 = 0;
        v12[1] = 0;
        *(v12 - 6) = 0uLL;
        *(v12 - 5) = 0uLL;
        *(v12 - 66) = 0;
        *(v12 - 1) = v12;
        v12 += 19;
        v11 -= 152;
      }

      while (v11);
    }

    else
    {
      v10 = *(result + 8);
    }

    *(result + 8) = v10;
  }

  else
  {
    *&v22 = 0;
    v6 = 0x86BCA1AF286BCA1BLL * ((v5 - *result) >> 3);
    if (v6 + a2 > 0x1AF286BCA1AF286)
    {
      sub_1000CE3D4();
    }

    v7 = 0x86BCA1AF286BCA1BLL * ((v4 - *result) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xD79435E50D7943)
    {
      v9 = 0x1AF286BCA1AF286;
    }

    else
    {
      v9 = v8;
    }

    v23 = result;
    if (v9)
    {
      sub_10009AB94(result, v9);
    }

    v13 = 152 * v6;
    v20 = 0;
    v21 = 152 * v6;
    *(&v22 + 1) = 0;
    v14 = 152 * a2;
    v15 = (152 * v6 + 136);
    do
    {
      *(v15 - 8) = 0;
      *(v15 - 34) = -3;
      *(v15 - 8) = 0uLL;
      *(v15 - 7) = 0uLL;
      *(v15 - 132) = 0;
      *(v15 - 124) = 0;
      *(v15 - 15) = 0x200000002;
      *(v15 - 7) = 0uLL;
      *(v15 - 5) = 0uLL;
      *(v15 - 3) = 0uLL;
      *v15 = 0;
      v15[1] = 0;
      *(v15 - 6) = 0uLL;
      *(v15 - 5) = 0uLL;
      *(v15 - 66) = 0;
      *(v15 - 1) = v15;
      v15 += 19;
      v14 -= 152;
    }

    while (v14);
    *&v22 = v13 + 152 * a2;
    v16 = *(result + 8);
    v17 = v13 + *result - v16;
    sub_10012B224(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 16);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return sub_10012B2EC(&v20);
  }

  return result;
}

void sub_10012B210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10012B2EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B224(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_10009AC40(a4, v7);
      v7 = (v7 + 152);
      a4 = v12 + 152;
      v12 += 152;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_10009C058(a1, v5);
      v5 += 152;
    }
  }

  return sub_10009B20C(v9);
}

uint64_t sub_10012B2EC(uint64_t a1)
{
  sub_10012B324(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10012B324(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 152;
    sub_10009C058(v5, v4 - 152);
  }
}

void sub_10012B36C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      sub_1000CE3D4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      sub_10012A75C(a1, v9);
    }

    v16 = 0;
    v17 = 48 * v6;
    v11 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero((48 * v6), v11);
    v18 = 48 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (48 * v6 + *a1 - v12);
    sub_10012B4F8(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    sub_10012B588(&v16);
  }
}

void sub_10012B4E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10012B588(va);
  _Unwind_Resume(a1);
}

void sub_10012B4F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      a4[1] = v6[1];
      a4[2] = v6[2];
      v7 = v6[4];
      a4[3] = v6[3];
      *v6 = 0uLL;
      *(v6 + 1) = 0uLL;
      a4[4] = v7;
      a4[5] = v6[5];
      v6[4] = 0;
      v6[5] = 0;
      v6 += 6;
      a4 += 6;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = (sub_10001BB68(v5) + 48);
    }
  }
}

uint64_t sub_10012B588(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_10001BB68((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_10012B5D8(uint64_t a1, int *a2)
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

uint64_t sub_10012B6B8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_1000194D8(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_10012B73C(void *a1, unint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10012B780(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 152 * a2;
  }
}

void sub_10012B780(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x86BCA1AF286BCA1BLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 152 * ((152 * a2 - 152) / 0x98) + 152;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x86BCA1AF286BCA1BLL * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x1AF286BCA1AF286)
    {
      sub_1000CE3D4();
    }

    v7 = 0x86BCA1AF286BCA1BLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xD79435E50D7943)
    {
      v9 = 0x1AF286BCA1AF286;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_10008DE50(a1, v9);
    }

    v11 = 152 * v6;
    v12 = 152 * ((152 * a2 - 152) / 0x98) + 152;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t sub_10012B924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 80;
  do
  {
    v7 = v6 - 80;
    v8 = *(v6 - 80);
    *(a4 + 16) = *(v6 - 64);
    *a4 = v8;
    std::string::operator=((a4 + 24), (v6 - 56));
    std::string::operator=((a4 + 48), (v6 - 32));
    if (a4 != v6 - 80)
    {
      sub_100008234((a4 + 72), *(v6 - 8), *v6, 0xAAAAAAAAAAAAAAABLL * ((*v6 - *(v6 - 8)) >> 3));
    }

    *(a4 + 96) = *(v6 + 16);
    a4 += 104;
    v6 += 104;
  }

  while (v7 + 104 != v5);
  return v5;
}

__int128 *sub_10012B9E4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      v8 = v5[1];
      *(a4 + 32) = *(v5 + 4);
      *a4 = v7;
      *(a4 + 16) = v8;
      v10 = *(v5 + 5);
      v9 = *(v5 + 6);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(a4 + 48);
      *(a4 + 40) = v10;
      *(a4 + 48) = v9;
      if (v11)
      {
        sub_100004A34(v11);
      }

      v5 = (v5 + 56);
      a4 += 56;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_10012BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    *(a4 + 8) = *(v5 + 8);
    sub_10012BAF4(a4 + 24, (v5 + 24));
    sub_10012BAF4(a4 + 88, (v5 + 88));
    *(a4 + 152) = *(v5 + 152);
    a4 += 160;
    v5 += 160;
  }

  while (v5 != v6);
  return v6;
}

void sub_10012BAF4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v3 = *a2;
      *(a1 + 13) = *(a2 + 13);
      *a1 = v3;
      v4 = a1 + 24;
      v5 = a2 + 24;

      sub_10012BBB4(v4, v5);
    }
  }

  else if (*(a1 + 56))
  {
    if (*(a1 + 48) == 1)
    {
      v7 = (a1 + 24);
      sub_100128BB0(&v7);
    }

    *(a1 + 56) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 13) = *(a2 + 13);
    *a1 = v6;
    sub_10012974C(a1 + 24, a2 + 24);
    *(a1 + 56) = 1;
  }
}

void sub_10012BBB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a2) >> 5);
      v5 = *a2;

      sub_10012BC84(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    sub_100128BB0(&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100129808(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 5));
    *(a1 + 24) = 1;
  }
}

void sub_10012BC84(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) < a4)
  {
    sub_10012BDD0(a1);
    if (a4 <= 0x199999999999999)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
      {
        v10 = 0x199999999999999;
      }

      else
      {
        v10 = v9;
      }

      sub_100129890(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 5) >= a4)
  {
    sub_10012BE10(&v14, a2, a3, v8);
    sub_100128C04(a1, v12);
  }

  else
  {
    sub_10012BE10(&v13, a2, a2 + v11, v8);
    a1[1] = sub_100129934(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_10012BDD0(uint64_t *a1)
{
  if (*a1)
  {
    sub_100128C04(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10012BE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *(v5 + 16);
    *a4 = *v5;
    *(a4 + 16) = v7;
    sub_10012BE98((a4 + 32), (v5 + 32));
    sub_10012BE98((a4 + 88), (v5 + 88));
    v8 = *(v5 + 144);
    *(a4 + 150) = *(v5 + 150);
    *(a4 + 144) = v8;
    a4 += 160;
    v5 += 160;
  }

  while (v5 != v6);
  return v6;
}

void sub_10012BE98(std::string *__dst, std::string *a2)
{
  if (__dst[2].__r_.__value_.__s.__data_[0] == a2[2].__r_.__value_.__s.__data_[0])
  {
    if (__dst[2].__r_.__value_.__s.__data_[0])
    {
      sub_10012BF3C(__dst, a2);
      size = a2[1].__r_.__value_.__l.__size_;
      __dst[1].__r_.__value_.__s.__data_[16] = a2[1].__r_.__value_.__s.__data_[16];
      __dst[1].__r_.__value_.__l.__size_ = size;
    }
  }

  else if (__dst[2].__r_.__value_.__s.__data_[0])
  {
    if (__dst[1].__r_.__value_.__s.__data_[0] == 1 && SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[2].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    sub_10006F264(__dst, a2);
    v5 = a2[1].__r_.__value_.__l.__size_;
    __dst[1].__r_.__value_.__s.__data_[16] = a2[1].__r_.__value_.__s.__data_[16];
    __dst[1].__r_.__value_.__l.__size_ = v5;
    __dst[2].__r_.__value_.__s.__data_[0] = 1;
  }
}

void sub_10012BF3C(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (__dst[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(__dst, a2);
    }
  }

  else if (__dst[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

uint64_t sub_10012BFE0(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 25 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x19)
  {
    a2 = 1;
  }

  if (v5 < 0x32)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t *sub_10012C058(uint64_t a1, int *a2)
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