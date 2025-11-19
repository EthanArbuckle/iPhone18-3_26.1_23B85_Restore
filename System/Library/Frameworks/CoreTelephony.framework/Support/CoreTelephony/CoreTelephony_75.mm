void sub_1004C68B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  TrafficDescriptor::~TrafficDescriptor(&STACK[0x200]);
  sub_1004C6A2C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004C6A2C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1004C0FB8(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1004C6A8C(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v9 = a2;
  v7 = a5;
  v8 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_100022DB4();
  }

  return (*(*v5 + 48))(v5, &v9, &v8, a4, &v7);
}

std::string *sub_1004C6AEC@<X0>(std::string *__str@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size > v4)
  {
    std::string::basic_string(&__p, __str, 0, v4, &v17);
    v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    v10 = *(a2 + 23);
    v11 = v10;
    if (v10 < 0)
    {
      v10 = a2[1];
    }

    if (v9 == v10)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v11 >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      v14 = memcmp(p_p, v13, v9) == 0;
      if (v8 < 0)
      {
LABEL_27:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v14)
        {
          return sub_10000501C(a3, "");
        }

        return std::string::basic_string(a3, __str, v4, 0xFFFFFFFFFFFFFFFFLL, &__p);
      }
    }

    else
    {
      v14 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_27;
      }
    }

    if (!v14)
    {
      return sub_10000501C(a3, "");
    }

    return std::string::basic_string(a3, __str, v4, 0xFFFFFFFFFFFFFFFFLL, &__p);
  }

  return sub_10000501C(a3, "");
}

uint64_t sub_1004C6C4C(uint64_t a1)
{
  sub_1004C0FB8(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1004C6C88(uint64_t a1)
{
  *a1 = off_101E50A28;
  sub_1004C0FB8(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1004C6CDC(uint64_t a1)
{
  *a1 = off_101E50A28;
  sub_1004C0FB8(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1004C6E10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E50A28;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  return sub_1004C6168(a2 + 40, a1 + 40);
}

void sub_1004C6E88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C6EAC(void *a1)
{
  sub_1004C763C(a1 + 8);

  operator delete(a1);
}

void sub_1004C6EE8(uint64_t a1, unsigned int *a2, int *a3)
{
  v4 = *a2;
  v5 = *a3;
  TrafficDescriptor::TrafficDescriptor();
  v6 = *(a1 + 8);
  v7 = (*(**(v6 + 6) + 16))(*(v6 + 6), v4);
  if (isSlice())
  {
    v8 = (*(*v6 + 1120))(v6);
    v9 = (*(*v6 + 1120))(v6);
    v10 = (*(*v6 + 1120))(v6);
    v11 = (*(*v6 + 1064))(v6, v10);
    v39 = 0;
    LOBYTE(v8) = DataServiceController::SlicesDataContainer::configured(v6 + 4960, v8, v9, v11, v38);
    sub_100007E44(v38);
    if (v8)
    {
      v32 = 0;
      v33 = 0;
      DataServiceController::getConnection_sync(v6, v4, v5, &v32);
      if (!v32)
      {
        v20 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v21 = a1 + 16;
          if (*(a1 + 39) < 0)
          {
            v21 = *(a1 + 16);
          }

          *buf = 136315138;
          *&buf[4] = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N Slice requested for %s: failure (3): ???", buf, 0xCu);
        }

        memset(buf, 0, sizeof(buf));
        sub_1004C6A8C(a1 + 40, 0, 0, buf, 61);
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        v22 = *buf;
        goto LABEL_50;
      }

      v30 = 0uLL;
      v31 = 0;
      if ((*(*v32 + 168))(v32))
      {
        (*(*v32 + 464))(buf);
        v12 = *v7;
        v31 = *&buf[16];
        v30 = *buf;
        v13 = HIBYTE(*&buf[16]);
        v14 = buf[23];
        if ((buf[23] & 0x80u) != 0)
        {
          v13 = *(&v30 + 1);
        }

        if (!v13)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v15 = a1 + 16;
            if (*(a1 + 39) < 0)
            {
              v15 = *(a1 + 16);
            }

            *buf = 136315138;
            *&buf[4] = v15;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E Slice requested for %s: failure (4): interface name empty", buf, 0xCu);
          }

          memset(buf, 0, sizeof(buf));
          sub_1004C6A8C(a1 + 40, 0, 0, buf, 61);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

LABEL_48:
          if ((v14 & 0x80) == 0)
          {
            goto LABEL_51;
          }

          v22 = v30;
LABEL_50:
          operator delete(v22);
LABEL_51:
          if (v33)
          {
            sub_100004A34(v33);
          }

          goto LABEL_53;
        }
      }

      else
      {
        v14 = 0;
        v12 = *v7;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 39) >= 0)
        {
          v23 = a1 + 16;
        }

        else
        {
          v23 = *(a1 + 16);
        }

        v24 = v28;
        TrafficDescriptor::toString(v28, v27);
        if (v29 < 0)
        {
          v24 = v28[0];
        }

        (*(*v32 + 488))(v32);
        v25 = asString();
        v26 = v30;
        if (v14 >= 0)
        {
          v26 = &v30;
        }

        *buf = 136315906;
        *&buf[4] = v23;
        *&buf[12] = 2082;
        *&buf[14] = v24;
        *&buf[22] = 2080;
        v35 = v25;
        v36 = 2080;
        v37 = v26;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Slice requested for %s: TrafficDescriptor traffic forward: %{public}s to %s, current interface name: %s", buf, 0x2Au);
        if (v29 < 0)
        {
          operator delete(v28[0]);
        }
      }

      DataServiceController::saveForwardedApp(v6, v27);
      if (SHIBYTE(v31) < 0)
      {
        sub_100005F2C(buf, v30, *(&v30 + 1));
      }

      else
      {
        *buf = v30;
        *&buf[16] = v31;
      }

      sub_1004C6A8C(a1 + 40, v4, v5, buf, 0);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      (*(*v32 + 448))(v32, v27);
      LOBYTE(v14) = HIBYTE(v31);
      goto LABEL_48;
    }

    v18 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1 + 16;
      if (*(a1 + 39) < 0)
      {
        v19 = *(a1 + 16);
      }

      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N Slice requested for %s: failure (2): do not have slicing allowed", buf, 0xCu);
    }
  }

  else
  {
    v16 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1 + 16;
      if (*(a1 + 39) < 0)
      {
        v17 = *(a1 + 16);
      }

      *buf = 136315138;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#N Slice requested for %s: failure (1)", buf, 0xCu);
    }
  }

  memset(buf, 0, sizeof(buf));
  sub_1004C6A8C(a1 + 40, 0, 0, buf, 61);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

LABEL_53:
  TrafficDescriptor::~TrafficDescriptor(v27);
}

void sub_1004C7538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 - 153) < 0)
  {
    operator delete(*(v2 - 176));
  }

  if (*(v2 - 201) < 0)
  {
    operator delete(*(v2 - 224));
  }

  v4 = *(v2 - 184);
  if (v4)
  {
    sub_100004A34(v4);
  }

  TrafficDescriptor::~TrafficDescriptor(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C75F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004C763C(uint64_t a1)
{
  sub_1004C0FB8(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t sub_1004C768C(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1004C7730();
  }

  return result;
}

void sub_1004C77CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004C77E8(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *v1;
  v3 = *(*v1 + 112);
  __p = *(*v1 + 104);
  v30 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v30)
  {
    sub_100004A34(v30);
  }

  v4 = *(&v36 + 1);
  v5 = v36;
  if (v36 == *(&v36 + 1))
  {
    goto LABEL_53;
  }

  v6 = v37;
  do
  {
    if (v37(*v5))
    {
      break;
    }

    ++v5;
  }

  while (v5 != *(&v36 + 1));
  v25 = *(&v36 + 1);
  if (v5 == *(&v36 + 1))
  {
LABEL_53:
    v22 = *(v2 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = (v1 + 8);
      if (*(v1 + 31) < 0)
      {
        v23 = *v23;
      }

      LODWORD(v36) = 136315138;
      *(&v36 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I requestSliceDeactivation: cannot find interface %s", &v36, 0xCu);
    }
  }

  else
  {
LABEL_10:
    v7 = *v5;
    v8 = 28;
    while (1)
    {
      v32 = 0;
      v33 = 0;
      DataServiceController::getConnection_sync(v2, v7, v8, &v32);
      if (v32 && ((*(*v32 + 168))(v32) & 1) != 0)
      {
        __p = 0;
        v30 = 0;
        v31 = 0;
        v9 = (*(*v32 + 416))(v32, &__p);
        if (v31 >= 0)
        {
          v10 = HIBYTE(v31);
        }

        else
        {
          v10 = v30;
        }

        v11 = *(v1 + 31);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v1 + 16);
        }

        if (v10 == v11 && ((v13 = v9, v31 >= 0) ? (v14 = &__p) : (v14 = __p), v12 >= 0 ? (v15 = (v1 + 8)) : (v15 = *(v1 + 8)), !memcmp(v14, v15, v10)))
        {
          mustKeepSliceAliveAll_sync = DataServiceController::mustKeepSliceAliveAll_sync(v2, v8, v13, &v28, 0, 0, 1);
          if (mustKeepSliceAliveAll_sync & 0x100) != 0 && (mustKeepSliceAliveAll_sync)
          {
            v18 = *(v2 + 40);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              if (v31 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              *buf = 136315138;
              v35 = p_p;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I requestSliceDeactivation: cannot deactivate interface %s", buf, 0xCu);
            }
          }

          else
          {
            v20 = *(v2 + 40);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              if (v31 >= 0)
              {
                v21 = &__p;
              }

              else
              {
                v21 = __p;
              }

              *buf = 136315138;
              v35 = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I requestSliceDeactivation: found interface %s", buf, 0xCu);
            }

            (*(*v32 + 96))(v32, "slice deactivation requested", "CommCenter");
          }

          v16 = 1;
        }

        else
        {
          v16 = 0;
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v16 = 6;
      }

      if (v33)
      {
        sub_100004A34(v33);
      }

      if (v16 != 6 && v16)
      {
        break;
      }

      v8 = (v8 + 1);
      if (v8 == 36)
      {
        do
        {
          ++v5;
        }

        while (v5 != v4 && (v6(*v5) & 1) == 0);
        if (v5 != v25)
        {
          goto LABEL_10;
        }

        goto LABEL_53;
      }
    }
  }

  sub_1000EF424(&v27);
  return sub_1000049E0(&v26);
}

void sub_1004C7BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, std::__shared_weak_count *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_1000EF424(&a14);
  sub_1000049E0(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C7C0C()
{
  v1 = 52429500;
  sub_1004C1038(&qword_101FBA3C0, &v1, 2);
  return __cxa_atexit(sub_1004A15F0, &qword_101FBA3C0, &_mh_execute_header);
}

void *sub_1004C7C78(void *result, uint64_t a2)
{
  *result = off_101E50AA8;
  result[1] = a2;
  return result;
}

uint64_t sub_1004C7CD4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  return (*(*a1 + 24))(a1, a2, v5, a3);
}

uint64_t sub_1004C7D14(void **a1, void *a2, const void *a3, void **a4)
{
  memset(&c, 0, sizeof(c));
  *md = 0;
  v37 = 0;
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, a2, a3);
  CC_MD5_Final(md, &c);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  sub_10000D518(&v16);
  buf[0] = 48;
  sub_1004C80C4(&v16, buf);
  v8 = 0;
  *(&v17[-1] + *(v16 - 24) + 8) = *(&v17[-1] + *(v16 - 24) + 8) & 0xFFFFFFB5 | 8;
  do
  {
    *(v17 + *(v16 - 24) + 8) = 2;
    std::ostream::operator<<();
    ++v8;
  }

  while (v8 != 16);
  sub_10000D684(&v16, buf);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = *buf;
  a4[2] = *&buf[16];
  v9 = *a1[1];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = ((*a1)[5])(a1);
    ctu::hex(v14, a2, a3, v12);
    if (v15 >= 0)
    {
      v13 = v14;
    }

    else
    {
      v13 = v14[0];
    }

    if (*(a4 + 23) < 0)
    {
      a4 = *a4;
    }

    *buf = 136315906;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = ", ";
    *&buf[22] = 2080;
    v33 = v13;
    v34 = 2080;
    v35 = a4;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#D %s%scomputeDigest, data:0x%s -> %s", buf, 0x2Au);
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_1004C8098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void *sub_1004C80C4(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t sub_1004C818C(void **a1, void *a2, const void *a3, void *a4, const void *a5, uint64_t a6)
{
  v12 = *a6;
  v14 = *(a6 + 8) - v12;
  if (v14 > 0xF)
  {
    if (v14 != 16)
    {
      *(a6 + 8) = v12 + 16;
    }
  }

  else
  {
    sub_10018D3CC(a6, 16 - v14);
    v12 = *a6;
  }

  CCHmac(1u, a2, a3, a4, a5, v12);
  v15 = *a1[1];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = ((*a1)[5])(a1);
    ctu::hex(v29, a2, a3, v18);
    if (v30 >= 0)
    {
      v20 = v29;
    }

    else
    {
      v20 = v29[0];
    }

    ctu::hex(v27, a4, a5, v19);
    v21 = v28;
    v22 = v27[0];
    ctu::hex();
    v23 = v27;
    if (v21 < 0)
    {
      v23 = v22;
    }

    if (v26 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136316162;
    v32 = v17;
    v33 = 2080;
    v34 = ", ";
    v35 = 2080;
    v36 = v20;
    v37 = 2080;
    v38 = v23;
    v39 = 2080;
    v40 = p_p;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#D %s%scomputeHmac, key:0x%s, data:0x%s -> %s", buf, 0x34u);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  return 1;
}

void sub_1004C83A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C83DC(void **a1, void *a2, const void *a3, void **a4)
{
  memset(&c, 0, sizeof(c));
  memset(md, 0, sizeof(md));
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, a2, a3);
  CC_SHA256_Final(md, &c);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  sub_10000D518(&v16);
  buf[0] = 48;
  sub_1004C80C4(&v16, buf);
  v8 = 0;
  *(&v17[-1] + *(v16 - 24) + 8) = *(&v17[-1] + *(v16 - 24) + 8) & 0xFFFFFFB5 | 8;
  do
  {
    *(v17 + *(v16 - 24) + 8) = 2;
    std::ostream::operator<<();
    ++v8;
  }

  while (v8 != 32);
  sub_10000D684(&v16, buf);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = *buf;
  a4[2] = *&buf[16];
  v9 = *a1[1];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = ((*a1)[5])(a1);
    ctu::hex(v14, a2, a3, v12);
    if (v15 >= 0)
    {
      v13 = v14;
    }

    else
    {
      v13 = v14[0];
    }

    if (*(a4 + 23) < 0)
    {
      a4 = *a4;
    }

    *buf = 136315906;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = ", ";
    *&buf[22] = 2080;
    v33 = v13;
    v34 = 2080;
    v35 = a4;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#D %s%scomputeDigest, data:0x%s -> %s", buf, 0x2Au);
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_1004C8764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C8790(void **a1, void *a2, const void *a3, void *a4, const void *a5, uint64_t a6)
{
  v12 = *a6;
  v14 = *(a6 + 8) - v12;
  if (v14 > 0x1F)
  {
    if (v14 != 32)
    {
      *(a6 + 8) = v12 + 32;
    }
  }

  else
  {
    sub_10018D3CC(a6, 32 - v14);
    v12 = *a6;
  }

  CCHmac(2u, a2, a3, a4, a5, v12);
  v15 = *a1[1];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = ((*a1)[5])(a1);
    ctu::hex(v29, a2, a3, v18);
    if (v30 >= 0)
    {
      v20 = v29;
    }

    else
    {
      v20 = v29[0];
    }

    ctu::hex(v27, a4, a5, v19);
    v21 = v28;
    v22 = v27[0];
    ctu::hex();
    v23 = v27;
    if (v21 < 0)
    {
      v23 = v22;
    }

    if (v26 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136316162;
    v32 = v17;
    v33 = 2080;
    v34 = ", ";
    v35 = 2080;
    v36 = v20;
    v37 = 2080;
    v38 = v23;
    v39 = 2080;
    v40 = p_p;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#D %s%scomputeHmac, key:0x%s, data:0x%s -> %s", buf, 0x34u);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  return 1;
}

void sub_1004C89A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C89E0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = a2;
  operator new();
}

uint64_t sub_1004C8AA4(uint64_t a1)
{
  for (i = *(a1 + 16); i; i = *i)
  {
    v3 = i[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return sub_1001754E8(a1);
}

const void **sub_1004C8B18(void *a1, const void **a2)
{
  result = sub_10031B8D0(a1, a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

const void **sub_1004C8BA4(void *a1, const void **a2)
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
    sub_1004C8E28();
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

void sub_1004C8E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1001758B4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C8ECC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001758B4(v3, v2);
  _Unwind_Resume(a1);
}

void DataModel::DataModel(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 128) = -1;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 182) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  CSIPacketAddress::CSIPacketAddress((a1 + 196));
  CSIPacketAddress::CSIPacketAddress((a1 + 220));
  CSIPacketAddress::CSIPacketAddress((a1 + 244));
  CSIPacketAddress::CSIPacketAddress((a1 + 268));
  CSIPacketAddress::CSIPacketAddress((a1 + 292));
  MCCAndMNC::MCCAndMNC((a1 + 320));
  *(a1 + 384) = 11;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  sub_1004CA38C();
}

void sub_1004C8FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *(v10 + 408);
  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_1002FECBC(v10 + 320);
  if (*(v10 + 183) < 0)
  {
    operator delete(*v11);
  }

  v14 = *(v10 + 144);
  if (v14)
  {
    sub_100004A34(v14);
  }

  a10 = (v10 + 104);
  sub_1001DFF90(&a10);
  sub_10001E200(&a10);
  a10 = (v10 + 56);
  sub_1000212F4(&a10);
  v15 = *(v10 + 48);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(v10 + 32);
  if (v16)
  {
    sub_100004A34(v16);
  }

  a10 = v10;
  sub_1000212F4(&a10);
  _Unwind_Resume(a1);
}

void DataModel::~DataModel(DataModel *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(this + 383) < 0)
  {
    operator delete(*(this + 45));
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  v4 = *(this + 18);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v7 = (this + 104);
  sub_1001DFF90(&v7);
  v7 = (this + 80);
  sub_10001E200(&v7);
  v7 = (this + 56);
  sub_1000212F4(&v7);
  v5 = *(this + 6);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = this;
  sub_1000212F4(&v7);
}

std::string *DataModel::update(std::string *result, const std::string **a2)
{
  v2 = *a2;
  if (*a2)
  {
    size = result[17].__r_.__value_.__l.__size_;
    std::string::operator=(size, *a2);
    std::string::operator=((size + 24), v2 + 1);
    v4 = *(&v2[2].__r_.__value_.__r.__words[1] + 7);
    *(size + 48) = *&v2[2].__r_.__value_.__l.__data_;
    *(size + 63) = v4;
    result = std::string::operator=((size + 72), v2 + 3);
    *(size + 96) = v2[4].__r_.__value_.__s.__data_[0];
  }

  return result;
}

void DataServiceModels::~DataServiceModels(DataServiceModels *this)
{
  *this = off_101E50BF0;
  v1 = (this + 8);
  sub_1004C9638(&v1);
}

{
  *this = off_101E50BF0;
  v1 = (this + 8);
  sub_1004C9638(&v1);
  operator delete();
}

void *DataServiceModels::DataServiceModels(void *a1)
{
  a1[1] = 0;
  v2 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101E50BA8;
  DataServiceModels::makeInitialDataModelsContainer(&v4);
  sub_1004C95D8(v2);
  *(a1 + 1) = v4;
  a1[3] = v5;
  v5 = 0;
  v4 = 0uLL;
  v6 = &v4;
  sub_1004C9638(&v6);
  return a1;
}

void sub_1004C92EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *v9 = off_101E50BF0;
  sub_1004C9638(&a9);
  _Unwind_Resume(a1);
}

uint64_t DataServiceModels::makeInitialDataModelsContainer@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = subscriber::makeSimSlotRange();
  v2 = v3;
  if (v3 != v4)
  {
    do
    {
      result = v5(*v2);
      if (result)
      {
        break;
      }

      ++v2;
    }

    while (v2 != v4);
    if (v2 != v4)
    {
      operator new();
    }
  }

  return result;
}

