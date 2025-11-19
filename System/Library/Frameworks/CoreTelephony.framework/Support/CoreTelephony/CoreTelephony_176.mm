void sub_1014F1624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_1005AD788(v35 - 192);
  sub_100077CD4(&a23, a24);
  sub_100EA5664(&a14);
  sub_1000049E0(&a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F173C(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 2)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_100A43314(*(v1 + 16));
      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E Received an IDS error : %s while exchanging version info", buf, 0xCu);
    }
  }

  else
  {
    v19 = 0u;
    memset(v20, 0, 24);
    memset(__p, 0, sizeof(__p));
    *buf = 0u;
    if (v3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    if (*(v1 + 39) < 0)
    {
      sub_100005F2C(buf, *(v1 + 16), *(v1 + 24));
    }

    else
    {
      *buf = *(v1 + 16);
      __p[0] = *(v1 + 32);
    }

    if (*(v1 + 63) < 0)
    {
      sub_100005F2C(&__p[1], *(v1 + 40), *(v1 + 48));
    }

    else
    {
      *&__p[1] = *(v1 + 40);
      __p[3] = *(v1 + 56);
    }

    LOWORD(v19) = *(v1 + 64);
    sub_10002D728(&v19 + 1, (v1 + 72));
    sub_1002030F8(v20, (v1 + 80));
    *(&v20[0] + 1) = *(v1 + 88);
    *(v20 + 14) = *(v1 + 94);
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100A432F0(v19);
      v8 = buf;
      if (SHIBYTE(__p[0]) < 0)
      {
        v8 = *buf;
      }

      if (SHIBYTE(__p[3]) >= 0)
      {
        v9 = &__p[1];
      }

      else
      {
        v9 = __p[1];
      }

      *__dst = 136315650;
      *&__dst[4] = v7;
      *&__dst[12] = 2080;
      *&__dst[14] = v8;
      *&__dst[22] = 2080;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Received version info response %s from device %s, tx-id %s", __dst, 0x20u);
    }

    memset(__dst, 0, sizeof(__dst));
    sub_101631A78(buf, __dst);
    if (*&__dst[16])
    {
      (*(**(v2 + 112) + 16))(*(v2 + 112), buf, __dst);
    }

    else
    {
      v10 = *(v2 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E Version info is invalid", v16, 2u);
      }
    }

    sub_100077CD4(__dst, *&__dst[8]);
    v11 = *(v2 + 128);
    if (SHIBYTE(__p[3]) < 0)
    {
      sub_100005F2C(__dst, __p[1], __p[2]);
    }

    else
    {
      *__dst = *&__p[1];
      *&__dst[16] = __p[3];
    }

    (*(*v11 + 56))(v11, __dst);
    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    sub_1002030AC(v20);
    sub_10002D760(&v19 + 1);
    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(*buf);
    }
  }

  sub_100EA7994(&v15);
  return sub_1000049E0(&v14);
}

