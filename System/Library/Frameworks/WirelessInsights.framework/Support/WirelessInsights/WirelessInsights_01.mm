void sub_100015AB0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(*(a1 + 32) + 24) currentCalls];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 status] != 1)
        {

          goto LABEL_14;
        }

        v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 service]);
        [v2 addObject:v8];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  if (!v10)
  {
    goto LABEL_12;
  }

  if (([v10 isEqualToArray:v2] & 1) == 0)
  {
    v9 = *(a1 + 32);
LABEL_12:
    objc_storeStrong((v9 + 96), v2);
    [*(a1 + 32) handleActiveCallServicesChangedTo:v2];
  }

LABEL_14:
}

void sub_100015C84(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  memset(&__p, 0, sizeof(__p));
  if (v2 == v3)
  {
    goto LABEL_42;
  }

  v4 = v2[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *v2;
      if (*v2)
      {
        if (*(v6 + 23) < 0)
        {
          sub_10000FFF8(&__s, *v6, *(v6 + 1));
        }

        else
        {
          v7 = *v6;
          __s.__r_.__value_.__r.__words[2] = *(v6 + 2);
          *&__s.__r_.__value_.__l.__data_ = v7;
        }

        v8 = 1;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  sub_100007ECC(&__s, "<expired>");
  v8 = 0;
  if (v5)
  {
LABEL_12:
    sub_100008350(v5);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __s;
  for (i = v2 + 2; i != v3; i += 2)
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    strcpy(&__s, ",");
    std::string::append(&__p, &__s, 1uLL);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v10 = i[1];
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = *i;
        if (*i)
        {
          ++v8;
          if (*(v12 + 23) < 0)
          {
            sub_10000FFF8(&__s, *v12, *(v12 + 1));
          }

          else
          {
            v13 = *v12;
            __s.__r_.__value_.__r.__words[2] = *(v12 + 2);
            *&__s.__r_.__value_.__l.__data_ = v13;
          }

LABEL_25:
          sub_100008350(v11);
          goto LABEL_26;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    sub_100007ECC(&__s, "<expired>");
    if (v11)
    {
      goto LABEL_25;
    }

LABEL_26:
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __s.__r_.__value_.__l.__size_;
    }

    std::string::append(&__p, p_s, size);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  if (v8)
  {
    v16 = a1[4];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_45;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__s.__r_.__value_.__l.__data_) = 134218242;
    *(__s.__r_.__value_.__r.__words + 4) = v8;
    WORD2(__s.__r_.__value_.__r.__words[1]) = 2082;
    *(&__s.__r_.__value_.__r.__words[1] + 6) = p_p;
    v18 = "life:#I %zd activities remaining: %{public}s";
    v19 = v16;
    v20 = 22;
    goto LABEL_44;
  }

LABEL_42:
  v21 = a1[4];
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    goto LABEL_45;
  }

  LOWORD(__s.__r_.__value_.__l.__data_) = 0;
  v18 = "life:#I No activities.";
  v19 = v21;
  v20 = 2;
LABEL_44:
  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v18, &__s, v20);
LABEL_45:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100015F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_100008350(v21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100015FA8(void *a1)
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
        sub_10000858C(v3);
        if (v3[5] == v3[6])
        {
          v6 = v3[4];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            *v8 = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "life:#I No activities remaining; cancelling activity timer.", v8, 2u);
          }

          v7 = v3[8];
          v3[8] = 0;
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }
        }

        else
        {
          sub_100015C84(v3);
        }
      }

      sub_100008350(v5);
    }
  }
}

void sub_1000160C0(void *a1)
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
        sub_100016148(v3);
      }

      sub_100008350(v5);
    }
  }
}

void sub_100016148(uint64_t a1)
{
  v3 = *(a1 + 120);
  *(a1 + 120) = v3 + 1;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v4 = *(a1 + 56);
  v5 = (a1 + 64);
  if (v4 != (a1 + 64))
  {
    do
    {
      v6 = v4[6];
      v7 = *(v6 + 24);
      v8 = sub_100016440(v6);
      if (v3 - v7 == 1)
      {
        sub_10001646C(a1, v4[6], v4[4], *(v4 + 10));
      }

      if (v3 - v7 >= v8)
      {
        v9 = v26;
        if (v26 >= v27)
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v26 - __p) >> 2);
          v13 = v12 + 1;
          if (v12 + 1 > 0x1555555555555555)
          {
            sub_100033FD0();
          }

          if (0x5555555555555556 * ((v27 - __p) >> 2) > v13)
          {
            v13 = 0x5555555555555556 * ((v27 - __p) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v27 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v14 = 0x1555555555555555;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            sub_100061200(&__p, v14);
          }

          v15 = 4 * ((v26 - __p) >> 2);
          v16 = v4[4];
          *(v15 + 8) = *(v4 + 10);
          *v15 = v16;
          v11 = 12 * v12 + 12;
          memcpy((12 * v12 - (v26 - __p)), __p, v26 - __p);
          v17 = __p;
          __p = (12 * v12 - (v26 - __p));
          v26 = v11;
          v27 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          v10 = v4[4];
          v26[2] = *(v4 + 10);
          *v9 = v10;
          v11 = v9 + 12;
        }

        v26 = v11;
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
          v20 = *v19 == v4;
          v4 = v19;
        }

        while (!v20);
      }

      v4 = v19;
    }

    while (v19 != v5);
    v21 = __p;
    if (__p != v26)
    {
      do
      {
        v1 = v1 & 0xFFFFFFFF00000000 | *(v21 + 2);
        sub_10005EBF0(a1, *v21, v1);
        v21 = (v21 + 12);
      }

      while (v21 != v26);
    }
  }

  if (*(a1 + 72))
  {
    goto LABEL_27;
  }

  v22 = __p;
  if (__p == v26)
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v29 = v3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "agg:#I Stopping periodic timer because no more work is pending (gen=%u)", buf, 8u);
    }

    v24 = *(a1 + 112);
    *(a1 + 112) = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

LABEL_27:
    v22 = __p;
  }

  if (v22)
  {
    v26 = v22;
    operator delete(v22);
  }
}

void sub_10001641C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10001644C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  *(a1 + 1) = 0;
  result = *(a1 + 72);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 88);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

void sub_10001646C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 24);
  v8 = sub_100016440(a2);
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67110144;
    v11[1] = a3;
    v12 = 1024;
    v13 = HIDWORD(a3);
    v14 = 1024;
    v15 = a4;
    v16 = 2048;
    v17 = 5 * v8;
    v18 = 1024;
    v19 = v8 + v7;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "agg:#D [x..] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Grace period complete; setting final timeout of %lld sec (end gen=%u)", v11, 0x24u);
  }

  pthread_mutex_lock(&stru_1002D4CC0);
  v10 = xmmword_1002D4D00;
  if (!xmmword_1002D4D00)
  {
    sub_1000ED560();
  }

  if (*(&xmmword_1002D4D00 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4D00 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4CC0);
  sub_100016644(v10);
}

void sub_100016728(void **a1)
{
  v16 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = v2[11];
  v4 = v2[12];
  if (v3 != v4)
  {
    while (v1[4] != *(v3 + 16) || v1[3] != *(v3 + 12) || v1[2] != *(v3 + 8))
    {
      v3 += 48;
      if (v3 == v4)
      {
        goto LABEL_18;
      }
    }
  }

  if (v3 != v4)
  {
    v5 = v2[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v1[2];
      v7 = v1[3];
      v8 = v1[4];
      *buf = 67109632;
      *&buf[4] = v6;
      *&buf[8] = 1024;
      *&buf[10] = v7;
      *&buf[14] = 1024;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "client:#I Cancelling hold for new clients for Trigger(cid=0x%x, trid=0x%x, sid=%u)", buf, 0x14u);
      v4 = v2[12];
    }

    if (v3 + 48 != v4)
    {
      do
      {
        v9 = v3;
        v10 = *(v3 + 48);
        v3 += 48;
        v11 = *(v9 + 56);
        *v9 = v10;
        *(v9 + 8) = v11;
        *(v9 + 16) = *(v9 + 64);
        sub_10000A910(v9 + 24, (v9 + 72));
      }

      while (v9 + 96 != v4);
      v4 = v2[12];
    }

    while (v4 != v3)
    {
      v12 = *(v4 - 24);
      if (v12)
      {
        *(v4 - 16) = v12;
        operator delete(v12);
      }

      v4 -= 48;
    }

    v2[12] = v3;
  }

LABEL_18:
  pthread_mutex_lock(&stru_1002D4AB0);
  v13 = off_1002D4AF0;
  if (!off_1002D4AF0)
  {
    sub_10005DFD0();
  }

  if (*(&off_1002D4AF0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1002D4AF0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4AB0);
  v14 = *(v1 + 1);
  v15 = v1[4];
  sub_1000169D0(v13);
}

void sub_100016AB4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = sub_10000C604(v2 + 56, *a1 + 2);
  v4 = v3;
  if ((v2 + 64) == v3)
  {
    v18 = *(v2 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(v1 + 2);
      v20 = *(v1 + 3);
      v21 = *(v1 + 4);
      *buf = 67109632;
      *&buf[4] = v19;
      LOWORD(v46) = 1024;
      *(&v46 + 2) = v20;
      HIWORD(v46) = 1024;
      LODWORD(v47[0].__locale_) = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "agg:#E [WW.] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Tried marking pending-clients list complete, but no longer exists!", buf, 0x14u);
    }

LABEL_29:
    operator delete();
  }

  sub_10001644C(v3[6], &v36);
  v5 = sub_10000DA48(v4[6]);
  if (v36.n128_u64[0] == v36.n128_u64[1])
  {
    v22 = *(v2 + 40);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (!v5)
    {
      if (v23)
      {
        v31 = *(v1 + 2);
        v32 = *(v1 + 3);
        v33 = *(v1 + 4);
        *buf = 67109632;
        *&buf[4] = v31;
        LOWORD(v46) = 1024;
        *(&v46 + 2) = v32;
        HIWORD(v46) = 1024;
        LODWORD(v47[0].__locale_) = v33;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "agg:#I [oo.] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Marking pending-clients list complete; all components checked in", buf, 0x14u);
      }

      goto LABEL_27;
    }

    if (v23)
    {
      v24 = *(v1 + 2);
      v25 = *(v1 + 3);
      v26 = *(v1 + 4);
      *buf = 67109632;
      *&buf[4] = v24;
      LOWORD(v46) = 1024;
      *(&v46 + 2) = v25;
      HIWORD(v46) = 1024;
      LODWORD(v47[0].__locale_) = v26;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "agg:#I [oox] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Marking pending-clients list complete; all components checked in", buf, 0x14u);
    }

LABEL_26:
    sub_100017264(v2, v1[1], *(v1 + 4));
LABEL_27:
    if (v36.n128_u64[0])
    {
      v36.n128_u64[1] = v36.n128_u64[0];
      operator delete(v36.n128_u64[0]);
    }

    goto LABEL_29;
  }

  sub_10000A448(buf);
  v7 = v36.n128_u64[1];
  for (i = v36.n128_u64[0]; i != v7; ++i)
  {
    v8 = *i;
    v9 = sub_100008EEC(buf, "0x", 2);
    *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 8;
    v10 = std::ostream::operator<<();
    sub_100008EEC(v10, ",", 1);
  }

  v11 = *(v2 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v14 = *(v1 + 2);
    v13 = *(v1 + 3);
    v15 = *(v1 + 4);
    std::stringbuf::str();
    if (v35 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *v37 = 67109890;
    v38 = v14;
    v39 = 1024;
    v40 = v13;
    v41 = 1024;
    v42 = v15;
    v43 = 2082;
    v44 = v16;
    v17 = "agg:#I [ooW] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Marking pending-clients list complete; missing components: %{public}s";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v28 = *(v1 + 2);
    v27 = *(v1 + 3);
    v29 = *(v1 + 4);
    std::stringbuf::str();
    if (v35 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    *v37 = 67109890;
    v38 = v28;
    v39 = 1024;
    v40 = v27;
    v41 = 1024;
    v42 = v29;
    v43 = 2082;
    v44 = v30;
    v17 = "agg:#I [ow.] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Marking pending-clients list complete; missing components: %{public}s";
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v17, v37, 0x1Eu);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_23:
  if (v48 < 0)
  {
    operator delete(v47[7].__locale_);
  }

  std::locale::~locale(v47);
  std::ostream::~ostream();
  std::ios::~ios();
  if (!v5)
  {
    goto LABEL_27;
  }

  goto LABEL_26;
}

void sub_100016F7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100039C48(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  operator delete();
}

BOOL sub_100016FD0(uint64_t *a1, int *a2)
{
  v4 = *(a2 + 1);
  wis::GetProtobufTag();
  *buf = *a2;
  LODWORD(v35) = 0;
  v5 = sub_10001C80C((a1 + 2), buf);
  v7 = v6;
  if (v5 == v6)
  {
    v8 = a1[14];
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v10 = *a2;
      v11 = a2[1];
      *buf = 67109632;
      *&buf[4] = v10;
      LOWORD(v35) = 1024;
      *(&v35 + 2) = v11;
      HIWORD(v35) = 1024;
      LODWORD(v36) = 0;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "cond:#D MetricProcessingMap for cid 0x%x, profid 0x%x, metric 0x%x: no rules", buf, 0x14u);
      return 0;
    }
  }

  else
  {
    *buf = a2;
    v35 = 0;
    v12 = a1[1];
    v36 = *a1;
    v37 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 0;
    v14 = 0;
    v38 = 0;
    do
    {
      v15 = v5[9];
      if (!v15)
      {
        sub_1000334A4();
      }

      v16 = (*(*v15 + 48))(v15, buf);
      v17 = v5[1];
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
          v18 = v5[2];
          v19 = *v18 == v5;
          v5 = v18;
        }

        while (!v19);
      }

      v13 += v16;
      ++v14;
      v5 = v18;
    }

    while (v18 != v7);
    v20 = a1[14];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *a2;
      v22 = a2[1];
      *v24 = 67110144;
      v25 = v21;
      v26 = 1024;
      v27 = v22;
      v28 = 1024;
      v29 = 0;
      v30 = 2048;
      v31 = v14;
      v32 = 2048;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "cond:#I MetricProcessingMap for cid 0x%x, profid 0x%x, metric 0x%x: evaluated %zd rules and %zd passed", v24, 0x28u);
    }

    if (v13)
    {
      sub_1001168AC(buf);
    }

    if (v37)
    {
      sub_100008350(v37);
    }

    v23 = v35;
    v35 = 0;
    if (v23)
    {
      sub_100084E80(&v35, v23);
    }

    return v13 != 0;
  }

  return result;
}

void sub_100017240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000E70F8(va);
  _Unwind_Resume(a1);
}

void sub_100017264(uint64_t a1, uint64_t a2, int a3)
{
  v9 = a2;
  v10 = a3;
  v4 = sub_10000C604(a1 + 56, &v9);
  if ((a1 + 64) != v4)
  {
    pthread_mutex_lock(&stru_1002D4C68);
    v5 = xmmword_1002D4CA8;
    if (!xmmword_1002D4CA8)
    {
      sub_1000A1C94();
    }

    if (*(&xmmword_1002D4CA8 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4C68);
    v6 = v4[7];
    v8[0] = v4[6];
    v8[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10001743C(v5, v8);
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = v9;
    *&buf[8] = 1024;
    *&buf[10] = HIDWORD(v9);
    *&buf[14] = 1024;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "agg:#E [EEE] Trigger(cid=0x%x, trid=0x%x, sid=%u) - Tried to flush trigger, but it doesnt exist!", buf, 0x14u);
  }
}

void sub_10001743C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v4, (a1 + 8));
  operator new();
}