void sub_1004C94B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004C9638(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C9514(uint64_t a1)
{
  *a1 = off_101E50BF0;
  v3 = (a1 + 8);
  sub_1004C9638(&v3);
  return a1;
}

void sub_1004C956C(uint64_t a1)
{
  *a1 = off_101E50BF0;
  v1 = (a1 + 8);
  sub_1004C9638(&v1);
  operator delete();
}

void sub_1004C95D8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        DataModel::~DataModel((v3 - 432));
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

void sub_1004C9638(void ***a1)
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
        DataModel::~DataModel((v4 - 432));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1004C96BC(uint64_t a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x97B425ED097B42)
  {
    sub_1000CE3D4();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v6 = 0x97B425ED097B42;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1004CA23C(a1, v6);
  }

  v13 = 0;
  v14 = 432 * v2;
  sub_1004C9804(432 * v2, a2);
  v15 = 432 * v2 + 432;
  v7 = *(a1 + 8);
  v8 = 432 * v2 + *a1 - v7;
  sub_1004CA298(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1004CA33C(&v13);
  return v12;
}

void sub_1004C97F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1004CA33C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C9804(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1004C9ACC(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1004C9C14(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_1004C9D5C(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 5);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1004C9FB4(a1 + 104, *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v6 = *(a2 + 144);
  *(a1 + 144) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 152) = *(a2 + 152);
  if (*(a2 + 183) < 0)
  {
    sub_100005F2C((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v7 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v7;
  }

  v8 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v8;
  CSIPacketAddress::CSIPacketAddress((a1 + 196), (a2 + 196));
  CSIPacketAddress::CSIPacketAddress((a1 + 220), (a2 + 220));
  CSIPacketAddress::CSIPacketAddress((a1 + 244), (a2 + 244));
  CSIPacketAddress::CSIPacketAddress((a1 + 268), (a2 + 268));
  CSIPacketAddress::CSIPacketAddress((a1 + 292), (a2 + 292));
  MCC::MCC((a1 + 320), (a2 + 320));
  MCC::MCC((a1 + 352), (a2 + 352));
  v9 = *(a2 + 384);
  *(a1 + 388) = *(a2 + 388);
  *(a1 + 384) = v9;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  v10 = *(a2 + 408);
  *(a1 + 408) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 416) = *(a2 + 416);
  v11 = *(a2 + 424);
  *(a1 + 424) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1004C9A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 144);
  if (v12)
  {
    sub_100004A34(v12);
  }

  sub_1001DFF90(&a10);
  sub_10001E200(&a10);
  sub_1000212F4(&a10);
  v13 = *(v10 + 48);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(v10 + 32);
  if (v14)
  {
    sub_100004A34(v14);
  }

  a10 = v10;
  sub_1000212F4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C9ACC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_1004C9B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_1004C9B54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_1004C9BDC(v7);
  return v4;
}

uint64_t sub_1004C9BDC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t sub_1004C9C14(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_1004C9C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_1004C9C9C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_1004C9D24(v7);
  return v4;
}

uint64_t sub_1004C9D24(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t sub_1004C9D5C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004C9DE4(result, a4);
  }

  return result;
}

void sub_1004C9DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10001E200(&a9);
  _Unwind_Resume(a1);
}

void sub_1004C9DE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1004C9E20(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1004C9E20(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1004C9E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 8);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *v8 = v9;
      }

      v4 += 32;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  LOBYTE(v12) = 1;
  sub_1004C9F34(v11);
  return v4;
}

uint64_t sub_1004C9F34(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004C9F6C(a1);
  }

  return a1;
}

void sub_1004C9F6C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

uint64_t sub_1004C9FB4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004CA03C(result, a4);
  }

  return result;
}

void sub_1004CA01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001DFF90(&a9);
  _Unwind_Resume(a1);
}

void sub_1004CA03C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1001DFEA0(a1, a2);
  }

  sub_1000CE3D4();
}

void *sub_1004CA088(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_1004CA138(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1004CA1B4(v8);
  return v4;
}

uint64_t sub_1004CA138(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D0358(result, a4);
  }

  return result;
}

void sub_1004CA198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004CA1B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA1EC(a1);
  }

  return a1;
}

void sub_1004CA1EC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_1004CA23C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x97B425ED097B43)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1004CA298(uint64_t a1, DataModel *a2, DataModel *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      sub_1004C9804(a4, v8);
      v8 += 432;
      a4 += 432;
      v7 -= 432;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      DataModel::~DataModel(v6);
      v6 = (v6 + 432);
    }
  }
}