void sub_1014F1AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100EA7994(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F1B28(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  if (*(*v1 + 192))
  {
    *cf = 0u;
    *v16 = 0u;
    *&v16[20] = 0;
    memset(v14, 0, sizeof(v14));
    v16[8] = 2;
    *&v16[12] = 0x50000003CLL;
    std::string::operator=(v14, v2 + 7);
    *&v16[12] = 300;
    v16[8] = 2;
    v3 = v2[10].__r_.__value_.__s.__data_[16];
    if (*(v1 + 55) < 0)
    {
      sub_100005F2C(__p, *(v1 + 32), *(v1 + 40));
    }

    else
    {
      *__p = *(v1 + 32);
      v13 = *(v1 + 48);
    }

    sub_101631EC4(v14, v3, (v1 + 8), __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    v5 = v2[1].__r_.__value_.__r.__words[2];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100A432F0(LOWORD(cf[0]));
      v7 = v14;
      if ((v14[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v14[0].__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v6;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Sending the message %s to device %s", &buf, 0x16u);
    }

    size = v2[5].__r_.__value_.__l.__size_;
    if (SHIBYTE(v14[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, v14[0].__r_.__value_.__l.__data_, v14[0].__r_.__value_.__l.__size_);
    }

    else
    {
      buf = v14[0];
    }

    if (SHIBYTE(v14[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v18, v14[1].__r_.__value_.__l.__data_, v14[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = v14[1];
    }

    v19 = cf[0];
    v20 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v21 = *v16;
    if (*v16)
    {
      CFRetain(*v16);
    }

    v22[0] = *&v16[8];
    *(v22 + 6) = *&v16[14];
    (*(*size + 48))(size, &buf, 0);
    sub_1002030AC(&v21);
    sub_10002D760(&v20);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(v16);
    sub_10002D760(&cf[1]);
    if (SHIBYTE(v14[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = v2[1].__r_.__value_.__r.__words[2];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Can't send database as there is no device in proximity", v14, 2u);
    }
  }

  sub_1014F1E9C(&v11);
  return sub_1000049E0(&v10);
}

void sub_1014F1E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_1005AD788(&a18);
  sub_1014F1E9C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F1E9C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    sub_100077CD4(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return result;
}

void *sub_1014F1F00(void *a1)
{
  *a1 = off_101F45298;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014F1F4C(void *a1)
{
  *a1 = off_101F45298;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014F2024(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F45298;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014F205C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014F206C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014F20AC(uint64_t a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (a2[2])
  {
    v4[2] = &v10;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v12 = *(a1 + 8);
        v13 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_101264C6C(&v14, &v9);
        v8 = *(v7 + 16);
        if (v8)
        {
          if (std::__shared_weak_count::lock(v8))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }

  sub_1001A8E08(&v9, v10);
}

void sub_1014F2280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v13);
  sub_1001A8E08(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1014F22B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014F22FC(void **a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = v1[2];
  v3 = v1 + 3;
  if (v2 != v1 + 3)
  {
    v4 = *v1;
    do
    {
      if ((*(v2 + 87) & 0x8000000000000000) != 0)
      {
        if (!v2[9])
        {
LABEL_8:
          v7 = *(v4 + 40);
          goto LABEL_17;
        }
      }

      else if (!*(v2 + 87))
      {
        goto LABEL_8;
      }

      v5 = *(v2 + 63);
      if (v5 < 0)
      {
        v6 = v2[6];
      }

      else
      {
        v6 = *(v2 + 63);
      }

      v7 = *(v4 + 40);
      if (v6)
      {
        v8 = v2 + 5;
        if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(v2 + 8);
          if (v9 > 7)
          {
            switch(v9)
            {
              case 8:
                v10 = "gsm";
                break;
              case 16:
                v10 = "scdma";
                break;
              case 32:
                v10 = "nr";
                break;
              default:
                goto LABEL_29;
            }
          }

          else
          {
            switch(v9)
            {
              case 1:
                v10 = "umts";
                break;
              case 2:
                v10 = "cdma";
                break;
              case 4:
                v10 = "lte";
                break;
              default:
LABEL_29:
                v10 = "unknown";
                break;
            }
          }

          v13 = v2 + 5;
          if ((v5 & 0x80000000) != 0)
          {
            v13 = *v8;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          v26 = 2080;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Attempting to send %s database version %s", buf, 0x16u);
          LOBYTE(v5) = *(v2 + 63);
        }

        v23 = *(v2 + 8);
        if ((v5 & 0x80) != 0)
        {
          sub_100005F2C(v24, v2[5], v2[6]);
        }

        else
        {
          *v24 = *v8;
          v24[2] = *(v2 + 7);
        }

        v22[0] = 0;
        v22[1] = 0;
        v21 = v22;
        sub_101264FAC(&v21, v22, &v23);
        *buf = v4;
        sub_101264ECC(&buf[8], &v21);
        if (*(v2 + 87) < 0)
        {
          sub_100005F2C(__p, v2[8], v2[9]);
        }

        else
        {
          *__p = *(v2 + 4);
          __p[2] = *(v2 + 10);
        }

        v14 = *(v4 + 16);
        if (v14)
        {
          if (std::__shared_weak_count::lock(v14))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

LABEL_17:
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = *(v2 + 8);
        if (v11 > 7)
        {
          switch(v11)
          {
            case 8:
              v12 = "gsm";
              goto LABEL_60;
            case 16:
              v12 = "scdma";
              goto LABEL_60;
            case 32:
              v12 = "nr";
              goto LABEL_60;
          }
        }

        else
        {
          switch(v11)
          {
            case 1:
              v12 = "umts";
              goto LABEL_60;
            case 2:
              v12 = "cdma";
              goto LABEL_60;
            case 4:
              v12 = "lte";
LABEL_60:
              *buf = 136315138;
              *&buf[4] = v12;
              _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Not sending %s database because there is no associated file/version", buf, 0xCu);
              goto LABEL_44;
          }
        }

        v12 = "unknown";
        goto LABEL_60;
      }

LABEL_44:
      v15 = v2[1];
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
          v16 = v2[2];
          v17 = *v16 == v2;
          v2 = v16;
        }

        while (!v17);
      }

      v2 = v16;
    }

    while (v16 != v3);
  }

  sub_1014F2818(&v20);
  return sub_1000049E0(&v19);
}

void sub_1014F278C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char *a32)
{
  sub_100077CD4(v32 + 8, a32);
  sub_100077CD4(&a16, a19);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1014F2818(&a15);
  sub_1000049E0(&a14);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F2818(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1001A8E08(v1 + 16, *(v1 + 24));
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void IMSCallModelInterface::~IMSCallModelInterface(IMSCallModelInterface *this)
{
  *(this + 1) = off_101F45390;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t sub_1014F2908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = emergency::CallAgent::CallAgent();
  *v5 = off_101F45428;
  *(v5 + 120) = a3;
  *(v5 + 128) = 0;
  if (!a3)
  {
    __assert_rtn("ActivationAgent", "EmergencyActivationAgent.cpp", 19, "activator && Need valid data session activator");
  }

  return a1;
}

uint64_t sub_1014F2994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10009CF40(v16, a2);
  sub_1000224C8(v15, a3);
  sub_10009CF40(v14, a4);
  emergency::CallAgent::dial();
  sub_10002B644(v14);
  sub_10000FF50(v15);
  sub_10002B644(v16);
  if (*(a1 + 128) == 1)
  {
    return (*(*a1 + 96))(a1);
  }

  v8 = *(a1 + 120);
  v9 = *(a1 + 8);
  v13[0] = off_101F454C8;
  v13[1] = a1;
  v13[3] = v13;
  v12[0] = off_101F45558;
  v12[1] = a1;
  v12[3] = v12;
  v11[0] = off_101F455D8;
  v11[1] = a1;
  v11[3] = v11;
  v10 = (*(*a1 + 88))(a1);
  (*(*v8 + 32))(v8, v9, v13, v12, v11, v10);
  sub_10002B644(v11);
  sub_10000FF50(v12);
  return sub_1014F2D5C(v13);
}

void sub_1014F2B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_10002B644(va);
  sub_10000FF50(va1);
  sub_1014F2D5C(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1014F2BC8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 128) = 0;
    (*(**(a1 + 120) + 40))(*(a1 + 120));
  }

  return emergency::CallAgent::endDialing(a1);
}

uint64_t sub_1014F2CB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F454C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014F2CE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v1[128] = 1;
  return (*(*v1 + 96))();
}

uint64_t sub_1014F2D10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014F2D5C(uint64_t a1)
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

uint64_t sub_1014F2E4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F45558;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014F2E78(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v3[128] = 0;
  return (*(*v3 + 104))(v3, v2);
}

uint64_t sub_1014F2EA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014F2F64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F455D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014F2F90(uint64_t a1)
{
  v1 = *(a1 + 8);
  v1[128] = 0;
  return (*(*v1 + 112))();
}

uint64_t sub_1014F2FBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void RegistrationController::handleScanCompletionStatus(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void RegistrationController::operatorName(uint64_t a1, int a2, __int128 *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1174405120;
  v5[2] = sub_1014F3288;
  v5[3] = &unk_101F45698;
  v5[4] = a1;
  v20 = a2;
  sub_100EBBD10(&v6, a3);
  v23 = 0;
  v24 = 0;
  sub_100004AA0(&v23, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C8C;
  block[3] = &unk_101F45848;
  block[5] = v23;
  v22 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 == 1 && v13 < 0)
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

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_1014F3288(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 224));
  v131 = 0;
  v130 = 0;
  RegistrationController::getModel_sync(v2, *(a1 + 224), &v130);
  v4 = v130;
  if (v130)
  {
    v5 = *(a1 + 116);
    if (v5 == 11)
    {
      v5 = (*(*v130 + 472))(v130);
    }

    __dst = 0uLL;
    v129 = 0;
    if (*(a1 + 87) < 0)
    {
      sub_100005F2C(&__dst, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      __dst = *(a1 + 64);
      v129 = *(a1 + 80);
    }

    __src = 0uLL;
    v127 = 0;
    if (*(a1 + 63) < 0)
    {
      sub_100005F2C(&__src, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __src = *(a1 + 40);
      v127 = *(a1 + 56);
    }

    v8 = v5 + 1;
    if ((v5 + 1) > 0xC)
    {
      goto LABEL_119;
    }

    if (((1 << v8) & 0xD0A) == 0)
    {
      if (((1 << v8) & 0x1071) != 0)
      {
        v9 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          v10 = SHIBYTE(v129);
          v11 = __dst;
          v12 = SHIBYTE(v127);
          v13 = __src;
          v14 = asString();
          p_src = &__src;
          if (v12 < 0)
          {
            p_src = v13;
          }

          *buf = 136315650;
          p_dst = &__dst;
          if (v10 < 0)
          {
            p_dst = v11;
          }

          *&buf[4] = p_dst;
          *&buf[12] = 2080;
          *&buf[14] = p_src;
          *&buf[22] = 2080;
          *&buf[24] = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Ignoring short operator name (%s) and long (%s) for RAT %s", buf, 0x20u);
        }

        goto LABEL_119;
      }

      if (v5 != 8 || ((*(**(v2 + 104) + 128))(*(v2 + 104)) & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    v17 = HIBYTE(v127);
    v18 = HIBYTE(v127);
    if (v127 < 0)
    {
      v17 = *(&__src + 1);
    }

    if (v17)
    {
      goto LABEL_30;
    }

    v19 = HIBYTE(v129);
    if (v129 < 0)
    {
      v19 = *(&__dst + 1);
    }

    if (v19)
    {
LABEL_30:
      if (*(a1 + 152) == 1 && *(a1 + 192) == 1)
      {
        v20 = *v3;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          IntValue = MCC::getIntValue((a1 + 120));
          IntegerWidth = MNC::getIntegerWidth((a1 + 160));
          v23 = MCC::getIntValue((a1 + 160));
          *buf = 67109632;
          *&buf[4] = IntValue;
          *&buf[8] = 1024;
          *&buf[10] = IntegerWidth;
          *&buf[14] = 1024;
          *&buf[16] = v23;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Using PLMN (%03d-%0.*d) from baseband", buf, 0x14u);
          v18 = HIBYTE(v127);
        }

        if (v18 < 0)
        {
          sub_100005F2C(&v107, __src, *(&__src + 1));
        }

        else
        {
          v107 = __src;
          v108 = v127;
        }

        if (SHIBYTE(v129) < 0)
        {
          sub_100005F2C(&v109, __dst, *(&__dst + 1));
        }

        else
        {
          v109 = __dst;
          v110 = v129;
        }

        if (*(a1 + 111) < 0)
        {
          sub_100005F2C(&v111, *(a1 + 88), *(a1 + 96));
        }

        else
        {
          v111 = *(a1 + 88);
          v112 = *(a1 + 104);
        }

        v113 = *(a1 + 112);
        v114 = v5;
        sub_10002E588(&v115, (a1 + 120));
        sub_10002DEF4(&v119, (a1 + 160));
        v124 = 0;
        v123 = 0;
        v125 = 0;
        (*(*v4 + 344))(v4, &v107);
        if (SHIBYTE(v125) < 0)
        {
          operator delete(v123);
        }

        if (v122 == 1 && v121 < 0)
        {
          operator delete(v120);
        }

        if (v118 == 1 && v117 < 0)
        {
          operator delete(v116);
        }

        if (SHIBYTE(v112) < 0)
        {
          operator delete(v111);
        }

        if (SHIBYTE(v110) < 0)
        {
          operator delete(v109);
        }

        if (SHIBYTE(v108) < 0)
        {
          v28 = v107;
          goto LABEL_118;
        }
      }

      else
      {
        v24 = *v3;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 432))(buf, v4);
          v25 = MCC::getIntValue(buf);
          (*(*v4 + 440))(&v104, v4);
          v26 = MNC::getIntegerWidth(&v104);
          (*(*v4 + 440))(&v101, v4);
          v27 = MCC::getIntValue(&v101);
          LODWORD(v142) = 67109632;
          DWORD1(v142) = v25;
          WORD4(v142) = 1024;
          *(&v142 + 10) = v26;
          HIWORD(v142) = 1024;
          LODWORD(v143) = v27;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Using PLMN (%03d-%0.*d) from model", &v142, 0x14u);
          if (v103 < 0)
          {
            operator delete(*(&v101 + 1));
          }

          if (v106 < 0)
          {
            operator delete(*(&v104 + 1));
          }

          if ((buf[31] & 0x80000000) != 0)
          {
            operator delete(*&buf[8]);
          }

          v18 = HIBYTE(v127);
        }

        if (v18 < 0)
        {
          sub_100005F2C(&v82, __src, *(&__src + 1));
        }

        else
        {
          v82 = __src;
          v83 = v127;
        }

        if (SHIBYTE(v129) < 0)
        {
          sub_100005F2C(&v84, __dst, *(&__dst + 1));
        }

        else
        {
          v84 = __dst;
          v85 = v129;
        }

        if (*(a1 + 111) < 0)
        {
          sub_100005F2C(&v86, *(a1 + 88), *(a1 + 96));
        }

        else
        {
          v86 = *(a1 + 88);
          v87 = *(a1 + 104);
        }

        v88 = *(a1 + 112);
        v89 = v5;
        (*(*v4 + 432))(buf, v4);
        MCC::MCC(&v90, buf);
        v93 = 1;
        (*(*v4 + 440))(&v104, v4);
        MCC::MCC(&v94, &v104);
        v97 = 1;
        v100 = 0;
        v98 = 0;
        v99 = 0;
        (*(*v4 + 344))(v4, &v82);
        if (SHIBYTE(v100) < 0)
        {
          operator delete(v98);
        }

        if (v97 == 1 && v96 < 0)
        {
          operator delete(v95);
        }

        if (v93 == 1 && v92 < 0)
        {
          operator delete(v91);
        }

        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (SHIBYTE(v85) < 0)
        {
          operator delete(v84);
        }

        if (SHIBYTE(v83) < 0)
        {
          operator delete(v82);
        }

        if (v106 < 0)
        {
          operator delete(*(&v104 + 1));
        }

        if ((buf[31] & 0x80000000) != 0)
        {
          v28 = *&buf[8];
LABEL_118:
          operator delete(v28);
        }
      }

LABEL_119:
      v37 = *(a1 + 224);
      sub_100EBBD10(&v54, (a1 + 40));
      if ((atomic_load_explicit(&qword_101FCACB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCACB0))
      {
        *buf = *off_101F456C8;
        *&buf[16] = @"Type2";
        qword_101FCACC0 = 0;
        unk_101FCACC8 = 0;
        qword_101FCACB8 = 0;
        sub_10005B328(&qword_101FCACB8, buf, &buf[24], 3uLL);
        __cxa_atexit(sub_10041F938, &qword_101FCACB8, &_mh_execute_header);
        __cxa_guard_release(&qword_101FCACB0);
      }

      *&v142 = v2;
      *(&v142 + 1) = v37;
      v38 = HIBYTE(v67);
      if (v67 < 0)
      {
        v38 = *(&v66 + 1);
      }

      if (v38)
      {
        ServiceMap = Registry::getServiceMap(*(v2 + 136));
        v40 = ServiceMap;
        if (v41 < 0)
        {
          v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
          v43 = 5381;
          do
          {
            v41 = v43;
            v44 = *v42++;
            v43 = (33 * v43) ^ v44;
          }

          while (v44);
        }

        std::mutex::lock(ServiceMap);
        *buf = v41;
        v45 = sub_100009510(&v40[1].__m_.__sig, buf);
        if (v45)
        {
          v47 = v45[3];
          v46 = v45[4];
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v40);
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v46);
            if (!v47)
            {
LABEL_167:
              sub_100004A34(v46);
              goto LABEL_168;
            }

LABEL_133:
            v134 = 0;
            (*(*v47 + 80))(&v133, v47, v37, 1, @"TypesOfEvo", 0, 0);
            *&v104 = v133;
            if (v133)
            {
              CFRetain(v133);
            }

            *&v101 = 0;
            *buf = 0;
            sub_100010180(buf, &v104);
            if (*buf)
            {
              sub_1000676D4(&v101, buf);
            }

            sub_10001021C(buf);
            v134 = v101;
            *&v101 = 0;
            sub_10001021C(&v101);
            sub_10000A1EC(&v104);
            sub_10000A1EC(&v133);
            if (v134)
            {
              if (SHIBYTE(v67) < 0)
              {
                sub_100005F2C(&v101, v66, *(&v66 + 1));
              }

              else
              {
                v101 = v66;
                v102 = v67;
              }

              if (SHIBYTE(v102) < 0)
              {
                sub_100005F2C(&v104, v101, *(&v101 + 1));
              }

              else
              {
                v104 = v101;
                v105 = v102;
              }

              v135 = 0;
              if (SHIBYTE(v105) < 0)
              {
                sub_100005F2C(buf, v104, *(&v104 + 1));
              }

              else
              {
                *buf = v104;
                *&buf[16] = v105;
              }

              v136 = 0;
              if (ctu::cf::convert_copy())
              {
                v48 = v135;
                v135 = v136;
                *v137 = v48;
                sub_100005978(v137);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              v132 = v135;
              v135 = 0;
              sub_100005978(&v135);
              if (SHIBYTE(v105) < 0)
              {
                operator delete(v104);
              }

              if (SHIBYTE(v102) < 0)
              {
                operator delete(v101);
              }

              if (qword_101FCACC0 == qword_101FCACB8)
              {
LABEL_164:
                LOBYTE(v49) = 0;
              }

              else
              {
                v49 = 0;
                if (((qword_101FCACC0 - qword_101FCACB8) >> 3) <= 1)
                {
                  v50 = 1;
                }

                else
                {
                  v50 = (qword_101FCACC0 - qword_101FCACB8) >> 3;
                }

                while (1)
                {
                  if (v49 >= (qword_101FCACC0 - qword_101FCACB8) >> 3)
                  {
                    sub_1002030E0();
                  }

                  Value = CFDictionaryGetValue(v134, *(qword_101FCACB8 + 8 * v49));
                  v52 = Value;
                  if (Value)
                  {
                    v53 = CFGetTypeID(Value);
                    if (v53 == CFStringGetTypeID())
                    {
                      if (CFEqual(v132, v52))
                      {
                        break;
                      }
                    }
                  }

                  if (v50 == ++v49)
                  {
                    goto LABEL_164;
                  }
                }
              }

              LOBYTE(v104) = v49;
              *buf = 1;
              *&buf[16] = 0u;
              v145 = 0;
              *&buf[8] = v142 + 824;
              sub_100B77900(&buf[16], v142 + 856);
              sub_1014F5A7C(&buf[16], &v142 + 2, &v104);
              sub_1014F5B64(buf);
              sub_100005978(&v132);
            }

            sub_10001021C(&v134);
            if (!v46)
            {
              goto LABEL_168;
            }

            goto LABEL_167;
          }

          std::mutex::unlock(v40);
          if (v47)
          {
            goto LABEL_133;
          }
        }

        else
        {
          std::mutex::unlock(v40);
        }
      }

      else
      {
        LOBYTE(v104) = 0;
        *buf = 1;
        *&buf[16] = 0u;
        v145 = 0;
        *&buf[8] = v2 + 824;
        sub_100B77900(&buf[16], v2 + 856);
        sub_1014F5A7C(&buf[16], &v142 + 2, &v104);
        sub_1014F5B64(buf);
      }

LABEL_168:
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      if (v65 == 1 && v64 < 0)
      {
        operator delete(v63);
      }

      if (v62 == 1 && v61 < 0)
      {
        operator delete(v60);
      }

      if (v59 < 0)
      {
        operator delete(v58);
      }

      if (v57 < 0)
      {
        operator delete(v56);
      }

      if (v55 < 0)
      {
        operator delete(v54);
      }

      if (SHIBYTE(v127) < 0)
      {
        operator delete(__src);
      }

      if (SHIBYTE(v129) < 0)
      {
        operator delete(__dst);
      }

      goto LABEL_186;
    }

    if (*(a1 + 152) == 1 && *(a1 + 192) == 1)
    {
      v29 = *v3;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = MCC::getIntValue((a1 + 120));
        v31 = MNC::getIntegerWidth((a1 + 160));
        v32 = MCC::getIntValue((a1 + 160));
        *buf = 67109632;
        *&buf[4] = v30;
        *&buf[8] = 1024;
        *&buf[10] = v31;
        *&buf[14] = 1024;
        *&buf[16] = v32;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Using PLMN (%03d-%0.*d) from baseband", buf, 0x14u);
        v18 = HIBYTE(v127);
      }

      if (v18 < 0)
      {
        sub_100005F2C(&v72, __src, *(&__src + 1));
      }

      else
      {
        v72 = __src;
        v73 = v127;
      }

      if (SHIBYTE(v129) < 0)
      {
        sub_100005F2C(&v74, __dst, *(&__dst + 1));
      }

      else
      {
        v74 = __dst;
        v75 = v129;
      }

      if (*(a1 + 111) < 0)
      {
        sub_100005F2C(&v76, *(a1 + 88), *(a1 + 96));
      }

      else
      {
        v76 = *(a1 + 88);
        v77 = *(a1 + 104);
      }

      v78 = *(a1 + 112);
      v79 = v5;
      sub_10002E588(&v80, (a1 + 120));
      sub_10002DEF4(v81, (a1 + 160));
      memset(&v81[40], 0, 24);
      (*(*v4 + 344))(v4, &v72);
      sub_100EBBE8C(&v72);
      goto LABEL_119;
    }

    v142 = 0uLL;
    v143 = 0;
    (*(*v4 + 432))(buf, v4);
    (*(*v4 + 440))(&v104, v4);
    formPLMN(buf, &v104);
    if (v106 < 0)
    {
      operator delete(*(&v104 + 1));
    }

    if ((buf[31] & 0x80000000) != 0)
    {
      operator delete(*&buf[8]);
    }

    v33 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v4 + 432))(buf, v4);
      v34 = MCC::getIntValue(buf);
      (*(*v4 + 440))(&v104, v4);
      v35 = MNC::getIntegerWidth(&v104);
      (*(*v4 + 440))(&v101, v4);
      v36 = MCC::getIntValue(&v101);
      *v137 = 67109632;
      *&v137[4] = v34;
      v138 = 1024;
      v139 = v35;
      v140 = 1024;
      v141 = v36;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Using PLMN (%03d-%0.*d) from model", v137, 0x14u);
      if (v103 < 0)
      {
        operator delete(*(&v101 + 1));
      }

      if (v106 < 0)
      {
        operator delete(*(&v104 + 1));
      }

      if ((buf[31] & 0x80000000) != 0)
      {
        operator delete(*&buf[8]);
      }
    }

    if (SHIBYTE(v143) < 0)
    {
      sub_100005F2C(&v70, v142, *(&v142 + 1));
      if (SHIBYTE(v143) < 0)
      {
        sub_100005F2C(&v68, v142, *(&v142 + 1));
LABEL_112:
        (*(*v4 + 352))(v4, &v70, &v68, 5);
        if (SHIBYTE(v69) < 0)
        {
          operator delete(v68);
        }

        if (SHIBYTE(v71) < 0)
        {
          operator delete(v70);
        }

        if (SHIBYTE(v143) < 0)
        {
          v28 = v142;
          goto LABEL_118;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v70 = v142;
      v71 = v143;
    }

    v68 = v142;
    v69 = v143;
    goto LABEL_112;
  }

  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    v7 = subscriber::asString();
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model %s for operator name", buf, 0xCu);
  }

LABEL_186:
  if (v131)
  {
    sub_100004A34(v131);
  }
}

void sub_1014F43E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_101FCACB0);
  sub_100EBBE8C(va);
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (STACK[0x3C0])
  {
    sub_100004A34(STACK[0x3C0]);
  }

  _Unwind_Resume(a1);
}

void sub_1014F4804(uint64_t a1)
{
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

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

void RegistrationController::handleNetworkReject(uint64_t a1, int a2, int a3, char a4, int a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1014F49CC;
  v7[3] = &unk_101F456E0;
  v7[4] = a1;
  v8 = a2;
  v9 = a3;
  v11 = a4;
  v10 = a5;
  v14 = 0;
  v15 = 0;
  sub_100004AA0(&v14, (a1 + 8));
  v6 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C8C;
  block[3] = &unk_101F45848;
  block[5] = v14;
  v13 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1014F49CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 44);
  v3 = *(a1 + 52);
  v4 = *(a1 + 48);
  v20 = *(a1 + 40);
  v5 = sub_100007DEC((v1 + 8), &v20);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = (*(*v1[6] + 16))(v1[6], v20);
  (*(*v7 + 312))(v7, v3);
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = asString();
    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Registration for domain %s failed with cause %d", buf, 0x12u);
  }

  (*(*v7 + 432))(buf, v7);
  v11 = MCC::valid(buf);
  if (SBYTE7(v23) < 0)
  {
    operator delete(*&buf[8]);
  }

  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  (*(*v7 + 432))(buf, v7);
  MCC::getStringValue(v18, buf);
  v12 = v11 ^ 1;
  if (SBYTE7(v23) < 0)
  {
    operator delete(*&buf[8]);
  }

  switch(v2)
  {
    case 3:
      *&buf[8] = 0u;
      v24 = 0u;
      v23 = 0u;
      *buf = v1;
      *&buf[8] = v20;
      buf[12] = v3;
      *&buf[16] = v4;
      if (SHIBYTE(v19) < 0)
      {
        sub_100005F2C(&v23, v18[0], v18[1]);
      }

      else
      {
        v23 = *v18;
        *&v24 = v19;
      }

      BYTE8(v24) = v11 ^ 1;
      if (SBYTE7(v24) < 0)
      {
        sub_100005F2C(__p, v23, *(&v23 + 1));
        v12 = BYTE8(v24);
      }

      else
      {
        *__p = v23;
        v16 = v24;
      }

      v17 = v12;
      v21 = 0;
      operator new();
    case 2:
      *&buf[8] = 0u;
      v24 = 0u;
      v23 = 0u;
      *buf = v1;
      *&buf[8] = v20;
      buf[12] = v3;
      *&buf[16] = v4;
      if (SHIBYTE(v19) < 0)
      {
        sub_100005F2C(&v23, v18[0], v18[1]);
      }

      else
      {
        v23 = *v18;
        *&v24 = v19;
      }

      BYTE8(v24) = v11 ^ 1;
      if (SBYTE7(v24) < 0)
      {
        sub_100005F2C(__p, v23, *(&v23 + 1));
        v12 = BYTE8(v24);
      }

      else
      {
        *__p = v23;
        v16 = v24;
      }

      v17 = v12;
      v21 = 0;
      operator new();
    case 1:
      (*(*v1[43] + 168))(v1[43], v20, v3, v4);
      break;
    default:
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        *buf = 136315394;
        *&buf[4] = v14;
        *&buf[12] = 1024;
        *&buf[14] = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N Unhandled network reject service domain %s for reject cause code %d", buf, 0x12u);
      }

      break;
  }

  (*(*v1[39] + 112))(v1[39], v20, v3);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1014F4F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v39)
  {
    sub_100004A34(v39);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::networkTimeUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002E588(&v5, (a3 + 72));
  sub_10002DEF4(&v6, (a3 + 112));
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_1014F5210(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (*(v28 + 160) == 1 && *(v28 + 159) < 0)
  {
    operator delete(*(v28 + 136));
  }

  if (*(v28 + 120) == 1 && *(v28 + 119) < 0)
  {
    operator delete(*(v28 + 96));
  }

  sub_10004F058(a1);
}

void RegistrationController::ratSelectionComplete(uint64_t a1, int a2, char a3, char a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1014F53A8;
  v6[3] = &unk_101F45700;
  v6[4] = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = 0;
  v13 = 0;
  sub_100004AA0(&v12, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C8C;
  block[3] = &unk_101F45848;
  block[5] = v12;
  v11 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_1014F53A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15 = 0;
  v16 = 0;
  RegistrationController::getModel_sync(v2, *(a1 + 40), &v15);
  v3 = v15;
  if (v15)
  {
    *buf = 0;
    RatSelectionType::RatSelectionType();
    v4 = (*(*v3 + 608))(v3, *buf);
    (*(*v3 + 568))(v3, 0);
    v5 = v2[43];
    v6 = (*(*v3 + 664))(v3);
    v7 = *(a1 + 44);
    v8 = (*(*v3 + 592))(v3);
    (*(*v5 + 112))(v5, v6, v7, v8);
    if (v4)
    {
      v9 = v2[41];
      v10 = *(a1 + 40);
      Selection = RatSelectionType::getSelection(buf);
      PreferredSelection = RatSelectionType::getPreferredSelection(buf);
      (*(*v9 + 136))(v9, v10, Selection, PreferredSelection);
    }
  }

  else
  {
    v13 = v2[5];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find model %s for RAT selection complete", buf, 0xCu);
    }
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_1014F5610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::setSystemSelectionAndOrderPreferenceFailed(uint64_t a1, int a2)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = sub_1014F58B8;
  v14[3] = &unk_101F45720;
  v14[4] = a1;
  v15 = a2;
  v18 = 0;
  v19 = 0;
  sub_100004AA0(&v18, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C8C;
  block[3] = &unk_101F45848;
  block[5] = v18;
  v17 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v14;
  dispatch_async(v3, block);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 136));
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
  block[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, block);
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
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_15:
  if ((*(*v12 + 16))(v12))
  {
    dispatch_get_global_queue(0, 0);
    if ((v13 & 1) == 0)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1014F5898(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014F58B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v7 = 0;
  RegistrationController::getModel_sync(v2, *(a1 + 40), &v6);
  v3 = v6;
  v4 = *(v2 + 40);
  if (v6)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Serving System Selection failed", buf, 2u);
    }

    (*(*v3 + 568))(v3, 0);
    (*(*v3 + 584))(v3, 0);
    (*(**(v2 + 344) + 120))(*(v2 + 344), *(a1 + 40));
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = subscriber::asString();
    *buf = 136315138;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for system selection preference failure", buf, 0xCu);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1014F5A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1014F5A7C(uint64_t *result, int *a2, _BYTE *a3)
{
  v4 = result + 1;
  v5 = result[1];
  if (v5)
  {
    v6 = *a2;
    v7 = result + 1;
    do
    {
      if (*(v5 + 28) >= v6)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 28) < v6));
    }

    while (v5);
    if (v7 != v4 && v6 >= *(v7 + 7))
    {
      *(v7 + 32) = *a3;
      return result;
    }

    v4 = v7;
  }

  v8 = 0;
  v9 = 0;
  result = sub_1000504CC(result, v4, &v9, &v8, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1014F5B64(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_27;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 7) == *(v4 + 7) && *(v3 + 32) == *(v4 + 32);
        if (!v5)
        {
          break;
        }

        v6 = v3[1];
        v7 = v3;
        if (v6)
        {
          do
          {
            v3 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v3 = v7[2];
            v5 = *v3 == v7;
            v7 = v3;
          }

          while (!v5);
        }

        v8 = v4[1];
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
            v9 = v4[2];
            v5 = *v9 == v4;
            v4 = v9;
          }

          while (!v5);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_27;
        }
      }
    }

    v10 = v2 + 5;
    sub_10006DCAC((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v11 = (a1 + 24);
    v2[5] = v12;
    v2[6] = v13;
    if (v13)
    {
      *(v12 + 16) = v10;
      *(a1 + 16) = v11;
      *v11 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v10;
    }

    v14 = v2[3];
    if (v14)
    {
      (*(*v14 + 48))(v14, v2 + 4);
    }
  }

LABEL_27:
  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1014F5D58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014F5E30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014F5E7C(uint64_t **a1)
{
  v5 = 0;
  v1 = *a1;
  v2 = **a1;
  v6 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 2), &v5);
  if (v5)
  {
    (*(**(v2 + 344) + 224))(*(v2 + 344), *(v1 + 2), *(v1 + 12));
  }

  else
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = subscriber::asString();
      *buf = 136315138;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not find model %s for OOS scan completion status", buf, 0xCu);
    }
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  operator delete();
}