uint64_t *sub_10001752C(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10001756C(a1, a2);
  v4 = a2[7];
  if (v4)
  {
    sub_100008350(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_10001756C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_1000175E0(v6, a2);
  return v3;
}

uint64_t *sub_1000175E0(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *sub_100017960(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(**v1 + 56))(*v1, v1 + 1);
  if (std::uncaught_exceptions())
  {
    std::terminate();
  }

  sub_10001E298(&v4);
  return sub_1000082FC(&v3);
}

uint64_t sub_1000179F4(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v11 = HIDWORD(a3);
  sub_100017DD0(a1, a2, HIDWORD(a3), a6);
  v12 = *a6;
  v13 = a6[1];
  if (*a6 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v15 = *a6;
    do
    {
      v14 = v14 + *(*(v15 + 8) + 8) - **(v15 + 8);
      v15 += 24;
    }

    while (v15 != v13);
  }

  v16 = a1[4];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    *&buf[4] = a3;
    *&buf[8] = 1024;
    *&buf[10] = v11;
    *&buf[14] = 1024;
    LODWORD(v39) = a4;
    WORD2(v39) = 2048;
    *(&v39 + 6) = 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3);
    HIWORD(v39) = 2048;
    v40 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "submit.proc:#I Trigger(cid=0x%x, trid=0x%x, sid=%u): Processing %zd metrics with %zd bytes", buf, 0x28u);
  }

  v17 = a1[8];
  if (v17)
  {
    sub_100018110(v17, a3, a4, a5, a6);
  }

  *buf = 0u;
  v39 = 0u;
  LODWORD(v40) = 1065353216;
  v19 = *a6;
  v18 = a6[1];
  if (*a6 != v18)
  {
    do
    {
      v20 = sub_100018514(a1[7], v19);
      v36 = v20;
      v37 = BYTE4(v20);
      if ((v20 & 0x100000000) != 0)
      {
        *v41 = &v36;
        v21 = sub_100018678(buf, &v36);
        v22 = v21;
        v23 = v21[4];
        if (v23 >= v21[5])
        {
          v24 = sub_10000D048(v21 + 3, v19);
        }

        else
        {
          *v23 = *v19;
          *(v23 + 8) = *(v19 + 8);
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          v24 = v23 + 24;
        }

        v22[4] = v24;
      }

      v19 += 24;
    }

    while (v19 != v18);
    for (i = v39; i; i = *i)
    {
      v26 = *(i + 4);
      if (sub_100018D30(a1, v11, *(i + 4), (i + 3)))
      {
        v27 = sub_100019024(a1, v11, v26, (i + 3));
        sub_100019080(a1, i + 3);
        if (v27)
        {
          (*(*a2 + 24))(a2, v11, a5, v26, i + 3);
        }

        else
        {
          v32 = a1[4];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = 0xAAAAAAAAAAAAAAABLL * ((i[4] - i[3]) >> 3);
            *v41 = 67110144;
            *&v41[4] = a3;
            v42 = 1024;
            v43 = v11;
            v44 = 1024;
            v45 = a4;
            v46 = 1024;
            v47 = v26;
            v48 = 2048;
            v49 = v33;
            v30 = v32;
            v31 = "submit.proc:#I Trigger(cid=0x%x, trid=0x%x, sid=%u): [file %d] Skipping save of %zd metrics due to should-save rule";
            goto LABEL_25;
          }
        }
      }

      else
      {
        v28 = a1[4];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = 0xAAAAAAAAAAAAAAABLL * ((i[4] - i[3]) >> 3);
          *v41 = 67110144;
          *&v41[4] = a3;
          v42 = 1024;
          v43 = v11;
          v44 = 1024;
          v45 = a4;
          v46 = 1024;
          v47 = v26;
          v48 = 2048;
          v49 = v29;
          v30 = v28;
          v31 = "submit.proc:#I Trigger(cid=0x%x, trid=0x%x, sid=%u): [file %d] Skipping processing of %zd metrics due to should-process rule";
LABEL_25:
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, v31, v41, 0x24u);
        }
      }
    }
  }

  return sub_10001E25C(buf);
}

void sub_100017DD0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    sub_1000C56BC(v5, a3, a4, &v12);
    v8 = v12;
    v9 = v13;
    if (v12 != v13)
    {
      do
      {
        v10 = *v8;
        v11 = *(a1 + 32);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v15 = a3;
          v16 = 1024;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "submit.proc:#I Trigger 0x%x conditions evaluated, generated trigger 0x%x", buf, 0xEu);
        }

        (*(*a2 + 16))(a2, v10);
        ++v8;
      }

      while (v8 != v9);
      v8 = v12;
    }

    if (v8)
    {
      v13 = v8;
      operator delete(v8);
    }
  }

  else if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
  {
    sub_100209F64();
  }
}

void sub_100017F68(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return;
  }

  if ((*v2 & 1) == 0 && *(v2 + 32) == *(v2 + 40))
  {
    v17 = *(a1 + 40);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v18 = *(v2 + 4);
    v19 = *(v2 + 8);
    v20 = *(v2 + 12);
    v21 = 67109632;
    v22 = v18;
    v23 = 1024;
    v24 = v19;
    v25 = 1024;
    v26 = v20;
    v14 = "submit:#I Trigger(cid=0x%x, trid=0x%x, sid=%u): Requested not to publish.";
    v15 = v17;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_12;
  }

  sub_100011524(a1);
  v5 = *(a1 + 120);
  if (!v5)
  {
    v10 = *(a1 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v11 = *(*a2 + 4);
    v12 = *(*a2 + 8);
    v13 = *(*a2 + 12);
    v21 = 67109632;
    v22 = v11;
    v23 = 1024;
    v24 = v12;
    v25 = 1024;
    v26 = v13;
    v14 = "submit:#E Trigger(cid=0x%x, trid=0x%x, sid=%u): Failed to write because no processor is ready.";
    v15 = v10;
    v16 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v15, v16, v14, &v21, 0x14u);
    return;
  }

  v6 = *(*a2 + 4);
  v7 = *(*a2 + 12);
  v8 = *(*a2 + 16);
  v9 = (*a2 + 32);

  sub_1000179F4(v5, a1, v6, v7, v8, v9);
}

void sub_100018110(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  v9 = a2;
  v10 = a3;
  v7[0] = a1;
  v7[1] = a5;
  v7[2] = &v9;
  v7[3] = &v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000181A8;
  block[3] = &unk_1002ACCD8;
  block[4] = a1;
  block[5] = v7;
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  if (*(v6 + 8))
  {
    dispatch_async_and_wait(v5, block);
  }

  else
  {
    dispatch_sync(v5, block);
  }
}

void sub_1000181A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *v2;
  if (*(*v2 + 96))
  {
    v4 = v3[6];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v18 = v5;
        v6 = v3[5];
        if (v6)
        {
          v7 = *(v2 + 8);
          v8 = *v7;
          v19 = v7[1];
          if (*v7 != v19)
          {
            do
            {
              object[2] = 0;
              v21 = 0;
              object[1] = 0;
              v9 = *(v8 + 8);
              wis::GetProtobufTag();
              v10 = xpc_null_create();
              for (i = v3[11]; i; i = *i)
              {
                v12 = sub_10006620C(i + 3, &v21);
                if (v12)
                {
                  v13 = v3[4];
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
                  {
                    v14 = v12 + 3;
                    if (*(v12 + 47) < 0)
                    {
                      v14 = *v14;
                    }

                    v15 = i[2];
                    *buf = 134218498;
                    *&buf[4] = v15;
                    v23 = 1024;
                    v24 = v21;
                    v25 = 2080;
                    v26 = v14;
                    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#I [Observer %p] Notifying for metric 0x%04x (%s).", buf, 0x1Cu);
                  }

                  if (xpc_get_type(v10) != &_xpc_type_dictionary)
                  {
                    v1 = v1 & 0xFFFFFFFF00000000 | *(*(v2 + 16) + 8);
                    sub_1000646E0(v3, (v12 + 3), **(v2 + 24), v8, buf);
                    v16 = *buf;
                    *buf = xpc_null_create();
                    xpc_release(v10);
                    xpc_release(*buf);
                    v10 = v16;
                  }

                  v17 = i[2];
                  object[0] = v10;
                  if (v10)
                  {
                    xpc_retain(v10);
                  }

                  else
                  {
                    object[0] = xpc_null_create();
                  }

                  (*(*v6 + 16))(v6, v17, object);
                  xpc_release(object[0]);
                  object[0] = 0;
                }
              }

              xpc_release(v10);
              v8 += 24;
            }

            while (v8 != v19);
          }
        }

        sub_100008350(v18);
      }
    }
  }
}

void sub_10001848C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(v15);
  sub_100008350(v17);
  _Unwind_Resume(v16);
}

unint64_t sub_100018514(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v4 = a2[1];
  wis::GetProtobufTag();
  v7 = *a2;
  v8 = 0;
  v5 = sub_10001858C(a1 + 40, &v7);
  if ((a1 + 48) == v5)
  {
    return 0;
  }

  else
  {
    return *(v5 + 10) | &_mh_execute_header;
  }
}

uint64_t *sub_10001858C(uint64_t a1, unsigned int *a2)
{
  v3 = (a1 + 8);
  result = sub_10001860C(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == result)
  {
    return v3;
  }

  v5 = *(result + 7);
  if (*a2 < v5)
  {
    return v3;
  }

  if (v5 >= *a2)
  {
    v6 = a2[1];
    v7 = *(result + 8);
    if (v6 < v7 || v7 >= v6 && a2[2] < *(result + 9))
    {
      return v3;
    }
  }

  return result;
}

uint64_t *sub_10001860C(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    while (1)
    {
      v8 = *(a3 + 7);
      if (v8 >= v5)
      {
        if (v5 < v8)
        {
          goto LABEL_6;
        }

        v9 = *(a3 + 8);
        if (v9 >= v6)
        {
          break;
        }
      }

      ++a3;
LABEL_7:
      a3 = *a3;
      if (!a3)
      {
        return result;
      }
    }

    if (v6 >= v9)
    {
      v10 = *(a3 + 9);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        result = a3;
      }

      a3 += v12;
      goto LABEL_7;
    }

LABEL_6:
    result = a3;
    goto LABEL_7;
  }

  return result;
}

uint64_t *sub_100018678(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

void sub_1000188D0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100033BCC();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_100018A34(uint64_t a1, size_t __n)
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

      sub_1000188D0(a1, prime);
    }
  }
}

uint64_t sub_100018B24(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v18 = a2;
  v8 = sub_100018D8C(a1 + 24, &v18);
  if (v8 == v7)
  {
    v9 = *(a1 + 64);
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v20 = v18;
      *&v20[4] = 1024;
      *&v20[6] = a3;
      v11 = "cond:#I TriggerProcessingMap has no process-if rules for trigger 0x%x and file %d";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v11, buf, 0xEu);
    }
  }

  else
  {
    v12 = sub_1000509E0(a1, v8, v7, a3, a4);
    v14 = v13;
    if (v13)
    {
      v15 = v12;
      v9 = *(a1 + 64);
      v16 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v15)
      {
        if (!v16)
        {
          return 1;
        }

        *buf = 67109376;
        *v20 = v18;
        *&v20[4] = 1024;
        *&v20[6] = a3;
        v11 = "cond:#I TriggerProcessingMap process-if passed for trigger 0x%x and file %d";
        v10 = 1;
        goto LABEL_10;
      }

      if (v16)
      {
        *buf = 134218496;
        *v20 = v14;
        *&v20[8] = 1024;
        v21 = v18;
        v22 = 1024;
        v23 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "cond:#I TriggerProcessingMap evaluated %zd process-if rules; rules did NOT pass for trigger 0x%x and file %d", buf, 0x18u);
      }

      return 0;
    }

    else
    {
      v9 = *(a1 + 64);
      v10 = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *v20 = v18;
        *&v20[4] = 1024;
        *&v20[6] = a3;
        v11 = "cond:#I TriggerProcessingMap has no process-if rules that apply to trigger 0x%x and file %d";
        goto LABEL_10;
      }
    }
  }

  return v10;
}

uint64_t sub_100018D30(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);

    return sub_100018B24(v5, a2, a3, a4);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
    {
      sub_100209F98();
    }

    return 1;
  }
}

uint64_t *sub_100018D8C(uint64_t a1, unsigned int *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v3 + 8);
    if (v4 >= v5)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (v5 < v4)
  {
    ++v3;
    goto LABEL_7;
  }

  v7 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v8 = *(v7 + 8);
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        result = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
  }

  for (i = v3[1]; i; i = *(i + 8 * (v4 >= *(i + 32))))
  {
    *(i + 32);
  }

  return result;
}

uint64_t sub_100018E1C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v18 = a2;
  v8 = sub_100018D8C(a1, &v18);
  if (v8 == v7)
  {
    v9 = *(a1 + 64);
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v20 = v18;
      *&v20[4] = 1024;
      *&v20[6] = a3;
      v11 = "cond:#I TriggerProcessingMap has no save-if rules for trigger 0x%x and file %d";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v11, buf, 0xEu);
    }
  }

  else
  {
    v12 = sub_1000509E0(a1, v8, v7, a3, a4);
    v14 = v13;
    if (v13)
    {
      v15 = v12;
      v9 = *(a1 + 64);
      v16 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v15)
      {
        if (!v16)
        {
          return 1;
        }

        *buf = 67109376;
        *v20 = v18;
        *&v20[4] = 1024;
        *&v20[6] = a3;
        v11 = "cond:#I TriggerProcessingMap save-if passed for trigger 0x%x and file %d";
        v10 = 1;
        goto LABEL_10;
      }

      if (v16)
      {
        *buf = 134218496;
        *v20 = v14;
        *&v20[8] = 1024;
        v21 = v18;
        v22 = 1024;
        v23 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "cond:#I TriggerProcessingMap evaluated %zd save-if rules; rules did NOT pass for trigger 0x%x and file %d", buf, 0x18u);
      }

      return 0;
    }

    else
    {
      v9 = *(a1 + 64);
      v10 = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *v20 = v18;
        *&v20[4] = 1024;
        *&v20[6] = a3;
        v11 = "cond:#I TriggerProcessingMap has no save-if rules that apply to trigger 0x%x and file %d";
        goto LABEL_10;
      }
    }
  }

  return v10;
}

uint64_t sub_100019024(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);

    return sub_100018E1C(v5, a2, a3, a4);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
    {
      sub_100209FCC();
    }

    return 1;
  }
}

void sub_100019080(uint64_t a1, int **a2)
{
  if (*(a1 + 56))
  {
    v4 = *a2;
    v5 = a2[1];
    if (*a2 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v6 += sub_100016FD0(*(a1 + 56), v4);
        v4 += 6;
      }

      while (v4 != v5);
    }

    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      v9 = 134218240;
      v10 = v6;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "submit.proc:#I Metric processing rules applied rules to %zu of %zu metrics", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
  {
    sub_10020A000();
  }
}