void sub_1004CA318(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 432);
    do
    {
      DataModel::~DataModel(v4);
      v4 = (v5 - 432);
      v2 += 432;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004CA33C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 432;
    DataModel::~DataModel((i - 432));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004CA3F8(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E40F08;
  sub_1013B70C4((a1 + 24), a2);
  return a1;
}

const __CFDictionary *HTTPRedirectMonitorMode::create@<X0>(const __CFDictionary **a1@<X4>, void *a2@<X8>)
{
  result = *a1;
  if (*a1)
  {
    Value = CFDictionaryGetValue(result, @"RATOverrides");
    if (Value && (v4 = Value, v5 = CFGetTypeID(Value), v5 == CFArrayGetTypeID()))
    {
      v40 = 0;
      v41 = 0;
      v38 = 0;
      v39 = &v40;
      v36 = &v37;
      v37 = 0;
      v35 = sub_10029EB94(v4, @"technology-mask");
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
          v9 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v10 = CFGetTypeID(ValueAtIndex);
            if (v10 != CFDictionaryGetTypeID())
            {
              v9 = 0;
            }
          }

          v11 = CFDictionaryGetValue(v9, @"technology-mask");
          v12 = v11;
          if (v11)
          {
            v13 = CFGetTypeID(v11);
            if (v13 == CFNumberGetTypeID())
            {
              valuePtr = 0;
              if (CFNumberGetValue(v12, kCFNumberIntType, &valuePtr))
              {
                v45 = 0;
                v46 = 0;
                v47 = 0;
                sub_1002A516C(valuePtr, v35, &v45);
                v14 = v45;
                if (v45 != v46)
                {
                  v15 = CFDictionaryGetValue(v9, @"configuration");
                  v16 = v15;
                  if (v15)
                  {
                    v17 = CFGetTypeID(v15);
                    if (v17 == CFDictionaryGetTypeID())
                    {
                      v18 = CFDictionaryGetValue(v16, @"PcoOutOfData");
                      v19 = v18;
                      if (v18)
                      {
                        v20 = CFGetTypeID(v18);
                        if (v20 == CFDictionaryGetTypeID())
                        {
                          v21 = CFDictionaryGetValue(v19, @"ContainerId");
                          v22 = v21;
                          LODWORD(__p[0]) = -1;
                          if (v21)
                          {
                            v23 = CFGetTypeID(v21);
                            if (v23 == CFNumberGetTypeID())
                            {
                              ctu::cf::assign(__p, v22, v24);
                            }

                            v34 = __p[0];
                            if ((__p[0] & 0x80000000) == 0)
                            {
                              v25 = CFDictionaryGetValue(v19, @"ExpiredValues");
                              v26 = v25;
                              if (v25)
                              {
                                v27 = CFGetTypeID(v25);
                                if (v27 == CFArrayGetTypeID())
                                {
                                  __p[0] = 0;
                                  __p[1] = 0;
                                  v43 = 0;
                                  context = __p;
                                  v50.length = CFArrayGetCount(v26);
                                  v50.location = 0;
                                  CFArrayApplyFunction(v26, v50, sub_100359A28, &context);
                                  v33 = __p[0];
                                  if (__p[0] != __p[1])
                                  {
                                    v28 = v45;
                                    v29 = v46;
                                    if (v45 != v46)
                                    {
                                      v30 = __p[1];
                                      v32 = (__p[1] - __p[0]) >> 2;
                                      do
                                      {
                                        LODWORD(__p[0]) = v34;
                                        v43 = 0;
                                        v44 = 0;
                                        __p[1] = 0;
                                        sub_10024064C(&__p[1], v33, v30, v32);
                                        sub_1004CC3EC(&v36, v28);
                                        if (__p[1])
                                        {
                                          v43 = __p[1];
                                          operator delete(__p[1]);
                                        }

                                        ++v28;
                                      }

                                      while (v28 != v29);
                                    }
                                  }

                                  if (v33)
                                  {
                                    operator delete(v33);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  v14 = v45;
                }

                if (v14)
                {
                  v46 = v14;
                  operator delete(v14);
                }
              }
            }
          }
        }
      }

      sub_1004CC540(&v39, v40);
      v31 = v37;
      v39 = v36;
      v40 = v37;
      v41 = v38;
      if (v38)
      {
        v37[2] = &v40;
        v36 = &v37;
        v37 = 0;
        v38 = 0;
        v31 = 0;
      }

      else
      {
        v39 = &v40;
      }

      sub_1004CC540(&v36, v31);
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v39 = &v40;
    }

    sub_1004CC5A4();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1004CA858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, char a24, void *a25, uint64_t a26, void *__p, void *a28, uint64_t a29)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 128);
  if (v31)
  {
    *(v29 - 120) = v31;
    operator delete(v31);
  }

  sub_1004CC540(&a21, a22);
  sub_1004CC540(&a24, a25);
  _Unwind_Resume(a1);
}

void HTTPRedirectMonitorMode::init(HTTPRedirectMonitorMode *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

uint64_t HTTPRedirectMonitorMode::HTTPRedirectMonitorMode(uint64_t a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5, CFDictionaryRef *a6, uint64_t a7)
{
  v14 = *a2;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = a4[1];
  v40 = *a4;
  v41 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v39 = *(a5 + 16);
  }

  sub_10031435C(a1, &object, a3, &v40, "mm.redirect", __p);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (v41)
  {
    sub_100004A34(v41);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E50C10;
  sub_10000501C(&v36, "mm.redirect");
  v16 = *a2;
  v35 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v34 = 0;
  ctu::RestModule::RestModule();
  if (v35)
  {
    dispatch_release(v35);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  CFDictionaryGetValue(*a6, @"DataPlanProbeUrl");
  sub_10000501C(&v32, "http://www.apple.com/library/test/success.html");
  ctu::cf::assign();
  *(a1 + 256) = v32;
  *(a1 + 272) = v33;
  v33 = 0;
  v32 = 0uLL;
  Value = CFDictionaryGetValue(*a6, @"DataPlanProbeTimeout");
  v18 = Value;
  *&v44 = 0x4014000000000000;
  if (Value)
  {
    v19 = CFGetTypeID(Value);
    if (v19 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v44, v18, v20);
    }
  }

  *(a1 + 280) = v44;
  v21 = CFDictionaryGetValue(*a6, @"KeepPDPUpOnProbeError");
  v22 = v21;
  LOBYTE(v44) = 0;
  if (v21 && (v23 = CFGetTypeID(v21), v23 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v44, v22, v24);
    v25 = v44;
  }

  else
  {
    v25 = 0;
  }

  *(a1 + 288) = v25;
  v26 = CFDictionaryGetValue(*a6, @"CellularDataPlanNotSubscribedErrors");
  v27 = v26;
  v31 = 0u;
  if (v26 && (v28 = CFGetTypeID(v26), v28 == CFArrayGetTypeID()))
  {
    v44 = 0uLL;
    v45 = 0;
    context = &v44;
    v46.length = CFArrayGetCount(v27);
    v46.location = 0;
    CFArrayApplyFunction(v27, v46, sub_100359A28, &context);
    v31 = v44;
    v29 = v45;
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 296) = v31;
  *(a1 + 312) = v29;
  sub_1004CC8D8((a1 + 320), a7);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  return a1;
}

void sub_1004CAD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17, dispatch_object_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, dispatch_object_t object)
{
  if (a33)
  {
    sub_100004A34(a33);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void HTTPRedirectMonitorMode::~HTTPRedirectMonitorMode(HTTPRedirectMonitorMode *this)
{
  *this = off_101E50C10;
  v2 = (this + 160);
  sub_10035899C();
  sub_1004CAF44();
  sub_100358A0C();
  sub_100358AEC();
  ctu::RestModule::disconnect(v2);
  v3 = *(this + 44);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1004CC540(this + 320, *(this + 41));
  v4 = *(this + 37);
  if (v4)
  {
    *(this + 38) = v4;
    operator delete(v4);
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  sub_100359978(this + 232, *(this + 30));
  sub_10006DCAC(this + 208, *(this + 27));
  sub_100077CD4(this + 184, *(this + 24));
  v5 = *(this + 21);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10031452C(this);
}

{
  HTTPRedirectMonitorMode::~HTTPRedirectMonitorMode(this);

  operator delete();
}

void sub_1004CAF44()
{
  sub_10000501C(&__p, "/cc/props/reg_data_modes");
  ctu::RestModule::unobserveProperty();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004CAF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HTTPRedirectMonitorMode::runMonitorModeAction_sync(HTTPRedirectMonitorMode *this)
{
  isActionAllowed_sync = HTTPRedirectMonitorMode::isActionAllowed_sync(this);
  if ((isActionAllowed_sync & 0x100) != 0)
  {
    if (isActionAllowed_sync != 3)
    {
      goto LABEL_27;
    }

    ServiceMap = Registry::getServiceMap(*(this + 6));
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
    v38 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v38);
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
LABEL_25:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

LABEL_27:
          v26 = *(this + 44);
          *(this + 43) = 0;
          *(this + 44) = 0;
          if (!v26)
          {
            return;
          }

LABEL_53:
          sub_100004A34(v26);
          return;
        }

LABEL_23:
        v25 = (*(*v12 + 808))(v12);
        sub_10000501C(v43, "HTTP Redirect Start");
        (*(*v12 + 88))(v12, v25, 1, 1, v43, 1, 0);
        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        goto LABEL_25;
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
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (!*(this + 43))
  {
    v14 = Registry::getServiceMap(*(this + 6));
    v15 = v14;
    if ((v16 & 0x8000000000000000) != 0)
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

    std::mutex::lock(v14);
    v38 = v16;
    v20 = sub_100009510(&v15[1].__m_.__sig, &v38);
    if (v20)
    {
      v22 = v20[3];
      v21 = v20[4];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v15);
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v21);
        v23 = 0;
        if (!v22)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    if (!v22)
    {
LABEL_19:
      v24 = *(this + 5);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_101772730(v24);
      }

LABEL_51:
      if (v23)
      {
        return;
      }

      v26 = v21;
      goto LABEL_53;
    }

LABEL_31:
    if (*(this + 279) < 0)
    {
      sub_100005F2C(__p, *(this + 32), *(this + 33));
    }

    else
    {
      *__p = *(this + 16);
      v41 = *(this + 34);
    }

    v39[0] = 0;
    v39[1] = 0;
    v38 = v39;
    (*(*v22 + 16))(&v42, v22, 0, __p, &v38);
    v27 = (this + 344);
    v28 = v42;
    v42 = 0uLL;
    v29 = *(this + 44);
    *(this + 344) = v28;
    if (v29)
    {
      sub_100004A34(v29);
      if (*(&v42 + 1))
      {
        sub_100004A34(*(&v42 + 1));
      }
    }

    sub_1000DD0AC(&v38, v39[0]);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 37) != *(this + 38))
    {
      (*(**v27 + 104))(*v27, 0);
    }

    (*(**(this + 43) + 96))(*(this + 43), *(this + 35));
    (*(**v27 + 176))(*v27, 1);
    (*(**v27 + 152))(*v27, kCTDataConnectionServiceTypeInternet);
    sub_100004AA0(&v38, this + 1);
    v31 = v38;
    v30 = v39[0];
    if (v39[0])
    {
      atomic_fetch_add_explicit(v39[0] + 2, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
    }

    (*(**(this + 43) + 8))(*(this + 43), *(this + 3));
    v32 = *(this + 43);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 1174405120;
    v36[2] = sub_1004CB744;
    v36[3] = &unk_101E50C80;
    v36[4] = this;
    v36[5] = v31;
    v37 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v32 + 16))(v32, v36);
    v33 = *v27;
    v34[1] = 0;
    v35 = 0;
    v34[0] = 0;
    (*(*v33 + 40))(v33, v34);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_weak(v37);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    goto LABEL_51;
  }

  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1017726EC(v3);
  }
}

void sub_1004CB534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HTTPRedirectMonitorMode::isActionAllowed_sync(HTTPRedirectMonitorMode *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(this + 44);
    v3 = (this + 192);
    do
    {
      if (v1[8] >= v2)
      {
        v3 = v1;
      }

      v1 = *&v1[2 * (v1[8] < v2)];
    }

    while (v1);
    if (v3 == (this + 192) || (v4 = v3[8], v2 < v4))
    {
      v5 = 0;
LABEL_31:
      v6 = 1;
      return v5 | (v6 << 8);
    }

    v7 = *(this + 30);
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = this + 240;
    do
    {
      if (*(v7 + 8) >= v4)
      {
        v8 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < v4)];
    }

    while (v7);
    if (v8 == this + 240 || v4 < *(v8 + 8))
    {
      goto LABEL_30;
    }

    v9 = v8[135];
    if (v9 >= 0)
    {
      v10 = v8[135];
    }

    else
    {
      v10 = *(v8 + 15);
    }

    v11 = *(this + 87);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(this + 9);
    }

    if (v10 != v11 || (v9 >= 0 ? (v13 = v8 + 112) : (v13 = *(v8 + 14)), (v16 = *(this + 8), v14 = this + 64, v15 = v16, v12 >= 0) ? (v17 = v14) : (v17 = v15), memcmp(v13, v17, v10)))
    {
LABEL_30:
      v5 = 1;
      goto LABEL_31;
    }

    if (*(v8 + 12) == 5)
    {
      v19 = v3[16];
      v20 = v19 > 3;
      LOBYTE(v19) = 8 * v19;
      v21 = 0x3000403u >> v19;
      v6 = 0x1000101u >> v19;
      if (v20)
      {
        v5 = 0;
      }

      else
      {
        v5 = v21;
      }

      if (v20)
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 1;
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  return v5 | (v6 << 8);
}

void sub_1004CB744(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_36:
        sub_100004A34(v7);
        return;
      }

      v8 = *(v5 + 352);
      *(v5 + 344) = 0;
      *(v5 + 352) = 0;
      if (v8)
      {
        sub_100004A34(v8);
      }

      if ((*(**a2 + 16))() == 1)
      {
        if ((*(**a2 + 24))() == 200)
        {
          v9 = 1;
        }

        else
        {
          v11 = *(v5 + 296);
          v12 = *(v5 + 304);
          if (v11 != v12)
          {
            v13 = (*(**a2 + 24))();
            while (*v11 != v13)
            {
              if (++v11 == v12)
              {
                v9 = 0;
                v10 = 0;
                goto LABEL_19;
              }
            }

            v14 = *(v5 + 40);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = (*(**a2 + 24))();
              *buf = 67109120;
              *&buf[4] = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Matched expiry failure code: %d", buf, 8u);
            }
          }

          v9 = 0;
        }

        v10 = 1;
      }

      else
      {
        v9 = 0;
        v10 = *(v5 + 296) == *(v5 + 304);
      }

LABEL_19:
      if (*(v5 + 288) & 1) != 0 || v10 && (v9)
      {
LABEL_35:
        sub_100314A14(v5, v9 | (v10 << 8));
        goto LABEL_36;
      }

      ServiceMap = Registry::getServiceMap(*(v5 + 48));
      v17 = ServiceMap;
      if (v18 < 0)
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
      *buf = v18;
      v22 = sub_100009510(&v17[1].__m_.__sig, buf);
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
          if (!v24)
          {
LABEL_33:
            if ((v25 & 1) == 0)
            {
              sub_100004A34(v23);
            }

            goto LABEL_35;
          }

LABEL_31:
          v26 = (*(*v24 + 808))(v24);
          sub_10000501C(__p, "HTTP Redirect Failure");
          (*(*v24 + 88))(v24, v26, 1, 0, __p, 1, 0);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v24 = 0;
      }

      std::mutex::unlock(v17);
      v23 = 0;
      v25 = 1;
      if (!v24)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }
}

uint64_t sub_1004CBAFC(uint64_t result, uint64_t a2)
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

void sub_1004CBB18(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void HTTPRedirectMonitorMode::handleInternetConnectionStateUpdated_sync(HTTPRedirectMonitorMode *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v3 = *(this + 44);
    v4 = (this + 192);
    do
    {
      if (v1[8] >= v3)
      {
        v4 = v1;
      }

      v1 = *&v1[2 * (v1[8] < v3)];
    }

    while (v1);
    if (v4 != (this + 192))
    {
      v5 = v4[8];
      if (v3 >= v5)
      {
        v6 = *(this + 30);
        if (v6)
        {
          v7 = this + 240;
          do
          {
            if (*(v6 + 8) >= v5)
            {
              v7 = v6;
            }

            v6 = *&v6[8 * (*(v6 + 8) < v5)];
          }

          while (v6);
          if (v7 != this + 240 && v5 >= *(v7 + 8))
          {
            v8 = v7[135];
            if (v8 >= 0)
            {
              v9 = v7[135];
            }

            else
            {
              v9 = *(v7 + 15);
            }

            v10 = *(this + 87);
            v11 = v10;
            if ((v10 & 0x80u) != 0)
            {
              v10 = *(this + 9);
            }

            if (v9 == v10)
            {
              v14 = *(v7 + 14);
              v12 = v7 + 112;
              v13 = v14;
              v15 = v8 >= 0 ? v12 : v13;
              v16 = v11 >= 0 ? (this + 64) : *(this + 8);
              if (!memcmp(v15, v16, v9))
              {
                v17 = v4[16];
                if (v17)
                {
                  if (v17 == 2)
                  {
                    if (!*(this + 90))
                    {
                      HTTPRedirectMonitorMode::runMonitorModeAction_sync(this);
                    }

                    *(this + 90) = 2;
                  }
                }

                else
                {
                  *(this + 90) = 0;
                }
              }
            }
          }
        }
      }
    }
  }
}

void HTTPRedirectMonitorMode::handlePcoInfoUpdated_sync(HTTPRedirectMonitorMode *a1, int *a2)
{
  if (*(a1 + 42))
  {
    if (sub_10030D8C4(*(a2 + 1)))
    {
      isActionAllowed_sync = HTTPRedirectMonitorMode::isActionAllowed_sync(a1);
      if ((isActionAllowed_sync & 0x100) == 0 || isActionAllowed_sync != 1)
      {
        v5 = *(a2 + 3);
        if (v5 != *(a2 + 4))
        {
          v6 = *(a1 + 27);
          if (v6)
          {
            v7 = *a2;
            v8 = (a1 + 216);
            do
            {
              if (*(v6 + 28) >= v7)
              {
                v8 = v6;
              }

              v6 = *(v6 + 8 * (*(v6 + 28) < v7));
            }

            while (v6);
            if (v8 != (a1 + 216) && v7 >= *(v8 + 7))
            {
              v9 = *(a1 + 41);
              if (v9)
              {
                v10 = *(v8 + 8);
                v11 = (a1 + 328);
                do
                {
                  if (*(v9 + 32) >= v10)
                  {
                    v11 = v9;
                  }

                  v9 = *(v9 + 8 * (*(v9 + 32) < v10));
                }

                while (v9);
                if (v11 != (a1 + 328) && v10 >= *(v11 + 8) && a2[4] == *(v11 + 10))
                {
                  v13 = v11[6];
                  v12 = v11[7];
                  if (v13 != v12)
                  {
                    v14 = *v5;
                    while (*v13 != v14)
                    {
                      if (++v13 == v12)
                      {
                        return;
                      }
                    }

                    v15 = *(a1 + 5);
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      v16[0] = 67109120;
                      v16[1] = v14;
                      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Matched PCO expiry: 0x%02x", v16, 8u);
                    }

                    HTTPRedirectMonitorMode::runMonitorModeAction_sync(a1);
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

void HTTPRedirectMonitorMode::dumpState_sync(HTTPRedirectMonitorMode *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (this + 256);
    if (*(this + 279) < 0)
    {
      v4 = *v4;
    }

    v5 = *(this + 35);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v5;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v36 = printers::asString((this + 288), v3);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I URL %s - Timeout: %f, Keep PDP up: %s", &buf, 0x20u);
  }

  v7 = *(this + 37);
  v6 = *(this + 38);
  if (v7 != v6)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v32 = ",";
      v33 = 1;
      memset(&v34, 0, sizeof(v34));
      std::to_string(&buf, *v7);
      v34 = buf;
      for (i = v7 + 1; i != v6; ++i)
      {
        sub_100074CFC(&v32, &buf);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        std::string::append(&v34, p_buf, size);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        std::to_string(&buf, *i);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &buf;
        }

        else
        {
          v12 = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v13 = buf.__r_.__value_.__l.__size_;
        }

        std::string::append(&v34, v12, v13);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      v14 = &v34;
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v34.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Expiry HTTP Responses: %{public}s", &buf, 0xCu);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(this + 42))
  {
    v15 = *(this + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I PCO Expiry Config:", &buf, 2u);
    }

    v16 = *(this + 40);
    if (v16 != (this + 328))
    {
      do
      {
        v17 = *(this + 5);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I {", &buf, 2u);
          v17 = *(this + 5);
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = asString();
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I  Data Mode: %s", &buf, 0xCu);
          v17 = *(this + 5);
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          std::to_string(&buf, *(v16 + 10));
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &buf;
          }

          else
          {
            v19 = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v34.__r_.__value_.__l.__data_) = 136315138;
          *(v34.__r_.__value_.__r.__words + 4) = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I  Technology: %s", &v34, 0xCu);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          v17 = *(this + 5);
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(v16 + 6);
          v20 = *(v16 + 7);
          v32 = ",";
          v33 = 1;
          memset(&v34, 0, sizeof(v34));
          if (v21 != v20)
          {
            std::to_string(&buf, *v21);
            v34 = buf;
            while (++v21 != v20)
            {
              sub_100074CFC(&v32, &buf);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v22 = &buf;
              }

              else
              {
                v22 = buf.__r_.__value_.__r.__words[0];
              }

              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v23 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v23 = buf.__r_.__value_.__l.__size_;
              }

              std::string::append(&v34, v22, v23);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              std::to_string(&buf, *v21);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v24 = &buf;
              }

              else
              {
                v24 = buf.__r_.__value_.__r.__words[0];
              }

              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v25 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v25 = buf.__r_.__value_.__l.__size_;
              }

              std::string::append(&v34, v24, v25);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }
          }

          v26 = &v34;
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v26 = v34.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
          *(buf.__r_.__value_.__r.__words + 4) = v26;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I  Failure Codes: %{public}s", &buf, 0xCu);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          v17 = *(this + 5);
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I }", &buf, 2u);
        }

        v27 = *(v16 + 1);
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = *(v16 + 2);
            v29 = *v28 == v16;
            v16 = v28;
          }

          while (!v29);
        }

        v16 = v28;
      }

      while (v28 != (this + 328));
    }
  }

  v30 = *(this + 5);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = asString();
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Connection State: %s", &buf, 0xCu);
  }

  sub_100314754(this);
}