void sub_1014F5FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

uint64_t sub_1014F5FE4(uint64_t a1)
{
  *a1 = off_101F45888;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_1014F6034(uint64_t a1)
{
  *a1 = off_101F45888;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

char *sub_1014F615C(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101F45888;
  v4 = *(result + 8);
  *(a2 + 24) = *(result + 6);
  *(a2 + 8) = v4;
  if (result[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  else
  {
    v5 = *(result + 2);
    *(a2 + 48) = *(result + 6);
    *(a2 + 32) = v5;
  }

  *(a2 + 56) = v3[56];
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1014F61E4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_1014F61F8(void **__p)
{
  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  operator delete(__p);
}

void sub_1014F623C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  *v7 = *(a2 + 16);
  *&v7[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *(a1 + 8);
  if (v5 < 0)
  {
    sub_100005F2C(v8, v4, v3);
  }

  else
  {
    v8[0] = v4;
    v8[1] = v3;
    *v9 = *v7;
    *&v9[3] = *&v7[3];
    v10 = v5;
  }

  if (*(a1 + 55) < 0)
  {
    sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    __p[2] = *(a1 + 48);
  }

  v12 = *(a1 + 56);
  v13[0] = 0;
  v13[1] = 0;
  sub_100004AA0(v13, (v6 + 8));
  operator new();
}

void sub_1014F6434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014F646C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014F64B8(uint64_t *a1)
{
  v1 = *a1;
  v47 = a1;
  v48 = v1;
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = *(v1 + 16);
  v7 = *(v1 + 47);
  if (v7 >= 0)
  {
    v8 = *(v1 + 47);
  }

  else
  {
    v8 = *(v1 + 32);
  }

  v9 = *(v1 + 71);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v1 + 56);
  }

  if (v8 == v9)
  {
    if (v7 >= 0)
    {
      v11 = (v1 + 24);
    }

    else
    {
      v11 = *(v1 + 24);
    }

    if (v10 >= 0)
    {
      v12 = (v1 + 48);
    }

    else
    {
      v12 = *(v1 + 48);
    }

    v13 = memcmp(v11, v12, v8) == 0;
  }

  else
  {
    v13 = 0;
  }

  (*(*v3 + 160))(v3, v4, v5, v6, v13, *(v1 + 72));
  v14 = &qword_101FCA000;
  if ((byte_101FCACA8 & 1) == 0)
  {
    v15 = *(v1 + 8);
    v16 = *(v1 + 16);
    v17 = *(v1 + 12);
    ServiceMap = Registry::getServiceMap(*(v2 + 136));
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
        if (v16)
        {
          goto LABEL_31;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    if (v16)
    {
      goto LABEL_31;
    }

LABEL_25:
    if (v17 == 133)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (v16 == 7)
    {
      theArray = 0;
      (*(**(v2 + 248) + 96))(buf);
      sub_10006DD00(&theArray, buf);
      sub_10000A1EC(buf);
      if (theArray)
      {
        v45 = v15;
        v46 = v27;
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          for (i = 0; Count != i; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            v33 = ValueAtIndex;
            if (ValueAtIndex && (v34 = CFGetTypeID(ValueAtIndex), v34 == CFNumberGetTypeID()))
            {
              *buf = 0;
              ctu::cf::assign(buf, v33, v35);
              v36 = *buf;
              if (*buf > 0xFEu)
              {
                v38 = *(v2 + 40);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109378;
                  *&buf[4] = v36;
                  *&buf[8] = 2112;
                  *&buf[10] = v33;
                  v39 = v38;
                  v40 = "IgnoreRejectCodesForPNROnLTE key carry incorrect value %d (%@), suppose to be of uint8_t size";
                  v41 = 18;
LABEL_46:
                  _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, v40, buf, v41);
                }
              }

              else if (*buf == v17)
              {
                sub_100010250(&theArray);
                v27 = v46;
                v14 = &qword_101FCA000;
                v15 = v45;
                goto LABEL_26;
              }
            }

            else
            {
              v37 = *(v2 + 40);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                *&buf[4] = i;
                v39 = v37;
                v40 = "IgnoreRejectCodesForPNROnLTE array has incorrect element at index %zu";
                v41 = 12;
                goto LABEL_46;
              }
            }
          }
        }

        sub_100010250(&theArray);
        v27 = v46;
      }

      else
      {
        sub_100010250(&theArray);
        if (v17 == 7 || v17 == 10)
        {
LABEL_26:
          v28 = *(v2 + 40);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = asString();
            *buf = 136315394;
            *&buf[4] = v29;
            *&buf[12] = 1024;
            *&buf[14] = v17;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: Sending notification for iMessage registration failure, reject code %d", buf, 0x12u);
          }

          if (v26)
          {
            (*(*v26 + 32))(v26, v15, 0);
          }

          *(v14 + 3240) = 1;
LABEL_50:
          if ((v27 & 1) == 0)
          {
            sub_100004A34(v25);
          }

          goto LABEL_52;
        }
      }
    }

    v42 = *(v2 + 40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = asString();
      *buf = 136315394;
      *&buf[4] = v43;
      *&buf[12] = 1024;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#N RAT %s not sending phone number registration state notification for cause code %d", buf, 0x12u);
    }

    goto LABEL_50;
  }

LABEL_52:
  sub_1014F6A10(&v48);
  return sub_1000049E0(&v47);
}

void sub_1014F6994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  sub_100010250(va2);
  if ((a9 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  sub_1014F6A10(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F6A10(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1014F6A78(uint64_t a1)
{
  *a1 = off_101F45908;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_1014F6AC8(uint64_t a1)
{
  *a1 = off_101F45908;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

char *sub_1014F6BF0(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101F45908;
  v4 = *(result + 8);
  *(a2 + 24) = *(result + 6);
  *(a2 + 8) = v4;
  if (result[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  else
  {
    v5 = *(result + 2);
    *(a2 + 48) = *(result + 6);
    *(a2 + 32) = v5;
  }

  *(a2 + 56) = v3[56];
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1014F6C78(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_1014F6C8C(void **__p)
{
  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  operator delete(__p);
}

void sub_1014F6CD0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  *v7 = *(a2 + 16);
  *&v7[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *(a1 + 8);
  if (v5 < 0)
  {
    sub_100005F2C(v8, v4, v3);
  }

  else
  {
    v8[0] = v4;
    v8[1] = v3;
    *v9 = *v7;
    *&v9[3] = *&v7[3];
    v10 = v5;
  }

  if (*(a1 + 55) < 0)
  {
    sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    __p[2] = *(a1 + 48);
  }

  v12 = *(a1 + 56);
  v13[0] = 0;
  v13[1] = 0;
  sub_100004AA0(v13, (v6 + 8));
  operator new();
}

void sub_1014F6EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014F6F00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014F6F4C(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  (*(**(*v1 + 344) + 168))(*(*v1 + 344), *(v1 + 8), *(v1 + 12), *(v1 + 16));
  v3 = *(v2 + 344);
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = *(v1 + 16);
  v7 = *(v1 + 47);
  if (v7 >= 0)
  {
    v8 = *(v1 + 47);
  }

  else
  {
    v8 = *(v1 + 32);
  }

  v9 = *(v1 + 71);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v1 + 56);
  }

  if (v8 == v9)
  {
    if (v7 >= 0)
    {
      v11 = (v1 + 24);
    }

    else
    {
      v11 = *(v1 + 24);
    }

    if (v10 >= 0)
    {
      v12 = (v1 + 48);
    }

    else
    {
      v12 = *(v1 + 48);
    }

    v13 = memcmp(v11, v12, v8) == 0;
  }

  else
  {
    v13 = 0;
  }

  (*(*v3 + 160))(v3, v4, v5, v6, v13, *(v1 + 72));
  sub_1014F6A10(&v16);
  return sub_1000049E0(&v15);
}

void sub_1014F707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1014F6A10(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F7098(uint64_t *a1)
{
  v1 = *a1;
  v56 = a1;
  v57 = v1;
  v2 = *v1;
  v72 = 0;
  v73 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v72);
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
  v4 = v3;
  if (v72)
  {
    if ((capabilities::ct::supportsEmptyNITZIndication(v3) & 1) == 0 && *(v1 + 80) == 1)
    {
      v5 = *v4;
      if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      *buf = 0;
      v6 = "#N Ignoring empty NITZ indication";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_78;
    }

    ServiceMap = Registry::getServiceMap(*(v2 + 136));
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
    *buf = v10;
    v14 = sub_100009510(&v8[1].__m_.__sig, buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v8);
    v15 = 0;
    v17 = 1;
LABEL_16:
    *(v1 + 16) = (*(*v16 + 88))(v16);
    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    v19 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(v1 + 16);
      *buf = 67109120;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Processing Network Time update, timestamped with %d", buf, 8u);
    }

    if (*(v1 + 84) == 4)
    {
      v5 = *v4;
      if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      *buf = 0;
      v6 = "#N RAT is set to EVDO, cannot process Time from EVDO source";
      goto LABEL_23;
    }

    (*(**(v2 + 120) + 32))(*(v2 + 120), *(v1 + 48));
    (*(**(v2 + 120) + 40))(*(v2 + 120), *(v1 + 72));
    *v70 = 0u;
    v71 = 0u;
    if (*(v1 + 120) == 1)
    {
      MCC::MCC(v70, (v1 + 88));
    }

    else
    {
      (*(*v72 + 640))(v70);
    }

    *v68 = 0u;
    v69 = 0u;
    if (*(v1 + 160) == 1)
    {
      MCC::MCC(v68, (v1 + 128));
    }

    else
    {
      (*(*v72 + 648))(v68);
    }

    if (*(v1 + 44))
    {
      v21 = *(v2 + 120);
      v22 = *(v1 + 24);
      v23 = *(v1 + 40);
      v77 = *(v1 + 72);
      v24 = *(v1 + 56);
      v75 = v23;
      v76 = v24;
      *buf = v22;
      (*(*v21 + 24))(v21, buf);
      v25 = Registry::getServiceMap(*(v2 + 136));
      v26 = v25;
      if (v9 < 0)
      {
        v27 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
        v28 = 5381;
        do
        {
          v9 = v28;
          v29 = *v27++;
          v28 = (33 * v28) ^ v29;
        }

        while (v29);
      }

      std::mutex::lock(v25);
      *buf = v9;
      v30 = sub_100009510(&v26[1].__m_.__sig, buf);
      if (v30)
      {
        v32 = v30[3];
        v31 = v30[4];
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v26);
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v31);
          v33 = 0;
          goto LABEL_46;
        }
      }

      else
      {
        v32 = 0;
      }

      std::mutex::unlock(v26);
      v31 = 0;
      v33 = 1;
LABEL_46:
      v43 = *v4;
      if (v32)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Received a valid network time, sending it to time handler", buf, 2u);
        }

        v44 = *(v1 + 8);
        v45 = *(v1 + 24);
        v46 = *(v1 + 56);
        v75 = *(v1 + 40);
        v76 = v46;
        v77 = *(v1 + 72);
        *buf = v45;
        v47 = *(v1 + 16);
        MCC::MCC(v61, v70);
        MCC::MCC(v65, v68);
        (*(*v32 + 48))(v32, v44, buf, v47, v61, v65, *(v1 + 84), 1, v56, v57);
        if (v67 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v62) < 0)
        {
          operator delete(*&v61[8]);
          if (v33)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Could not get TimeHandler for sending network time update", buf, 2u);
        if (v33)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      if (v33)
      {
LABEL_57:
        v48 = *(v2 + 312);
        v49 = *(v1 + 40);
        *buf = *(v1 + 24);
        v75 = v49;
        v76 = *(v1 + 56);
        v77 = *(v1 + 72);
        (*(*v48 + 120))(v48, buf);
LABEL_74:
        if (SHIBYTE(v69) < 0)
        {
          operator delete(v68[1]);
        }

        if (SHIBYTE(v71) < 0)
        {
          operator delete(v70[1]);
        }

        goto LABEL_78;
      }

LABEL_56:
      sub_100004A34(v31);
      goto LABEL_57;
    }

    v77 = 0xFFFFFFFFLL;
    v75 = 0u;
    v76 = 0u;
    *buf = 0u;
    if (!(*(**(v2 + 120) + 48))(*(v2 + 120), buf))
    {
      v50 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Time value is not cached, not sending the time value", v61, 2u);
      }

      goto LABEL_74;
    }

    v34 = Registry::getServiceMap(*(v2 + 136));
    v35 = v34;
    if (v9 < 0)
    {
      v36 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v37 = 5381;
      do
      {
        v9 = v37;
        v38 = *v36++;
        v37 = (33 * v37) ^ v38;
      }

      while (v38);
    }

    std::mutex::lock(v34);
    *v61 = v9;
    v39 = sub_100009510(&v35[1].__m_.__sig, v61);
    if (v39)
    {
      v41 = v39[3];
      v40 = v39[4];
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v40);
        v42 = 0;
LABEL_62:
        v51 = *v4;
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
        if (v41)
        {
          if (v52)
          {
            *v61 = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Retrieving the time saved time value and sending the update", v61, 2u);
          }

          v53 = *(v1 + 8);
          v62 = v75;
          v63 = v76;
          v64 = v77;
          *v61 = *buf;
          v54 = *(v1 + 16);
          MCC::MCC(v65, v70);
          MCC::MCC(v58, v68);
          (*(*v41 + 56))(v41, v53, v61, v54, v65, v58, *(v1 + 84), 1, v56, v57);
          if (v60 < 0)
          {
            operator delete(v59);
          }

          if (v67 < 0)
          {
            operator delete(__p);
          }
        }

        else if (v52)
        {
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#N Could not get TimeHandler to send network time zone update", v61, 2u);
        }

        if ((v42 & 1) == 0)
        {
          sub_100004A34(v40);
        }

        (*(**(v2 + 312) + 128))(*(v2 + 312), DWORD2(v75), v77 != 0);
        goto LABEL_74;
      }
    }

    else
    {
      v41 = 0;
    }

    std::mutex::unlock(v35);
    v40 = 0;
    v42 = 1;
    goto LABEL_62;
  }

  v18 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find model for network time update", buf, 2u);
  }