void sub_1000191B0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1000191C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100019228()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 712))(result);
  }

  return result;
}

uint64_t sub_1000192A4()
{
  v1 = *v0;
  v2 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = v1;

  sub_100176B80(0, 0, v5, &unk_10024B108, v7);
}

uint64_t sub_1000193DC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_100019474(v4, v5, v6, v2, v3);
}

uint64_t sub_100019474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100019534, 0, 0);
}

uint64_t sub_100019534()
{
  v1 = v0[3];
  sub_100003E50(&off_1002B70B0, v0[6]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updating maps suggestions on update timer fire.", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  (*(v6 + 8))(v5, v7);
  v13 = (*v8 + 720);
  v14 = (*v13 + **v13);
  v9 = (*v13)[1];
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1001A9DF0;
  v11 = v0[2];

  return v14(1);
}

uint64_t sub_100019720(char a1)
{
  *(v2 + 2032) = v1;
  *(v2 + 3219) = a1;
  *(v2 + 2040) = *v1;
  v3 = *(*(sub_100164A3C(&qword_1002D71C0, &qword_10024B118) - 8) + 64) + 15;
  *(v2 + 2048) = swift_task_alloc();
  v4 = type metadata accessor for DateInterval();
  *(v2 + 2056) = v4;
  v5 = *(v4 - 8);
  *(v2 + 2064) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 2072) = swift_task_alloc();
  *(v2 + 2080) = swift_task_alloc();
  *(v2 + 2088) = swift_task_alloc();
  v7 = *(type metadata accessor for InternalUpcomingFlightPrediction(0) - 8);
  *(v2 + 2096) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 2104) = swift_task_alloc();
  v9 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  *(v2 + 2112) = v9;
  v10 = *(v9 - 8);
  *(v2 + 2120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 2128) = swift_task_alloc();
  *(v2 + 2136) = swift_task_alloc();
  v12 = *(*(type metadata accessor for PrivateServicePrediction.ConfidenceScore() - 8) + 64) + 15;
  *(v2 + 2144) = swift_task_alloc();
  *(v2 + 2152) = swift_task_alloc();
  v13 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  *(v2 + 2160) = v13;
  v14 = *(v13 - 8);
  *(v2 + 2168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 2176) = swift_task_alloc();
  *(v2 + 2184) = swift_task_alloc();
  v16 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  *(v2 + 2192) = v16;
  v17 = *(v16 - 8);
  *(v2 + 2200) = v17;
  v18 = *(v17 + 64) + 15;
  *(v2 + 2208) = swift_task_alloc();
  *(v2 + 2216) = swift_task_alloc();
  *(v2 + 2224) = swift_task_alloc();
  v19 = *(*(type metadata accessor for PrivateServicePrediction() - 8) + 64) + 15;
  *(v2 + 2232) = swift_task_alloc();
  *(v2 + 2240) = swift_task_alloc();
  v20 = type metadata accessor for InternalServicePrediction();
  *(v2 + 2248) = v20;
  v21 = *(v20 - 8);
  *(v2 + 2256) = v21;
  v22 = *(v21 + 64) + 15;
  *(v2 + 2264) = swift_task_alloc();
  *(v2 + 2272) = swift_task_alloc();
  *(v2 + 2280) = swift_task_alloc();
  *(v2 + 2288) = swift_task_alloc();
  *(v2 + 2296) = swift_task_alloc();
  *(v2 + 2304) = swift_task_alloc();
  *(v2 + 2312) = swift_task_alloc();
  v23 = type metadata accessor for Date();
  *(v2 + 2320) = v23;
  v24 = *(v23 - 8);
  *(v2 + 2328) = v24;
  v25 = *(v24 + 64) + 15;
  *(v2 + 2336) = swift_task_alloc();
  *(v2 + 2344) = swift_task_alloc();
  *(v2 + 2352) = swift_task_alloc();
  *(v2 + 2360) = swift_task_alloc();
  v26 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
  *(v2 + 2368) = v26;
  v27 = *(v26 - 8);
  *(v2 + 2376) = v27;
  v28 = *(v27 + 64) + 15;
  *(v2 + 2384) = swift_task_alloc();
  *(v2 + 2392) = swift_task_alloc();
  *(v2 + 2400) = swift_task_alloc();
  *(v2 + 2408) = swift_task_alloc();
  *(v2 + 2416) = swift_task_alloc();
  *(v2 + 2424) = swift_task_alloc();
  *(v2 + 2432) = swift_task_alloc();
  *(v2 + 2440) = swift_task_alloc();
  *(v2 + 2448) = swift_task_alloc();
  *(v2 + 2456) = swift_task_alloc();
  *(v2 + 2464) = swift_task_alloc();
  *(v2 + 2472) = swift_task_alloc();
  *(v2 + 2480) = swift_task_alloc();
  *(v2 + 2488) = swift_task_alloc();
  *(v2 + 2496) = swift_task_alloc();
  v29 = *(*(sub_100164A3C(&qword_1002D7178, &unk_10024B0C0) - 8) + 64) + 15;
  *(v2 + 2504) = swift_task_alloc();
  v30 = type metadata accessor for Logger();
  *(v2 + 2512) = v30;
  v31 = *(v30 - 8);
  *(v2 + 2520) = v31;
  v32 = *(v31 + 64) + 15;
  *(v2 + 2528) = swift_task_alloc();
  *(v2 + 2536) = swift_task_alloc();
  *(v2 + 2544) = swift_task_alloc();
  *(v2 + 2552) = swift_task_alloc();
  *(v2 + 2560) = swift_task_alloc();
  *(v2 + 2568) = swift_task_alloc();
  *(v2 + 2576) = swift_task_alloc();
  *(v2 + 2584) = swift_task_alloc();
  *(v2 + 2592) = swift_task_alloc();
  *(v2 + 2600) = swift_task_alloc();
  *(v2 + 2608) = swift_task_alloc();
  *(v2 + 2616) = swift_task_alloc();
  *(v2 + 2624) = swift_task_alloc();
  *(v2 + 2632) = swift_task_alloc();
  *(v2 + 2640) = swift_task_alloc();

  return _swift_task_switch(sub_100019DEC, v1, 0);
}

uint64_t sub_100019DEC()
{
  (*(**(v0 + 2032) + 256))();
  v1 = *(v0 + 2040);
  if (*(v0 + 1536))
  {
    v2 = *(v0 + 2640);
    sub_10001A700((v0 + 1512), v0 + 1472);
    sub_100003E50(&off_1002B70B0, v2);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "checking maps suggestions", v5, 2u);
    }

    v6 = *(v0 + 2640);
    v7 = *(v0 + 2520);
    v8 = *(v0 + 2512);
    v9 = *(v0 + 2504);
    v10 = *(v0 + 2040);
    v11 = *(v0 + 2032);

    v12 = *(v7 + 8);
    *(v0 + 2648) = v12;
    v12(v6, v8);
    v13 = *(v11 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_handler);
    v14 = *(v11 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_queue);
    v15 = sub_100164B34((v11 + 19), v0 + 1552);
    v16 = *v11;
    v17 = *(*v11 + 264);
    *(v0 + 2656) = v17;
    *(v0 + 2664) = (v16 + 264) & 0xFFFFFFFFFFFFLL | 0x68E1000000000000;
    v18 = v17(v15);
    (*(*v11 + 360))(v18);
    v19 = sub_1001B840C(&qword_1002D7188, 255, type metadata accessor for MapsSuggestionController);
    v20 = swift_task_alloc();
    *(v0 + 2672) = v20;
    v20[2] = v0 + 1472;
    v20[3] = v13;
    v20[4] = v0 + 1264;
    v20[5] = v9;
    v20[6] = v11;
    v20[7] = v14;
    v20[8] = v10;
    v21 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v22 = swift_task_alloc();
    *(v0 + 2680) = v22;
    v23 = sub_100164A3C(&qword_1002D71C8, &unk_10024B120);
    *v22 = v0;
    v22[1] = sub_1001A9F0C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2016, v11, v19, 0xD00000000000001FLL, 0x800000010025D040, sub_1001B87E4, v20, v23);
  }

  else
  {
    v24 = *(v0 + 2528);
    sub_1000157F0(v0 + 1512, &qword_1002D7168, &qword_10024B0B8);
    sub_100003E50(&off_1002B70B0, v24);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 2528);
    v29 = *(v0 + 2520);
    v30 = *(v0 + 2512);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No engine", v31, 2u);
    }

    (*(v29 + 8))(v28, v30);
    v32 = *(v0 + 2640);
    v33 = *(v0 + 2632);
    v34 = *(v0 + 2624);
    v35 = *(v0 + 2616);
    v36 = *(v0 + 2608);
    v37 = *(v0 + 2600);
    v38 = *(v0 + 2592);
    v39 = *(v0 + 2584);
    v40 = *(v0 + 2576);
    v41 = *(v0 + 2568);
    v44 = *(v0 + 2560);
    v45 = *(v0 + 2552);
    v46 = *(v0 + 2544);
    v47 = *(v0 + 2536);
    v48 = *(v0 + 2528);
    v49 = *(v0 + 2504);
    v50 = *(v0 + 2496);
    v51 = *(v0 + 2488);
    v52 = *(v0 + 2480);
    v53 = *(v0 + 2472);
    v54 = *(v0 + 2464);
    v55 = *(v0 + 2456);
    v56 = *(v0 + 2448);
    v57 = *(v0 + 2440);
    v58 = *(v0 + 2432);
    v59 = *(v0 + 2424);
    v60 = *(v0 + 2416);
    v61 = *(v0 + 2408);
    v62 = *(v0 + 2400);
    v63 = *(v0 + 2392);
    v64 = *(v0 + 2384);
    v65 = *(v0 + 2360);
    v66 = *(v0 + 2352);
    v67 = *(v0 + 2344);
    v68 = *(v0 + 2336);
    v69 = *(v0 + 2312);
    v70 = *(v0 + 2304);
    v71 = *(v0 + 2296);
    v72 = *(v0 + 2288);
    v73 = *(v0 + 2280);
    v74 = *(v0 + 2272);
    v75 = *(v0 + 2264);
    v76 = *(v0 + 2240);
    v77 = *(v0 + 2232);
    v78 = *(v0 + 2224);
    v79 = *(v0 + 2216);
    v80 = *(v0 + 2208);
    v81 = *(v0 + 2184);
    v82 = *(v0 + 2176);
    v83 = *(v0 + 2152);
    v84 = *(v0 + 2144);
    v85 = *(v0 + 2136);
    v86 = *(v0 + 2128);
    v87 = *(v0 + 2104);
    v88 = *(v0 + 2088);
    v89 = *(v0 + 2080);
    v90 = *(v0 + 2072);
    v91 = *(v0 + 2048);

    v42 = *(v0 + 8);

    return v42(0);
  }
}

double sub_10001A52C@<D0>(uint64_t a1@<X8>)
{
  sub_10001A718(v1 + 112, &v11, &qword_1002D7168, &qword_10024B0B8);
  if (v12)
  {
    sub_10001A700(&v11, v13);
    sub_10001A700(v13, a1);
    return result;
  }

  sub_1000157F0(&v11, &qword_1002D7168, &qword_10024B0B8);
  if (MapsSuggestionsEngineBuilder)
  {
    v4 = [objc_opt_self() forDevice];
    if ([v4 respondsToSelector:Selector.init(_:)()] && (v5 = objc_msgSend(objc_opt_self(), "engineWithAlreadyThereFilter:", v4)) != 0)
    {
      v6 = v5;
      v7 = [v5 build];
      if (v7)
      {
        v8 = v7;
        *(a1 + 24) = sub_100164AEC(0, &qword_1002D7170, MapsSuggestionsEngine_ptr);
        *(a1 + 32) = &off_1002B7010;

        *a1 = v8;
        return result;
      }
    }

    else
    {
      v9 = [v4 build];
      if (v9)
      {
        v10 = v9;
        *(a1 + 24) = sub_100164AEC(0, &qword_1002D7170, MapsSuggestionsEngine_ptr);
        *(a1 + 32) = &off_1002B7010;

        *a1 = v10;
        return result;
      }
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10001A700(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001A718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100164A3C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_10001A780(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000334A4();
  }

  (*(*v3 + 48))(v3, &v4);
}

uint64_t *sub_10001A804(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = objc_autoreleasePoolPush();
  v4 = *(v2 + 80);
  if (v4)
  {
    v5 = *(v2 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [*(v1 + 8) coordinate];
      v13 = v12;
      [*(v1 + 8) coordinate];
      buf[0] = 134545921;
      *&buf[1] = v13;
      LOWORD(buf[3]) = 2053;
      *(&buf[3] + 2) = v14;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "loc:#D Location update call back with latitude: %{sensitive}f, longitude: %{sensitive}f", buf, 0x16u);
      v4 = *(v2 + 80);
    }

    sub_10001AA2C(v4, *(v1 + 8));
    *(v2 + 40) = 1;
    pthread_mutex_lock(&stru_1002D48E8);
    v6 = xmmword_1002D4928;
    if (!xmmword_1002D4928)
    {
      sub_1000308F8();
    }

    v7 = *(&xmmword_1002D4928 + 1);
    if (*(&xmmword_1002D4928 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4928 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D48E8);
    if (v6)
    {
      [*(v1 + 8) coordinate];
      v9 = v8;
      [*(v1 + 8) coordinate];
      sub_10001AA98(v6, v9, v10);
    }

    if (v7)
    {
      sub_100008350(v7);
    }
  }

  objc_autoreleasePoolPop(v3);
  sub_10001AC00(&v16);
  return sub_1000082FC(&v15);
}

void sub_10001A9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  pthread_mutex_unlock(&stru_1002D48E8);
  sub_10001AC00(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

void sub_10001AA2C(uint64_t a1, void *a2)
{
  v4 = a2;
  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  v5 = v7;
  v8 = v4;
  if (v7)
  {
    *v6 = 0;

    v4 = v8;
  }

  if (v4)
  {
    objc_storeStrong(v6, a2);
    v4 = v8;
  }
}

void sub_10001AA98(void *a1, double a2, double a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001AC50;
  v3[3] = &unk_1002AB5C8;
  v3[4] = a1;
  *&v3[5] = a2;
  *&v3[6] = a3;
  sub_10001AB08(a1, v3);
}

void sub_10001AB08(void *a1, void *a2)
{
  v3 = a2;
  sub_1000081C8(&v10, a1);
  v4 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10001AD58;
  block[3] = &unk_1002AB650;
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
    sub_100008350(v9);
  }

  if (v11)
  {
    sub_100008350(v11);
  }
}

uint64_t sub_10001ABE4(uint64_t result, uint64_t a2)
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

uint64_t *sub_10001AC00(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

void sub_10001AC50(double *a1)
{
  v2 = *(a1 + 4);
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 5);
    v5 = *(a1 + 6);
    *buf = 134545921;
    v10 = v4;
    v11 = 2053;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#I Handling update location - latitude:%{sensitive}lf, longitude: %{sensitive}lf", buf, 0x16u);
  }

  v6 = a1[5];
  *(v2 + 96) = v6;
  v7 = a1[6];
  *(v2 + 104) = v7;
  if ((*(v2 + 112) & 1) == 0)
  {
    v8[3] = 0;
    sub_100031698(v2, 2, v8, v6, v7);
    sub_10002B8D0(v8);
    *(v2 + 112) = 1;
  }
}

void sub_10001AD68(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_10001AD78(void *a1, id *a2)
{
  v3 = *a2;
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      if (a1[2])
      {
        v7 = v3;
        sub_1000081C8(&v8, v5);
        operator new();
      }

      sub_100008350(v6);
    }
  }
}

void sub_10001AE98()
{
  exception = __cxa_allocate_exception(8uLL);
}

void **sub_10001AEE4(void **a1, unsigned int *a2)
{
  v3 = sub_10001D1C8(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
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
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

uint64_t *sub_10001AF50(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
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

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

xpc_object_t sub_10001B0F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_retain(*(a1 + 32));
  }

  else
  {
    v1 = xpc_null_create();
  }

  v2 = xpc_null_create();
  xpc_release(v2);
  return v1;
}

uint64_t sub_10001B15C(uint64_t a1, char a2, uint64_t a3)
{
  v8 = a2;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v7;
  v7 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10001B338;
  v9[3] = &unk_1002ABB90;
  v9[4] = a1;
  v9[5] = v6;
  v10 = v9;
  v4 = a1 + 16;
  v3 = *(a1 + 16);
  if (*(v4 + 8))
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_100036A68;
    v14 = &unk_1002ABBD0;
    v15 = &v17;
    v16 = &v10;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10001B3C4;
    v14 = &unk_1002ABBB0;
    v15 = &v17;
    v16 = &v10;
    dispatch_sync(v3, &block);
  }

  return v17 & 1;
}

uint64_t sub_10001B298(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 24);
  if (v4 > 3)
  {
    return 1;
  }

  if (qword_100240B20[v4] <= a3)
  {
    return 1;
  }

  v6 = a3 + a2;
  if (!sub_10001B15C(*(a1 + 32), v4, a3 + a2))
  {
    return 3;
  }

  v7 = *(a1 + 24);
  if (v7 > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_100240B20[v7];
  }

  return 2 * (v6 >= v8);
}