void sub_1004CC38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004CC3EC(uint64_t a1, int *a2)
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

void sub_1004CC4DC(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[6];
    if (v3)
    {
      __p[7] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1004CC540(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1004CC540(a1, *a2);
    sub_1004CC540(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *sub_1004CC660(void *a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5, const void **a6, uint64_t a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E50D08;
  sub_1004CC758(a1 + 3, a2, a3, a4, a5, a6, a7);
  return a1;
}

void sub_1004CC6DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E50D08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CC758(void *a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5, const void **a6, uint64_t a7)
{
  v13 = *a2;
  v20 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = *a4;
  v15 = a4[1];
  v19[0] = v14;
  v19[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v18, a6);
  sub_1004CC8D8(v17, a7);
  HTTPRedirectMonitorMode::HTTPRedirectMonitorMode(a1, &v20, a3, v19, a5, &v18, v17);
  sub_1004CC540(v17, v17[1]);
  sub_10001021C(&v18);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  *a1 = &off_101E50D58;
  return a1;
}

void sub_1004CC85C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  sub_1004CC540(va, v7);
  sub_10001021C(va1);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1004CC8A0(HTTPRedirectMonitorMode *a1)
{
  HTTPRedirectMonitorMode::~HTTPRedirectMonitorMode(a1);

  operator delete();
}

void *sub_1004CC8D8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1004CC930(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1004CC930(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1004CC9B8(v5, v5 + 1, v4 + 8);
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

uint64_t sub_1004CC9B8(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10002E2F4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1004CCA48();
  }

  return result;
}

void sub_1004CCADC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004CC4DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1004CCAF8(uint64_t **a1)
{
  v1 = **a1;
  Registry::createRestModuleOneTimeUseConnection(&v2, *(v1 + 48));
  ctu::RestModule::connect();
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100118C58(v1 + 176);
  sub_1004CCD68();
}

void sub_1004CCC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

void sub_1004CCC88(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/reg_data_modes");
  v4[0] = off_101E50EF0;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004CCD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004CCE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004CCF04(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50DF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1004CCF44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004CCF90(uint64_t *a1, xpc_object_t *a2)
{
  sub_10035A2E4(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_1004CD0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004CD1A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50E70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1004CD1E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004CD234(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a1;
  v21 = 0uLL;
  v22 = 0;
  sub_10010A62C(&v21, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v18 = v3->__r_.__value_.__r.__words[0];
  v19 = size;
  v20 = v3->__r_.__value_.__r.__words[2];
  if (v20)
  {
    *(size + 16) = &v19;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v18 = &v19;
  }

  v16 = v21;
  v17 = v22;
  v22 = 0;
  v21 = 0uLL;
  sub_100D21B04(v3, &v16);
  v23 = &v16;
  sub_1000B2AF8(&v23);
  if (v20 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v18;
    if (v18 == &v19)
    {
      goto LABEL_24;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v19)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = (*(a1 + 8) + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v13(v15);
LABEL_24:
  sub_100359978(&v18, v19);
  v18 = &v21;
  sub_1000B2AF8(&v18);
}

void sub_1004CD3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char *a13, uint64_t a14, char a15)
{
  sub_100359978(&a12, a13);
  a12 = &a15;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1004CD4AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E50EF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1004CD4E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004CD52C(uint64_t a1, xpc_object_t *a2)
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
    *&v7 = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      *&v7 = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, &v7, count);
    xpc_release(v7);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      *(&v7 + 1) = i;
      v8 = 0;
      *&v7 = &v10;
      sub_10003EAD4(&v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        LODWORD(v7) = 0;
        *(&v7 + 4) = -1;
        v6 = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1004CD7BC(&v7, &v6);
        xpc_release(v6);
        sub_1004CD970(a1, &v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_1004CD72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_1004CD7BC(int *a1, xpc_object_t *a2)
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

void sub_1004CD91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004CD970(uint64_t a1, int *a2)
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

void sub_1004CDB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004CDBD0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50F70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1004CDC08(void *a1)
{
  *__p = 0u;
  v7 = 0u;
  v5 = 0u;
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, &v5);
  if (__p[1])
  {
    *&v7 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_1004CDCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004CDCBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004CDDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004CDE94(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50FF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1004CDECC(void *a1)
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

uint64_t sub_1004CDF14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *sub_1004CDF60(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 5)
  {
    return "kCellular";
  }

  else
  {
    return off_101E51078[v1];
  }
}

const char *sub_1004CDF88(_DWORD *a1)
{
  v1 = "kUnknown";
  if (*a1 == 1)
  {
    v1 = "kDisabled";
  }

  if (*a1 == 2)
  {
    return "kEnabled";
  }

  else
  {
    return v1;
  }
}

const char *sub_1004CDFB8(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "kUnknown";
  }

  else
  {
    return off_101E51060[a1 - 1];
  }
}

const char *sub_1004CDFE0(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 3)
  {
    return "kInvalid";
  }

  else
  {
    return off_101E510A8[v1];
  }
}

unint64_t sub_1004CE040(void *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (a1[1] != 9 || (**a1 == 0x454E494645444E55 ? (v2 = *(*a1 + 8) == 68) : (v2 = 0), !v2))
    {
      if (a1[1] != 13 || (**a1 == 0x435F44495F4D4953 ? (v3 = *(*a1 + 5) == 0x45474E4148435F44) : (v3 = 0), !v3))
      {
        if (a1[1] != 13 || (**a1 == 0x435F454349564544 ? (v4 = *(*a1 + 5) == 0x45474E4148435F45) : (v4 = 0), !v4))
        {
          v8 = a1[1];
          if (v8 != 13)
          {
            if (v8 != 20)
            {
LABEL_61:
              v11 = 0;
              v12 = 0;
              return v12 | v11;
            }

            a1 = *a1;
            goto LABEL_40;
          }

          if (**a1 != 0x435F544E45494C43 || *(*a1 + 5) != 0x45474E4148435F54)
          {
            goto LABEL_61;
          }

LABEL_63:
          v11 = &_mh_execute_header;
          v12 = 3;
          return v12 | v11;
        }

LABEL_56:
        v11 = &_mh_execute_header;
        v12 = 2;
        return v12 | v11;
      }

LABEL_55:
      v11 = &_mh_execute_header;
      v12 = 1;
      return v12 | v11;
    }

LABEL_54:
    v12 = 0;
    v11 = &_mh_execute_header;
    return v12 | v11;
  }

  v1 = *(a1 + 23);
  if (v1 == 9)
  {
    if (*a1 != 0x454E494645444E55 || *(a1 + 8) != 68)
    {
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v1 == 13)
  {
    if (*a1 != 0x435F44495F4D4953 || *(a1 + 5) != 0x45474E4148435F44)
    {
      if (*a1 != 0x435F454349564544 || *(a1 + 5) != 0x45474E4148435F45)
      {
        if (*a1 != 0x435F544E45494C43 || *(a1 + 5) != 0x45474E4148435F54)
        {
          goto LABEL_61;
        }

        goto LABEL_63;
      }

      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v1 != 20)
  {
    goto LABEL_61;
  }

LABEL_40:
  if (*a1 != 0x4954505952434E45 || a1[1] != 0x4C494156415F4E4FLL || *(a1 + 4) != 1162625601)
  {
    goto LABEL_61;
  }

  v11 = &_mh_execute_header;
  v12 = 4;
  return v12 | v11;
}

const void **sub_1004CE2CC(const void **a1, char **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4)
  {
    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    while (1)
    {
      v6 = memchr(v5, 44, v4);
      v7 = v6 ? v6 - v5 : -1;
      if (v7)
      {
        break;
      }

LABEL_50:
      v5 += v7 + 1;
      v4 -= v7 + 1;
      if (!v4)
      {
        return a1;
      }
    }

    if (v4 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v9 = v5 - 1;
    v10 = v8;
    while (1)
    {
      v11 = v9[1];
      if (!(v11 < 0 ? __maskrune(v11, 0x4000uLL) : _DefaultRuneLocale.__runetype[v11] & 0x4000))
      {
        break;
      }

      ++v9;
      if (!--v10)
      {
        goto LABEL_49;
      }
    }

    v13 = &v5[v8 - 1];
    while (1)
    {
      v15 = *v13--;
      v14 = v15;
      if (!(v15 < 0 ? __maskrune(v14, 0x4000uLL) : _DefaultRuneLocale.__runetype[v14] & 0x4000))
      {
        break;
      }

      if (!--v10)
      {
        goto LABEL_49;
      }
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v31 = v10;
    memmove(&__dst, v9 + 1, v10);
    *(&__dst + v10) = 0;
    v17 = sub_1004CE040(&__dst);
    if (v31 < 0)
    {
      operator delete(__dst);
      if ((v17 & 0x100000000) == 0)
      {
        goto LABEL_49;
      }
    }

    else if ((v17 & 0x100000000) == 0)
    {
      goto LABEL_49;
    }

    v19 = a1[1];
    v18 = a1[2];
    if (v19 >= v18)
    {
      v21 = *a1;
      v22 = v19 - *a1;
      v23 = (v22 >> 2) + 1;
      if (v23 >> 62)
      {
        sub_1000CE3D4();
      }

      v24 = v18 - v21;
      if (v24 >> 1 > v23)
      {
        v23 = v24 >> 1;
      }

      v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
      v26 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v26 = v23;
      }

      if (v26)
      {
        sub_100016740(a1, v26);
      }

      v27 = (4 * (v22 >> 2));
      *v27 = v17;
      v20 = v27 + 1;
      memcpy(0, v21, v22);
      v28 = *a1;
      *a1 = 0;
      a1[1] = v20;
      a1[2] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v19 = v17;
      v20 = v19 + 1;
    }

    a1[1] = v20;
LABEL_49:
    if (v7 == -1)
    {
      return a1;
    }

    goto LABEL_50;
  }

  return a1;
}

void sub_1004CE54C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004CE578(int **a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1 == v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = *v2++;
      if ((v4 - 1) < 3)
      {
        v3 = 1;
      }
    }

    while (v2 != v1);
  }

  return v3 & 1;
}

uint64_t sub_1004CE5B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a2[2] != a1[2] || a2[3] != a1[3] || a2[4] != a1[4] || a2[5] != a1[5] || a2[6] != a1[6])
  {
    return 0;
  }

  v2 = a1[1];
  if (a2[1] == 1)
  {
    if (v2)
    {
      return *a2 == *a1;
    }

    return 0;
  }

  return v2 ^ 1u;
}

uint64_t sub_1004CE640(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[23];
  if (v2 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = v7[47];
  if (v8 >= 0)
  {
    v9 = v7[47];
  }

  else
  {
    v9 = *(v7 + 4);
  }

  v10 = v6[47];
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v6 + 4);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? v7 + 24 : *(v7 + 3);
  v13 = v11 >= 0 ? v6 + 24 : *(v6 + 3);
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

  v14 = v7[71];
  if (v14 >= 0)
  {
    v15 = v7[71];
  }

  else
  {
    v15 = *(v7 + 7);
  }

  v16 = v6[71];
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v6 + 7);
  }

  if (v15 != v16)
  {
    return 0;
  }

  v18 = v14 >= 0 ? v7 + 48 : *(v7 + 6);
  v19 = v17 >= 0 ? v6 + 48 : *(v6 + 6);
  if (memcmp(v18, v19, v15))
  {
    return 0;
  }

  result = sub_1004CE5B8(v7 + 212, v6 + 212);
  if (result)
  {
    if (v6[194] != v7[194] || v6[195] != v7[195] || v7[192] != v6[192] || v7[193] != v6[193])
    {
      return 0;
    }

    result = sub_100071DF8(v7 + 9, v6 + 9);
    if (!result)
    {
      return result;
    }

    if (*(v7 + 51) != *(v6 + 51) || *(v7 + 52) != *(v6 + 52))
    {
      return 0;
    }

    result = sub_100071DF8(v7 + 15, v6 + 15);
    if (result)
    {
      result = sub_100071DF8(v7 + 18, v6 + 18);
      if (result)
      {
        if (*(v7 + 55) != *(v6 + 55))
        {
          return 0;
        }

        result = sub_100071DF8(v7 + 28, v6 + 28);
        if (result)
        {
          result = sub_100071DF8(v7 + 21, v6 + 21);
          if (result)
          {
            if (v7[196] == v6[196] && v7[197] == v6[197] && v7[198] == v6[198] && v7[199] == v6[199])
            {
              result = sub_100071DF8(v7 + 12, v6 + 12);
              if (result)
              {
                return *(v7 + 50) == *(v6 + 50);
              }

              return result;
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004CE8A8(uint64_t a1)
{
  v1 = 4;
  if (*(a1 + 1))
  {
    v1 = 0;
  }

  return *(a1 + v1);
}

uint64_t sub_1004CE8C0(_BYTE *a1)
{
  v1 = 4;
  if (a1[1])
  {
    v1 = 0;
  }

  if (a1[v1] != 1 || (a1[5] & 1) != 0 || (a1[6] & 1) != 0)
  {
    v2 = 0;
  }

  else if (a1[2])
  {
    v2 = 1;
  }

  else
  {
    v2 = a1[3];
  }

  return v2 & 1;
}

uint64_t sub_1004CE910(_BYTE *a1)
{
  if (a1[5] & 1) != 0 || (a1[6])
  {
    v1 = 0;
  }

  else if (a1[2])
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[3];
  }

  return v1 & 1;
}

uint64_t sub_1004CE944(uint64_t a1, os_log_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) < 0)
    {
      sub_100005F2C(__dst, *a1, *(a1 + 8));
    }

    else
    {
      *__dst = *a1;
      v243 = *(a1 + 16);
    }

    v7 = HIBYTE(v243);
    if (v243 < 0)
    {
      v7 = __dst[1];
    }

    v8 = "(empty)";
    if (v7)
    {
      v9 = "OK";
    }

    else
    {
      v9 = "(empty)";
    }

    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(v240, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      *v240 = *(a1 + 24);
      v241 = *(a1 + 40);
    }

    v10 = HIBYTE(v241);
    if (v241 < 0)
    {
      v10 = v240[1];
    }

    if (v10)
    {
      v11 = "OK";
    }

    else
    {
      v11 = "(empty)";
    }

    if (*(a1 + 71) < 0)
    {
      sub_100005F2C(v238, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *v238 = *(a1 + 48);
      v239 = *(a1 + 64);
    }

    v12 = HIBYTE(v239);
    if (v239 < 0)
    {
      v12 = v238[1];
    }

    if (v12)
    {
      v13 = "OK";
    }

    else
    {
      v13 = "(empty)";
    }

    v217 = a3;
    if (*(a1 + 95) < 0)
    {
      sub_100005F2C(v236, *(a1 + 72), *(a1 + 80));
    }

    else
    {
      *v236 = *(a1 + 72);
      v237 = *(a1 + 88);
    }

    v14 = HIBYTE(v237);
    if (v237 < 0)
    {
      v14 = v236[1];
    }

    if (v14)
    {
      v15 = "OK";
    }

    else
    {
      v15 = "(empty)";
    }

    v16 = *(a1 + 192);
    if (*(a1 + 143) < 0)
    {
      sub_100005F2C(v234, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      *v234 = *(a1 + 120);
      v235 = *(a1 + 136);
    }

    v215 = v15;
    v17 = HIBYTE(v235);
    if (v235 < 0)
    {
      v17 = v234[1];
    }

    if (v17)
    {
      v8 = "OK";
    }

    v216 = v4;
    v18 = v13;
    if (*(a1 + 167) < 0)
    {
      sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
    }

    else
    {
      *__p = *(a1 + 144);
      v233 = *(a1 + 160);
    }

    v19 = HIBYTE(v233);
    v20 = __p[1];
    v21 = *(a1 + 193);
    v22 = asString();
    *buf = 136448258;
    if (v19 >= 0)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 == 0;
    *&buf[4] = v9;
    v25 = "(empty)";
    if (!v24)
    {
      v25 = "OK";
    }

    *&buf[12] = 2082;
    *&buf[14] = v11;
    *&buf[22] = 2082;
    *&buf[24] = v18;
    LOWORD(v248[0]) = 2082;
    *(v248 + 2) = v215;
    WORD5(v248[0]) = 1024;
    HIDWORD(v248[0]) = v16;
    LOWORD(v248[1]) = 2082;
    *(&v248[1] + 2) = v8;
    WORD5(v248[1]) = 2082;
    *(&v248[1] + 12) = v25;
    WORD2(v248[2]) = 1024;
    *(&v248[2] + 6) = v21;
    WORD5(v248[2]) = 2080;
    *(&v248[2] + 12) = v22;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I --> IMSI: %{public}s, IMEI: %{public}s, URL: %{public}s, PH#: %{public}s, sms online: %{BOOL}d, GID1: %{public}s, GID2: %{public}s, carrier based: %{BOOL}d, buddy: %s", buf, 0x54u);
    if (SHIBYTE(v233) < 0)
    {
      operator delete(__p[0]);
    }

    v4 = v216;
    a3 = v217;
    if (SHIBYTE(v235) < 0)
    {
      operator delete(v234[0]);
    }

    if (SHIBYTE(v237) < 0)
    {
      operator delete(v236[0]);
    }

    if (SHIBYTE(v239) < 0)
    {
      operator delete(v238[0]);
    }

    if (SHIBYTE(v241) < 0)
    {
      operator delete(v240[0]);
    }

    if (SHIBYTE(v243) < 0)
    {
      operator delete(__dst[0]);
    }

    v6 = *v216;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 220);
    if (v26 > 3)
    {
      v27 = "kInvalid";
    }

    else
    {
      v27 = off_101E510A8[v26];
    }

    if (*(a1 + 247) < 0)
    {
      sub_100005F2C(v230, *(a1 + 224), *(a1 + 232));
    }

    else
    {
      *v230 = *(a1 + 224);
      v231 = *(a1 + 240);
    }

    v28 = HIBYTE(v231);
    if (v231 < 0)
    {
      v28 = v230[1];
    }

    if (v28)
    {
      v29 = "OK";
    }

    else
    {
      v29 = "(empty)";
    }

    v30 = *(a1 + 204);
    if (v30 > 5)
    {
      v31 = "kCellular";
    }

    else
    {
      v31 = off_101E51078[v30];
    }

    v32 = *(a1 + 208);
    if (v32 > 5)
    {
      v33 = "kCellular";
    }

    else
    {
      v33 = off_101E51078[v32];
    }

    v34 = *(a1 + 194);
    v35 = *(a1 + 195);
    *buf = 136447490;
    *&buf[4] = v27;
    *&buf[12] = 2082;
    *&buf[14] = v29;
    *&buf[22] = 2082;
    *&buf[24] = v31;
    LOWORD(v248[0]) = 2082;
    *(v248 + 2) = v33;
    WORD5(v248[0]) = 1024;
    HIDWORD(v248[0]) = v34;
    LOWORD(v248[1]) = 1024;
    *(&v248[1] + 2) = v35;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I --> style: %{public}s, token: %{public}s, provisioning iface: %{public}s, ims iface: %{public}s, did unlock: %{BOOL}d, waiting for bb prov: %{BOOL}d", buf, 0x36u);
    if (SHIBYTE(v231) < 0)
    {
      operator delete(v230[0]);
    }

    v6 = *v4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1004D0668((a1 + 212), buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v36 = buf;
    }

    else
    {
      v36 = *buf;
    }

    LODWORD(v245) = 136446210;
    *(&v245 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I --> %{public}s", &v245, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v6 = *v4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v38 = printers::asString((a1 + 196), v37);
    v40 = printers::asString((a1 + 197), v39);
    v42 = printers::asString((a1 + 198), v41);
    v44 = printers::asString((a1 + 199), v43);
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(v228, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      *v228 = *(a1 + 96);
      v229 = *(a1 + 112);
    }

    v45 = HIBYTE(v229);
    if (v229 < 0)
    {
      v45 = v228[1];
    }

    *buf = 136447234;
    *&buf[4] = v38;
    if (v45)
    {
      v46 = "OK";
    }

    else
    {
      v46 = "(empty)";
    }

    *&buf[12] = 2082;
    *&buf[14] = v40;
    *&buf[22] = 2082;
    *&buf[24] = v42;
    LOWORD(v248[0]) = 2082;
    *(v248 + 2) = v44;
    WORD5(v248[0]) = 2082;
    *(v248 + 12) = v46;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I --> encryption_supported: %{public}s, push_supported: %{public}s, push_enabled: %{public}s, private_relay_supported: %{public}s, msisdn_source: %{public}s", buf, 0x34u);
    if (SHIBYTE(v229) < 0)
    {
      operator delete(v228[0]);
    }
  }

  v260 = 0;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v249 = 0u;
  memset(v248, 0, sizeof(v248));
  memset(buf, 0, sizeof(buf));
  sub_10000C320(buf);
  if (*(a3 + 248) == 1)
  {
    sub_10000C030(&buf[16]);
    v245 = 0uLL;
    v246 = 0;
    v47 = *(a3 + 23);
    if (v47 >= 0)
    {
      v48 = *(a3 + 23);
    }

    else
    {
      v48 = *(a3 + 8);
    }

    v49 = *(a1 + 23);
    v50 = v49;
    if ((v49 & 0x80u) != 0)
    {
      v49 = *(a1 + 8);
    }

    if (v48 != v49 || (v47 >= 0 ? (v51 = a3) : (v51 = *a3), v50 >= 0 ? (v52 = a1) : (v52 = *a1), memcmp(v51, v52, v48)))
    {
      sub_10000501C(&v244, "Cached-IMSI");
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }
    }

    v53 = *(a3 + 47);
    if (v53 >= 0)
    {
      v54 = *(a3 + 47);
    }

    else
    {
      v54 = *(a3 + 32);
    }

    v55 = *(a1 + 47);
    v56 = v55;
    if ((v55 & 0x80u) != 0)
    {
      v55 = *(a1 + 32);
    }

    if (v54 != v55 || (v53 >= 0 ? (v57 = (a3 + 24)) : (v57 = *(a3 + 24)), v56 >= 0 ? (v58 = (a1 + 24)) : (v58 = *(a1 + 24)), memcmp(v57, v58, v54)))
    {
      sub_10000501C(&v244, "IMEI");
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }
    }

    v59 = *(a3 + 71);
    if (v59 >= 0)
    {
      v60 = *(a3 + 71);
    }

    else
    {
      v60 = *(a3 + 56);
    }

    v61 = *(a1 + 71);
    v62 = v61;
    if ((v61 & 0x80u) != 0)
    {
      v61 = *(a1 + 56);
    }

    if (v60 != v61 || (v59 >= 0 ? (v63 = (a3 + 48)) : (v63 = *(a3 + 48)), v62 >= 0 ? (v64 = (a1 + 48)) : (v64 = *(a1 + 48)), memcmp(v63, v64, v60)))
    {
      sub_10000501C(&v222, "URL: ");
      v65 = std::string::append(&v222, "{", 1uLL);
      v66 = *&v65->__r_.__value_.__l.__data_;
      v223.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
      *&v223.__r_.__value_.__l.__data_ = v66;
      v65->__r_.__value_.__l.__size_ = 0;
      v65->__r_.__value_.__r.__words[2] = 0;
      v65->__r_.__value_.__r.__words[0] = 0;
      v67 = *(a3 + 71);
      if (v67 >= 0)
      {
        v68 = (a3 + 48);
      }

      else
      {
        v68 = *(a3 + 48);
      }

      if (v67 >= 0)
      {
        v69 = *(a3 + 71);
      }

      else
      {
        v69 = *(a3 + 56);
      }

      v70 = std::string::append(&v223, v68, v69);
      v71 = *&v70->__r_.__value_.__l.__data_;
      v224.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
      *&v224.__r_.__value_.__l.__data_ = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      v72 = std::string::append(&v224, "} ==> ", 6uLL);
      v73 = *&v72->__r_.__value_.__l.__data_;
      v225.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
      *&v225.__r_.__value_.__l.__data_ = v73;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      v74 = std::string::append(&v225, "{", 1uLL);
      v75 = *&v74->__r_.__value_.__l.__data_;
      v226.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
      *&v226.__r_.__value_.__l.__data_ = v75;
      v74->__r_.__value_.__l.__size_ = 0;
      v74->__r_.__value_.__r.__words[2] = 0;
      v74->__r_.__value_.__r.__words[0] = 0;
      v76 = *(a1 + 71);
      if (v76 >= 0)
      {
        v77 = (a1 + 48);
      }

      else
      {
        v77 = *(a1 + 48);
      }

      if (v76 >= 0)
      {
        v78 = *(a1 + 71);
      }

      else
      {
        v78 = *(a1 + 56);
      }

      v79 = std::string::append(&v226, v77, v78);
      v80 = *&v79->__r_.__value_.__l.__data_;
      v227.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
      *&v227.__r_.__value_.__l.__data_ = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      v81 = std::string::append(&v227, "}", 1uLL);
      v82 = *&v81->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v226.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v224.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v223.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
      }
    }

    v83 = *(a3 + 95);
    if (v83 >= 0)
    {
      v84 = *(a3 + 95);
    }

    else
    {
      v84 = *(a3 + 80);
    }

    v85 = *(a1 + 95);
    v86 = v85;
    if ((v85 & 0x80u) != 0)
    {
      v85 = *(a1 + 80);
    }

    if (v84 != v85 || (v83 >= 0 ? (v87 = (a3 + 72)) : (v87 = *(a3 + 72)), v86 >= 0 ? (v88 = (a1 + 72)) : (v88 = *(a1 + 72)), memcmp(v87, v88, v84)))
    {
      sub_10000501C(&v244, "MSISDN");
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }
    }

    v89 = *(a3 + 213);
    v90 = *(a1 + 213);
    if (v89 == v90 && *(a3 + 213))
    {
      if (*(a3 + 212) == *(a1 + 212))
      {
        goto LABEL_199;
      }
    }

    else if (v89 == v90)
    {
      goto LABEL_199;
    }

    if (*(a1 + 213))
    {
      v91 = CSIBOOLAsString(*(a1 + 212));
      sub_10000501C(&v227, v91);
      v92 = std::string::insert(&v227, 0, "Switch: ", 8uLL);
      v93 = *&v92->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v93;
      v92->__r_.__value_.__l.__size_ = 0;
      v92->__r_.__value_.__r.__words[2] = 0;
      v92->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v227.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_199;
      }

      v94 = v227.__r_.__value_.__r.__words[0];
      goto LABEL_198;
    }

    sub_10000501C(&v244, "Switch: (null)");
    sub_1000D1054(&v245, &v244);
    if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = v244.__r_.__value_.__r.__words[0];
LABEL_198:
      operator delete(v94);
    }

LABEL_199:
    v95 = *(a1 + 216);
    if (*(a3 + 216) != v95)
    {
      v96 = CSIBOOLAsString(v95);
      sub_10000501C(&v227, v96);
      v97 = std::string::insert(&v227, 0, "Switch(default): ", 0x11uLL);
      v98 = *&v97->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v98;
      v97->__r_.__value_.__l.__size_ = 0;
      v97->__r_.__value_.__r.__words[2] = 0;
      v97->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v99 = *(a1 + 214);
    if (*(a3 + 214) != v99)
    {
      v100 = CSIBOOLAsString(v99);
      sub_10000501C(&v227, v100);
      v101 = std::string::insert(&v227, 0, "Bundle support", 0xEuLL);
      v102 = *&v101->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v102;
      v101->__r_.__value_.__l.__size_ = 0;
      v101->__r_.__value_.__r.__words[2] = 0;
      v101->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v103 = *(a1 + 215);
    if (*(a3 + 215) != v103)
    {
      v104 = CSIBOOLAsString(v103);
      sub_10000501C(&v227, v104);
      v105 = std::string::insert(&v227, 0, "Entitlement support: ", 0x15uLL);
      v106 = *&v105->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v106;
      v105->__r_.__value_.__l.__size_ = 0;
      v105->__r_.__value_.__r.__words[2] = 0;
      v105->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v107 = *(a1 + 193);
    if (*(a3 + 193) != v107)
    {
      v108 = CSIBOOLAsString(v107);
      sub_10000501C(&v227, v108);
      v109 = std::string::insert(&v227, 0, "Carrier based: ", 0xFuLL);
      v110 = *&v109->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v110;
      v109->__r_.__value_.__l.__size_ = 0;
      v109->__r_.__value_.__r.__words[2] = 0;
      v109->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v111 = *(a1 + 204);
    if (*(a3 + 204) != v111)
    {
      if (v111 > 5)
      {
        v112 = "kCellular";
      }

      else
      {
        v112 = off_101E51078[v111];
      }

      sub_10000501C(&v227, v112);
      v113 = std::string::insert(&v227, 0, "Prov interface", 0xEuLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v115 = *(a1 + 208);
    if (*(a3 + 208) != v115)
    {
      if (v115 > 5)
      {
        v116 = "kCellular";
      }

      else
      {
        v116 = off_101E51078[v115];
      }

      sub_10000501C(&v227, v116);
      v117 = std::string::insert(&v227, 0, "Ims interface: ", 0xFuLL);
      v118 = *&v117->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v118;
      v117->__r_.__value_.__l.__size_ = 0;
      v117->__r_.__value_.__r.__words[2] = 0;
      v117->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v119 = *(a3 + 143);
    if (v119 >= 0)
    {
      v120 = *(a3 + 143);
    }

    else
    {
      v120 = *(a3 + 128);
    }

    v121 = *(a1 + 143);
    v122 = v121;
    if ((v121 & 0x80u) != 0)
    {
      v121 = *(a1 + 128);
    }

    if (v120 != v121 || (v119 >= 0 ? (v123 = (a3 + 120)) : (v123 = *(a3 + 120)), v122 >= 0 ? (v124 = (a1 + 120)) : (v124 = *(a1 + 120)), memcmp(v123, v124, v120)))
    {
      sub_10000501C(&v244, "GID1");
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }
    }

    v125 = *(a3 + 167);
    if (v125 >= 0)
    {
      v126 = *(a3 + 167);
    }

    else
    {
      v126 = *(a3 + 152);
    }

    v127 = *(a1 + 167);
    v128 = v127;
    if ((v127 & 0x80u) != 0)
    {
      v127 = *(a1 + 152);
    }

    if (v126 != v127 || (v125 >= 0 ? (v129 = (a3 + 144)) : (v129 = *(a3 + 144)), v128 >= 0 ? (v130 = (a1 + 144)) : (v130 = *(a1 + 144)), memcmp(v129, v130, v126)))
    {
      sub_10000501C(&v244, "GID2");
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }
    }

    v131 = *(a1 + 194);
    if (*(a3 + 194) != v131)
    {
      v132 = CSIBOOLAsString(v131);
      sub_10000501C(&v227, v132);
      v133 = std::string::insert(&v227, 0, "Did first unlock: ", 0x12uLL);
      v134 = *&v133->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v134;
      v133->__r_.__value_.__l.__size_ = 0;
      v133->__r_.__value_.__r.__words[2] = 0;
      v133->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v135 = *(a1 + 195);
    if (*(a3 + 195) != v135)
    {
      v136 = CSIBOOLAsString(v135);
      sub_10000501C(&v227, v136);
      v137 = std::string::insert(&v227, 0, "BB prov (waiting): ", 0x13uLL);
      v138 = *&v137->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v137->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v138;
      v137->__r_.__value_.__l.__size_ = 0;
      v137->__r_.__value_.__r.__words[2] = 0;
      v137->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v139 = *(a1 + 217);
    if (*(a3 + 217) != v139)
    {
      v140 = CSIBOOLAsString(v139);
      sub_10000501C(&v227, v140);
      v141 = std::string::insert(&v227, 0, "Disabled by profile: ", 0x15uLL);
      v142 = *&v141->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v141->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v142;
      v141->__r_.__value_.__l.__size_ = 0;
      v141->__r_.__value_.__r.__words[2] = 0;
      v141->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v143 = *(a1 + 218);
    if (*(a3 + 218) != v143)
    {
      v144 = CSIBOOLAsString(v143);
      sub_10000501C(&v227, v144);
      v145 = std::string::insert(&v227, 0, "Store demo: ", 0xCuLL);
      v146 = *&v145->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v145->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v146;
      v145->__r_.__value_.__l.__size_ = 0;
      v145->__r_.__value_.__r.__words[2] = 0;
      v145->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v147 = *(a1 + 192);
    if (*(a3 + 192) != v147)
    {
      v148 = CSIBOOLAsString(v147);
      sub_10000501C(&v227, v148);
      v149 = std::string::insert(&v227, 0, "SMS: ", 5uLL);
      v150 = *&v149->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v149->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v150;
      v149->__r_.__value_.__l.__size_ = 0;
      v149->__r_.__value_.__r.__words[2] = 0;
      v149->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v151 = *(a1 + 220);
    if (*(a3 + 220) != v151)
    {
      if (v151 > 3)
      {
        v152 = "kInvalid";
      }

      else
      {
        v152 = off_101E510A8[v151];
      }

      sub_10000501C(&v227, v152);
      v153 = std::string::insert(&v227, 0, "Style :", 7uLL);
      v154 = *&v153->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v153->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v154;
      v153->__r_.__value_.__l.__size_ = 0;
      v153->__r_.__value_.__r.__words[2] = 0;
      v153->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v155 = (a1 + 224);
    v156 = *(a3 + 247);
    if (v156 >= 0)
    {
      v157 = *(a3 + 247);
    }

    else
    {
      v157 = *(a3 + 232);
    }

    v158 = *(a1 + 247);
    v159 = v158;
    if ((v158 & 0x80u) != 0)
    {
      v158 = *(a1 + 232);
    }

    if (v157 != v158 || (v156 >= 0 ? (v160 = (a3 + 224)) : (v160 = *(a3 + 224)), v159 >= 0 ? (v161 = (a1 + 224)) : (v161 = *v155), memcmp(v160, v161, v157)))
    {
      sub_10000501C(&v227, "Token: ");
      if (*(a1 + 247) < 0)
      {
        sub_100005F2C(v220, *(a1 + 224), *(a1 + 232));
      }

      else
      {
        *v220 = *v155;
        v221 = *(a1 + 240);
      }

      v162 = HIBYTE(v221);
      if (v221 < 0)
      {
        v162 = v220[1];
      }

      if (v162)
      {
        v163 = "OK";
      }

      else
      {
        v163 = "(empty)";
      }

      if (v162)
      {
        v164 = 2;
      }

      else
      {
        v164 = 7;
      }

      v165 = std::string::append(&v227, v163, v164);
      v166 = *&v165->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v165->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v166;
      v165->__r_.__value_.__l.__size_ = 0;
      v165->__r_.__value_.__r.__words[2] = 0;
      v165->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v221) < 0)
      {
        operator delete(v220[0]);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    if (*(a3 + 200) != *(a1 + 200))
    {
      sub_10000501C(&v227, "Buddy: ");
      v167 = asString();
      sub_10000501C(&v226, v167);
      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v168 = &v226;
      }

      else
      {
        v168 = v226.__r_.__value_.__r.__words[0];
      }

      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v226.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v226.__r_.__value_.__l.__size_;
      }

      v170 = std::string::append(&v227, v168, size);
      v171 = *&v170->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v170->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v171;
      v170->__r_.__value_.__l.__size_ = 0;
      v170->__r_.__value_.__r.__words[2] = 0;
      v170->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v226.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    if (*(a3 + 196) != *(a1 + 196))
    {
      sub_10000501C(&v227, "Encryption Supported: ");
      v173 = printers::asString((a1 + 196), v172);
      sub_10000501C(&v226, v173);
      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v174 = &v226;
      }

      else
      {
        v174 = v226.__r_.__value_.__r.__words[0];
      }

      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v175 = HIBYTE(v226.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v175 = v226.__r_.__value_.__l.__size_;
      }

      v176 = std::string::append(&v227, v174, v175);
      v177 = *&v176->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v176->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v177;
      v176->__r_.__value_.__l.__size_ = 0;
      v176->__r_.__value_.__r.__words[2] = 0;
      v176->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v226.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    if (*(a3 + 197) != *(a1 + 197))
    {
      sub_10000501C(&v227, "Push Supported: ");
      v179 = printers::asString((a1 + 197), v178);
      sub_10000501C(&v226, v179);
      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v180 = &v226;
      }

      else
      {
        v180 = v226.__r_.__value_.__r.__words[0];
      }

      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v181 = HIBYTE(v226.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v181 = v226.__r_.__value_.__l.__size_;
      }

      v182 = std::string::append(&v227, v180, v181);
      v183 = *&v182->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v182->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v183;
      v182->__r_.__value_.__l.__size_ = 0;
      v182->__r_.__value_.__r.__words[2] = 0;
      v182->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v226.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    if (*(a3 + 198) != *(a1 + 198))
    {
      sub_10000501C(&v227, "Push Enabled: ");
      v185 = printers::asString((a1 + 198), v184);
      sub_10000501C(&v226, v185);
      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v186 = &v226;
      }

      else
      {
        v186 = v226.__r_.__value_.__r.__words[0];
      }

      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v187 = HIBYTE(v226.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v187 = v226.__r_.__value_.__l.__size_;
      }

      v188 = std::string::append(&v227, v186, v187);
      v189 = *&v188->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v188->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v189;
      v188->__r_.__value_.__l.__size_ = 0;
      v188->__r_.__value_.__r.__words[2] = 0;
      v188->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v226.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    if (*(a3 + 199) != *(a1 + 199))
    {
      sub_10000501C(&v227, "Private Relay Supported: ");
      v191 = printers::asString((a1 + 199), v190);
      sub_10000501C(&v226, v191);
      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v192 = &v226;
      }

      else
      {
        v192 = v226.__r_.__value_.__r.__words[0];
      }

      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v193 = HIBYTE(v226.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v193 = v226.__r_.__value_.__l.__size_;
      }

      v194 = std::string::append(&v227, v192, v193);
      v195 = *&v194->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v194->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v195;
      v194->__r_.__value_.__l.__size_ = 0;
      v194->__r_.__value_.__r.__words[2] = 0;
      v194->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v226.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    v196 = (a1 + 96);
    v197 = *(a3 + 119);
    if (v197 >= 0)
    {
      v198 = *(a3 + 119);
    }

    else
    {
      v198 = *(a3 + 104);
    }

    v199 = *(a1 + 119);
    v200 = v199;
    if ((v199 & 0x80u) != 0)
    {
      v199 = *(a1 + 104);
    }

    if (v198 != v199 || ((v203 = *(a3 + 96), v202 = (a3 + 96), v201 = v203, v197 >= 0) ? (v204 = v202) : (v204 = v201), v200 >= 0 ? (v205 = (a1 + 96)) : (v205 = *v196), memcmp(v204, v205, v198)))
    {
      sub_10000501C(&v227, "MSISDN Source: ");
      if (*(a1 + 119) < 0)
      {
        sub_100005F2C(v218, *(a1 + 96), *(a1 + 104));
      }

      else
      {
        *v218 = *v196;
        v219 = *(a1 + 112);
      }

      v206 = HIBYTE(v219);
      if (v219 < 0)
      {
        v206 = v218[1];
      }

      if (v206)
      {
        v207 = "OK";
      }

      else
      {
        v207 = "(empty)";
      }

      if (v206)
      {
        v208 = 2;
      }

      else
      {
        v208 = 7;
      }

      v209 = std::string::append(&v227, v207, v208);
      v210 = *&v209->__r_.__value_.__l.__data_;
      v244.__r_.__value_.__r.__words[2] = v209->__r_.__value_.__r.__words[2];
      *&v244.__r_.__value_.__l.__data_ = v210;
      v209->__r_.__value_.__l.__size_ = 0;
      v209->__r_.__value_.__r.__words[2] = 0;
      v209->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v245, &v244);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v219) < 0)
      {
        operator delete(v218[0]);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    if (*(&v245 + 1) == v245)
    {
      sub_10000C030(&buf[16]);
    }

    else
    {
      sub_1000D1184(v245, *(&v245 + 1), ", ", 2uLL, &v244);
      sub_10000C030(&buf[16]);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }
    }

    v244.__r_.__value_.__r.__words[0] = &v245;
    sub_1000087B4(&v244);
  }

  v211 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(buf, &v245);
    v212 = v246 >= 0 ? &v245 : v245;
    LODWORD(v244.__r_.__value_.__l.__data_) = 136446210;
    *(v244.__r_.__value_.__r.__words + 4) = v212;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I %{public}s", &v244, 0xCu);
    if (SHIBYTE(v246) < 0)
    {
      operator delete(v245);
    }
  }

  *&buf[16] = v213;
  if (SHIBYTE(v249) < 0)
  {
    operator delete(*(&v248[3] + 1));
  }

  std::locale::~locale(v248);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1004D0310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  STACK[0x210] = &STACK[0x230];
  sub_1000087B4(&STACK[0x210]);
  sub_10068C9D8(&STACK[0x250]);
  _Unwind_Resume(a1);
}

void sub_1004D05F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a76);
  }

  JUMPOUT(0x1004D05E8);
}

uint64_t sub_1004D0668@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = 0;
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
  *__p = 0u;
  v23 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  sub_10000C320(&v19);
  if (a1[1] == 1)
  {
    v4 = sub_10000C030(&v20);
    if ((a1[1] & 1) == 0)
    {
      sub_1000D1644();
    }

    v5 = v4;
    v6 = CSIBOOLAsString(*a1);
    strlen(v6);
    sub_10000C030(v5);
  }

  else
  {
    sub_10000C030(&v20);
  }

  v7 = sub_10000C030(&v20);
  v8 = CSIBOOLAsString(a1[2]);
  strlen(v8);
  sub_10000C030(v7);
  v9 = sub_10000C030(&v20);
  v10 = CSIBOOLAsString(a1[3]);
  strlen(v10);
  sub_10000C030(v9);
  v11 = sub_10000C030(&v20);
  v12 = CSIBOOLAsString(a1[4]);
  strlen(v12);
  sub_10000C030(v11);
  v13 = sub_10000C030(&v20);
  v14 = CSIBOOLAsString(a1[5]);
  strlen(v14);
  sub_10000C030(v13);
  v15 = sub_10000C030(&v20);
  v16 = CSIBOOLAsString(a1[6]);
  strlen(v16);
  sub_10000C030(v15);
  sub_100061574(&v19, a2);
  *&v20 = v17;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_1004D09B0(void *a1, void *a2)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v48 = v2;
  v49 = v3;
  v8 = a2;
  v9 = a1;
  if (v4 < 0)
  {
    a1 = *a1;
  }

  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v5))
  {
    return 0;
  }

  v10 = *(v9 + 47);
  if (v10 >= 0)
  {
    v11 = *(v9 + 47);
  }

  else
  {
    v11 = v9[4];
  }

  v12 = *(v8 + 47);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = v8[4];
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? v9 + 3 : v9[3];
  v15 = v13 >= 0 ? v8 + 3 : v8[3];
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = v9[15];
  v17 = v9[16];
  v18 = v8[15];
  if (v17 - v16 != v8[16] - v18)
  {
    return 0;
  }

  while (v16 != v17)
  {
    result = sub_100022D3C(&v46, v16, v18);
    if (!result)
    {
      return result;
    }

    v16 += 3;
    v18 += 3;
  }

  v20 = v9[18];
  v21 = v9[19];
  v22 = v8[18];
  if (v21 - v20 != v8[19] - v22)
  {
    return 0;
  }

  while (v20 != v21)
  {
    result = sub_100022D3C(&v47, v20, v22);
    if (!result)
    {
      return result;
    }

    v20 += 3;
    v22 += 3;
  }

  v23 = *(v9 + 95);
  if (v23 >= 0)
  {
    v24 = *(v9 + 95);
  }

  else
  {
    v24 = v9[10];
  }

  v25 = *(v8 + 95);
  v26 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v25 = v8[10];
  }

  if (v24 != v25)
  {
    return 0;
  }

  v27 = v23 >= 0 ? v9 + 9 : v9[9];
  v28 = v26 >= 0 ? v8 + 9 : v8[9];
  if (memcmp(v27, v28, v24))
  {
    return 0;
  }

  v29 = *(v9 + 119);
  if (v29 >= 0)
  {
    v30 = *(v9 + 119);
  }

  else
  {
    v30 = v9[13];
  }

  v31 = *(v8 + 119);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = v8[13];
  }

  if (v30 != v31)
  {
    return 0;
  }

  v33 = v29 >= 0 ? v9 + 12 : v9[12];
  v34 = v32 >= 0 ? v8 + 12 : v8[12];
  if (memcmp(v33, v34, v30))
  {
    return 0;
  }

  result = sub_100071DF8(v9 + 6, v8 + 6);
  if (result)
  {
    if (*(v9 + 249) != *(v8 + 249) || *(v9 + 250) != *(v8 + 250) || *(v9 + 76) != *(v8 + 76))
    {
      return 0;
    }

    result = sub_100071DF8(v9 + 39, v8 + 39);
    if (!result)
    {
      return result;
    }

    if (*(v9 + 246) != *(v8 + 246) || *(v9 + 247) != *(v8 + 247) || *(v9 + 248) != *(v8 + 248))
    {
      return 0;
    }

    v35 = *(v8 + 44);
    if (v9[22])
    {
      if ((v35 & (v9[21] == v8[21])) != 1)
      {
        return 0;
      }
    }

    else if (v35)
    {
      return 0;
    }

    v36 = *(v8 + 48);
    if (v9[24])
    {
      if ((v36 & (v9[23] == v8[23])) != 1)
      {
        return 0;
      }
    }

    else if (v36)
    {
      return 0;
    }

    v37 = *(v8 + 52);
    if (v9[26])
    {
      if ((v37 & (v9[25] == v8[25])) != 1)
      {
        return 0;
      }
    }

    else if (v37)
    {
      return 0;
    }

    v38 = *(v9 + 116);
    if ((v38 & 0x100) != 0)
    {
      result = 0;
      if ((v8[29] & 0x100) == 0 || v38 != *(v8 + 116))
      {
        return result;
      }
    }

    else if ((v8[29] & 0x100) != 0)
    {
      return 0;
    }

    v39 = *(v9 + 117);
    if ((v39 & 0x100) != 0)
    {
      result = 0;
      if ((*(v8 + 117) & 0x100) == 0 || v39 != *(v8 + 117))
      {
        return result;
      }
    }

    else if ((*(v8 + 117) & 0x100) != 0)
    {
      return 0;
    }

    v40 = *(v9 + 118);
    if ((v40 & 0x100) != 0)
    {
      result = 0;
      if ((*(v8 + 118) & 0x100) == 0 || v40 != *(v8 + 118))
      {
        return result;
      }
    }

    else if ((*(v8 + 118) & 0x100) != 0)
    {
      return 0;
    }

    v41 = *(v9 + 119);
    if ((v41 & 0x100) != 0)
    {
      result = 0;
      if ((*(v8 + 119) & 0x100) == 0 || v41 != *(v8 + 119))
      {
        return result;
      }
    }

    else if ((*(v8 + 119) & 0x100) != 0)
    {
      return 0;
    }

    v42 = *(v9 + 121);
    if ((v42 & 0x100) != 0)
    {
      result = 0;
      if ((*(v8 + 121) & 0x100) == 0 || v42 != *(v8 + 121))
      {
        return result;
      }
    }

    else if ((*(v8 + 121) & 0x100) != 0)
    {
      return 0;
    }

    v43 = *(v9 + 120);
    if ((v43 & 0x100) == 0)
    {
      if ((v8[30] & 0x100) == 0)
      {
LABEL_112:
        v44 = *(v9 + 122);
        v45 = *(v8 + 122);
        if ((v44 & 0x100) != 0)
        {
          return (v44 == v45) & (v45 >> 8);
        }

        else
        {
          return (v45 & 0x100) == 0;
        }
      }

      return 0;
    }

    result = 0;
    if ((v8[30] & 0x100) != 0 && v43 == *(v8 + 120))
    {
      goto LABEL_112;
    }
  }

  return result;
}

uint64_t sub_1004D0E00(uint64_t a1)
{
  v1 = 247;
  if (*(a1 + 245))
  {
    v1 = 244;
  }

  if (*(a1 + v1) == 1)
  {
    v2 = *(a1 + 246);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL sub_1004D0E34(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = *(v7 + 47);
  if (v8 >= 0)
  {
    v9 = *(v7 + 47);
  }

  else
  {
    v9 = v7[4];
  }

  v10 = *(v6 + 47);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[4];
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? v7 + 3 : v7[3];
  v13 = v11 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

  v14 = *(v7 + 71);
  if (v14 >= 0)
  {
    v15 = *(v7 + 71);
  }

  else
  {
    v15 = v7[7];
  }

  v16 = *(v6 + 71);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = v6[7];
  }

  if (v15 == v16 && (v14 >= 0 ? (v18 = v7 + 6) : (v18 = v7[6]), v17 >= 0 ? (v19 = v6 + 6) : (v19 = v6[6]), !memcmp(v18, v19, v15) && v7[9] == v6[9] && *(v7 + 80) == *(v6 + 80)))
  {
    return *(v7 + 81) == *(v6 + 81);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1004D0F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3 || v2 == 0)
  {
    if (v2 != v3)
    {
      return 0;
    }
  }

  else if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 == v6 && v5 != 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    return *(a1 + 32) == *(a2 + 32);
  }

  if (v5 == v6)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

void *sub_1004D102C(void *a1, int a2, void *a3, void *a4, void *a5)
{
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &off_101E510F8;
  a1[1] = off_101E51280;
  sub_10174D9C0((a1 + 4), 2, a2, -1);
  v9 = a3[1];
  a1[15] = *a3;
  a1[16] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[17] = 0;
  a1[18] = 0;
  v10 = a4[1];
  a1[19] = *a4;
  a1[20] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  a1[21] = *a5;
  a1[22] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  a1[23] = 0;
  a1[24] = 0;
  a1[26] = 0;
  v12 = a1[18];
  a1[17] = 0;
  a1[18] = 0;
  if (v12)
  {
    sub_100004A34(v12);
  }

  return a1;
}

void sub_1004D111C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MMSOperationInterface::~MMSOperationInterface(v1);
  _Unwind_Resume(a1);
}

void sub_1004D1140(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
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
  if (!v11)
  {
    v12 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v13 = 0;
    v14 = 1;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = v11[3];
  v13 = v11[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v14 = 0;
  if (v12)
  {
LABEL_10:
    (*(*v12 + 192))(v12, a2);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (!v12)
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1004D1268(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D1284(MMSOperationInterface *this)
{
  *this = &off_101E510F8;
  *(this + 1) = off_101E51280;
  v2 = *(this + 26);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  MMSOperationInterface::~MMSOperationInterface(this);
}

void sub_1004D1364(MMSOperationInterface *a1)
{
  sub_1004D1284(a1);

  operator delete();
}

void sub_1004D139C(uint64_t a1)
{
  sub_1004D1284((a1 - 8));

  operator delete();
}

char *sub_1004D13E8@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[103] < 0)
  {
    return sub_100005F2C(a2, *(result + 10), *(result + 11));
  }

  *a2 = *(result + 5);
  *(a2 + 16) = *(result + 12);
  return result;
}

void sub_1004D1410(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::string::operator=((a1 + 80), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1004D1480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D14BC(uint64_t a1)
{
  Registry::getTimerService(&v6, *(a1 + 120));
  v2 = (**v6)(v6);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64) << v3;
  if (v4 >= *(a1 + 72))
  {
    v4 = *(a1 + 72);
  }

  *(a1 + 56) = v2 + 1000000000 * v4;
  if (v7)
  {
    sub_100004A34(v7);
    v3 = *(a1 + 40);
  }

  result = (v3 + 1);
  *(a1 + 40) = result;
  return result;
}

void sub_1004D1554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D156C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 << *(a1 + 40) >= *(a1 + 72))
  {
    return *(a1 + 72);
  }

  else
  {
    return v1 << *(a1 + 40);
  }
}

uint64_t sub_1004D15E4(uint64_t a1)
{
  v1 = *(a1 + 56);
  Registry::getTimerService(&v4, *(a1 + 120));
  v2 = (**v4)(v4);
  if (v5)
  {
    sub_100004A34(v5);
  }

  return (v1 - v2) / 1000000000;
}

void sub_1004D1670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D1688(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1004D16F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 160);
  *(a1 + 152) = v3;
  *(a1 + 160) = v2;
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1004D171C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 144);
  *(a1 + 136) = v3;
  *(a1 + 144) = v2;
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1004D1748(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v4 = *(a1 + 208);
  *(a1 + 208) = v3;
  if (v4)
  {

    dispatch_release(v4);
  }
}

void sub_1004D17A0(uint64_t a1)
{
  if (os_log_type_enabled(**(a1 + 200), OS_LOG_TYPE_ERROR))
  {
    sub_101772774();
  }
}

void sub_1004D17E0(uint64_t a1, uint64_t *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
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
  *&v21 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v21);
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
  if (!v12)
  {
LABEL_7:
    if (os_log_type_enabled(**(a1 + 200), OS_LOG_TYPE_ERROR))
    {
      sub_1017727B0();
    }

    v14 = *(a1 + 192);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_100004A34(v14);
    goto LABEL_20;
  }

LABEL_13:
  v15 = *(a1 + 48);
  v16 = a2[1];
  v19 = *a2;
  v20 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v12 + 264))(&v21, v12, v15, &v19);
  v17 = v21;
  v21 = 0uLL;
  v18 = *(a1 + 192);
  *(a1 + 184) = v17;
  if (v18)
  {
    sub_100004A34(v18);
    if (*(&v21 + 1))
    {
      sub_100004A34(*(&v21 + 1));
    }
  }

  v14 = v20;
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_20:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1004D1984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D19AC(uint64_t a1)
{
  (*(**(a1 + 184) + 72))(*(a1 + 184), a1 + 8);
  v2 = *(a1 + 184);
  v3 = *(a1 + 208);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  (*(*v2 + 56))(v2, &object);
  if (object)
  {
    dispatch_release(object);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

BOOL sub_1004D1B78@<W0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = *(a1 + 200);
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 36);
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Getting message from MMSC HTTP Response, MsgId %u", buf, 8u);
  }

  if (sub_100BB1A2C(*a3))
  {
    v20 = 0;
    memset(buf, 0, sizeof(buf));
    sub_1015662DC(buf, 0, 0, *(a1 + 48));
    BYTE1(v20) = 1;
    v17 = 0uLL;
    sub_1004D1FE0(a1, a3, buf, &v17);
  }

  v11 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    v14 = v21;
    sub_100BB1C20(*a3, v21);
    if (v22 < 0)
    {
      v14 = *v21;
    }

    sub_100BB1A00(v18, *a3);
    v15 = sub_100BB1540(v18);
    v16 = *(a1 + 36);
    *buf = 136315650;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = v15;
    *&buf[22] = 1024;
    *&buf[24] = v16;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MMSC HTTP response NOT SUCCESSFUL: Status:%s Response:%s, MsgId %u", buf, 0x1Cu);
    sub_100BB18D8(v18);
    if (v22 < 0)
    {
      operator delete(*v21);
    }
  }

  result = sub_100BB1A40(*a3, *(a1 + 200));
  if (result)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  *a2 = v13;
  *a4 = 0;
  a4[1] = 0;
  return result;
}

void sub_1004D1F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  ctu::OsLogLogger::~OsLogLogger(&a27);
  _Unwind_Resume(a1);
}

void sub_1004D1FE0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint8_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 200);
  v8 = *(a1 + 48);
  v9 = *(a1 + 36);
  v10 = sub_1007E14B4(*a2);
  v11 = *v10;
  v12 = v10[1];
  v13 = *v7;
  if (*v10 == v12)
  {
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_1017728E4();
    }

    *a4 = 0;
    operator new();
  }

  v14 = v10;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v12 - v11;
    *&buf[12] = 1024;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Decoding %lu byte response, MsgId %u", buf, 0x12u);
  }

  v36 = 0;
  memset(buf, 0, sizeof(buf));
  sub_1015662DC(buf, 0, 0, v8);
  if (!a3)
  {
    a3 = buf;
  }

  sub_1015662D0(a3, *v14, *(v14 + 2) - *v14);
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
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
  __p = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, &__p);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
      if (!v23)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
  if (!v23)
  {
LABEL_12:
    v25 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 67109120;
      HIDWORD(__p) = v9;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to get CarrierSettingsInterface, MsgId: %u", &__p, 8u);
    }

    goto LABEL_24;
  }