LABEL_78:
  if (v73)
  {
    sub_100004A34(v73);
  }

  sub_1014F7A58(&v57);
  return sub_1000049E0(&v56);
}

void sub_1014F794C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if ((v50 & 1) == 0)
  {
    sub_100004A34(v49);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  v53 = *(v51 - 152);
  if (v53)
  {
    sub_100004A34(v53);
  }

  sub_1014F7A58(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F7A58(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 160) == 1 && *(v1 + 159) < 0)
    {
      operator delete(*(v1 + 136));
    }

    if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
    {
      operator delete(*(v1 + 96));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1014F7AD8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1014F7B2C(unsigned __int8 *a1)
{
  v11 = a1;
  BYTE5(v18[2]) = 0;
  HIWORD(v18[2]) = 5120;
  strcpy(v18, "RAT selection failed");
  ratSelectionAsStr(&v12, a1[16]);
  v2 = std::string::insert(&v12, 0, "Changing the RAT to ", 0x14uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v13, " failed\n\n", 9uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v14, "Please file a radar against Telephony | iOS\n", 0x2CuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v15, "This is shown on internal and carrier installations only", 0x38uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v17 = v8->__r_.__value_.__r.__words[2];
  v16 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  (*(**a1 + 24))(*a1, v18, &v16);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v18[2]) < 0)
  {
    operator delete(v18[0]);
  }

  return sub_1014F7AD8(&v11);
}

void sub_1014F7CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  if (*(v35 - 25) < 0)
  {
    operator delete(*(v35 - 48));
  }

  sub_1014F7AD8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1014F7D6C(uint64_t a1, uint64_t a2, const char *a3)
{
  *(a1 + 16) = 0;
  *a1 = off_101F45988;
  *(a1 + 8) = a2;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = "";
  }

  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v7 = (a1 + 24);
  *(a1 + 47) = v5;
  if (v5)
  {
    memmove(v7, v4, v5);
  }

  *(v7 + v6) = 0;
  return a1;
}

uint64_t sub_1014F7E50(std::string *a1, char *a2)
{
  if (a2)
  {
    sub_100016890(a1 + 1, a2);
  }

  return 1;
}

BOOL sub_1014F7EA0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = sub_101541040(a3);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_101541040(a4);
  if (v8 == -1)
  {
    return 0;
  }

  v9 = v8;
  v10 = *(a1 + 23);
  v11 = v10 >= 0 ? a1 : *a1;
  v12 = v10 >= 0 ? *(a1 + 23) : *(a1 + 8);
  v13 = CFStringCreateWithBytes(0, v11, v12, v7, 0);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  Length = CFStringGetLength(v13);
  maxBufLen = 0;
  v19.location = 0;
  v19.length = Length;
  CFStringGetBytes(v14, v19, v9, 0x3Fu, 0, 0, 0, &maxBufLen);
  v16 = maxBufLen != 0;
  if (maxBufLen)
  {
    operator new[]();
  }

  CFRelease(v14);
  return v16;
}

void *sub_1014F8004(uint64_t a1, uint64_t a2, const char *a3)
{
  result = sub_1014F7D6C(a1, a2, a3);
  *result = off_101F45A00;
  return result;
}

uint64_t sub_1014F81A0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v3 = *v3;
  }

  sub_101135E6C(a2, v3);
  return 1;
}

uint64_t sub_1014F8338(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 < *(a2 + 16))
  {
    *(a2 + 20) = v2 + 1;
  }

  return sub_1015664B4(a2, a1 + 1, 0xFFFFFFFF);
}

uint64_t sub_1014F8360(uint64_t a1, uint64_t a2)
{
  std::string::push_back((a2 + 8), 34);
  v4 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v4 = *v4;
  }

  sub_101135C3C(a2, v4);
  return 1;
}

uint64_t sub_1014F83B8(uint64_t a1, uint64_t a2, const char *a3)
{
  result = sub_1014F7D6C(a1, a2, a3);
  *result = off_101F45AF0;
  *(result + 48) = 3;
  if (a3)
  {
    LOBYTE(v5) = *a3;
    if (*a3)
    {
      v6 = 1;
      while ((v5 & 0x80) == 0)
      {
        v5 = a3[v6++];
        if (!v5)
        {
          return result;
        }
      }

      *(result + 48) = 106;
    }
  }

  return result;
}

uint64_t sub_1014F85FC(uint64_t a1, char *a2)
{
  *(a1 + 48) = 3;
  LOBYTE(v2) = *a2;
  if (*a2)
  {
    v3 = 1;
    while ((v2 & 0x80) == 0)
    {
      v2 = a2[v3++];
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    *(a1 + 48) = 106;
  }

LABEL_7:
  sub_100016890((a1 + 24), a2);
  return 1;
}

void *sub_1014F8658(uint64_t a1, uint64_t a2, const char *a3)
{
  result = sub_1014F83B8(a1, a2, a3);
  *result = off_101F45B68;
  return result;
}

void *sub_1014F87FC(uint64_t a1, uint64_t a2, const char *a3)
{
  result = sub_1014F83B8(a1, a2, a3);
  *result = off_101F45BE0;
  return result;
}

uint64_t sub_1014F8830(uint64_t a1, uint64_t a2)
{
  *buf = 0;
  v4 = sub_10156676C(a2, (a1 + 24), (a1 + 48), buf);
  if (qword_101FCBD58 != -1)
  {
    dispatch_once(&qword_101FCBD58, &stru_101F54370);
  }

  v5 = qword_101FCBD50;
  v6 = os_log_type_enabled(qword_101FCBD50, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "About to decode the subject private -> public", buf, 2u);
    }

    v7 = *(a2 + 36);
    Registry::get(&v9, v6);
    *buf = v9;
    v9 = 0uLL;
    sub_100839978(v7, buf, (a1 + 24), 1);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (*(&v9 + 1))
    {
      sub_100004A34(*(&v9 + 1));
    }
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not decode subject header value!", buf, 2u);
  }

  return v4;
}

void sub_1014F896C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t sub_1014F8990(uint64_t a1, unsigned int *a2)
{
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    __p = *(a1 + 24);
  }

  if (qword_101FCBD58 != -1)
  {
    dispatch_once(&qword_101FCBD58, &stru_101F54370);
  }

  v4 = qword_101FCBD50;
  v5 = os_log_type_enabled(qword_101FCBD50, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "About to encode the subject public -> private", buf, 2u);
  }

  v6 = *a2;
  Registry::get(&v8, v5);
  *buf = v8;
  v8 = 0uLL;
  sub_100839978(v6, buf, &__p, 0);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  sub_101135EC0(a2, &__p, *(a1 + 48));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1014F8AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014F8C70(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  result = sub_1014F83B8(a1, a2, a4);
  *result = off_101F45C58;
  *(result + 52) = a3;
  return result;
}

uint64_t sub_1014F8E24(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = sub_101566604(a2, &v5);
  if (result)
  {
    result = sub_101566724(a2, (a1 + 52));
    if (result)
    {
      v6 = 0;
      return sub_10156676C(a2, (a1 + 24), (a1 + 48), &v6);
    }
  }

  return result;
}

uint64_t sub_1014F8E8C(uint64_t a1, uint64_t a2)
{
  *__p = 0u;
  v9 = 0u;
  LODWORD(__p[0]) = *a2;
  v10 = 0;
  __p[1] = 0;
  v9 = 0uLL;
  sub_101135D4C(__p, *(a1 + 52));
  sub_101135EC0(__p, a1 + 24, *(a1 + 48));
  if (v9 >= 0)
  {
    v4 = HIBYTE(v9);
  }

  else
  {
    v4 = v9;
  }

  sub_101135DF8(a2, v4);
  if (v9 >= 0)
  {
    v5 = &__p[1];
  }

  else
  {
    v5 = __p[1];
  }

  if (v9 >= 0)
  {
    v6 = HIBYTE(v9);
  }

  else
  {
    v6 = v9;
  }

  std::string::append((a2 + 8), v5, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  return 1;
}

void sub_1014F8F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014F8F84(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F8FD4(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1014F9044(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F9094(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1014F9104(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F9154(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1014F91C4(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F9214(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1014F9284(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F92D4(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1014F9344(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F9394(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

void sub_1014F9404(uint64_t a1)
{
  sub_1008C6464(v1, a1);
  v2 = 0;
  operator new();
}

void sub_1014F94C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100D68D94(va1);
  sub_1008A155C(va);
  _Unwind_Resume(a1);
}

void *sub_1014F94E4(void *a1)
{
  *a1 = off_101F45D78;
  sub_1008A155C((a1 + 1));
  return a1;
}

void sub_1014F9528(void *a1)
{
  *a1 = off_101F45D78;
  sub_1008A155C((a1 + 1));

  operator delete();
}

void sub_1014F9638(void *a1)
{
  sub_1008A155C(a1 + 8);

  operator delete(a1);
}

void sub_1014F9674(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  *__p = 0u;
  v15 = 0u;
  if (v3)
  {
    v5 = [v3 localizedDescription];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 UTF8String];
    }

    else
    {
      v7 = "Unspecified error";
    }

    v8 = strlen(v7);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v12) = v8;
    if (v8)
    {
      memmove(v11, v7, v8);
    }

    *(v11 + v9) = 0;
    if (BYTE8(v15) == 1)
    {
      if (SBYTE7(v15) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v11;
      *&v15 = v12;
    }

    else
    {
      *__p = *v11;
      *&v15 = v12;
      BYTE8(v15) = 1;
    }
  }

  sub_10006F264(v11, __p);
  v10 = *(a1 + 32);
  if (!v10)
  {
    sub_100022DB4();
  }

  (*(*v10 + 48))(v10, v11);
  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (BYTE8(v15) == 1 && SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1014F984C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014F98AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const __CFString *sub_1014F9C70(int a1)
{
  if ((a1 - 1) > 7)
  {
    return &stru_101F6AFB8;
  }

  else
  {
    return off_101F45F50[a1 - 1];
  }
}

void sub_1014FA5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = v6;
  if ((v7 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  sub_100005978(va);

  _Unwind_Resume(a1);
}

void sub_1014FC498(Registry **a1@<X0>, void *a2@<X8>)
{
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
  v13.var0 = v5;
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
  if ((GestaltUtilityInterface::isIPad(v11) & 1) != 0 || GestaltUtilityInterface::isIPhone(v11))
  {
    operator new();
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1014FC6F0(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014FC7AC(uint64_t a1)
{
  FollowUpControllerInterface::~FollowUpControllerInterface(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  return a1;
}

void sub_1014FC7F8(uint64_t a1)
{
  sub_1014FC7AC(a1);

  operator delete();
}

uint64_t sub_1014FC830(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v4 = a4;
  if (!a4)
  {
    v9[0] = 0;
    v9[1] = 0;
    sub_1014FC8BC(a1, a2, v9, &v10);
    v4 = v10;
    sub_100005978(&v10);
  }

  result = sub_1014FCA28(a1, a2, v4);
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) showFollowUp:a2 userInfo:a3 withUniqueIdentifier:v4];
  }

  return result;
}

void sub_1014FC8BC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  if (a2 == 7)
  {
    v5 = [NSString stringWithFormat:@"%@.%@", @"com.apple.coretelephony.cellularplan-default.setup-required", @"no.sim"];

    sub_100060E4C(a4, v5);
  }

  else if (*a3)
  {
    v8 = sub_1014F9C70(a2);
    v6 = [NSString stringWithFormat:@"%@.%u", v8, subscriber::simSlotAsInstance()];
    sub_100060E4C(a4, v6);
  }

  else
  {
    v7 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No unique identifier defined", buf, 2u);
    }

    *a4 = 0;
  }
}

uint64_t sub_1014FCA28(uint64_t a1, int a2, uint64_t a3)
{
  context = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) getPendingFollowUpItems];
  v24 = v4;
  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v6)
    {
      v7 = *v27;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          if (v9)
          {
            v10 = [*(*(&v26 + 1) + 8 * i) extensionIdentifier];
            v11 = [v10 isEqualToString:@"com.apple.CoreTelephony.CTFollowUpExtension"];

            if (v11)
            {
              v12 = [v9 categoryIdentifier];
              v13 = sub_1014F9C70(a2);
              v14 = [v12 isEqualToString:v13];

              if (v14)
              {
                v15 = [v9 uniqueIdentifier];
                v16 = v15 == 0;

                if (!v16)
                {
                  v17 = [v9 uniqueIdentifier];
                  v18 = [v17 isEqualToString:a3];

                  if (v18)
                  {
                    v20 = sub_100032AC8((a1 + 8));
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v31 = v9;
                      v32 = 2112;
                      v33 = a3;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Same followup item exists: %@ with uniqueIdentifier: %@", buf, 0x16u);
                    }

                    v19 = 1;
                    goto LABEL_19;
                  }
                }
              }
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
LABEL_19:
  }

  else
  {
    v19 = 0;
  }

  objc_autoreleasePoolPop(context);
  return v19;
}

void sub_1014FCCEC(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_1014F9C70(a2);
  v6 = [NSString stringWithFormat:@"%@.%@", v5, a3];

  [*(a1 + 32) clearFollowUpWithUID:v6];
}

const void **sub_1014FCD94@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *v25 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = *v25;
    *v25 = Mutable;
    *&v29 = v5;
    sub_1000296E0(&v29);
  }

  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v23 = *(a1 + 16);
  }

  if (SHIBYTE(v23) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v28 = v23;
  }

  v26 = 0;
  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(&v29, __dst, *(&__dst + 1));
  }

  else
  {
    v29 = __dst;
    v30 = v28;
  }

  v31 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v26;
    v26 = v31;
    v32 = v6;
    sub_100005978(&v32);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v24 = v26;
  v26 = 0;
  sub_100005978(&v26);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v25, @"ServerURL", v24);
  sub_100005978(&v24);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 47) < 0)
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_39;
    }

    sub_100005F2C(v20, *(a1 + 24), v7);
  }

  else
  {
    if (!*(a1 + 47))
    {
      goto LABEL_39;
    }

    *v20 = *(a1 + 24);
    v21 = *(a1 + 40);
  }

  if (SHIBYTE(v21) < 0)
  {
    sub_100005F2C(&__dst, v20[0], v20[1]);
  }

  else
  {
    __dst = *v20;
    v28 = v21;
  }

  v26 = 0;
  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(&v29, __dst, *(&__dst + 1));
  }

  else
  {
    v29 = __dst;
    v30 = v28;
  }

  v31 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v26;
    v26 = v31;
    v32 = v8;
    sub_100005978(&v32);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v24 = v26;
  v26 = 0;
  sub_100005978(&v26);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v25, @"MatchingID", v24);
  sub_100005978(&v24);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