BOOL sub_10001B338(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10001D070(*v1, **(v1 + 8));
  v5 = v4;
  v6 = **(v1 + 16);
  v7 = &v3[v6];
  if (&v3[v6] < v4)
  {
    sub_10001B4DC((v2 + 48), *(v1 + 8))[3] = v6;
  }

  return v7 < v5;
}

uint64_t sub_10001B3C4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10001B400(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10001B43C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result == -1)
  {
    *(a1 + 40) = 0;
    sub_1000A91A4(0, __p);
    *(a1 + 40) += sub_10003AC30(__p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000A91A4(1, __p);
    result = *(a1 + 40) + sub_10003AC30(__p);
    *(a1 + 40) = result;
    if (v4 < 0)
    {
      operator delete(__p[0]);
      return *(a1 + 40);
    }
  }

  return result;
}

uint64_t **sub_10001B4DC(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10001B718(uint64_t a1, int a2, unint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v8 = *(a1 + 24);
  if (v8 >= 2)
  {
    v5 = a3 / v8 * v8;
  }

  awd::metrics::MetricLog::MetricLog(v33);
  v34 = a2;
  v39 |= 0x60u;
  v35 = v5;
  v9 = *a4;
  v10 = a4[1];
  if (*a4 == v10)
  {
    LODWORD(v11) = 0;
    v31 = 0;
    v32 = 0;
    v30 = &v31;
  }

  else
  {
    v11 = 0;
    v12 = *a4;
    do
    {
      v11 = v11 + *(*(v12 + 8) + 8) - **(v12 + 8);
      v12 += 24;
    }

    while (v12 != v10);
    v31 = 0;
    v32 = 0;
    v30 = &v31;
    v27 = &v30;
    v28 = &v31;
    do
    {
      LODWORD(__p) = *(v9 + 4);
      sub_10001AEE4(&v27, &__p);
      v9 += 24;
    }

    while (v9 != v10);
    v13 = v30;
    if (&v31 != v30)
    {
      do
      {
        v14 = *(v13 + 7);
        v15 = v37;
        if (v37 == v38)
        {
          sub_10001C3A0(&v36, v37 + 1);
          v15 = v37;
        }

        v37 = v15 + 1;
        *(v36 + 4 * v15) = v14;
        v16 = v13[1];
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
            v17 = v13[2];
            v18 = *v17 == v13;
            v13 = v17;
          }

          while (!v18);
        }

        v13 = v17;
      }

      while (v17 != &v31);
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (wireless_diagnostics::google::protobuf::MessageLite::SerializeToString())
  {
    v20 = v29 >= 0 ? HIBYTE(v29) : v28;
    wis::createTagForProtobuf(&__p, 0xF, v20 + v11, v19);
    sub_10001C458(a1, __p, v26 - __p);
    v21 = v29 >= 0 ? &v27 : v27;
    v22 = v29 >= 0 ? HIBYTE(v29) : v28;
    sub_10001C458(a1, v21, v22);
    v24 = *a4;
    v23 = a4[1];
    while (v24 != v23)
    {
      sub_10001C458(a1, **(v24 + 8), *(*(v24 + 8) + 8) - **(v24 + 8));
      v24 += 24;
    }

    sub_10001C48C(a1);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v27);
  }

  sub_10001C4B0(&v30, v31);
  awd::metrics::MetricLog::~MetricLog(v33);
}

void sub_10001B968(uint64_t a1)
{
  if (sub_10001C2C0((a1 + 32), 0, 0xBuLL) == 11 || *(a1 + 40) == *(a1 + 48))
  {
    return;
  }

  v2 = awd::metrics::MetricFile::MetricFile(v49);
  v3 = *(a1 + 32);
  if ((v3 & 1) == 0)
  {
    *(a1 + 32) = v3 | 1;
    pthread_mutex_lock(&stru_1002D4A58);
    v4 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    v5 = *(&xmmword_1002D4A98 + 1);
    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    v2 = sub_1000DFC1C(v4);
    v61 |= 0x40u;
    v53 = v2;
    if (v5)
    {
      sub_100008350(v5);
    }
  }

  v6 = *(a1 + 32);
  if ((v6 & 2) == 0)
  {
    *(a1 + 32) = v6 | 2;
    pthread_mutex_lock(&stru_1002D4A58);
    v7 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    v8 = *(&xmmword_1002D4A98 + 1);
    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    v2 = sub_1000DFD40(v7);
    v61 |= 0x80u;
    v60 = v2;
    if (v8)
    {
      sub_100008350(v8);
    }
  }

  v9 = *(a1 + 32);
  if ((v9 & 4) == 0)
  {
    *(a1 + 32) = v9 | 4;
    WISTimestamp = wis::getWISTimestamp(v2);
    v61 |= 1u;
    v50 = WISTimestamp;
    v9 = *(a1 + 32);
  }

  if ((v9 & 0x400) == 0)
  {
    *(a1 + 32) = v9 | 0x400;
    v11 = sub_1000850A4();
    v61 |= 0x2000u;
    v59 = v11;
    v9 = *(a1 + 32);
  }

  if ((v9 & 0x10) == 0)
  {
    v12 = *(a1 + 20);
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_43;
        }

        sub_100011294(&__p, 3);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v15 = *(a1 + 32);
          if ((v15 & 0x10) == 0)
          {
            *(a1 + 32) = v15 | 0x10;
          }

          sub_100059E00(v49, &__p);
          v61 |= 0x20u;
          v52 = 0;
LABEL_40:
          v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }
      }

      else
      {
        sub_100011294(&__p, 2);
        v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v16 = __p.__r_.__value_.__l.__size_;
        }

        if (v16)
        {
          v17 = *(a1 + 32);
          if ((v17 & 0x10) == 0)
          {
            *(a1 + 32) = v17 | 0x10;
          }

          sub_100059D84(v49, &__p);
          v61 |= 0x20u;
          v52 = 1;
          goto LABEL_40;
        }
      }

      if ((v14 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v12 == 2)
    {
      sub_100011294(&__p, 3);
      sub_100011294(&buf, 2);
      v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v43 = __p.__r_.__value_.__l.__size_;
      }

      if (v43)
      {
        goto LABEL_139;
      }

      v44 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v44 = buf.__r_.__value_.__l.__size_;
      }

      if (v44)
      {
LABEL_139:
        v45 = *(a1 + 32);
        if ((v45 & 0x10) == 0)
        {
          *(a1 + 32) = v45 | 0x10;
        }

        v61 |= 0x20u;
        v52 = 1;
        if (v43)
        {
          sub_100059E00(v49, &__p);
          v61 |= 0x20u;
          v52 = 0;
        }
      }

      v46 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      v47 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = buf.__r_.__value_.__l.__size_;
      }

      if (v46)
      {
        sub_100059D84(v49, &buf);
        v47 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      if (v47 < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_42:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else if (v12 == 3)
    {
      *(a1 + 32) = v9 | 0x10;
      v61 |= 0x20u;
      v52 = 1;
    }
  }

LABEL_43:
  v18 = *(a1 + 32);
  if ((v18 & 8) != 0)
  {
    goto LABEL_50;
  }

  v18 |= 8uLL;
  *(a1 + 32) = v18;
  v19 = *(a1 + 16);
  if (v19 < 2)
  {
    v20 = v61 | 8;
    v21 = 1;
    goto LABEL_49;
  }

  if (v19 == 2)
  {
    v61 |= 0x18u;
    v51 = 0x200000002;
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_62;
  }

  if (v19 == 3)
  {
    v20 = v61 | 8;
    v21 = 3;
LABEL_49:
    v61 = v20;
    LODWORD(v51) = v21;
  }

LABEL_50:
  if ((v18 & 0x20) == 0)
  {
LABEL_51:
    sub_100011294(&__p, 4);
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = __p.__r_.__value_.__l.__size_;
    }

    if (v22)
    {
      v24 = *(a1 + 32);
      if ((v24 & 0x20) == 0)
      {
        *(a1 + 32) = v24 | 0x20;
      }

      v61 |= 0x800u;
      if (v57 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v57, &__p);
      v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v23 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v18 = *(a1 + 32);
  }

LABEL_62:
  if ((v18 & 0x40) == 0)
  {
    sub_100011294(&__p, 0);
    v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = __p.__r_.__value_.__l.__size_;
    }

    if (v25)
    {
      v27 = *(a1 + 32);
      if ((v27 & 0x40) == 0)
      {
        *(a1 + 32) = v27 | 0x40;
      }

      v61 |= 0x100u;
      if (v54 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v54, &__p);
      v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v26 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v18 = *(a1 + 32);
  }

  if ((v18 & 0x80) == 0)
  {
    sub_100011294(&__p, 5);
    v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = __p.__r_.__value_.__l.__size_;
    }

    if (v28)
    {
      v30 = *(a1 + 32);
      if ((v30 & 0x80) == 0)
      {
        *(a1 + 32) = v30 | 0x80;
      }

      v61 |= 0x200u;
      if (v55 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v55, &__p);
      v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v29 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v18 = *(a1 + 32);
  }

  if ((v18 & 0x100) == 0)
  {
    if (sub_100084EE4())
    {
      sub_100011294(&__p, 6);
      v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = __p.__r_.__value_.__l.__size_;
      }

      if (v31)
      {
        v33 = *(a1 + 32);
        if ((v33 & 0x100) == 0)
        {
          *(a1 + 32) = v33 | 0x100;
        }

        v61 |= 0x1000u;
        if (v58 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v58, &__p);
        v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v32 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v18 = *(a1 + 32);
    }

    else
    {
      v18 = *(a1 + 32);
      if ((v18 & 0x100) == 0)
      {
        v18 |= 0x100uLL;
        *(a1 + 32) = v18;
      }
    }
  }

  if ((v18 & 0x200) == 0)
  {
    sub_100011294(&__p, 1);
    v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = __p.__r_.__value_.__l.__size_;
    }

    if (!v34)
    {
      std::string::assign(&__p, "User");
    }

    v35 = *(a1 + 32);
    if ((v35 & 0x200) == 0)
    {
      *(a1 + 32) = v35 | 0x200;
    }

    v61 |= 0x400u;
    if (v56 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v56, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  memset(&__p, 0, sizeof(__p));
  if (wireless_diagnostics::google::protobuf::MessageLite::SerializeToString())
  {
    v36 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_INFO))
    {
      v37 = sub_10001D04C(*(a1 + 16));
      v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = __p.__r_.__value_.__l.__size_;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v37;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "file:#I Metric File(%s) updated device info with %zd bytes", &buf, 0x16u);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = __p.__r_.__value_.__l.__size_;
    }

    sub_10001C458(*(a1 + 40), p_p, v40);
    sub_10001C48C(*(a1 + 40));
    pthread_mutex_lock(&stru_1002D4A58);
    v41 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    v42 = *(&xmmword_1002D4A98 + 1);
    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    sub_1000E1578(v41, *(a1 + 16), (a1 + 32));
    if (v42)
    {
      sub_100008350(v42);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  awd::metrics::MetricFile::~MetricFile(v49);
}

void sub_10001C244(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    pthread_mutex_unlock(&stru_1002D4A58);
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001C2C0(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

uint64_t awd::metrics::MetricLog::MetricLog(uint64_t this)
{
  *(this + 56) = 0;
  *(this + 64) = 0;
  *this = off_1002B85E8;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 32) = 0;
  return this;
}

uint64_t *sub_10001C3A0(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t sub_10001C458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 16);
  if (result)
  {
    *(a1 + 8) += a3;
    return std::ostream::write();
  }

  return result;
}

uint64_t sub_10001C48C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return std::ostream::flush();
  }

  return result;
}

void sub_10001C4B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10001C4B0(a1, *a2);
    sub_10001C4B0(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_10001C504(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  *v3 = result;
  v3[1] = v4;
  return result;
}

unint64_t sub_10001C540(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return 0;
  }

  v4 = off_1002B0AA8[a2];
  sub_10001D7BC(a1);
  v5 = *(a1 + 72);
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, v4);
    sub_10001D8C4(&theDict, &Value);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"id");
      sub_10001D928(&v14, &Value);
      Value = CFDictionaryGetValue(theDict, @"mask");
      sub_10001D928(&cf, &Value);
      if (v14 && cf)
      {
        LODWORD(Value) = 0;
        ctu::cf::assign(&Value, v14, v6);
        v7 = Value;
        Value = 0;
        ctu::cf::assign(&Value, cf, v8);
        v9 = 0;
      }

      else
      {
        v12 = sub_1000E1124(a1, a2);
        v9 = v12 & 0xFFFFFFFF00000000;
        v7 = v12;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      goto LABEL_15;
    }
  }

  else
  {
    theDict = 0;
  }

  v11 = sub_1000E1124(a1, a2);
  v7 = v11;
  v9 = v11 & 0xFFFFFFFF00000000;
LABEL_15:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v9 | v7;
}

void sub_10001C6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  sub_1000E11A0(&a9);
  sub_1000E11A0(&a10);
  sub_100057174(&a11);
  _Unwind_Resume(a1);
}