LABEL_20:
  *v31 = @"MMS";
  *&v31[8] = @"UseFullBufferForDecoding";
  v33 = 0;
  v34 = 0;
  __p = 0;
  sub_10005B328(&__p, v31, &v31[16], 2uLL);
  v30 = 0;
  (*(*v23 + 104))(v31, v23, v8, 1, &__p, kCFBooleanTrue, 0);
  sub_10002FE1C(&v30, v31);
  sub_10000A1EC(v31);
  v31[0] = 1;
  ctu::cf::assign(v31, v30, v26);
  v27 = v31[0];
  v28 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v29 = CSIBOOLAsString(v27);
    *v31 = 136315394;
    *&v31[4] = v29;
    *&v31[12] = 1024;
    *&v31[14] = v9;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I MMS Response use full buffer: %s, MsgId: %u", v31, 0x12u);
  }

  sub_100045C8C(&v30);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

LABEL_24:
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  sub_1015689C4();
}

void sub_1004D240C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_100045C8C(&a15);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  ctu::OsLogLogger::~OsLogLogger(&a26);
  _Unwind_Resume(a1);
}

void sub_1004D24A8(uint64_t a1)
{
  if (os_log_type_enabled(**(a1 + 200), OS_LOG_TYPE_ERROR))
  {
    sub_101772958();
  }
}