LABEL_39:
  if (*(a1 + 71) < 0)
  {
    v9 = *(a1 + 56);
    if (!v9)
    {
      goto LABEL_58;
    }

    sub_100005F2C(v18, *(a1 + 48), v9);
  }

  else
  {
    if (!*(a1 + 71))
    {
      goto LABEL_58;
    }

    *v18 = *(a1 + 48);
    v19 = *(a1 + 64);
  }

  if (SHIBYTE(v19) < 0)
  {
    sub_100005F2C(&__dst, v18[0], v18[1]);
  }

  else
  {
    __dst = *v18;
    v28 = v19;
  }

  v26 = 0;
  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(&v29, __dst, *(&__dst + 1));
  }

  else
  {
    v29 = __dst;
    v30 = v28;
  }

  v31 = 0;
  if (ctu::cf::convert_copy())
  {
    v10 = v26;
    v26 = v31;
    v32 = v10;
    sub_100005978(&v32);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v24 = v26;
  v26 = 0;
  sub_100005978(&v26);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v25, @"CarrierName", v24);
  sub_100005978(&v24);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

LABEL_58:
  if (*(a1 + 95) < 0)
  {
    v11 = *(a1 + 80);
    if (!v11)
    {
      goto LABEL_77;
    }

    sub_100005F2C(v16, *(a1 + 72), v11);
  }

  else
  {
    if (!*(a1 + 95))
    {
      goto LABEL_77;
    }

    *v16 = *(a1 + 72);
    v17 = *(a1 + 88);
  }

  if (SHIBYTE(v17) < 0)
  {
    sub_100005F2C(&__dst, v16[0], v16[1]);
  }

  else
  {
    __dst = *v16;
    v28 = v17;
  }

  v26 = 0;
  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(&v29, __dst, *(&__dst + 1));
  }

  else
  {
    v29 = __dst;
    v30 = v28;
  }

  v31 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v26;
    v26 = v31;
    v32 = v12;
    sub_100005978(&v32);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v13 = v26;
  v24 = v26;
  v26 = 0;
  sub_100005978(&v26);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v25, @"IccidHash", v13);
  sub_100005978(&v24);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

LABEL_77:
  v14 = *(a1 + 119);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a1 + 104);
  }

  if (v14)
  {
    sub_1002E0298(*v25, @"Cancel", kCFBooleanFalse);
  }

  sub_100010180(a2, v25);
  return sub_1000296E0(v25);
}

void sub_1014FD2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, int a37, const void *a38, const void *a39)
{
  sub_100005978(&a39);
  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a38);
  _Unwind_Resume(a1);
}

const void **sub_1014FD474@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  *v20 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v9 = *v20;
    *v20 = Mutable;
    *&v24 = v9;
    sub_1000296E0(&v24);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v18 = *(a2 + 16);
  }

  if (SHIBYTE(v18) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v23 = v18;
  }

  v21 = 0;
  if (SHIBYTE(v23) < 0)
  {
    sub_100005F2C(&v24, __p[0], __p[1]);
  }

  else
  {
    v24 = *__p;
    v25 = v23;
  }

  v26 = 0;
  if (ctu::cf::convert_copy())
  {
    v10 = v21;
    v21 = v26;
    v27 = v10;
    sub_100005978(&v27);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  v19 = v21;
  v21 = 0;
  sub_100005978(&v21);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1001768B8(*v20, @"ServerURL", v19);
  sub_100005978(&v19);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  if (*(a1 + 23) < 0)
  {
    v11 = *(a1 + 8);
    if (!v11)
    {
      goto LABEL_39;
    }

    sub_100005F2C(v15, *a1, v11);
  }

  else
  {
    if (!*(a1 + 23))
    {
      goto LABEL_39;
    }

    *v15 = *a1;
    v16 = *(a1 + 16);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(__p, v15[0], v15[1]);
  }

  else
  {
    *__p = *v15;
    v23 = v16;
  }

  v21 = 0;
  if (SHIBYTE(v23) < 0)
  {
    sub_100005F2C(&v24, __p[0], __p[1]);
  }

  else
  {
    v24 = *__p;
    v25 = v23;
  }

  v26 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v21;
    v21 = v26;
    v27 = v12;
    sub_100005978(&v27);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  v13 = v21;
  v19 = v21;
  v21 = 0;
  sub_100005978(&v21);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1001768B8(*v20, @"CarrierName", v13);
  sub_100005978(&v19);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

LABEL_39:
  if (*a3)
  {
    sub_1002972A4(*v20, @"PostData", *a3);
  }

  sub_100010180(a4, v20);
  return sub_1000296E0(v20);
}

void sub_1014FD764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, const void *a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a24);
  _Unwind_Resume(a1);
}

void sub_1014FD840(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  context = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) getPendingFollowUpItems];
  v24 = v6;
  if (v6)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = *v27;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          if (v11)
          {
            v12 = [*(*(&v26 + 1) + 8 * v10) extensionIdentifier];
            v13 = [v12 isEqualToString:@"com.apple.CoreTelephony.CTFollowUpExtension"];

            if (v13)
            {
              v14 = [v11 categoryIdentifier];
              v15 = sub_1014F9C70(a2);
              v16 = [v14 isEqualToString:v15];

              if (v16)
              {
                v17 = [v11 uniqueIdentifier];
                v18 = v17 == 0;

                if (!v18)
                {
                  v19 = [v11 uniqueIdentifier];
                  v20 = [v19 isEqualToString:a3];

                  if (v20)
                  {
                    v21 = [v11 userInfo];
                    sub_1000101E4(a4, v21);

                    goto LABEL_17;
                  }
                }
              }
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  *a4 = 0;
LABEL_17:

  objc_autoreleasePoolPop(context);
}

void sub_1014FDAA0(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  context = objc_autoreleasePoolPush();
  v38 = a3;
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v5 = [*(a1 + 32) getPendingFollowUpItems];
  if (v5)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v36 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v6)
    {
      v7 = *v49;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v49 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v48 + 1) + 8 * i);
          if (v9)
          {
            v10 = [*(*(&v48 + 1) + 8 * i) extensionIdentifier];
            v11 = [v10 isEqualToString:@"com.apple.CoreTelephony.CTFollowUpExtension"];

            if (v11)
            {
              v12 = [v9 categoryIdentifier];
              v13 = sub_1014F9C70(a2);
              v14 = [v12 isEqualToString:v13];

              if (v14)
              {
                v15 = [v9 uniqueIdentifier];
                v16 = v15 == 0;

                if (v16)
                {
                  v22 = sub_100032AC8((a1 + 8));
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(__dst[0]) = 0;
                    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No UID exists", __dst, 2u);
                  }
                }

                else
                {
                  __dst[0] = 0;
                  __dst[1] = 0;
                  v47 = 0;
                  v17 = [v9 uniqueIdentifier];
                  v18 = v17;
                  v19 = [v17 UTF8String];
                  v20 = strlen(v19);
                  if (v20 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    sub_1000A2378();
                  }

                  v21 = v20;
                  if (v20 >= 0x17)
                  {
                    operator new();
                  }

                  HIBYTE(v47) = v20;
                  if (v20)
                  {
                    memmove(__dst, v19, v20);
                  }

                  *(__dst + v21) = 0;

                  v23 = [v9 actions];
                  v24 = v23 == 0;

                  if (v24)
                  {
                    v25 = sub_100032AC8((a1 + 8));
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "No user actions available", buf, 2u);
                    }
                  }

                  else
                  {
                    v44 = 0u;
                    v45 = 0u;
                    v42 = 0u;
                    v43 = 0u;
                    v25 = [v9 actions];
                    v26 = [v25 countByEnumeratingWithState:&v42 objects:v53 count:16];
                    if (v26)
                    {
                      v27 = *v43;
                      while (2)
                      {
                        for (j = 0; j != v26; j = j + 1)
                        {
                          if (*v43 != v27)
                          {
                            objc_enumerationMutation(v25);
                          }

                          v29 = *(*(&v42 + 1) + 8 * j);
                          v30 = [v29 userInfo];
                          v31 = v30 == 0;

                          if (!v31)
                          {
                            v41 = 0;
                            v33 = [v29 userInfo];
                            v34 = v33;
                            v41 = v33;
                            if (v33)
                            {
                              CFRetain(v33);
                            }

                            *buf = __dst;
                            v35 = sub_1002965F8(v38, __dst);
                            sub_1000676D4((v35 + 56), &v41);
                            sub_10001021C(&v41);
                            goto LABEL_37;
                          }

                          v32 = sub_100032AC8((a1 + 8));
                          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "No user info available", buf, 2u);
                          }
                        }

                        v26 = [v25 countByEnumeratingWithState:&v42 objects:v53 count:16];
                        if (v26)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

LABEL_37:

                  if (SHIBYTE(v47) < 0)
                  {
                    operator delete(__dst[0]);
                  }
                }
              }
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v6);
    }

    v5 = v36;
  }

  objc_autoreleasePoolPop(context);
}

void sub_1014FE00C(int a1@<W1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = sub_1014F9C70(a1);
  sub_100060E4C(a3, [NSString stringWithFormat:@"%@.%@", v5, a2]);
}

void sub_1014FE0A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *(a1 + 32);
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v19 = [NSString stringWithUTF8String:v11];
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (*(a6 + 23) >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  v16 = [NSString stringWithUTF8String:v15];
  v17 = [NSURL URLWithString:v16];
  LOBYTE(v18) = 0;
  [v10 publishNotificationWithIdentifier:v19 header:v12 title:v13 body:v14 userInfo:0 url:v17 shouldBackgroundDefaultAction:v18];
}

void sub_1014FE1C8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  [v2 hideNotificationWithIdentifier:?];
}

id **sub_1014FE248(id *a1)
{
  v4 = a1;
  v2 = *a1;
  if (v2)
  {
    [v2 removeAllPendingNotificationRequests];
    [*a1 removeAllDeliveredNotifications];
  }

  return sub_100333804(&v4);
}

void sub_1014FE290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100333804(va);
  _Unwind_Resume(a1);
}

id **sub_1014FE2A4(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

id **sub_1014FE2FC(uint64_t a1)
{
  v4 = a1;
  v2 = *a1;
  if (v2)
  {
    [v2 addNotificationRequest:*(a1 + 8) withCompletionHandler:0];
  }

  return sub_1014FE2A4(&v4);
}

void sub_1014FE344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1014FE2A4(va);
  _Unwind_Resume(a1);
}

id **sub_1014FE358(uint64_t a1)
{
  v7 = a1;
  v1 = *a1;
  if (*a1)
  {
    v9 = *(a1 + 8);
    v3 = [NSArray arrayWithObjects:&v9 count:1, v7];
    [v1 removePendingNotificationRequestsWithIdentifiers:v3];

    v4 = *a1;
    v8 = *(a1 + 8);
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    [v4 removeDeliveredNotificationsWithIdentifiers:v5];
  }

  return sub_1014FE2A4(&v7);
}