void *sub_10001C6F4(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

CFPropertyListRef sub_10001C72C@<X0>(CFStringRef key@<X1>, void *a2@<X8>)
{
  result = CFPreferencesCopyAppValue(key, @"com.apple.wirelessinsightsd.persistent");
  *a2 = result;
  return result;
}

void awd::metrics::MetricLog::SharedDtor(awd::metrics::MetricLog *this)
{
  v1 = *(this + 1);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(this + 3);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  awd::metrics::protobuf_AddDesc_MetricLogHeader_2eproto(this);
}

uint64_t *sub_10001C80C(uint64_t a1, unsigned int *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  while (1)
  {
    v9 = *(v3 + 8);
    if (v6 >= v9)
    {
      if (v9 < v6)
      {
        goto LABEL_6;
      }

      v10 = *(v3 + 9);
      if (v7 >= v10 && (v10 < v7 || v8 >= *(v3 + 10)))
      {
        break;
      }
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  v11 = *(v3 + 9);
  if (v11 < v7 || v7 >= v11 && *(v3 + 10) < v8)
  {
LABEL_6:
    ++v3;
    goto LABEL_7;
  }

  v12 = sub_1000E7720(a1, a2, *v3, v3);
  sub_1000E778C(a1, a2, v3[1], v2);
  return v12;
}

void sub_10001C900(uint64_t a1, int a2, unint64_t a3, int a4, uint64_t *a5)
{
  sub_10001CD90(a1, 0);
  if (*(a1 + 24))
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    if (v11 != v10)
    {
      while (*v11 != a4)
      {
        v11 += 8;
        if (v11 == v10)
        {
          goto LABEL_14;
        }
      }
    }

    if (v11 == v10)
    {
LABEL_14:
      v21 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
      {
        v22 = sub_10001D04C(*(a1 + 16));
        sub_1001FF3E8(v22, &v37, a4, v21);
      }

      return;
    }

    v17 = *a5;
    v18 = a5[1];
    if (*a5 == v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v20 = *a5;
      do
      {
        v19 = v19 + *(*(v20 + 8) + 8) - **(v20 + 8);
        v20 += 24;
      }

      while (v20 != v18);
    }

    v23 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_INFO))
    {
      v24 = sub_10001D04C(*(a1 + 16));
      v25 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3);
      v37 = 136316162;
      v38 = v24;
      v39 = 1024;
      *v40 = a4;
      *&v40[4] = 1024;
      *&v40[6] = a2;
      v41 = 2048;
      v42 = v25;
      v43 = 2048;
      v44 = v19;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "file:#I Metric File(%s, %d)::write(0x%x, %zd metrics, %zd bytes)", &v37, 0x2Cu);
      v17 = *a5;
      v18 = a5[1];
    }

    if (v17 == v18)
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      do
      {
        v26 = &v26[*(*(v17 + 8) + 8) - **(v17 + 8)];
        v17 += 24;
      }

      while (v17 != v18);
    }

    v27 = *(a1 + 8);
    sub_10001CD90(a1, 0);
    v28 = *(a1 + 40);
    v29 = *(a1 + 48);
    if (v28 == v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = 0;
      do
      {
        v30 += *(v28 + 8);
        v28 += 32;
      }

      while (v28 != v29);
    }

    v31 = (*(*v27 + 32))(v27, v30, v26);
    switch(v31)
    {
      case 3:
        v36 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          v37 = 134217984;
          v38 = v26;
          v14 = "file:#E  -- dropping because writing %zu bytes will increase total file size over quota";
          v15 = v36;
          v16 = 12;
          goto LABEL_8;
        }

        return;
      case 2:
        sub_100059E7C(a1);
        break;
      case 1:
        v32 = *a1;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3);
          v37 = 134218240;
          v38 = v26;
          v39 = 2048;
          *v40 = v33;
          v14 = "file:#E  -- dropping because it's too large; %zd sanitized bytes for %zd metrics";
          v15 = v32;
          v16 = 22;
          goto LABEL_8;
        }

        return;
    }

    v34 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_INFO))
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3);
      v37 = 134218240;
      v38 = v26;
      v39 = 2048;
      *v40 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "file:#I  -- writing %zd sanitized bytes for %zd metrics", &v37, 0x16u);
    }

    sub_10001CD90(a1, 1);
    sub_10001B718(v11, a2, a3, a5);
    return;
  }

  v12 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_10001D04C(*(a1 + 16));
    v37 = 136315394;
    v38 = v13;
    v39 = 1024;
    *v40 = a4;
    v14 = "file:#E Metric File(%s, %d)::write: file is disabled";
    v15 = v12;
    v16 = 18;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v37, v16);
  }
}

void sub_10001CD18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void sub_10001CD24(uint64_t a1, int a2, unint64_t a3, int a4, uint64_t *a5)
{
  v5 = *(a1 + 96);
  for (i = *(a1 + 104); v5 != i; v5 += 80)
  {
    sub_10001C900(v5, a2, a3, a4, a5);
  }
}

void sub_10001CD90(uint64_t a1, int a2)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 40) == *(a1 + 48))
    {
      pthread_mutex_lock(&stru_1002D4A58);
      v4 = xmmword_1002D4A98;
      if (!xmmword_1002D4A98)
      {
        sub_1000927A0();
      }

      v5 = *(&xmmword_1002D4A98 + 1);
      if (*(&xmmword_1002D4A98 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_1002D4A58);
      v6 = sub_10001D694(v4, *(a1 + 16));
      v8 = v7;
      if (v5)
      {
        sub_100008350(v5);
      }

      *(a1 + 32) = v8 & 0x7FF;
      *(a1 + 28) = v6;
      pthread_mutex_lock(&stru_1002D4A58);
      v9 = xmmword_1002D4A98;
      if (!xmmword_1002D4A98)
      {
        sub_1000927A0();
      }

      v10 = *(&xmmword_1002D4A98 + 1);
      if (*(&xmmword_1002D4A98 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_1002D4A58);
      sub_10001D98C(v9, *(a1 + 16), &v15);
      if (v10)
      {
        sub_100008350(v10);
      }

      *buf = &v15;
      *&buf[8] = "files";
      sub_10000BBB0(buf, &object);
      sub_10001DF98(a1, &object);
      xpc_release(object);
      v11 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_INFO))
      {
        v12 = sub_10001D04C(*(a1 + 16));
        v13 = (*(a1 + 48) - *(a1 + 40)) >> 5;
        *buf = 136315394;
        *&buf[4] = v12;
        *&buf[12] = 2048;
        *&buf[14] = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "file:#I Metric File(%s) ready with %zd fragments", buf, 0x16u);
      }

      xpc_release(v15);
    }

    if (a2)
    {
      sub_10001B968(a1);
    }
  }
}

void sub_10001CFEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    pthread_mutex_unlock(&stru_1002D4A58);
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_10001D04C(unsigned int a1)
{
  if (a1 > 3)
  {
    return "<unknown>";
  }

  else
  {
    return off_1002B0C78[a1];
  }
}

char *sub_10001D070(uint64_t a1, unsigned int a2)
{
  if (a2 > 1)
  {
    return 0;
  }

  v3 = sub_10001B43C(a1);
  v9 = 0;
  v4 = sub_10001D110((a1 + 48), &v9);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  v10 = 1;
  v7 = sub_10001D110((a1 + 48), &v10);
  if (v7)
  {
    v8 = v7[3];
  }

  else
  {
    v8 = 0;
  }

  return v8 + v5 + v3;
}

uint64_t **sub_10001D110(void *a1, unsigned __int8 *a2)
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
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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
      if (*(result + 16) == v3)
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

uint64_t sub_10001D1C8(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *sub_10001AF50(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t awd::metrics::MetricLog::ByteSize(awd::metrics::MetricLog *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 68);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_42;
  }

  if (*(this + 68))
  {
    v6 = *(this + 1);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v11 = v12 + 1;
      v3 = *(this + 17);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 2;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v4 = v11 + v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v3 & 2) + v4;
  if ((v3 & 4) != 0)
  {
    v13 = *(this + 5);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(this + 17);
    }

    else
    {
      v14 = 2;
    }

    v5 += v14;
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(this + 17);
  }

  else
  {
    v16 = 2;
  }

  v5 += v16;
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_28:
  v17 = *(this + 3);
  v18 = *(v17 + 23);
  v19 = v18;
  v20 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
    v18 = *(v17 + 23);
    v20 = *(v17 + 8);
    v3 = *(this + 17);
    v19 = *(v17 + 23);
  }

  else
  {
    v22 = 1;
  }

  if (v19 < 0)
  {
    v18 = v20;
  }

  v5 += v22 + v18 + 1;
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_37:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5), a2) + 1;
  if ((*(this + 17) & 0x40) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v23 = *(this + 9);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
  }

  else
  {
    v24 = 2;
  }

  v5 += v24;
LABEL_42:
  v25 = *(this + 14);
  if (v25 < 1)
  {
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(*(this + 6) + 4 * v26);
      if (v28 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
        v25 = *(this + 14);
      }

      else
      {
        v29 = 1;
      }

      v27 += v29;
      ++v26;
    }

    while (v26 < v25);
  }

  result = (v27 + v5 + v25);
  *(this + 16) = result;
  return result;
}

uint64_t awd::metrics::MetricLog::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    v9 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 40), a2, a4);
  if ((*(v5 + 68) & 0x40) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  }

LABEL_7:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 48) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  v8 = *(v5 + 68);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
    v8 = *(v5 + 68);
  }

  if ((v8 & 0x10) != 0)
  {
    v10 = *(v5 + 24);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

void awd::metrics::MetricLog::~MetricLog(awd::metrics::MetricLog *this)
{
  *this = off_1002B85E8;
  awd::metrics::MetricLog::SharedDtor(this);
  if (*(this + 6))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MetricLog::~MetricLog(this);

  operator delete();
}

void awd::metrics::protobuf_AddDesc_MetricLogHeader_2eproto(awd::metrics *this)
{
  v1 = awd::metrics::protobuf_AddDesc_MetricLogHeader_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[1] = awd::metrics::protobuf_AddDesc_MetricLogHeader_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_10001D680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D694(uint64_t a1, char a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10001C6E4;
  v7[3] = &unk_1002B0830;
  v7[4] = a1;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000E4338;
    v12 = &unk_1002B0870;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10001C504;
    v12 = &unk_1002B0850;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15;
}

const void **sub_10001D7BC(const void **result)
{
  v1 = result + 9;
  if (!result[9])
  {
    (*(*result[6] + 48))(&cf);
    sub_10001DEC8(&propertyList, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (propertyList)
    {
      cf = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, propertyList, 2uLL);
      sub_1000E1528(v1, &cf);
    }

    else
    {
      cf = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      sub_1000E14EC(v1, &cf);
    }

    return sub_10001DF64(&propertyList);
  }

  return result;
}

void sub_10001D89C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001DF64(va);
  _Unwind_Resume(a1);
}

void *sub_10001D8C4(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDictionaryGetTypeID()))
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

void *sub_10001D928(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFNumberGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return sub_10001C6F4(a1, v5);
}

void sub_10001D98C(uint64_t a1@<X0>, char a2@<W1>, xpc_object_t *a3@<X8>)
{
  v6 = a2;
  v5[0] = &v6;
  v5[1] = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10001DB4C;
  v7[3] = &unk_1002B07B0;
  v7[4] = a1;
  v7[5] = v5;
  v8 = v7;
  v4 = *(a1 + 16);
  if (*(a1 + 24))
  {
    *a3 = xpc_null_create();
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000E4100;
    v12 = &unk_1002B07F0;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *a3 = xpc_null_create();
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10001DADC;
    v12 = &unk_1002B07D0;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v4, &block);
  }
}

void sub_10001DADC(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&object);
  v2 = *(a1 + 32);
  v3 = object;
  object = xpc_null_create();
  v4 = *v2;
  *v2 = v3;
  xpc_release(v4);
  xpc_release(object);
}

void sub_10001DB4C(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = **v3;
  if (v4 >= 4)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    v12 = v11;
    if (v11)
    {
      *a2 = v11;
    }

    else
    {
      v12 = xpc_null_create();
      *a2 = v12;
      if (!v12)
      {
        v13 = xpc_null_create();
        v12 = 0;
        goto LABEL_19;
      }
    }

    if (xpc_get_type(v12) == &_xpc_type_dictionary)
    {
      xpc_retain(v12);
LABEL_20:
      xpc_release(v12);
      return;
    }

    v13 = xpc_null_create();
LABEL_19:
    *a2 = v13;
    goto LABEL_20;
  }

  v5 = v3[1];
  v6 = off_1002B0AA8[v4];
  sub_10001DE64(&theDict, v5 + 8);
  v7 = theDict;
  if (!theDict)
  {
    (*(**(v5 + 6) + 48))(&cf);
    sub_10001DEC8(&object, &cf);
    v8 = theDict;
    theDict = object;
    keys = v8;
    object = 0;
    sub_10001DF64(&keys);
    sub_10001DF64(&object);
    if (cf)
    {
      CFRelease(cf);
    }

    v7 = theDict;
    if (!theDict)
    {
      v16 = xpc_dictionary_create(0, 0, 0);
      v17 = v16;
      if (v16)
      {
        *a2 = v16;
      }

      else
      {
        v17 = xpc_null_create();
        *a2 = v17;
        if (!v17)
        {
          v19 = xpc_null_create();
          v17 = 0;
          goto LABEL_40;
        }
      }

      if (xpc_get_type(v17) == &_xpc_type_dictionary)
      {
        xpc_retain(v17);
LABEL_41:
        xpc_release(v17);
        goto LABEL_36;
      }

      v19 = xpc_null_create();
LABEL_40:
      *a2 = v19;
      goto LABEL_41;
    }
  }

  object = CFDictionaryGetValue(v7, v6);
  sub_10001DEC8(&keys, &object);
  if (keys)
  {
    ctu::cf_to_xpc(&object, keys, v9);
    v10 = object;
    *a2 = object;
    if (v10 && xpc_get_type(v10) == &_xpc_type_dictionary)
    {
      xpc_retain(v10);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(object);
    goto LABEL_35;
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v14;
  if (v14)
  {
    *a2 = v14;
  }

  else
  {
    v15 = xpc_null_create();
    *a2 = v15;
    if (!v15)
    {
      v18 = xpc_null_create();
      v15 = 0;
      goto LABEL_33;
    }
  }

  if (xpc_get_type(v15) != &_xpc_type_dictionary)
  {
    v18 = xpc_null_create();
LABEL_33:
    *a2 = v18;
    goto LABEL_34;
  }

  xpc_retain(v15);
LABEL_34:
  xpc_release(v15);
LABEL_35:
  sub_10001DF64(&keys);
LABEL_36:
  sub_10001DF64(&theDict);
}

void sub_10001DE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10006703C(&a9);
  sub_10001DF64(&a11);
  _Unwind_Resume(a1);
}

void *sub_10001DE64(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDictionaryGetTypeID()))
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

void *sub_10001DEC8(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return sub_10001DF2C(a1, v5);
}