uint64_t sub_1004D24E8(uint64_t *a1, uint64_t a2, char a3)
{
  if (!(*(*a1 + 176))(a1))
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v13 = 0;
    v6 = a1[21];
    if (v6)
    {
      v7 = (*(*v6 + 40))(v6);
      std::string::operator=(__p, v7);
      v8 = (SBYTE7(v13) & 0x80u) == 0 ? __p : __p[0];
    }

    else
    {
      v8 = __p;
    }

    sub_101135C3C(a2, v8);
    if (SBYTE7(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = 0;
  *__p = 0u;
  v13 = 0u;
  sub_101135C24(__p);
  v9 = sub_101136D4C(__p, a1[19]);
  if (v9)
  {
    if ((a3 & 1) == 0)
    {
      if (v13 >= 0)
      {
        v10 = HIBYTE(v13);
      }

      else
      {
        v10 = v13;
      }

      sub_101135D4C(a2, v10);
    }

    sub_1011360AC(a2, __p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  return v9;
}

void sub_1004D2634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D2664@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 160);
  *a2 = *(result + 152);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1004D2680(void *a1, uint64_t *a2)
{
  v4 = (*(*a1 + 192))(a1);
  if (v4 != (*(*a2 + 192))(a2))
  {
    return 0;
  }

  v7 = a1[19];
  if (!v7)
  {
    return 0;
  }

  v8 = a2[19];
  if (!v8)
  {
    return 0;
  }

  if (v7 == v8)
  {
    return 1;
  }

  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  v5 = sub_1013D8788(v7, "X-Mms-Transaction-ID") && sub_1013D8788(a2[19], "X-Mms-Transaction-ID") && sub_100071DF8(v11, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v5;
}

void sub_1004D27B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1004D2870(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1004D287C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *sub_1004D2888(void *a1)
{
  *a1 = off_101E51300;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004D28D4(void *a1)
{
  *a1 = off_101E51300;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004D29B4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E51300;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004D29F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004D2A04(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004D2A44(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = a1[1];
  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7 && a1[2])
    {
      v8 = v4;
      v9 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ((*v5)[43])(v5, &v8);
      if (v9)
      {
        sub_100004A34(v9);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
  }

  if (!os_log_type_enabled(*v5[25], OS_LOG_TYPE_ERROR))
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_101772994();
  if (v7)
  {
LABEL_11:
    sub_100004A34(v7);
  }

LABEL_12:
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1004D2B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v11);
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004D2B6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D2BB8(uint64_t a1)
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

uint64_t AppNetworkAccessObserver::AppNetworkAccessObserver(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1004D3800(v7, a3);
  AppNetworkAccessObserverInterface::AppNetworkAccessObserverInterface(a1, v7);
  sub_1004D3898(v7);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = off_101E51390;
  v5 = a2[1];
  *(a1 + 56) = *a2;
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 112));
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 920));
  return a1;
}

void sub_1004D2D24(_Unwind_Exception *a1)
{
  sub_10004543C(v2 + 40);
  v5 = *v3;
  *v3 = 0;
  if (v5)
  {
    sub_1001A9614(v3, v5);
  }

  sub_10006EC28(v2, *(v1 + 80));
  v6 = *(v1 + 64);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  AppNetworkAccessObserverInterface::~AppNetworkAccessObserverInterface(v1);
  _Unwind_Resume(a1);
}

void AppNetworkAccessObserver::~AppNetworkAccessObserver(AppNetworkAccessObserver *this)
{
  *this = off_101E51390;
  v3 = this + 96;
  v2 = *(this + 12);
  if (v2)
  {
    ctu::RestModule::disconnect(v2);
  }

  sub_10004543C(this + 920);
  sub_10004543C(this + 112);
  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    sub_1001A9614(v3, v4);
  }

  sub_10006EC28(this + 72, *(this + 10));
  v5 = *(this + 8);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  AppNetworkAccessObserverInterface::~AppNetworkAccessObserverInterface(this);
}

{
  AppNetworkAccessObserver::~AppNetworkAccessObserver(this);

  operator delete();
}

uint64_t AppNetworkAccessObserver::isPathSatellite(AppNetworkAccessObserver *this)
{
  v1 = *(this + 26);
  if (v1 == 1)
  {
    v2 = 916;
  }

  else
  {
    if (v1 != 2)
    {
      v3 = 0;
      return v3 & 1;
    }

    v2 = 1724;
  }

  v3 = *(this + v2);
  return v3 & 1;
}

void AppNetworkAccessObserver::observe(uint64_t a1, void *a2, dispatch_object_t *a3, dispatch_object_t *a4, uint64_t a5)
{
  v9 = (a1 + 80);
  sub_10006EC28(a1 + 72, *(a1 + 80));
  *v9 = 0;
  v9[1] = 0;
  *(v9 - 1) = v9;
  v12 = *a2;
  v10 = a2 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      v13 = *(v11 + 7);
      switch(v13)
      {
        case 2:
          v19 = *(a5 + 8);
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          }

          v20 = *(a1 + 48);
          if (v20)
          {
            atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
          }

          operator new();
        case 1:
          v26 = *a3;
          if (*a3)
          {
            dispatch_retain(*a3);
          }

          object = *a4;
          if (*a4)
          {
            dispatch_retain(*a4);
          }

          v16 = *(a5 + 8);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AppNetworkAccessObserver::setupRestIfNeeded(a1);
          if (v16)
          {
            sub_100004A34(v16);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v26)
          {
            dispatch_release(v26);
          }

          v17 = *(a5 + 8);
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          v18 = *(a1 + 48);
          if (v18)
          {
            atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
          }

          operator new();
        case 0:
          v14 = *(a5 + 8);
          if (v14)
          {
            atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          }

          v15 = *(a1 + 48);
          if (v15)
          {
            atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
          }

          operator new();
      }

      v21 = v11[1];
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
          v22 = v11[2];
          v23 = *v22 == v11;
          v11 = v22;
        }

        while (!v23);
      }

      v11 = v22;
    }

    while (v22 != v10);
  }
}