void sub_1014FE45C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014FE494(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1014FE4C4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1014FE504()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1014FE52C(uint64_t a1)
{
  v2 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "call.branded");
  ctu::OsLogLogger::OsLogLogger(v5, &v4);
  ctu::OsLogLogger::OsLogLogger(v2, v5);
  ctu::OsLogLogger::~OsLogLogger(v5);
  ctu::OsLogContext::~OsLogContext(&v4);
  *a1 = off_101F45FA0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_1014FE5DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  BrandedCallingHelperInterface::~BrandedCallingHelperInterface(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1014FE610(uint64_t a1, uint64_t a2, const void **a3, std::string *a4, char *a5, uint64_t a6)
{
  memset(&__str, 0, sizeof(__str));
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  v9 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  p_str = &__str;
  size = __str.__r_.__value_.__l.__size_;
  v11 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__str;
  }

  else
  {
    v13 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __str.__r_.__value_.__l.__size_;
  }

  if (v14 < 4)
  {
    goto LABEL_37;
  }

  v88 = __str.__r_.__value_.__r.__words[0];
  v95 = a3;
  v15 = v13;
  v16 = v13 + v14;
  v17 = v14;
  v18 = v13;
  do
  {
    v19 = memchr(v18, 46, v17 - 3);
    if (!v19)
    {
      break;
    }

    v20 = v19;
    if (*v19 == 1735420462)
    {
      goto LABEL_16;
    }

    v18 = (v19 + 1);
    v17 = v16 - (v20 + 1);
  }

  while (v17 > 3);
  v20 = v13 + v14;
LABEL_16:
  __p = a5;
  if (v14 == 4)
  {
LABEL_24:
    v24 = v13 + v14;
    goto LABEL_25;
  }

  v21 = v14;
  v22 = v13;
  while (1)
  {
    v23 = memchr(v22, 46, v21 - 4);
    if (!v23)
    {
      goto LABEL_24;
    }

    v24 = v23;
    if (*v23 == 1701866030 && v23[4] == 103)
    {
      break;
    }

    v22 = (v23 + 1);
    v21 = v16 - (v24 + 1);
    if (v21 <= 4)
    {
      goto LABEL_24;
    }
  }

  do
  {
LABEL_25:
    v26 = memchr(v15, 46, v14 - 3);
    if (!v26)
    {
      break;
    }

    if (*v26 == 1735290926)
    {
      goto LABEL_29;
    }

    v15 = (v26 + 1);
    v14 = v16 - (v26 + 1);
  }

  while (v14 > 3);
  v26 = v16;
LABEL_29:
  v27 = v20 - v13;
  if (v20 != v16 && v20 - v13 != -1)
  {
    v28 = 4;
    a3 = v95;
LABEL_35:
    a5 = __p;
    p_str = &__str;
LABEL_36:
    std::string::replace(&__str, v27, v28, ".bmp", 4uLL);
    v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    size = __str.__r_.__value_.__l.__size_;
    v11 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_37;
  }

  a3 = v95;
  if (v24 != v16 && v24 - v13 != -1)
  {
    v28 = 5;
    v27 = v24 - v13;
    goto LABEL_35;
  }

  a5 = __p;
  if (v26 == v16)
  {
    p_str = &__str;
    v11 = v88;
  }

  else
  {
    v27 = v26 - v13;
    p_str = &__str;
    v11 = v88;
    if (v26 - v13 != -1)
    {
      v28 = 4;
      goto LABEL_36;
    }
  }

LABEL_37:
  if ((v9 & 0x80u) == 0)
  {
    v29 = v9;
  }

  else
  {
    p_str = v11;
    v29 = size;
  }

  v30 = a4;
  if (v29 >= 1)
  {
    v31 = p_str + v29;
    v32 = p_str;
    do
    {
      v33 = memchr(v32, 63, v29);
      if (!v33)
      {
        break;
      }

      if (*v33 == 63)
      {
        if (v33 == v31)
        {
          break;
        }

        v34 = v33 - p_str;
        if (v34 == -1)
        {
          break;
        }

        v35 = *(a1 + 8);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#E HTTP GET parameters not allowed", &buf, 2u);
        }

        std::string::basic_string(&buf, &__str, 0, v34, &values);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_53;
      }

      v32 = (v33 + 1);
      v29 = v31 - v32;
    }

    while (v31 - v32 >= 1);
  }

  buf = __str;
LABEL_53:
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(a4->__r_.__value_.__l.__data_);
  }

  *a4 = buf;
  v36 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v36 & 0x8000000000000000) != 0)
  {
    v36 = a4->__r_.__value_.__l.__size_;
    if (v36)
    {
      v37 = a4->__r_.__value_.__r.__words[0];
      goto LABEL_60;
    }

    return 1;
  }

  if (!*(&a4->__r_.__value_.__s + 23))
  {
    return 1;
  }

  v37 = a4;
LABEL_60:
  v38 = &v37[v36];
  v39 = v37;
  v40 = v38;
  do
  {
    v41 = v39;
    v42 = v39;
    while (1)
    {
      v43 = *v42++;
      if (v43 == 47)
      {
        break;
      }

      v41 = v42;
      if (v42 == v38)
      {
        v41 = v40;
        goto LABEL_66;
      }
    }

    v39 = v41 + 1;
    v40 = v41;
  }

  while (v42 != v38);
LABEL_66:
  if (v41 == v38 || (v44 = v41 - v37, v44 == -1))
  {
    v79 = *(a1 + 8);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#E Cannot fetch malformed URL", &__str, 2u);
    }

    return 1;
  }

  std::string::basic_string(&__str, a4, v44 + 1, 0xFFFFFFFFFFFFFFFFLL, &buf);
  if (a5[23] < 0)
  {
    operator delete(*a5);
  }

  *a5 = __str;
  sub_10006F22C(&theArray, a3);
  if (!theArray)
  {
    v81 = *(a1 + 8);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      v82 = "#E Allowed Asset Server list is not found";
      goto LABEL_172;
    }

    goto LABEL_173;
  }

  Count = CFArrayGetCount(theArray);
  v46 = Count;
  if (!Count)
  {
    v81 = *(a1 + 8);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      v82 = "#E BrandedCallingAssetServersAllowList is empty";
LABEL_172:
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, v82, &__str, 2u);
    }

LABEL_173:
    v78 = 0;
    v65 = 0;
    *(v105 + 7) = 0;
    v105[0] = 0;
    goto LABEL_174;
  }

  if (Count < 1)
  {
    goto LABEL_168;
  }

  v47 = 0;
  v87 = Count;
LABEL_74:
  theDict = 0;
  __str.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(theArray, v47);
  sub_100010180(&theDict, &__str.__r_.__value_.__l.__data_);
  if (!theDict)
  {
    goto LABEL_144;
  }

  v48 = CFDictionaryGetCount(theDict);
  memset(&buf, 0, sizeof(buf));
  sub_10007D780(&buf, v48);
  values = 0;
  v100 = 0;
  v101 = 0;
  sub_10007D780(&values, v48);
  CFDictionaryGetKeysAndValues(theDict, buf.__r_.__value_.__l.__data_, values);
  if (v48 == 2)
  {
    v90 = v47;
    v49 = 0;
    v50 = 0;
    __pa = 0;
    v97 = 0;
    v98 = 0uLL;
    v105[0] = 0;
    v51 = 1;
    *(v105 + 7) = 0;
    while (1)
    {
      v52 = v51;
      memset(&__str, 0, sizeof(__str));
      ctu::cf::assign();
      v108 = __str;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v108.__r_.__value_.__l.__size_ == 6)
        {
          v55 = *v108.__r_.__value_.__l.__data_ != 1987208531 || *(v108.__r_.__value_.__r.__words[0] + 4) != 29285;
          operator delete(v108.__r_.__value_.__l.__data_);
          if (!v55)
          {
LABEL_93:
            memset(&__str, 0, sizeof(__str));
            ctu::cf::assign();
            v108.__r_.__value_.__r.__words[0] = __str.__r_.__value_.__l.__size_;
            v56 = __str.__r_.__value_.__r.__words[0];
            *(v108.__r_.__value_.__r.__words + 7) = *(&__str.__r_.__value_.__r.__words[1] + 7);
            v57 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v98) < 0)
            {
              operator delete(__pa);
            }

            *&v98 = v108.__r_.__value_.__r.__words[0];
            *(&v98 + 7) = *(v108.__r_.__value_.__r.__words + 7);
            HIBYTE(v98) = v57;
            __pa = v56;
            goto LABEL_122;
          }
        }

        else
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 6 && LODWORD(v108.__r_.__value_.__l.__data_) == 1987208531 && WORD2(v108.__r_.__value_.__r.__words[0]) == 29285)
      {
        goto LABEL_93;
      }

      memset(&__str, 0, sizeof(__str));
      ctu::cf::assign();
      v108 = __str;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v108.__r_.__value_.__l.__size_ == 11)
        {
          v60 = *v108.__r_.__value_.__l.__data_ != 0x6369666974726543 || *(v108.__r_.__value_.__r.__words[0] + 3) != 0x6574616369666974;
          operator delete(v108.__r_.__value_.__l.__data_);
          if (!v60)
          {
LABEL_113:
            memset(&__str, 0, sizeof(__str));
            ctu::cf::assign();
            v108.__r_.__value_.__r.__words[0] = __str.__r_.__value_.__l.__size_;
            v61 = __str.__r_.__value_.__r.__words[0];
            *(v108.__r_.__value_.__r.__words + 7) = *(&__str.__r_.__value_.__r.__words[1] + 7);
            v62 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if (v49 < 0)
            {
              operator delete(v50);
            }

            v105[0] = v108.__r_.__value_.__r.__words[0];
            *(v105 + 7) = *(v108.__r_.__value_.__r.__words + 7);
            v49 = v62;
            v50 = v61;
            goto LABEL_122;
          }
        }

        else
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 11 && v108.__r_.__value_.__r.__words[0] == 0x6369666974726543 && *(v108.__r_.__value_.__r.__words + 3) == 0x6574616369666974)
      {
        goto LABEL_113;
      }

      v63 = *(a1 + 8);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        memset(&__str, 0, sizeof(__str));
        ctu::cf::assign();
        v108 = __str;
        v64 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v108;
        }

        *v106 = 136315138;
        v107 = v64;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#E Unrecognized key %s", v106, 0xCu);
        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }
      }

LABEL_122:
      v51 = 0;
      if ((v52 & 1) == 0)
      {
        v65 = v49;
        v89 = v50;
        v66 = a1;
        v97 = __pa;
        v67 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
        if (v67 >= 0)
        {
          v68 = v30;
        }

        else
        {
          v68 = v30->__r_.__value_.__r.__words[0];
        }

        if (v67 < 0)
        {
          v67 = v30->__r_.__value_.__l.__size_;
        }

        v69 = SHIBYTE(v98);
        if (v98 >= 0)
        {
          v70 = &v97;
        }

        else
        {
          v70 = __pa;
        }

        if (v98 >= 0)
        {
          v71 = HIBYTE(v98);
        }

        else
        {
          v71 = v98;
        }

        if (!v71)
        {
LABEL_154:
          if (v69 < 0)
          {
            operator delete(__pa);
          }

          if (values)
          {
            v100 = values;
            operator delete(values);
          }

          v78 = v89;
          if (buf.__r_.__value_.__r.__words[0])
          {
            buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          goto LABEL_185;
        }

        if (v67 >= v71)
        {
          v72 = &v67[v68];
          v73 = *v70;
          v74 = v68;
          do
          {
            v75 = &v67[-v71];
            if (v75 == -1)
            {
              break;
            }

            v76 = memchr(v74, v73, (v75 + 1));
            if (!v76)
            {
              break;
            }

            v77 = v76;
            if (!memcmp(v76, v70, v71))
            {
              if (v77 == v72 || &v77[-v68] == -1)
              {
                break;
              }

              goto LABEL_154;
            }

            v74 = v77 + 1;
            v67 = (v72 - (v77 + 1));
          }

          while (v67 >= v71);
        }

        if (v65 < 0)
        {
          operator delete(v89);
        }

        a1 = v66;
        v47 = v90;
        if (v69 < 0)
        {
          operator delete(__pa);
        }

        v46 = v87;
        if (values)
        {
          v100 = values;
          operator delete(values);
        }

        v30 = a4;
        if (buf.__r_.__value_.__r.__words[0])
        {
          buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
          operator delete(buf.__r_.__value_.__l.__data_);
        }

LABEL_144:
        sub_10001021C(&theDict);
        if (++v47 == v46)
        {
LABEL_168:
          v81 = *(a1 + 8);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__str.__r_.__value_.__l.__data_) = 0;
            v82 = "#E URL does not belong to any allowed asset server";
            goto LABEL_172;
          }

          goto LABEL_173;
        }

        goto LABEL_74;
      }
    }
  }

  *(v105 + 7) = 0;
  v105[0] = 0;
  if (values)
  {
    v100 = values;
    operator delete(values);
  }

  if (buf.__r_.__value_.__r.__words[0])
  {
    buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v78 = 0;
  v65 = 0;
LABEL_185:
  sub_10001021C(&theDict);
LABEL_174:
  v83 = a6;
  if (*(a6 + 23) < 0)
  {
    operator delete(*a6);
    v83 = a6;
  }

  v84 = v105[0];
  *v83 = v78;
  *(v83 + 8) = v84;
  *(v83 + 15) = *(v105 + 7);
  *(v83 + 23) = v65;
  v85 = v83;
  sub_100010250(&theArray);
  v86 = *(v85 + 23);
  if ((v86 & 0x80u) != 0)
  {
    v86 = *(v85 + 8);
  }

  return 2 * (v86 == 0);
}

void sub_1014FF078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014FF144(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  [v10 set_sourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.BrandedCalling"];
  [v10 setHTTPShouldSetCookies:0];
  [v10 setHTTPCookieAcceptPolicy:1];
  [v10 setHTTPCookieStorage:0];
  v24 = [NSOperationQueue alloc];
  [v24 setMaxConcurrentOperationCount:1];
  v11 = [BrandedCallingSessionDelegate alloc];
  v12 = [NSString alloc];
  if (*(a4 + 23) >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = *a4;
  }

  v14 = [v12 initWithCString:v13 encoding:4];
  [(BrandedCallingSessionDelegate *)v11 setPublicKeyHash:v14];

  v15 = [NSURLSession sessionWithConfiguration:v10 delegate:v11 delegateQueue:v24];
  v16 = [NSMutableURLRequest alloc];
  v17 = [NSString alloc];
  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  v19 = [v17 initWithCString:v18 encoding:4];
  v20 = [NSURL URLWithString:v19];
  v21 = [v16 initWithURL:v20];

  [v21 _setPrivacyProxyFailClosed:1];
  [v21 setAllHTTPHeaderFields:&off_101F92F28];
  __dst[0] = 0;
  __dst[1] = 0;
  v26 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v26 = *(a3 + 16);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3321888768;
  v27[2] = sub_1014FF4F0;
  v27[3] = &unk_101F45FD8;
  v27[4] = a1;
  sub_100383190(v28, a5);
  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(&__p, __dst[0], __dst[1]);
  }

  else
  {
    __p = *__dst;
    v30 = v26;
  }

  v22 = [v15 dataTaskWithRequest:v21 completionHandler:v27];
  v23 = qword_101FCACD0;
  qword_101FCACD0 = v22;

  *(a1 + 16) = 0;
  [qword_101FCACD0 resume];
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  sub_100383110(v28);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1014FF42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100383110(v34 + 40);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1014FF4F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v8;
  v12 = [v11 statusCode];
  v13 = *(v10 + 8);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v7 && !v9 && v12 == 200)
  {
    if (v14)
    {
      *__p = 134217984;
      *&__p[4] = [v7 length];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Retrieved %lu bytes", __p, 0xCu);
    }

    v15 = v7;
    v16 = [v7 bytes];
    if ([v7 length] >= 0x12 && *v16 == 66 && v16[1] == 77)
    {
      v17 = +[NSFileManager defaultManager];
      v18 = [[NSString alloc] initWithCString:"/var/wireless/Library/Images" encoding:4];
      v19 = [NSURL fileURLWithPath:v18];

      v20 = [v19 absoluteString];
      v21 = [v17 fileExistsAtPath:v20];

      if ((v21 & 1) == 0)
      {
        [v17 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:0];
      }

      v22 = [[NSString alloc] initWithCString:"/var/wireless/Library/Images" encoding:4];
      v23 = [NSURL URLWithString:v22];

      v24 = [NSString alloc];
      v25 = (a1 + 72);
      if (*(a1 + 95) < 0)
      {
        v25 = *v25;
      }

      v26 = [v24 initWithCString:v25 encoding:4];
      v27 = [v23 URLByAppendingPathComponent:v26];

      v28 = [v27 path];
      [v17 createFileAtPath:v28 contents:v7 attributes:0];

      v29 = [v27 path];
      v30 = v29;
      sub_10000501C(__p, [v29 UTF8String]);
      sub_1014FF99C(*(a1 + 64), __p, 0);
      if (v37 < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_27;
    }

    v33 = *(v10 + 8);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#E BMP file format verification failed", __p, 2u);
    }

    sub_10000501C(__p, "/stock");
    sub_1014FF99C(*(a1 + 64), __p, 3);
  }

  else
  {
    if (v14)
    {
      *__p = 134218242;
      *&__p[4] = v12;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Response error from server, HTTP Status: %ld, %@", __p, 0x16u);
    }

    v31 = *(v10 + 16);
    sub_10000501C(__p, "/stock");
    if (v31)
    {
      v32 = 4;
    }

    else
    {
      v32 = 5;
    }

    sub_1014FF99C(*(a1 + 64), __p, v32);
  }

  if (v37 < 0)
  {
    operator delete(*__p);
  }