void *sub_10001DF2C(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **sub_10001DF64(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10001DF98(uint64_t a1, xpc_object_t *a2)
{
  v19[0] = *a2;
  if (v19[0])
  {
    xpc_retain(v19[0]);
  }

  else
  {
    v19[0] = xpc_null_create();
  }

  sub_10000BC4C(&__p, v19, 0);
  xpc_release(v19[0]);
  v4 = *a2;
  object[0] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  if (xpc_get_type(*a2) == &_xpc_type_array)
  {
    count = xpc_array_get_count(*a2);
  }

  else
  {
    count = 0;
  }

  sub_10000BC4C(v19, object, count);
  xpc_release(object[0]);
  for (i = v15; i != v19[1] || __p != v19[0]; i = ++v15)
  {
    object[0] = &__p;
    object[1] = i;
    sub_10000BC98(object, &v18);
    if (xpc_get_type(v18) == &_xpc_type_dictionary)
    {
      v16 = 0;
      object[0] = 0;
      v7 = sub_100059894(&v18);
      v16 = v7;
      object[0] = v8;
      v9 = *(a1 + 48);
      if (v9 >= *(a1 + 56))
      {
        v10 = sub_10005A604((a1 + 40), &v16, object);
      }

      else
      {
        *v9 = v7;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        v10 = v9 + 32;
        *(v9 + 24) = v8;
      }

      *(a1 + 48) = v10;
    }

    xpc_release(v18);
  }

  xpc_release(v19[0]);
  xpc_release(__p);
  v11 = *(a1 + 40);
  if (v11 != *(a1 + 48))
  {
    v12 = *(a1 + 28);
    v13 = *v11;
    sub_1000E61B0(*(a1 + 16));
    sub_1000E5F78(&__p);
  }
}

void sub_10001E208(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      sub_10000C564(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10001E25C(uint64_t a1)
{
  sub_10001E208(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_10001E298(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100008350(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10001E2EC(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100008350(v4);
  }

  v6 = (a1 + 32);
  sub_10000C564(&v6);
  return a1;
}

void sub_10001E35C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
}

uint64_t sub_10001F8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrivateServicePrediction();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10001F9AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PrivateServicePrediction();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10001FA68()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FB64()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FBA4()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001FC70()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FCA8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FCF0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001FD38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001FE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10001FE80()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FEB8()
{
  v1 = _s14PedometerStateVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = &v0[v3];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(&v0[v3], 1, v9))
  {
    (*(v10 + 8))(&v0[v3], v9);
  }

  v12 = *(v1 + 20);
  if (!v11(&v8[v12], 1, v9))
  {
    (*(v10 + 8))(&v8[v12], v9);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100020040()
{
  v1 = *(sub_100164A3C(&unk_1002D7BD0, &unk_10024A800) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v0 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return _swift_deallocObject(v0, ((v3 + v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000201E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000202BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = a2;
  }

  return result;
}

uint64_t sub_100020384()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000203CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000205E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000206B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100020770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100020830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000208EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100020958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000209C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 3)
    {
      return v12 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100020A84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100020B40()
{
  v1 = sub_100164A3C(&qword_1002D79C8, &qword_10024BA30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100164A3C(&qword_1002D7178, &unk_10024B0C0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 208) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 8))(v0 + v8, v11);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v12);

  return _swift_deallocObject(v0, v13 + 8, v3 | v7 | 7);
}

uint64_t sub_100020D18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020D58()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020D90()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020DD4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100020E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100020EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100020F30()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020F94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021030()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[8];

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_100021078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100021144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_100021200(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100021318(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    result = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11] + 8) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_100021420()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100021458()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000214A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000214DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 408, 7);
}

void sub_1000215EC()
{
  v0 = qword_1002DBE40;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[1] = awd::metrics::protobuf_AssignDesc_AwdOptions_2eproto;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_100021670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100021684(awd::metrics *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  awd::metrics::protobuf_AddDesc_AwdOptions_2eproto(a1, a2, a3, a4);
  awd::metrics::isMetric = 50000;
  byte_1002DC100 = 0;
  awd::metrics::isGenericSimpleMetric = 50001;
  byte_1002DC108 = 0;
  awd::metrics::fillMetricRangeUntil = 50002;
  sub_100007ECC(byte_1002DBDF8, "");
  __cxa_atexit(&std::string::~string, byte_1002DBDF8, &_mh_execute_header);
  awd::metrics::submittingComponents = 50005;
  qword_1002DC120 = byte_1002DBDF8;
  sub_100007ECC(byte_1002DBE10, "");
  __cxa_atexit(&std::string::~string, byte_1002DBE10, &_mh_execute_header);
  awd::metrics::metaType = 50100;
  qword_1002DC130 = byte_1002DBE10;
  sub_100007ECC(byte_1002DBE28, "");
  result = __cxa_atexit(&std::string::~string, byte_1002DBE28, &_mh_execute_header);
  awd::metrics::enumType = 50101;
  qword_1002DC140 = byte_1002DBE28;
  awd::metrics::isSimpleMetric = 50002;
  byte_1002DC14C = 0;
  return result;
}

uint64_t sub_10002193C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002194C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_10002195C(void *a1, void *a2, uint64_t **a3)
{
  *a1 = off_1002AB068;
  a1[1] = 0;
  v5 = (a1 + 1);
  a1[3] = 0;
  a1[2] = a1 + 3;
  v6 = (a1 + 2);
  a1[4] = 0;
  v7 = a2;
  objc_storeWeak(v5, v7);

  if (v6 != a3)
  {
    sub_1000234B8(v6, *a3, a3 + 1);
  }

  return a1;
}

void sub_1000219FC(_Unwind_Exception *a1)
{
  sub_1000134C0(v3, *(v1 + 24));
  objc_destroyWeak(v2);
  XPCEventPublisher.Token.rawValue.getter(v5, v6);
  _Unwind_Resume(a1);
}

void *sub_100021A24(void *a1, void *a2, uint64_t **a3)
{
  objc_initWeak(&location, a2);
  sub_10002195C(a1, location, a3);
  objc_destroyWeak(&location);
  return a1;
}

void sub_100021EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, char *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  pthread_mutex_unlock(&stru_1002D4780);
  objc_destroyWeak(&location);
  sub_1000134C0(&a30, a31);

  _Unwind_Resume(a1);
}

void sub_100022030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = FMBasebandMetricsController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *sub_100023268(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000232A0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    sub_100008350(v4);
  }
}

double sub_100023330(uint64_t a1)
{
  *a1 = off_1002AB068;
  sub_1000134C0(a1 + 16, *(a1 + 24));
  objc_destroyWeak((a1 + 8));

  return XPCEventPublisher.Token.rawValue.getter(v2, v3);
}

void sub_100023394(uint64_t a1)
{
  *a1 = off_1002AB068;
  sub_1000134C0(a1 + 16, *(a1 + 24));
  objc_destroyWeak((a1 + 8));
  XPCEventPublisher.Token.rawValue.getter(v2, v3);

  operator delete();
}

void sub_100023428(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100023484(exception, a1);
}

std::logic_error *sub_100023484(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t **sub_1000234B8(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000236B8(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = sub_10002363C(v5, &v16, v15 + 4);
          sub_10000AC70(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000236B8(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_10002370C(&v13);
  }

  if (a2 != a3)
  {
    sub_100023764();
  }

  return result;
}

void *sub_10002363C(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_10000FF8C(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *sub_1000236B8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_10002370C(uint64_t a1)
{
  sub_1000134C0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1000134C0(*a1, v2);
  }

  return a1;
}

void sub_1000237BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000237E0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000237E0(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100023844(uint64_t a1, const void **a2)
{
  v2 = *sub_10000FEF0(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_10002395C(void *a1, id *location, const void ***a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002AB0E0;
  sub_100023A6C(&v5, a1 + 3, location, a3);
  return a1;
}

void sub_1000239F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002AB0E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100023A6C(int a1, void *a2, id *location, const void ***a4)
{
  WeakRetained = objc_loadWeakRetained(location);
  sub_10000EF74(v7, a4);
  sub_100021A24(a2, WeakRetained, v7);
  sub_1000134C0(v7, v7[1]);
}

void sub_100023AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_1000134C0(&a10, a11);

  _Unwind_Resume(a1);
}

uint64_t sub_100023AFC(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100008350(v3);
  }

  return a1;
}

void sub_100023B6C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100023B94()
{
  if ((byte_1002D47D0 & 1) == 0)
  {
    byte_1002D47D0 = 1;
    return __cxa_atexit(sub_10002340C, &stru_1002D4780, &_mh_execute_header);
  }

  return result;
}

void sub_100023F80(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_10002544C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 curState];
  if (v4)
  {
    if (v4 != 1)
    {
      if (v4 == 3)
      {
        v5 = 48;
LABEL_8:
        [*(a1 + v5) addObject:v3];
        goto LABEL_11;
      }

      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_1001FB208();
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = [*(a1 + 32) timestamp];
    [v3 exitedAt:v6];
  }

  [v3 addGoodCell:*(a1 + 32)];
  v7 = [v3 goodCells];
  v8 = [v7 count];
  v9 = +[FMConfiguration sharedInstance];
  v10 = [v9 congestionGoodCellsInDatabase];

  if (v8 >= v10)
  {
    [v3 finalize];
    v5 = 40;
    goto LABEL_8;
  }

LABEL_11:
}

void sub_100025590(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FB278(v3, a1);
  }

  if ((*(a1 + 49) & 1) == 0)
  {
    [*(a1 + 32) sendCongestionPredictionEventWithCongestionArea:v3 isDataContext:*(a1 + 50)];
  }

  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) fmCoreData];
    v5 = [*(a1 + 40) subscriptionID];
    [v4 finalizedCongestionArea:v3 withSubscriptionID:v5];
  }
}

void sub_100025654(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_100025868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000258B4(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a3;
  v4 = [v40 prevCells];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v6 = [v40 prevCells];
    v7 = [v40 prevCells];
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 2}];

    v9 = (a1 + 32);
    if ([v8 isMatchForMetric:*(a1 + 32)])
    {
      v38 = -2;
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FB3A8();
      }

      v10 = [v40 prevCells];
      v11 = [v40 prevCells];
      v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1}];

      if (([v12 isMatchForMetric:*v9] & 1) == 0)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_1001FB3E4();
        }

        v8 = v12;
        goto LABEL_51;
      }

      v38 = -1;
      v8 = v12;
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FB420();
    }

    v13 = [v8 congestionMetric];
    v14 = v13 == 0;

    if (v14)
    {
      [v8 setCongestionMetric:*v9];
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        [*(a1 + 40) sendQoEEventForCongestionCell:v8];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      [*(a1 + 40) sendRLGSPredictionEventForCell:v8];
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v15 = [v40 congestionPredictions];
      v16 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v16)
      {
        v17 = *v50;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v50 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v49 + 1) + 8 * i);
            if ([v19 state] == 1 || objc_msgSend(v19, "state") == 2)
            {
              if (([v19 isFedMobilityPredictionEventSubmitted] & 1) == 0)
              {
                [v19 setIsFedMobilityPredictionEventSubmitted:1];
                [*(a1 + 40) sendFedMobilityPredictionEventWithPredictionCorrect:objc_msgSend(v8 seenCount:{"isCongested"), objc_msgSend(v19, "seenCount")}];
              }

              if ([v19 state] == 1 && objc_msgSend(v8, "isCongested"))
              {
                v20 = [v19 actualBadCells];
                [v20 addObject:v8];
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v16);
      }

      if ([*v9 isQoEScoreValid])
      {
        if ([v8 isCongested])
        {
          v45 = 0;
          v46 = &v45;
          v47 = 0x2020000000;
          v48 = 0;
          v21 = [v40 activeCongestionAreas];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_100025FCC;
          v42[3] = &unk_1002AB178;
          v44 = &v45;
          v22 = v8;
          v43 = v22;
          [v21 enumerateObjectsUsingBlock:v42];

          if ((v46[3] & 1) == 0)
          {
            if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
            {
              sub_1001FB520();
            }

            v23 = +[FMConfiguration sharedInstance];
            v24 = [v23 congestionPrevCellsInDatabase];

            v25 = [v40 prevCells];
            v26 = [v25 count];

            v27 = &v26[v39];
            if (&v26[v39])
            {
              v28 = [v40 prevCells];
              v29 = v28;
              if (v27 >= v24)
              {
                v30 = v27 - v24;
              }

              else
              {
                v30 = 0;
              }

              if (v27 >= v24)
              {
                v31 = v24;
              }

              else
              {
                v31 = &v26[v39];
              }

              v32 = [v28 subarrayWithRange:{v30, v31}];

              v33 = [FMCongestionArea alloc];
              v34 = [v22 timestamp];
              v35 = [(FMCongestionArea *)v33 init:v34 prevCells:v32];

              [v35 addBadCell:v22];
              v36 = [v40 activeCongestionAreas];
              [v36 addObject:v35];
            }

            else
            {
              v37 = *(qword_1002DBE98 + 136);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "FederatedMobility[FMCongestionModel]:#I No prevCells available, not initializing new congestion area", buf, 2u);
              }
            }
          }

          _Block_object_dispose(&v45, 8);
          v8 = v22;
        }

        else
        {
          [*(a1 + 40) handleUncongestedCell:v8 forState:v40];
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FB4E4();
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FB45C(v8, v9);
    }

LABEL_51:
  }
}

void sub_100025EAC(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100025FCC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 curState])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    [v3 addBadCell:*(a1 + 32)];
  }
}

void sub_100026558(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  _Unwind_Resume(a1);
}

id sub_1000268C8(uint64_t a1)
{
  v6[0] = @"predictionType";
  v6[1] = @"predictionSource";
  v7[0] = @"congestion";
  v7[1] = @"on-device";
  v6[2] = @"predictionCorrect";
  v2 = [NSNumber numberWithBool:*(a1 + 36)];
  v7[2] = v2;
  v6[3] = @"seenCount";
  v3 = [NSNumber numberWithInt:*(a1 + 32)];
  v6[4] = @"predictionSent";
  v7[3] = v3;
  v7[4] = &__kCFBooleanFalse;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

void sub_100026F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  if (a15)
  {
  }

  _Unwind_Resume(a1);
}

id sub_1000270C0(uint64_t a1)
{
  v40[0] = @"rat_type";
  v2 = (a1 + 32);
  v39 = [*(a1 + 32) rat];
  v41[0] = v39;
  v40[1] = @"arfcn";
  v3 = [*v2 arfcnOrUarfcn];
  v38 = v3;
  if (!v3)
  {
    v3 = +[NSNull null];
  }

  v29 = v3;
  v41[1] = v3;
  v40[2] = @"previous_dl_bottleneck_score";
  v4 = *(a1 + 40);
  v36 = v4;
  if (!v4)
  {
    v4 = +[NSNull null];
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v28 = v4;
  v41[2] = v4;
  v41[3] = v5;
  v40[3] = @"current_dl_bottleneck_score";
  v40[4] = @"is_dl_bottleneck_score_matching";
  v7 = v6;
  v35 = v6;
  if (!v6)
  {
    v7 = +[NSNull null];
  }

  v27 = v7;
  v41[4] = v7;
  v40[5] = @"previous_ul_bottleneck_score";
  v8 = *(a1 + 64);
  v9 = v8;
  if (!v8)
  {
    v9 = +[NSNull null];
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v26 = v9;
  v41[5] = v9;
  v41[6] = v10;
  v40[6] = @"current_ul_bottleneck_score";
  v40[7] = @"is_ul_bottleneck_score_matching";
  v12 = v11;
  v30 = v8;
  if (!v11)
  {
    v12 = +[NSNull null];
  }

  v25 = v12;
  v41[7] = v12;
  v40[8] = @"data_stall_indicator_avs_ever";
  v37 = v11;
  v33 = [NSNumber numberWithBool:*(a1 + 104)];
  v41[8] = v33;
  v40[9] = @"data_stall_indicator_ul_ever";
  v32 = [NSNumber numberWithBool:*(a1 + 105)];
  v41[9] = v32;
  v40[10] = @"is_subway_detected_ever";
  v31 = [NSNumber numberWithBool:*(a1 + 106)];
  v41[10] = v31;
  v40[11] = @"ps_pref";
  v34 = [NSNumber numberWithBool:*(a1 + 107)];
  v41[11] = v34;
  v40[12] = @"is_overall_score_matching";
  v13 = *(a1 + 88);
  v14 = v13;
  if (!v13)
  {
    v14 = +[NSNull null];
  }

  v41[12] = v14;
  v40[13] = @"is_db_hit";
  v15 = [NSNumber numberWithBool:*(a1 + 96) != 0];
  v41[13] = v15;
  v40[14] = @"rsrp_ewma";
  v16 = [*(a1 + 32) congestionMetric];
  v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 rsrp]);
  v41[14] = v17;
  v40[15] = @"rsrq_ewma";
  v18 = [*(a1 + 32) congestionMetric];
  v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 rsrq]);
  v41[15] = v19;
  v40[16] = @"sinr_ewma";
  v20 = [*(a1 + 32) congestionMetric];
  v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v20 sinr]);
  v41[16] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:17];

  if (!v13)
  {
  }

  if (!v37)
  {
  }

  if (!v30)
  {
  }

  if (!v35)
  {
  }

  if (!v36)
  {
  }

  v23 = v38;
  if (!v38)
  {

    v23 = 0;
  }

  return v22;
}