void sub_1004D3350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, dispatch_object_t object, dispatch_object_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_10001C200(&a29);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t AppNetworkAccessObserver::setupRestIfNeeded(uint64_t result)
{
  if (!*(result + 96))
  {
    sub_1004D3528();
  }

  return result;
}

void sub_1004D3510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D35F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

  operator delete();
}

void sub_1004D3640(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/reg_net_info1");
  v4[0] = off_101E51588;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004D36F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004D3720(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/reg_net_info2");
  v4[0] = off_101E51608;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004D37D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004D3800(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004D3898(uint64_t a1)
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

void *sub_1004D3918(void *a1)
{
  *a1 = off_101E51408;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004D3964(void *a1)
{
  *a1 = off_101E51408;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004D3A44(uint64_t result, uint64_t a2)
{
  *a2 = off_101E51408;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004D3A84(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004D3A94(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004D3AD4(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *v11 = *(a2 + 16);
  *&v11[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        v10 = (*(*v7 + 16))(v7);
        if (v5 < 0)
        {
          sub_100005F2C(__p, v3, v4);
        }

        else
        {
          __p[0] = v3;
          __p[1] = v4;
          *v13 = *v11;
          *&v13[3] = *&v11[3];
          v14 = v5;
        }

        sub_1004D3C60(v7 + 8, __p, v10);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v9);
    }
  }

  if (v5 < 0)
  {
    operator delete(v3);
  }
}

void sub_1004D3BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v16);
  if (v17 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004D3C14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D3C60(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void *sub_1004D3CB4(void *a1)
{
  *a1 = off_101E51488;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004D3D00(void *a1)
{
  *a1 = off_101E51488;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004D3DE0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E51488;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004D3E20(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004D3E30(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004D3E70(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *v10 = *(a2 + 16);
  *&v10[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        if (v5 < 0)
        {
          sub_100005F2C(__p, v3, v4);
        }

        else
        {
          __p[0] = v3;
          __p[1] = v4;
          *v12 = *v10;
          *&v12[3] = *&v10[3];
          v13 = v5;
        }

        sub_1004D3C60(v7 + 8, __p, 1);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v9);
    }
  }

  if (v5 < 0)
  {
    operator delete(v3);
  }
}

void sub_1004D3F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100004A34(v16);
  operator delete(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D3F8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004D3FD8(void *a1)
{
  *a1 = off_101E51508;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004D4024(void *a1)
{
  *a1 = off_101E51508;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004D4104(uint64_t result, uint64_t a2)
{
  *a2 = off_101E51508;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004D4144(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004D4154(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004D4194(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *v10 = *(a2 + 16);
  *&v10[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        if (v5 < 0)
        {
          sub_100005F2C(__p, v3, v4);
        }

        else
        {
          __p[0] = v3;
          __p[1] = v4;
          *v12 = *v10;
          *&v12[3] = *&v10[3];
          v13 = v5;
        }

        sub_1004D3C60(v7 + 8, __p, 2);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v9);
    }
  }

  if (v5 < 0)
  {
    operator delete(v3);
  }
}

void sub_1004D4270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100004A34(v16);
  operator delete(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D42B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D436C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E51588;
  a2[1] = v2;
  return result;
}

uint64_t sub_1004D43A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D445C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E51608;
  a2[1] = v2;
  return result;
}

uint64_t sub_1004D4490(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D4504(uint64_t a1)
{
  *a1 = off_101E519D0;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D4548(uint64_t a1)
{
  *a1 = off_101E51A40;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D458C(uint64_t a1)
{
  *a1 = off_101E51AB0;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D45D0(uint64_t a1)
{
  *a1 = off_101E51B20;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D4614(uint64_t a1)
{
  *a1 = off_101E51B90;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D4658(uint64_t a1)
{
  *a1 = off_101E51C00;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D469C(uint64_t a1)
{
  *a1 = off_101E51C70;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D46E0(uint64_t a1)
{
  *a1 = off_101E51CE0;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D4724(uint64_t a1)
{
  *a1 = off_101E51D50;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D4768(uint64_t a1)
{
  *a1 = off_101E51DC0;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D47AC(uint64_t a1)
{
  *a1 = off_101E51E30;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D47F0(uint64_t a1)
{
  *a1 = off_101E51EA0;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1004D4834(uint64_t a1)
{
  *a1 = off_101E51F10;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t entitlements::getAwdEntitlementRequestType(entitlements *this, objc_object *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v3 = sub_100531868(this) - 2, v3 <= 0xE))
  {
    return dword_101812058[v3];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void entitlements::sCreateHttpRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5 = *a5;
  *a5 = 0;
  *(a5 + 1) = 0;
  ctu::Http::HttpRequest::create();
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1004D4930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::CEHTTPDriver(uint64_t a1, NSObject **a2, void *a3, char *a4, void *a5, uint64_t *a6, __int128 *a7, uint64_t *a8)
{
  v15 = *a2;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v16 = a8[1];
  v19 = *a8;
  v20 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1009C0FD0(a1, &object, a3, "CEHTTPDriver", a4, a5, a6, &v19);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &off_101E516F8;
  *(a1 + 424) = a4;
  if (*(a7 + 23) < 0)
  {
    v18 = *(a7 + 1);
    if (v18)
    {
      sub_100005F2C((a1 + 432), *a7, v18);
      goto LABEL_15;
    }
  }

  else if (*(a7 + 23))
  {
    v17 = *a7;
    *(a1 + 448) = *(a7 + 2);
    *(a1 + 432) = v17;
    goto LABEL_15;
  }

  sub_100A8161C(*a6, a1 + 432);
LABEL_15:
  sub_100A81988(*a6, (a1 + 456));
  *(a1 + 536) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 600) = *(***(a1 + 128) + 49) == 1;
  *(a1 + 608) = 0u;
  *(a1 + 624) = a1 + 624;
  *(a1 + 632) = a1 + 624;
  *(a1 + 676) = 0;
  *(a1 + 680) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 688) = a1 + 696;
  *(a1 + 720) = 0u;
  *(a1 + 712) = a1 + 720;
  *(a1 + 736) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 784) = a1 + 792;
  *(a1 + 816) = 0u;
  *(a1 + 808) = a1 + 816;
  *(a1 + 840) = 0u;
  *(a1 + 832) = a1 + 840;
  *(a1 + 856) = 0;
  entitlements::CEHTTPDriver::addNewPendingQuery(a1);
}

void sub_1004D4CD4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1004D4CCCLL);
}

void entitlements::CEHTTPDriver::~CEHTTPDriver(entitlements::CEHTTPDriver *this)
{
  *this = &off_101E516F8;
  *(this + 124) = 1;
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
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sDriver is going away. Invalidating all incomplete actions", &v5, 0x2Au);
  }

  LOBYTE(v5) = 0;
  LOBYTE(v6) = 0;
  entitlements::CEHTTPDriver::terminateAllQueries(this, 0, &v5);
}

{
  entitlements::CEHTTPDriver::~CEHTTPDriver(this);
}

void sub_1004D50C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void entitlements::CEHTTPDriver::terminateAllQueries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 624);
  for (i = *(a1 + 632); i != v6; i = i[1])
  {
    entitlements::CEHTTPDriver::postQueryEvent(a1, a2, i[2], a3);
  }

  v8 = *(a1 + 608);
  if (v8)
  {
    entitlements::CEHTTPDriver::postQueryEvent(a1, a2, v8, a3);
  }

  sub_1004EDC58(v6);
  if (*(a1 + 676) == 1)
  {
    *(a1 + 676) = 0;
  }

  v9 = *(a1 + 616);
  *(a1 + 608) = 0u;
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(***(a1 + 128));
    v12 = *(a1 + 160);
    *buf = 136315906;
    v14 = v11;
    v15 = 2080;
    v16 = " ";
    v17 = 2080;
    v18 = v12;
    v19 = 2080;
    v20 = "";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAll pending and requested queries terminated", buf, 0x2Au);
  }

  entitlements::CEHTTPDriver::addNewPendingQuery(a1);
}

void entitlements::CEHTTPDriver::initialize_sync(entitlements::CEHTTPDriver *this)
{
  sub_1009C16DC(this);
  sub_100004AA0(&v4, this + 1);
  v2 = *(&v4 + 1);
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  sub_10000501C(&v3, "/cc/props/connection_state");
  operator new();
}

void sub_1004D5D64(_Unwind_Exception *a1)
{
  sub_1000062D4(v1 - 128);
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleConnectionAvailability_sync(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 104);
  v3 = (this + 840);
  if (v2 == (this + 840))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v5 = ConnectionAvailabilityContainer::available();
      if (v5)
      {
        break;
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

      v4 |= v5;
      v2 = v7;
      if (v7 == v3)
      {
        goto LABEL_13;
      }
    }

    v4 = 1;
  }

LABEL_13:
  v9 = ***(this + 16);
  if (*(v9 + 49))
  {
    goto LABEL_14;
  }

  v18 = *v3;
  if (!*v3)
  {
    goto LABEL_14;
  }

  v19 = *(v9 + 52);
  v20 = v3;
  do
  {
    if (*(v18 + 28) >= v19)
    {
      v20 = v18;
    }

    v18 = *(v18 + 8 * (*(v18 + 28) < v19));
  }

  while (v18);
  if (v20 == v3 || v19 < *(v20 + 7))
  {
LABEL_14:
    v10 = 0;
  }

  else
  {
    v10 = ConnectionAvailabilityContainer::available();
  }

  v11 = v4 & 1;
  if (*(this + 776) != (v4 & 1) || *(this + 777) != v10)
  {
    v12 = *(this + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(***(this + 16));
      v14 = *(this + 20);
      v15 = asStringBool(*(this + 776));
      v16 = asStringBool(v4 & 1);
      v17 = asStringBool(*(this + 777));
      v21 = 136316930;
      v22 = v13;
      v23 = 2080;
      v24 = " ";
      v25 = 2080;
      v26 = v14;
      v27 = 2080;
      v28 = "";
      v29 = 2080;
      v30 = v15;
      v31 = 2080;
      v32 = v16;
      v33 = 2080;
      v34 = v17;
      v35 = 2080;
      v36 = asStringBool(v10);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sConnection availability changed. Internet: %s -> %s, Entitlement: %s -> %s. Issuing any pending transactions", &v21, 0x52u);
    }

    *(this + 776) = v11;
    if (*(this + 777) != v10)
    {
      *(this + 777) = v10;
      if (v10)
      {
        sub_1009C43FC(this, "connection availability");
      }
    }

    entitlements::CEHTTPDriver::evaluateConnectivityStateChange(this);
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
  }
}

uint64_t entitlements::CEHTTPDriver::evaluateConnectivityStateChange(entitlements::CEHTTPDriver *this)
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
  *v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  sub_10000C320(&v27);
  v2 = sub_100A81C8C(*(this + 18));
  v3 = v2;
  if ((v2 & 2) != 0)
  {
    v4 = (*(this + 776) & 1) != 0 || (*(this + 736) & 1) != 0 || *(this + 858) == 1;
    *buf = 1;
    v5 = sub_100A7F79C(buf);
    strlen(v5);
    v6 = sub_10000C030(&v28);
    sub_10000C030(v6);
    if (*(this + 776))
    {
      sub_10000C030(&v28);
      if (*(this + 736) != 1)
      {
LABEL_14:
        if ((*(this + 858) & 1) == 0)
        {
LABEL_17:
          sub_10000C030(&v28);
          if ((v3 & 1) == 0)
          {
            goto LABEL_20;
          }

          v7 = *(this + 777);
          sub_10000C030(&v28);
          v4 |= v7;
LABEL_19:
          *buf = 0;
          v8 = sub_100A7F79C(buf);
          strlen(v8);
          sub_10000C030(&v28);
          sub_10000C030(&v28);
          goto LABEL_20;
        }

        sub_10000C030(&v28);
LABEL_16:
        sub_10000C030(&v28);
        goto LABEL_17;
      }

      sub_10000C030(&v28);
    }

    else if ((*(this + 736) & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_10000C030(&v28);
    goto LABEL_14;
  }

  if (v2)
  {
    v4 = *(this + 777);
    goto LABEL_19;
  }

  sub_10000C030(&v28);
  v4 = 0;
LABEL_20:
  v9 = *(this + 5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(***(this + 16));
    v11 = *(this + 20);
    sub_10006EE70(&v28 + 8, &__p);
    v12 = v26 >= 0 ? &__p : __p;
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v44 = 2080;
    v45 = v11;
    v46 = 2080;
    v47 = "";
    v48 = 2082;
    v49 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sTransport availability: %{public}s", buf, 0x34u);
    if (v26 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 859) != (v4 & 1))
  {
    v13 = *(this + 5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PersonalityInfo::logPrefix(***(this + 16));
      v15 = *(this + 20);
      v16 = asStringBool(v4 & 1);
      *buf = 136316162;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v44 = 2080;
      v45 = v15;
      v46 = 2080;
      v47 = "";
      v48 = 2080;
      v49 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sTransport availability changes to: %s", buf, 0x34u);
    }

    *(this + 859) = v4 & 1;
    v17 = *(this + 14);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v18;
        v20 = *(this + 13);
        if (v20)
        {
          sub_100004AA0(buf, this + 1);
          v21 = *&buf[8];
          __p = *buf;
          v25 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v21);
          }

          (**v20)(v20, &__p, *(this + 859));
          if (v25)
          {
            std::__shared_weak_count::__release_weak(v25);
          }
        }

        sub_100004A34(v19);
      }
    }
  }

  *&v28 = v22;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  std::locale::~locale(v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1004D6774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_100004A34(v13);
  sub_10068C9D8(&a13);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleBBActivationEvent_sync(Registry **this)
{
  if (!*(**this[16] + 49))
  {
    ServiceMap = Registry::getServiceMap(this[6]);
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
    v13 = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, &v13);
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
LABEL_14:
          if ((v11 & 1) == 0)
          {
            sub_100004A34(v9);
          }

          return;
        }

LABEL_11:
        sub_100004AA0(&v13, this + 1);
        v12 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v12);
        }

        v15 = 0;
        operator new();
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
      goto LABEL_14;
    }

    goto LABEL_11;
  }
}