LABEL_27:
}

void sub_1014FF8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014FF99C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, a2, &v4);
}

void *sub_1014FF9EC(uint64_t a1, uint64_t a2)
{
  result = sub_100383190(a1 + 40, a2 + 40);
  if (*(a2 + 95) < 0)
  {
    return sub_100005F2C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v5;
  return result;
}

uint64_t sub_1014FFA58(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return sub_100383110(a1 + 40);
}

id sub_1014FFA9C(uint64_t a1)
{
  result = [qword_101FCACD0 state];
  if (!result)
  {
    *(a1 + 16) = 1;
    v3 = *(a1 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E Image fetching timed out", v4, 2u);
    }

    return [qword_101FCACD0 cancel];
  }

  return result;
}

void sub_1014FFB20(uint64_t a1, _BYTE *__s)
{
  v4 = __s[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (__s[23])
    {
      v5 = __s;
      v6 = __s[23];
      goto LABEL_6;
    }

LABEL_21:
    v13 = *(a1 + 8);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v14 = "#E File path URL is empty";
    v15 = v13;
    v16 = 2;
    goto LABEL_44;
  }

  v6 = *(__s + 1);
  if (!v6)
  {
    goto LABEL_21;
  }

  v5 = *__s;
LABEL_6:
  if (v6 >= 28)
  {
    v7 = &v5[v6];
    v8 = v5;
    do
    {
      v9 = memchr(v8, 47, v6 - 27);
      if (!v9)
      {
        break;
      }

      if (*v9 == 0x7269772F7261762FLL && *(v9 + 1) == 0x694C2F7373656C65 && *(v9 + 2) == 0x6D492F7972617262 && *(v9 + 6) == 1936025441)
      {
        if (v9 == v7 || v9 - v5 == -1)
        {
          break;
        }

        v17 = +[NSFileManager defaultManager];
        v18 = *(a1 + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          if (__s[23] >= 0)
          {
            v19 = __s;
          }

          else
          {
            v19 = *__s;
          }

          *buf = 136315138;
          v29 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Deleting %s file", buf, 0xCu);
        }

        if (__s[23] >= 0)
        {
          v20 = __s;
        }

        else
        {
          v20 = *__s;
        }

        v21 = [NSString stringWithCString:v20 encoding:4];
        v27 = 0;
        [v17 removeItemAtPath:v21 error:&v27];
        v22 = v27;

        if (v22)
        {
          v23 = *(a1 + 8);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            if (__s[23] >= 0)
            {
              v24 = __s;
            }

            else
            {
              v24 = *__s;
            }

            *buf = 136315394;
            v29 = v24;
            v30 = 2112;
            v31 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E Failed to remove a file %s, error: %@", buf, 0x16u);
          }
        }

        return;
      }

      v8 = v9 + 1;
      v6 = v7 - v8;
    }

    while (v7 - v8 >= 28);
  }

  v25 = *(a1 + 8);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *__s;
    if (v4 >= 0)
    {
      v26 = __s;
    }

    *buf = 136315138;
    v29 = v26;
    v14 = "#E Cannot remove files from invalid directory %s";
    v15 = v25;
    v16 = 12;
LABEL_44:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
  }
}

BOOL sub_1014FFE3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    v5 = *(a1 + 8);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v6 = "#E Not a valid URL";
    v7 = &v9;
    goto LABEL_10;
  }

  if (sub_10068BFF8(a2, "https://"))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v8 = 0;
    v6 = "#E URL doesnt starts with https";
    v7 = &v8;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    return 0;
  }

  return result;
}

void sub_1014FFF0C(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  BrandedCallingHelperInterface::~BrandedCallingHelperInterface(a1);
}

void sub_1014FFF48(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  BrandedCallingHelperInterface::~BrandedCallingHelperInterface(a1);

  operator delete();
}

void sub_101500020(DisallowedNumbersInterface *this)
{
  *this = off_101F46060;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DisallowedNumbersInterface::~DisallowedNumbersInterface(this);
}

void sub_10150007C(DisallowedNumbersInterface *this)
{
  *this = off_101F46060;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DisallowedNumbersInterface::~DisallowedNumbersInterface(this);

  operator delete();
}

void sub_101500154(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101500190(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015001C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1015001F8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101500238(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *a1 = off_101F46118;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v6 = [NSString stringWithUTF8String:a3];
  v7 = [[NEConfiguration alloc] initWithName:v6 grade:2];
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;

  v9 = [*(a1 + 16) pathController];

  if (v9)
  {
    v10 = [*(a1 + 16) pathController];
    [v10 setEnabled:a4];
  }

  else
  {
    sub_101500348(a1, a4);
  }

  return a1;
}

void sub_101500348(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NEPathController);
  [*(a1 + 16) setPathController:?];

  v5 = [*(a1 + 16) pathController];
  [v5 setEnabled:a2];
}

void sub_1015003DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *a1 = off_101F46118;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;

  NEConfigurationFacadeInterface::~NEConfigurationFacadeInterface(a1);
}

void sub_101500444(uint64_t a1)
{
  sub_1015003DC(a1);

  operator delete();
}

void sub_101500548(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v10 = **(a1 + 8);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v15 = 0;
    v11 = "Missing NE configuration";
    v12 = &v15;
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_15;
  }

  v5 = [v4 name];

  if (!v5)
  {
    v10 = **(a1 + 8);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v14 = 0;
    v11 = "Missing NE configuration's name";
    v12 = &v14;
    goto LABEL_14;
  }

  v6 = [*(a1 + 16) name];
  v7 = [v6 UTF8String];

  if (!v7)
  {
    v10 = **(a1 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v11 = "Invalid NE configuration's name";
      v12 = &v13;
      goto LABEL_14;
    }

LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v8;
  if (v8)
  {
    memmove(a2, v7, v8);
  }

  *(a2 + v9) = 0;
}

uint64_t sub_1015006FC(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v1 = [*(a1 + 16) identifier];
  [v1 getUUIDBytes:v3];

  return v3[0];
}

id sub_101500788(uint64_t a1)
{
  v1 = [*(a1 + 16) pathController];
  v2 = [v1 isEnabled];

  return v2;
}

void sub_1015007D4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) pathController];
  [v3 setEnabled:a2];
}

id sub_10150083C(uint64_t a1)
{
  v2 = [*(a1 + 16) pathController];
  if (v2)
  {
    v3 = [*(a1 + 16) pathController];
    v4 = [v3 hasNonDefaultRules];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1015008C0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v6 = [NSString stringWithUTF8String:a2];
  v5 = [*(a1 + 16) pathController];
  v7 = [v5 copyPathRuleBySigningIdentifier:v6];

  if (v7)
  {
    sub_100021014();
  }

  *a3 = 0;
  a3[1] = 0;
}

id sub_1015009A0(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v3 = [NSString stringWithUTF8String:a2];
  v4 = [*(a1 + 16) pathController];
  v5 = [v4 removePathRuleBySigningIdentifier:v3];

  return v5;
}

void sub_101500A30(uint64_t a1, uint64_t *a2)
{
  v10 = [NSMutableArray arrayWithCapacity:(a2[1] - *a2) >> 4];
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (*v4)
      {
        if (v6)
        {
          v7 = *(v4 + 8);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v8 = v6[1];
          [v10 addObject:v8];

          if (v7)
          {
            sub_100004A34(v7);
          }
        }
      }

      v4 += 16;
    }

    while (v4 != v5);
  }

  v9 = [*(a1 + 16) pathController];
  [v9 setPathRules:v10];
}

void sub_101500BA4(uint64_t a1, int a2)
{
  v2 = a2;
  v3 = [*(a1 + 16) pathController];
  [v3 setCellularFallbackFlags:v2];
}

double sub_101500C2C@<D0>(CCPreferences *a1@<X0>, _OWORD *a2@<X8>)
{
  CCPreferences::create(&v4, a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_101500C64(SubscriberTrackerFactoryInterface *this)
{
  *this = off_101F46218;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  SubscriberTrackerFactoryInterface::~SubscriberTrackerFactoryInterface(this);
}

void sub_101500CC0(SubscriberTrackerFactoryInterface *this)
{
  *this = off_101F46218;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  SubscriberTrackerFactoryInterface::~SubscriberTrackerFactoryInterface(this);

  operator delete();
}

const char *sub_101500D30(unsigned int a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_101F46248[a1];
  }
}

void *sub_101501EA8(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_101F46288;
  v8 = [StewieCLLocationManager alloc];
  v9 = sub_100032AC8(a2);
  a1[1] = [(StewieCLLocationManager *)v8 initWithQueue:v9 locationDataCallback:a3 authorizationChangedCallback:a4];

  return a1;
}

void sub_101501FAC(uint64_t a1)
{

  operator delete();
}

uint64_t sub_10150206C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101F462F0;
  sub_101502184((a1 + 24), *a2, *a3);
  return a1;
}