void sub_10002750C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24)
{
  if (!a22)
  {
  }

  if (!a15)
  {
  }

  if (!a20)
  {
  }

  if (!a21)
  {
  }

  if (!a23)
  {
  }

  _Unwind_Resume(a1);
}

id sub_100027A34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actualGoodCells];
  v5 = [v4 containsObject:v3];

  return v5;
}

id sub_100027AA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actualBadCells];
  v5 = [v4 containsObject:v3];

  return v5;
}

id sub_100027B1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actualBadCells];
  v5 = [v4 containsObject:v3];

  return v5;
}

id sub_100027B90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actualGoodCells];
  v5 = [v4 containsObject:v3];

  return v5;
}

id sub_100027C04(uint64_t a1)
{
  v44[0] = @"numGoodCellsPredicted";
  v43 = [*(a1 + 32) predictedGoodCells];
  v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v43 count]);
  v45[0] = v42;
  v44[1] = @"numBadCellsPredicted";
  v41 = [*(a1 + 32) predictedBadCells];
  v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v41 count]);
  v45[1] = v39;
  v44[2] = @"numGoodCellsOccurred";
  v40 = [*(a1 + 32) actualGoodCells];
  v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v40 count]);
  v45[2] = v36;
  v44[3] = @"numBadCellsOccurred";
  v38 = [*(a1 + 32) actualBadCells];
  v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v38 count]);
  v45[3] = v31;
  v44[4] = @"numPredictedGoodCellsActuallyGood";
  v32 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v45[4] = v32;
  v44[5] = @"numPredictedBadCellsActuallyBad";
  v33 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v45[5] = v33;
  v44[6] = @"numPredictedGoodCellsActuallyBad";
  v35 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v45[6] = v35;
  v44[7] = @"numPredictedBadCellsActuallyGood";
  v37 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
  v45[7] = v37;
  v44[8] = @"seenCount";
  v34 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) seenCount]);
  v45[8] = v34;
  v45[9] = &__kCFBooleanTrue;
  v44[9] = @"insightAvailable";
  v44[10] = @"insightSent";
  v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) suppressionReason] == 0);
  v45[10] = v30;
  v44[11] = @"predictedTimeUntilCongestion";
  v29 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) predictedTimeUntilCongestion]);
  v45[11] = v29;
  v44[12] = @"predictedTimeInCongestion";
  v27 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) predictedTimeInCongestion]);
  v45[12] = v27;
  v44[13] = @"actualTimeUntilCongestion";
  [*(a1 + 32) actualTimeUntilCongestion];
  v25 = [NSNumber numberWithDouble:?];
  v45[13] = v25;
  v44[14] = @"actualTimeInCongestion";
  v28 = [*(a1 + 32) actualBadCells];
  if ([v28 count])
  {
    [*(a1 + 32) actualTimeInCongestion];
  }

  else
  {
    v2 = 0.0;
  }

  v26 = [NSNumber numberWithDouble:v2];
  v45[14] = v26;
  v44[15] = @"timeUntilCongestionPredictionError";
  v3 = [*(a1 + 32) predictedTimeUntilCongestion];
  [*(a1 + 32) actualTimeUntilCongestion];
  v24 = [NSNumber numberWithLongLong:llround((v3 - v4))];
  v45[15] = v24;
  v44[16] = @"timeUntilCongestionPredictionErrorPercent";
  v5 = [*(a1 + 32) predictedTimeUntilCongestion];
  [*(a1 + 32) actualTimeUntilCongestion];
  [FMUtil getPrediction:v5 errorPercentWithActual:v6];
  v23 = [NSNumber numberWithDouble:?];
  v45[16] = v23;
  v44[17] = @"timeInCongestionPredictionError";
  v7 = [*(a1 + 32) predictedTimeInCongestion];
  [*(a1 + 32) actualTimeInCongestion];
  v22 = [NSNumber numberWithLongLong:llround((v7 - v8))];
  v45[17] = v22;
  v44[18] = @"timeInCongestionPredictionErrorPercent";
  v9 = [*(a1 + 32) predictedTimeInCongestion];
  [*(a1 + 32) actualTimeInCongestion];
  [FMUtil getPrediction:v9 errorPercentWithActual:v10];
  v21 = [NSNumber numberWithDouble:?];
  v45[18] = v21;
  v44[19] = @"dataContext";
  v11 = [NSNumber numberWithBool:*(a1 + 72)];
  v45[19] = v11;
  v45[20] = @"on-device";
  v44[20] = @"learningType";
  v44[21] = @"predictionSuppressionReason";
  v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) suppressionReason]);
  v45[21] = v12;
  v44[22] = @"allGoodCellsMatched";
  v13 = [*(a1 + 32) predictedGoodCells];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 count] == *(a1 + 40));
  v45[22] = v14;
  v44[23] = @"anyGoodCellsMatched";
  v15 = [NSNumber numberWithBool:*(a1 + 40) != 0];
  v45[23] = v15;
  v44[24] = @"allBadCellsMatched";
  v16 = [*(a1 + 32) predictedBadCells];
  v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v16 count] == *(a1 + 48));
  v45[24] = v17;
  v44[25] = @"anyBadCellsMatched";
  v18 = [NSNumber numberWithBool:*(a1 + 48) != 0];
  v45[25] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:26];

  return v19;
}

id sub_1000285A4(uint64_t a1)
{
  v19[0] = @"numGoodCellsOccurred";
  v18 = [*(a1 + 32) goodCells];
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 count]);
  v20[0] = v16;
  v19[1] = @"numBadCellsOccurred";
  v17 = [*(a1 + 32) badCells];
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);
  v20[1] = v15;
  v20[2] = &off_1002BEDD8;
  v19[2] = @"seenCount";
  v19[3] = @"insightAvailable";
  v20[3] = &__kCFBooleanFalse;
  v20[4] = &__kCFBooleanFalse;
  v19[4] = @"insightSent";
  v19[5] = @"actualTimeUntilCongestion";
  v2 = [*(a1 + 32) startTimestamp];
  v3 = [*(a1 + 32) prevCells];
  v4 = [v3 lastObject];
  v5 = [v4 timestamp];
  [v2 timeIntervalSinceDate:v5];
  v7 = [NSNumber numberWithLongLong:llround(v6)];
  v20[5] = v7;
  v19[6] = @"actualTimeInCongestion";
  v8 = [*(a1 + 32) endTimestamp];
  v9 = [*(a1 + 32) startTimestamp];
  [v8 timeIntervalSinceDate:v9];
  v11 = [NSNumber numberWithLongLong:llround(v10)];
  v20[6] = v11;
  v19[7] = @"dataContext";
  v12 = [NSNumber numberWithBool:*(a1 + 40)];
  v20[7] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:8];

  return v13;
}

void sub_100029094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  pthread_mutex_unlock(&stru_1002D4830);
  sub_1000292F4(va);
  sub_1000292AC(va1);

  _Unwind_Resume(a1);
}

uint64_t *sub_1000292AC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10005DEDC(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1000292F4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1000EB4A8();
    operator delete();
  }

  return a1;
}

id sub_100029504(uint64_t a1)
{
  v10[0] = @"rat";
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) ratType];
  v11[0] = v3;
  v10[1] = @"qoe_score";
  v4 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*v2 qoeScore]);
  v11[1] = v4;
  v10[2] = @"qoe_duration";
  v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) qoeDuration]);
  v11[2] = v5;
  v10[3] = @"duration";
  v6 = [NSNumber numberWithDouble:*(a1 + 40)];
  v11[3] = v6;
  v10[4] = @"ps_pref";
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) psPref]);
  v11[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

uint64_t sub_1000297A4(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100008350(v3);
  }

  return a1;
}

uint64_t sub_1000297FC(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100008350(v3);
  }

  return a1;
}

uint64_t sub_10002986C()
{
  if ((byte_1002D4828 & 1) == 0)
  {
    byte_1002D4828 = 1;
    return __cxa_atexit(sub_100029738, &stru_1002D47D8, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000298A8()
{
  if ((byte_1002D4880 & 1) == 0)
  {
    byte_1002D4880 = 1;
    return __cxa_atexit(sub_10002973C, &stru_1002D4830, &_mh_execute_header);
  }

  return result;
}

void sub_100029AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100029B2C(uint64_t a1)
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FBA60();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained notifyClient];
  }
}

void sub_100029C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = FMRegulatoryDomainController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100029F30(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

intptr_t sub_10002A1D0(uint64_t a1)
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FBB40();
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t sub_10002A224(uint64_t a1)
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FBB74();
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10002AE6C(uint64_t a1, xpc_object_t *a2)
{
  *a1 = off_1002AB328;
  if (xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    v8 = a2;
    v9 = "WISMessageType";
    sub_100007DA4(&v8, &object);
    v5 = xpc::dyn_cast_or_default(&object, 0, v4);
    xpc_release(object);
    if (v5 == 15)
    {
      v8 = a2;
      v9 = "WISMessageComponentIdKey";
      sub_100007DA4(&v8, &object);
      *(a1 + 8) = xpc::dyn_cast_or_default(&object, 0, v6);
      xpc_release(object);
    }
  }

  return a1;
}

void sub_10002AF84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
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
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v11 = xpc_int64_create(15);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v9 = a2;
  v10 = "WISMessageType";
  sub_10000F50C(&v9, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v7 = xpc_int64_create(*(a1 + 8));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v9 = a2;
  v10 = "WISMessageComponentIdKey";
  sub_10000F50C(&v9, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
}

void sub_10002B3B4(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D48E8);

  _Unwind_Resume(a1);
}

uint64_t sub_10002B420(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100008350(v3);
  }

  return a1;
}

void sub_10002B4A4(uint64_t a1)
{

  operator delete();
}

id sub_10002B558(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = off_1002AB378;
  a2[1] = v4;
  result = objc_retainBlock(v3);
  a2[2] = result;
  return result;
}

void sub_10002B5A8(id *a1)
{

  operator delete(a1);
}

void sub_10002B5E4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "FederatedMobility[FMGEOServicesHandler]:#I Crowdsourced OOS learnings: Inside getCellularCoverageTileConfiguration", v7, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_10002B748;
  v7[3] = &unk_1002AB3F0;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = v4;
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v7);
  dispatch_release(*(a1 + 8));
  if (v10)
  {
    sub_100008350(v10);
  }

  if (v3)
  {
    sub_100008350(v3);
  }
}

uint64_t sub_10002B6FC(uint64_t a1, uint64_t a2)
{
  if (sub_10002B87C(a2, &off_1002AB420))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10002B748(void *a1)
{
  v2 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "FederatedMobility[FMGEOServicesHandler]:#I Crowdsourced OOS learnings: On queue", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[6];
  v6 = a1[5];
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v3 + 16))(v3, &v6);
  if (v7)
  {
    sub_100008350(v7);
  }

  v5 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "FederatedMobility[FMGEOServicesHandler]:#I Crowdsourced OOS learnings: Block executed", buf, 2u);
  }
}

void sub_10002B838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002B850(uint64_t result, uint64_t a2)
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

void sub_10002B86C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

BOOL sub_10002B87C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_10002B8D0(uint64_t a1)
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

uint64_t sub_10002B950()
{
  if ((byte_1002D4938 & 1) == 0)
  {
    byte_1002D4938 = 1;
    return __cxa_atexit(sub_10002B41C, &stru_1002D48E8, &_mh_execute_header);
  }

  return result;
}

void sub_10002C244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  if (v15)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10002D5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a16)
  {
  }

  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);

  _Unwind_Resume(a1);
}

void *sub_10002D800(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = a4;
  *(*(result[7] + 8) + 24) = a5;
  return result;
}

void *sub_10002D834(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = a4;
  *(*(result[7] + 8) + 24) = a5;
  return result;
}

void sub_10002E430(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1002D82E0;
  qword_1002D82E0 = v1;
}

void sub_10002E680(uint64_t a1)
{
  v2 = [*(a1 + 32) ctRelay];
  [v2 addTelephonyStateDelegate:*(a1 + 32) withQueue:{objc_msgSend(*(a1 + 32), "queue")}];

  [*(a1 + 32) populateActiveDataContextInfo];
  v3 = [*(a1 + 32) networkPathMonitor];

  nw_path_monitor_start(v3);
}

void sub_10002E784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WISRatDataUsageMetric;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10002F054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 96), 8);
  _Unwind_Resume(a1);
}

BOOL sub_10002F0A0(uint64_t a1, nw_interface_t interface)
{
  type = nw_interface_get_type(interface);
  if (type == *(a1 + 56) || (type & 0xFFFFFFFB) == 0)
  {
    return 1;
  }

  v6 = type;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = type != nw_interface_type_cellular;
  if (type != nw_interface_type_cellular && v7 == 1)
  {
    return 1;
  }

  v9 = 1;
  if (type != nw_interface_type_wired || v7 != 3)
  {
    *(*(*(a1 + 40) + 8) + 24) = nw_interface_get_index(interface);
    *(*(*(a1 + 32) + 8) + 24) = v6;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    return v8;
  }

  return v9;
}

uint64_t sub_10002FD64(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_10002FD70(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_10002FD8C(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_10002FF60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void sub_100030064(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void sub_100030168(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void sub_10003026C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

const char *sub_10003087C(unsigned int a1)
{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_1002ABAB8[a1];
  }
}

void *sub_1000308A0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  return a1;
}

void sub_1000308E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000337A0(va);
  _Unwind_Resume(a1);
}

void sub_100030ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (a14)
  {
    sub_100008350(a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100008350(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100030B6C(uint64_t result, uint64_t a2)
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

void sub_100030B88(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_100030B98(void *a1)
{
  v1 = sub_100030CAC(a1, "WISGEOServicesHandler", QOS_CLASS_UTILITY, "wis.geo");
  v1[10] = 0;
  *(v1 + 5) = 0u;
  *(v1 + 7) = 0u;
  v1[9] = v1 + 10;
  v1[12] = 0;
  v1[13] = 0;
  v1[11] = 0;
  *(v1 + 112) = 0;
  sub_100033C60();
}

void sub_100030C68(_Unwind_Exception *a1)
{
  sub_100033C00(v2 - 8, *(v1 + 80));
  v4 = *(v1 + 64);
  if (v4)
  {
    sub_100008350(v4);
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    sub_100008350(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 32));
  sub_100032AD8(v1);
  _Unwind_Resume(a1);
}

void *sub_100030CAC(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

void *sub_100030D50(uint64_t a1)
{
  sub_100033C00(a1 + 72, *(a1 + 80));
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_100008350(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));

  return sub_100032AD8(a1);
}

void sub_100030DB0(uint64_t a1)
{
  v2 = dispatch_time(0, 60000000000);
  v3 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030E40;
  block[3] = &unk_1002AB480;
  block[4] = a1;
  dispatch_after(v2, v3, block);
}

void sub_100030E40(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "#I WISGEOServicesHandler start location updates", &v5, 2u);
  }

  pthread_mutex_lock(&stru_1002D47D8);
  v2 = xmmword_1002D4818;
  if (!xmmword_1002D4818)
  {
    sub_100082658(&v5);
    v3 = v5;
    v5 = 0uLL;
    v4 = *(&xmmword_1002D4818 + 1);
    xmmword_1002D4818 = v3;
    if (v4)
    {
      sub_100008350(v4);
      if (*(&v5 + 1))
      {
        sub_100008350(*(&v5 + 1));
      }
    }

    v2 = xmmword_1002D4818;
  }

  if (*(&xmmword_1002D4818 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4818 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D47D8);
  sub_100083040(v2);
}

void sub_100030F64(void *a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 2)
  {
    sub_1000081C8(&v7, a1);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100031198;
    v6[3] = &unk_1002AB568;
    v6[4] = a1;
    sub_1000310A8(a3, &v7, v6);
    v5 = v8;
    if (!v8)
    {
      return;
    }

    goto LABEL_4;
  }

  if (!*a2)
  {
    sub_1000081C8(&v10, a1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = nullsub_15;
    v9[3] = &unk_1002AB568;
    v9[4] = a1;
    sub_1000310A8(a3, &v10, v9);
    v5 = v11;
    if (v11)
    {
LABEL_4:
      sub_100008350(v5);
    }
  }
}

void sub_100031080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008350(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100031098()
{
  if (!*(v0 - 24))
  {
    JUMPOUT(0x100031090);
  }

  JUMPOUT(0x10003108CLL);
}

void sub_1000310A8(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100033FE8;
  v9[3] = &unk_1002AB790;
  v7 = *a2;
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5;
  v10 = v8;
  sub_100160E88(a1, (v7 + 16), v9);

  if (v12)
  {
    sub_100008350(v12);
  }
}

void sub_100031170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008350(a16);
  }

  _Unwind_Resume(a1);
}

void sub_100031198(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000081C8(&v5, v1);
  v2 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100008350(v2);
    v3 = **(v1 + 56);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = **(v1 + 56);
  }

  v7 = 0;
  operator new();
}

void sub_1000313F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000330D8(va);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10003146C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#I Shutting down WISGEOServicesHandler", buf, 2u);
  }

  sub_1000081C8(&v6, a1);
  sub_100031520(a3, &v6, &stru_1002AB5A8);
  if (v7)
  {
    sub_100008350(v7);
  }
}

void sub_100031508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100031520(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100034EF4;
  v9[3] = &unk_1002ABA48;
  v7 = *a2;
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5;
  v10 = v8;
  sub_100160D80(a1, (v7 + 16), v9);

  if (v12)
  {
    sub_100008350(v12);
  }
}

void sub_1000315E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008350(a16);
  }

  _Unwind_Resume(a1);
}

int32x2_t *sub_100031610(uint64_t a1, int32x2_t **a2)
{
  v2 = *(a1 + 40);
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  sub_1000CB6F0(v2, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_10003167C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001FC90C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100031698(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  v22[0] = a4;
  v22[1] = a5;
  v10 = sub_10003547C(a1 + 72, v22);
  if ((a1 + 80) == v10)
  {
    sub_1000308A0(&v18);
    v15 = v19;
    if (v19 >= v20)
    {
      v16 = sub_100035504(&v18, a3);
    }

    else
    {
      sub_100034F8C(v19, a3);
      v16 = v15 + 32;
    }

    v19 = v16;
    v21 = a2;
    sub_1000356D4(a1 + 72, v22);
    v17 = [[GEOLocation alloc] initWithLatitude:a4 longitude:a5];
    [v17 setHorizontalAccuracy:0.0];
    [**(a1 + 56) updateLocation:v17];

    v23 = &v18;
    sub_1000337A0(&v23);
  }

  else
  {
    v11 = v10;
    v12 = *(a1 + 32);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#I Detected a outstanding fetch request for the given location", &v18, 2u);
    }

    v13 = v11[7];
    if (v13 >= v11[8])
    {
      v14 = sub_100035504(v11 + 6, a3);
    }

    else
    {
      sub_100034F8C(v11[7], a3);
      v14 = v13 + 32;
      v11[7] = v13 + 32;
    }

    v11[7] = v14;
  }
}

void sub_10003180C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a9;
  sub_1000337A0(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100031850(uint64_t a1)
{
  v5 = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100034F04;
  v6[3] = &unk_1002ABA78;
  v6[4] = a1;
  v6[5] = &v5;
  v7 = objc_retainBlock(v6);
  v2 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100034F50;
    v11 = &unk_1002ABA98;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100034F14;
    v11 = &unk_1002ABA98;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  v3 = v14;

  return v3 & 1;
}

void sub_10003199C(void *a1, unsigned int a2, uint64_t a3, double a4, double a5)
{
  v10 = a1[4];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134546179;
    *&buf[4] = a4;
    *&buf[12] = 2053;
    *&buf[14] = a5;
    *&buf[22] = 2080;
    v13 = sub_10003087C(a2);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#I Request to get cellular tile config for latitude:%{sensitive}lf, longitude: %{sensitive}lf with reason %s", buf, 0x20u);
  }

  *buf = a1;
  *&buf[8] = a4;
  *&buf[16] = a5;
  LOBYTE(v13) = a2;
  sub_100034F8C(&v14, a3);
  sub_1000081C8(&v11, a1);
  operator new();
}

void sub_100031B5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void sub_100031B74(void *a1, char a2, uint64_t a3)
{
  v6 = a1[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = a1[12];
    v8 = a1[13];
    *buf = 134283777;
    *&buf[4] = v7;
    v11 = 2049;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#I Request to get cellular tile config for latitude:%{private}lf, longitude: %{private}lf", buf, 0x16u);
  }

  *buf = a1;
  buf[8] = a2;
  sub_100034F8C(&v12 + 2, a3);
  sub_1000081C8(&v9, a1);
  operator new();
}

void sub_100031D10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void ***sub_100031D28(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1001FC944(v6, a2, a3);
  }

  v11[0] = a2;
  v11[1] = a3;
  sub_100032290(a1, v11, &v10);
  v7 = v10;
  if (v10)
  {
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v8 = v7[4];
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_1001FCA9C();
  }

  return sub_10003246C(&v10);
}

void sub_10003215C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v19 = va_arg(va1, void);
  v18 = *(v16 - 88);
  if (v18)
  {
    sub_100008350(v18);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  sub_100032424(va);
  sub_10003246C(va1);
  _Unwind_Resume(a1);
}

double *sub_100032290@<X0>(uint64_t a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  result = sub_10003547C(a1 + 72, a2);
  if ((a1 + 80) != result)
  {
    operator new();
  }

  *a3 = 0;
  return result;
}

void sub_10003235C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v6 = *(v3 + 24);
      if (v6)
      {
        v7 = a3[1];
        v8 = *a3;
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          v6 = *(v3 + 24);
          if (!v6)
          {
            sub_1000334A4();
          }
        }

        (*(*v6 + 48))(v6, &v8);
        if (v9)
        {
          sub_100008350(v9);
        }
      }

      v3 += 32;
    }

    while (v3 != v4);
  }
}

void sub_100032408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100032424(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1000AF73C();
    operator delete();
  }

  return a1;
}

void ***sub_10003246C(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1;
    sub_1000337A0(&v2);
    operator delete();
  }

  return result;
}

void ***sub_1000324C8(uint64_t a1, double a2, double a3)
{
  v8[0] = a2;
  v8[1] = a3;
  sub_100032290(a1, v8, &v7);
  v4 = v7;
  if (v7)
  {
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v5 = v4[4];
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_1001FCA9C();
  }

  return sub_10003246C(&v7);
}

void sub_100032770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_100032424(&a12);
  sub_10003246C(&a13);
  _Unwind_Resume(a1);
}

void ***sub_100032814(uint64_t a1, double a2, double a3)
{
  v12[0] = a2;
  v12[1] = a3;
  sub_100032290(a1, v12, &v11);
  v6 = v11;
  v7 = *(a1 + 32);
  if (v11)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134545921;
      *&buf[4] = a2;
      *&buf[12] = 2053;
      *&buf[14] = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#I Failed to obtain data with no new results for latitude: %{sensitive}lf, longitude: %{sensitive}lf", buf, 0x16u);
      v6 = v11;
    }

    memset(buf, 0, sizeof(buf));
    v8 = sub_1000352EC(buf, *v6, v6[1], (v6[1] - *v6) >> 5);
    v10[0] = 0;
    v10[1] = 0;
    sub_10003235C(v8, buf, v10);
    v13 = buf;
    sub_1000337A0(&v13);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001FCA9C();
  }

  return sub_10003246C(&v11);
}

void sub_100032944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1000337A0(va1);
  sub_10003246C(va);
  _Unwind_Resume(a1);
}

void ***sub_100032974(uint64_t a1, double a2, double a3)
{
  v12[0] = a2;
  v12[1] = a3;
  sub_100032290(a1, v12, &v11);
  v6 = v11;
  v7 = *(a1 + 32);
  if (v11)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134545921;
      *&buf[4] = a2;
      *&buf[12] = 2053;
      *&buf[14] = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#I Failed to obtain data for skipped latitude: %{sensitive}lf, longitude: %{sensitive}lf", buf, 0x16u);
      v6 = v11;
    }

    memset(buf, 0, sizeof(buf));
    v8 = sub_1000352EC(buf, *v6, v6[1], (v6[1] - *v6) >> 5);
    v10[0] = 0;
    v10[1] = 0;
    sub_10003235C(v8, buf, v10);
    v13 = buf;
    sub_1000337A0(&v13);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001FCA9C();
  }

  return sub_10003246C(&v11);
}

void sub_100032AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1000337A0(va1);
  sub_10003246C(va);
  _Unwind_Resume(a1);
}

void *sub_100032AD8(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t sub_100032B20(uint64_t a1, uint64_t a2)
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

uint64_t sub_100032BA0(uint64_t a1)
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

id **sub_100032C20(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100032BA0((v1 + 1));

    operator delete();
  }

  return result;
}

id **sub_100032C78(id *a1)
{
  v2 = a1;
  sub_100032CB4(*a1 + 24, (a1 + 1));
  return sub_100032C20(&v2);
}

uint64_t sub_100032CB4(uint64_t a1, uint64_t a2)
{
  sub_100032D38(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100032D38(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100032DBC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100032E3C(uint64_t a1)
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

id **sub_100032EBC(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100032E3C((v1 + 1));

    operator delete();
  }

  return result;
}

id **sub_100032F14(id *a1)
{
  v2 = a1;
  sub_100032F50(*a1 + 56, (a1 + 1));
  return sub_100032EBC(&v2);
}

uint64_t sub_100032F50(uint64_t a1, uint64_t a2)
{
  sub_100032FD4(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100032FD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100033058(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000330D8(uint64_t a1)
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

id **sub_100033158(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000330D8((v1 + 1));

    operator delete();
  }

  return result;
}

id **sub_1000331B0(id *a1)
{
  v2 = a1;
  sub_1000331EC(*a1 + 88, (a1 + 1));
  return sub_100033158(&v2);
}

uint64_t sub_1000331EC(uint64_t a1, uint64_t a2)
{
  sub_100033270(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100033270(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

id **sub_1000332F4(id *a1)
{
  v2 = a1;
  sub_1000331EC(*a1 + 120, (a1 + 1));
  return sub_100033158(&v2);
}

id **sub_100033330(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

id **sub_100033390(uint64_t a1)
{
  v2 = a1;
  if (*(*a1 + 48))
  {
    sub_1000333F0(*a1 + 24, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  return sub_100033330(&v2);
}

void sub_1000333DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100033330(va);
  _Unwind_Resume(a1);
}

void sub_1000333F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a3;
  v9 = a2;
  v7 = a4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    sub_1000334A4();
  }

  (*(*v6 + 48))(v6, &v9, &v8, &v7);
}

void sub_1000334A4()
{
  exception = __cxa_allocate_exception(8uLL);
}

id **sub_1000334F0(uint64_t a1)
{
  v2 = a1;
  if (*(*a1 + 80))
  {
    sub_100033550(*a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  return sub_100033330(&v2);
}

void sub_10003353C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100033330(va);
  _Unwind_Resume(a1);
}

void sub_100033550(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a3;
  v9 = a2;
  v7 = a4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    sub_1000334A4();
  }

  (*(*v6 + 48))(v6, &v9, &v8, &v7);
}

id **sub_100033604(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

id **sub_10003365C(uint64_t a1)
{
  v2 = a1;
  if (*(*a1 + 112))
  {
    sub_1000336B8(*a1 + 88, *(a1 + 8), *(a1 + 16));
  }

  return sub_100033604(&v2);
}

void sub_1000336A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100033604(va);
  _Unwind_Resume(a1);
}

void sub_1000336B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_1000334A4();
  }

  (*(*v4 + 48))(v4, &v6, &v5);
}

id **sub_100033744(uint64_t a1)
{
  v2 = a1;
  if (*(*a1 + 144))
  {
    sub_1000336B8(*a1 + 120, *(a1 + 8), *(a1 + 16));
  }

  return sub_100033604(&v2);
}

void sub_10003378C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100033604(va);
  _Unwind_Resume(a1);
}

void sub_1000337A0(void ***a1)
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
        v4 = sub_10002B8D0(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10003389C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_1000339F8);
  __cxa_rethrow();
}

void sub_1000338D8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_100008350(v5);
      }
    }
  }
}

void sub_100033964(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000339B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000339F8(uint64_t result)
{
  if (result)
  {
    sub_100030D50(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100033A38(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100008350(v3);
  }

  return a1;
}

void *sub_100033A90(void *a1)
{
  *a1 = off_1002AB690;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_100033ADC(void *a1)
{
  *a1 = off_1002AB690;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_100033B58@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

void sub_100033BCC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100033C00(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100033C00(a1, *a2);
    sub_100033C00(a1, *(a2 + 1));
    v4 = (a2 + 48);
    sub_1000337A0(&v4);
    operator delete(a2);
  }
}

void *sub_100033CBC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002AB6F8;
  sub_1000CB6EC(a1 + 3);
  return a1;
}

void sub_100033D38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002AB6F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100033DF4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1002AB748;
  sub_100033F08((a1 + 24));
  return a1;
}