void sub_1015020F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F462F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101502144(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void **sub_101502184(void **a1, int a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  if (a2)
  {
    v5 = [CLEmergencyClientEnablementAssertion newAssertionForBundlePath:@"/System/Library/LocationBundles/Bifrost.bundle" withReason:@"Emergency STW Telephony"];
    v6 = *a1;
    *a1 = v5;
  }

  if (a3)
  {
    v7 = [CLEmergencyClientEnablementAssertion newAssertionForBundlePath:@"/System/Library/LocationBundles/CompassCalibration.bundle" withReason:@"Emergency STW Telephony"];
    v8 = a1[1];
    a1[1] = v7;
  }

  return a1;
}

void *sub_1015022A8(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F46340;
  sub_101501EA8(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_101502324(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F46340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101502444(EmergencyCallManagerFactoryInterface *this)
{
  *this = off_101F46390;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  EmergencyCallManagerFactoryInterface::~EmergencyCallManagerFactoryInterface(this);
}

void sub_1015024A0(EmergencyCallManagerFactoryInterface *this)
{
  *this = off_101F46390;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  EmergencyCallManagerFactoryInterface::~EmergencyCallManagerFactoryInterface(this);

  operator delete();
}

void sub_101502510(void *a1)
{
  sub_100004AA0(&v2, a1);
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

void sub_1015025DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101502600(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v5[0] = 0;
        v5[1] = 0;
        sub_100004AA0(v5, v4);
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_101502714(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101502730(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL sub_101502740(wis::MetricFactory *a1)
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

void sub_10150286C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015028EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(a2 + 24) |= 1u;
  *(a2 + 16) = v2;
  return result;
}

uint64_t *sub_101502904(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5[0] = v1;
  v2 = (*(**(*v1 + 72) + 32))(*(*v1 + 72));
  if ((v2 & 0x100) != 0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 0x40000000;
    v5[3] = sub_1015028EC;
    v5[4] = &unk_101F463F8;
    v6 = v2 & 1;
    sub_101502740(0x80014);
  }

  sub_10024BAAC(v5);
  return sub_1000049E0(&v4);
}

void sub_1015029CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_10024BAAC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015029E8(uint64_t a1)
{
  sub_101502B50(v2, a1);
  MobileInstallationWaitForSystemAppMigrationWithCompletion();
  return sub_100D68D94(v2);
}

void sub_101502A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100D68D94(va);
  _Unwind_Resume(a1);
}

void sub_101502AB8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 56);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v4);
}

uint64_t sub_101502B50(uint64_t a1, uint64_t a2)
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

void CellularPolicyInterface::create(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v16 = *a1;
  v17 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10115CBC4(&v16, &v18);
  ServiceMap = Registry::getServiceMap(v3);
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
  v10 = v18;
  if (v18)
  {
    v11 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v20 = v10;
    *(&v20 + 1) = v11;
    v21 = v6;
    sub_100145BF0(&v5[1].__m_.__sig, &v21);
    v13 = v12;
    if (*(&v20 + 1))
    {
      sub_100004A34(*(&v20 + 1));
    }

    std::mutex::unlock(v5);
    if ((v13 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "The given type is already in the map!");
    }
  }

  else
  {
    v20 = 0uLL;
    v21 = v6;
    sub_100145EC4(&v5[1].__m_.__sig, &v21);
    std::mutex::unlock(v5);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  v15 = *(a1 + 8);
  v18 = *a1;
  v19 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_101502E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  __cxa_free_exception(v16);
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_101502EF4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F46458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101502F90(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F464A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10150300C(id **a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = **a1;
    if (v3 && (v6 = v3, [v3 planLabel], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 = v6, v4))
    {
      v5 = [v6 planLabel];
      sub_10000501C(a2, [v5 UTF8String]);

      v3 = v6;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_1015030E0(id **a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = **a1;
    if (v3 && (v7 = v3, [v3 planLabel], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 = v7, v4))
    {
      v5 = [v7 planLabel];
      v6 = v5;
      *a2 = v5;
      if (v5)
      {
        CFRetain(v5);
      }

      v3 = v7;
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1015031A4(id **a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = **a1;
    if (v3 && (v6 = v3, [v3 planId], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 = v6, v4))
    {
      v5 = [v6 planId];
      sub_10000501C(a2, [v5 UTF8String]);

      v3 = v6;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

uint64_t RegistrationController::setRatSelection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1015033D0;
  v10[3] = &unk_101F464E8;
  v10[4] = a1;
  v11[4] = a2;
  sub_100014110(v11, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v4 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_100013C9C;
  v6[3] = &unk_101F46840;
  v6[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6[4] = v10;
  dispatch_async(v4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  return sub_100014380(v11);
}

void sub_1015033C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1015033D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v11 = 0;
  SimSlot = RatSelectionType::getSimSlot((a1 + 72));
  RegistrationController::getModel_sync(v2, SimSlot, &v10);
  if (v10)
  {
    v8 = v10;
    v9 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = RegistrationController::setRatSelection_sync(v2, &v8, (a1 + 72));
    if (v9)
    {
      sub_100004A34(v9);
    }

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x2300000001;
    }
  }

  else
  {
    v5 = 0x1600000001;
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      RatSelectionType::getSimSlot((a1 + 72));
      v7 = subscriber::asString();
      *buf = 136315138;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model %s for RAT selection", buf, 0xCu);
    }
  }

  sub_100022FB0(a1 + 40, v5);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_101503518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t RegistrationController::getRatSelection(uint64_t a1, int a2, uint64_t a3)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1015036A0;
  v10[3] = &unk_101F46518;
  v10[4] = a1;
  v11[8] = a2;
  sub_101509ADC(v11, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v4 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_100013C9C;
  v6[3] = &unk_101F46840;
  v6[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6[4] = v10;
  dispatch_async(v4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  return sub_10062FB08(v11);
}

void sub_101503694(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1015036A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v8 = 0;
  RegistrationController::getModel_sync(v2, *(a1 + 72), &v7);
  if (v7)
  {
    *buf = (*(*v7 + 600))(v7);
    Selection = RatSelectionType::getSelection(buf);
    PreferredSelection = RatSelectionType::getPreferredSelection(buf);
    sub_101412678(a1 + 40, Selection, PreferredSelection);
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find model %s for RAT selection query", buf, 0xCu);
    }

    sub_101412678(a1 + 40, 0, 0);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1015037DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::getDisplayStatus(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_101503A04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationController::isForcedRegisteredHome(RegistrationController *this)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_101503B8C;
  v4[3] = &unk_101F46578;
  v4[4] = this;
  v5 = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_101509DF4;
  v6[3] = &unk_101F46870;
  v6[4] = this + 8;
  v6[5] = &v5;
  v7 = v6;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10006A5A8;
    v11 = &unk_101F468B0;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10005964C;
    v11 = &unk_101F46890;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v1, &block);
  }

  return v14 & 1;
}

uint64_t sub_101503B8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 1;
  v2 = sub_100007DEC(v1 + 64, &v4);
  return (*(**v2 + 88))(*v2);
}

void RegistrationController::getRegistrationCauseCode(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1001063CC(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_101503D28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::getMobileCountryCode(uint64_t a1@<X0>, int a2@<W1>, MCC *a3@<X8>)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_101509FB8;
  v8[3] = &unk_101F468D0;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v3 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a3 = 0uLL;
    *(a3 + 1) = 0uLL;
    MCC::MCC(a3);
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150A178;
    v13 = &unk_101F46910;
    v14 = v4;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0uLL;
    *(a3 + 1) = 0uLL;
    MCC::MCC(a3);
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150A100;
    v13 = &unk_101F468F0;
    v14 = v5;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }
}

void RegistrationController::getMobileNetworkCode(uint64_t a1@<X0>, int a2@<W1>, MNC *a3@<X8>)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10150A1F0;
  v8[3] = &unk_101F46930;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v3 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a3 = 0uLL;
    *(a3 + 1) = 0uLL;
    MNC::MNC(a3);
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150A3B0;
    v13 = &unk_101F46970;
    v14 = v4;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0uLL;
    *(a3 + 1) = 0uLL;
    MNC::MNC(a3);
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150A338;
    v13 = &unk_101F46950;
    v14 = v5;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }
}

void RegistrationController::getLastKnownMobileCountryCode(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10002CAC8(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_101504138(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::getServingPlmn(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10001C168(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_101504290(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::getRadioAccessTechnology(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_10150449C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getOperatorName(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10150A9C8;
  v7[3] = &unk_101F46990;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10150AB00;
    v12 = &unk_101F469D0;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100040EF8;
    v12 = &unk_101F469B0;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

void RegistrationController::getOperatorShortName(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10001C168(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_101504724(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::isDataAttached(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1000224C8(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10150487C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::isVoiceServiceAvailable(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1000224C8(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1015049D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::isEmergencyCallBackMode(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void RegistrationController::needNextNetworkTimeUpdate(RegistrationController *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_101504BEC;
  v3[3] = &unk_101F46598;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 1);
  v2 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

uint64_t sub_101504BEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Setting Baseband to active Network Time mode, need the next update", v4, 2u);
  }

  return (*(**(v1 + 88) + 176))(*(v1 + 88));
}

void RegistrationController::updateImsStatus(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void RegistrationController::sendIMSRegStart(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void RegistrationController::update5GStandaloneInfo(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t RegistrationController::isEmergencyOverImsEnabled(uint64_t a1, int a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1015050C8;
  v5[3] = &unk_101F465D0;
  v5[4] = a1;
  v6 = a2;
  v7 = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_101509DF4;
  v8[3] = &unk_101F46870;
  v8[4] = a1 + 8;
  v8[5] = &v7;
  v9 = v8;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A5A8;
    v13 = &unk_101F468B0;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10005964C;
    v13 = &unk_101F46890;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v2, &block);
  }

  return v16 & 1;
}

uint64_t sub_1015050C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v24 = 0;
  v25 = 0;
  RegistrationController::getModel_sync(v2, *(a1 + 40), &v24);
  v3 = v24;
  if (v24)
  {
    *buf = *off_101F465B8;
    *&buf[16] = @"CheckIMSPrefForEmergency";
    memset(__p, 0, sizeof(__p));
    sub_10005B328(__p, buf, &v27, 3uLL);
    cf = 0;
    (*(**(v2 + 248) + 104))(&cf);
    v4 = cf;
    if (cf)
    {
      buf[0] = 0;
      v5 = CFGetTypeID(cf);
      if (v5 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v4, v6);
      }

      v7 = buf[0] ^ 1;
    }

    else
    {
      v7 = 1;
    }

    v10 = (*(*v3 + 712))(v3, 7);
    v11 = *v3;
    if (v10 == 1)
    {
      v12 = (*(v11 + 720))(v3, 7);
    }

    else
    {
      if ((*(v11 + 712))(v3, 10) != 1)
      {
        v13 = 0;
        v14 = 0;
        goto LABEL_16;
      }

      v12 = (*(*v3 + 720))(v3, 10);
    }

    v13 = v12 == 1;
    v14 = 1;
LABEL_16:
    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = asStringBool(v14);
      v17 = asStringBool(v13);
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I IMS bearer support state (%s) and access barred state (%s)", buf, 0x16u);
    }

    if (!v13 && v14 && ((v7 & 1) != 0 || (*(*v3 + 616))(v3)))
    {
      v20 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 40));
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Emergency Over IMS is allowed", buf, 2u);
      }

      v9 = 1;
    }

    else
    {
      v18 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 40));
      v9 = 0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = "IMS pref check required, value known and doesn't have Voice support";
        if (v13)
        {
          v19 = "access barred";
        }

        if (!v14)
        {
          v19 = "bearer not supported";
        }

        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Emergency Over IMS is not allowed since %s", buf, 0xCu);
        v9 = 0;
      }
    }

    sub_10000A1EC(&cf);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_32;
  }

  v8 = *(v2 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v22 = subscriber::asString();
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v22;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not find model %s for emergency over IMS enabled query", __p, 0xCu);
  }

  v9 = 0;
LABEL_32:
  if (v25)
  {
    sub_100004A34(v25);
  }

  return v9;
}

void sub_101505540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_10000A1EC(&a10);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationController::getRAT(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10150B378;
  v7[3] = &unk_101F46A50;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10150B4E4;
    v12 = &unk_101F46A90;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10150B4A8;
    v12 = &unk_101F46A70;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15;
}

uint64_t RegistrationController::isLimitedService(uint64_t a1, int a2, int a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10150583C;
  v6[3] = &unk_101F465F0;
  v6[4] = a1;
  v7 = a2;
  v8 = a3;
  v9 = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_101509DF4;
  v10[3] = &unk_101F46870;
  v10[4] = a1 + 8;
  v10[5] = &v9;
  v11 = v10;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_10006A5A8;
    v15 = &unk_101F468B0;
    v16 = &v18;
    v17 = &v11;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_10005964C;
    v15 = &unk_101F46890;
    v16 = &v18;
    v17 = &v11;
    dispatch_sync(v3, &block);
  }

  return v18 & 1;
}

uint64_t sub_10150583C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v8 = 0;
  v9 = 0;
  RegistrationController::getModel_sync(v3, *(a1 + 40), &v8);
  v4 = v8;
  if (v8)
  {
    v1 = (*(*v8 + 688))(v8, *(a1 + 44));
  }

  else
  {
    v5 = *(v3 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = subscriber::asString();
      *buf = 136315138;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find model %s for PS limited service query", buf, 0xCu);
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  return (v4 != 0) & v1;
}

void sub_101505960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RegistrationController::setCdmaRoamingSwitchSetting(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 216);
  v4 = &_mh_execute_header;
  if (!a3)
  {
    v4 = 0;
  }

  v6[0] = off_101F46AC0;
  v6[1] = a1;
  v7 = v4 | a2;
  v8 = v6;
  *(&v7 + 5) = 0;
  HIBYTE(v7) = 0;
  (*(*v3 + 72))(v3, a2, v6);
  return sub_100959FE0(v6);
}

void sub_101505A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100959FE0(va);
  _Unwind_Resume(a1);
}

void RegistrationController::resetNetworkSettings(RegistrationController *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void RegistrationController::setServiceProvisioned(RegistrationController *this, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_101505C8C;
  v4[3] = &unk_101F46610;
  v4[4] = this;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, this + 1);
  v3 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

uint64_t sub_101505C8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 40));
    v12 = 136315138;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Got Service Provisioned event, provisioned: %s", &v12, 0xCu);
  }

  if (*(a1 + 40) == 1)
  {
    RegistrationController::sendGetServingSystemReq_sync(v2);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  result = (*(**(v2 + 344) + 176))(*(v2 + 344), 1, v5 & 1);
  v7 = *(v2 + 64);
  v8 = (v2 + 72);
  if (v7 != v8)
  {
    do
    {
      result = (*(*v7[5] + 784))();
      v9 = v7[1];
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
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t RegistrationController::getEnableOnlyHomeNetwork(RegistrationController *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_101505F18;
  v5[3] = &unk_101F46638;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10150BB50;
  block[3] = &unk_101F46B60;
  block[4] = this + 8;
  block[5] = &v10;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void RegistrationController::setEnableOnlyHomeNetwork(RegistrationController *this, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10150603C;
  v4[3] = &unk_101F46658;
  v4[4] = this;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, this + 1);
  v3 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

const void **sub_10150603C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1 && (RoamingInterface::isInHomeCountry(*(v2 + 216)) & 1) == 0)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bringing down data since we are switching to home only N/W and we are currently roaming", buf, 2u);
    }

    v4 = *(v2 + 216);
    v11[0] = off_101F46B90;
    v11[3] = v11;
    (*(*v4 + 56))(v4, 1, 0, v11);
    sub_100014380(v11);
    (*(**(v2 + 264) + 480))(*(v2 + 264), 0, 0);
    (*(**(v2 + 264) + 336))(*(v2 + 264), 3, 6, 1);
    *buf = 1;
    v5 = sub_100007DEC(v2 + 64, buf);
    v7 = *v5;
    v6 = v5[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 504))(v7, 0);
    v9[0] = v7;
    v9[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RegistrationController::reevaluateDataMode_sync(v2, v9);
    if (v6)
    {
      sub_100004A34(v6);
      sub_100004A34(v6);
    }
  }

  RegistrationController::setEnableOnlyHomeNetwork_sync(v2, *(a1 + 40));
  return RegistrationController::sendEnableOnlyHomeNetwork_sync(v2);
}

void sub_101506268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    sub_100004A34(v12);
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::getEriVersion(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1015064A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationController::toggleProvisioningMode(RegistrationController *this, uint64_t a2)
{
  v4 = *(this + 5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = "off";
    if (a2)
    {
      v6 = "on";
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Turning %s provisioning mode", buf, 0xCu);
  }

  if (!capabilities::ct::supportsCambioModeQuery(v5))
  {
    return (*(*this + 328))(this, a2);
  }

  v7 = *(this + 11);
  v9[0] = off_101F46C10;
  v9[1] = a2;
  v9[2] = this;
  v9[3] = v9;
  (*(*v7 + 144))(v7, v9);
  return sub_10000FF50(v9);
}

uint64_t RegistrationController::prepareForServiceProvisioning(RegistrationController *this)
{
  result = capabilities::ct::supportsCambioModeQuery(this);
  if (result)
  {
    v3 = *(this + 11);
    v4[0] = off_101F46CB0;
    v4[1] = this;
    v4[3] = v4;
    (*(*v3 + 144))(v3, v4);
    return sub_10000FF50(v4);
  }

  return result;
}

void sub_101506710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

void RegistrationController::sendPSRegistrationRequest(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_101506834;
  v4[3] = &unk_101F46678;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

uint64_t sub_101506834(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(**(v2 + 104) + 48))(*(v2 + 104));
  v4 = *(a1 + 40);
  v5 = v3 == 6;
  v6 = *(**(v2 + 88) + 152);
  v7 = *(v2 + 88);

  return v6(v7, v4, v5);
}

void RegistrationController::sendDataRoamingSetting(capabilities::ct *a1, int a2, char a3)
{
  if (capabilities::ct::supportsSystemSelectionDataRoaming(a1))
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_1015069F0;
    v7[3] = &unk_101F46698;
    v7[4] = a1;
    v8 = a2;
    v9 = a3;
    v12 = 0;
    v13 = 0;
    sub_100004AA0(&v12, a1 + 1);
    v6 = *(a1 + 3);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_100013C9C;
    block[3] = &unk_101F46840;
    block[5] = v12;
    v11 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v7;
    dispatch_async(v6, block);
    if (v11)
    {
      sub_100004A34(v11);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }
  }
}

void RegistrationController::send5GEnabledSetting(uint64_t a1, int a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_101506B3C;
  v5[3] = &unk_101F466B8;
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
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

void RegistrationController::send3GEnabledSetting(uint64_t a1, int a2, char a3, NSObject **a4)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_101506C94;
  v7[3] = &unk_101F466D8;
  v9 = a2;
  v10 = a3;
  v5 = *a4;
  v7[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v13 = 0;
  v14 = 0;
  sub_100004AA0(&v13, (a1 + 8));
  v6 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v13;
  v12 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_101506C94(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 52);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  RegistrationController::send3GEnabledSettingFromPreference_sync(v3, v1, v2, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_101506D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::send2GEnabledSetting(uint64_t a1, int a2, char a3, NSObject **a4)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_101506E78;
  v7[3] = &unk_101F46708;
  v9 = a2;
  v10 = a3;
  v5 = *a4;
  v7[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v13 = 0;
  v14 = 0;
  sub_100004AA0(&v13, (a1 + 8));
  v6 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v13;
  v12 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_101506E78(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 52);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  RegistrationController::send2GEnabledSettingFromPreference_sync(v3, v1, v2, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_101506EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::sendLTEEnabledSetting(uint64_t a1, int a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10150702C;
  v5[3] = &unk_101F46738;
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
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

void RegistrationController::enableEmergencyCallBackMode(RegistrationController *this, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_101507150;
  v4[3] = &unk_101F46758;
  v4[4] = this;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, this + 1);
  v3 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

void RegistrationController::automaticallySelectNetwork(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100014110(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1015072A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t RegistrationController::fetchNetworkList(uint64_t a1, int a2, uint64_t a3)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_101507410;
  v10[3] = &unk_101F46778;
  v10[4] = a1;
  v11[8] = a2;
  sub_100014110(v11, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v4 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_100013C9C;
  v6[3] = &unk_101F46840;
  v6[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6[4] = v10;
  dispatch_async(v4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  return sub_100014380(v11);
}

void sub_101507404(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101507410(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 72);
  sub_100014110(v4, a1 + 40);
  RegistrationController::fetchNetworkList_sync(v1, v2, v4);
  return sub_100014380(v4);
}

void sub_101507490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100014380(va);
  _Unwind_Resume(a1);
}

void RegistrationController::getSelectedNetwork(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1015076A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getNetworkList(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1015078B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getNetworkSelectionMode(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_101507AC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getNetworkSelectionState(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_101507CD0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getNetworkSelectionInfo(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_101507EE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getNetworkNeedsReselect(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1000224C8(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10150803C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::selectNetwork(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6[4] = a1;
  v7 = a2;
  sub_100014110(&v8, a4);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

uint64_t RegistrationController::isNetworkSelectionMenuEnabled(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10150DFEC;
  v7[3] = &unk_101F46D40;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A5A8;
    v12 = &unk_101F468B0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10005964C;
    v12 = &unk_101F46890;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void RegistrationController::isNetworkSelectionMenuEnabled(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  sub_1000224C8(v6, a3);
  v6[8] = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}